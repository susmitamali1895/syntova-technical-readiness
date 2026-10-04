-- Create a new table

CREATE TABLE sales (
    sale_id INT,
    salesperson VARCHAR(100),
    category VARCHAR(50),
    amount INT
);

-- Insert data

INSERT INTO sales
(sale_id, salesperson, category, amount)
VALUES
(901, 'Rahul', 'Electronics', 5000),
(902, 'Sneha', 'Furniture', 3000),
(903, 'Rahul', 'Electronics', 7000),
(904, 'Amit', 'Furniture', 4500),
(905, 'Sneha', 'Electronics', 6000),
(906, 'Amit', 'Furniture', 2500);

-- GROUP BY operation

SELECT
    category,
    COUNT(*) AS total_sales,
    SUM(amount) AS total_amount,
    AVG(amount) AS average_amount
FROM sales
GROUP BY category;