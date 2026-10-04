-- Create a new table with constraints

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    city VARCHAR(50) DEFAULT 'Pune'
);

-- Insert valid records

INSERT INTO students
(student_id, student_name, email, age)
VALUES
(1101, 'Ayesha', 'ayesha@gmail.com', 21),
(1102, 'Tanvi', 'tanvi@gmail.com', 22),
(1103, 'Rohit', 'rohit@gmail.com', 20);

-- Display records

SELECT * FROM students;