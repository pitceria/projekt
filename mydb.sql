-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 12 Kwi 2021, 12:20
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `mydb`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pizza`
--

CREATE TABLE `pizza` (
  `idpizza` int(11) NOT NULL,
  `nazwa` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skladniki_json` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cena` float NOT NULL,
  `rozmiar` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sciezka_zdjecie` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `pizza`
--

INSERT INTO `pizza` (`idpizza`, `nazwa`, `skladniki_json`, `cena`, `rozmiar`, `sciezka_zdjecie`) VALUES
(1, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 10.5, 'XS', '0.jpg'),
(2, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 15.5, 'S', '0.jpg'),
(3, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 20.5, 'M', '0.jpg'),
(4, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 25.5, 'L', '0.jpg'),
(5, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 30.5, 'XL', '0.jpg'),
(6, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 35.5, 'XXL', '0.jpg'),
(7, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '1.jpg'),
(8, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '1.jpg'),
(9, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '1.jpg'),
(10, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '1.jpg'),
(11, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '1.jpg'),
(12, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '1.jpg'),
(13, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 10.5, 'XS', '2.jpg'),
(14, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 15.5, 'S', '2.jpg'),
(15, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 20.5, 'M', '2.jpg'),
(16, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 25.5, 'L', '2.jpg'),
(17, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 30.5, 'XL', '2.jpg'),
(18, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 35.5, 'XXL', '2.jpg'),
(19, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '3.jpg'),
(20, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '3.jpg'),
(21, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '3.jpg'),
(22, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '3.jpg'),
(23, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '3.jpg'),
(24, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '3.jpg'),
(25, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '4.jpg'),
(26, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '4.jpg'),
(27, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '4.jpg'),
(28, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '4.jpg'),
(29, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '4.jpg'),
(30, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '4.jpg'),
(31, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 10.5, 'XS', '5.jpg'),
(32, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 15.5, 'S', '5.jpg'),
(33, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 20.5, 'M', '5.jpg'),
(34, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 25.5, 'L', '5.jpg'),
(35, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 30.5, 'XL', '5.jpg'),
(36, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 35.5, 'XXL', '5.jpg'),
(37, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 10.5, 'XS', '6.jpg'),
(38, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 15.5, 'S', '6.jpg'),
(39, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 20.5, 'M', '6.jpg'),
(40, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 25.5, 'L', '6.jpg'),
(41, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 30.5, 'XL', '6.jpg'),
(42, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 35.5, 'XXL', '6.jpg'),
(43, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 10.5, 'XS', '7.jpg'),
(44, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 15.5, 'S', '7.jpg'),
(45, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 20.5, 'M', '7.jpg'),
(46, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 25.5, 'L', '7.jpg'),
(47, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 30.5, 'XL', '7.jpg'),
(48, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 35.5, 'XXL', '7.jpg'),
(49, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 10.5, 'XS', '8.jpg'),
(50, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 15.5, 'S', '8.jpg'),
(51, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 20.5, 'M', '8.jpg'),
(52, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 25.5, 'L', '8.jpg'),
(53, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 30.5, 'XL', '8.jpg'),
(54, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 35.5, 'XXL', '8.jpg'),
(55, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 10.5, 'XS', '9.jpg'),
(56, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 15.5, 'S', '9.jpg'),
(57, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 20.5, 'M', '9.jpg'),
(58, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 25.5, 'L', '9.jpg'),
(59, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 30.5, 'XL', '9.jpg'),
(60, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 35.5, 'XXL', '9.jpg'),
(61, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 10.5, 'XS', '10.jpg'),
(62, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 15.5, 'S', '10.jpg'),
(63, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 20.5, 'M', '10.jpg'),
(64, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 25.5, 'L', '10.jpg'),
(65, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 30.5, 'XL', '10.jpg'),
(66, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 35.5, 'XXL', '10.jpg'),
(67, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '11.jpg'),
(68, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '11.jpg'),
(69, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '11.jpg'),
(70, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '11.jpg'),
(71, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '11.jpg'),
(72, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '11.jpg'),
(73, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '12.jpg'),
(74, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '12.jpg'),
(75, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '12.jpg'),
(76, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '12.jpg'),
(77, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '12.jpg'),
(78, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '12.jpg'),
(79, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '13.jpg'),
(80, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '13.jpg'),
(81, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '13.jpg'),
(82, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '13.jpg'),
(83, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '13.jpg'),
(84, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '13.jpg'),
(85, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '14.jpg'),
(86, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '14.jpg'),
(87, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '14.jpg'),
(88, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '14.jpg'),
(89, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '14.jpg'),
(90, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '14.jpg'),
(91, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 10.5, 'XS', '15.jpg'),
(92, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 15.5, 'S', '15.jpg'),
(93, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 20.5, 'M', '15.jpg'),
(94, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 25.5, 'L', '15.jpg'),
(95, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 30.5, 'XL', '15.jpg'),
(96, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 35.5, 'XXL', '15.jpg'),
(97, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 10.5, 'XS', '16.jpg'),
(98, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 15.5, 'S', '16.jpg'),
(99, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 20.5, 'M', '16.jpg'),
(100, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 25.5, 'L', '16.jpg'),
(101, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 30.5, 'XL', '16.jpg'),
(102, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 35.5, 'XXL', '16.jpg'),
(103, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 10.5, 'XS', '17.jpg'),
(104, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 15.5, 'S', '17.jpg'),
(105, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 20.5, 'M', '17.jpg'),
(106, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 25.5, 'L', '17.jpg'),
(107, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 30.5, 'XL', '17.jpg'),
(108, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 35.5, 'XXL', '17.jpg'),
(109, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 10.5, 'XS', '18.jpg'),
(110, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 15.5, 'S', '18.jpg'),
(111, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 20.5, 'M', '18.jpg'),
(112, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 25.5, 'L', '18.jpg'),
(113, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 30.5, 'XL', '18.jpg'),
(114, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 35.5, 'XXL', '18.jpg'),
(115, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 10.5, 'XS', '19.jpg'),
(116, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 15.5, 'S', '19.jpg'),
(117, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 20.5, 'M', '19.jpg'),
(118, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 25.5, 'L', '19.jpg'),
(119, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 30.5, 'XL', '19.jpg'),
(120, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 35.5, 'XXL', '19.jpg'),
(121, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 10.5, 'XS', '20.jpg'),
(122, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 15.5, 'S', '20.jpg'),
(123, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 20.5, 'M', '20.jpg'),
(124, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 25.5, 'L', '20.jpg'),
(125, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 30.5, 'XL', '20.jpg'),
(126, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 35.5, 'XXL', '20.jpg'),
(127, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 10.5, 'XS', '21.jpg'),
(128, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 15.5, 'S', '21.jpg'),
(129, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 20.5, 'M', '21.jpg'),
(130, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 25.5, 'L', '21.jpg'),
(131, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 30.5, 'XL', '21.jpg'),
(132, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 35.5, 'XXL', '21.jpg'),
(133, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 10.5, 'XS', '22.jpg'),
(134, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 15.5, 'S', '22.jpg'),
(135, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 20.5, 'M', '22.jpg'),
(136, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 25.5, 'L', '22.jpg'),
(137, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 30.5, 'XL', '22.jpg'),
(138, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 35.5, 'XXL', '22.jpg'),
(139, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 10.5, 'XS', '23.jpg'),
(140, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 15.5, 'S', '23.jpg'),
(141, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 20.5, 'M', '23.jpg'),
(142, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 25.5, 'L', '23.jpg'),
(143, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 30.5, 'XL', '23.jpg'),
(144, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 35.5, 'XXL', '23.jpg'),
(145, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 10.5, 'XS', '24.jpg'),
(146, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 15.5, 'S', '24.jpg'),
(147, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 20.5, 'M', '24.jpg'),
(148, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 25.5, 'L', '24.jpg'),
(149, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 30.5, 'XL', '24.jpg'),
(150, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 35.5, 'XXL', '24.jpg'),
(151, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '25.jpg'),
(152, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '25.jpg'),
(153, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '25.jpg'),
(154, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '25.jpg'),
(155, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '25.jpg'),
(156, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '25.jpg'),
(157, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 10.5, 'XS', '26.jpg'),
(158, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 15.5, 'S', '26.jpg'),
(159, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 20.5, 'M', '26.jpg'),
(160, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 25.5, 'L', '26.jpg'),
(161, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 30.5, 'XL', '26.jpg'),
(162, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 35.5, 'XXL', '26.jpg'),
(163, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '27.jpg'),
(164, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '27.jpg'),
(165, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '27.jpg'),
(166, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '27.jpg'),
(167, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '27.jpg'),
(168, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '27.jpg'),
(169, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 10.5, 'XS', '28.jpg'),
(170, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 15.5, 'S', '28.jpg'),
(171, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 20.5, 'M', '28.jpg'),
(172, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 25.5, 'L', '28.jpg'),
(173, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 30.5, 'XL', '28.jpg'),
(174, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 35.5, 'XXL', '28.jpg'),
(175, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '29.jpg'),
(176, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '29.jpg'),
(177, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '29.jpg'),
(178, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '29.jpg'),
(179, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '29.jpg'),
(180, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '29.jpg'),
(181, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '30.jpg'),
(182, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '30.jpg'),
(183, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '30.jpg'),
(184, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '30.jpg'),
(185, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '30.jpg'),
(186, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '30.jpg'),
(187, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 10.5, 'XS', '0.jpg'),
(188, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 15.5, 'S', '0.jpg'),
(189, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 20.5, 'M', '0.jpg'),
(190, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 25.5, 'L', '0.jpg'),
(191, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 30.5, 'XL', '0.jpg'),
(192, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 35.5, 'XXL', '0.jpg'),
(193, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '1.jpg'),
(194, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '1.jpg'),
(195, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '1.jpg'),
(196, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '1.jpg'),
(197, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '1.jpg'),
(198, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '1.jpg'),
(199, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 10.5, 'XS', '2.jpg'),
(200, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 15.5, 'S', '2.jpg'),
(201, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 20.5, 'M', '2.jpg'),
(202, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 25.5, 'L', '2.jpg'),
(203, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 30.5, 'XL', '2.jpg'),
(204, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 35.5, 'XXL', '2.jpg'),
(205, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '3.jpg'),
(206, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '3.jpg'),
(207, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '3.jpg'),
(208, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '3.jpg'),
(209, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '3.jpg'),
(210, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '3.jpg'),
(211, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '4.jpg'),
(212, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '4.jpg'),
(213, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '4.jpg'),
(214, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '4.jpg'),
(215, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '4.jpg'),
(216, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '4.jpg'),
(217, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 10.5, 'XS', '5.jpg'),
(218, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 15.5, 'S', '5.jpg'),
(219, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 20.5, 'M', '5.jpg'),
(220, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 25.5, 'L', '5.jpg'),
(221, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 30.5, 'XL', '5.jpg'),
(222, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 35.5, 'XXL', '5.jpg'),
(223, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 10.5, 'XS', '6.jpg'),
(224, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 15.5, 'S', '6.jpg'),
(225, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 20.5, 'M', '6.jpg'),
(226, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 25.5, 'L', '6.jpg'),
(227, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 30.5, 'XL', '6.jpg'),
(228, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 35.5, 'XXL', '6.jpg'),
(229, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 10.5, 'XS', '7.jpg'),
(230, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 15.5, 'S', '7.jpg'),
(231, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 20.5, 'M', '7.jpg'),
(232, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 25.5, 'L', '7.jpg'),
(233, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 30.5, 'XL', '7.jpg'),
(234, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 35.5, 'XXL', '7.jpg'),
(235, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 10.5, 'XS', '8.jpg'),
(236, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 15.5, 'S', '8.jpg'),
(237, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 20.5, 'M', '8.jpg'),
(238, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 25.5, 'L', '8.jpg'),
(239, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 30.5, 'XL', '8.jpg'),
(240, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 35.5, 'XXL', '8.jpg'),
(241, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 10.5, 'XS', '9.jpg'),
(242, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 15.5, 'S', '9.jpg'),
(243, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 20.5, 'M', '9.jpg'),
(244, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 25.5, 'L', '9.jpg'),
(245, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 30.5, 'XL', '9.jpg'),
(246, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 35.5, 'XXL', '9.jpg'),
(247, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 10.5, 'XS', '10.jpg'),
(248, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 15.5, 'S', '10.jpg'),
(249, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 20.5, 'M', '10.jpg'),
(250, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 25.5, 'L', '10.jpg'),
(251, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 30.5, 'XL', '10.jpg'),
(252, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 35.5, 'XXL', '10.jpg'),
(253, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '11.jpg'),
(254, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '11.jpg'),
(255, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '11.jpg'),
(256, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '11.jpg'),
(257, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '11.jpg'),
(258, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '11.jpg'),
(259, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '12.jpg'),
(260, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '12.jpg'),
(261, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '12.jpg'),
(262, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '12.jpg'),
(263, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '12.jpg'),
(264, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '12.jpg'),
(265, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '13.jpg'),
(266, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '13.jpg'),
(267, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '13.jpg'),
(268, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '13.jpg'),
(269, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '13.jpg'),
(270, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '13.jpg'),
(271, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '14.jpg'),
(272, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '14.jpg'),
(273, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '14.jpg'),
(274, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '14.jpg'),
(275, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '14.jpg'),
(276, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '14.jpg'),
(277, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 10.5, 'XS', '15.jpg'),
(278, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 15.5, 'S', '15.jpg'),
(279, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 20.5, 'M', '15.jpg'),
(280, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 25.5, 'L', '15.jpg'),
(281, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 30.5, 'XL', '15.jpg'),
(282, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 35.5, 'XXL', '15.jpg'),
(283, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 10.5, 'XS', '16.jpg'),
(284, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 15.5, 'S', '16.jpg'),
(285, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 20.5, 'M', '16.jpg'),
(286, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 25.5, 'L', '16.jpg');
INSERT INTO `pizza` (`idpizza`, `nazwa`, `skladniki_json`, `cena`, `rozmiar`, `sciezka_zdjecie`) VALUES
(287, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 30.5, 'XL', '16.jpg'),
(288, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 35.5, 'XXL', '16.jpg'),
(289, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 10.5, 'XS', '17.jpg'),
(290, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 15.5, 'S', '17.jpg'),
(291, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 20.5, 'M', '17.jpg'),
(292, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 25.5, 'L', '17.jpg'),
(293, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 30.5, 'XL', '17.jpg'),
(294, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 35.5, 'XXL', '17.jpg'),
(295, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 10.5, 'XS', '18.jpg'),
(296, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 15.5, 'S', '18.jpg'),
(297, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 20.5, 'M', '18.jpg'),
(298, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 25.5, 'L', '18.jpg'),
(299, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 30.5, 'XL', '18.jpg'),
(300, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 35.5, 'XXL', '18.jpg'),
(301, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 10.5, 'XS', '19.jpg'),
(302, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 15.5, 'S', '19.jpg'),
(303, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 20.5, 'M', '19.jpg'),
(304, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 25.5, 'L', '19.jpg'),
(305, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 30.5, 'XL', '19.jpg'),
(306, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 35.5, 'XXL', '19.jpg'),
(307, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 10.5, 'XS', '20.jpg'),
(308, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 15.5, 'S', '20.jpg'),
(309, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 20.5, 'M', '20.jpg'),
(310, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 25.5, 'L', '20.jpg'),
(311, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 30.5, 'XL', '20.jpg'),
(312, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 35.5, 'XXL', '20.jpg'),
(313, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 10.5, 'XS', '21.jpg'),
(314, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 15.5, 'S', '21.jpg'),
(315, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 20.5, 'M', '21.jpg'),
(316, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 25.5, 'L', '21.jpg'),
(317, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 30.5, 'XL', '21.jpg'),
(318, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 35.5, 'XXL', '21.jpg'),
(319, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 10.5, 'XS', '22.jpg'),
(320, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 15.5, 'S', '22.jpg'),
(321, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 20.5, 'M', '22.jpg'),
(322, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 25.5, 'L', '22.jpg'),
(323, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 30.5, 'XL', '22.jpg'),
(324, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 35.5, 'XXL', '22.jpg'),
(325, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 10.5, 'XS', '23.jpg'),
(326, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 15.5, 'S', '23.jpg'),
(327, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 20.5, 'M', '23.jpg'),
(328, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 25.5, 'L', '23.jpg'),
(329, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 30.5, 'XL', '23.jpg'),
(330, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 35.5, 'XXL', '23.jpg'),
(331, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 10.5, 'XS', '24.jpg'),
(332, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 15.5, 'S', '24.jpg'),
(333, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 20.5, 'M', '24.jpg'),
(334, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 25.5, 'L', '24.jpg'),
(335, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 30.5, 'XL', '24.jpg'),
(336, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 35.5, 'XXL', '24.jpg'),
(337, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '25.jpg'),
(338, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '25.jpg'),
(339, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '25.jpg'),
(340, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '25.jpg'),
(341, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '25.jpg'),
(342, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '25.jpg'),
(343, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 10.5, 'XS', '26.jpg'),
(344, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 15.5, 'S', '26.jpg'),
(345, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 20.5, 'M', '26.jpg'),
(346, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 25.5, 'L', '26.jpg'),
(347, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 30.5, 'XL', '26.jpg'),
(348, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 35.5, 'XXL', '26.jpg'),
(349, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '27.jpg'),
(350, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '27.jpg'),
(351, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '27.jpg'),
(352, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '27.jpg'),
(353, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '27.jpg'),
(354, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '27.jpg'),
(355, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 10.5, 'XS', '28.jpg'),
(356, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 15.5, 'S', '28.jpg'),
(357, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 20.5, 'M', '28.jpg'),
(358, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 25.5, 'L', '28.jpg'),
(359, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 30.5, 'XL', '28.jpg'),
(360, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 35.5, 'XXL', '28.jpg'),
(361, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '29.jpg'),
(362, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '29.jpg'),
(363, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '29.jpg'),
(364, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '29.jpg'),
(365, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '29.jpg'),
(366, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '29.jpg'),
(367, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '30.jpg'),
(368, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '30.jpg'),
(369, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '30.jpg'),
(370, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '30.jpg'),
(371, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '30.jpg'),
(372, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '30.jpg'),
(373, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 10.5, 'XS', '0.jpg'),
(374, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 15.5, 'S', '0.jpg'),
(375, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 20.5, 'M', '0.jpg'),
(376, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 25.5, 'L', '0.jpg'),
(377, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 30.5, 'XL', '0.jpg'),
(378, 'PIZZA DOUBLE PEPERONI', 'a:3:{i:0;s:17:\" podwójne salami\";i:1;s:15:\" sos pomidorowy\";i:2;s:6:\" ser\r\n\";}', 35.5, 'XXL', '0.jpg'),
(379, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '1.jpg'),
(380, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '1.jpg'),
(381, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '1.jpg'),
(382, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '1.jpg'),
(383, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '1.jpg'),
(384, 'PIZZA CAPRICIOSA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '1.jpg'),
(385, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 10.5, 'XS', '2.jpg'),
(386, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 15.5, 'S', '2.jpg'),
(387, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 20.5, 'M', '2.jpg'),
(388, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 25.5, 'L', '2.jpg'),
(389, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 30.5, 'XL', '2.jpg'),
(390, 'PIZZA KEBAB', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" cebula\";i:2;s:12:\" sos Gyros\r\n\";}', 35.5, 'XXL', '2.jpg'),
(391, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '3.jpg'),
(392, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '3.jpg'),
(393, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '3.jpg'),
(394, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '3.jpg'),
(395, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '3.jpg'),
(396, 'PIZZA PEPERONI', 'a:3:{i:0;s:7:\" salami\";i:1;s:7:\" cebula\";i:2;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '3.jpg'),
(397, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '4.jpg'),
(398, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '4.jpg'),
(399, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '4.jpg'),
(400, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '4.jpg'),
(401, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '4.jpg'),
(402, 'PIZZA HAWAJSKA', 'a:3:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '4.jpg'),
(403, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 10.5, 'XS', '5.jpg'),
(404, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 15.5, 'S', '5.jpg'),
(405, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 20.5, 'M', '5.jpg'),
(406, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 25.5, 'L', '5.jpg'),
(407, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 30.5, 'XL', '5.jpg'),
(408, 'PIZZA TEKSAŃSKI KURCZAK', 'a:3:{i:0;s:14:\" kurczak gyros\";i:1;s:10:\" kukurydza\";i:2;s:15:\" sos barbecue\r\n\";}', 35.5, 'XXL', '5.jpg'),
(409, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 10.5, 'XS', '6.jpg'),
(410, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 15.5, 'S', '6.jpg'),
(411, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 20.5, 'M', '6.jpg'),
(412, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 25.5, 'L', '6.jpg'),
(413, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 30.5, 'XL', '6.jpg'),
(414, 'PIZZA KEBAB DELUXE', 'a:4:{i:0;s:30:\" mięso wołowo-drobiowe kebab\";i:1;s:7:\" cebula\";i:2;s:8:\" pomidor\";i:3;s:43:\" mix sosów pikantny arabski i pomidorowy\r\n\";}', 35.5, 'XXL', '6.jpg'),
(415, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 10.5, 'XS', '7.jpg'),
(416, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 15.5, 'S', '7.jpg'),
(417, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 20.5, 'M', '7.jpg'),
(418, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 25.5, 'L', '7.jpg'),
(419, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 30.5, 'XL', '7.jpg'),
(420, 'PIZZA BARBECUE HABANERO', 'a:4:{i:0;s:14:\" kurczak gyros\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" boczek\";i:3;s:48:\" mix sosów śmietanowy oraz pikantny Barbecue\r\n\";}', 35.5, 'XXL', '7.jpg'),
(421, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 10.5, 'XS', '8.jpg'),
(422, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 15.5, 'S', '8.jpg'),
(423, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 20.5, 'M', '8.jpg'),
(424, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 25.5, 'L', '8.jpg'),
(425, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 30.5, 'XL', '8.jpg'),
(426, 'PIZZA ITALIAN FIT', 'a:4:{i:0;s:9:\" brokuły\";i:1;s:35:\" aromatyczny ser śródziemnomorski\";i:2;s:17:\" świeży pomidor\";i:3;s:18:\" sos śmietanowy\r\n\";}', 35.5, 'XXL', '8.jpg'),
(427, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 10.5, 'XS', '9.jpg'),
(428, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 15.5, 'S', '9.jpg'),
(429, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 20.5, 'M', '9.jpg'),
(430, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 25.5, 'L', '9.jpg'),
(431, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 30.5, 'XL', '9.jpg'),
(432, 'PIZZA BIESIADA SMAKÓW', 'a:5:{i:0;s:8:\" pomidor\";i:1;s:7:\" szynka\";i:2;s:19:\" ser gouda wędzona\";i:3;s:16:\" sos śmietanowy\";i:4;s:7:\" ser \r\n\";}', 35.5, 'XXL', '9.jpg'),
(433, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 10.5, 'XS', '10.jpg'),
(434, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 15.5, 'S', '10.jpg'),
(435, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 20.5, 'M', '10.jpg'),
(436, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 25.5, 'L', '10.jpg'),
(437, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 30.5, 'XL', '10.jpg'),
(438, 'PIZZA KRÓLEWSKA GOUDA', 'a:4:{i:0;s:15:\" ciasto finetta\";i:1;s:7:\" boczek\";i:2;s:8:\" pomidor\";i:3;s:18:\" gouda wędzona \r\n\";}', 35.5, 'XXL', '10.jpg'),
(439, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '11.jpg'),
(440, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '11.jpg'),
(441, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '11.jpg'),
(442, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '11.jpg'),
(443, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '11.jpg'),
(444, 'PIZZA GRECKA', 'a:5:{i:0;s:23:\" ser śródziemnomorski\";i:1;s:15:\" oliwki czarne \";i:2;s:8:\" pomidor\";i:3;s:7:\" zioła\";i:4;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '11.jpg'),
(445, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '12.jpg'),
(446, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '12.jpg'),
(447, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '12.jpg'),
(448, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '12.jpg'),
(449, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '12.jpg'),
(450, 'PIZZA NEAPOLITANA', 'a:4:{i:0;s:7:\" salami\";i:1;s:14:\" oliwki czarne\";i:2;s:18:\" papryka jalapeño\";i:3;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '12.jpg'),
(451, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '13.jpg'),
(452, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '13.jpg'),
(453, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '13.jpg'),
(454, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '13.jpg'),
(455, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '13.jpg'),
(456, 'PIZZA UŚMIECH BORYNY', 'a:4:{i:0;s:8:\" kabanos\";i:1;s:10:\" pieczarki\";i:2;s:7:\" cebula\";i:3;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '13.jpg'),
(457, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '14.jpg'),
(458, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '14.jpg'),
(459, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '14.jpg'),
(460, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '14.jpg'),
(461, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '14.jpg'),
(462, 'PIZZA BIESIADA SEROWA', 'a:2:{i:0;s:20:\" z serem pleśniowym\";i:1;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '14.jpg'),
(463, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 10.5, 'XS', '15.jpg'),
(464, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 15.5, 'S', '15.jpg'),
(465, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 20.5, 'M', '15.jpg'),
(466, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 25.5, 'L', '15.jpg'),
(467, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 30.5, 'XL', '15.jpg'),
(468, 'PIZZA BBQ PARTY', 'a:4:{i:0;s:7:\" boczek\";i:1;s:24:\" kurczak prażona cebula\";i:2;s:28:\" sos BBQ Dark Beer - Roleski\";i:3;s:6:\" ser\r\n\";}', 35.5, 'XXL', '15.jpg'),
(469, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 10.5, 'XS', '16.jpg'),
(470, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 15.5, 'S', '16.jpg'),
(471, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 20.5, 'M', '16.jpg'),
(472, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 25.5, 'L', '16.jpg'),
(473, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 30.5, 'XL', '16.jpg'),
(474, 'PIZZA PARMA FIT', 'a:7:{i:0;s:21:\" szynka dojrzewająca\";i:1;s:17:\" pomidorki cherry\";i:2;s:7:\" rukola\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:15:\" sos pomidorowy\";i:5;s:4:\" ser\";i:6;s:29:\" pestki dyni i słonecznika\r\n\";}', 35.5, 'XXL', '16.jpg'),
(475, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 10.5, 'XS', '17.jpg'),
(476, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 15.5, 'S', '17.jpg'),
(477, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 20.5, 'M', '17.jpg'),
(478, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 25.5, 'L', '17.jpg'),
(479, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 30.5, 'XL', '17.jpg'),
(480, 'PIZZA ZBÓJNICKA', 'a:6:{i:0;s:30:\" ser wędzony rolada ustrzycka\";i:1;s:8:\" kabanos\";i:2;s:10:\" żurawina\";i:3;s:17:\" suszony rozmaryn\";i:4;s:38:\" mix sosów śmietanowy i BBQ pikantny\";i:5;s:6:\" ser\r\n\";}', 35.5, 'XXL', '17.jpg'),
(481, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 10.5, 'XS', '18.jpg'),
(482, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 15.5, 'S', '18.jpg'),
(483, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 20.5, 'M', '18.jpg'),
(484, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 25.5, 'L', '18.jpg'),
(485, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 30.5, 'XL', '18.jpg'),
(486, 'PIZZA KOZACKA', 'a:6:{i:0;s:7:\" boczek\";i:1;s:8:\" kabanos\";i:2;s:10:\" pieczarki\";i:3;s:7:\" cebula\";i:4;s:24:\" sos pomidorowy pikantny\";i:5;s:6:\" ser\r\n\";}', 35.5, 'XXL', '18.jpg'),
(487, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 10.5, 'XS', '19.jpg'),
(488, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 15.5, 'S', '19.jpg'),
(489, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 20.5, 'M', '19.jpg'),
(490, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 25.5, 'L', '19.jpg'),
(491, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 30.5, 'XL', '19.jpg'),
(492, 'PIZZA MEKSYKAŃSKA', 'a:5:{i:0;s:32:\" mięso wołowe-drobiowe (kebab)\";i:1;s:7:\" boczek\";i:2;s:10:\" kukurydza\";i:3;s:18:\" papryka jalapeño\";i:4;s:16:\" sos Jalapeño\r\n\";}', 35.5, 'XXL', '19.jpg'),
(493, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 10.5, 'XS', '20.jpg'),
(494, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 15.5, 'S', '20.jpg'),
(495, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 20.5, 'M', '20.jpg'),
(496, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 25.5, 'L', '20.jpg'),
(497, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 30.5, 'XL', '20.jpg'),
(498, 'PIZZA HOT HABANAS', 'a:5:{i:0;s:7:\" salami\";i:1;s:17:\" papryka kolorowa\";i:2;s:7:\" ananas\";i:3;s:19:\" ser gouda wędzona\";i:4;s:19:\" sos BBQ pikantny\r\n\";}', 35.5, 'XXL', '20.jpg'),
(499, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 10.5, 'XS', '21.jpg'),
(500, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 15.5, 'S', '21.jpg'),
(501, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 20.5, 'M', '21.jpg'),
(502, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 25.5, 'L', '21.jpg'),
(503, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 30.5, 'XL', '21.jpg'),
(504, 'PIZZA BIG MEAT BBQ', 'a:3:{i:0;s:42:\" podwójne mięso wołowo-drobiowe (kebab)\";i:1;s:16:\" cebula prażona\";i:2;s:19:\" sos BBQ pikantny\r\n\";}', 35.5, 'XXL', '21.jpg'),
(505, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 10.5, 'XS', '22.jpg'),
(506, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 15.5, 'S', '22.jpg'),
(507, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 20.5, 'M', '22.jpg'),
(508, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 25.5, 'L', '22.jpg'),
(509, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 30.5, 'XL', '22.jpg'),
(510, 'PIZZA TRZY MIĘSIWA', 'a:5:{i:0;s:7:\" salami\";i:1;s:7:\" szynka\";i:2;s:8:\" kabanos\";i:3;s:17:\" papryka kolorowa\";i:4;s:24:\" sos barbecue pikantny\r\n\";}', 35.5, 'XXL', '22.jpg'),
(511, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 10.5, 'XS', '23.jpg'),
(512, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 15.5, 'S', '23.jpg'),
(513, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 20.5, 'M', '23.jpg'),
(514, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 25.5, 'L', '23.jpg'),
(515, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 30.5, 'XL', '23.jpg'),
(516, 'PIZZA CARBONARA', 'a:4:{i:0;s:7:\" boczek\";i:1;s:7:\" cebula\";i:2;s:11:\" pieczarki \";i:3;s:18:\"sos śmietankowy\r\n\";}', 35.5, 'XXL', '23.jpg'),
(517, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 10.5, 'XS', '24.jpg'),
(518, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 15.5, 'S', '24.jpg'),
(519, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 20.5, 'M', '24.jpg'),
(520, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 25.5, 'L', '24.jpg'),
(521, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 30.5, 'XL', '24.jpg'),
(522, 'PIZZA PIEKIELNY KURCZAK', 'a:5:{i:0;s:14:\" kurczak gyros\";i:1;s:7:\" boczek\";i:2;s:7:\" cebula\";i:3;s:18:\" papryka jalapeńo\";i:4;s:16:\" sos Jalapeńo\r\n\";}', 35.5, 'XXL', '24.jpg'),
(523, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '25.jpg'),
(524, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '25.jpg'),
(525, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '25.jpg'),
(526, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '25.jpg'),
(527, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '25.jpg'),
(528, 'PIZZA BORYNA NA HAWAJACH', 'a:7:{i:0;s:7:\" szynka\";i:1;s:7:\" ananas\";i:2;s:10:\" kukurydza\";i:3;s:23:\" sos pomidorowy kabanos\";i:4;s:10:\" pieczarki\";i:5;s:7:\" cebula\";i:6;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '25.jpg'),
(529, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 10.5, 'XS', '26.jpg'),
(530, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 15.5, 'S', '26.jpg'),
(531, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 20.5, 'M', '26.jpg'),
(532, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 25.5, 'L', '26.jpg'),
(533, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 30.5, 'XL', '26.jpg'),
(534, 'PIZZA BARBECUE', 'a:4:{i:0;s:7:\" boczek\";i:1;s:14:\" kurczak gyros\";i:2;s:7:\" cebula\";i:3;s:15:\" sos Barbecue\r\n\";}', 35.5, 'XXL', '26.jpg'),
(535, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '27.jpg'),
(536, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '27.jpg'),
(537, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '27.jpg'),
(538, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '27.jpg'),
(539, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '27.jpg'),
(540, 'PIZZA WEGETARIAŃSKA', 'a:5:{i:0;s:10:\" pieczarki\";i:1;s:7:\" cebula\";i:2;s:10:\" kukurydza\";i:3;s:17:\" papryka kolorowa\";i:4;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '27.jpg'),
(541, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 10.5, 'XS', '28.jpg'),
(542, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 15.5, 'S', '28.jpg'),
(543, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 20.5, 'M', '28.jpg'),
(544, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 25.5, 'L', '28.jpg'),
(545, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 30.5, 'XL', '28.jpg'),
(546, 'PIZZA KRÓLOWA 6 SERÓW', 'a:5:{i:0;s:23:\" mozzarella w plastrach\";i:1;s:23:\" ser śródziemnomorski\";i:2;s:21:\" ser pleśniowy lazur\";i:3;s:28:\" ser dojrzewający Grangusto\";i:4;s:17:\" Gouda wędzona\r\n\";}', 35.5, 'XXL', '28.jpg'),
(547, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '29.jpg'),
(548, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '29.jpg'),
(549, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '29.jpg'),
(550, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '29.jpg'),
(551, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '29.jpg'),
(552, 'PIZZA EKSKLUZYWNA', 'a:5:{i:0;s:7:\" szynka\";i:1;s:10:\" pieczarki\";i:2;s:17:\" papryka kolorowa\";i:3;s:10:\" kukurydza\";i:4;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '29.jpg'),
(553, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 10.5, 'XS', '30.jpg'),
(554, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 15.5, 'S', '30.jpg'),
(555, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 20.5, 'M', '30.jpg');
INSERT INTO `pizza` (`idpizza`, `nazwa`, `skladniki_json`, `cena`, `rozmiar`, `sciezka_zdjecie`) VALUES
(556, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 25.5, 'L', '30.jpg'),
(557, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 30.5, 'XL', '30.jpg'),
(558, 'PIZZA MARGHERITA', 'a:3:{i:0;s:7:\" ciasto\";i:1;s:22:\" ser mozzarela Galbani\";i:2;s:17:\" sos pomidorowy\r\n\";}', 35.5, 'XXL', '30.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `iduzytkownicy` int(11) NOT NULL,
  `nick` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imie` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nazwisko` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_urodzenia` date NOT NULL,
  `adres` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification_key` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `is_admin` tinyint(4) NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `haslo` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`iduzytkownicy`, `nick`, `imie`, `nazwisko`, `data_urodzenia`, `adres`, `verification_key`, `is_verified`, `is_active`, `is_admin`, `email`, `haslo`) VALUES
(1, 'poiuytrew', 'QWEWQasd', 'qweqwewq', '1996-07-12', 'piastowska29', '0a70857c74b9980c30f5e514af45423a', 0, 1, 0, 'felemim913@tlhao86.com', 'dd7876f0db93084cfb146c1cfb4ce75c'),
(2, 'poiuytrewqdas', 'antoni', 'QWEQWE', '1997-02-28', 'kościuszki 5', '4cab711e9b448c6ef3706a7d8f1de4be', 0, 1, 0, 'baret54025@ddwfzp.com', 'dd7876f0db93084cfb146c1cfb4ce75c'),
(3, 'qawertfyudasdas', 'QWEWQasd', 'kowalski', '1998-02-04', 'piastowska29', 'caba2c904e22bc90f3b3ad8da2bdb188', 0, 1, 0, 'y7y5o3tfxbeu@10minut.xyz', 'dd7876f0db93084cfb146c1cfb4ce75c'),
(4, 'qweqwasdasdasda', 'anglia', 'QWEQWE', '1994-07-08', 'piastowska29', '529085b6b19e8f632561007a5e90a1ef', 1, 1, 0, 'ayjtlhjvbptmjozczg@twzhhq.online', 'dd7876f0db93084cfb146c1cfb4ce75c');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `idzamowienia` int(11) NOT NULL,
  `status_ukonczone` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`idzamowienia`, `status_ukonczone`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia_uzytkownikow`
--

CREATE TABLE `zamowienia_uzytkownikow` (
  `iduzytkownicy` int(11) NOT NULL,
  `idzamowienia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `zamowienia_uzytkownikow`
--

INSERT INTO `zamowienia_uzytkownikow` (`iduzytkownicy`, `idzamowienia`) VALUES
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(4, 21),
(4, 22),
(4, 23),
(4, 24);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zawartosc_zamowien_pizza`
--

CREATE TABLE `zawartosc_zamowien_pizza` (
  `zamowienia_id` int(11) NOT NULL,
  `pizza_id` int(11) NOT NULL,
  `ilosc` int(11) NOT NULL,
  `dodatkowe informacje` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `godzina_przyjecia` time NOT NULL,
  `godzina_wydania` time NOT NULL,
  `jest_koszykiem` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `zawartosc_zamowien_pizza`
--

INSERT INTO `zawartosc_zamowien_pizza` (`zamowienia_id`, `pizza_id`, `ilosc`, `dodatkowe informacje`, `data`, `godzina_przyjecia`, `godzina_wydania`, `jest_koszykiem`) VALUES
(1, 3, 1, '', '0000-00-00', '00:00:00', '00:00:00', 0),
(1, 4, 1, '', '0000-00-00', '00:00:00', '00:00:00', 0),
(2, 3, 1, '', '0000-00-00', '00:00:00', '00:00:00', 0),
(3, 11, 1, '', '0000-00-00', '00:00:00', '00:00:00', 0),
(4, 4, 1, '', '0000-00-00', '00:00:00', '00:00:00', 0),
(5, 16, 1213, '', '0000-00-00', '00:00:00', '00:00:00', 0),
(6, 17, 1, '', '0000-00-00', '00:00:00', '00:00:00', 0),
(7, 16, 1, '', '2021-04-11', '21:07:39', '21:07:39', 0),
(8, 17, 1, '', '2021-04-11', '21:08:07', '00:00:00', 0),
(9, 1, 1, '', '2021-04-11', '21:17:59', '00:00:00', 0),
(10, 2, 1, '', '2021-04-11', '21:18:02', '00:00:00', 0),
(11, 3, 1, '', '2021-04-11', '21:18:07', '00:00:00', 0),
(12, 3, 1, '', '2021-04-11', '21:19:54', '00:00:00', 0),
(13, 3, 1, '', '2021-04-11', '21:20:04', '00:00:00', 0),
(14, 4, 1, '', '2021-04-11', '21:20:06', '00:00:00', 0),
(15, 2, 1, '', '2021-04-11', '21:24:45', '00:00:00', 0),
(16, 1, 1, '', '2021-04-11', '21:27:38', '00:00:00', 0),
(17, 2, 1, '', '2021-04-11', '21:27:40', '00:00:00', 0),
(18, 2, 1, '', '2021-04-11', '21:27:55', '00:00:00', 0),
(19, 7, 1, '', '2021-04-11', '21:27:57', '00:00:00', 0),
(20, 3, 1, '', '2021-04-11', '21:28:05', '00:00:00', 0),
(21, 5, 1, '', '2021-04-11', '21:28:08', '00:00:00', 0),
(22, 2, 1, '', '2021-04-11', '21:28:12', '00:00:00', 0),
(23, 3, 1, '', '2021-04-11', '21:28:14', '00:00:00', 0),
(24, 3, 1, '', '2021-04-11', '21:28:17', '00:00:00', 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`idpizza`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`iduzytkownicy`),
  ADD UNIQUE KEY `nick_UNIQUE` (`nick`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`idzamowienia`);

--
-- Indeksy dla tabeli `zamowienia_uzytkownikow`
--
ALTER TABLE `zamowienia_uzytkownikow`
  ADD PRIMARY KEY (`iduzytkownicy`,`idzamowienia`),
  ADD KEY `fk_uzytkownicy_has_zamówienia_zamówienia1_idx` (`idzamowienia`),
  ADD KEY `fk_uzytkownicy_has_zamówienia_uzytkownicy_idx` (`iduzytkownicy`);

--
-- Indeksy dla tabeli `zawartosc_zamowien_pizza`
--
ALTER TABLE `zawartosc_zamowien_pizza`
  ADD PRIMARY KEY (`zamowienia_id`,`pizza_id`),
  ADD KEY `fk_zamówienia_has_pizza_pizza1_idx` (`pizza_id`),
  ADD KEY `fk_zamówienia_has_pizza_zamówienia1_idx` (`zamowienia_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `pizza`
--
ALTER TABLE `pizza`
  MODIFY `idpizza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=559;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `iduzytkownicy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `idzamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `zamowienia_uzytkownikow`
--
ALTER TABLE `zamowienia_uzytkownikow`
  ADD CONSTRAINT `fk_uzytkownicy_has_zamówienia_uzytkownicy` FOREIGN KEY (`iduzytkownicy`) REFERENCES `uzytkownicy` (`iduzytkownicy`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_uzytkownicy_has_zamówienia_zamówienia1` FOREIGN KEY (`idzamowienia`) REFERENCES `zamowienia` (`idzamowienia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `zawartosc_zamowien_pizza`
--
ALTER TABLE `zawartosc_zamowien_pizza`
  ADD CONSTRAINT `fk_zamówienia_has_pizza_pizza1` FOREIGN KEY (`pizza_id`) REFERENCES `pizza` (`idpizza`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_zamówienia_has_pizza_zamówienia1` FOREIGN KEY (`zamowienia_id`) REFERENCES `zamowienia` (`idzamowienia`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
