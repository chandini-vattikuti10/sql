show databases;
use demo;
show tables;
-- Create a Customers table with a primary key CustomerID and 
-- relevant customer information columns (e.g., Name, Email, Address).

create table customer(CustomerID int primary key auto_increment, name varchar(20), Email varchar(20),Address varchar(40));
desc customer;
show create table customer;

-- Design an Orders table with a primary key OrderID, 
-- a foreign key CustomerID referencing the Customers table, 
-- and other order-related columns (e.g., OrderDate, Total).

create table orders(OrderID int primary key auto_increment, CustomerID int,OrderDate DATE,Total int, foreign key(CustomerID) references customer(CustomerID));
desc orders;
SHOW CREATE TABLE orders;

-- Develop a Products table with a primary key ProductID and 
-- a foreign key OrderID referencing the Orders table, 
-- along with product-specific columns (e.g., ProductName, Price, Quantity).

create table products(ProductID int primary key auto_increment, OrderID int, ProductName varchar(20), Price int, Quantity int, foreign key(OrderID) references orders(OrderID));
desc products;
show create table products;