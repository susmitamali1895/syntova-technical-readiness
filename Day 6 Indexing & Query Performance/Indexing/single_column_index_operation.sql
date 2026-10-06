-- Create a new table

CREATE TABLE employee_salary_index (
    employee_id INT,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

-- Insert data

INSERT INTO employee_salary_index
(employee_id, employee_name, department, salary)
VALUES
(1, 'Ishita', 'IT', 55000),
(2, 'Varun', 'HR', 42000),
(3, 'Radhika', 'Finance', 60000),
(4, 'Samar', 'IT', 48000),
(5, 'Aditi', 'HR', 45000);

-- Create Single Column Index

CREATE INDEX idx_employee_department
ON employee_salary_index(department);

-- SELECT query using indexed column

SELECT *
FROM employee_salary_index
WHERE department = 'IT';