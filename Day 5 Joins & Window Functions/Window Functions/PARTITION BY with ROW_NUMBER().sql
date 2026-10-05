-- Create a new table

CREATE TABLE employee_performance_day5_v2 (
    employee_id INT,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    score INT
);

-- Insert data

INSERT INTO employee_performance_day5_v2
(employee_id, employee_name, department, score)
VALUES
(1, 'Aditi', 'IT', 90),
(2, 'Manav', 'IT', 85),
(3, 'Kavya', 'HR', 88),
(4, 'Yash', 'HR', 92),
(5, 'Pallavi', 'IT', 95),
(6, 'Nitin', 'HR', 80);

-- PARTITION BY with ROW_NUMBER()

SELECT
    employee_id,
    employee_name,
    department,
    score,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY score DESC
    ) AS department_rank
FROM employee_performance_day5_v2;