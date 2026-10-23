 USE 4e_2_select;

--  1. napisz zapytanie, które wyświetli nazwę i  cenę produktów
SELECT nazwa, cena
FROM produkty;
 
-- 2. wyświetl nazwy i ceny produktów, posortowane malejąco według ceny;
SELECT nazwa, cena
FROM produkty
ORDER BY cena DESC;
-- 3. wyświetl nazwy i ceny produktów, posortowane malejąco według ceny, ale tylko te produkty, których cena jest mniejsza od 5
SELECT nazwa, cena
FROM produkty
WHERE cena < 5
ORDER BY cena DESC;


-- 4. dodatkowo interesują nas tylko produkty na literę B
 
SELECT nazwa, cena
FROM produkty
WHERE cena < 5 AND nazwa LIKE 'B%'
ORDER BY cena DESC;

-- 5.jak wyżej, ale oprócz produktów na B zainteresowani jesteśmy produktami na literę S
SELECT nazwa, cena
FROM produkty
WHERE cena < 5 AND (nazwa LIKE 'S%' OR nazwa LIKE 'B%')
ORDER BY cena DESC;
 
-- 6. interesują nas produkty o cenie pomiędzy 5 a 10 złotych
 
SELECT nazwa, cena
FROM produkty
WHERE cena BETWEEN 5 AND 10;

-- 7. chcemy wypisać nazwy i ceny produktów, które są bułeczkami, sokami, chipsy (nazwa:  chleb, sok, chipsy)

SELECT nazwa, cena
FROM produkty
WHERE nazwa IN('chleb','sok','chipsy');


 
CREATE TABLE IF NOT EXISTS produkty(`id` int(2), `nazwa` varchar(9), `cena` int(2), `id_sklepu` int(1));
INSERT INTO produkty (`id`, `nazwa`, `cena`, `id_sklepu`) VALUES (1, 'bułka', 2, 1), (2, 'sok', 4, 1), (3, 'chipsy', 6, 1), (4, 'cola', 8, 1), (5, 'chleb', 5, 1), (6, 'ciastka', 7, 1), (7, 'czosnek', 1, 1), (8, 'chleb', 6, 2), (9, 'ciastka', 11, 2), (10, 'masło', 8, 2), (11, 'czekolada', 5, 2), (12, 'sok', 7, 2),(13,'baton',7,2);