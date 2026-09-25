use 4e_2_ddl;

-- 1. Utwórz tabelę vehicles : pole vehicledId całkowite, klucz podstawowy, make tekst do 100 znaków, wszystkie pola wymagane (bez null)
CREATE TABLE vehicles(
    vehicledId INT PRIMARY KEY,
    make varchar(100) NOT null
);


-- 2. Dodaj do tabeli pole model (tekst do 100 znaków, pole wymagane
ALTER TABLE vehicles 
ADD model VARCHAR(100);

-- 3. Jednym zapytaniem dodaj pole color i note
ALTER TABLE vehicles
ADD color VARCHAR(50),
ADD note VARCHAR(255);

-- 4. Kolumna note powinna mieć tylko do 100 znaków Zmień to.
ALTER TABLE vehicles
MODIFY note VARCHAR(100);

-- 5. Jednym zapytaniem zmień typ pola year i color (pole color ma zmienioną pozycję w tabeli)

ALTER TABLE vehicles
ADD year INT NOT null;

ALTER TABLE vehicles
MODIFY year SMALLINT,
MODIFY color VARCHAR(20) AFTER make;
-- 6. Zmień nazwę pola note na vehicleCondition
ALTER TABLE vehicles
CHANGE note vehicleCondition VARCHAR(100);


-- 7. Usuń kolumnę vehicleCondition

ALTER TABLE vehicles
DROP vehicleCondition;

-- 8. Ustaw wartość domyślną dla pola year na 2023

ALTER TABLE vehicles
ALTER year SET DEFAULT 2023;

-- 9. Zmień nazwę tabeli vehicles na cars

ALTER TABLE vehicles RENAME TO cars;