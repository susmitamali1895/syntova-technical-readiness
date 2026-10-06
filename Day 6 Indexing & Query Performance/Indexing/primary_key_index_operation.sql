-- Create a new table

CREATE TABLE products_primary_index (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price INT
);

-- Insert data

INSERT INTO products_primary_index
(product_id, product_name, price)
VALUES
(1, 'Laptop', 55000),
(2, 'Keyboard', 1500),
(3, 'Monitor', 12000),
(4, 'Mouse', 800);

-- Check the records

SELECT *
FROM products_primary_index
WHERE product_id = 3;