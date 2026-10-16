 USE 4e_2_select;

-- 1. Utwórz tabelę Sprzedawcy z polami: 
-- IDSprzedawcy - całkowity, klucz podstawowy , 
-- Nazwisko (tekst do 50 znaków, pole niepuste) , 
-- Miasto (tekst do 30 znaków), 
-- Prowizja (liczba z dwoma miejscami po przecinku i jednym przed przecinkiem, wartość domyślna 0.13.
 
 CREATE TABLE Sprzedawcy (
 IDSprzedawcy int PRIMARY KEY,
 Nazwisko varchar(50) NOT NULL,
 Miasto varchar(30),
 Prowizja dec(3,2) DEFAULT(0.13)
 );
-- Wykonaj zapytania:

Insert Into Sprzedawcy Values (5001      ,   'James Hoog',  'New York'   , 0.15);
Insert Into Sprzedawcy Values (5002       ,  'Nail Knite' , 'Paris'       ,0.13);
Insert Into Sprzedawcy Values (5005        , 'Pit Alex'    ,'London'      ,0.11);
Insert Into Sprzedawcy Values (5006   ,      'Mc Lyon'    , 'Paris'       ,0.14);
Insert Into Sprzedawcy (IDSprzedawcy, Nazwisko, Prowizja) Values (5003    ,    'Lauson Hen'              ,0.12);
Insert Into Sprzedawcy Values (5007     ,    'Paul Adam'   ,'Rome'        ,0.13);
 

-- 2. Utwórz tabelę  Zamowienia z polami: 
-- IDZamowienia (liczba całkowita, klucz podstawowy), 
-- Wartosc (liczba: pięć miejsc przed przecinkiem i dwa po przecinku), 
-- Data typ Date,
-- IDKlienta (liczba całkowita), 
-- IDSprzedawcy (liczba całkowita).
CREATE TABLE zamowienia(
    idZamowienia INT PRIMARY KEY,
    wartosc dec(7,2),
    data date,
    idKlienta INT,
    idSprzedawcy INT
);
-- Wykonaj kod:

Insert Into Zamowienia Values (70001,       150.5   ,    '2012-10-05',  3005 ,        5002);
Insert Into Zamowienia Values (70009,       270.65   ,   '2012-09-10',  3001 ,        5005);
Insert Into Zamowienia Values (70002,       65.26     ,  '2012-10-05',  3002 ,        5001);
Insert Into Zamowienia Values (70004,       110.5 ,      '2012-08-17',  3009 ,        5003);
Insert Into Zamowienia Values (70007,       948.5  ,     '2012-09-10',  3005 ,        5002);
Insert Into Zamowienia Values (70005,       2400.6  ,    '2012-07-27',  3007 ,        5001);
Insert Into Zamowienia Values (70008,       5760     ,   '2012-09-10',  3002 ,        5001);
Insert Into Zamowienia Values (70010,       1983.43   ,  '2012-10-10',  3004 ,        5006);
Insert Into Zamowienia Values (70003,       2480.4 ,     '2012-10-10',  3009 ,        5003);
Insert Into Zamowienia Values (70012,       250.45  ,    '2012-06-27',  3008 ,        5002);
Insert Into Zamowienia Values (70011,       75.29    ,   '2012-08-17',  3003 ,        5007);
Insert Into Zamowienia Values (70013,       3045.6    ,  '2012-04-25',  3002 ,        5001);
-- 3. utwórz tabelę Klienci z polami:
-- IDKlienta liczba całkowita, klucz podstawowy
-- Nazwa tekst do 50 znaków,
-- Miasto  tekst do 40 znaków
-- Ocena  liczba całkowita
-- IDSprzedawcy  liczba całkowita
CREATE TABLE Klienci(
    IDKlienta INT PRIMARY KEY,
    Nazwa varchar(50),
    Miasto varchar(40),
    Ocena int,
    IDSprzedawcy int
);
-- Wykonaj kod:

 

INSERT INTO Klienci VALUES (3002    ,     'Nick Rimando',  'New York'  ,  100    ,     5001);
INSERT INTO Klienci VALUES (3005     ,    'Graham Zusi' ,  'California',  200    ,     5002);
INSERT INTO Klienci VALUES (3001      ,   'Brad Guzan'  ,  'London'    ,   NULL  ,     5005);
INSERT INTO Klienci VALUES (3004       ,  'Fabian Johns',  'Paris'     ,  300    ,     5006);
INSERT INTO Klienci VALUES (3007        , 'Brad Davis'  ,  'New York'  ,  200    ,     5001);
INSERT INTO Klienci VALUES (3009 ,        'Geoff Camero',  'Berlin'    ,  100    ,     5003);
INSERT INTO Klienci VALUES (3008  ,       'Julian Green',  'London'    ,  300    ,     5002);
INSERT INTO Klienci VALUES (3003   ,      'Jozy Altidor',  'Moscow'    ,  200    ,     5007);

-- 4. Wyświetl dane o wszystkich sprzedawcach.
SELECT *
FROM Sprzedawcy;


-- 5. Wyświetl nazwiska i prowizje sprzedawców.
SELECT Nazwisko,Prowizja
FROM Sprzedawcy;



-- 6. Wyświetl dane o klientach z Paryża i Moskwy.
SELECT * 
FROM klienci 
WHERE miasto = 'Paris' OR miasto = 'Moscow';

-- 7. Zmień powyższe tak, aby zapis warunku był krótszy (użyj IN)

SELECT * 
FROM Klienci
WHERE miasto IN('Moscow','Paris');

-- 8. Wyświetl dane o klientach , którzy nie mieszkają ani w Paryżu, ani w Moskwie (użyj NOT i IN)

SELECT * 
FROM klienci
WHERE miasto NOT IN('Paris', 'Moscow');

-- 9.Wyświetl dane o klientach, których identyfikatory to 3007, 3008 lub 3009 (użyj IN)

-- 10. Wyświetl dane o sprzedawcach, których prowizja mieści się w zakresie od 0,12 do 0,14 (użyj BETWEEN ... AND...)

-- 11. Wyświetl  informacje o zamówieniach, których wartość mieści się w zakresie od 500 do 4000 (BETWEEN ... AND...)

-- 12. zmodyfikuj powyższe tak, aby dodatkowo wykluczyć zamówienia o wartości 948.50 i 1983.43 ( SELECT.... WHERE (... between .. and ...) and  ... not ... in(....,...) ;  )

-- 13. Wyświetl informacje o tych klientach, których nazwy zaczynają się na literę 'B'  ( ... LIKE '...%' )

-- 14. Wyświetl informacje o tych klientach, których nazwy kończą się na literę n

-- 15. Wyświetl informacje o sprzedawcach, których pierwsza litera nazwiska to 'N', a czwarta to 'l'  (l jak liść)

-- 16. wyświetl klientów, którzy nie mają przypisanej oceny

-- 17. wyświetl klientów, którzy mają ocenę niższą niż 200 oraz tych bez przypisanej oceny

-- 18. Wyświetl dane klientów posortowane alfabetycznie według miasta

-- 19. Wyświetl sprzedawców z dwiema najwyższymi prowizjami