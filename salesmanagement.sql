-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2019 at 03:52 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salesmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `itemprice`
--

CREATE TABLE `itemprice` (
  `item_id` int(10) NOT NULL,
  `item` varchar(20) NOT NULL,
  `buying_price` float(10,0) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemprice`
--

INSERT INTO `itemprice` (`item_id`, `item`, `buying_price`, `price`) VALUES
(7, 'apple', 20, 25),
(8, 'banana', 23, 25),
(9, 'mango', 35, 40),
(10, 'pen', 8, 12),
(11, 'book', 50, 55),
(12, 'pencil', 14, 15),
(13, 'earser', 5, 7),
(14, 'bag', 120, 150),
(15, 'bottle', 200, 220);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `uname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`uname`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(20) NOT NULL,
  `date` date NOT NULL,
  `time` time(4) NOT NULL,
  `item` text NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  `total_with_discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `time`, `item`, `quantity`, `price`, `total`, `total_with_discount`) VALUES
(9058, '2019-07-02', '06:25:43.0000', 'pencil', 4, 15, 60, 56.4),
(90581, '2019-07-02', '06:25:42.0000', 'banana', 2, 25, 50, 50),
(90582, '2019-07-02', '06:25:44.0000', 'pencil', 6, 15, 90, 90),
(90583, '2019-07-02', '06:25:44.0000', 'earser', 4, 7, 28, 28),
(90584, '2019-07-02', '06:25:45.0000', 'apple', 5, 25, 125, 125),
(90585, '2019-07-02', '06:25:45.0000', 'mango', 2, 40, 80, 80);

-- --------------------------------------------------------

--
-- Table structure for table `salesperson`
--

CREATE TABLE `salesperson` (
  `Username` text NOT NULL,
  `password` text NOT NULL,
  `Name` text NOT NULL,
  `ContactNumber` int(10) NOT NULL,
  `NIC` text NOT NULL,
  `Address` text NOT NULL,
  `target` float NOT NULL,
  `soltbill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesperson`
--

INSERT INTO `salesperson` (`Username`, `password`, `Name`, `ContactNumber`, `NIC`, `Address`, `target`, `soltbill`) VALUES
('user1', '123', 'USER111', 111111, '11111111v', 'colombo', 50000, 20429),
('user2', '123', 'USER', 22222, '22222v', 'galle', 20000, 0),
('user3', '123', 'USER33333', 33333, '33333v', 'nugegoda', 10000, 0),
('user4', '123', 'USER444', 4444, '4444v', 'kandy', 15000, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `itemprice`
--
ALTER TABLE `itemprice`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesperson`
--
ALTER TABLE `salesperson`
  ADD PRIMARY KEY (`Username`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `itemprice`
--
ALTER TABLE `itemprice`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
