-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2020 at 07:40 PM
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
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
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
  `fcm_token` longtext NOT NULL,
  `requested_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `name`, `age`, `date`, `bloodgroup`, `bloodqty`, `bystander_contacts`, `bystander_alt_contacts`, `district`, `taluk`, `hospital`, `fcm_token`, `requested_time`) VALUES
(30, '', 0, '1970-01-01 00:00:00', '', 0, '', '', '', '', '', '', '2020-05-03 15:40:58'),
(24, 'sanu', 41, '2020-04-21 00:00:00', 'AB-', 5, '0321456987', '', 'Kasargod', 'Hosdurg', 'zxzxzx', '', '2020-05-03 15:40:58'),
(22, 'shiva', 21, '2020-02-20 00:00:00', 'B+', 5, '1254789632', '', 'Kozhikode', 'Kozhikode', 'sxsxs', '', '2020-05-03 15:40:58'),
(1, 'sandra', 21, '0000-00-00 00:00:00', 'A+', 5, '2147483647', '0', 'Alappuzha', 'Mavelikara', 'VSM Hospital', '', '2020-05-03 15:40:58'),
(29, 'hg', 21, '2020-02-21 00:00:00', 'A+', 9, '2531478963', '', 'Kasargod', 'Hosdurg', 'mjk', '', '2020-05-03 15:40:58'),
(23, 'DDXX', 21, '2020-04-14 00:00:00', 'A-', 5, '4152369870', '', 'Kannur', 'Kannur', 'sxsxsx', '', '2020-05-03 15:40:58'),
(19, 'ramu', 15, '2020-02-02 00:00:00', 'A-', 5, '6445521152', '', 'Alappuzha', 'Chenganoor', 'dcdcs', '', '2020-05-03 15:40:58'),
(37, 'jhkjb', 52, '2020-04-29 00:00:00', 'A+', 6, '6566666666', '', 'Idukki', 'Devikulam', 'lmk', '', '2020-05-03 15:40:58'),
(35, 'shani', 54, '2020-04-29 00:00:00', 'O+', 6, '6666666666', '', 'Wayanad', 'Vythiri', 'kk', '', '2020-05-03 15:40:58'),
(21, 'yes', 41, '2020-02-12 00:00:00', 'A-', 5, '7456982310', '', 'Thrissur', 'Thrissur', 'vsm', '', '2020-05-03 15:40:58'),
(16, 'shibu', 18, '1970-01-01 00:00:00', 'O-', 5, '748596321', '', 'Wayanad', 'Mananthavady', 'St.Marys hospital', '', '2020-05-03 15:40:58'),
(14, 'dinesh', 21, '2020-02-15 00:00:00', 'O+', 5, '7485963214', '', 'Kollam', 'Kollam', 'century', '', '2020-05-03 15:40:58'),
(18, 'sasdasdasdad', 15, '2020-12-02 00:00:00', 'A+', 9, '7485963218', '', 'Idukki', 'Devikulam', 'vsm', '', '2020-05-03 15:40:58'),
(15, 'dinesh', 21, '2020-02-15 00:00:00', 'O+', 5, '7485963219', '', 'Kollam', 'Kollam', 'century', '', '2020-05-03 15:40:58'),
(17, 'dasdadad', 14, '2020-12-02 00:00:00', 'A+', 8, '7485963222', '', 'Kannur', 'Taliparamba', 'vsm', '', '2020-05-03 15:40:58'),
(36, 'ghik', 54, '2020-04-29 00:00:00', 'A+', 6, '8555566666', '', 'Kasargod', 'Manjeshwaram', 'llk', '', '2020-05-03 15:40:58'),
(38, 'kb', 65, '2020-04-29 00:00:00', 'A+', 3, '9666666666', '', 'Thrissur', 'Mukundapuram', 'lkj', '', '2020-05-03 15:40:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`bystander_contacts`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
