-- Create a new table

CREATE TABLE payments (
    payment_id INT,
    customer_name VARCHAR(100),
    payment_type VARCHAR(50),
    amount INT
);

-- Insert data

INSERT INTO payments
(payment_id, customer_name, payment_type, amount)
VALUES
(1001, 'Kiran', 'UPI', 2000),
(1002, 'Neha', 'Cash', 1500),
(1003, 'Kiran', 'UPI', 3000),
(1004, 'Ramesh', 'Card', 5000),
(1005, 'Neha', 'Cash', 2500),
(1006, 'Ramesh', 'Card', 4000);

-- HAVING operation

SELECT
    payment_type,
    COUNT(*) AS total_payments,
    SUM(amount) AS total_amount
FROM payments
GROUP BY payment_type
HAVING SUM(amount) > 4000;