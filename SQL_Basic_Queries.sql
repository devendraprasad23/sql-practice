-- SQL BASIC PRACTICE QUERIES

CREATE DATABASE company_db;

USE company_db;

CREATE TABLE Employee (
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT,
    department VARCHAR(30)
);

INSERT INTO Employee VALUES (1, 'Ravi', 30000, 'IT');
INSERT INTO Employee VALUES (2, 'Anita', 40000, 'HR');
INSERT INTO Employee VALUES (3, 'Kiran', 35000, 'IT');
INSERT INTO Employee VALUES (4, 'Meena', 45000, 'Finance');

SELECT * FROM Employee;
SELECT emp_name, salary FROM Employee;

SELECT * FROM Employee WHERE department = 'IT';
SELECT * FROM Employee WHERE salary > 35000;

SELECT COUNT(*) FROM Employee;
SELECT MAX(salary);
SELECT MIN(salary);
SELECT AVG(salary);
