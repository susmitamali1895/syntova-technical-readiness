-- Create a new table

CREATE TABLE department_sales_performance (
    sale_id INT,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    amount INT
);

-- Insert data

INSERT INTO department_sales_performance
(sale_id, employee_name, department, amount)
VALUES
(1, 'Ira', 'IT', 5500),
(2, 'Devika', 'HR', 4200),
(3, 'Mihir', 'IT', 6800),
(4, 'Tara', 'Finance', 7500),
(5, 'Juhi', 'HR', 3900),
(6, 'Omkar', 'IT', 7200);


-- WHERE condition before GROUP BY

EXPLAIN ANALYZE
SELECT
    department,
    SUM(amount) AS total_sales
FROM department_sales_performance
WHERE amount > 5000
GROUP BY department;


-- HAVING condition after GROUP BY

EXPLAIN ANALYZE
SELECT
    department,
    SUM(amount) AS total_sales
FROM department_sales_performance
GROUP BY department
HAVING SUM(amount) > 10000;