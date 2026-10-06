-- Create a new table

CREATE TABLE product_status_index (
    product_id INT,
    product_name VARCHAR(100),
    status VARCHAR(20),
    category VARCHAR(50),
    price INT
);

-- Insert data

INSERT INTO product_status_index
(product_id, product_name, status, category, price)
VALUES
(1, 'Laptop', 'Active', 'Electronics', 55000),
(2, 'Mouse', 'Active', 'Electronics', 900),
(3, 'Chair', 'Active', 'Furniture', 7500),
(4, 'Table', 'Inactive', 'Furniture', 6000),
(5, 'Keyboard', 'Active', 'Electronics', 1500);

-- Example query

SELECT *
FROM product_status_index
WHERE status = 'Active';