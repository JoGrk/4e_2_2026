-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sty 10, 2025 at 10:18 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4e_przedszkole`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedszkola`
--

CREATE TABLE `przedszkola` (
  `Id_przedszkola` int(2) DEFAULT NULL,
  `Nazwa_przedszkola` varchar(43) DEFAULT NULL,
  `Liczba_miejsc` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `przedszkola`
--

INSERT INTO `przedszkola` (`Id_przedszkola`, `Nazwa_przedszkola`, `Liczba_miejsc`) VALUES
(7, 'Niepubliczne Przedszkole Bursztynowy Kompas', 40),
(14, 'Przedszkole Niepubliczne Radosny Zakatek', 32),
(28, 'Przedszkole nr 16 Krasnal', 27),
(9, 'Przedszkole nr 2 Kraina Teczy', 35),
(29, 'Przedszkole nr 20 Perlowa Busola', 27),
(30, 'Przedszkole nr 23 Skrzynia Skarbow', 27),
(22, 'Przedszkole nr 28 Srebrna Kotwica', 28),
(23, 'Przedszkole nr 33 Zielona Bandera', 28),
(5, 'Przedszkole nr 4 Gwarny Dworek', 40),
(16, 'Przedszkole nr 41 Delfinek', 30),
(24, 'Przedszkole nr 46 Parkowe Wzgorze', 40),
(17, 'Przedszkole nr 48  Stokrotka ', 30),
(13, 'Przedszkole nr 49 im. Panienki z Okienka', 33),
(2, 'Przedszkole nr 5 Pod Wesola Chmurka', 50),
(12, 'Przedszkole nr 52 Dolina Smykow', 34),
(6, 'Przedszkole nr 54 Pod Bukami', 40),
(20, 'Przedszkole nr 57 Teczowe', 29),
(18, 'Przedszkole nr 59 Wesole Nutki', 30),
(25, 'Przedszkole nr 62 Pajacyk', 28),
(8, 'Przedszkole nr 63 Pod Zielonym Drzewem', 36),
(26, 'Przedszkole nr 64 Kubus Puchatek', 28),
(10, 'Przedszkole nr 7 Dzielne Skrzaty', 40),
(19, 'Przedszkole nr 71 Zuch', 30),
(11, 'Przedszkole nr 73 im. Plastusia', 35),
(15, 'Przedszkole nr 74 Smerf', 32),
(1, 'Przedszkole nr 75 Reksio', 66),
(27, 'Przedszkole nr 81 im. Bolka i Lolka', 28),
(4, 'Przedszkole nr 86 Zielone Wzgorze', 45),
(3, 'Przedszkole nr 87 Gwiezdna Kraina', 50),
(21, 'Przedszkole nr 88 Zeglarz', 29);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
