-- Create parent table

CREATE TABLE departments_fk_index (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Insert departments

INSERT INTO departments_fk_index
(department_id, department_name)
VALUES
(1, 'Analytics'),
(2, 'Finance'),
(3, 'Marketing');


-- Create child table

CREATE TABLE employees_fk_index (
    employee_id INT,
    employee_name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments_fk_index(department_id)
);

-- Insert employees

INSERT INTO employees_fk_index
(employee_id, employee_name, department_id)
VALUES
(101, 'Ira', 1),
(102, 'Devika', 2),
(103, 'Mihir', 1),
(104, 'Tara', 3);


-- Create index on Foreign Key column

CREATE INDEX idx_employee_department_fk
ON employees_fk_index(department_id);


-- SELECT using Foreign Key column

SELECT *
FROM employees_fk_index
WHERE department_id = 1;