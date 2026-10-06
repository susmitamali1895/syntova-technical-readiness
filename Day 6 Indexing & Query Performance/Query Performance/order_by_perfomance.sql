-- Create a new table

CREATE TABLE product_sales_performance (
    sale_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    amount INT
);

-- Insert data

INSERT INTO product_sales_performance
(sale_id, product_name, category, amount)
VALUES
(1, 'Laptop', 'Electronics', 55000),
(2, 'Chair', 'Furniture', 7500),
(3, 'Keyboard', 'Electronics', 1500),
(4, 'Monitor', 'Electronics', 12000),
(5, 'Desk', 'Furniture', 9000),
(6, 'Mouse', 'Electronics', 900);

-- ORDER BY without index

EXPLAIN ANALYZE
SELECT *
FROM product_sales_performance
ORDER BY amount DESC;


-- Create index on amount

CREATE INDEX idx_product_amount
ON product_sales_performance(amount);


-- ORDER BY after index

EXPLAIN ANALYZE
SELECT *
FROM product_sales_performance
ORDER BY amount DESC;