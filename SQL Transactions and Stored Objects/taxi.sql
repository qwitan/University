-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 18, 2019 at 11:38 AM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taxi`
--

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `idBooking` int(11) NOT NULL,
  `Customer_idCustomer` int(11) DEFAULT NULL,
  `Car_idCar` int(11) NOT NULL,
  `Driver_idDriver` int(11) NOT NULL,
  `DistanceInKM` decimal(5,2) NOT NULL,
  `TimeInMIn` int(11) NOT NULL,
  `BookingTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Booking`
--

INSERT INTO `Booking` (`idBooking`, `Customer_idCustomer`, `Car_idCar`, `Driver_idDriver`, `DistanceInKM`, `TimeInMIn`, `BookingTime`) VALUES
(1, 16, 8, 5, '12.00', 15, '2018-10-21 00:59:20'),
(2, 54, 1, 12, '12.00', 15, '2019-08-22 17:49:30'),
(3, 65, 5, 3, '12.00', 15, '2019-08-07 16:42:49'),
(4, 88, 1, 7, '12.00', 15, '2019-05-22 00:37:53'),
(5, 86, 3, 6, '12.00', 15, '2019-06-08 07:13:40'),
(6, 66, 2, 6, '15.00', 15, '2019-03-28 01:43:45'),
(7, 55, 4, 2, '11.00', 16, '2019-05-30 13:17:36'),
(8, 25, 6, 9, '11.00', 15, '2018-10-05 04:33:38'),
(9, 11, 8, 9, '9.00', 15, '2019-05-13 07:56:07'),
(10, 59, 8, 12, '12.00', 16, '2019-07-07 12:40:31'),
(11, 75, 4, 11, '13.00', 14, '2019-05-28 08:54:19'),
(12, 81, 2, 12, '12.00', 14, '2019-08-21 04:56:29'),
(13, 94, 3, 1, '11.00', 15, '2019-01-22 01:02:06'),
(14, 44, 8, 11, '13.00', 15, '2018-10-13 06:49:42'),
(15, 62, 3, 8, '12.00', 15, '2019-04-03 19:08:24'),
(16, 30, 6, 12, '13.00', 15, '2019-09-04 14:20:28'),
(17, 95, 8, 12, '14.00', 15, '2019-07-24 13:16:31'),
(18, 27, 1, 8, '12.00', 15, '2019-02-06 10:23:10'),
(19, 99, 5, 10, '13.00', 16, '2019-08-20 23:43:51'),
(20, 33, 4, 9, '12.00', 15, '2019-03-30 23:35:23'),
(21, 64, 3, 12, '12.00', 15, '2018-11-16 07:29:10'),
(22, 8, 5, 9, '12.00', 16, '2019-03-21 21:14:27'),
(23, 81, 7, 8, '15.00', 15, '2019-07-21 05:03:56'),
(24, 43, 1, 8, '11.00', 16, '2019-07-09 20:13:10'),
(25, 97, 7, 7, '11.00', 14, '2018-11-02 06:01:31'),
(26, 64, 6, 12, '12.00', 15, '2019-08-09 03:18:57'),
(27, 5, 8, 1, '13.00', 15, '2019-08-16 05:50:54'),
(28, 6, 5, 2, '12.00', 15, '2018-12-14 19:12:49'),
(29, 55, 3, 4, '14.00', 15, '2019-03-24 05:52:47'),
(30, 92, 5, 10, '13.00', 16, '2018-10-13 04:21:43'),
(31, 87, 8, 7, '12.00', 15, '2019-01-21 12:41:27'),
(32, 34, 4, 9, '12.00', 14, '2019-07-23 04:00:36'),
(33, 45, 4, 12, '13.00', 15, '2019-05-01 04:19:35'),
(34, 23, 7, 8, '13.00', 15, '2019-06-30 16:52:41'),
(35, 81, 2, 12, '11.00', 15, '2019-09-04 10:08:30'),
(36, 37, 6, 1, '9.00', 15, '2019-05-27 13:47:51'),
(37, 19, 3, 10, '12.00', 15, '2018-12-09 08:44:03'),
(38, 88, 7, 12, '11.00', 16, '2019-03-17 12:06:57'),
(39, 95, 2, 10, '11.00', 16, '2019-09-21 12:21:18'),
(40, 19, 3, 7, '12.00', 14, '2019-01-16 08:14:40'),
(41, 4, 8, 7, '12.00', 15, '2019-07-17 05:47:24'),
(42, 55, 7, 12, '12.00', 14, '2019-09-25 07:58:51'),
(43, 11, 6, 5, '12.00', 15, '2019-02-25 09:37:20'),
(44, 31, 1, 6, '10.00', 15, '2018-11-09 14:48:33'),
(45, 51, 1, 6, '10.00', 15, '2019-03-27 18:11:32'),
(46, 29, 6, 10, '10.00', 15, '2019-06-09 08:36:32'),
(47, 45, 7, 1, '14.00', 15, '2019-07-25 23:39:56'),
(48, 87, 6, 11, '13.00', 15, '2019-01-22 10:44:04'),
(49, 19, 3, 1, '11.00', 14, '2019-04-16 10:53:32'),
(50, 49, 4, 10, '11.00', 15, '2019-07-28 22:55:44'),
(51, 35, 2, 12, '10.00', 15, '2019-04-25 14:40:43'),
(52, 24, 5, 1, '12.00', 15, '2019-07-02 00:08:15'),
(53, 18, 2, 12, '12.00', 14, '2019-05-21 17:34:56'),
(54, 85, 4, 7, '11.00', 15, '2019-07-22 15:01:22'),
(55, 34, 4, 9, '12.00', 15, '2019-04-14 14:56:48'),
(56, 54, 7, 4, '11.00', 15, '2019-05-21 02:17:49'),
(57, 82, 7, 5, '14.00', 14, '2019-04-21 16:48:50'),
(58, 44, 5, 5, '12.00', 15, '2019-08-06 08:51:42'),
(59, 76, 4, 7, '12.00', 16, '2019-05-05 23:09:42'),
(60, 97, 3, 6, '14.00', 15, '2019-09-20 05:59:51'),
(61, 34, 8, 9, '15.00', 15, '2019-05-24 17:32:01'),
(62, 46, 2, 8, '13.00', 15, '2019-03-23 17:13:40'),
(63, 49, 8, 5, '13.00', 15, '2019-03-04 08:39:10'),
(64, 89, 6, 8, '12.00', 15, '2019-08-18 20:41:50'),
(65, 10, 5, 5, '12.00', 16, '2018-12-17 17:17:53'),
(66, 60, 2, 9, '10.00', 15, '2019-03-15 17:53:48'),
(67, 73, 7, 4, '11.00', 15, '2019-09-06 13:35:36'),
(68, 87, 7, 11, '14.00', 15, '2019-01-11 06:38:05'),
(69, 56, 8, 9, '10.00', 16, '2019-04-10 18:38:14'),
(70, 93, 1, 6, '14.00', 14, '2019-06-15 10:48:13'),
(71, 77, 1, 10, '11.00', 15, '2018-11-04 10:04:02'),
(72, 36, 6, 9, '12.00', 15, '2019-01-15 22:07:08'),
(73, 79, 4, 2, '11.00', 15, '2019-08-16 13:38:23'),
(74, 19, 6, 7, '11.00', 15, '2019-03-15 08:32:03'),
(75, 87, 4, 1, '12.00', 15, '2019-02-19 14:22:55'),
(76, 19, 3, 6, '11.00', 15, '2019-05-12 12:25:48'),
(77, 28, 2, 4, '12.00', 15, '2019-04-26 03:08:38'),
(78, 47, 7, 3, '14.00', 16, '2019-01-22 10:23:13'),
(79, 10, 8, 8, '12.00', 15, '2019-07-19 07:40:27'),
(80, 58, 2, 1, '11.00', 14, '2019-01-15 10:49:30'),
(81, 10, 2, 12, '12.00', 15, '2019-04-07 15:40:29'),
(82, 12, 1, 7, '11.00', 15, '2019-02-13 22:46:29'),
(83, 84, 6, 2, '12.00', 15, '2019-03-13 10:32:20'),
(84, 74, 1, 1, '13.00', 14, '2019-01-25 18:35:35'),
(85, 52, 8, 2, '11.00', 15, '2019-05-13 15:44:23'),
(86, 99, 3, 10, '11.00', 15, '2018-12-25 11:25:48'),
(87, 77, 4, 12, '11.00', 15, '2019-09-19 01:31:10'),
(88, 39, 8, 8, '14.00', 15, '2019-04-11 17:01:35'),
(89, 99, 4, 8, '10.00', 15, '2019-06-04 18:59:45'),
(90, 10, 6, 3, '12.00', 15, '2019-08-08 09:40:58'),
(91, 4, 5, 2, '13.00', 15, '2018-12-24 10:05:16'),
(92, 50, 8, 10, '10.00', 15, '2018-12-09 15:26:24'),
(93, 52, 2, 11, '12.00', 14, '2019-03-28 07:13:22'),
(94, 90, 5, 11, '13.00', 15, '2019-08-25 00:15:18'),
(95, 55, 7, 8, '9.00', 14, '2019-07-28 00:32:46'),
(96, 47, 1, 7, '13.00', 14, '2018-12-10 08:31:28'),
(97, 84, 3, 4, '11.00', 16, '2018-11-05 18:19:12'),
(98, 35, 5, 8, '13.00', 15, '2019-05-09 10:17:19'),
(99, 56, 3, 8, '13.00', 14, '2019-03-06 05:56:11'),
(100, 55, 5, 4, '12.00', 16, '2018-11-27 09:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `Car`
--

CREATE TABLE `Car` (
  `idCar` int(11) NOT NULL,
  `Milage` varchar(45) NOT NULL,
  `RegisterDate` date NOT NULL,
  `Type_idType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Car`
--

INSERT INTO `Car` (`idCar`, `Milage`, `RegisterDate`, `Type_idType`) VALUES
(1, '171775', '2019-09-18', 2),
(2, '56374', '2018-12-19', 3),
(3, '57747', '2018-03-09', 5),
(4, '221638', '2018-06-07', 9),
(5, '3177', '2018-01-07', 3),
(6, '211752', '2019-01-27', 2),
(7, '234079', '2019-04-29', 7),
(8, '213517', '2018-07-19', 6);

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `idCustomer` int(11) NOT NULL,
  `Surname` varchar(45) NOT NULL,
  `Firstname` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Postalcode` char(5) NOT NULL,
  `City` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`idCustomer`, `Surname`, `Firstname`, `Address`, `Postalcode`, `City`) VALUES
(1, 'Cline', 'Sloane', '720-3487 Suspendisse St.', '83939', 'Whitby'),
(2, 'Spencer', 'Angela', '9648 Donec Rd.', '13437', 'San Giorgio Albanese'),
(3, 'Chambers', 'Harlan', 'P.O. Box 584, 5298 Felis. Avenue', '24509', 'Bury St. Edmunds'),
(4, 'Travis', 'Herman', '807-245 Eu, St.', '82803', 'Esterzili'),
(5, 'Patton', 'Robert', '1388 Turpis. Ave', '95646', 'IJlst'),
(6, 'Pacheco', 'Tamekah', 'P.O. Box 708, 2643 Penatibus Av.', '17265', 'Vezin'),
(7, 'Compton', 'Abdul', 'Ap #670-7324 Pharetra. Rd.', '60758', 'South Portland'),
(8, 'Orr', 'Bree', 'Ap #465-1544 Nunc Street', '03525', 'Etobicoke'),
(9, 'Frank', 'Orson', 'P.O. Box 114, 2633 Nisl. St.', '32193', 'Los Muermos'),
(10, 'Morin', 'Medge', 'P.O. Box 163, 5357 Ligula. Rd.', '81851', 'Crystal Springs'),
(11, 'Gates', 'Lenore', '986-9463 Nulla Rd.', '06088', 'Lerwick'),
(12, 'Alexander', 'Adrian', 'Ap #232-714 Aliquet. Av.', '83694', 'Tribogna'),
(13, 'Patrick', 'Tanner', 'P.O. Box 443, 7943 Dolor Ave', '68642', 'San Antonio'),
(14, 'Molina', 'Ryan', 'P.O. Box 729, 2752 Non Av.', '24500', 'Requínoa'),
(15, 'Rosales', 'Dorian', '683-188 Sodales Rd.', '27427', 'York'),
(16, 'Perry', 'Mona', '7654 Mi St.', '92051', 'Bowden'),
(17, 'Decker', 'Kasper', 'P.O. Box 135, 3100 Donec Road', '91892', 'Warwick'),
(18, 'Cruz', 'Fletcher', 'Ap #604-3497 Luctus Av.', '64230', 'Fiuminata'),
(19, 'Henry', 'Eagan', 'P.O. Box 814, 4468 Non Av.', '45217', 'Moustier-sur-Sambre'),
(20, 'Austin', 'Justin', '205 Orci Street', '31662', 'Macerata'),
(21, 'Black', 'Ima', '109-5080 Proin Road', '99704', 'Suwałki'),
(22, 'Dawson', 'Katell', '722-7219 Ullamcorper. Rd.', '40377', 'Tezze sul Brenta'),
(23, 'Hawkins', 'Hiroko', '5076 Dapibus Road', '70053', 'Weston-super-Mare'),
(24, 'Goff', 'Rogan', '253-1270 Ultrices Rd.', '65823', 'Morhet'),
(25, 'Adkins', 'Lucius', '3363 Sed Street', '54034', 'Rochester'),
(26, 'Hicks', 'Adria', '288-7269 Lorem, Avenue', '48795', 'Olivar'),
(27, 'Luna', 'Upton', '3342 Arcu St.', '77110', 'Purnea'),
(28, 'Carson', 'Hanae', 'P.O. Box 397, 5013 Ipsum. St.', '78143', 'Traiguén'),
(29, 'Valenzuela', 'Madeline', 'Ap #902-7984 In Av.', '86485', 'Oliver'),
(30, 'Estes', 'Elaine', 'Ap #349-4085 Quisque Road', '59956', 'Bolzano/Bozen'),
(31, 'Juarez', 'Quin', '884-1197 Odio St.', '75559', 'Strongoli'),
(32, 'Lewis', 'Erich', 'P.O. Box 583, 6377 Ipsum St.', '35977', 'Sivry'),
(33, 'James', 'Blair', 'Ap #398-7454 Fermentum Avenue', '37754', 'Bellevue'),
(34, 'Pitts', 'Jermaine', 'Ap #517-2959 Egestas St.', '65582', 'Pathankot'),
(35, 'Warner', 'Lavinia', '6230 Sapien, Av.', '54569', 'Gaithersburg'),
(36, 'Maynard', 'Warren', 'P.O. Box 785, 2074 Mauris Av.', '18508', 'Smithers'),
(37, 'Allison', 'Clementine', 'P.O. Box 485, 9556 Vivamus St.', '85797', 'Neustadt am Rübenberge'),
(38, 'Clark', 'Quinn', '749-8248 Lacus. St.', '95884', 'Musson'),
(39, 'Webster', 'Rina', 'Ap #824-506 Non, Av.', '85742', 'Salerno'),
(40, 'Burke', 'Hannah', '779-9380 A Ave', '63832', 'Meißen'),
(41, 'Cobb', 'Darrel', 'P.O. Box 301, 5583 Quam. St.', '86708', 'El Bosque'),
(42, 'Jordan', 'Ronan', 'P.O. Box 311, 9635 Torquent St.', '79815', 'Wekweti'),
(43, 'Craft', 'Amy', '225-121 Eros. St.', '41943', 'Belmonte del Sannio'),
(44, 'Herrera', 'Keane', '551-2035 Bibendum Road', '54418', 'Kinrooi'),
(45, 'Rojas', 'Lee', '338-1850 Augue Street', '60512', 'Poznań'),
(46, 'Hurley', 'Oscar', 'Ap #465-6872 Dictum Rd.', '23119', 'Montaldo Bormida'),
(47, 'Horne', 'Ebony', 'Ap #613-1000 Convallis Rd.', '30698', 'Devon'),
(48, 'Roberson', 'Tiger', 'Ap #413-9972 Hendrerit Road', '74497', 'Poggio Berni'),
(49, 'Little', 'Kameko', '3263 Ut Avenue', '01040', 'Lexington'),
(50, 'Deleon', 'Xerxes', '8016 Auctor Ave', '53928', 'Macerata'),
(51, 'Hayden', 'Jameson', '573-5723 Dis Avenue', '06945', 'Telford'),
(52, 'Trevino', 'Sade', 'P.O. Box 759, 793 Dolor. Road', '60359', 'Genk'),
(53, 'Maynard', 'Devin', 'Ap #794-6882 Convallis Av.', '36650', 'Couthuin'),
(54, 'Evans', 'Ian', '7517 Proin St.', '97517', 'Orta San Giulio'),
(55, 'Medina', 'Odette', 'Ap #818-1751 Hendrerit St.', '52438', 'Launceston'),
(56, 'Perry', 'Fitzgerald', '8596 Penatibus St.', '81477', 'High Wycombe'),
(57, 'Gaines', 'Colorado', '1872 Eleifend St.', '97715', 'Gelbressee'),
(58, 'Alexander', 'Cassandra', '9721 Vel, Rd.', '76863', 'Ludwigshafen'),
(59, 'Williamson', 'Maya', 'Ap #170-7843 Aenean Rd.', '34243', 'Bordeaux'),
(60, 'Henry', 'Brynn', 'Ap #325-7673 Magna Ave', '85492', 'Patalillo'),
(61, 'Bennett', 'Brenna', '2643 Nullam Av.', '03393', 'Casperia'),
(62, 'Camacho', 'Astra', 'P.O. Box 331, 9714 Montes, Ave', '25434', 'Termoli'),
(63, 'Moran', 'Quail', '7543 Cum Road', '30459', 'Davenport'),
(64, 'Daugherty', 'Eve', 'P.O. Box 817, 3352 Varius. Ave', '09510', 'Richmond Hill'),
(65, 'Snow', 'Frances', '930-8663 Nunc Rd.', '38030', 'Mesoraca'),
(66, 'Patton', 'Sonia', 'Ap #443-5662 Aliquet. Avenue', '69658', 'Loksbergen'),
(67, 'Lott', 'Kameko', 'Ap #756-4553 Vestibulum Street', '04792', 'Noorderwijk'),
(68, 'Stewart', 'Mercedes', '683-4146 Magna Road', '42941', 'Alkmaar'),
(69, 'Witt', 'Claire', '2665 Auctor St.', '92933', 'Saint-LŽger'),
(70, 'Mayer', 'Xander', 'Ap #483-9521 Augue Rd.', '90367', 'Legnica'),
(71, 'Rosales', 'Raphael', '273-476 Ligula. St.', '46731', 'Lüneburg'),
(72, 'Berry', 'Leonard', '6426 Massa. Av.', '99463', 'Retiro'),
(73, 'Silva', 'Curran', 'Ap #999-1721 Nonummy Rd.', '56689', 'Palagianello'),
(74, 'Strickland', 'Sonia', '8102 Aliquam Avenue', '75765', 'Sankt Wendel'),
(75, 'Hogan', 'Nehru', '4714 Posuere Rd.', '71046', 'Keswick'),
(76, 'Mckenzie', 'Violet', '409-1229 Eget, Rd.', '89062', 'Montoggio'),
(77, 'Foster', 'Clayton', 'P.O. Box 790, 633 Ut Avenue', '63863', 'Jedburgh'),
(78, 'Davis', 'Daryl', '9594 Et, Road', '74278', 'Hannut'),
(79, 'Vang', 'Kato', 'P.O. Box 503, 5959 Amet St.', '73627', 'North Las Vegas'),
(80, 'Patterson', 'Joelle', '330-665 Etiam Avenue', '83014', 'Offenbach am Main'),
(81, 'Garner', 'Jena', '926-4870 Urna, Ave', '66080', 'Lachine'),
(82, 'Farmer', 'Lesley', 'Ap #618-6603 Egestas. St.', '76884', 'Roccanova'),
(83, 'Henson', 'Alyssa', '823-5137 Nunc Street', '36498', 'Toledo'),
(84, 'Oliver', 'Ciara', 'P.O. Box 218, 3294 Luctus Rd.', '22319', 'Camponogara'),
(85, 'Nolan', 'Velma', '478-373 Donec St.', '43005', 'Monte Santa Maria Tiberina'),
(86, 'Hatfield', 'Mona', '782 Et Avenue', '73461', 'Navidad'),
(87, 'Mueller', 'Rudyard', 'Ap #528-9922 Ligula. Rd.', '53978', 'Ratlam'),
(88, 'Austin', 'Cheryl', '9622 Dis Av.', '14928', 'Bhatpara'),
(89, 'Chambers', 'Kylie', '1693 Mauris St.', '04486', 'Bhuj'),
(90, 'Noble', 'Connor', 'Ap #257-9009 Consequat Av.', '09209', 'Gander'),
(91, 'Dotson', 'Dara', 'Ap #772-2058 Diam Ave', '55931', 'Bellegem'),
(92, 'Ray', 'Carl', '961-1850 In Rd.', '17522', 'Blenheim'),
(93, 'Pittman', 'Pamela', 'Ap #343-3546 Libero. Road', '12700', 'Pathankot'),
(94, 'White', 'Deborah', '338-9657 Elit, Rd.', '00114', 'Ligny'),
(95, 'Keith', 'Yoko', 'P.O. Box 927, 8694 In Rd.', '09372', 'Bailivre'),
(96, 'Mullen', 'Hiram', '455-1085 A Rd.', '47671', 'Ehein'),
(97, 'Blake', 'Phoebe', '3890 Fringilla Rd.', '98082', 'Ehein'),
(98, 'Abbott', 'Aileen', '509-1179 Placerat. Avenue', '07741', 'Florianópolis'),
(99, 'Orr', 'Alika', '450-5114 Montes, St.', '47086', 'Olivar'),
(100, 'Case', 'Keane', 'Ap #548-1982 Posuere Road', '87086', 'Luino');

-- --------------------------------------------------------

--
-- Table structure for table `Driver`
--

CREATE TABLE `Driver` (
  `idDriver` int(11) NOT NULL,
  `Surname` varchar(45) NOT NULL,
  `Firstname` varchar(45) NOT NULL,
  `Mobile` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Driver`
--

INSERT INTO `Driver` (`idDriver`, `Surname`, `Firstname`, `Mobile`) VALUES
(1, 'Greer', 'Deirdre', '(04643) 1566208'),
(2, 'Short', 'Neville', '(0783) 78900268'),
(3, 'Michael', 'Clayton', '(0278) 49443331'),
(4, 'Walter', 'Conan', '(039228) 215601'),
(5, 'Spears', 'Lee', '(0397) 35150186'),
(6, 'Moss', 'Barrett', '(056) 84385623'),
(7, 'Maynard', 'Aaron', '(031297) 122340'),
(8, 'Phillips', 'Sharon', '(066) 57387629'),
(9, 'Gillespie', 'Geraldine', '(08435) 9652070'),
(10, 'Perry', 'Tana', '(04272) 4962151'),
(11, 'Riley', 'Tamekah', '(05580) 1522544'),
(12, 'Decker', 'Megan', '(047) 99222564');

-- --------------------------------------------------------

--
-- Table structure for table `Type`
--

CREATE TABLE `Type` (
  `idType` int(11) NOT NULL,
  `Manufacturer` varchar(45) NOT NULL,
  `Model` varchar(45) NOT NULL,
  `NoSeats` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Type`
--

INSERT INTO `Type` (`idType`, `Manufacturer`, `Model`, `NoSeats`) VALUES
(1, 'Elementum Dui Institute', 'ipsum.', 1),
(2, 'Sodales Elit Consulting', 'vitae,', 3),
(3, 'Lacus Vestibulum Lorem Consulting', 'libero.', 1),
(4, 'Morbi LLP', 'nunc', 1),
(5, 'Fames Ac Turpis Consulting', 'Nunc', 3),
(6, 'Mollis Phasellus Associates', 'arcu.', 9),
(7, 'Arcu Institute', 'aliquet', 9),
(8, 'Erat LLP', 'elit.', 4),
(9, 'Fusce LLP', 'tempus', 1),
(10, 'Phasellus Nulla Integer Consulting', 'at', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`idBooking`),
  ADD KEY `fk_Booking_Customer_idx` (`Customer_idCustomer`),
  ADD KEY `fk_Booking_Car1_idx` (`Car_idCar`),
  ADD KEY `fk_Booking_Driver1_idx` (`Driver_idDriver`);

--
-- Indexes for table `Car`
--
ALTER TABLE `Car`
  ADD PRIMARY KEY (`idCar`),
  ADD KEY `fk_Type_idType` (`Type_idType`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`idCustomer`);

--
-- Indexes for table `Driver`
--
ALTER TABLE `Driver`
  ADD PRIMARY KEY (`idDriver`);

--
-- Indexes for table `Type`
--
ALTER TABLE `Type`
  ADD PRIMARY KEY (`idType`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Type`
--
ALTER TABLE `Type`
  MODIFY `idType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `fk_Booking_Car1` FOREIGN KEY (`Car_idCar`) REFERENCES `Car` (`idCar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Booking_Customer` FOREIGN KEY (`Customer_idCustomer`) REFERENCES `Customer` (`idCustomer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Booking_Driver1` FOREIGN KEY (`Driver_idDriver`) REFERENCES `Driver` (`idDriver`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Car`
--
ALTER TABLE `Car`
  ADD CONSTRAINT `fk_Type_idType` FOREIGN KEY (`Type_idType`) REFERENCES `Type` (`idType`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
