-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 21 Mar 2021, 19:15
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
-- Struktura tabeli dla tabeli `administratorzy`
--

CREATE TABLE `administratorzy` (
  `idadministratorzy` int(11) NOT NULL,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(45) NOT NULL,
  `haslo` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `administratorzy`
--

INSERT INTO `administratorzy` (`idadministratorzy`, `imie`, `nazwisko`, `haslo`, `mail`) VALUES
(1, 'Jan', 'Kowalski', 'qwerty', 'qwe@gmail.com'),
(2, 'admin1', 'admin1nazwisko', 'admin', 'admin@admin.com'),
(3, 'admin2', 'admin2nazwisko', 'admin', 'admin@admin.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pizza`
--

CREATE TABLE `pizza` (
  `idpizza` int(11) NOT NULL,
  `nazwa` varchar(45) NOT NULL,
  `skladniki_json` longtext NOT NULL,
  `cena` float NOT NULL,
  `opis` longtext DEFAULT NULL,
  `rozmiar` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pizza`
--

INSERT INTO `pizza` (`idpizza`, `nazwa`, `skladniki_json`, `cena`, `opis`, `rozmiar`) VALUES
(9, 'PIZZA DOUBLE PEPERONI', '[\" podwu00f3jne salami\",\" sos pomidorowy\",\" ser\r\n\"]', 10.5, NULL, 'XS'),
(10, 'PIZZA DOUBLE PEPERONI', '[\" podwu00f3jne salami\",\" sos pomidorowy\",\" ser\r\n\"]', 15.5, NULL, 'S'),
(11, 'PIZZA DOUBLE PEPERONI', '[\" podwu00f3jne salami\",\" sos pomidorowy\",\" ser\r\n\"]', 20.5, NULL, 'M'),
(12, 'PIZZA DOUBLE PEPERONI', '[\" podwu00f3jne salami\",\" sos pomidorowy\",\" ser\r\n\"]', 25.5, NULL, 'L'),
(13, 'PIZZA DOUBLE PEPERONI', '[\" podwu00f3jne salami\",\" sos pomidorowy\",\" ser\r\n\"]', 30.5, NULL, 'XL'),
(14, 'PIZZA DOUBLE PEPERONI', '[\" podwu00f3jne salami\",\" sos pomidorowy\",\" ser\r\n\"]', 35.5, NULL, 'XXL'),
(15, 'PIZZA CAPRICIOSA', '[\" szynka\",\" pieczarki\",\" sos pomidorowy\r\n\"]', 10.5, NULL, 'XS'),
(16, 'PIZZA CAPRICIOSA', '[\" szynka\",\" pieczarki\",\" sos pomidorowy\r\n\"]', 15.5, NULL, 'S'),
(17, 'PIZZA CAPRICIOSA', '[\" szynka\",\" pieczarki\",\" sos pomidorowy\r\n\"]', 20.5, NULL, 'M'),
(18, 'PIZZA CAPRICIOSA', '[\" szynka\",\" pieczarki\",\" sos pomidorowy\r\n\"]', 25.5, NULL, 'L'),
(19, 'PIZZA CAPRICIOSA', '[\" szynka\",\" pieczarki\",\" sos pomidorowy\r\n\"]', 30.5, NULL, 'XL'),
(20, 'PIZZA CAPRICIOSA', '[\" szynka\",\" pieczarki\",\" sos pomidorowy\r\n\"]', 35.5, NULL, 'XXL'),
(21, 'PIZZA KEBAB', '[\" kurczak gyros\",\" cebula\",\" sos Gyros\r\n\"]', 10.5, NULL, 'XS'),
(22, 'PIZZA KEBAB', '[\" kurczak gyros\",\" cebula\",\" sos Gyros\r\n\"]', 15.5, NULL, 'S'),
(23, 'PIZZA KEBAB', '[\" kurczak gyros\",\" cebula\",\" sos Gyros\r\n\"]', 20.5, NULL, 'M'),
(24, 'PIZZA KEBAB', '[\" kurczak gyros\",\" cebula\",\" sos Gyros\r\n\"]', 25.5, NULL, 'L'),
(25, 'PIZZA KEBAB', '[\" kurczak gyros\",\" cebula\",\" sos Gyros\r\n\"]', 30.5, NULL, 'XL'),
(26, 'PIZZA KEBAB', '[\" kurczak gyros\",\" cebula\",\" sos Gyros\r\n\"]', 35.5, NULL, 'XXL'),
(27, 'PIZZA PEPERONI', '[\" salami\",\" cebula\",\" sos pomidorowy\r\n\"]', 10.5, NULL, 'XS'),
(28, 'PIZZA PEPERONI', '[\" salami\",\" cebula\",\" sos pomidorowy\r\n\"]', 15.5, NULL, 'S'),
(29, 'PIZZA PEPERONI', '[\" salami\",\" cebula\",\" sos pomidorowy\r\n\"]', 20.5, NULL, 'M'),
(30, 'PIZZA PEPERONI', '[\" salami\",\" cebula\",\" sos pomidorowy\r\n\"]', 25.5, NULL, 'L'),
(31, 'PIZZA PEPERONI', '[\" salami\",\" cebula\",\" sos pomidorowy\r\n\"]', 30.5, NULL, 'XL'),
(32, 'PIZZA PEPERONI', '[\" salami\",\" cebula\",\" sos pomidorowy\r\n\"]', 35.5, NULL, 'XXL'),
(33, 'PIZZA HAWAJSKA', '[\" szynka\",\" ananas\",\" sos pomidorowy\r\n\"]', 10.5, NULL, 'XS'),
(34, 'PIZZA HAWAJSKA', '[\" szynka\",\" ananas\",\" sos pomidorowy\r\n\"]', 15.5, NULL, 'S'),
(35, 'PIZZA HAWAJSKA', '[\" szynka\",\" ananas\",\" sos pomidorowy\r\n\"]', 20.5, NULL, 'M'),
(36, 'PIZZA HAWAJSKA', '[\" szynka\",\" ananas\",\" sos pomidorowy\r\n\"]', 25.5, NULL, 'L'),
(37, 'PIZZA HAWAJSKA', '[\" szynka\",\" ananas\",\" sos pomidorowy\r\n\"]', 30.5, NULL, 'XL'),
(38, 'PIZZA HAWAJSKA', '[\" szynka\",\" ananas\",\" sos pomidorowy\r\n\"]', 35.5, NULL, 'XXL'),
(39, 'PIZZA TEKSAŃSKI KURCZAK', '[\" kurczak gyros\",\" kukurydza\",\" sos barbecue\r\n\"]', 10.5, NULL, 'XS'),
(40, 'PIZZA TEKSAŃSKI KURCZAK', '[\" kurczak gyros\",\" kukurydza\",\" sos barbecue\r\n\"]', 15.5, NULL, 'S'),
(41, 'PIZZA TEKSAŃSKI KURCZAK', '[\" kurczak gyros\",\" kukurydza\",\" sos barbecue\r\n\"]', 20.5, NULL, 'M'),
(42, 'PIZZA TEKSAŃSKI KURCZAK', '[\" kurczak gyros\",\" kukurydza\",\" sos barbecue\r\n\"]', 25.5, NULL, 'L'),
(43, 'PIZZA TEKSAŃSKI KURCZAK', '[\" kurczak gyros\",\" kukurydza\",\" sos barbecue\r\n\"]', 30.5, NULL, 'XL'),
(44, 'PIZZA TEKSAŃSKI KURCZAK', '[\" kurczak gyros\",\" kukurydza\",\" sos barbecue\r\n\"]', 35.5, NULL, 'XXL'),
(45, 'PIZZA KEBAB DELUXE', '[\" miu0119so wou0142owo-drobiowe kebab\",\" cebula\",\" pomidor\",\" mix sosu00f3w pikantny arabski i pomidorowy\r\n\"]', 10.5, NULL, 'XS'),
(46, 'PIZZA KEBAB DELUXE', '[\" miu0119so wou0142owo-drobiowe kebab\",\" cebula\",\" pomidor\",\" mix sosu00f3w pikantny arabski i pomidorowy\r\n\"]', 15.5, NULL, 'S'),
(47, 'PIZZA KEBAB DELUXE', '[\" miu0119so wou0142owo-drobiowe kebab\",\" cebula\",\" pomidor\",\" mix sosu00f3w pikantny arabski i pomidorowy\r\n\"]', 20.5, NULL, 'M'),
(48, 'PIZZA KEBAB DELUXE', '[\" miu0119so wou0142owo-drobiowe kebab\",\" cebula\",\" pomidor\",\" mix sosu00f3w pikantny arabski i pomidorowy\r\n\"]', 25.5, NULL, 'L'),
(49, 'PIZZA KEBAB DELUXE', '[\" miu0119so wou0142owo-drobiowe kebab\",\" cebula\",\" pomidor\",\" mix sosu00f3w pikantny arabski i pomidorowy\r\n\"]', 30.5, NULL, 'XL'),
(50, 'PIZZA KEBAB DELUXE', '[\" miu0119so wou0142owo-drobiowe kebab\",\" cebula\",\" pomidor\",\" mix sosu00f3w pikantny arabski i pomidorowy\r\n\"]', 35.5, NULL, 'XXL'),
(51, 'PIZZA BARBECUE HABANERO', '[\" kurczak gyros\",\" papryka kolorowa\",\" boczek\",\" mix sosu00f3w u015bmietanowy oraz pikantny Barbecue\r\n\"]', 10.5, NULL, 'XS'),
(52, 'PIZZA BARBECUE HABANERO', '[\" kurczak gyros\",\" papryka kolorowa\",\" boczek\",\" mix sosu00f3w u015bmietanowy oraz pikantny Barbecue\r\n\"]', 15.5, NULL, 'S'),
(53, 'PIZZA BARBECUE HABANERO', '[\" kurczak gyros\",\" papryka kolorowa\",\" boczek\",\" mix sosu00f3w u015bmietanowy oraz pikantny Barbecue\r\n\"]', 20.5, NULL, 'M'),
(54, 'PIZZA BARBECUE HABANERO', '[\" kurczak gyros\",\" papryka kolorowa\",\" boczek\",\" mix sosu00f3w u015bmietanowy oraz pikantny Barbecue\r\n\"]', 25.5, NULL, 'L'),
(55, 'PIZZA BARBECUE HABANERO', '[\" kurczak gyros\",\" papryka kolorowa\",\" boczek\",\" mix sosu00f3w u015bmietanowy oraz pikantny Barbecue\r\n\"]', 30.5, NULL, 'XL'),
(56, 'PIZZA BARBECUE HABANERO', '[\" kurczak gyros\",\" papryka kolorowa\",\" boczek\",\" mix sosu00f3w u015bmietanowy oraz pikantny Barbecue\r\n\"]', 35.5, NULL, 'XXL'),
(57, 'PIZZA ITALIAN FIT', '[\" brokuu0142y\",\" aromatyczny ser u015bru00f3dziemnomorski\",\" u015bwieu017cy pomidor\",\" sos u015bmietanowy\r\n\"]', 10.5, NULL, 'XS'),
(58, 'PIZZA ITALIAN FIT', '[\" brokuu0142y\",\" aromatyczny ser u015bru00f3dziemnomorski\",\" u015bwieu017cy pomidor\",\" sos u015bmietanowy\r\n\"]', 15.5, NULL, 'S'),
(59, 'PIZZA ITALIAN FIT', '[\" brokuu0142y\",\" aromatyczny ser u015bru00f3dziemnomorski\",\" u015bwieu017cy pomidor\",\" sos u015bmietanowy\r\n\"]', 20.5, NULL, 'M'),
(60, 'PIZZA ITALIAN FIT', '[\" brokuu0142y\",\" aromatyczny ser u015bru00f3dziemnomorski\",\" u015bwieu017cy pomidor\",\" sos u015bmietanowy\r\n\"]', 25.5, NULL, 'L'),
(61, 'PIZZA ITALIAN FIT', '[\" brokuu0142y\",\" aromatyczny ser u015bru00f3dziemnomorski\",\" u015bwieu017cy pomidor\",\" sos u015bmietanowy\r\n\"]', 30.5, NULL, 'XL'),
(62, 'PIZZA ITALIAN FIT', '[\" brokuu0142y\",\" aromatyczny ser u015bru00f3dziemnomorski\",\" u015bwieu017cy pomidor\",\" sos u015bmietanowy\r\n\"]', 35.5, NULL, 'XXL'),
(63, 'PIZZA BIESIADA SMAKÓW', '[\" pomidor\",\" szynka\",\" ser gouda wu0119dzona\",\" sos u015bmietanowy\",\" ser \r\n\"]', 10.5, NULL, 'XS'),
(64, 'PIZZA BIESIADA SMAKÓW', '[\" pomidor\",\" szynka\",\" ser gouda wu0119dzona\",\" sos u015bmietanowy\",\" ser \r\n\"]', 15.5, NULL, 'S'),
(65, 'PIZZA BIESIADA SMAKÓW', '[\" pomidor\",\" szynka\",\" ser gouda wu0119dzona\",\" sos u015bmietanowy\",\" ser \r\n\"]', 20.5, NULL, 'M'),
(66, 'PIZZA BIESIADA SMAKÓW', '[\" pomidor\",\" szynka\",\" ser gouda wu0119dzona\",\" sos u015bmietanowy\",\" ser \r\n\"]', 25.5, NULL, 'L'),
(67, 'PIZZA BIESIADA SMAKÓW', '[\" pomidor\",\" szynka\",\" ser gouda wu0119dzona\",\" sos u015bmietanowy\",\" ser \r\n\"]', 30.5, NULL, 'XL'),
(68, 'PIZZA BIESIADA SMAKÓW', '[\" pomidor\",\" szynka\",\" ser gouda wu0119dzona\",\" sos u015bmietanowy\",\" ser \r\n\"]', 35.5, NULL, 'XXL'),
(69, 'PIZZA KRÓLEWSKA GOUDA', '[\" ciasto finetta\",\" boczek\",\" pomidor\",\" gouda wu0119dzona \r\n\"]', 10.5, NULL, 'XS'),
(70, 'PIZZA KRÓLEWSKA GOUDA', '[\" ciasto finetta\",\" boczek\",\" pomidor\",\" gouda wu0119dzona \r\n\"]', 15.5, NULL, 'S'),
(71, 'PIZZA KRÓLEWSKA GOUDA', '[\" ciasto finetta\",\" boczek\",\" pomidor\",\" gouda wu0119dzona \r\n\"]', 20.5, NULL, 'M'),
(72, 'PIZZA KRÓLEWSKA GOUDA', '[\" ciasto finetta\",\" boczek\",\" pomidor\",\" gouda wu0119dzona \r\n\"]', 25.5, NULL, 'L'),
(73, 'PIZZA KRÓLEWSKA GOUDA', '[\" ciasto finetta\",\" boczek\",\" pomidor\",\" gouda wu0119dzona \r\n\"]', 30.5, NULL, 'XL'),
(74, 'PIZZA KRÓLEWSKA GOUDA', '[\" ciasto finetta\",\" boczek\",\" pomidor\",\" gouda wu0119dzona \r\n\"]', 35.5, NULL, 'XXL'),
(75, 'PIZZA GRECKA', '[\" ser u015bru00f3dziemnomorski\",\" oliwki czarne \",\" pomidor\",\" ziou0142a\",\" sos pomidorowy\r\n\"]', 10.5, NULL, 'XS'),
(76, 'PIZZA GRECKA', '[\" ser u015bru00f3dziemnomorski\",\" oliwki czarne \",\" pomidor\",\" ziou0142a\",\" sos pomidorowy\r\n\"]', 15.5, NULL, 'S'),
(77, 'PIZZA GRECKA', '[\" ser u015bru00f3dziemnomorski\",\" oliwki czarne \",\" pomidor\",\" ziou0142a\",\" sos pomidorowy\r\n\"]', 20.5, NULL, 'M'),
(78, 'PIZZA GRECKA', '[\" ser u015bru00f3dziemnomorski\",\" oliwki czarne \",\" pomidor\",\" ziou0142a\",\" sos pomidorowy\r\n\"]', 25.5, NULL, 'L'),
(79, 'PIZZA GRECKA', '[\" ser u015bru00f3dziemnomorski\",\" oliwki czarne \",\" pomidor\",\" ziou0142a\",\" sos pomidorowy\r\n\"]', 30.5, NULL, 'XL'),
(80, 'PIZZA GRECKA', '[\" ser u015bru00f3dziemnomorski\",\" oliwki czarne \",\" pomidor\",\" ziou0142a\",\" sos pomidorowy\r\n\"]', 35.5, NULL, 'XXL'),
(81, 'PIZZA NEAPOLITANA', '[\" salami\",\" oliwki czarne\",\" papryka jalapeu00f1o\",\" sos pomidorowy\r\n\"]', 10.5, NULL, 'XS'),
(82, 'PIZZA NEAPOLITANA', '[\" salami\",\" oliwki czarne\",\" papryka jalapeu00f1o\",\" sos pomidorowy\r\n\"]', 15.5, NULL, 'S'),
(83, 'PIZZA NEAPOLITANA', '[\" salami\",\" oliwki czarne\",\" papryka jalapeu00f1o\",\" sos pomidorowy\r\n\"]', 20.5, NULL, 'M'),
(84, 'PIZZA NEAPOLITANA', '[\" salami\",\" oliwki czarne\",\" papryka jalapeu00f1o\",\" sos pomidorowy\r\n\"]', 25.5, NULL, 'L'),
(85, 'PIZZA NEAPOLITANA', '[\" salami\",\" oliwki czarne\",\" papryka jalapeu00f1o\",\" sos pomidorowy\r\n\"]', 30.5, NULL, 'XL'),
(86, 'PIZZA NEAPOLITANA', '[\" salami\",\" oliwki czarne\",\" papryka jalapeu00f1o\",\" sos pomidorowy\r\n\"]', 35.5, NULL, 'XXL'),
(87, 'PIZZA UŚMIECH BORYNY', '[\" kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy\r\n\"]', 10.5, NULL, 'XS'),
(88, 'PIZZA UŚMIECH BORYNY', '[\" kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy\r\n\"]', 15.5, NULL, 'S'),
(89, 'PIZZA UŚMIECH BORYNY', '[\" kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy\r\n\"]', 20.5, NULL, 'M'),
(90, 'PIZZA UŚMIECH BORYNY', '[\" kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy\r\n\"]', 25.5, NULL, 'L'),
(91, 'PIZZA UŚMIECH BORYNY', '[\" kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy\r\n\"]', 30.5, NULL, 'XL'),
(92, 'PIZZA UŚMIECH BORYNY', '[\" kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy\r\n\"]', 35.5, NULL, 'XXL'),
(93, 'PIZZA BIESIADA SEROWA', '[\" z serem pleu015bniowym\",\" sos pomidorowy\r\n\"]', 10.5, NULL, 'XS'),
(94, 'PIZZA BIESIADA SEROWA', '[\" z serem pleu015bniowym\",\" sos pomidorowy\r\n\"]', 15.5, NULL, 'S'),
(95, 'PIZZA BIESIADA SEROWA', '[\" z serem pleu015bniowym\",\" sos pomidorowy\r\n\"]', 20.5, NULL, 'M'),
(96, 'PIZZA BIESIADA SEROWA', '[\" z serem pleu015bniowym\",\" sos pomidorowy\r\n\"]', 25.5, NULL, 'L'),
(97, 'PIZZA BIESIADA SEROWA', '[\" z serem pleu015bniowym\",\" sos pomidorowy\r\n\"]', 30.5, NULL, 'XL'),
(98, 'PIZZA BIESIADA SEROWA', '[\" z serem pleu015bniowym\",\" sos pomidorowy\r\n\"]', 35.5, NULL, 'XXL'),
(99, 'PIZZA BBQ PARTY', '[\" boczek\",\" kurczak prau017cona cebula\",\" sos BBQ Dark Beer - Roleski\",\" ser\r\n\"]', 10.5, NULL, 'XS'),
(100, 'PIZZA BBQ PARTY', '[\" boczek\",\" kurczak prau017cona cebula\",\" sos BBQ Dark Beer - Roleski\",\" ser\r\n\"]', 15.5, NULL, 'S'),
(101, 'PIZZA BBQ PARTY', '[\" boczek\",\" kurczak prau017cona cebula\",\" sos BBQ Dark Beer - Roleski\",\" ser\r\n\"]', 20.5, NULL, 'M'),
(102, 'PIZZA BBQ PARTY', '[\" boczek\",\" kurczak prau017cona cebula\",\" sos BBQ Dark Beer - Roleski\",\" ser\r\n\"]', 25.5, NULL, 'L'),
(103, 'PIZZA BBQ PARTY', '[\" boczek\",\" kurczak prau017cona cebula\",\" sos BBQ Dark Beer - Roleski\",\" ser\r\n\"]', 30.5, NULL, 'XL'),
(104, 'PIZZA BBQ PARTY', '[\" boczek\",\" kurczak prau017cona cebula\",\" sos BBQ Dark Beer - Roleski\",\" ser\r\n\"]', 35.5, NULL, 'XXL'),
(105, 'PIZZA PARMA FIT', '[\" szynka dojrzewaju0105ca\",\" pomidorki cherry\",\" rukola\",\" ser dojrzewaju0105cy Grangusto\",\" sos pomidorowy\",\" ser\",\" pestki dyni i su0142onecznika\r\n\"]', 10.5, NULL, 'XS'),
(106, 'PIZZA PARMA FIT', '[\" szynka dojrzewaju0105ca\",\" pomidorki cherry\",\" rukola\",\" ser dojrzewaju0105cy Grangusto\",\" sos pomidorowy\",\" ser\",\" pestki dyni i su0142onecznika\r\n\"]', 15.5, NULL, 'S'),
(107, 'PIZZA PARMA FIT', '[\" szynka dojrzewaju0105ca\",\" pomidorki cherry\",\" rukola\",\" ser dojrzewaju0105cy Grangusto\",\" sos pomidorowy\",\" ser\",\" pestki dyni i su0142onecznika\r\n\"]', 20.5, NULL, 'M'),
(108, 'PIZZA PARMA FIT', '[\" szynka dojrzewaju0105ca\",\" pomidorki cherry\",\" rukola\",\" ser dojrzewaju0105cy Grangusto\",\" sos pomidorowy\",\" ser\",\" pestki dyni i su0142onecznika\r\n\"]', 25.5, NULL, 'L'),
(109, 'PIZZA PARMA FIT', '[\" szynka dojrzewaju0105ca\",\" pomidorki cherry\",\" rukola\",\" ser dojrzewaju0105cy Grangusto\",\" sos pomidorowy\",\" ser\",\" pestki dyni i su0142onecznika\r\n\"]', 30.5, NULL, 'XL'),
(110, 'PIZZA PARMA FIT', '[\" szynka dojrzewaju0105ca\",\" pomidorki cherry\",\" rukola\",\" ser dojrzewaju0105cy Grangusto\",\" sos pomidorowy\",\" ser\",\" pestki dyni i su0142onecznika\r\n\"]', 35.5, NULL, 'XXL'),
(111, 'PIZZA ZBÓJNICKA', '[\" ser wu0119dzony rolada ustrzycka\",\" kabanos\",\" u017curawina\",\" suszony rozmaryn\",\" mix sosu00f3w u015bmietanowy i BBQ pikantny\",\" ser\r\n\"]', 10.5, NULL, 'XS'),
(112, 'PIZZA ZBÓJNICKA', '[\" ser wu0119dzony rolada ustrzycka\",\" kabanos\",\" u017curawina\",\" suszony rozmaryn\",\" mix sosu00f3w u015bmietanowy i BBQ pikantny\",\" ser\r\n\"]', 15.5, NULL, 'S'),
(113, 'PIZZA ZBÓJNICKA', '[\" ser wu0119dzony rolada ustrzycka\",\" kabanos\",\" u017curawina\",\" suszony rozmaryn\",\" mix sosu00f3w u015bmietanowy i BBQ pikantny\",\" ser\r\n\"]', 20.5, NULL, 'M'),
(114, 'PIZZA ZBÓJNICKA', '[\" ser wu0119dzony rolada ustrzycka\",\" kabanos\",\" u017curawina\",\" suszony rozmaryn\",\" mix sosu00f3w u015bmietanowy i BBQ pikantny\",\" ser\r\n\"]', 25.5, NULL, 'L'),
(115, 'PIZZA ZBÓJNICKA', '[\" ser wu0119dzony rolada ustrzycka\",\" kabanos\",\" u017curawina\",\" suszony rozmaryn\",\" mix sosu00f3w u015bmietanowy i BBQ pikantny\",\" ser\r\n\"]', 30.5, NULL, 'XL'),
(116, 'PIZZA ZBÓJNICKA', '[\" ser wu0119dzony rolada ustrzycka\",\" kabanos\",\" u017curawina\",\" suszony rozmaryn\",\" mix sosu00f3w u015bmietanowy i BBQ pikantny\",\" ser\r\n\"]', 35.5, NULL, 'XXL'),
(117, 'PIZZA KOZACKA', '[\" boczek\",\" kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy pikantny\",\" ser\r\n\"]', 10.5, NULL, 'XS'),
(118, 'PIZZA KOZACKA', '[\" boczek\",\" kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy pikantny\",\" ser\r\n\"]', 15.5, NULL, 'S'),
(119, 'PIZZA KOZACKA', '[\" boczek\",\" kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy pikantny\",\" ser\r\n\"]', 20.5, NULL, 'M'),
(120, 'PIZZA KOZACKA', '[\" boczek\",\" kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy pikantny\",\" ser\r\n\"]', 25.5, NULL, 'L'),
(121, 'PIZZA KOZACKA', '[\" boczek\",\" kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy pikantny\",\" ser\r\n\"]', 30.5, NULL, 'XL'),
(122, 'PIZZA KOZACKA', '[\" boczek\",\" kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy pikantny\",\" ser\r\n\"]', 35.5, NULL, 'XXL'),
(123, 'PIZZA MEKSYKAŃSKA', '[\" miu0119so wou0142owe-drobiowe (kebab)\",\" boczek\",\" kukurydza\",\" papryka jalapeu00f1o\",\" sos Jalapeu00f1o\r\n\"]', 10.5, NULL, 'XS'),
(124, 'PIZZA MEKSYKAŃSKA', '[\" miu0119so wou0142owe-drobiowe (kebab)\",\" boczek\",\" kukurydza\",\" papryka jalapeu00f1o\",\" sos Jalapeu00f1o\r\n\"]', 15.5, NULL, 'S'),
(125, 'PIZZA MEKSYKAŃSKA', '[\" miu0119so wou0142owe-drobiowe (kebab)\",\" boczek\",\" kukurydza\",\" papryka jalapeu00f1o\",\" sos Jalapeu00f1o\r\n\"]', 20.5, NULL, 'M'),
(126, 'PIZZA MEKSYKAŃSKA', '[\" miu0119so wou0142owe-drobiowe (kebab)\",\" boczek\",\" kukurydza\",\" papryka jalapeu00f1o\",\" sos Jalapeu00f1o\r\n\"]', 25.5, NULL, 'L'),
(127, 'PIZZA MEKSYKAŃSKA', '[\" miu0119so wou0142owe-drobiowe (kebab)\",\" boczek\",\" kukurydza\",\" papryka jalapeu00f1o\",\" sos Jalapeu00f1o\r\n\"]', 30.5, NULL, 'XL'),
(128, 'PIZZA MEKSYKAŃSKA', '[\" miu0119so wou0142owe-drobiowe (kebab)\",\" boczek\",\" kukurydza\",\" papryka jalapeu00f1o\",\" sos Jalapeu00f1o\r\n\"]', 35.5, NULL, 'XXL'),
(129, 'PIZZA HOT HABANAS', '[\" salami\",\" papryka kolorowa\",\" ananas\",\" ser gouda wu0119dzona\",\" sos BBQ pikantny\r\n\"]', 10.5, NULL, 'XS'),
(130, 'PIZZA HOT HABANAS', '[\" salami\",\" papryka kolorowa\",\" ananas\",\" ser gouda wu0119dzona\",\" sos BBQ pikantny\r\n\"]', 15.5, NULL, 'S'),
(131, 'PIZZA HOT HABANAS', '[\" salami\",\" papryka kolorowa\",\" ananas\",\" ser gouda wu0119dzona\",\" sos BBQ pikantny\r\n\"]', 20.5, NULL, 'M'),
(132, 'PIZZA HOT HABANAS', '[\" salami\",\" papryka kolorowa\",\" ananas\",\" ser gouda wu0119dzona\",\" sos BBQ pikantny\r\n\"]', 25.5, NULL, 'L'),
(133, 'PIZZA HOT HABANAS', '[\" salami\",\" papryka kolorowa\",\" ananas\",\" ser gouda wu0119dzona\",\" sos BBQ pikantny\r\n\"]', 30.5, NULL, 'XL'),
(134, 'PIZZA HOT HABANAS', '[\" salami\",\" papryka kolorowa\",\" ananas\",\" ser gouda wu0119dzona\",\" sos BBQ pikantny\r\n\"]', 35.5, NULL, 'XXL'),
(135, 'PIZZA BIG MEAT BBQ', '[\" podwu00f3jne miu0119so wou0142owo-drobiowe (kebab)\",\" cebula prau017cona\",\" sos BBQ pikantny\r\n\"]', 10.5, NULL, 'XS'),
(136, 'PIZZA BIG MEAT BBQ', '[\" podwu00f3jne miu0119so wou0142owo-drobiowe (kebab)\",\" cebula prau017cona\",\" sos BBQ pikantny\r\n\"]', 15.5, NULL, 'S'),
(137, 'PIZZA BIG MEAT BBQ', '[\" podwu00f3jne miu0119so wou0142owo-drobiowe (kebab)\",\" cebula prau017cona\",\" sos BBQ pikantny\r\n\"]', 20.5, NULL, 'M'),
(138, 'PIZZA BIG MEAT BBQ', '[\" podwu00f3jne miu0119so wou0142owo-drobiowe (kebab)\",\" cebula prau017cona\",\" sos BBQ pikantny\r\n\"]', 25.5, NULL, 'L'),
(139, 'PIZZA BIG MEAT BBQ', '[\" podwu00f3jne miu0119so wou0142owo-drobiowe (kebab)\",\" cebula prau017cona\",\" sos BBQ pikantny\r\n\"]', 30.5, NULL, 'XL'),
(140, 'PIZZA BIG MEAT BBQ', '[\" podwu00f3jne miu0119so wou0142owo-drobiowe (kebab)\",\" cebula prau017cona\",\" sos BBQ pikantny\r\n\"]', 35.5, NULL, 'XXL'),
(141, 'PIZZA TRZY MIĘSIWA', '[\" salami\",\" szynka\",\" kabanos\",\" papryka kolorowa\",\" sos barbecue pikantny\r\n\"]', 10.5, NULL, 'XS'),
(142, 'PIZZA TRZY MIĘSIWA', '[\" salami\",\" szynka\",\" kabanos\",\" papryka kolorowa\",\" sos barbecue pikantny\r\n\"]', 15.5, NULL, 'S'),
(143, 'PIZZA TRZY MIĘSIWA', '[\" salami\",\" szynka\",\" kabanos\",\" papryka kolorowa\",\" sos barbecue pikantny\r\n\"]', 20.5, NULL, 'M'),
(144, 'PIZZA TRZY MIĘSIWA', '[\" salami\",\" szynka\",\" kabanos\",\" papryka kolorowa\",\" sos barbecue pikantny\r\n\"]', 25.5, NULL, 'L'),
(145, 'PIZZA TRZY MIĘSIWA', '[\" salami\",\" szynka\",\" kabanos\",\" papryka kolorowa\",\" sos barbecue pikantny\r\n\"]', 30.5, NULL, 'XL'),
(146, 'PIZZA TRZY MIĘSIWA', '[\" salami\",\" szynka\",\" kabanos\",\" papryka kolorowa\",\" sos barbecue pikantny\r\n\"]', 35.5, NULL, 'XXL'),
(147, 'PIZZA CARBONARA', '[\" boczek\",\" cebula\",\" pieczarki \",\"sos u015bmietankowy\r\n\"]', 10.5, NULL, 'XS'),
(148, 'PIZZA CARBONARA', '[\" boczek\",\" cebula\",\" pieczarki \",\"sos u015bmietankowy\r\n\"]', 15.5, NULL, 'S'),
(149, 'PIZZA CARBONARA', '[\" boczek\",\" cebula\",\" pieczarki \",\"sos u015bmietankowy\r\n\"]', 20.5, NULL, 'M'),
(150, 'PIZZA CARBONARA', '[\" boczek\",\" cebula\",\" pieczarki \",\"sos u015bmietankowy\r\n\"]', 25.5, NULL, 'L'),
(151, 'PIZZA CARBONARA', '[\" boczek\",\" cebula\",\" pieczarki \",\"sos u015bmietankowy\r\n\"]', 30.5, NULL, 'XL'),
(152, 'PIZZA CARBONARA', '[\" boczek\",\" cebula\",\" pieczarki \",\"sos u015bmietankowy\r\n\"]', 35.5, NULL, 'XXL'),
(153, 'PIZZA PIEKIELNY KURCZAK', '[\" kurczak gyros\",\" boczek\",\" cebula\",\" papryka jalapeu0144o\",\" sos Jalapeu0144o\r\n\"]', 10.5, NULL, 'XS'),
(154, 'PIZZA PIEKIELNY KURCZAK', '[\" kurczak gyros\",\" boczek\",\" cebula\",\" papryka jalapeu0144o\",\" sos Jalapeu0144o\r\n\"]', 15.5, NULL, 'S'),
(155, 'PIZZA PIEKIELNY KURCZAK', '[\" kurczak gyros\",\" boczek\",\" cebula\",\" papryka jalapeu0144o\",\" sos Jalapeu0144o\r\n\"]', 20.5, NULL, 'M'),
(156, 'PIZZA PIEKIELNY KURCZAK', '[\" kurczak gyros\",\" boczek\",\" cebula\",\" papryka jalapeu0144o\",\" sos Jalapeu0144o\r\n\"]', 25.5, NULL, 'L'),
(157, 'PIZZA PIEKIELNY KURCZAK', '[\" kurczak gyros\",\" boczek\",\" cebula\",\" papryka jalapeu0144o\",\" sos Jalapeu0144o\r\n\"]', 30.5, NULL, 'XL'),
(158, 'PIZZA PIEKIELNY KURCZAK', '[\" kurczak gyros\",\" boczek\",\" cebula\",\" papryka jalapeu0144o\",\" sos Jalapeu0144o\r\n\"]', 35.5, NULL, 'XXL'),
(159, 'PIZZA BORYNA NA HAWAJACH', '[\" szynka\",\" ananas\",\" kukurydza\",\" sos pomidorowy kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy\r\n\"]', 10.5, NULL, 'XS'),
(160, 'PIZZA BORYNA NA HAWAJACH', '[\" szynka\",\" ananas\",\" kukurydza\",\" sos pomidorowy kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy\r\n\"]', 15.5, NULL, 'S'),
(161, 'PIZZA BORYNA NA HAWAJACH', '[\" szynka\",\" ananas\",\" kukurydza\",\" sos pomidorowy kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy\r\n\"]', 20.5, NULL, 'M'),
(162, 'PIZZA BORYNA NA HAWAJACH', '[\" szynka\",\" ananas\",\" kukurydza\",\" sos pomidorowy kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy\r\n\"]', 25.5, NULL, 'L'),
(163, 'PIZZA BORYNA NA HAWAJACH', '[\" szynka\",\" ananas\",\" kukurydza\",\" sos pomidorowy kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy\r\n\"]', 30.5, NULL, 'XL'),
(164, 'PIZZA BORYNA NA HAWAJACH', '[\" szynka\",\" ananas\",\" kukurydza\",\" sos pomidorowy kabanos\",\" pieczarki\",\" cebula\",\" sos pomidorowy\r\n\"]', 35.5, NULL, 'XXL'),
(165, 'PIZZA BARBECUE', '[\" boczek\",\" kurczak gyros\",\" cebula\",\" sos Barbecue\r\n\"]', 10.5, NULL, 'XS'),
(166, 'PIZZA BARBECUE', '[\" boczek\",\" kurczak gyros\",\" cebula\",\" sos Barbecue\r\n\"]', 15.5, NULL, 'S'),
(167, 'PIZZA BARBECUE', '[\" boczek\",\" kurczak gyros\",\" cebula\",\" sos Barbecue\r\n\"]', 20.5, NULL, 'M'),
(168, 'PIZZA BARBECUE', '[\" boczek\",\" kurczak gyros\",\" cebula\",\" sos Barbecue\r\n\"]', 25.5, NULL, 'L'),
(169, 'PIZZA BARBECUE', '[\" boczek\",\" kurczak gyros\",\" cebula\",\" sos Barbecue\r\n\"]', 30.5, NULL, 'XL'),
(170, 'PIZZA BARBECUE', '[\" boczek\",\" kurczak gyros\",\" cebula\",\" sos Barbecue\r\n\"]', 35.5, NULL, 'XXL'),
(171, 'PIZZA WEGETARIAŃSKA', '[\" pieczarki\",\" cebula\",\" kukurydza\",\" papryka kolorowa\",\" sos pomidorowy\r\n\"]', 10.5, NULL, 'XS'),
(172, 'PIZZA WEGETARIAŃSKA', '[\" pieczarki\",\" cebula\",\" kukurydza\",\" papryka kolorowa\",\" sos pomidorowy\r\n\"]', 15.5, NULL, 'S'),
(173, 'PIZZA WEGETARIAŃSKA', '[\" pieczarki\",\" cebula\",\" kukurydza\",\" papryka kolorowa\",\" sos pomidorowy\r\n\"]', 20.5, NULL, 'M'),
(174, 'PIZZA WEGETARIAŃSKA', '[\" pieczarki\",\" cebula\",\" kukurydza\",\" papryka kolorowa\",\" sos pomidorowy\r\n\"]', 25.5, NULL, 'L'),
(175, 'PIZZA WEGETARIAŃSKA', '[\" pieczarki\",\" cebula\",\" kukurydza\",\" papryka kolorowa\",\" sos pomidorowy\r\n\"]', 30.5, NULL, 'XL'),
(176, 'PIZZA WEGETARIAŃSKA', '[\" pieczarki\",\" cebula\",\" kukurydza\",\" papryka kolorowa\",\" sos pomidorowy\r\n\"]', 35.5, NULL, 'XXL'),
(177, 'PIZZA KRÓLOWA 6 SERÓW', '[\" mozzarella w plastrach\",\" ser u015bru00f3dziemnomorski\",\" ser pleu015bniowy lazur\",\" ser dojrzewaju0105cy Grangusto\",\" Gouda wu0119dzona\r\n\"]', 10.5, NULL, 'XS'),
(178, 'PIZZA KRÓLOWA 6 SERÓW', '[\" mozzarella w plastrach\",\" ser u015bru00f3dziemnomorski\",\" ser pleu015bniowy lazur\",\" ser dojrzewaju0105cy Grangusto\",\" Gouda wu0119dzona\r\n\"]', 15.5, NULL, 'S'),
(179, 'PIZZA KRÓLOWA 6 SERÓW', '[\" mozzarella w plastrach\",\" ser u015bru00f3dziemnomorski\",\" ser pleu015bniowy lazur\",\" ser dojrzewaju0105cy Grangusto\",\" Gouda wu0119dzona\r\n\"]', 20.5, NULL, 'M'),
(180, 'PIZZA KRÓLOWA 6 SERÓW', '[\" mozzarella w plastrach\",\" ser u015bru00f3dziemnomorski\",\" ser pleu015bniowy lazur\",\" ser dojrzewaju0105cy Grangusto\",\" Gouda wu0119dzona\r\n\"]', 25.5, NULL, 'L'),
(181, 'PIZZA KRÓLOWA 6 SERÓW', '[\" mozzarella w plastrach\",\" ser u015bru00f3dziemnomorski\",\" ser pleu015bniowy lazur\",\" ser dojrzewaju0105cy Grangusto\",\" Gouda wu0119dzona\r\n\"]', 30.5, NULL, 'XL'),
(182, 'PIZZA KRÓLOWA 6 SERÓW', '[\" mozzarella w plastrach\",\" ser u015bru00f3dziemnomorski\",\" ser pleu015bniowy lazur\",\" ser dojrzewaju0105cy Grangusto\",\" Gouda wu0119dzona\r\n\"]', 35.5, NULL, 'XXL'),
(183, 'PIZZA EKSKLUZYWNA', '[\" szynka\",\" pieczarki\",\" papryka kolorowa\",\" kukurydza\",\" sos pomidorowy\r\n\"]', 10.5, NULL, 'XS'),
(184, 'PIZZA EKSKLUZYWNA', '[\" szynka\",\" pieczarki\",\" papryka kolorowa\",\" kukurydza\",\" sos pomidorowy\r\n\"]', 15.5, NULL, 'S'),
(185, 'PIZZA EKSKLUZYWNA', '[\" szynka\",\" pieczarki\",\" papryka kolorowa\",\" kukurydza\",\" sos pomidorowy\r\n\"]', 20.5, NULL, 'M'),
(186, 'PIZZA EKSKLUZYWNA', '[\" szynka\",\" pieczarki\",\" papryka kolorowa\",\" kukurydza\",\" sos pomidorowy\r\n\"]', 25.5, NULL, 'L'),
(187, 'PIZZA EKSKLUZYWNA', '[\" szynka\",\" pieczarki\",\" papryka kolorowa\",\" kukurydza\",\" sos pomidorowy\r\n\"]', 30.5, NULL, 'XL'),
(188, 'PIZZA EKSKLUZYWNA', '[\" szynka\",\" pieczarki\",\" papryka kolorowa\",\" kukurydza\",\" sos pomidorowy\r\n\"]', 35.5, NULL, 'XXL'),
(189, 'PIZZA MARGHERITA', '[\" ciasto\",\" ser mozzarela Galbani\",\" sos pomidorowy\r\n\"]', 10.5, NULL, 'XS'),
(190, 'PIZZA MARGHERITA', '[\" ciasto\",\" ser mozzarela Galbani\",\" sos pomidorowy\r\n\"]', 15.5, NULL, 'S'),
(191, 'PIZZA MARGHERITA', '[\" ciasto\",\" ser mozzarela Galbani\",\" sos pomidorowy\r\n\"]', 20.5, NULL, 'M'),
(192, 'PIZZA MARGHERITA', '[\" ciasto\",\" ser mozzarela Galbani\",\" sos pomidorowy\r\n\"]', 25.5, NULL, 'L'),
(193, 'PIZZA MARGHERITA', '[\" ciasto\",\" ser mozzarela Galbani\",\" sos pomidorowy\r\n\"]', 30.5, NULL, 'XL'),
(194, 'PIZZA MARGHERITA', '[\" ciasto\",\" ser mozzarela Galbani\",\" sos pomidorowy\r\n\"]', 35.5, NULL, 'XXL');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `iduzytkownicy` int(11) NOT NULL,
  `nick` varchar(15) NOT NULL,
  `data_urodzenia` date NOT NULL,
  `verification_key` varchar(45) NOT NULL,
  `is_varified` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `email` varchar(45) NOT NULL,
  `haslo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`iduzytkownicy`, `nick`, `data_urodzenia`, `verification_key`, `is_varified`, `is_active`, `email`, `haslo`) VALUES
(1, 'asd', '2021-03-09', '', 1, 1, 'sda@asdqw.com', '1234qwertyu'),
(2, 'qwe', '2021-03-05', '', 0, 1, 'adwq@oapsd,com', '123456789'),
(3, 'user1', '2021-03-09', '', 0, 1, 'user1@email.com', 'user1.haslo'),
(4, 'user2', '2021-04-01', '', 0, 1, 'user2@gmail.com', 'user2.haslo'),
(5, 'user2', '2021-04-01', '', 1, 1, 'user2@gmail.com', 'user2.haslo');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamówienia`
--

CREATE TABLE `zamówienia` (
  `idzamówienia` int(11) NOT NULL,
  `status_ukonczone` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamówienia_uzytkownikow`
--

CREATE TABLE `zamówienia_uzytkownikow` (
  `iduzytkownicy` int(11) NOT NULL,
  `idzamówienia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zawartosc_zamowien_pizza`
--

CREATE TABLE `zawartosc_zamowien_pizza` (
  `zamówienia_idzamówienia` int(11) NOT NULL,
  `pizza_idpizza` int(11) NOT NULL,
  `ilosc` int(11) NOT NULL,
  `dodatkowe informacje` varchar(45) NOT NULL,
  `data` date NOT NULL,
  `godzina_przyjecia` time NOT NULL,
  `godzina_wydania` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `administratorzy`
--
ALTER TABLE `administratorzy`
  ADD PRIMARY KEY (`idadministratorzy`);

--
-- Indeksy dla tabeli `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`idpizza`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`iduzytkownicy`);

--
-- Indeksy dla tabeli `zamówienia`
--
ALTER TABLE `zamówienia`
  ADD PRIMARY KEY (`idzamówienia`);

--
-- Indeksy dla tabeli `zamówienia_uzytkownikow`
--
ALTER TABLE `zamówienia_uzytkownikow`
  ADD PRIMARY KEY (`iduzytkownicy`,`idzamówienia`),
  ADD KEY `fk_uzytkownicy_has_zamówienia_zamówienia1_idx` (`idzamówienia`),
  ADD KEY `fk_uzytkownicy_has_zamówienia_uzytkownicy_idx` (`iduzytkownicy`);

--
-- Indeksy dla tabeli `zawartosc_zamowien_pizza`
--
ALTER TABLE `zawartosc_zamowien_pizza`
  ADD PRIMARY KEY (`zamówienia_idzamówienia`,`pizza_idpizza`),
  ADD KEY `fk_zamówienia_has_pizza_pizza1_idx` (`pizza_idpizza`),
  ADD KEY `fk_zamówienia_has_pizza_zamówienia1_idx` (`zamówienia_idzamówienia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `administratorzy`
--
ALTER TABLE `administratorzy`
  MODIFY `idadministratorzy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `pizza`
--
ALTER TABLE `pizza`
  MODIFY `idpizza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `iduzytkownicy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `zamówienia`
--
ALTER TABLE `zamówienia`
  MODIFY `idzamówienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `zamówienia_uzytkownikow`
--
ALTER TABLE `zamówienia_uzytkownikow`
  ADD CONSTRAINT `fk_uzytkownicy_has_zamówienia_uzytkownicy` FOREIGN KEY (`iduzytkownicy`) REFERENCES `uzytkownicy` (`iduzytkownicy`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_uzytkownicy_has_zamówienia_zamówienia1` FOREIGN KEY (`idzamówienia`) REFERENCES `zamówienia` (`idzamówienia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `zawartosc_zamowien_pizza`
--
ALTER TABLE `zawartosc_zamowien_pizza`
  ADD CONSTRAINT `fk_zamówienia_has_pizza_pizza1` FOREIGN KEY (`pizza_idpizza`) REFERENCES `pizza` (`idpizza`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_zamówienia_has_pizza_zamówienia1` FOREIGN KEY (`zamówienia_idzamówienia`) REFERENCES `zamówienia` (`idzamówienia`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
