-- Create a new table

CREATE TABLE employee_contact_index (
    employee_id INT,
    employee_name VARCHAR(100),
    email VARCHAR(150),
    department VARCHAR(50)
);

-- Insert data

INSERT INTO employee_contact_index
(employee_id, employee_name, email, department)
VALUES
(101, 'Ishita', 'ishita@gmail.com', 'IT'),
(102, 'Varun', 'varun@gmail.com', 'HR'),
(103, 'Radhika', 'radhika@gmail.com', 'Finance'),
(104, 'Samar', 'samar@gmail.com', 'IT');

-- Create UNIQUE INDEX

CREATE UNIQUE INDEX idx_employee_email
ON employee_contact_index(email);

-- Search using email

SELECT *
FROM employee_contact_index
WHERE email = 'radhika@gmail.com';