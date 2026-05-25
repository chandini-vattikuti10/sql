-- Create a SQL query that uses the SUM function to calculate the total salary of all employees in the company.
use demo;
create table employees(emp_id int,emp_name varchar(20),salary int);
insert into employees values(101,'ravi',20000),(102,'siva',25000),(103,'uma',13000),(104,'swapna',15000);
select sum(salary) from employees;

-- Write a SQL query that applies the COUNT function to determine the number of employees in each department.
alter table employees add department varchar(20);
update employees set department='sales' where emp_id=101;
update employees set department='marketing' where emp_id=102;
update employees set department='sales' where emp_id=103;
update employees set department='marketing' where emp_id=104;

select count(*) from employees where department='sales';
select count(*) from employees where department='marketing';

-- Use the AVG function in a SQL query to find the average salary of employees in a specific department, assuming the department name is 'Sales'.
select avg(salary) from employees where department='sales';