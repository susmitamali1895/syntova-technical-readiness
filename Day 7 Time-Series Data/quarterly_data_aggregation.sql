-- Quarterly Data Aggregation

CREATE TABLE quarterly_sales_series (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    sale_date DATE,
    amount INT
);

-- Insert data

INSERT INTO quarterly_sales_series
(sale_id, customer_name, sale_date, amount)
VALUES
(1, 'Alka', '2026-01-10', 4500),
(2, 'Ramesh', '2026-02-15', 6200),
(3, 'Shweta', '2026-03-20', 3800),
(4, 'Pratik', '2026-04-12', 5200),
(5, 'Madhuri', '2026-05-18', 7100),
(6, 'Sanjay', '2026-06-25', 4300),
(7, 'Reena', '2026-07-08', 6500),
(8, 'Akash', '2026-08-14', 4800),
(9, 'Namrata', '2026-09-22', 5900),
(10, 'Dinesh', '2026-10-05', 7200),
(11, 'Asha', '2026-11-11', 5100),
(12, 'Vivek', '2026-12-20', 6800);

-- Quarterly aggregation

SELECT
    DATE_TRUNC('quarter', sale_date)::DATE AS quarter_start,
    COUNT(*) AS total_orders,
    SUM(amount) AS total_sales,
    AVG(amount) AS average_sales
FROM quarterly_sales_series
GROUP BY DATE_TRUNC('quarter', sale_date)
ORDER BY quarter_start;