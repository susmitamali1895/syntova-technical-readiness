CREATE TABLE weekly_revenue_wow (
    revenue_id INT PRIMARY KEY,
    revenue_date DATE,
    revenue INT
);

INSERT INTO weekly_revenue_wow
(revenue_id, revenue_date, revenue)
VALUES
(1, '2026-09-01', 18000),
(2, '2026-09-08', 22000),
(3, '2026-09-15', 19500),
(4, '2026-09-22', 25000),
(5, '2026-09-29', 28000),
(6, '2026-10-06', 31000);

-- Compare current week with previous week

WITH weekly_data AS (
    SELECT
        DATE_TRUNC('week', revenue_date)::DATE AS week_start,
        SUM(revenue) AS total_revenue
    FROM weekly_revenue_wow
    GROUP BY DATE_TRUNC('week', revenue_date)
)
SELECT
    week_start,
    total_revenue,
    LAG(total_revenue) OVER (
        ORDER BY week_start
    ) AS previous_week_revenue,
    total_revenue
        - LAG(total_revenue) OVER (
            ORDER BY week_start
        ) AS revenue_change
FROM weekly_data
ORDER BY week_start;