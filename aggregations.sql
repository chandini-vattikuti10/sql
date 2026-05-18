-- 1. Create a query that calculates the total sales (using SUM) 
-- for each region in a given dataset, grouping the results by region.

show databases;
use demo;
 create table sales(sno int,product varchar(20),cost int,region varchar(20));
insert into sales values(1,'mobile',45000,'hyd'),(2,'laptop',80000,'rjy'),(3,'ipad',150000,'hyd'),(4,'mobile',15000,'kvr');
select * from sales;
select sum(cost) from sales group by region;

--2.  Write a SQL statement that finds the average (using AVG) 
-- order value for customers in a specific country, 
-- filtering out orders with missing or null values.

create table orders(sno int, product_name varchar(20), order_value int, country varchar(20));
insert into orders values(1,'mobile',40000,'india'),(2,'chairs',60000,'england'),(3,'table',50900,'usa');
insert into orders(sno,product_name,country) values(4,'laptop','india'),(5,'beds','europe');
select avg(order_value) from orders where order_value is not null;


-- 3. Develop a database query that determines the 
-- maximum (using MAX), minimum (using MIN), and count (using COUNT) 
-- of employee salaries in a company, grouping the results by department.

create table employee(emp_id int,emp_name varchar(20),salary int, department varchar(20));
insert into employee values(1,'sunitha',30000,'hr'),(2,'ram',80000,'developer'),(3,'kish',100000,'hr'),(4,'siva',18000,'hr'),(5,'priya',60000,'developer');
select max(salary) from employee group by department;
select min(salary) from employee group by department;
select count(salary) from employee group by department;