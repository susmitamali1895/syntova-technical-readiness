-- Create a new table

CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(100),
    product VARCHAR(100),
    quantity INT,
    amount INT
);

-- Insert data

INSERT INTO orders
(order_id, customer_name, product, quantity, amount)
VALUES
(801, 'Rahul', 'Headphones', 2, 3000),
(802, 'Anjali', 'Keyboard', 1, 1500),
(803, 'Vivek', 'Monitor', 2, 12000),
(804, 'Pooja', 'Mouse', 3, 1800),
(805, 'Nikhil', 'Laptop Stand', 2, 2500);

-- Aggregate Functions

SELECT
    COUNT(*) AS total_orders,
    SUM(amount) AS total_sales,
    AVG(amount) AS average_sales,
    MIN(amount) AS minimum_sales,
    MAX(amount) AS maximum_sales
FROM orders;