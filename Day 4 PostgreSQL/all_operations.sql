-- Create a new table

CREATE TABLE employees_salary (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary INT CHECK (salary > 0),
    city VARCHAR(50) DEFAULT 'Pune'
);

-- Insert data

INSERT INTO employees_salary
(employee_id, employee_name, department, salary, city)
VALUES
(1201, 'Arjun', 'IT', 55000, 'Pune'),
(1202, 'Maya', 'HR', 42000, 'Mumbai'),
(1203, 'Dev', 'IT', 65000, 'Pune'),
(1204, 'Sara', 'Finance', 48000, 'Nashik'),
(1205, 'Kabir', 'IT', 60000, 'Mumbai'),
(1206, 'Isha', 'Finance', 52000, 'Pune');

-- SELECT

SELECT * FROM employees_salary;

-- WHERE

SELECT *
FROM employees_salary
WHERE salary > 50000;

-- ORDER BY

SELECT *
FROM employees_salary
ORDER BY salary DESC;

-- LIMIT

SELECT *
FROM employees_salary
LIMIT 3;

-- Aggregate Functions

SELECT
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM employees_salary;

-- GROUP BY

SELECT
    department,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary
FROM employees_salary
GROUP BY department;

-- HAVING

SELECT
    department,
    AVG(salary) AS average_salary
FROM employees_salary
GROUP BY department
HAVING AVG(salary) > 50000;