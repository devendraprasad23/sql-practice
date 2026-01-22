-- ======================================
-- SQL GROUP BY AND HAVING PRACTICE
-- ======================================

-- Create Employee Table
CREATE TABLE Employee (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);

-- Insert Data
INSERT INTO Employee VALUES (1, 'Ravi', 'IT', 30000);
INSERT INTO Employee VALUES (2, 'Anita', 'HR', 40000);
INSERT INTO Employee VALUES (3, 'Kiran', 'IT', 35000);
INSERT INTO Employee VALUES (4, 'Meena', 'Finance', 45000);
INSERT INTO Employee VALUES (5, 'Suresh', 'IT', 32000);

-- GROUP BY department
SELECT department, COUNT(*) AS total_employees
FROM Employee
GROUP BY department;

-- GROUP BY with SUM
SELECT department, SUM(salary) AS total_salary
FROM Employee
GROUP BY department;

-- GROUP BY with AVG
SELECT department, AVG(salary) AS average_salary
FROM Employee
GROUP BY department;

-- HAVING clause
SELECT department, COUNT(*) AS total_employees
FROM Employee
GROUP BY department
HAVING COUNT(*) > 1;

-- HAVING with AVG salary
SELECT department, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department
HAVING AVG(salary) > 33000;
