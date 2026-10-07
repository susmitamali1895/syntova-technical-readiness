--  Filter Data by Date

CREATE TABLE payment_date_filter (
    payment_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    payment_date DATE,
    amount INT
);

-- Insert data

INSERT INTO payment_date_filter
(payment_id, customer_name, payment_date, amount)
VALUES
(1, 'Aarohi', '2026-09-28', 2500),
(2, 'Vivek', '2026-10-01', 4200),
(3, 'Divya', '2026-10-03', 3500),
(4, 'Suresh', '2026-10-05', 5100),
(5, 'Mansi', '2026-10-07', 2900);

-- Filter records for a specific date

SELECT *
FROM payment_date_filter
WHERE payment_date = '2026-10-05';