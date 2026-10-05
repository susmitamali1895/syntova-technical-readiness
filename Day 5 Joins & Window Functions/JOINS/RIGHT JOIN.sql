-- Create first table

CREATE TABLE stores_day5 (
    store_id INT,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

-- Insert data

INSERT INTO stores_day5
(store_id, store_name, city)
VALUES
(1, 'City Mart', 'Pune'),
(2, 'Fresh Mart', 'Mumbai'),
(3, 'Daily Needs', 'Nashik');


-- Create second table

CREATE TABLE managers_day5 (
    manager_id INT,
    manager_name VARCHAR(100),
    store_id INT
);

-- Insert data

INSERT INTO managers_day5
(manager_id, manager_name, store_id)
VALUES
(201, 'Anita', 1),
(202, 'Vijay', 2),
(203, 'Suresh', 4),
(204, 'Kavita', 3);


-- RIGHT JOIN

SELECT
    stores_day5.store_id,
    stores_day5.store_name,
    managers_day5.manager_name
FROM stores_day5
RIGHT JOIN managers_day5
ON stores_day5.store_id = managers_day5.store_id;