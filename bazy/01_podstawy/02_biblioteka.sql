CREATE TABLE genres(
    id INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(255)    
);
SHOW TABLES;
DESC genres
INSERT INTO genres
    (type)
VALUES
    ('sensacja'),
    ('lektura'),
    ('fantasy');

SELECT * FROM genres

ALTER TABLE books
    ADD genre INT;
INSERT INTO books
    (title, author, genre)
    VALUES
    ('Treny', 'Jan Kochanowski', 7);

DELETE FROM books
WHERE id = 4;

ALTER TABLE books
    ADD FOREIGN KEY(genre) REFERENCES genres(id);

INSERT INTO books
    (title, author, genre)
    VALUES
    ('Treny', 'Jan Kochanowski', 2);

DELETE FROM genres
WHERE type = 'lektura';    