-- 1. Każda porządna tabela powinna posiadać klucz, dodaj pole jeśli trzeba. 

ALTER TABLE Pracownicy
ADD PRIMARY KEY(kod_pracownika, jezyk);

-- 2. Jan Malinowski poznał nowy język (CSS) - dopisz do tabeli.
INSERT INTO Pracownicy
VALUES
('P03', 'Jan', 'Malinowski', 'CSS', '1', 'Nowa Wies Wielka');
SELECT adres, miejscowosc, imie, nazwisko
FROM Pracownicy
WHERE imie = 'Jan' AND nazwisko = 'Malinowski';

-- 3. Antoni Malinowski poznał nowy język - JavaScript i zmienił adres na Naklo nad Notecia, Staszica 1 - dopisz nowy wiersz do tabeli
INSERT INTO Pracownicy (kod_pracownika,adres, jezyk, miejscowosc, imie, nazwisko)
VALUES ('P02','Staszica 1', 'JavaScript', 'Naklo nad Notecia', 'Antoni', 'Malinowski');
DELETE FROM Pracownicy
WHERE kod_pracownika = '';
-- 4. Wyświetl imię i nazwisko pracowników znających język CSS

-- 5. Gdzie mieszka Antoni Malinowski? Wypisz imię, nazwisko, ulicę, miejscowość

-- 6. Usuwamy informację o znajomości PHP (bo tak)
DELETE FROM Pracownicy
WHERE jezyk = 'PHP';
-- 7. Sprawdź adres Jana Kowalskiego

SELECT * FROM Pracownicy
WHERE imie='Jan' AND nazwisko = 'Kowalski';

-- 8. Zatrudniliśmy nowego pracownika, wpisz jego dane: Aleksander Nowowiejski, mieszka w Nowej Wsi, ulica Pogodna 16

INSERT INTO Pracownicy
    (kod_pracownika, imie, nazwisko, adres, miejscowosc)
VALUES
    ('P05', 'Aleksander', 'Nowowiejski', 'Pogodna 16', 'Nowa Wies');

-- 9. Popraw strukturę tabeli tak, aby nie było tych problemów (redundacja, anomalia wstawiania, aktualizacji, usuwania)