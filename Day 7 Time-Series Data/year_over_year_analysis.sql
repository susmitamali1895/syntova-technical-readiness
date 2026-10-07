CREATE TABLE yearly_revenue_yoy (
    revenue_id INT PRIMARY KEY,
    revenue_date DATE,
    revenue INT
);

INSERT INTO yearly_revenue_yoy
(revenue_id, revenue_date, revenue)
VALUES
(1, '2023-01-01', 450000),
(2, '2024-01-01', 520000),
(3, '2025-01-01', 610000),
(4, '2026-01-01', 700000);

-- Compare current year with previous year

WITH yearly_data AS (
    SELECT
        DATE_TRUNC('year', revenue_date)::DATE AS year_start,
        SUM(revenue) AS total_revenue
    FROM yearly_revenue_yoy
    GROUP BY DATE_TRUNC('year', revenue_date)
)
SELECT
    year_start,
    total_revenue,
    LAG(total_revenue) OVER (
        ORDER BY year_start
    ) AS previous_year_revenue,
    total_revenue
        - LAG(total_revenue) OVER (
            ORDER BY year_start
        ) AS revenue_change
FROM yearly_data
ORDER BY year_start;