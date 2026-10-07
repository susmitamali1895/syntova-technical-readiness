-- Add and Subtract Date & Time

CREATE TABLE event_schedule (
    event_id INT PRIMARY KEY,
    event_name VARCHAR(100),
    event_date DATE,
    event_time TIMESTAMP
);

-- Insert data

INSERT INTO event_schedule
(event_id, event_name, event_date, event_time)
VALUES
(1, 'Training Session', '2026-10-10', '2026-10-10 09:00:00'),
(2, 'Project Meeting', '2026-10-12', '2026-10-12 14:30:00'),
(3, 'Client Review', '2026-10-15', '2026-10-15 11:15:00');

-- Add 7 days to date

SELECT
    event_name,
    event_date,
    event_date + INTERVAL '7 days' AS date_after_7_days
FROM event_schedule;

-- Subtract 2 days from date

SELECT
    event_name,
    event_date,
    event_date - INTERVAL '2 days' AS date_before_2_days
FROM event_schedule;

-- Add 2 hours to timestamp

SELECT
    event_name,
    event_time,
    event_time + INTERVAL '2 hours' AS time_after_2_hours
FROM event_schedule;

-- Subtract 30 minutes from timestamp

SELECT
    event_name,
    event_time,
    event_time - INTERVAL '30 minutes' AS time_before_30_minutes
FROM event_schedule;