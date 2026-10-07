CREATE TABLE daily_revenue_running (
    revenue_id INT PRIMARY KEY,
    revenue_date DATE,
    amount INT
);

INSERT INTO daily_revenue_running
(revenue_id, revenue_date, amount)
VALUES
(1, '2026-10-01', 2500),
(2, '2026-10-02', 3200),
(3, '2026-10-03', 1800),
(4, '2026-10-04', 4100),
(5, '2026-10-05', 2900);

-- Calculate running total

SELECT
    revenue_date,
    amount,
    SUM(amount) OVER (
        ORDER BY revenue_date
    ) AS running_total
FROM daily_revenue_running
ORDER BY revenue_date;