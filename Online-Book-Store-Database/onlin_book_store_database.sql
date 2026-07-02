---- online_book_store schema ---
CREATE DATABASE IF NOT EXISTS online_book_store;
USE online_book_store;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255),
    phone VARCHAR(20), age int, nationality VARCHAR(50)
);
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Rajesh Kumar', 'rajesh.kumar@email.com', 'pass123', '9876543210', 28, 'Indian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Priya Sharma', 'priya.sharma@email.com', 'secure456', '9876543211', 25, 'Indian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Amit Patel', 'amit.patel@email.com', 'mypass789', '9876543212', 32, 'Indian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Sneha Gupta', 'sneha.gupta@email.com', 'password01', '9876543213', 29, 'Indian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Vikram Singh', 'vikram.singh@email.com', 'vikram@123', '9876543214', 35, 'Indian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Ananya Reddy', 'ananya.reddy@email.com', 'red123dy', '9876543215', 24, 'Indian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Rohit Verma', 'rohit.verma@email.com', 'rohit2024', '9876543216', 30, 'Indian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Divya Iyer', 'divya.iyer@email.com', 'divya@pass', '9876543217', 27, 'Indian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Karan Mehta', 'karan.mehta@email.com', 'karan456', '9876543218', 31, 'Indian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Pooja Desai', 'pooja.desai@email.com', 'pooja#123', '9876543219', 26, 'Indian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('John Smith', 'john.smith@email.com', 'john@secure', '9876543220', 33, 'American');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Emma Wilson', 'emma.wilson@email.com', 'emma2024', '9876543221', 28, 'British');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Mohammed Ali', 'mohammed.ali@email.com', 'ali@123', '9876543222', 34, 'Pakistani');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Sarah Johnson', 'sarah.johnson@email.com', 'sarah456', '9876543223', 29, 'Canadian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Wei Chen', 'wei.chen@email.com', 'chen#pass', '9876543224', 36, 'Chinese');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Arjun Nair', 'arjun.nair@email.com', 'arjun789', '9876543225', 30, 'Indian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Kavya Menon', 'kavya.menon@email.com', 'kavya@123', '9876543226', 23, 'Indian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Lucas Silva', 'lucas.silva@email.com', 'lucas2024', '9876543227', 31, 'Brazilian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Sophia Martinez', 'sophia.martinez@email.com', 'sophia@pass', '9876543228', 27, 'Spanish');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Yuki Tanaka', 'yuki.tanaka@email.com', 'yuki#123', '9876543229', 29, 'Japanese');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Neha Chopra', 'neha.chopra@email.com', 'neha456', '9876543230', 25, 'Indian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('David Brown', 'david.brown@email.com', 'david@789', '9876543231', 38, 'Australian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Aisha Khan', 'aisha.khan@email.com', 'aisha123', '9876543232', 26, 'Bangladeshi');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Ritu Malhotra', 'ritu.malhotra@email.com', 'ritu@secure', '9876543233', 32, 'Indian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Oliver Davis', 'oliver.davis@email.com', 'oliver2024', '9876543234', 35, 'British');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Fatima Ahmed', 'fatima.ahmed@email.com', 'fatima#456', '9876543235', 28, 'Egyptian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Manish Agarwal', 'manish.agarwal@email.com', 'manish@123', '9876543236', 33, 'Indian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Nina Patel', 'nina.patel@email.com', 'nina789', '9876543237', 24, 'Indian');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('James Taylor', 'james.taylor@email.com', 'james@pass', '9876543238', 37, 'American');
INSERT INTO users (name, email, password, phone, age, nationality) VALUES ('Meera Shetty', 'meera.shetty@email.com', 'meera#2024', '9876543239', 30, 'Indian');
CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    biography TEXT,
    birthdate DATE,
    nationality VARCHAR(50)
    
);
INSERT INTO authors (author_id, name, biography, birthdate, nationality) VALUES
(1, 'Matt Haig', 'British author known for fiction and mental health writing.', '1975-07-03', 'British'),
(2, 'James Clear', 'Expert in habits, decision-making, and continuous improvement.', '1986-01-22', 'American'),
(3, 'Morgan Housel', 'Finance writer and partner at The Collaborative Fund.', '1984-06-15', 'American'),
(4, 'Delia Owens', 'American author and zoologist.', '1949-04-24', 'American'),
(5, 'Tara Westover', 'Memoirist known for Educated.', '1986-09-27', 'American'),
(6, 'Alex Michaelides', 'Author of psychological thrillers such as The Silent Patient.', '1977-09-04', 'Cypriot'),
(7, 'Yuval Noah Harari', 'Historian and author of Sapiens and Homo Deus.', '1976-02-24', 'Israeli'),
(8, 'Paulo Coelho', 'Brazilian novelist widely known for The Alchemist.', '1947-08-24', 'Brazilian'),
(9, 'Robert Kiyosaki', 'Entrepreneur and author of Rich Dad Poor Dad.', '1947-04-08', 'American'),
(10, 'J.K. Rowling', 'British author of the Harry Potter series.', '1965-07-31', 'British'),
(11, 'Eckhart Tolle', 'Spiritual teacher and author of The Power of Now.', '1948-02-16', 'German'),
(12, 'George Orwell', 'English novelist and critic, known for 1984 and Animal Farm.', '1903-06-25', 'British'),
(13, 'Napoleon Hill', 'Self-help author best known for Think and Grow Rich.', '1883-10-26', 'American'),
(14, 'Mark Manson', 'American self-help author and blogger.', '1984-03-09', 'American'),
(15, 'Jane Austen', 'Renowned English novelist known for Pride and Prejudice.', '1775-12-16', 'British'),
(16, 'F. Scott Fitzgerald', 'American novelist famous for The Great Gatsby.', '1896-09-24', 'American'),
(17, 'Harper Lee', 'Author of To Kill a Mockingbird.', '1926-04-28', 'American'),
(18, 'J.R.R. Tolkien', 'English writer and philologist, author of The Hobbit.', '1892-01-03', 'British'),
(19, 'Dan Brown', 'American thriller novelist, author of The Da Vinci Code.', '1964-06-22', 'American'),
(20, 'Stephen Covey', 'Author of The 7 Habits of Highly Effective People.', '1932-10-24', 'American'),
(21, 'Eric Ries', 'American entrepreneur and author of The Lean Startup.', '1978-09-22', 'American'),
(22, 'Walter Isaacson', 'Biographer known for Steve Jobs biography.', '1952-05-20', 'American'),
(23, 'Suzanne Collins', 'Author of The Hunger Games trilogy.', '1962-08-10', 'American'),
(24, 'Yann Martel', 'Canadian author known for Life of Pi.', '1963-06-25', 'Canadian'),
(25, 'Khaled Hosseini', 'Afghan-American author of The Kite Runner.', '1965-03-04', 'Afghan-American'),
(26, 'Peter Thiel', 'Entrepreneur and author of Zero to One.', '1967-10-11', 'American'),
(27, 'Michelle Obama', 'Former First Lady and author of Becoming.', '1964-01-17', 'American'),
(28, 'Don Miguel Ruiz', 'Mexican author of The Four Agreements.', '1952-08-27', 'Mexican'),
(29, 'J.D. Salinger', 'American writer, author of The Catcher in the Rye.', '1919-01-01', 'American'),
(30, 'Jim Collins', 'American researcher and author of Good to Great.', '1958-01-25', 'American');

CREATE TABLE categories (category_id INT PRIMARY KEY AUTO_INCREMENT, category_name VARCHAR(100) NOT NULL);
INSERT INTO categories (category_name) VALUES
  ('Fiction'),
  ('Classic Literature'),
  ('Mystery'),
  ('Crime Thriller'),
  ('Psychological Thriller'),
  ('Fantasy'),
  ('Epic Fantasy'),
  ('Dark Fantasy'),
  ('Romance'),
  ('Historical Romance'),
  ('Science Fiction'),
  ('Dystopian'),
  ('Space Opera'),
  ('Horror'),
  ('Supernatural Horror'),
  ('Biography'),
  ('Autobiography'),
  ('Self Help'),
  ('Motivation & Inspiration'),
  ('Business & Leadership'),
  ('History'),
  ('Mythology'),
  ('Children Literature'),
  ('Young Adult'),
  ('Adventure'),
  ('Poetry'),
  ('Philosophy'),
  ('Contemporary Fiction'),
  ('Comedy'),
  ('Spirituality');
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200),
    author_id INT,
    category_id INT,
    price DECIMAL(10,2),
    stock INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('The Midnight Library', 1, 1, 599.99, 45);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('Atomic Habits', 2, 2, 499.00, 120);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('The Psychology of Money', 3, 3, 399.50, 85);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('Where the Crawdads Sing', 4, 1, 649.99, 60);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('Educated: A Memoir', 5, 4, 550.00, 75);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('The Silent Patient', 6, 5, 499.99, 95);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('Sapiens: A Brief History', 7, 6, 699.00, 110);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('The Alchemist', 8, 1, 350.00, 150);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('Rich Dad Poor Dad', 9, 3, 450.00, 130);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('Harry Potter and the Philosopher Stone', 10, 7, 799.99, 200);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('The Power of Now', 11, 2, 425.00, 65);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('1984', 12, 1, 399.00, 90);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('Think and Grow Rich', 13, 2, 375.50, 100);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('The Subtle Art of Not Giving', 14, 2, 499.00, 88);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('Pride and Prejudice', 15, 8, 299.99, 55);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('The Great Gatsby', 1, 1, 349.00, 70);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('To Kill a Mockingbird', 2, 1, 449.99, 65);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('The Hobbit', 3, 7, 599.00, 95);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('The Da Vinci Code', 4, 5, 549.99, 80);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('The 7 Habits of Highly Effective People', 5, 2, 525.00, 105);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('The Lean Startup', 6, 3, 599.50, 70);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('Steve Jobs Biography', 7, 4, 799.00, 45);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('The Hunger Games', 8, 7, 499.00, 115);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('Life of Pi', 9, 1, 425.00, 60);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('The Kite Runner', 10, 1, 475.99, 85);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('Zero to One', 11, 3, 650.00, 55);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('Becoming', 12, 4, 699.99, 90);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('The Four Agreements', 13, 2, 399.00, 75);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('The Catcher in the Rye', 14, 1, 379.50, 50);
INSERT INTO books (title, author_id, category_id, price, stock) VALUES ('Good to Great', 15, 3, 575.00, 95);
select * from books;
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    address TEXT,
    city VARCHAR(100),
    country VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
INSERT INTO customers (user_id, address, city, country) VALUES (1, '123 MG Road, Koramangala', 'Bangalore', 'India');
INSERT INTO customers (user_id, address, city, country) VALUES (2, '45 Park Street, Sector 15', 'Mumbai', 'India');
INSERT INTO customers (user_id, address, city, country) VALUES (3, '78 Gandhi Nagar, Vastrapur', 'Ahmedabad', 'India');
INSERT INTO customers (user_id, address, city, country) VALUES (4, '234 Rajpur Road, Civil Lines', 'Delhi', 'India');
INSERT INTO customers (user_id, address, city, country) VALUES (5, '56 Mall Road, Cantonment', 'Amritsar', 'India');
INSERT INTO customers (user_id, address, city, country) VALUES (6, '89 Hitech City, Madhapur', 'Hyderabad', 'India');
INSERT INTO customers (user_id, address, city, country) VALUES (7, '167 Station Road, Alambagh', 'Lucknow', 'India');
INSERT INTO customers (user_id, address, city, country) VALUES (8, '23 Anna Salai, T Nagar', 'Chennai', 'India');
INSERT INTO customers (user_id, address, city, country) VALUES (9, '456 SG Highway, Bodakdev', 'Ahmedabad', 'India');
INSERT INTO customers (user_id, address, city, country) VALUES (10, '78 FC Road, Deccan', 'Pune', 'India');
INSERT INTO customers (user_id, address, city, country) VALUES (11, '345 Broadway Street, Manhattan', 'New York', 'USA');
INSERT INTO customers (user_id, address, city, country) VALUES (12, '67 Baker Street, Westminster', 'London', 'UK');
INSERT INTO customers (user_id, address, city, country) VALUES (13, '12 Jinnah Avenue, F-7', 'Islamabad', 'Pakistan');
INSERT INTO customers (user_id, address, city, country) VALUES (14, '89 Queen Street West, Downtown', 'Toronto', 'Canada');
INSERT INTO customers (user_id, address, city, country) VALUES (15, '234 Nanjing Road, Huangpu District', 'Shanghai', 'China');
INSERT INTO customers (user_id, address, city, country) VALUES (16, '456 Marine Drive, Nariman Point', 'Mumbai', 'India');
INSERT INTO customers (user_id, address, city, country) VALUES (17, '78 ECR Road, Neelankarai', 'Chennai', 'India');
INSERT INTO customers (user_id, address, city, country) VALUES (18, '123 Avenida Paulista, Bela Vista', 'Sao Paulo', 'Brazil');
INSERT INTO customers (user_id, address, city, country) VALUES (19, '45 Gran Via, Centro', 'Madrid', 'Spain');
INSERT INTO customers (user_id, address, city, country) VALUES (20, '67 Shibuya Crossing, Shibuya', 'Tokyo', 'Japan');
INSERT INTO customers (user_id, address, city, country) VALUES (21, '234 Linking Road, Bandra West', 'Mumbai', 'India');
INSERT INTO customers (user_id, address, city, country) VALUES (22, '89 George Street, CBD', 'Sydney', 'Australia');
INSERT INTO customers (user_id, address, city, country) VALUES (23, '45 Gulshan Avenue, Gulshan 1', 'Dhaka', 'Bangladesh');
INSERT INTO customers (user_id, address, city, country) VALUES (24, '167 Sector 17, Chandigarh Road', 'Chandigarh', 'India');
INSERT INTO customers (user_id, address, city, country) VALUES (25, '78 Oxford Street, Mayfair', 'London', 'UK');
INSERT INTO customers (user_id, address, city, country) VALUES (26, '234 Tahrir Square, Downtown', 'Cairo', 'Egypt');
INSERT INTO customers (user_id, address, city, country) VALUES (27, '56 Connaught Place, Central Delhi', 'Delhi', 'India');
INSERT INTO customers (user_id, address, city, country) VALUES (28, '123 Satellite Road, Prahlad Nagar', 'Ahmedabad', 'India');
INSERT INTO customers (user_id, address, city, country) VALUES (29, '456 Sunset Boulevard, Hollywood', 'Los Angeles', 'USA');
INSERT INTO customers (user_id, address, city, country) VALUES (30, '89 Whitefield Main Road, ITPL', 'Bangalore', 'India');

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    total_amount DECIMAL(10,2),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (1, 1199.98, '2024-11-01 10:30:00', 'Delivered');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (2, 499.00, '2024-11-02 14:15:00', 'Delivered');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (3, 1549.50, '2024-11-03 09:45:00', 'Delivered');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (4, 649.99, '2024-11-04 16:20:00', 'Shipped');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (5, 2199.00, '2024-11-05 11:00:00', 'Delivered');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (6, 949.99, '2024-11-06 13:30:00', 'Delivered');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (7, 1399.00, '2024-11-07 15:45:00', 'Shipped');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (1, 799.99, '2024-11-08 10:10:00', 'Processing');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (1, 899.00, '2024-11-09 12:25:00', 'Delivered');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (1, 1799.99, '2024-11-10 14:50:00', 'Shipped');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (11, 425.00, '2024-11-11 09:15:00', 'Delivered');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (12, 748.99, '2024-11-12 16:40:00', 'Delivered');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (13, 1299.50, '2024-11-13 11:20:00', 'Shipped');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (14, 998.00, '2024-11-14 13:05:00', 'Processing');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (15, 599.99, '2024-11-15 15:30:00', 'Delivered');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (16, 1849.00, '2024-11-16 10:45:00', 'Shipped');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (17, 674.99, '2024-11-17 12:10:00', 'Delivered');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (18, 1125.00, '2024-11-18 14:35:00', 'Processing');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (19, 849.50, '2024-11-19 09:50:00', 'Shipped');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (20, 1499.99, '2024-11-20 11:25:00', 'Pending');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (19, 399.00, '2024-11-21 13:40:00', 'Processing');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (19, 2299.99, '2024-11-15 15:55:00', 'Delivered');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (23, 575.00, '2024-11-16 10:20:00', 'Shipped');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (6, 1699.50, '2024-11-17 12:30:00', 'Delivered');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (25, 924.99, '2024-11-18 14:15:00', 'Processing');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (26, 1349.00, '2024-11-19 16:05:00', 'Shipped');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (27, 699.99, '2024-11-20 09:30:00', 'Pending');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (28, 1899.00, '2024-11-20 11:45:00', 'Processing');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (29, 449.50, '2024-11-21 13:20:00', 'Pending');
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES (30, 1249.99, '2024-11-21 15:10:00', 'Processing');

CREATE TABLE order_details (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);
INSERT INTO order_details (order_id, book_id, quantity, price) VALUES
(1, 1, 3, 599.99),
(1, 2, 2, 499.00),
(2, 10, 1, 799.99),
(3, 3, 2, 399.50),
(3, 9, 3, 450.00),
(4, 4, 1, 649.99),
(5, 2, 5, 499.00),
(5, 8, 2, 350.00),
(6, 6, 3, 499.99),
(7, 7, 2, 699.00),
(7, 12, 1, 399.00),
(8, 8, 4, 350.00),
(9, 14, 2, 499.00),
(10, 10, 3, 799.99),
(10, 23, 1, 499.00),
(11, 5, 2, 550.00),
(12, 15, 1, 299.99),
(12, 16, 2, 349.00),
(13, 13, 3, 375.50),
(14, 2, 4, 499.00),
(15, 18, 2, 599.00),
(16, 24, 3, 425.00),
(17, 17, 1, 449.99),
(18, 26, 2, 650.00),
(19, 27, 3, 699.99),
(20, 29, 1, 379.50),
(21, 30, 2, 575.00),
(22, 1, 5, 599.99),
(22, 3, 2, 399.50),
(23, 4, 3, 649.99),
(24, 11, 2, 425.00),
(25, 6, 4, 499.99),
(26, 9, 2, 450.00),
(27, 3, 1, 399.50),
(27, 20, 2, 525.00),
(28, 12, 3, 399.00),
(29, 5, 2, 550.00),
(30, 7, 4, 699.00);

CREATE TABLE reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    user_id INT,
    rating INT,
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
INSERT INTO reviews (book_id, user_id, rating, comment, created_at) VALUES
(1, 1, 5, 'Great book', NOW()),
(1, 2, 4, 'Nice read', NOW()),
(1, 3, 5, 'Amazing', NOW()),
(1, 4, 5, 'Loved it!', NOW()),
(1, 5, 4, 'Very good', NOW()),
(1, 6, 5, 'Excellent!', NOW()),
(1, 7, 5, 'Superb', NOW()),
(1, 8, 4, 'Useful', NOW()),
(1, 9, 5, 'Best book ever', NOW()),
(1, 10, 5, 'Perfect', NOW());
-- Book 5 extra reviews (8)
iNSERT INTO reviews (book_id, user_id, rating, comment, created_at) VALUES
(5, 11, 5, 'Awesome!', NOW()),
(5, 12, 4, 'Good read', NOW()),
(5, 13, 4, 'Nice story', NOW()),
(5, 14, 5, 'Loved it', NOW()),
(5, 15, 5, 'Great', NOW()),
(5, 16, 3, 'Okay book', NOW()),
(5, 17, 4, 'Pretty good', NOW()),
(5, 18, 5, 'Excellent', NOW());
-- Book 10 extra reviews (12)
INSERT INTO reviews (book_id, user_id, rating, comment, created_at) VALUES
(10, 19, 5, 'Great book', NOW()),
(10, 20, 4, 'Very interesting', NOW()),
(10, 21, 5, 'Loved it', NOW()),
(10, 22, 5, 'Amazing', NOW()),
(10, 23, 4, 'Good read', NOW()),
(10, 24, 5, 'Perfect!', NOW()),
(10, 25, 5, 'Superb writing', NOW()),
(10, 26, 4, 'Nice', NOW()),
(10, 27, 4, 'Good one', NOW()),
(10, 28, 5, 'Great fantasy', NOW()),
(10, 29, 5, 'Excellent!', NOW()),
(10, 30, 5, 'Magical!', NOW());
CREATE TABLE shopping_cart (
    cart_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
INSERT INTO shopping_cart (user_id, created_at) VALUES (1, '2024-11-15 10:30:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (2, '2024-11-15 11:45:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (3, '2024-11-15 14:20:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (4, '2024-11-16 09:15:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (5, '2024-11-16 12:30:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (6, '2024-11-16 15:50:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (7, '2024-11-17 10:10:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (8, '2024-11-17 13:25:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (9, '2024-11-17 16:40:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (10, '2024-11-18 09:05:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (11, '2024-11-18 11:55:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (12, '2024-11-18 14:30:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (13, '2024-11-19 10:20:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (14, '2024-11-19 12:45:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (15, '2024-11-19 15:15:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (16, '2024-11-20 09:30:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (17, '2024-11-20 11:40:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (18, '2024-11-20 14:00:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (19, '2024-11-20 16:25:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (20, '2024-11-21 09:50:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (21, '2024-11-21 11:10:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (22, '2024-11-21 13:35:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (23, '2024-11-21 15:05:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (24, '2024-11-20 10:25:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (25, '2024-11-20 12:50:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (26, '2024-11-19 14:15:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (27, '2024-11-19 16:45:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (28, '2024-11-18 10:55:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (29, '2024-11-18 13:20:00');
INSERT INTO shopping_cart (user_id, created_at) VALUES (30, '2024-11-17 15:40:00');
CREATE TABLE cart_items (
    cart_item_id INT AUTO_INCREMENT PRIMARY KEY,
    cart_id INT,
    book_id INT,
    quantity INT,
    FOREIGN KEY (cart_id) REFERENCES shopping_cart(cart_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (1, 2, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (1, 7, 2);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (2, 10, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (3, 3, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (3, 9, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (4, 4, 2);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (5, 1, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (5, 11, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (5, 22, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (6, 6, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (6, 19, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (7, 7, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (7, 12, 2);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (8, 8, 3);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (9, 14, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (9, 20, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (10, 10, 2);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (10, 23, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (11, 5, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (12, 15, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (12, 16, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (13, 13, 2);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (14, 2, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (14, 21, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (15, 18, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (16, 24, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (16, 25, 2);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (17, 17, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (18, 26, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (19, 27, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (19, 28, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (20, 29, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (21, 30, 2);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (22, 1, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (22, 8, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (23, 4, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (24, 11, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (25, 6, 2);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (26, 9, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (27, 3, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (27, 20, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (28, 12, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (29, 5, 2);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (30, 7, 1);
INSERT INTO cart_items (cart_id, book_id, quantity) VALUES (30, 14, 1);
CREATE TABLE coupons (
    coupon_id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(50) UNIQUE,
    discount INT,
    expiry_date DATE,
    status VARCHAR(20)
);

INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('WELCOME10', 10, '2024-12-31', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('SAVE20', 20, '2024-12-15', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('BOOK15', 15, '2024-11-30', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('FESTIVE25', 25, '2024-12-25', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('NEWYEAR30', 30, '2025-01-15', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('READER5', 5, '2024-12-10', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('SUMMER50', 50, '2024-10-31', 'Expired');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('FLASH40', 40, '2024-11-22', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('STUDENT20', 20, '2025-03-31', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('BULK15', 15, '2024-12-20', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('FIRSTBUY25', 25, '2024-12-31', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('MEGA35', 35, '2024-11-25', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('DIWALI30', 30, '2024-11-05', 'Expired');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('HOLIDAY20', 20, '2024-12-31', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('BOOKWORM10', 10, '2025-02-28', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('VIP50', 50, '2025-06-30', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('SPECIAL15', 15, '2024-11-28', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('WEEKEND12', 12, '2024-11-24', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('EARLYBIRD20', 20, '2024-12-05', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('MONSOON25', 25, '2024-09-30', 'Expired');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('BLACKFRIDAY45', 45, '2024-11-29', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('CYBER40', 40, '2024-12-02', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('LOYALTY30', 30, '2025-01-31', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('AUTUMN18', 18, '2024-10-15', 'Expired');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('WINTER22', 22, '2025-02-15', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('REFER10', 10, '2024-12-31', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('BIRTHDAY35', 35, '2024-12-12', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('CLEARANCE60', 60, '2024-11-23', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('THANKYOU15', 15, '2024-11-26', 'Active');
INSERT INTO coupons (code, discount, expiry_date, status) VALUES ('REPUBLIC50', 50, '2025-01-26', 'Active');
CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    amount DECIMAL(10,2),
    method VARCHAR(50),
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (2, 750.50, 'UPI', '2025-01-02 11:20:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (3, 1200.00, 'Debit Card', '2025-01-03 09:45:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (4, 999.99, 'Net Banking', '2025-01-04 14:30:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (5, 450.00, 'Cash', '2025-01-05 16:00:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (6, 820.75, 'Credit Card', '2025-01-06 13:12:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (7, 2350.00, 'UPI', '2025-01-07 17:25:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (8, 1599.00, 'Debit Card', '2025-01-08 12:10:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (9, 999.00, 'Cash', '2025-01-09 08:55:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (10, 3100.00, 'Net Banking', '2025-01-10 18:40:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (11, 650.00, 'UPI', '2025-01-11 11:50:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (12, 470.25, 'Credit Card', '2025-01-12 10:05:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (13, 2400.00, 'Debit Card', '2025-01-13 15:15:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (14, 725.00, 'Net Banking', '2025-01-14 09:00:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (15, 1320.75, 'UPI', '2025-01-15 13:33:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (16, 1800.00, 'Credit Card', '2025-01-16 14:55:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (17, 760.40, 'Cash', '2025-01-17 16:10:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (18, 980.20, 'Debit Card', '2025-01-18 19:25:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (19, 2000.00, 'UPI', '2025-01-19 08:45:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (20, 3150.00, 'Net Banking', '2025-01-20 18:10:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (21, 540.00, 'UPI', '2025-01-21 09:55:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (22, 875.00, 'Cash', '2025-01-22 12:00:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (23, 1999.00, 'Credit Card', '2025-01-23 13:45:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (24, 1120.00, 'Debit Card', '2025-01-24 15:30:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (25, 760.00, 'UPI', '2025-01-25 10:20:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (26, 2500.00, 'Net Banking', '2025-01-26 14:40:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (27, 690.00, 'Credit Card', '2025-01-27 16:50:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (28, 880.00, 'UPI', '2025-01-28 11:35:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (29, 1340.00, 'Debit Card', '2025-01-29 17:10:00');
INSERT INTO payments (order_id, amount, method, payment_date) VALUES (30, 999.50, 'Cash', '2025-01-30 18:18:00');
CREATE TABLE login_attempts (
    attempt_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    attempt_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    success BOOLEAN,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (1, '2025-01-01 08:10:00', TRUE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (2, '2025-01-01 08:12:00', FALSE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (3, '2025-01-01 09:00:00', TRUE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (4, '2025-01-01 09:05:00', FALSE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (5, '2025-01-01 09:10:00', TRUE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (6, '2025-01-01 10:15:00', FALSE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (7, '2025-01-01 11:00:00', TRUE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (8, '2025-01-01 11:30:00', FALSE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (9, '2025-01-01 12:00:00', TRUE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (10, '2025-01-01 12:45:00', FALSE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (1, '2025-01-02 08:10:00', TRUE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (2, '2025-01-02 08:15:00', FALSE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (3, '2025-01-02 09:20:00', TRUE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (4, '2025-01-02 09:22:00', FALSE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (5, '2025-01-02 09:30:00', TRUE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (6, '2025-01-02 10:00:00', FALSE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (7, '2025-01-02 10:30:00', TRUE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (8, '2025-01-02 11:00:00', FALSE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (9, '2025-01-02 11:40:00', TRUE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (10, '2025-01-02 12:10:00', FALSE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (1, '2025-01-03 08:10:00', TRUE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (2, '2025-01-03 08:12:00', TRUE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (3, '2025-01-03 09:00:00', FALSE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (4, '2025-01-03 09:05:00', FALSE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (5, '2025-01-03 09:10:00', TRUE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (6, '2025-01-03 10:00:00', TRUE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (7, '2025-01-03 10:30:00', TRUE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (8, '2025-01-03 11:00:00', FALSE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (9, '2025-01-03 11:20:00', TRUE);
INSERT INTO login_attempts (user_id, attempt_time, success) VALUES (10, '2025-01-03 12:00:00', FALSE);
CREATE TABLE wishlist (
    wishlist_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
INSERT INTO wishlist (user_id, created_at) VALUES (1, '2025-01-01 10:00:00');
INSERT INTO wishlist (user_id, created_at) VALUES (2, '2025-01-01 10:05:00');
INSERT INTO wishlist (user_id, created_at) VALUES (3, '2025-01-01 10:10:00');
INSERT INTO wishlist (user_id, created_at) VALUES (4, '2025-01-01 10:15:00');
INSERT INTO wishlist (user_id, created_at) VALUES (5, '2025-01-01 10:20:00');
INSERT INTO wishlist (user_id, created_at) VALUES (6, '2025-01-01 10:25:00');
INSERT INTO wishlist (user_id, created_at) VALUES (7, '2025-01-01 10:30:00');
INSERT INTO wishlist (user_id, created_at) VALUES (8, '2025-01-01 10:35:00');
INSERT INTO wishlist (user_id, created_at) VALUES (9, '2025-01-01 10:40:00');
INSERT INTO wishlist (user_id, created_at) VALUES (10, '2025-01-01 10:45:00');
INSERT INTO wishlist (user_id, created_at) VALUES (1, '2025-01-02 11:00:00');
INSERT INTO wishlist (user_id, created_at) VALUES (2, '2025-01-02 11:05:00');
INSERT INTO wishlist (user_id, created_at) VALUES (3, '2025-01-02 11:10:00');
INSERT INTO wishlist (user_id, created_at) VALUES (4, '2025-01-02 11:15:00');
INSERT INTO wishlist (user_id, created_at) VALUES (5, '2025-01-02 11:20:00');
INSERT INTO wishlist (user_id, created_at) VALUES (6, '2025-01-02 11:25:00');
INSERT INTO wishlist (user_id, created_at) VALUES (7, '2025-01-02 11:30:00');
INSERT INTO wishlist (user_id, created_at) VALUES (8, '2025-01-02 11:35:00');
INSERT INTO wishlist (user_id, created_at) VALUES (9, '2025-01-02 11:40:00');
INSERT INTO wishlist (user_id, created_at) VALUES (10, '2025-01-02 11:45:00');
INSERT INTO wishlist (user_id, created_at) VALUES (1, '2025-01-03 12:00:00');
INSERT INTO wishlist (user_id, created_at) VALUES (2, '2025-01-03 12:05:00');
INSERT INTO wishlist (user_id, created_at) VALUES (3, '2025-01-03 12:10:00');
INSERT INTO wishlist (user_id, created_at) VALUES (4, '2025-01-03 12:15:00');
INSERT INTO wishlist (user_id, created_at) VALUES (5, '2025-01-03 12:20:00');
INSERT INTO wishlist (user_id, created_at) VALUES (6, '2025-01-03 12:25:00');
INSERT INTO wishlist (user_id, created_at) VALUES (7, '2025-01-03 12:30:00');
INSERT INTO wishlist (user_id, created_at) VALUES (8, '2025-01-03 12:35:00');
INSERT INTO wishlist (user_id, created_at) VALUES (9, '2025-01-03 12:40:00');
INSERT INTO wishlist (user_id, created_at) VALUES (10, '2025-01-03 12:45:00');
CREATE TABLE wishlist_items (
    wishlist_item_id INT ,
    wishlist_id INT,
    book_id INT,
    FOREIGN KEY (wishlist_id) REFERENCES wishlist(wishlist_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);
INSERT INTO wishlist_items (wishlist_item_id, wishlist_id, book_id) VALUES
(31, 5, 10),
(32, 8, 10),
(33, 12, 10),
(34, 6, 5),
(35, 9, 5),
(36, 4, 22),
(37, 7, 22),
(38, 10, 22),
(39, 11, 22),
(40, 3, 18),
(41, 14, 18),
(42, 16, 18),
(43, 2, 27),
(44, 13, 27),
(45, 15, 27),
(46, 18, 27),
(47, 19, 27);

show tables;
select * from authors;
select * from books;
select * from cart_items;
select * from categories;
select * from coupons;
select * from customers;
select * from login_attempts;
select * from order_details;
select * from orders;
select * from payments;
select * from reviews;
select * from shopping_cart;
select * from users;
select * from wishlist;
select * from wishlist_items;

ALTER TABLE orders ADD COLUMN coupon_id INT NULL;
ALTER TABLE orders ADD FOREIGN KEY (coupon_id) REFERENCES coupons(coupon_id);
SELECT order_id, coupon_id FROM orders;
UPDATE orders SET coupon_id = 1 WHERE order_id IN (1, 3, 5, 7, 10);     -- WELCOME10 used 5 times
UPDATE orders SET coupon_id = 2 WHERE order_id IN (2, 8);                -- SAVE20 used 2 times
UPDATE orders SET coupon_id = 3 WHERE order_id IN (4, 9, 12);            -- BOOK15 used 3 times
UPDATE orders SET coupon_id = 5 WHERE order_id = 6;                      -- NEWYEAR30 used 1 time
UPDATE orders SET coupon_id = 10 WHERE order_id = 11;                    -- BULK15 used 1 time

SET SQL_SAFE_UPDATES = 0;
UPDATE books
SET stock = 5
WHERE title = 'Atomic Habits';
UPDATE books
SET stock = 7
WHERE title = 'Harry Potter and the Philosopher stone';
UPDATE books
SET stock = 10
WHERE title = 'The Midnight Library';
