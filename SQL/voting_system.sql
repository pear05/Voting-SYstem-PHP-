-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 20, 2023 at 01:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `FullName` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`FullName`, `Username`, `Password`) VALUES
('Allan', 'admin@gmail.com', 'admin'),
('Austin', 'austin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `nominee`
--

CREATE TABLE `nominee` (
  `FullName` varchar(40) NOT NULL,
  `PartyName` varchar(30) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Votes` int(100) NOT NULL,
  `Status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nominee`
--

INSERT INTO `nominee` (`FullName`, `PartyName`, `Image`, `Votes`, `Status`) VALUES
('AKINYI JURRYT', '(School of Tours and Travels)', 'user.jpg', 0, 'OFF'),
('CALEB OTIENO', '(School of Tours and Travels.)', 'anime.jpg', 0, 'OFF'),
('KEVIN YAOLA', '(School of Hospitality)', 'easy.jpeg', 0, 'OFF'),
('LAWRENCE CIRO', '(School of Business.)', 'count.jpg', 0, 'OFF'),
('MURIEL NOACH', '(School of Business)', 'vote.webp', 1, 'OFF'),
('SHAWN MBUGUA', '(School of Hospitality.)', 'anime.jpg', 0, 'OFF');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `FullName` varchar(40) NOT NULL,
  `MobileNo` bigint(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Status` varchar(11) NOT NULL,
  `Voted` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`FullName`, `MobileNo`, `Email`, `DOB`, `Password`, `Status`, `Voted`) VALUES
('haha', 1245352514, 'an@rock.com', '2000-05-08', '12345', 'ON', 'YES'),
('rihana', 9575210508, 'lok@rock.com', '2000-12-08', '12345', 'ON', 'YES'),
('user1', 1234567890, 'user1@gmail.com', '2023-11-20', '12345', 'ON', 'YES'),
('Austin', 1234567890, 'user@gmail.com', '2023-11-20', '12345', 'ON', 'YES');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `nominee`
--
ALTER TABLE `nominee`
  ADD UNIQUE KEY `FullName` (`FullName`),
  ADD UNIQUE KEY `PartyName` (`PartyName`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `FullName` (`FullName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
