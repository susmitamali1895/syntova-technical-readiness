-- Create a new table

CREATE TABLE employees_day5 (
    employee_id INT,
    employee_name VARCHAR(100),
    manager_id INT
);

-- Insert data

INSERT INTO employees_day5
(employee_id, employee_name, manager_id)
VALUES
(1, 'Neeta', NULL),
(2, 'Shruti', 1),
(3, 'Geeta', 1),
(4, 'Sejal', 2),
(5, 'Ananya', 2);

-- SELF JOIN

SELECT
    employee.employee_name AS employee,
    manager.employee_name AS manager
FROM employees_day5 AS employee
LEFT JOIN employees_day5 AS manager
ON employee.manager_id = manager.employee_id;