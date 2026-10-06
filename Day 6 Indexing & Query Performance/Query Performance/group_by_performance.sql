-- Create a new table

CREATE TABLE store_sales_performance (
    sale_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    amount INT
);

-- Insert data

INSERT INTO store_sales_performance
(sale_id, product_name, category, amount)
VALUES
(1, 'Laptop', 'Electronics', 55000),
(2, 'Mouse', 'Electronics', 1500),
(3, 'Chair', 'Furniture', 7000),
(4, 'Table', 'Furniture', 12000),
(5, 'Keyboard', 'Electronics', 3000),
(6, 'Desk', 'Furniture', 9000);

-- GROUP BY without index

EXPLAIN ANALYZE
SELECT category, SUM(amount) AS total_sales
FROM store_sales_performance
GROUP BY category;


-- Create index on category

CREATE INDEX idx_store_sales_category
ON store_sales_performance(category);


-- GROUP BY after index

EXPLAIN ANALYZE
SELECT category, SUM(amount) AS total_sales
FROM store_sales_performance
GROUP BY category;