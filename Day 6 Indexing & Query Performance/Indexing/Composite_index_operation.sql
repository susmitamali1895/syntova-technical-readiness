-- Create a new table

CREATE TABLE product_sales_index (
    sale_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    city VARCHAR(50),
    amount INT
);

-- Insert data

INSERT INTO product_sales_index
(sale_id, product_name, category, city, amount)
VALUES
(201, 'Laptop', 'Electronics', 'Pune', 55000),
(202, 'Chair', 'Furniture', 'Mumbai', 7500),
(203, 'Mouse', 'Electronics', 'Pune', 1200),
(204, 'Table', 'Furniture', 'Nashik', 6000),
(205, 'Keyboard', 'Electronics', 'Mumbai', 2500),
(206, 'Desk Lamp', 'Furniture', 'Pune', 1800);

-- Create Composite Index

CREATE INDEX idx_category_city
ON product_sales_index(category, city);

-- Search using both columns

SELECT *
FROM product_sales_index
WHERE category = 'Electronics'
AND city = 'Pune';