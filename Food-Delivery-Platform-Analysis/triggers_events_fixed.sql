-- ============================================================
--  FOOD DELIVERY — TRIGGERS & EVENTS ONLY
-- ============================================================

USE food_delivery;

SET GLOBAL event_scheduler = ON;

-- Activity log table (only new table needed for logging)
CREATE TABLE IF NOT EXISTS activity_log (
    log_id      INT AUTO_INCREMENT PRIMARY KEY,
    log_time    DATETIME DEFAULT CURRENT_TIMESTAMP,
    log_type    VARCHAR(50),
    description TEXT
);

-- Monthly revenue summary table (for event output)
CREATE TABLE IF NOT EXISTS monthly_revenue_summary (
    id                   INT AUTO_INCREMENT PRIMARY KEY,
    summary_month        DATE,
    total_orders         INT,
    total_revenue        DECIMAL(15,2),
    festival_revenue     DECIMAL(15,2),
    non_festival_revenue DECIMAL(15,2)
);

-- ============================================================
-- TRIGGER 1 : BEFORE INSERT ON main_table
-- Apply Discounts Before Order Creation
-- ============================================================

DROP TRIGGER IF EXISTS before_order_insert;
DELIMITER $$
CREATE TRIGGER before_order_insert
BEFORE INSERT ON main_table FOR EACH ROW
BEGIN
    DECLARE disc DECIMAL(10,2) DEFAULT 0;

    -- 10% discount for festival orders
    IF NEW.Festival_Flag = 'FESTIVAL' THEN
        SET disc = disc + (NEW.Order_Value * 0.10);
    END IF;

    -- 5% discount for UPI payment (stackable)
    IF NEW.Payment_Mode = 'Upi' THEN
        SET disc = disc + (NEW.Order_Value * 0.05);
    END IF;

    SET NEW.Discount_Applied = disc;
    SET NEW.Final_Amount = NEW.Order_Value + NEW.Delivery_Fee - disc;

    INSERT INTO activity_log (log_type, description) VALUES (
        'BEFORE_INSERT',
        CONCAT('Order:', NEW.Order_ID,
               ' | Value:', NEW.Order_Value,
               ' | Discount:', disc,
               ' | Final:', NEW.Final_Amount,
               ' | Mode:', NEW.Payment_Mode,
               ' | Festival:', NEW.Festival_Flag)
    );
END$$
DELIMITER ;

-- ============================================================
-- TRIGGER 2 : AFTER INSERT ON main_table
-- Update Customer Status After Order Placement
-- ============================================================

DROP TRIGGER IF EXISTS after_order_insert;
DELIMITER $$
CREATE TRIGGER after_order_insert
AFTER INSERT ON main_table FOR EACH ROW
BEGIN
    DECLARE tot     INT;
    DECLARE avg_sp  DECIMAL(10,2);
    DECLARE ctype   VARCHAR(20);

    -- Recalculate customer totals
    SELECT COUNT(*), AVG(Final_Amount)
    INTO tot, avg_sp
    FROM main_table WHERE Customer_ID = NEW.Customer_ID;

    -- Promote: New → Returning (≥3) → Loyal (≥10)
    SET ctype = CASE
        WHEN tot >= 10 THEN 'Loyal'
        WHEN tot >= 3  THEN 'Returning'
        ELSE 'New'
    END;

    -- Update customer fields in same table
    UPDATE main_table
    SET Total_Orders  = tot,
        Average_Spend = avg_sp,
        Customer_Type = ctype
    WHERE Customer_ID = NEW.Customer_ID;

    INSERT INTO activity_log (log_type, description) VALUES (
        'AFTER_INSERT',
        CONCAT('Customer:', NEW.Customer_ID,
               ' | Orders:', tot,
               ' | AvgSpend:', ROUND(avg_sp, 2),
               ' | Type:', ctype)
    );
END$$
DELIMITER ;

-- ============================================================
-- TRIGGER 3 : AFTER UPDATE ON main_table
-- Update Delivery & Restaurant Performance
-- ============================================================

DROP TRIGGER IF EXISTS after_order_update;
DELIMITER $$
CREATE TRIGGER after_order_update
AFTER UPDATE ON main_table FOR EACH ROW
BEGIN
    -- Only fires when status changes to 'Delivered'
    IF NEW.Order_Status = 'Delivered' AND OLD.Order_Status != 'Delivered' THEN

        -- Recalculate restaurant avg_rating
        UPDATE main_table
        SET Avg_Rating = (
            SELECT AVG(Order_Rating)
            FROM (SELECT Order_Rating FROM main_table
                  WHERE Restaurant_ID = NEW.Restaurant_ID
                    AND Order_Status = 'Delivered') AS r
        )
        WHERE Restaurant_ID = NEW.Restaurant_ID;

        -- Increment delayed count if delivery > 45 min
        UPDATE main_table
        SET Delayed_Deliveries = Delayed_Deliveries +
                IF(NEW.Delivery_Time_Minutes > 45, 1, 0),
            Successful_Deliveries = Successful_Deliveries + 1
        WHERE Delivery_Partner_ID = NEW.Delivery_Partner_ID;

        INSERT INTO activity_log (log_type, description) VALUES (
            'AFTER_UPDATE',
            CONCAT('Order:', NEW.Order_ID,
                   ' | Rating:', NEW.Order_Rating,
                   ' | DeliveryTime:', NEW.Delivery_Time_Minutes, 'min',
                   ' | Delayed:', IF(NEW.Delivery_Time_Minutes > 45, 'YES', 'NO'))
        );

    END IF;
END$$
DELIMITER ;

-- ============================================================
-- EVENT 1 : Every 1 Month (starts 2025-02-01)
-- Generate Monthly Revenue Summary
-- ============================================================

DROP EVENT IF EXISTS monthly_revenue_event;
DELIMITER $$
CREATE EVENT monthly_revenue_event
ON SCHEDULE EVERY 1 MONTH STARTS '2025-02-01 00:00:00'
DO
BEGIN
    DECLARE lm DATE DEFAULT DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 1 MONTH), '%Y-%m-01');

    INSERT INTO monthly_revenue_summary
        (summary_month, total_orders, total_revenue, festival_revenue, non_festival_revenue)
    SELECT
        lm,
        COUNT(*),
        SUM(Final_Amount),
        SUM(IF(Festival_Flag = 'FESTIVAL',     Final_Amount, 0)),
        SUM(IF(Festival_Flag = 'NON-FESTIVAL', Final_Amount, 0))
    FROM main_table
    WHERE Order_Status = 'Delivered'
      AND DATE_FORMAT(Order_Date, '%Y-%m-01') = lm;

    INSERT INTO activity_log (log_type, description) VALUES (
        'MONTHLY_EVENT', CONCAT('Revenue summary generated for: ', lm)
    );
END$$
DELIMITER ;

-- ============================================================
-- EVENT 2 : Every 1 Week (starts now)
-- Identify Delayed Delivery Partners (delay rate > 20%)
-- ============================================================

DROP EVENT IF EXISTS weekly_delay_check;
DELIMITER $$
CREATE EVENT weekly_delay_check
ON SCHEDULE EVERY 1 WEEK STARTS CURRENT_TIMESTAMP
DO
BEGIN
    DECLARE pid     VARCHAR(20);
    DECLARE pname   VARCHAR(100);
    DECLARE tot     INT;
    DECLARE del     INT;
    DECLARE flagged INT DEFAULT 0;
    DECLARE done    INT DEFAULT 0;

    DECLARE cur CURSOR FOR
        SELECT Delivery_Partner_ID, Partner_Name,
               Successful_Deliveries, Delayed_Deliveries
        FROM main_table
        WHERE Successful_Deliveries > 0
        GROUP BY Delivery_Partner_ID, Partner_Name,
                 Successful_Deliveries, Delayed_Deliveries;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    loop1: LOOP
        FETCH cur INTO pid, pname, tot, del;
        IF done THEN LEAVE loop1; END IF;

        IF tot > 0 AND (del / tot) > 0.20 THEN
            SET flagged = flagged + 1;
            INSERT INTO activity_log (log_type, description) VALUES (
                'DELAYED_PARTNER',
                CONCAT('FLAGGED: ', pname,
                       ' (', pid, ')',
                       ' | Delayed Rate: ', ROUND((del/tot)*100, 1), '%',
                       ' | Total: ', tot, ' | Delayed: ', del)
            );
        END IF;
    END LOOP;
    CLOSE cur;

    INSERT INTO activity_log (log_type, description) VALUES (
        'WEEKLY_SUMMARY', CONCAT('Partners flagged (delay > 20%): ', flagged)
    );
END$$
DELIMITER ;

-- ============================================================
-- VERIFY — check triggers & logs are working
-- ============================================================

-- View activity log
SELECT * FROM activity_log ORDER BY log_time DESC LIMIT 20;

-- View monthly summary (populated after event runs)
SELECT * FROM monthly_revenue_summary;
