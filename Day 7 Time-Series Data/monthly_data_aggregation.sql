-- Monthly Data Aggregation

CREATE TABLE monthly_sales_series (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    sale_date DATE,
    amount INT
);

-- Insert data

INSERT INTO monthly_sales_series
(sale_id, customer_name, sale_date, amount)
VALUES
(1, 'Lavanya', '2026-01-05', 2500),
(2, 'Chetan', '2026-01-18', 4200),
(3, 'Rashmi', '2026-02-07', 3100),
(4, 'Vijay', '2026-02-21', 5600),
(5, 'Neelam', '2026-03-10', 3800),
(6, 'Kartik', '2026-03-25', 4700),
(7, 'Sonali', '2026-04-08', 2900),
(8, 'Mahesh', '2026-04-20', 6100);

-- Monthly aggregation

SELECT
    DATE_TRUNC('month', sale_date)::DATE AS month_start,
    COUNT(*) AS total_orders,
    SUM(amount) AS total_sales,
    AVG(amount) AS average_sales
FROM monthly_sales_series
GROUP BY DATE_TRUNC('month', sale_date)
ORDER BY month_start;