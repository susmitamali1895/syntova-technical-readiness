-- Create a new table

CREATE TABLE customer_search_performance (
    customer_id INT,
    customer_name VARCHAR(100),
    email VARCHAR(150),
    city VARCHAR(50)
);

-- Insert data

INSERT INTO customer_search_performance
(customer_id, customer_name, email, city)
VALUES
(1, 'Ira', 'ira@gmail.com', 'Pune'),
(2, 'Devika', 'devika@gmail.com', 'Mumbai'),
(3, 'Mihir', 'mihir@gmail.com', 'Nashik'),
(4, 'Tara', 'tara@gmail.com', 'Pune'),
(5, 'Juhi', 'juhi@gmail.com', 'Nagpur'),
(6, 'Omkar', 'omkar@gmail.com', 'Mumbai');

-- 1. Check query plan before index

EXPLAIN ANALYZE
SELECT *
FROM customer_search_performance
WHERE email = 'tara@gmail.com';


-- 2. Create index on email

CREATE INDEX idx_customer_email
ON customer_search_performance(email);


-- 3. Check query plan after index

EXPLAIN ANALYZE
SELECT *
FROM customer_search_performance
WHERE email = 'tara@gmail.com';