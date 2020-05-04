-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2020 at 07:46 PM
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
-- Table structure for table `coord_requests`
--

CREATE TABLE `coord_requests` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `bloodgroup` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') NOT NULL,
  `bloodqty` int(11) NOT NULL,
  `bystander_contacts` varchar(15) NOT NULL,
  `bystander_alt_contacts` varchar(15) NOT NULL,
  `district` varchar(30) NOT NULL,
  `taluk` varchar(50) NOT NULL,
  `hospital` varchar(200) NOT NULL,
  `coor_id` varchar(15) NOT NULL,
  `status` varchar(20) NOT NULL,
  `verification` varchar(20) NOT NULL,
  `requested_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coord_requests`
--

INSERT INTO `coord_requests` (`id`, `name`, `age`, `date`, `bloodgroup`, `bloodqty`, `bystander_contacts`, `bystander_alt_contacts`, `district`, `taluk`, `hospital`, `coor_id`, `status`, `verification`, `requested_time`) VALUES
(98, 'catherine', 15, '2020-04-08 00:00:00', 'AB-', 10, '0321456921', '', 'Idukki', 'Idukki', 'saxasx', '12345', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(97, 'sanu', 41, '2020-04-21 00:00:00', 'AB-', 5, '0321456987', '', 'Kasargod', 'Hosdurg', 'zxzxzx', 'asaas', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(94, 'shiva', 21, '2020-02-20 00:00:00', 'B+', 5, '1254789632', '', 'Kozhikode', 'Kozhikode', '', 'czccc', 'Not Emergency', 'Rejected', '2020-05-03 15:43:30'),
(17, 'sandra', 21, '0000-00-00 00:00:00', 'A+', 5, '2147483647', '0', 'Alappuzha', 'Mavelikara', '', 'cn111', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(95, 'DDXX', 21, '2020-04-14 00:00:00', 'A-', 5, '4152369870', '', 'Kannur', 'Kannur', 'sxsxsx', 'czccc', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(99, 'riya', 21, '2020-04-15 00:00:00', 'B+', 15, '5332146748', '', 'Idukki', 'Thodupuzha', 'asxscxsc', '65478', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(100, 'ram', 21, '2020-02-21 00:00:00', 'A-', 6, '5463217896', '', 'Kozhikode', 'Vadakara', 'asdf', 'sdxsxscs', 'Not Emergency', 'Verified', '2020-05-03 15:43:30'),
(107, 'ramu', 65, '2020-04-28 00:00:00', 'O+', 6, '5555444444', '', 'Thrissur', 'Mukundapuram', 'uji', '1122', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(87, 'ramu', 15, '2020-02-02 00:00:00', 'A-', 5, '6445521152', '', 'Alappuzha', 'Chenganoor', '', 'knnkmkm', 'Emergency', 'Rejected', '2020-05-03 15:43:30'),
(105, 'kalid', 32, '2020-04-30 00:00:00', 'O+', 3, '6555555555', '', 'Thrissur', 'Mukundapuram', 'klj', 'sd', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(112, 'hj', 23, '2020-04-29 00:00:00', 'A+', 5, '6666555555', '', 'Thrissur', 'Thrissur', 'ml', 'jj', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(90, 'yes', 41, '2020-02-12 00:00:00', 'A-', 5, '7456982310', '', 'Thrissur', 'Thrissur', '', 'kmlm', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(80, 'shibu', 18, '1970-01-01 00:00:00', 'O-', 5, '748596321', '', 'Wayanad', 'Mananthavady', '', 'bjkb', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(32, 'dinesh', 21, '2020-02-15 00:00:00', 'O+', 5, '7485963214', '', 'Kollam', 'Kollam', '', 'xxxxx', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(48, 'sasdasdasdad', 15, '2020-12-02 00:00:00', 'A+', 9, '7485963218', '', 'Idukki', 'Devikulam', '', 'axssxx', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(33, 'dinesh', 21, '2020-02-15 00:00:00', 'O+', 5, '7485963219', '', 'Kollam', 'Kollam', '', 'zxxxx', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(76, 'dasdadad', 14, '2020-12-02 00:00:00', 'A+', 8, '7485963222', '', 'Kannur', 'Taliparamba', '', 'sxas', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(103, 'raji', 65, '2020-04-30 00:00:00', 'O-', 3, '8596471122', '', 'Thrissur', 'Mukundapuram', 'lok', '1122', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(109, 'saS', 85, '2020-04-28 00:00:00', 'A+', 9, '8799664455', '', 'Thrissur', 'Chavakkad', 'DEF', '1122', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(106, 'shan', 32, '2020-04-28 00:00:00', 'O+', 6, '8899665544', '', 'Thrissur', 'Mukundapuram', 'edf', '1122', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(111, 'oova', 21, '2020-04-29 00:00:00', 'A+', 8, '8999966655', '', 'Alappuzha', 'Chenganoor', 'll', '1122', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(104, 'raghav', 52, '2020-04-30 00:00:00', 'O-', 6, '9874563211', '', 'Thrissur', 'Mukundapuram', 'lmk', '1122', 'Not Emergency', 'Verified', '2020-05-03 15:43:30'),
(108, 'jinny', 65, '2020-04-28 00:00:00', 'O+', 9, '9877777777', '', 'Kozhikode', 'Kozhikode', 'pl', '1122', 'Emergency', 'Verified', '2020-05-03 15:43:30'),
(110, 'aXX', 65, '2020-04-28 00:00:00', 'A+', 6, '9888888888', '', 'Kasargod', 'Hosdurg', 'SSS', '1122', 'Emergency', 'Verified', '2020-05-03 15:43:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coord_requests`
--
ALTER TABLE `coord_requests`
  ADD PRIMARY KEY (`bystander_contacts`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coord_requests`
--
ALTER TABLE `coord_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
