-- Create a subquery that retrieves the names of all employees who earn a salary greater than the average salary of the company.
-- insert into employees values(105,'mani',65000,'hr'),(106,'varsha',40000,'sales'),(107,'pallavi',35000,'marketing'),(108,'udaya',20000,'sales'),(109,'harish',50000,'hr'),(110,'sandy',57000,'hr');
-- select * from employees;
-- select avg(salary) from employees;
-- select emp_name,salary from employees where salary>(select avg(salary) from employees);


-- Develop a query that uses a subquery to find all orders that have a total value greater than the average order value.
-- create table orders(order_id int,order_name varchar(20),order_value int);
-- desc orders;
-- insert into orders values(1,'biryani',299),(2,'pasta',499),(3,'pizza',259),(4,'burger',199),(5,'biryani',199),(6,'juice',99),(7,'shawarma',250),(8,'idly',200),(9,'chicken',350),(10,'icecream',263);
-- select avg(order_value) from orders;
-- select order_name,order_value from orders where order_value>(select avg(order_value) from orders);

-- Write a subquery that returns the names of all customers who have placed an order with a total value greater than the maximum order value placed by any customer in the 'New York' region.
-- create table customer(c_id int,c_name varchar(20),order_name varchar(20),order_value int, region varchar(20));
-- insert into customer values(1,'alex','furniture',200000,'USA'),
-- (2,'joseph','plants',100000,'Europe'),
-- (3,'sandra','crocery',300000,'new york'),
-- (4,'soni','furniture',500000,'new york'),
-- (5,'shilpa','plants',250000,'europe'),
-- (6,'obama','kitchen accessories',350000,'uk');

-- select * from customer;
-- select c_name from customer where order_value>(select max(order_value) from customer where region='new york');