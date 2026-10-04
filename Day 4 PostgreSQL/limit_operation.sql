-- Create a new table

CREATE TABLE books (
    book_id INT,
    book_name VARCHAR(100),
    author VARCHAR(100),
    price INT
);

-- Insert data

INSERT INTO books
(book_id, book_name, author, price)
VALUES
(701, 'The Alchemist', 'Paulo Coelho', 450),
(702, 'Atomic Habits', 'James Clear', 550),
(703, 'Ikigai', 'Hector Garcia', 400),
(704, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 600),
(705, 'Deep Work', 'Cal Newport', 500);

-- LIMIT operation
-- Display only first 3 records

SELECT *
FROM books
LIMIT 3;