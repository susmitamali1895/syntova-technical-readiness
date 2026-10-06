-- Create a new table

CREATE TABLE customer_orders_index (
    order_id INT,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    order_amount INT
);

-- Insert data

INSERT INTO customer_orders_index
(order_id, customer_name, city, order_amount)
VALUES
(1, 'Aditi', 'Pune', 4500),
(2, 'Manav', 'Mumbai', 3200),
(3, 'Kavya', 'Nashik', 5800),
(4, 'Yash', 'Pune', 2100),
(5, 'Pallavi', 'Nagpur', 6700),
(6, 'Nitin', 'Mumbai', 3900);

-- Create Index

CREATE INDEX idx_customer_city
ON customer_orders_index(city);

-- Use the indexed column

SELECT *
FROM customer_orders_index
WHERE city = 'Pune';