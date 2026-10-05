-- Create first table

CREATE TABLE courses_day5 (
    course_id INT,
    course_name VARCHAR(100)
);

-- Insert data

INSERT INTO courses_day5
(course_id, course_name)
VALUES
(1, 'Python'),
(2, 'SQL'),
(3, 'Power BI'),
(4, 'AWS');


-- Create second table

CREATE TABLE trainers_day5 (
    trainer_id INT,
    trainer_name VARCHAR(100),
    course_id INT
);

-- Insert data

INSERT INTO trainers_day5
(trainer_id, trainer_name, course_id)
VALUES
(101, 'Anil', 1),
(102, 'Sneha', 2),
(103, 'Vikas', 5);


-- FULL OUTER JOIN

SELECT
    courses_day5.course_id,
    courses_day5.course_name,
    trainers_day5.trainer_name
FROM courses_day5
FULL OUTER JOIN trainers_day5
ON courses_day5.course_id = trainers_day5.course_id;