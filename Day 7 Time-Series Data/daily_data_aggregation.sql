-- Day 7: Daily Data Aggregation

CREATE TABLE daily_sales_series (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    sale_date DATE,
    amount INT
);

-- Insert data

INSERT INTO daily_sales_series
(sale_id, customer_name, sale_date, amount)
VALUES
(1, 'Ayesha', '2026-10-01', 2500),
(2, 'Rohan', '2026-10-01', 3200),
(3, 'Simran', '2026-10-02', 1800),
(4, 'Varsha', '2026-10-02', 4100),
(5, 'Nitin', '2026-10-03', 2900),
(6, 'Poonam', '2026-10-04', 3500),
(7, 'Harish', '2026-10-04', 2700);

-- Daily aggregation

SELECT
    sale_date,
    COUNT(*) AS total_orders,
    SUM(amount) AS total_sales,
    AVG(amount) AS average_sales
FROM daily_sales_series
GROUP BY sale_date
ORDER BY sale_date;