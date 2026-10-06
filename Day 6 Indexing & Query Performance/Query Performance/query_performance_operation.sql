-- Create a new table

CREATE TABLE website_visits_performance (
    visit_id INT,
    visitor_name VARCHAR(100),
    city VARCHAR(50),
    visit_date DATE,
    page_views INT
);

-- Insert data

INSERT INTO website_visits_performance
(visit_id, visitor_name, city, visit_date, page_views)
VALUES
(1, 'Ishita', 'Pune', '2026-10-01', 12),
(2, 'Varun', 'Mumbai', '2026-10-01', 8),
(3, 'Radhika', 'Pune', '2026-10-02', 15),
(4, 'Samar', 'Nashik', '2026-10-02', 6),
(5, 'Aditi', 'Pune', '2026-10-03', 20),
(6, 'Manav', 'Mumbai', '2026-10-03', 10);

-- Check performance before index

EXPLAIN ANALYZE
SELECT *
FROM website_visits_performance
WHERE city = 'Pune';

-- Create index

CREATE INDEX idx_website_city
ON website_visits_performance(city);

-- Check performance after index

EXPLAIN ANALYZE
SELECT *
FROM website_visits_performance
WHERE city = 'Pune';