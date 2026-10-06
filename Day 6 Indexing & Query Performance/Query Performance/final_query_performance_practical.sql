-- DAY 6 FINAL PRACTICAL
-- Indexing & Query Performance

-- Create tables

CREATE TABLE sales_final_performance (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    category VARCHAR(50),
    amount INT,
    sale_date DATE
);

CREATE TABLE category_final_performance (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

-- Insert sales data

INSERT INTO sales_final_performance
(sale_id, customer_name, city, category, amount, sale_date)
VALUES
(1, 'Nandini', 'Pune', 'Electronics', 45000, '2026-01-10'),
(2, 'Sakshi', 'Mumbai', 'Furniture', 18000, '2026-01-12'),
(3, 'Aditya', 'Pune', 'Electronics', 32000, '2026-02-05'),
(4, 'Kavita', 'Nashik', 'Clothing', 8500, '2026-02-15'),
(5, 'Rahul', 'Mumbai', 'Electronics', 52000, '2026-03-02'),
(6, 'Pooja', 'Pune', 'Furniture', 22000, '2026-03-18'),
(7, 'Sahil', 'Nagpur', 'Clothing', 12000, '2026-04-01'),
(8, 'Anjali', 'Pune', 'Electronics', 60000, '2026-04-12');

-- Insert category data

INSERT INTO category_final_performance
(category_id, category_name)
VALUES
(1, 'Electronics'),
(2, 'Furniture'),
(3, 'Clothing');


-- 1. Create Single Column Index

CREATE INDEX idx_sales_final_city
ON sales_final_performance(city);


-- 2. Create Composite Index

CREATE INDEX idx_sales_final_city_amount
ON sales_final_performance(city, amount);


-- 3. WHERE condition + ORDER BY

EXPLAIN ANALYZE
SELECT *
FROM sales_final_performance
WHERE city = 'Pune'
ORDER BY amount DESC;


-- 4. Aggregate + GROUP BY

EXPLAIN ANALYZE
SELECT
    category,
    SUM(amount) AS total_sales
FROM sales_final_performance
GROUP BY category;


-- 5. DISTINCT Performance

EXPLAIN ANALYZE
SELECT DISTINCT city
FROM sales_final_performance;


-- 6. JOIN Performance

EXPLAIN ANALYZE
SELECT
    s.customer_name,
    s.category,
    c.category_id
FROM sales_final_performance s
INNER JOIN category_final_performance c
ON s.category = c.category_name;


-- 7. Query with filtering

EXPLAIN ANALYZE
SELECT *
FROM sales_final_performance
WHERE city = 'Pune'
AND amount > 30000;


-- 8. Measure Query Execution

EXPLAIN ANALYZE
SELECT *
FROM sales_final_performance
ORDER BY amount DESC;


-- 9. Drop Single Column Index

DROP INDEX idx_sales_final_city;