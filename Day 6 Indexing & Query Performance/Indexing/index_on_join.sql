-- Create first table

CREATE TABLE categories_join_index (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

-- Insert data

INSERT INTO categories_join_index
(category_id, category_name)
VALUES
(1, 'Electronics'),
(2, 'Furniture'),
(3, 'Accessories');


-- Create second table

CREATE TABLE products_join_index (
    product_id INT,
    product_name VARCHAR(100),
    category_id INT
);

-- Insert data

INSERT INTO products_join_index
(product_id, product_name, category_id)
VALUES
(101, 'Laptop', 1),
(102, 'Chair', 2),
(103, 'Keyboard', 1),
(104, 'Mouse', 3);


-- Create index on JOIN column

CREATE INDEX idx_products_category
ON products_join_index(category_id);


-- JOIN query

SELECT
    products_join_index.product_name,
    categories_join_index.category_name
FROM products_join_index
JOIN categories_join_index
ON products_join_index.category_id =
   categories_join_index.category_id;