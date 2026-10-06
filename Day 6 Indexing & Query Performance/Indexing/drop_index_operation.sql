-- Create a new table

CREATE TABLE inventory_drop_index (
    item_id INT,
    item_name VARCHAR(100),
    category VARCHAR(50),
    price INT
);

-- Insert data

INSERT INTO inventory_drop_index
(item_id, item_name, category, price)
VALUES
(1, 'Keyboard', 'Electronics', 1500),
(2, 'Office Chair', 'Furniture', 7500),
(3, 'USB Cable', 'Accessories', 500),
(4, 'Desk Lamp', 'Furniture', 1800);

-- Create an index

CREATE INDEX idx_inventory_category
ON inventory_drop_index(category);

-- Check data

SELECT *
FROM inventory_drop_index
WHERE category = 'Furniture';

-- Drop the index

DROP INDEX idx_inventory_category;