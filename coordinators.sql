-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2020 at 11:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `coordinators`
--

CREATE TABLE `coordinators` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(64) NOT NULL,
  `localty` varchar(30) NOT NULL,
  `district` varchar(20) NOT NULL,
  `verified_requests` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coordinators`
--

INSERT INTO `coordinators` (`id`, `name`, `phone`, `email`, `localty`, `district`, `verified_requests`, `experience`, `profession`, `userid`, `password`) VALUES
(1, 'saumya s menon', '1234567890', 'saumya@gmail.com', 'Mavelikara', 'Alappuzha', 500, 5, 'Nurse', 'saumya94', 'b4jn4S3Mlfd2PsVFqXeH'),
(10, 'Shani', '1234567892', 'Demo@gmail.com', 'Kozhikode', 'Kozhikode', 12, 2, 'Engineer', '1122', 'Od+22CzNlPZ3P8REqHaGvA=='),
(8, 'sandra', '4578123695', 'sandy@gmail.com', 'Mavelikara', 'Alappuzha', 200, 1, 'Social worker', 'sandy123', 'eI3tiFnwqslzO8BArHKCuA=='),
(2, 'Sandra', '7894561230', 'sandra@gmail.com', 'Chittoor', 'Palakkad', 200, 1, 'Social Worker', 'sandy98', 'sandy98');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coordinators`
--
ALTER TABLE `coordinators`
  ADD PRIMARY KEY (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `userid` (`userid`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coordinators`
--
ALTER TABLE `coordinators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
