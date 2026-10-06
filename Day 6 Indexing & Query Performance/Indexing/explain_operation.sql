-- Create a new table

CREATE TABLE orders_performance (
    order_id INT,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    amount INT
);

-- Insert data

INSERT INTO orders_performance
(order_id, customer_name, city, amount)
VALUES
(301, 'Aarohi', 'Pune', 4500),
(302, 'Madhav', 'Mumbai', 6200),
(303, 'Kiara', 'Nashik', 3800),
(304, 'Raghav', 'Pune', 7200),
(305, 'Simran', 'Nagpur', 5100);

-- Create an index

CREATE INDEX idx_orders_city
ON orders_performance(city);

-- Check the query execution plan

EXPLAIN
SELECT *
FROM orders_performance
WHERE city = 'Pune';