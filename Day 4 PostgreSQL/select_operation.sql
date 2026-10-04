-- Create a new restaurants table

CREATE TABLE restaurants (
    restaurant_id INT,
    restaurant_name VARCHAR(100),
    city VARCHAR(50),
    rating DECIMAL(2,1)
);

-- Insert data into the table

INSERT INTO restaurants
(restaurant_id, restaurant_name, city, rating)
VALUES
(201, 'Spice Garden', 'Pune', 4.5),
(202, 'Urban Bites', 'Mumbai', 4.2),
(203, 'Green Leaf', 'Nashik', 4.7),
(204, 'Food Corner', 'Nagpur', 4.0);

-- Select all records

SELECT * FROM restaurants;