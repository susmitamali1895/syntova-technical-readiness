-- Create a new table

CREATE TABLE exam_scores_day5 (
    student_id INT,
    student_name VARCHAR(100),
    subject VARCHAR(50),
    marks INT
);

-- Insert data

INSERT INTO exam_scores_day5
(student_id, student_name, subject, marks)
VALUES
(1, 'Aarav', 'Maths', 85),
(2, 'Meera', 'Maths', 92),
(3, 'Kabir', 'Maths', 78),
(4, 'Anaya', 'Maths', 95),
(5, 'Riya', 'Maths', 88);

-- ROW_NUMBER() Window Function

SELECT
    student_id,
    student_name,
    marks,
    ROW_NUMBER() OVER (ORDER BY marks DESC) AS row_number
FROM exam_scores_day5;