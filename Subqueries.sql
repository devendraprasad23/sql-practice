-- ======================================
-- SQL SUBQUERIES PRACTICE
-- ======================================

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

-- Find employee with highest salary
SELECT * 
FROM Employee
WHERE salary = (
    SELECT MAX(salary) FROM Employee
);

-- Find employees earning above average salary
SELECT * 
FROM Employee
WHERE salary > (
    SELECT AVG(salary) FROM Employee
);

-- Find employees from IT department
SELECT * 
FROM Employee
WHERE department = (
    SELECT department 
    FROM Employee 
    WHERE emp_name = 'Ravi'
);

-- Subquery with IN
SELECT * 
FROM Employee
WHERE salary IN (
    SELECT salary 
    FROM Employee 
    WHERE salary > 35000
);
