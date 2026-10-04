-- Create a new table

CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price INT
);

-- Insert data

INSERT INTO products
(product_id, product_name, category, price)
VALUES
(601, 'Laptop Bag', 'Accessories', 1800),
(602, 'Wireless Mouse', 'Electronics', 900),
(603, 'Keyboard', 'Electronics', 1500),
(604, 'Office Chair', 'Furniture', 7500),
(605, 'Desk Lamp', 'Furniture', 1200);

-- ORDER BY operation
-- Sort price from lowest to highest

SELECT *
FROM products
ORDER BY price ASC;