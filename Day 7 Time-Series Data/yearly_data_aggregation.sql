CREATE TABLE yearly_sales_series (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    sale_date DATE,
    amount INT
);

INSERT INTO yearly_sales_series
(sale_id, customer_name, sale_date, amount)
VALUES
(1, 'Mrunal', '2024-02-10', 4500),
(2, 'Harsha', '2024-08-15', 6200),
(3, 'Ritika', '2025-01-20', 3800),
(4, 'Aniket', '2025-06-12', 5400),
(5, 'Preeti', '2025-11-25', 7100),
(6, 'Yogesh', '2026-03-08', 4900),
(7, 'Shalini', '2026-07-18', 6500),
(8, 'Karan', '2026-10-05', 5800);

SELECT
    DATE_TRUNC('year', sale_date)::DATE AS year_start,
    COUNT(*) AS total_orders,
    SUM(amount) AS total_sales,
    AVG(amount) AS average_sales
FROM yearly_sales_series
GROUP BY DATE_TRUNC('year', sale_date)
ORDER BY year_start;