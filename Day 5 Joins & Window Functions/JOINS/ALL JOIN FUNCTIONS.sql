-- Create first table

CREATE TABLE departments_join (
    department_id INT,
    department_name VARCHAR(100)
);

INSERT INTO departments_join
(department_id, department_name)
VALUES
(1, 'Analytics'),
(2, 'Development'),
(3, 'Finance'),
(4, 'Marketing');


-- Create second table

CREATE TABLE employees_join (
    employee_id INT,
    employee_name VARCHAR(100),
    department_id INT
);

INSERT INTO employees_join
(employee_id, employee_name, department_id)
VALUES
(101, 'Ira', 1),
(102, 'Mihir', 2),
(103, 'Tara', 3),
(104, 'Omkar', 5);


-- 1. INNER JOIN
-- Only matching records

SELECT
    departments_join.department_name,
    employees_join.employee_name
FROM departments_join
INNER JOIN employees_join
ON departments_join.department_id = employees_join.department_id;


-- 2. LEFT JOIN
-- All records from left table

SELECT
    departments_join.department_name,
    employees_join.employee_name
FROM departments_join
LEFT JOIN employees_join
ON departments_join.department_id = employees_join.department_id;


-- 3. RIGHT JOIN
-- All records from right table

SELECT
    departments_join.department_name,
    employees_join.employee_name
FROM departments_join
RIGHT JOIN employees_join
ON departments_join.department_id = employees_join.department_id;


-- 4. FULL OUTER JOIN
-- All records from both tables

SELECT
    departments_join.department_name,
    employees_join.employee_name
FROM departments_join
FULL OUTER JOIN employees_join
ON departments_join.department_id = employees_join.department_id;