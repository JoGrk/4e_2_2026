-- A. Wyświetl napoje, których składnikiem głównym jest woda sodowa.
 SELECT nazwa
 FROM proste_drinki
 WHERE skladnik_glowny = 'woda sodowa';

-- B. Wyświetl wszystkie napoje, których głównym składnikiem jest dowolny sok.
SELECT nazwa
FROM proste_drinki
WHERE skladnik_glowny LIKE '%sok%';
 
-- C. Wyświetl wszystkie napoje, których głównym składnikiem jest dowolny sok lub nektar w ilości co najmniej 60 (ilosc1) ( ilość obowiązuje i przy soku, i przy nektarze)
 SELECT nazwa, skladnik_glowny, ilosc1
FROM proste_drinki
WHERE
    (skladnik_glowny LIKE '%sok%' OR skladnik_glowny LIKE '%nektar%')   AND ilosc1 >= 60;

-- D. Wyświetl wszystkie napoje, których składnikiem dodatkowym jest dowolny sok w ilości 22 (ilosc2)
 SELECT nazwa, skladnik_dodatkowy, ilosc2
 FROM proste_drinki
 where skladnik_dodatkowy LIKE '%sok%'
    AND ilosc2 = 22;
-- E. Wyświetl wszystkie napoje, których nazwa zaczyna się od B i kończy na n
SELECT nazwa
FROM proste_drinki
WHERE nazwa LIKE 'B%n';

-- F. Wyświetl wszystkie napoje, w których ilość dodatkowego składnika (ilosc2) jest wartością z zakresu od 30 do 180
SELECT skladnik_dodatkowy, nazwa
FROM proste_drinki
WHERE ilosc2 BETWEEN 30 AND 180;
-- G. Wyświetl nazwy napojów, w których składnikiem głównym lub dodatkowym jest herbata.

SELECT nazwa
FROM proste_drinki
WHERE skladnik_glowny LIKE '%herbata%' OR skladnik_dodatkowy LIKE '%herbata%';
