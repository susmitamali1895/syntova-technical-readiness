--  Filter Data Between Dates

CREATE TABLE shipment_date_range (
    shipment_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    shipment_date DATE,
    amount INT
);

-- Insert data

INSERT INTO shipment_date_range
(shipment_id, customer_name, shipment_date, amount)
VALUES
(1, 'Komal', '2026-09-25', 1800),
(2, 'Rakesh', '2026-09-28', 3200),
(3, 'Bhavana', '2026-10-01', 4500),
(4, 'Deepak', '2026-10-04', 2800),
(5, 'Anita', '2026-10-06', 5200),
(6, 'Vishal', '2026-10-09', 3900);

-- Filter data between two dates

SELECT *
FROM shipment_date_range
WHERE shipment_date BETWEEN '2026-09-28' AND '2026-10-06'
ORDER BY shipment_date;