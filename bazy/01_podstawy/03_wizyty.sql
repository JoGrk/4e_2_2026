-- Utwórz bazę wizyty i użyj jej
CREATE DATABASE 4e_2_wizyty;
USE 4e_2_wizyty;
-- Dodaj do bazy tabelę (tabele), w których będziesz zapisywać informacje o wizytach: kto (imię i nazwisko, telefon), kiedy wizyta, czego dotyczy (leczenie, profilaktyka, kontrola)
CREATE TABLE wizyty(
    imie VARCHAR(255),
    nazwisko VARCHAR(255),
    data DATE,
    typ VARCHAR(255)
);
DESC wizyty;

-- Wpisz dane do tabel. Jeden klient był dwa razy (leczenie, profilaktyka), drugi raz (kontrola)
INSERT INTO wizyty
VALUES
    ('Radek', 'Kowalski', '2026-09-10', 'leczenie'),
    ('Radek', 'Kowalski', '2026-09-10', 'profilaktyka'), 
    ('Jan', 'Nowak', '2026-09-10', 'kontrola'); 

-- Usuń wizytę drugiego klienta (dane klienta powinny pozostać w bazie)
ALTER TABLE wizyty
ADD id INT PRIMARY KEY AUTO_INCREMENT;
SELECT * FROM wizyty;

DELETE FROM wizyty WHERE id = 3;
-- Dodaj wizytę pierwszego klienta, jeszcze raz profilaktyka - ale to trudne słowo i zrób w nim literówkę
INSERT INTO wizyty
VALUES
    ('Radek','Kowalski','2026-09-12','profilktyka',null);
-- Wyświetl wszystkie wizyty profilaktyczne
SELECT *
FROM wizyty
WHERE typ='profilaktyka' 
-- Popraw strukturę tabel bazy wizyty

CREATE TABLE klient(
        id INT PRIMARY KEY AUTO_INCREMENT,
        imie VARCHAR(255),
        nazwisko VARCHAR(255)
);
CREATE TABLE typy(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(255)
);

CREATE TABLE wizyty(
    id INT PRIMARY KEY AUTO_INCREMENT,
    kto INT,
    data DATE,
    typ INT
);