Utwórz tabelę projekty z polami:
 id_projektu, liczba, autonumerowanie, klucz podstawowy
 nazwa_projektu tekst do 255 znaków, pole nie może być puste
start_projektu data
koniec_projektu data
koszt dokładne wartości liczbowe, do 500000, z dokładnością do dwóch miejsc po przecinku
utworzony stempel czasowy (data i czas), wartością domyślną jest current_timestamp

CREATE DATABASE projekty4e_2;
USE projekty4e_2;

CREATE TABLE projekty(
    id_projektu INT AUTO_INCREMENT PRIMARY KEY,
    nazwa_projektu VARCHAR(255) NOT NULL,
    start_projektu date,
    koniec_projektu date,
    koszt DEC(8,2),
    stempel TIMESTAMP DEFAULT current_timestamp
);

Utwórz tabelę etapy_projektu
id_etapu liczba z zakresu od 0 do 255
id_projektu liczba
opis_etapu tekst do 255 znaków, nie może być pusty
numer_etapu liczba z zakresu od 0 do 255
ukonczony wartość logiczna (prawda, fałsz)
klucz podstawowy na pola id_etapu i id_projektu
klucz obcy na polu id_projektu odwołujący się do tabeli projekty

CREATE TABLE etapy_projektu(
    id_etapu TINYINT UNSIGNED,
    id_projektu INT,
    opis_etapu VARCHAR(255) NOT NULL,
    numer_etapu TINYINT UNSIGNED,
    ukonczony BOOLEAN,
    PRIMARY KEY(id_projektu, id_etapu), 
    FOREIGN KEY(id_projektu) REFERENCES projekty(id_projektu)
);

------------------------------------------------------------------------------------------------------------

utwórz tabelę autorzy
id_autora liczba, autonymerowanie, klucz podstawowy
nazwisko tekst do 255, nie puste
pozycja - typ wyliczeniowy, wartości beginer, silver, gold
wiek - liczba od 0 do 255
data_od data, domyślnie aktualna data
CREATE TABLE autorzy(
    id_autora INT AUTO_INCREMENT PRIMARY KEY,
    nazwisko VARCHAR(255) NOT NULL,
    pozycja ENUM('beginer', 'silver', 'gold'),
    wiek TINYINT UNSIGNED,
    data_od date DEFAULT current_date
     
);

utwórz tabelę posty
id_postu liczba, autonumerowanie, klucz podstawowy 
tresc - duże ilości danych binarnych (tekst, zdjęcia)
kategoria - typ wyliczeniowy z wartościami : rozrywka, nauka, sport
utworzony - data i czas utworzenia, domyślne aktualna



utwórz tabelę autorzy_postow
pola id_postu,  id_autora
klucz podstawowy na polach id_postu i id_autora
klucz obcy na polu id_postu odwołujacy się do klucza podstawowego tabeli posty
klucz obcy na polu id_autora odwołujący się do klucza podstawowego tabeli autorzy