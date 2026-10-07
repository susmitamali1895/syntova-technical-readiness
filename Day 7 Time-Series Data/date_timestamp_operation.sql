--  DATE and TIMESTAMP

-- Create table

CREATE TABLE delivery_time_series (
    delivery_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    delivery_date DATE,
    delivery_time TIMESTAMP,
    amount INT
);

-- Insert data

INSERT INTO delivery_time_series
(delivery_id, customer_name, delivery_date, delivery_time, amount)
VALUES
(1, 'Megha', '2026-10-01', '2026-10-01 09:30:00', 2500),
(2, 'Varun', '2026-10-02', '2026-10-02 11:15:00', 4200),
(3, 'Snehal', '2026-10-03', '2026-10-03 14:20:00', 3100),
(4, 'Akshay', '2026-10-04', '2026-10-04 16:45:00', 5600),
(5, 'Isha', '2026-10-05', '2026-10-05 10:10:00', 3800);

-- Display data

SELECT *
FROM delivery_time_series
ORDER BY delivery_date;