-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 02:20 PM
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
  `date` date NOT NULL,
  `bloodgroup` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') NOT NULL,
  `bloodqty` int(11) NOT NULL,
  `bystander_contacts` varchar(15) NOT NULL,
  `bystander_alt_contacts` varchar(15) NOT NULL,
  `district` varchar(30) NOT NULL,
  `taluk` varchar(50) NOT NULL,
  `hospital` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `name`, `age`, `date`, `bloodgroup`, `bloodqty`, `bystander_contacts`, `bystander_alt_contacts`, `district`, `taluk`, `hospital`) VALUES
(28, '', 0, '1970-01-01', '', 0, '', '', '', '', ''),
(24, 'sanu', 41, '2020-04-21', 'AB-', 5, '0321456987', '', 'Kasargod', 'Hosdurg', 'zxzxzx'),
(22, 'shiva', 21, '2020-02-20', 'B+', 5, '1254789632', '', 'Kozhikode', 'Kozhikode', 'sxsxs'),
(1, 'sandra', 21, '0000-00-00', 'A+', 5, '2147483647', '0', 'Alappuzha', 'Mavelikara', 'VSM Hospital'),
(29, 'hg', 21, '2020-02-21', 'A+', 9, '2531478963', '', 'Kasargod', 'Hosdurg', 'mjk'),
(23, 'DDXX', 21, '2020-04-14', 'A-', 5, '4152369870', '', 'Kannur', 'Kannur', 'sxsxsx'),
(19, 'ramu', 15, '2020-02-02', 'A-', 5, '6445521152', '', 'Alappuzha', 'Chenganoor', 'dcdcs'),
(21, 'yes', 41, '2020-02-12', 'A-', 5, '7456982310', '', 'Thrissur', 'Thrissur', 'vsm'),
(16, 'shibu', 18, '1970-01-01', 'O-', 5, '748596321', '', 'Wayanad', 'Mananthavady', 'St.Marys hospital'),
(14, 'dinesh', 21, '2020-02-15', 'O+', 5, '7485963214', '', 'Kollam', 'Kollam', 'century'),
(18, 'sasdasdasdad', 15, '2020-12-02', 'A+', 9, '7485963218', '', 'Idukki', 'Devikulam', 'vsm'),
(15, 'dinesh', 21, '2020-02-15', 'O+', 5, '7485963219', '', 'Kollam', 'Kollam', 'century'),
(17, 'dasdadad', 14, '2020-12-02', 'A+', 8, '7485963222', '', 'Kannur', 'Taliparamba', 'vsm');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
