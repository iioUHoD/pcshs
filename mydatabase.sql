-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 30, 2019 at 12:45 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

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
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `UserID` int(3) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Lname` varchar(255) DEFAULT NULL,
  `Status` enum('ADMIN','GUEST','TEACHER','STUDENT') NOT NULL DEFAULT 'GUEST',
  `SID` varchar(32) NOT NULL,
  `Active` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`UserID`, `Email`, `Password`, `Name`, `Lname`, `Status`, `SID`, `Active`) VALUES
(1, 'is_php@hotmail.com', '202cb962ac59075b964b07152d234b70', 'Weerachai ', 'Nukitram', 'ADMIN', 'fb8d397fe980c10c84f0c77e1749c3f0', 'No'),
(15, 'striken21@gmail.com', '202cb962ac59075b964b07152d234b70', 'Black', 'Wilsmith', 'STUDENT', 'e73589c856c90234b3390fc1dacaa970', 'No'),
(17, 'somchai@gmail.com', '202cb962ac59075b964b07152d234b70', 'Somchai', 'Bush', 'TEACHER', '28a84d70a9ff8f821eec44bf5d5bff09', 'No'),
(18, 'naruto@gmail.com', '202cb962ac59075b964b07152d234b70', 'Naruto', 'Sensei', 'GUEST', '0f38ec49aa0b1b9ce3174e663e6fd5a8', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `uploadfile`
--

CREATE TABLE `uploadfile` (
  `fileID` int(5) NOT NULL,
  `fileupload` varchar(200) CHARACTER SET utf8 NOT NULL,
  `DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploadfile`
--

INSERT INTO `uploadfile` (`fileID`, `fileupload`, `DateTime`, `Email`) VALUES
(0, '20190130264433282.pdf', '2019-01-29 20:04:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Email` (`Email`) USING BTREE;

--
-- Indexes for table `uploadfile`
--
ALTER TABLE `uploadfile`
  ADD UNIQUE KEY `fileID` (`fileID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `UserID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
