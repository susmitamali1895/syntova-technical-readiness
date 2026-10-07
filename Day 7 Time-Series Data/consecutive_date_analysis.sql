CREATE TABLE user_activity_dates (
    activity_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    activity_date DATE
);

INSERT INTO user_activity_dates
(activity_id, user_name, activity_date)
VALUES
(1, 'Tanvi', '2026-10-01'),
(2, 'Tanvi', '2026-10-02'),
(3, 'Tanvi', '2026-10-03'),
(4, 'Tanvi', '2026-10-05'),
(5, 'Rohan', '2026-10-01'),
(6, 'Rohan', '2026-10-03'),
(7, 'Rohan', '2026-10-04'),
(8, 'Rohan', '2026-10-05');

-- Find consecutive activity dates

WITH activity_data AS (
    SELECT
        user_name,
        activity_date,
        LAG(activity_date) OVER (
            PARTITION BY user_name
            ORDER BY activity_date
        ) AS previous_date
    FROM user_activity_dates
)
SELECT
    user_name,
    activity_date,
    previous_date,
    CASE
        WHEN activity_date = previous_date + INTERVAL '1 day'
        THEN 'Consecutive'
        ELSE 'Not Consecutive'
    END AS date_status
FROM activity_data
ORDER BY user_name, activity_date;