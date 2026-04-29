show databases;
select * from employee;
desc employee;
alter table employee modify emp_name varchar(20);
select * from employee;
insert into employee values(101, 'abhi', 'abhi@gmail.com', 50000);
insert into employee values(102, 'naveen', 'naveen@gmail.com', 90000),
    (103, 'gayatri', 'gayatri@gmail.com', 70000);
insert into employee(emp_name, email, emp_id, salary) values('uma', 'uma@gmail.com', 104, 98000);
insert into employee(emp_name, email, salary, emp_id) values('usha', 'usha@gmail.com', 56000, 105),
    ('tanu', 'tanu@gmail.com', 80000, 106);
insert into employee(emp_id, emp_name, salary, email) values(107, 'esha', 60000, 'esha@gmail.com'),
    (108, 'pinky', 79000, 'pinky@gmail.com');
select * from employee;
select emp_name,salary from employee;
select emp_name,email from employee where salary >= 70000;
select * from employee where salary <= 70000;