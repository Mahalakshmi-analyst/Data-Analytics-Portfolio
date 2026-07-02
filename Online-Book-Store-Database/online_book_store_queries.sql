use online_book_store;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1 :------------------------------------------------- To find the top customers based on how much they spent and how many books they bought.-------------------------------------------------------

select
    u.name,
    SUM(o.total_amount) AS total_spent,
    SUM(od.quantity) AS total_books
FROM users u
JOIN customers c ON u.user_id = c.user_id
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
GROUP BY u.user_id, u.name
ORDER BY total_spent DESC
LIMIT 5;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 2: --------------------------------------------- To analyse which city has the highest number of buyers. -----------------------------------------------------------------

SELECT city, COUNT(customer_id) AS total_customers
FROM customers
GROUP BY city
ORDER BY total_customers DESC
LIMIT 3;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 3: ----------------------------------------- To identify the top-rated book based on user reviews.-----------------------------------------------------------

SELECT b.title, AVG(r.rating) AS avg_rating
FROM reviews r
JOIN books b ON r.book_id = b.book_id
GROUP BY b.book_id
ORDER BY avg_rating DESC
LIMIT 3;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
--  4: -------------------------------  To determine which coupon is used the most by customers--------------------------------------------------------------

SELECT 
    c.coupon_id,
    c.code,
    COUNT(*) AS used_count
FROM orders o
JOIN coupons c ON o.coupon_id = c.coupon_id
WHERE o.coupon_id IS NOT NULL
GROUP BY c.coupon_id, c.code
ORDER BY used_count DESC
LIMIT 5;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 5: ---------------------------------------------- To find which book is added to wishlist the most. -----------------------------------------------------------

SELECT b.title, COUNT(wi.book_id) AS wishlist_count
FROM wishlist_items wi
JOIN books b ON wi.book_id = b.book_id
GROUP BY wi.book_id
ORDER BY wishlist_count DESC
LIMIT 5;


-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 6 : ----------------------------------------------- To identify which book is most frequently added to shopping carts. ----------------------------------------------------

SELECT b.title, COUNT(ci.book_id) AS cart_frequency
FROM cart_items ci
JOIN books b ON ci.book_id = b.book_id
GROUP BY ci.book_id
ORDER BY cart_frequency DESC
LIMIT 5;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 7 ------------------------------------------ To identify which book has the lowest stock. ----------------------------------------------------------------------------------------

SELECT title, stock
FROM books
ORDER BY stock ASC
LIMIT 3;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 8 ------------------------------------------ To determine which books receive the most reviews. --------------------------------------------------------------------------------


SELECT b.title, COUNT(r.review_id) AS total_reviews
FROM reviews r
JOIN books b ON r.book_id = b.book_id
GROUP BY b.book_id
ORDER BY total_reviews DESC
LIMIT 5;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 9 ----------------------------------------------- Payment method usage frequency and amounts-------------------------------------------------------------------------------

SELECT 
    method as payment_method,
    COUNT(payment_id) as usage_count,
    ROUND(SUM(amount), 2) as total_amount_processed,
    ROUND(AVG(amount), 2) as avg_transaction_amount
FROM payments
GROUP BY method
ORDER BY usage_count DESC;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- -----10 -------------- ---------------------------- Customer activity summary ---------------------------------------------------------------------------------------------

SELECT 
    u.name,
    u.email,
    COUNT(DISTINCT o.order_id) as total_orders,
    COALESCE(SUM(o.total_amount), 0) as total_spent,
    COUNT(DISTINCT sc.cart_id) as active_carts,
    COUNT(DISTINCT w.wishlist_id) as wishlists_created
FROM users u
LEFT JOIN customers c ON u.user_id = c.user_id
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN shopping_cart sc ON u.user_id = sc.user_id
LEFT JOIN wishlist w ON u.user_id = w.user_id
GROUP BY u.user_id, u.name, u.email
ORDER BY total_spent DESC;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 11 -- ----------------------------------------------------------- Revenue generated by each category --------------------------------------------------------------------

SELECT 
    c.category_name,
    COUNT(od.order_detail_id) as total_orders,
    SUM(od.quantity) as books_sold,
    ROUND(SUM(od.quantity * od.price), 2) as category_revenue
FROM categories c
JOIN books b ON c.category_id = b.category_id
JOIN order_details od ON b.book_id = od.book_id
GROUP BY c.category_id, c.category_name
ORDER BY category_revenue DESC limit 5 ;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 12------------------------------------------------------ Best-selling books by quantity sold -----------------------------------------------------------------------------------------

SELECT 
    b.title,
    a.name as author,
    SUM(od.quantity) as total_sold,
    SUM(od.quantity * od.price) as total_revenue
FROM books b
JOIN authors a ON b.author_id = a.author_id
JOIN order_details od ON b.book_id = od.book_id
GROUP BY b.book_id, b.title, a.name
ORDER BY total_sold DESC
LIMIT 5;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 13 ------------------------------------------------------- Customer order history with details----------------------------------------------------------------------

SELECT 
    u.name as customer_name,
    o.order_id,
    o.order_date,
    o.total_amount,
    o.status,
    b.title,
    od.quantity,
    od.price as unit_price
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN users u ON c.user_id = u.user_id
JOIN order_details od ON o.order_id = od.order_id
JOIN books b ON od.book_id = b.book_id
ORDER BY o.order_date DESC limit 5 ;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 14 -------- ------------- ----------To automatically reduce book stock after an order is placed using a TRIGGER.--------------------------------------

CREATE TRIGGER reduce_stock_after_order
AFTER INSERT ON order_details
FOR EACH ROW
UPDATE books
SET stock = stock - NEW.quantity
WHERE book_id = NEW.book_id;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 15 ------------------------------------- To automatically mark expired coupons as ‘Expired’ every day using a SCHEDULED EVENT. -----------------------------

CREATE EVENT update_expired_coupons
ON SCHEDULE EVERY 1 DAY
DO
UPDATE coupons
SET status = 'Expired'
WHERE expiry_date < CURDATE();

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 16 ------------------------------------------------ To simplify the order creation process using a STORED PROCEDURE. ----------------------------------------------------

DELIMITER //
CREATE PROCEDURE place_order(
    IN cust_id INT,
    IN amount DECIMAL(10,2))
BEGIN 
 INSERT INTO orders (customer_id, total_amount, status)
    VALUES (cust_id, amount, 'Processing');
END //
DELIMITER ;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 17 ---------------------------------------------- To generate a temporary sales report using a TEMPORARY TABLE. --------------------------------------------------

CREATE TEMPORARY TABLE today_sales AS
SELECT order_id, total_amount, order_date
FROM orders
WHERE DATE(order_date) = CURDATE();

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ----- 18  ---------------------------- To track successful user logins automatically using a TRIGGER.-----------------------------------------------------

CREATE TRIGGER log_successful_login
AFTER INSERT ON login_attempts
FOR EACH ROW
INSERT INTO login_history (user_id, login_time)
VALUES (NEW.user_id, NOW());
