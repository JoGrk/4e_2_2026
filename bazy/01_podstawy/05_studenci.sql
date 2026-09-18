-- 1. Utwórz bazę danych Studenci i przejdź do niej.
CREATE DATABASE studenci;
use studenci;
 
-- 2. Chcemy przechowywać informacje o studentach, w tym: imie, nazwisko, telefon. Dodatkowo informację o ocenach, w tym nazwę przedmiotu, ocenę, datę wystawienia.
-- Przygotuj odpowiednie tabele
-- dobierz właściwe typy danych, identyfikator przedmiotu jest tekstem o stałej długości 4 znaków.
-- każda tabela powinna posiać klucze: podstawowy, a jeśli trzeba to też i obcy. 
CREATE TABLE `studenci` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    imie VARCHAR(255),
    nazwisko VARCHAR(255),
    telefon VARCHAR(255)
);

CREATE TABLE przedmioty (
    kod CHAR(4) PRIMARY KEY,
    nazwa VARCHAR(255)
);

CREATE TABLE oceny(
    id INT PRIMARY KEY AUTO_INCREMENT,
    ocena INT,
    student INT,
    przedmiot CHAR(4),
    FOREIGN KEY(student) REFERENCES `studenci`(id),
    FOREIGN KEY(przedmiot) REFERENCES przedmioty(kod)
);


-- 3. wpisz dane:
-- co najmniej dwóch studentów oraz 3 oceny  z dwóch przedmiotów
INSERT INTO studenci
    (imie, nazwisko, telefon)
VALUES
    ('Jakub', 'Pawlicki', '876 345 123'),
    ('Tobiasz', 'Górny', '856 348 193');

-- 4. Sprawdź działanie: 

-- dodaj nową ocenę. jakie dane musisz wpisywać?

INSERT INTO przedmioty
    (kod, nazwa)
VALUES
    ('lsk', 'sieci'),
    ('aso', 'ubuntu');


INSERT INTO oceny
    (ocena, student, przedmiot)
VALUES
    (3, 1, 'LSK'),
    (5, 2, 'ASO');
-- zmień telefon studenta
UPDATE studenci
SET telefon = '123 456 789'
WHERE ID = 2;
-- czy możesz usunąć ocenę?
DELETE from oceny
WHERE id = 2;

SELECT * FROM przedmioty;

-- czy możesz usunąć przedmiot (czy będzie wiadomo, z jakiego przedmiotu jest ocena?)
DELETE FROM przedmioty
WHERE kod = 'lsk';

-- czy możesz usunąć studenta (czy będzie wiadomo, kto ma daną ocenę?)

DELETE from studenci
WHERE id = 2;
-- wyświetl dane ucznia oraz wszystkie jego oceny
SELECT * FROM studenci;
SELECT * FROM oceny;
SELECT imie, nazwisko, telefon, ocena, przedmiot
FROM studenci 
    INNER JOIN oceny ON oceny.student=studenci.id;
-- wyświetl przedmioty i oceny
SELECT * from przedmioty;
SELECT nazwa, ocena
from przedmioty
    INNER JOIN oceny on oceny.przedmiot = przedmioty.kod;
-- wyświetl dane ucznia, przedmioty i oceny

SELECT imie, nazwisko, nazwa, ocena
FROM studenci
    INNER JOIN oceny ON oceny.student=studenci.id
    INNER JOIN przedmioty ON oceny.przedmiot=przedmioty.kod;

