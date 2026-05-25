-- Create a database schema with Employees and Departments tables, including relevant columns such as employee ID, name, department ID, department name, etc.
show databases;
use demo;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);



insert into Departments values(1001,'HR',"hyderabad"),(1002,'developer','mumbai'),(1003,'hr','mumbai'),(1004,'developer','hyderabad');
insert into Employees values(3,'guna',70000,1003),(4,'koushal',82000,1004);




select * from Employees;


-- Write SQL queries to perform the following join operations:
-- Inner join to retrieve the names of employees and their corresponding department names.

SELECT e.emp_name, d.department_name
FROM Employees e
INNER JOIN Departments d
ON e.department_id = d.department_id;


-- Left join to retrieve all employee names and their department names, if available.

SELECT e.emp_name, d.department_name
FROM Employees e
LEFT JOIN Departments d
ON e.department_id = d.department_id;

-- Right join to retrieve all department names and the names of employees in each department, if any.
SELECT d.department_name, e.emp_name
FROM Employees e
RIGHT JOIN Departments d
ON e.department_id = d.department_id;