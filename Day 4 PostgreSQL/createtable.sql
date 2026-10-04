-- Create a new flights table

CREATE TABLE flights (
    flight_id INT,
    airline VARCHAR(50),
    destination VARCHAR(50),
    ticket_price DECIMAL(10,2)
);

-- Insert flight records

INSERT INTO flights
(flight_id, airline, destination, ticket_price)
VALUES
(101, 'IndiGo', 'Delhi', 5500.00),
(102, 'Air India', 'Mumbai', 3200.00),
(103, 'Vistara', 'Bangalore', 4800.00),
(104, 'Akasa Air', 'Goa', 2800.00),
(105, 'IndiGo', 'Chennai', 4200.00);