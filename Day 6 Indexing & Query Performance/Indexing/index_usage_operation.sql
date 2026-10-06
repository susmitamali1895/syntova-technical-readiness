-- Create a new table

CREATE TABLE transactions_performance (
    transaction_id INT,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    amount INT
);

-- Insert data

INSERT INTO transactions_performance
(transaction_id, customer_name, city, amount)
VALUES
(501, 'Aarohi', 'Pune', 4500),
(502, 'Madhav', 'Mumbai', 6200),
(503, 'Kiara', 'Nashik', 3800),
(504, 'Raghav', 'Pune', 7200),
(505, 'Simran', 'Nagpur', 5100);

-- Create an index on city

CREATE INDEX idx_transactions_city
ON transactions_performance(city);

-- Query using the indexed column

EXPLAIN ANALYZE
SELECT *
FROM transactions_performance
WHERE city = 'Pune';

-- Query using another column without an index

EXPLAIN ANALYZE
SELECT *
FROM transactions_performance
WHERE amount > 5000;