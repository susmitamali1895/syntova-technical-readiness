-- Create a new table

CREATE TABLE employee_selectivity_index (
    employee_id INT,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    email VARCHAR(150)
);

-- Insert data

INSERT INTO employee_selectivity_index
(employee_id, employee_name, department, email)
VALUES
(1, 'Ishita', 'IT', 'ishita@gmail.com'),
(2, 'Varun', 'IT', 'varun@gmail.com'),
(3, 'Radhika', 'IT', 'radhika@gmail.com'),
(4, 'Samar', 'HR', 'samar@gmail.com'),
(5, 'Aditi', 'HR', 'aditi@gmail.com'),
(6, 'Manav', 'Finance', 'manav@gmail.com');

-- Index on department

CREATE INDEX idx_selectivity_department
ON employee_selectivity_index(department);

-- Index on email

CREATE INDEX idx_selectivity_email
ON employee_selectivity_index(email);

-- Search using department

EXPLAIN ANALYZE
SELECT *
FROM employee_selectivity_index
WHERE department = 'IT';

-- Search using email

EXPLAIN ANALYZE
SELECT *
FROM employee_selectivity_index
WHERE email = 'radhika@gmail.com';