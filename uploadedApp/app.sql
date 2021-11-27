-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2021 at 02:33 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freedownloads247`
--

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `id` int(100) NOT NULL,
  `appName` varchar(25) NOT NULL,
  `OwnerLink` varchar(50) NOT NULL,
  `thumbnailUrl` varchar(50) NOT NULL,
  `appSize` varchar(11) NOT NULL,
  `descriptions` varchar(250) NOT NULL,
  `version` varchar(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `downloadPath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`id`, `appName`, `OwnerLink`, `thumbnailUrl`, `appSize`, `descriptions`, `version`, `categoryId`, `downloadPath`) VALUES
(1, 'KeyShot', 'www.keyshot.com', 'test', '13mb', 'lorem ladfkjslkjf lkfja sdaf saldkfj asdlfkj ', '12.31', 3, ''),
(2, 'ccleaner', 'www.cclener.com', 'test', '133mb', 'lorem ladfkjslkjf lkfja sdaf saldkfj asdlfkj ', '12.31', 3, ''),
(3, 'asf', '', '', '', '', '', 0, ''),
(4, 'Readme.txt', '', '', '', '', '', 0, 'C:/Users/Saif i7/Desktop/Web/Uploadedapps/.Readme.txt'),
(5, 'Shaheen Friend Ds1.SLDPRT', '', '', '', '', '', 0, 'C:/Users/Saif i7/Desktop/Web/Uploadedapps/.Shaheen Friend Ds1.SLDPRT'),
(6, 'Shaheen Friend Ds1.SLDPRT', '', '', '', '', '', 0, 'C:/Users/Saif i7/Desktop/Web/Uploadedapps/Shaheen Friend Ds1.SLDPRT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app`
--
ALTER TABLE `app`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
