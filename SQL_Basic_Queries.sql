-- ======================================
-- SQL BASIC PRACTICE QUERIES
-- ======================================

-- Create Database
CREATE DATABASE company_db;

-- Use Database
USE company_db;

-- Create Employee Table
CREATE TABLE Employee (
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT,
    department VARCHAR(30)
);

-- Insert Records
INSERT INTO Employee VALUES (1, 'Ravi', 30000, 'IT');
INSERT INTO Employee VALUES (2, 'Anita', 40000, 'HR');
INSERT INTO Employee VALUES (3, 'Kiran', 35000, 'IT');
INSERT INTO Employee VALUES (4, 'Meena', 45000, 'Finance');

-- Display All Records
SELECT * FROM Employee;

-- Display Selected Columns
SELECT emp_name, salary FROM Employee;

-- Using WHERE Condition
SELECT * FROM Employee WHERE department = 'IT';

-- Salary Greater Than 35000
SELECT * FROM Employee WHERE salary > 35000;

-- AND Operator
SELECT * FROM Employee
WHERE department = 'IT' AND salary > 30000;

-- OR Operator
SELECT * FROM Employee
WHERE department = 'HR' OR department = 'Finance';

-- Order By Salary Ascending
SELECT * FROM Employee ORDER BY salary;

-- Order By Salary Descending
SELECT * FROM Employee ORDER BY salary DESC;

-- Count Records
SELECT COUNT(*) FROM Employee;

-- Maximum Salary
SELECT MAX(salary) FROM Employee;

-- Minimum Salary
SELECT MIN(salary) FROM Employee;

-- Average Salary
SELECT AVG(salary) FROM Employee;

-- Distinct Departments
SELECT DISTINCT department FROM Employee;

-- Update Salary
UPDATE Employee
SET salary = 38000
WHERE emp_id = 3;

-- Delete Record
DELETE FROM Employee WHERE emp_id = 4;
