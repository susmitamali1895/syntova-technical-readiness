-- Create a new table

CREATE TABLE customer_city_performance (
    customer_id INT,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

-- Insert data

INSERT INTO customer_city_performance
(customer_id, customer_name, city)
VALUES
(1, 'Ira', 'Pune'),
(2, 'Devika', 'Mumbai'),
(3, 'Mihir', 'Pune'),
(4, 'Tara', 'Nashik'),
(5, 'Juhi', 'Mumbai'),
(6, 'Omkar', 'Pune');

-- DISTINCT without index

EXPLAIN ANALYZE
SELECT DISTINCT city
FROM customer_city_performance;


-- Create index on city

CREATE INDEX idx_customer_city_distinct
ON customer_city_performance(city);


-- DISTINCT after index

EXPLAIN ANALYZE
SELECT DISTINCT city
FROM customer_city_performance;