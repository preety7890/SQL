-- Join uses 

CREATE DATABASE Ecommerce;
USE Ecommerce;

-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    email VARCHAR(50)
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price INT
);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    total_amount INT
);

-- Insert Customers
INSERT INTO customers VALUES
(1, 'Rahul Sharma', 'Lucknow', 'rahul@gmail.com'),
(2, 'Priya Singh', 'Delhi', 'priya@gmail.com'),
(3, 'Rohit Kumar', 'Kanpur', 'rohit@gmail.com'),
(4, 'Neha Gupta', 'Noida', 'neha@gmail.com'),
(5, 'Amit Verma', 'Jaipur', 'amit@gmail.com'),
(6, 'Sneha Jain', 'Mumbai', 'sneha@gmail.com');

-- Insert Products 
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Mobile', 'Electronics', 25000),
(103, 'Headphones', 'Accessories', 2000),
(104, 'Chair', 'Furniture', 7000),
(105, 'Backpack', 'Bags', 1500),
(106, 'Smart Watch', 'Wearables', 5000);

-- Insert Orders
INSERT INTO orders VALUES
(1001, 1, 101, 1, 55000),
(1002, 2, 102, 2, 50000),
(1003, 3, 103, 3, 6000),
(1004, 4, 104, 1, 7000),
(1005, 5, 105, 2, 3000),
(1006, 6, 106, 1, 5000);

-- 1. Show all Data
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;

-- 2. Generate total amount
select sum(total_amount) as Total from orders;

-- 3. Product category
SELECT category as Product_category FROM products
group by category ;

-- 4. customer with orders 
SELECT c.customer_name, o.order_id ,o.total_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

-- 5. customers without orders
SELECT c.customer_id, c.customer_name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
 
-- 6.Har order ke saath customer ka naam aur city dikhaiye
SELECT o.order_id,c.customer_name,c.city
FROM orders o
INNER JOIN customers c
ON o.customer_id=c.customer_id;

-- 7. Display  Customer Name, Product Name aur Quantity with together
SELECT c.customer_name , q.quantity ,p.product_name
FROM customers c
INNER JOIN orders q
ON c.customer_id= q.customer_id
INNER JOIN products p
ON q.product_id=p.product_id;

 -- 8.Sirf Electronics category ke products kis customer ne kharide hain
SELECT c.customer_name, p.product_name, o.order_id
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN products p
ON o.product_id = p.product_id
WHERE p.category = 'Electronics';
