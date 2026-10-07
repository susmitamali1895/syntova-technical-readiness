-- Day 7: Weekly Data Aggregation

CREATE TABLE weekly_sales_series (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    sale_date DATE,
    amount INT
);

-- Insert data

INSERT INTO weekly_sales_series
(sale_id, customer_name, sale_date, amount)
VALUES
(1, 'Juhi', '2026-10-01', 2200),
(2, 'Sagar', '2026-10-02', 3500),
(3, 'Rekha', '2026-10-03', 1800),
(4, 'Mohan', '2026-10-04', 4200),
(5, 'Kajal', '2026-10-05', 3100),
(6, 'Abhishek', '2026-10-06', 2700),
(7, 'Swati', '2026-10-07', 3900),
(8, 'Ritesh', '2026-10-08', 2500),
(9, 'Pallavi', '2026-10-09', 4600),
(10, 'Tejas', '2026-10-10', 3300);

-- Weekly aggregation

SELECT
    DATE_TRUNC('week', sale_date)::DATE AS week_start,
    COUNT(*) AS total_orders,
    SUM(amount) AS total_sales,
    AVG(amount) AS average_sales
FROM weekly_sales_series
GROUP BY DATE_TRUNC('week', sale_date)
ORDER BY week_start;