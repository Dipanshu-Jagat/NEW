-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2021 at 07:35 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_issm`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `start` varchar(10) NOT NULL,
  `end` varchar(10) NOT NULL,
  `month` varchar(8) NOT NULL,
  `year` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_id`, `title`, `description`, `start`, `end`, `month`, `year`) VALUES
(1, 'Jageshwar Residential', '6M4H+6CM, Raipur, Chhattisgarh 492015', '2008-05-28', '2020-08-31', 'Aug', '2021');


-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(12) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `name`) VALUES
(2, 'admin', 'admin', 'Administrator'),
(4, 'adminone', 'adminone', 'Administratorone'),
(5, 'admintwo', 'admintwo', 'Administratortwo');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `expense_id` int(11) NOT NULL,
  `detail` varchar(100) NOT NULL,
  `price` varchar(300) NOT NULL,
  `ay` varchar(20) NOT NULL,
  `sem` varchar(5) NOT NULL,
  `deadline` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`expense_id`, `detail`, `price`, `ay`, `sem`, `deadline`) VALUES
(112, 'water-bill', '500', '2016-2022', '2nd', '2022-03-07'),
(113, 'Electricity-bill', '3500', '2016-2022', '1st', '2022-08-30'),
(114, 'maintance-bill', '8000', '2016-2022', '2nd', '2012022-03-07');
-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `middlename` varchar(40) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `year` varchar(2) NOT NULL,
  `section` varchar(111) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `student_id`, `firstname`, `middlename`, `lastname`, `year`, `section`, `photo`) VALUES
(3, 21201455, 'Angel Jude', 'Reyes', 'Suarez', 'G-', '119', 'jude.jpg'),
(6, 21201456, 'Rashmi', '-----', 'Dongre', 'H-', '101', 'jude.jpg'),
(8, 21201457, 'Aman', 'Kumar', 'Dongre', 'P-', '102', 'jude.jpg'),
(9, 21201458, 'Dipanshu', '-----', 'Jagat', 'R-', '103', 'jude.jpg'),
(11, 21201459, 'Aayush', 'Singh', 'Chouhan', 'G-', '104', 'jude.jpg'),
(12, 21201465, 'Nancy', '-----', 'Lakra', 'P-', '105', 'jude.jpg'),
(13, 21201464, 'Pallavi', '-----', 'Sahu', 'H-', '106', 'jude.jpg'),
(14, 21201466, 'Suman', '----', 'Verma', 'R-', '107', 'jude.jpg'),
(15, 21201467, 'Sumit', 'Kumar', 'sharma', 'G-', '108', 'jude.jpg'),
(16, 21201468, 'Ankita', 'Singh', 'Rajput', 'H-', '109', 'jude.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transact_id` int(11) NOT NULL,
  `student_id` int(8) NOT NULL,
  `transact_detail` int(11) NOT NULL,
  `price` varchar(5) NOT NULL,
  `payment` varchar(5) NOT NULL,
  `balance` varchar(5) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transact_id`, `student_id`, `transact_detail`, `price`, `payment`, `balance`, `status`) VALUES
(1100, 21201455, 112, '500', '500', '0', 'Paid'),
(1101, 21201455, 113, '3500', '500', '3000', 'Balance'),
(1102, 21201455, 114, '8000', '8000', '0', 'Paid'),
(1103, 21201456, 112, '4500', '2000', '2500', 'Balance'),
(1104, 21201456, 113, '600', '600', '0', 'Paid'),
(1105, 21201456, 114, '7500', '6000', '1000', 'Balance'),
(1106, 21201457, 112, '800', '800', '0', 'Paid'),
(1107, 21201457, 113, '900', '560', '340', 'Balance'),
(1108, 21201457, 114, '5400', '5400', '0', 'Paid'),
(1109, 21201458, 112, '5000', '4000', '1000', 'Balance'),
(1110, 21201458, 113, '5500', '5500', '0', 'Paid'),
(1111, 21201458, 114, '7500', '5000', '2500', 'Balance'),
(1112, 21201459, 112, '500', '500', '0', 'Paid'),
(1113, 21201459, 113, '3500', '1500', '2000', 'Balance'),
(1114, 21201459, 114, '800', '800', '0', 'Paid'),
(1115, 21201465, 112, '500', '400', '100', 'Balance'),
(1116, 21201465, 113, '3500', '3500', '0', 'Paid'),
(1117, 21201465, 114, '800', '100', '700', 'Balance'),
(1118, 21201464, 112, '300', '300', '0', 'Paid'),
(1119, 21201464, 113, '350', '10', '340', 'Balance'),
(1120, 21201464, 114, '300', '300', '0', 'Paid'),
(1121, 21201466, 112, '400', '100', '300', 'Balance'),
(1122, 21201466, 113, '4500', '4500', '0', 'Paid'),
(1123, 21201466, 114, '2000', '1000', '1000', 'Balance'),
(1124, 21201467, 112, '6000', '6000', '0', 'Paid'),
(1125, 21201467, 113, '4500', '500', '4000', 'Balance'),
(1126, 21201467, 114, '700', '700', '0', 'Paid'),
(1127, 21201468, 112, '500', '400', '100', 'Balance'),
(1128, 21201468, 113, '3500', '3500', '0', 'Paid'),
(1129, 21201468, 114, '800', '100', '700', 'Balance');




--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transact_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `expense_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
