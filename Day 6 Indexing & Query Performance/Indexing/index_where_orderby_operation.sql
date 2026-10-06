-- Create a new table

CREATE TABLE order_details_index (
    order_id INT,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    order_date DATE,
    amount INT
);

-- Insert data

INSERT INTO order_details_index
(order_id, customer_name, city, order_date, amount)
VALUES
(1, 'Ira', 'Pune', '2026-10-01', 4500),
(2, 'Devika', 'Mumbai', '2026-10-02', 7200),
(3, 'Mihir', 'Pune', '2026-10-03', 3200),
(4, 'Tara', 'Nashik', '2026-10-04', 6800),
(5, 'Juhi', 'Pune', '2026-10-05', 5500),
(6, 'Omkar', 'Mumbai', '2026-10-06', 4100);

-- Create Composite Index
-- city is used for filtering and amount for sorting

CREATE INDEX idx_order_city_amount
ON order_details_index(city, amount);

-- SELECT query using WHERE + ORDER BY

SELECT *
FROM order_details_index
WHERE city = 'Pune'
ORDER BY amount DESC;