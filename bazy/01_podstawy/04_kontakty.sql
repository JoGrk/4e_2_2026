-- 1. Tworzysz bazę danych osób, które chcą nawiązać ze sobą kontakt. Dane: imię, nazwisko, zainteresowania. Utwórz bazę i tabele.

CREATE DATABASE 4e_2_kontakty;
USE 4e_2_kontakty;

CREATE TABLE kontakty(
    id INT PRIMARY KEY AUTO_INCREMENT,
    imie VARCHAR(255),
    nazwisko VARCHAR(255),
    zainteresowania VARCHAR(255)
);


-- 2. Dodaj dane trzech osób: pierwsza ma dwa zainteresowania (bieganie, granie), druga jedno (serfowanie), trzecia cztery (granie, zwiedzanie, bieganie, łowienie ryb)
INSERT INTO kontakty 
    (imie, nazwisko, zainteresowania)
VALUES
    ('Leszek', 'Wojtczak', 'Bieganie, Granie'),
    ('Brajan', 'Misiak', 'Serfowanie'),
    ('Roman', 'Kawka', 'Granie, Zwiedzanie, Bieganie, Lowienie ryb');

-- 3. Wyświetl wszystkie osoby które interesują się serfowaniem
SELECT * 
FROM kontakty 
WHERE zainteresowania = 'Serfowanie';

-- 4. Wyświetl wszystkie osoby, które interesują się graniem
SELECT * 
FROM kontakty 
WHERE zainteresowania = 'Granie';

-- 5. Jeśli trzeba - popraw strukturę tabel w bazie tak, aby powyższe zapytania były łatwe do napisania

CREATE TABLE zainteresowanie(
    id INT PRIMARY KEY AUTO_INCREMENT,
    zainteresowanie VARCHAR(255)
);

CREATE TABLE osoba(
    id INT PRIMARY KEY AUTO_INCREMENT,
    imie VARCHAR(255),
    nazwisko VARCHAR(255),
);

CREATE TABLE laczaca(
    osoba_id INT,
    zainteresowanie_id INT,
    PRIMARY KEY(osoba_id, zainteresowanie_id),
    FOREIGN KEY(osoba_id) REFERENCES osoba(id),
    FOREIGN KEY(zainteresowanie_id) REFERENCES zainteresowanie(id)
);