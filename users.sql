-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2020 at 04:18 PM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `gender` enum('male','female','others') NOT NULL,
  `age` tinyint(20) NOT NULL,
  `weight` smallint(5) NOT NULL,
  `bloodgroup` enum('O+','O-','A+','A-','B+','B-','AB+','AB-') NOT NULL,
  `district` varchar(200) NOT NULL,
  `localty` varchar(60) NOT NULL,
  `contacts` varchar(200) NOT NULL,
  `alt_contact_no` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `last_don` date NOT NULL,
  `status` enum('Available anytime','Available for','Unavailable for') NOT NULL,
  `for_time` date NOT NULL,
  `username` varchar(20) NOT NULL,
  `pass` varchar(11) NOT NULL,
  `fcm_token` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `gender`, `age`, `weight`, `bloodgroup`, `district`, `localty`, `contacts`, `alt_contact_no`, `email`, `last_don`, `status`, `for_time`, `username`, `pass`, `fcm_token`) VALUES
(16, 'Teresa', 'female', 41, 63, 'B-', 'Kannur', 'Taliparamba', '4152369874', '', '', '0000-00-00', 'Available anytime', '1970-01-01', 'qazswed', 'epvmnlS4kvB', NULL),
(11, 'Divya', 'female', 21, 51, 'B+', 'Idukki', 'Thodupuzha', '4152639870', '', '', '0000-00-00', 'Available anytime', '1970-01-01', 'qwerty', 'epvmnlS4kvB', NULL),
(17, 'yuhi', 'others', 52, 85, 'B-', 'Pathanamthitta', 'Kozhencherry(HO:Pathanamthitta)', '4563217895', '', '', '0000-00-00', 'Available anytime', '1970-01-01', '74ujkll', 'epvmnlS4kvB', NULL),
(18, 'das', 'male', 54, 74, 'O+', 'Kottayam', 'Kottayam', '4598544445', '', '', '0000-00-00', 'Available anytime', '1970-01-01', 'dsfgh', 'epvmnlS4kvB', NULL),
(19, 'vishnu', 'male', 19, 52, 'B-', 'Idukki', 'Peermedu', '5555555555', '', '', '0000-00-00', 'Available anytime', '1970-01-01', 'asdfg', 'epvmnlS4kvB', NULL),
(15, 'Hari', 'male', 28, 65, 'A+', 'Kottayam', 'Meenachil', '7418524562', '', '', '0000-00-00', 'Available anytime', '1970-01-01', 'ujikolp', 'epvmnlS4kvB', NULL),
(20, 'Rashmika', 'female', 25, 52, 'B+', 'Thrissur', 'Mukundapuram', '7454455555', '', '', '0000-00-00', 'Available anytime', '1970-01-01', 'qwertyhm', 'b4jn4S3Mlfd', NULL),
(21, 'Rashmika', 'female', 25, 52, 'B+', 'Thrissur', 'Mukundapuram', '7454455556', '', '', '0000-00-00', 'Available anytime', '1970-01-01', 'qwertyhmh', 'eIjliyzNlPZ', NULL),
(12, 'Rahul', 'male', 54, 87, 'B+', 'Thrissur', 'Thalapilly', '7485963258', '', '', '0000-00-00', 'Available anytime', '1970-01-01', 'qwertyh', 'epvmnlS4kvB', NULL),
(13, 'Aslam', 'male', 41, 65, 'B+', 'Malappuram', 'Tirur', '8596321478', '', '', '0000-00-00', 'Available anytime', '1970-01-01', 'qwertyl', 'epvmnlS4kvB', NULL),
(22, 'radhika', 'female', 45, 63, 'O-', 'Pathanamthitta', 'Konni', '8888855555', '', '', '0000-00-00', 'Available anytime', '1970-01-01', 'vfgbhnj', 'eYrkmEi4kvB', NULL),
(23, 'radhika', 'female', 45, 63, 'O-', 'Pathanamthitta', 'Konni', '8888855557', '', '', '0000-00-00', 'Available anytime', '1970-01-01', 'vfgbhnk', 'eYrkmEi4kvB', NULL),
(14, 'kalam', 'male', 41, 53, 'B-', 'Malappuram', 'Thiroorangadi', '9632147852', '', '', '0000-00-00', 'Available anytime', '1970-01-01', 'kmjlhuhj', 'epvmnlS4kvB', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`contacts`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `email` (`email`,`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
