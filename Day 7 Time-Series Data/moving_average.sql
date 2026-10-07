CREATE TABLE daily_price_moving (
    price_id INT PRIMARY KEY,
    price_date DATE,
    price INT
);

INSERT INTO daily_price_moving
(price_id, price_date, price)
VALUES
(1, '2026-10-01', 100),
(2, '2026-10-02', 120),
(3, '2026-10-03', 110),
(4, '2026-10-04', 130),
(5, '2026-10-05', 125),
(6, '2026-10-06', 140);

-- Calculate 3-day moving average

SELECT
    price_date,
    price,
    ROUND(
        AVG(price) OVER (
            ORDER BY price_date
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ), 2
    ) AS moving_average
FROM daily_price_moving
ORDER BY price_date;