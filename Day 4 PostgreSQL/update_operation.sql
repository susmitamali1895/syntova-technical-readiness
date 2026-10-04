-- Create a new table

CREATE TABLE courses (
    course_id INT,
    course_name VARCHAR(100),
    duration_months INT,
    fees INT
);

-- Insert data

INSERT INTO courses
(course_id, course_name, duration_months, fees)
VALUES
(401, 'Python Programming', 4, 15000),
(402, 'Data Analytics', 3, 12000),
(403, 'Web Development', 5, 18000),
(404, 'Cloud Computing', 4, 20000);

-- UPDATE operation

UPDATE courses
SET fees = 14000
WHERE course_id = 402;

-- Display updated records

SELECT * FROM courses;