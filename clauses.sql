-- Create a simple database schema with at least two tables, one for customers and one for orders, and populate them with sample data.
use demo;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    country VARCHAR(50),
    email VARCHAR(100)
);

desc customers;

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    order_value DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

desc orders;


INSERT INTO customers (customer_name, country, email)
VALUES
('Alice Johnson', 'USA', 'alice@gmail.com'),
('Bob Smith', 'India', 'bob@gmail.com'),
('Charlie Brown', 'UK', 'charlie@gmail.com'),
('David Miller', 'India', 'david@gmail.com'),
('Emma Wilson', 'Canada', 'emma@gmail.com');



INSERT INTO orders (customer_id, order_date, order_value)
VALUES
(1, '2026-05-01', 250.50),
(2, '2026-05-02', 180.75),
(1, '2026-05-05', 320.00),
(3, '2026-05-06', 150.25),
(4, '2026-05-08', 500.00),
(2, '2026-05-10', 275.60);

select * from customers;
select * from orders;

-- Write a SQL query using the WHERE clause to retrieve all customers from a specific city.
SELECT *
FROM customers
WHERE country = 'UK';

-- Use the ORDER BY and LIMIT clauses in a query to show the top 5 orders with the highest total value, sorted in descending order.
SELECT *
FROM orders
ORDER BY order_value DESC
LIMIT 5;