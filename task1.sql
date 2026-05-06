-- 1. Create an employee table with 2 columns: name and salary
create table employee(name char , salary int);

-- 2.  Add address column at last with char datatype
alter table employee add column address char;

-- 3. Add emp_id column at first
alter table employee add column emp_id int first;

-- 4. Add email column after name
alter table employee add column email varchar(20) after name;

-- 5. Modify the datatype of address from char to varchar
alter table employee modify address varchar(20);

-- 6. Rename column name to emp_name
alter table employee rename column name to emp_name;

-- 7. Drop address column
ALTER table employee drop address;

desc employee;
