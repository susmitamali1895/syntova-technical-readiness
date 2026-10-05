-- Create a new table

CREATE TABLE sales_performance_window (
    employee_id INT,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    sales_amount INT
);

-- Insert data

INSERT INTO sales_performance_window
(employee_id, employee_name, department, sales_amount)
VALUES
(1, 'Aditi', 'Sales', 85000),
(2, 'Manav', 'Sales', 72000),
(3, 'Kavya', 'Sales', 85000),
(4, 'Yash', 'Support', 65000),
(5, 'Pallavi', 'Support', 58000),
(6, 'Nitin', 'Support', 65000);


-- 1. ROW_NUMBER()

SELECT
    employee_name,
    department,
    sales_amount,
    ROW_NUMBER() OVER (
        ORDER BY sales_amount DESC
    ) AS row_number
FROM sales_performance_window;


-- 2. RANK()

SELECT
    employee_name,
    sales_amount,
    RANK() OVER (
        ORDER BY sales_amount DESC
    ) AS sales_rank
FROM sales_performance_window;


-- 3. DENSE_RANK()

SELECT
    employee_name,
    sales_amount,
    DENSE_RANK() OVER (
        ORDER BY sales_amount DESC
    ) AS dense_sales_rank
FROM sales_performance_window;


-- 4. PARTITION BY

SELECT
    employee_name,
    department,
    sales_amount,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY sales_amount DESC
    ) AS department_rank
FROM sales_performance_window;


-- 5. LAG()

SELECT
    employee_name,
    sales_amount,
    LAG(sales_amount) OVER (
        ORDER BY employee_id
    ) AS previous_sales
FROM sales_performance_window;


-- 6. LEAD()

SELECT
    employee_name,
    sales_amount,
    LEAD(sales_amount) OVER (
        ORDER BY employee_id
    ) AS next_sales
FROM sales_performance_window;