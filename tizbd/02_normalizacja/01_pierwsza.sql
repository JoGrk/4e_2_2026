-- 1. Utwórz bazę firma
CREATE DATABASE 4e_2_firma;
USE 4e_2_firma;
-- 2. Utwórz tabelę Pracownicy
-- kod pracownika (tekst, 3 znaki)
-- imię nazwisko
-- język
-- adres



CREATE TABLE pracownicy(
    kod_pracownika VARCHAR(3),
    imie_nazwisko VARCHAR(255),
    jezyk VARCHAR(255),
    adres VARCHAR(255)
);
-- 3. wpisz dane:
INSERT INTO pracownicy
(kod_pracownika, imie_nazwisko, jezyk, adres)
VALUES
('P01', 'Jan Kowalski', 'PHP', 'os. Wl. lokietka 3/4 Naklo nad Notecia'),
('P02', 'Antoni Malinowski', 'HTML CSS PHP' , 'Chrzastowo 1'),
('P03', 'Jan Malinowski', 'Java  HTML', 'ul. Ogrodowa 2, Nowa Wies Wielka'),
('P04', 'Andrzej Ziemianski', 'JavaScript CSS HTML','ul. Sowia 5, Nowa Wies');
-- 4. Wykonaj zapytania
-- A. Wypisz pracowników, którzy znają język PHP
SELECT *
FROM pracownicy
WHERE jezyk LIKE '%PHP%';
-- B. Wypisz pracowników, którzy znają język Java
SELECT *
FROM pracownicy
WHERE jezyk LIKE '%Java%';

-- C. Wypisz pracowników mieszkających w Nakle nad Notecią

SELECT *
FROM pracownicy
WHERE adres LIKE '%Naklo nad Notecia%';

-- D. Wypisz pracowników mieszkających w Nowej Wsi

SELECT *
FROM pracownicy
WHERE adres LIKE '%Nowa Wies%';

-- E. Wypisz wszystkie nazwy miejscowości pracowników
-- C. Wypisz imiona i nazwiska pracowników posortowane według nazwisk (ORDER BY)

DROP TABLE pracownicy;

CREATE TABLE pracownicy(
    kod_pracownika VARCHAR(3),
    imie VARCHAR(255),
    nazwisko VARCHAR(255),
    jezyk VARCHAR(255),
    adres VARCHAR(255),
    miejscowosc VARCHAR(255)
);

INSERT INTO pracownicy
(kod_pracownika, imie, nazwisko, jezyk, adres, miejscowosc)
VALUES
('P01', 'Jan', 'Kowalski', 'PHP', 'os. Wl. lokietka 3/4', 'Naklo nad Notecia'),
('P02', 'Antoni', 'Malinowski', 'HTML' , '1','Chrzastowo'),
('P02', 'Antoni', 'Malinowski', 'CSS' , '1','Chrzastowo'),
('P02', 'Antoni', 'Malinowski', 'PHP' , '1','Chrzastowo'),
('P03', 'Jan', 'Malinowski', 'Java', 'ul. Ogrodowa 2', 'Nowa Wies Wielka'),
('P03', 'Jan', 'Malinowski', 'HTML', 'ul. Ogrodowa 2', 'Nowa Wies Wielka'),
('P04', 'Andrzej','Ziemianski', 'JavaScript','ul. Sowia 5', 'Nowa Wies'),
('P04', 'Andrzej','Ziemianski', 'CSS','ul. Sowia 5', 'Nowa Wies'),
('P04', 'Andrzej','Ziemianski', 'HTML','ul. Sowia 5', 'Nowa Wies');

-- B. Wypisz pracowników, którzy znają język Java
SELECT *
FROM pracownicy
WHERE jezyk = 'Java';
-- C. Wypisz pracowników mieszkających w Nakle nad Notecią
-- D. Wypisz pracowników mieszkających w Nowej Wsi
-- E. Wypisz wszystkie nazwy miejscowości pracowników
SELECT DISTINCT miejscowosc 
FROM pracownicy;
-- C. Wypisz imiona i nazwiska pracowników posortowane według nazwisk (ORDER BY)
SELECT DISTINCT imie, nazwisko 
FROM pracownicy ORDER BY nazwisko;

ALTER TABLE pracownicy
ADD PRIMARY KEY(kod_pracownika, jezyk);