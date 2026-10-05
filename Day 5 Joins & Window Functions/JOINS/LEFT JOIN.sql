-- Create first table

CREATE TABLE departments_day5 (
    department_id INT,
    department_name VARCHAR(100)
);

-- Insert data

INSERT INTO departments_day5
(department_id, department_name)
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');


-- Create second table

CREATE TABLE staff_day5 (
    staff_id INT,
    staff_name VARCHAR(100),
    department_id INT
);

-- Insert data

INSERT INTO staff_day5
(staff_id, staff_name, department_id)
VALUES
(101, 'Neeta', 1),
(102, 'Shruti', 2),
(103, 'Gaurav', 1),
(104, 'Swajit', 3);


-- LEFT JOIN

SELECT
    departments_day5.department_id,
    departments_day5.department_name,
    staff_day5.staff_name
FROM departments_day5
LEFT JOIN staff_day5
ON departments_day5.department_id = staff_day5.department_id;