-- Extract Hour, Minute and Second

CREATE TABLE service_time_parts (
    service_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    service_time TIMESTAMP
);

-- Insert data

INSERT INTO service_time_parts
(service_id, customer_name, service_time)
VALUES
(1, 'Riya', '2026-10-01 09:25:15'),
(2, 'Aman', '2026-10-02 11:40:30'),
(3, 'Pallavi', '2026-10-03 14:15:45'),
(4, 'Nikhil', '2026-10-04 16:50:20'),
(5, 'Shreya', '2026-10-05 18:10:55');

-- Extract Hour, Minute and Second

SELECT
    service_id,
    customer_name,
    service_time,
    EXTRACT(HOUR FROM service_time) AS service_hour,
    EXTRACT(MINUTE FROM service_time) AS service_minute,
    EXTRACT(SECOND FROM service_time) AS service_second
FROM service_time_parts;