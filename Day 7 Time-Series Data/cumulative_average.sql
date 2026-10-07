CREATE TABLE daily_orders_average (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount INT
);

INSERT INTO daily_orders_average
(order_id, order_date, amount)
VALUES
(1, '2026-10-01', 2000),
(2, '2026-10-02', 3500),
(3, '2026-10-03', 2500),
(4, '2026-10-04', 4500),
(5, '2026-10-05', 3000);

-- Calculate cumulative average

SELECT
    order_date,
    amount,
    ROUND(
        AVG(amount) OVER (
            ORDER BY order_date
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        ), 2
    ) AS cumulative_average
FROM daily_orders_average
ORDER BY order_date;