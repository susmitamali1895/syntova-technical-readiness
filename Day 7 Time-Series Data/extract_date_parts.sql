-- Extract Year, Month and Day

CREATE TABLE order_date_parts (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    order_date DATE
);

-- Insert data

INSERT INTO order_date_parts
(order_id, customer_name, order_date)
VALUES
(1, 'Neha', '2026-01-15'),
(2, 'Arjun', '2026-04-22'),
(3, 'Priya', '2026-07-10'),
(4, 'Manish', '2026-09-28'),
(5, 'Kiran', '2026-10-05');

-- Extract Year, Month and Day

SELECT
    order_id,
    customer_name,
    order_date,
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    EXTRACT(DAY FROM order_date) AS order_day
FROM order_date_parts;