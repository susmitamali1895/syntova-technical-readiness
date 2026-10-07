-- Create table

CREATE TABLE daily_activity_dates (
    activity_id INT PRIMARY KEY,
    activity_date DATE,
    activity_count INT
);

-- Insert data with some missing dates

INSERT INTO daily_activity_dates
(activity_id, activity_date, activity_count)
VALUES
(1, '2026-10-01', 25),
(2, '2026-10-02', 30),
(3, '2026-10-04', 18),
(4, '2026-10-06', 35),
(5, '2026-10-07', 28);

-- Generate all dates in the required range
-- and find dates that are not present in the table

SELECT
    generated_date::DATE AS missing_date
FROM generate_series(
    '2026-10-01'::DATE,
    '2026-10-07'::DATE,
    INTERVAL '1 day'
) AS generated_date
WHERE generated_date::DATE NOT IN (
    SELECT activity_date
    FROM daily_activity_dates
)
ORDER BY missing_date;