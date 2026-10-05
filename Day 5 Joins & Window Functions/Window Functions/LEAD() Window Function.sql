-- Create a new table

CREATE TABLE weekly_orders_day5 (
    week_id INT,
    week_name VARCHAR(50),
    order_count INT
);

-- Insert data

INSERT INTO weekly_orders_day5
(week_id, week_name, order_count)
VALUES
(1, 'Week 1', 120),
(2, 'Week 2', 150),
(3, 'Week 3', 135),
(4, 'Week 4', 180),
(5, 'Week 5', 165);

-- LEAD() Window Function

SELECT
    week_name,
    order_count,
    LEAD(order_count) OVER (ORDER BY week_id) AS next_week_orders
FROM weekly_orders_day5;