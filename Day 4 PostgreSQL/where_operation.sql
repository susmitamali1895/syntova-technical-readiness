-- Create a new table

CREATE TABLE hotels (
    hotel_id INT,
    hotel_name VARCHAR(100),
    city VARCHAR(50),
    price_per_night INT
);

-- Insert data

INSERT INTO hotels
(hotel_id, hotel_name, city, price_per_night)
VALUES
(301, 'Sunrise Hotel', 'Pune', 2500),
(302, 'Royal Stay', 'Mumbai', 4000),
(303, 'Green Valley', 'Nashik', 1800),
(304, 'City View', 'Nagpur', 3000),
(305, 'Lake Resort', 'Pune', 4500);

-- WHERE operation

SELECT *
FROM hotels
WHERE city = 'Pune';