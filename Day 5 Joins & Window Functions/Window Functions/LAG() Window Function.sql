-- Create a new table

CREATE TABLE monthly_revenue_day5 (
    month_id INT,
    month_name VARCHAR(50),
    revenue INT
);

-- Insert data

INSERT INTO monthly_revenue_day5
(month_id, month_name, revenue)
VALUES
(1, 'January', 45000),
(2, 'February', 52000),
(3, 'March', 48000),
(4, 'April', 60000),
(5, 'May', 57000);

-- LAG() Window Function

SELECT
    month_name,
    revenue,
    LAG(revenue) OVER (ORDER BY month_id) AS previous_month_revenue
FROM monthly_revenue_day5;