-- Create department table

CREATE TABLE division_performance (
    division_id INT PRIMARY KEY,
    division_name VARCHAR(50)
);

-- Create employee table

CREATE TABLE worker_performance (
    worker_id INT PRIMARY KEY,
    worker_name VARCHAR(100),
    division_id INT,
    salary INT
);

-- Insert divisions

INSERT INTO division_performance
(division_id, division_name)
VALUES
(1, 'Finance'),
(2, 'Marketing'),
(3, 'Technology');

-- Insert workers

INSERT INTO worker_performance
(worker_id, worker_name, division_id, salary)
VALUES
(101, 'Leena', 1, 45000),
(102, 'Harshita', 2, 50000),
(103, 'Pranav', 3, 65000),
(104, 'Eshan', 3, 70000),
(105, 'Ritu', 1, 48000);

-- JOIN Performance

EXPLAIN ANALYZE
SELECT
    w.worker_name,
    d.division_name,
    w.salary
FROM worker_performance w
INNER JOIN division_performance d
ON w.division_id = d.division_id;