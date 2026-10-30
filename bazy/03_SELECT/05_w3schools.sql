-- 1. Wyświetl nazwy firm klientów z Niemiec. (nazwa,kraj, miasto)
SELECT customername, country, city
FROM Customers
WHERE country = 'Germany';
-- 2. Ogranicz do tych z Berlina.
SELECT customername, country, city
FROM Customers
WHERE country = 'Germany' AND city = 'Berlin';

-- 3. Wyświetlamy nazwy firm (kraj, miasto) klientów z Niemiec, ale nie z Berlina.
SELECT customername, country, city
FROM Customers
WHERE country = 'Germany' AND city != 'Berlin';
-- 4. Nazwy firm (kraj, miasto) z miasta na literę A.

SELECT country, city
FROM Customers
WHERE city LIKE 'a%';

-- 5. Nazwy firm (kraj, miasto) z miasta, które na drugim miejscu ma literę a.
SELECT country, city
FROM Customers
WHERE city LIKE '_a%';
-- 6. Nazwy firm (kraj, miasto) z USA, Niemiec, Kanady i Francji.
SELECT country, city, customername
FROM Customers
WHERE country IN ('USA', 'Germany', 'Canada', 'France');
-- 7. Z kraju o nazwie co najmniej czteroliterowej
SELECT country, city
FROM Customers
WHERE country like '____%';
-- 8. Wyświetl dane o zamówieniach z lipca dowolnego roku. 
SELECT *
FROM orders
WHERE orderdate LIKE '%-07-%';


-- 9. wyświetl dane o zamówieniach dokonanych w pierwszych 10 dniach lipca 1996

-- 10 Wyświetl produkty uporządkowane według ceny rosnąco (najpierw najtańsze). 

-- 11. Wyświetl pięć najdroższych produktów

-- 12. Wyświetl towary (nazwy i ceny) o cenach pomiędzy 10 a 100

-- 13. Jak wyżej, ale tylko towary dostawców o kodzie 2.

-- 14. Jak wyżej, ale obok dostawców o kodzie 2  wybierz także 8, 7,4 i 3

-- 15. Wyświetl 10 najtańszych produktów posortowanych według nazwy

-- 16. Wyświetl produkty z kategorii 1,3,5,7, których cena jest mniejsza niż 10 lub większa od 50

-- 17. Wyświetl nazwę produktu oraz cenę netto dla produktów z kategorii 5 lub 7

-- 18. Wyświetl id klienta, numer zamówienia oraz miesiąc zamówienia dla zamówień z ostatniego kwartału. W zestawieniu powinny pojawić się dane z dowolnego roku.