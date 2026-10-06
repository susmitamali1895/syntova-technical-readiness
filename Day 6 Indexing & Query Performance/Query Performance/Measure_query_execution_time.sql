-- Create a new table

CREATE TABLE website_orders_performance (
    order_id INT,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    amount INT
);

-- Insert data

INSERT INTO website_orders_performance
(order_id, customer_name, city, amount)
VALUES
(1, 'Ira', 'Pune', 4500),
(2, 'Devika', 'Mumbai', 7200),
(3, 'Mihir', 'Nashik', 3800),
(4, 'Tara', 'Pune', 6500),
(5, 'Juhi', 'Mumbai', 5100),
(6, 'Omkar', 'Pune', 8200);

-- Measure query execution time

EXPLAIN ANALYZE
SELECT *
FROM website_orders_performance
WHERE city = 'Pune';