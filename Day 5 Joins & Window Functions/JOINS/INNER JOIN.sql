-- Create first table

CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

-- Insert data

INSERT INTO customers
(customer_id, customer_name, city)
VALUES
(1, 'Aarav', 'Pune'),
(2, 'Meera', 'Mumbai'),
(3, 'Kabir', 'Nashik'),
(4, 'Anaya', 'Nagpur');


-- Create second table

CREATE TABLE orders_day5 (
    order_id INT,
    customer_id INT,
    product VARCHAR(100),
    amount INT
);

-- Insert data

INSERT INTO orders_day5
(order_id, customer_id, product, amount)
VALUES
(101, 1, 'Laptop', 55000),
(102, 2, 'Headphones', 3000),
(103, 1, 'Keyboard', 1500),
(104, 3, 'Monitor', 12000),
(105, 5, 'Mouse', 800);


-- INNER JOIN

SELECT
    customers.customer_id,
    customers.customer_name,
    customers.city,
    orders_day5.product,
    orders_day5.amount
FROM customers
INNER JOIN orders_day5
ON customers.customer_id = orders_day5.customer_id;