-- Create a new table

CREATE TABLE sales_performance (
    sale_id INT,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    amount INT
);

-- Insert data

INSERT INTO sales_performance
(sale_id, customer_name, city, amount)
VALUES
(401, 'Aarohi', 'Pune', 4500),
(402, 'Madhav', 'Mumbai', 6200),
(403, 'Kiara', 'Nashik', 3800),
(404, 'Raghav', 'Pune', 7200),
(405, 'Simran', 'Nagpur', 5100);

-- Create an index

CREATE INDEX idx_sales_city
ON sales_performance(city);

-- EXPLAIN ANALYZE

EXPLAIN ANALYZE
SELECT *
FROM sales_performance
WHERE city = 'Pune';
