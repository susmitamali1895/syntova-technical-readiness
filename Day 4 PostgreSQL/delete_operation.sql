-- Create a new table

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

-- Insert data

INSERT INTO employees
(employee_id, employee_name, department, salary)
VALUES
(501, 'Aarav', 'IT', 45000),
(502, 'Riya', 'HR', 38000),
(503, 'Kunal', 'Finance', 50000),
(504, 'Meera', 'IT', 42000);

-- DELETE operation

DELETE FROM employees
WHERE employee_id = 502;

-- Display remaining records

SELECT * FROM employees;