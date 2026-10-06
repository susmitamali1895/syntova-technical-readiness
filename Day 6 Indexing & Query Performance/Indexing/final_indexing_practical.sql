-- Create a new table

CREATE TABLE customer_orders_final (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    order_status VARCHAR(30),
    amount INT
);

-- Insert data

INSERT INTO customer_orders_final
(order_id, customer_name, city, order_status, amount)
VALUES
(1, 'Ishita', 'Pune', 'Completed', 4500),
(2, 'Varun', 'Mumbai', 'Pending', 7200),
(3, 'Radhika', 'Pune', 'Completed', 5800),
(4, 'Samar', 'Nashik', 'Cancelled', 3200),
(5, 'Aditi', 'Pune', 'Completed', 6500),
(6, 'Manav', 'Mumbai', 'Pending', 4100);


-- Single Column Index

CREATE INDEX idx_final_city
ON customer_orders_final(city);


-- Composite Index

CREATE INDEX idx_final_city_status
ON customer_orders_final(city, order_status);


-- SELECT using WHERE + ORDER BY

SELECT *
FROM customer_orders_final
WHERE city = 'Pune'
ORDER BY amount DESC;


-- Check Query Performance

EXPLAIN ANALYZE
SELECT *
FROM customer_orders_final
WHERE city = 'Pune'
ORDER BY amount DESC;


-- Drop the single-column index

DROP INDEX idx_final_city;