CREATE TABLE daily_sales_dates (
    sale_date DATE PRIMARY KEY,
    total_sales INT
);

INSERT INTO daily_sales_dates
(sale_date, total_sales)
VALUES
('2026-10-01', 2500),
('2026-10-02', 3200),
('2026-10-04', 4100),
('2026-10-06', 2800),
('2026-10-07', 3500);

-- Fill missing dates with zero sales

SELECT
    d.generated_date::DATE AS sale_date,
    COALESCE(s.total_sales, 0) AS total_sales
FROM generate_series(
    '2026-10-01'::DATE,
    '2026-10-07'::DATE,
    INTERVAL '1 day'
) AS d(generated_date)
LEFT JOIN daily_sales_dates s
    ON s.sale_date = d.generated_date::DATE
ORDER BY sale_date;