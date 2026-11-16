USE 4e_2_group;
-- 1. Wyświetl średnią, najwyższą i najniższą kaloryczność napojów. Zmień nazwy kolumn na (odpowiednio) srednia_kalorycznosc, maksymalna_kalorycznosc, minimalna_kalorycznosc.
SELECT 
    AVG(kalorie) as srednia_kalorycznosc,
    MAX(kalorie) as maksymalna_kalorycznosc,
    MIN(kalorie) as minimalna_kalorycznosc
FROM drinki_informacje;


 
-- 2. wyświetl średnią kaloryczność poszczególnych kolorów napojów. Zmień nazwę kolumny ze średnią na srednia_kalorycznosc. Dane posortuj według średniej kaloryczności.

SELECT
    kolor,
    ROUND( AVG(kalorie)) as srednia_kalorycznosc
FROM drinki_informacje
GROUP BY kolor
ORDER BY srednia_kalorycznosc;

 
-- 3. Wyświetl średnią cenę drinków z lodem i drinków bez lodu (w jednym zapytaniu). zmień nazwę kolumny srednia_cena.
SELECT
    lod,
    AVG(cena) as srednia_cena
FROM drinki_informacje
GROUP BY lod;
    
 
-- 4. Wyświetl ilość napojów z poszczególnych kolorów. Zmodyfikuj zapytanie tak, aby były wyświetlane tylko te kolory, w których są co najmniej dwa drinki
 
SELECT 
    kolor,
    COUNT(kolor)
FROM drinki_informacje
GROUP BY kolor
HAVING COUNT(kolor) >= 2;
-- 5. Ile jest napojów w poszczególnych kolorach. Do zapytania wybierz tylko drinki z lodem. 
SELECT
    kolor, COUNT(kolor) 
FROM drinki_informacje 
WHERE lod = "T"
GROUP BY kolor ;

-- 6. Wyświetl średnią kaloryczność napojów z lodem i bez lodu (w jednym zapytaniu). - do zapytania wybierz tylko drinki rozpoczynające się literą S lub B. Posortuj malejąco według średniej kaloryczności.
 SELECT
    lod,
    ROUND(AVG(kalorie)) AS srednia_kalorycznosc
FROM drinki_informacje
WHERE nazwa LIKE "S%" OR nazwa LIKE 'B%'
GROUP BY lod
ORDER BY srednia_kalorycznosc DESC;
-- 7. Wyświetl maksymalną ilość węglowodanów w poszczególnych kolorach. Wyświetl tylko te wiersze, w których maksymalna ilość węglowodanów jest większa od 5. Dane posortuj malejąco według maksymalnej ilości kalorii. 
SELECT
    kolor,
    MAX(weglowodany) as MAX_weglowodany
FROM drinki_informacje
GROUP BY kolor
HAVING MAX(weglowodany) > 5
ORDER BY MAX_weglowodany DESC;