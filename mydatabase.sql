-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2017 at 09:33 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataid`
--

CREATE TABLE `dataid` (
  `ID` int(3) UNSIGNED ZEROFILL NOT NULL,
  `Username` varchar(20) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `Password` varchar(20) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dataid`
--

INSERT INTO `dataid` (`ID`, `Username`, `Password`) VALUES
(003, 'test03', '123456789'),
(005, 'admin', '1234'),
(024, '123456', '123456'),
(023, '55', '55'),
(021, '', ''),
(022, 'asd', 'asd'),
(020, 'eiei', '1234'),
(019, '1234', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `datanaja`
--

CREATE TABLE `datanaja` (
  `Numrun` int(3) UNSIGNED ZEROFILL NOT NULL,
  `IDsyn` varchar(3) CHARACTER SET utf8 NOT NULL,
  `DATE` varchar(30) CHARACTER SET utf8 NOT NULL,
  `TEXT` longtext CHARACTER SET tis620 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `datanaja`
--

INSERT INTO `datanaja` (`Numrun`, `IDsyn`, `DATE`, `TEXT`) VALUES
(053, '005', '17-09-2017 20:59:39 PM', 'aaaa'),
(054, '005', '17-09-2017 21:31:01 PM', 'asdsad'),
(055, '005', '17-09-2017 21:31:13 PM', 'asdsadasdasdasdsabbbbb'),
(050, '005', '15-09-2017 17:29:33 PM', 'asdsad'),
(048, '005', '15-09-2017 17:29:33 PM', 'asdsad'),
(047, '005', '15-09-2017 17:29:33 PM', 'asdsad'),
(046, '005', '15-09-2017 17:29:33 PM', 'asdsad'),
(069, '005', '18-09-2017 20:59:00 PM', '&#3591;&#3591;&#3651;&#3609;&#3591;&#3591;'),
(067, '005', '18-09-2017 15:14:12 PM', '55555'),
(072, '003', '18-09-2017 20:05:55 PM', '123456'),
(060, '019', '18-09-2017 21:04:55 PM', 'aaa++'),
(061, '005', '18-09-2017 02:04:51 AM', '&#3615;&#3615;&#3627;&#3585;&#3615;&#3627;&#3585;'),
(062, '005', '18-09-2017 03:17:24 AM', '&#3615;&#3627;&#3585;&#3615;&#3627;&#3585;'),
(064, '005', '18-09-2017 03:48:49 AM', '&#3615;&#3615;&#3615;&#3615;'),
(065, '005', '18-09-2017 03:49:18 AM', '+++'),
(068, '005', '18-09-2017 15:14:12 PM', '55555'),
(071, '005', '19-09-2017 02:10:33 AM', '6655'),
(076, '005', '19-09-2017 02:15:18 AM', 'asdasd'),
(077, '005', '19-09-2017 02:15:26 AM', 'sasdasadsdas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataid`
--
ALTER TABLE `dataid`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `datanaja`
--
ALTER TABLE `datanaja`
  ADD PRIMARY KEY (`Numrun`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dataid`
--
ALTER TABLE `dataid`
  MODIFY `ID` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `datanaja`
--
ALTER TABLE `datanaja`
  MODIFY `Numrun` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
