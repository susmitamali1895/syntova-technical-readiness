-- Find Minimum and Maximum Date

CREATE TABLE booking_date_range (
    booking_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    booking_date DATE
);

-- Insert data

INSERT INTO booking_date_range
(booking_id, customer_name, booking_date)
VALUES
(1, 'Sonal', '2026-08-15'),
(2, 'Raj', '2026-09-10'),
(3, 'Priti', '2026-08-28'),
(4, 'Sameer', '2026-10-02'),
(5, 'Nisha', '2026-09-25');

-- Find earliest and latest date

SELECT
    MIN(booking_date) AS earliest_date,
    MAX(booking_date) AS latest_date
FROM booking_date_range;