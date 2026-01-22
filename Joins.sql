-- ======================================
-- SQL JOINS PRACTICE
-- ======================================

-- Employee Table
CREATE TABLE Employee (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT
);

-- Department Table
CREATE TABLE Department (
    dept_id INT,
    dept_name VARCHAR(30)
);

-- Insert Employee Data
INSERT INTO Employee VALUES (1, 'Ravi', 1, 30000);
INSERT INTO Employee VALUES (2, 'Anita', 2, 40000);
INSERT INTO Employee VALUES (3, 'Kiran', 1, 35000);
INSERT INTO Employee VALUES (4, 'Meena', 3, 45000);

-- Insert Department Data
INSERT INTO Department VALUES (1, 'IT');
INSERT INTO Department VALUES (2, 'HR');
INSERT INTO Department VALUES (3, 'Finance');

-- INNER JOIN
SELECT e.emp_name, d.dept_name
FROM Employee e
INNER JOIN Department d
ON e.dept_id = d.dept_id;

-- LEFT JOIN
SELECT e.emp_name, d.dept_name
FROM Employee e
LEFT JOIN Department d
ON e.dept_id = d.dept_id;

-- RIGHT JOIN
SELECT e.emp_name, d.dept_name
FROM Employee e
RIGHT JOIN Department d
ON e.dept_id = d.dept_id;

-- FULL JOIN (works in some DBs)
SELECT e.emp_name, d.dept_name
FROM Employee e
FULL JOIN Department d
ON e.dept_id = d.dept_id;
