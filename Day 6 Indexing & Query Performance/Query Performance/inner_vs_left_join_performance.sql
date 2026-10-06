-- Create customer table

CREATE TABLE customer_join_performance (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

-- Create order table

CREATE TABLE order_join_performance (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT
);

-- Insert customers

INSERT INTO customer_join_performance
(customer_id, customer_name, city)
VALUES
(1, 'Tanvi', 'Pune'),
(2, 'Ishita', 'Mumbai'),
(3, 'Kunal', 'Nashik'),
(4, 'Mitali', 'Nagpur'),
(5, 'Rohan', 'Kolhapur');

-- Insert orders

INSERT INTO order_join_performance
(order_id, customer_id, amount)
VALUES
(101, 1, 5000),
(102, 2, 7500),
(103, 3, 4200),
(104, 1, 6500);

-- INNER JOIN Performance

EXPLAIN ANALYZE
SELECT
    c.customer_name,
    o.amount
FROM customer_join_performance c
INNER JOIN order_join_performance o
ON c.customer_id = o.customer_id;


-- LEFT JOIN Performance

EXPLAIN ANALYZE
SELECT
    c.customer_name,
    o.amount
FROM customer_join_performance c
LEFT JOIN order_join_performance o
ON c.customer_id = o.customer_id;