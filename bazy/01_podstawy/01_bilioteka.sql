mysql -u root
CREATE DATABASE 4e_2_library;
SHOW DATABASES;
USE 4e_2_library;

CREATE TABLE books(
    title VARCHAR(255),
    author VARCHAR(255)
)
SHOW TABLES;
DESC books;

INSERT INTO books
VALUES 
    ('Harry Potter', 'J. K. Rowling');
    
INSERT INTO books
VALUES
('Dziady', 'Adam Mickiewicz'),
('Lalka', 'Boleslaw Prus');

SELECT * FROM books;

DELETE FROM books 
WHERE title = 'Lalka';


ALTER TABLE books
ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY FIRST;

DELETE FROM books 
WHERE id = 2;