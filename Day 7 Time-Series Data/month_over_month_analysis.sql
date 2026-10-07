CREATE TABLE monthly_revenue_mom (
    revenue_id INT PRIMARY KEY,
    revenue_date DATE,
    revenue INT
);

INSERT INTO monthly_revenue_mom
(revenue_id, revenue_date, revenue)
VALUES
(1, '2026-01-01', 50000),
(2, '2026-02-01', 58000),
(3, '2026-03-01', 54000),
(4, '2026-04-01', 65000),
(5, '2026-05-01', 72000),
(6, '2026-06-01', 68000);

-- Calculate previous month revenue and MoM change

WITH monthly_data AS (
    SELECT
        DATE_TRUNC('month', revenue_date)::DATE AS month_start,
        SUM(revenue) AS total_revenue
    FROM monthly_revenue_mom
    GROUP BY DATE_TRUNC('month', revenue_date)
)
SELECT
    month_start,
    total_revenue,
    LAG(total_revenue) OVER (
        ORDER BY month_start
    ) AS previous_month_revenue,
    total_revenue
        - LAG(total_revenue) OVER (
            ORDER BY month_start
        ) AS revenue_change
FROM monthly_data
ORDER BY month_start;