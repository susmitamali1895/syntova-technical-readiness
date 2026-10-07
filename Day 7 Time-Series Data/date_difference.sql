-- Date Difference

CREATE TABLE project_dates (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE
);

-- Insert data

INSERT INTO project_dates
(project_id, project_name, start_date, end_date)
VALUES
(1, 'Website Development', '2026-09-01', '2026-09-10'),
(2, 'Data Analysis', '2026-09-05', '2026-09-18'),
(3, 'Report Automation', '2026-09-12', '2026-09-25'),
(4, 'Dashboard Development', '2026-09-20', '2026-10-05');

-- Find difference between dates

SELECT
    project_id,
    project_name,
    start_date,
    end_date,
    (end_date - start_date) AS total_days
FROM project_dates;