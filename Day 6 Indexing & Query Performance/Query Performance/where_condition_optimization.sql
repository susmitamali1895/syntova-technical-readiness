-- Create a new table

CREATE TABLE sales_where_performance (
    sale_id INT,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    amount INT,
    status VARCHAR(30)
);

-- Insert data

INSERT INTO sales_where_performance
(sale_id, customer_name, city, amount, status)
VALUES
(1, 'Ira', 'Pune', 4500, 'Completed'),
(2, 'Devika', 'Mumbai', 7200, 'Pending'),
(3, 'Mihir', 'Pune', 5800, 'Completed'),
(4, 'Tara', 'Nashik', 3200, 'Cancelled'),
(5, 'Juhi', 'Pune', 6500, 'Completed'),
(6, 'Omkar', 'Mumbai', 4100, 'Pending');


-- Create index on city

CREATE INDEX idx_sales_where_city
ON sales_where_performance(city);


-- Optimized WHERE condition

EXPLAIN ANALYZE
SELECT *
FROM sales_where_performance
WHERE city = 'Pune';


-- Multiple WHERE conditions

EXPLAIN ANALYZE
SELECT *
FROM sales_where_performance
WHERE city = 'Pune'
AND status = 'Completed';