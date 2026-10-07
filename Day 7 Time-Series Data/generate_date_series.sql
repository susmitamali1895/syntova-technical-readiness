-- Generate Date Series

-- Generate daily dates

SELECT
    generated_date
FROM generate_series(
    '2026-10-01'::DATE,
    '2026-10-07'::DATE,
    INTERVAL '1 day'
) AS generated_date;