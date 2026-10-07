CREATE TABLE daily_orders_rolling (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount INT
);

INSERT INTO daily_orders_rolling
(order_id, order_date, amount)
VALUES
(1, '2026-10-01', 1500),
(2, '2026-10-02', 2200),
(3, '2026-10-03', 1800),
(4, '2026-10-04', 3000),
(5, '2026-10-05', 2500),
(6, '2026-10-06', 3200);

-- Calculate 3-day rolling sum

SELECT
    order_date,
    amount,
    SUM(amount) OVER (
        ORDER BY order_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS rolling_sum
FROM daily_orders_rolling
ORDER BY order_date;