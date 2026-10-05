-- Create a new table

CREATE TABLE product_ratings_day5 (
    product_id INT,
    product_name VARCHAR(100),
    rating INT
);

-- Insert data

INSERT INTO product_ratings_day5
(product_id, product_name, rating)
VALUES
(1, 'Laptop', 5),
(2, 'Headphones', 4),
(3, 'Keyboard', 5),
(4, 'Mouse', 3),
(5, 'Monitor', 4);

-- DENSE_RANK() Window Function

SELECT
    product_id,
    product_name,
    rating,
    DENSE_RANK() OVER (ORDER BY rating DESC) AS rating_rank
FROM product_ratings_day5;