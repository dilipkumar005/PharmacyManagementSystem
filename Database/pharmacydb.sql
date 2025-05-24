-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2025 at 01:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `appuser`
--

CREATE TABLE `appuser` (
  `appuser_pk` int(11) NOT NULL,
  `userRole` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `mobileNumber` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appuser`
--

INSERT INTO `appuser` (`appuser_pk`, `userRole`, `name`, `dob`, `mobileNumber`, `email`, `username`, `password`, `address`) VALUES
(1, 'Customer', 'testUser', '01-01-1999', '0123456789', 'testUser@mail.com', 'testUser', 'testUser', 'testUser'),
(2, 'Admin', 'Admin', '01-01-1999', '0987654321', 'admin@mail.com', 'admin', 'admin', 'India'),
(3, 'Pharmacist', 'Pharmacist', '01-01-1999', '9012345678', 'pharmacist@mail.com', 'pharmacist', 'pharmacist', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_pk` int(11) NOT NULL,
  `billId` varchar(200) DEFAULT NULL,
  `billDate` varchar(50) DEFAULT NULL,
  `totalPaid` bigint(20) DEFAULT NULL,
  `generatedBy` varchar(50) DEFAULT NULL,
  `userRole` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_pk`, `billId`, `billDate`, `totalPaid`, `generatedBy`, `userRole`) VALUES
(1, 'Bill-33016095313700', '24-05-2025', 134, 'pharmacist', 'pharmacist'),
(2, 'Bill-33085533517099', '24-05-2025', 105, 'testUser', 'testUser');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medicine_pk` int(11) NOT NULL,
  `uniqueId` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `companyName` varchar(200) DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medicine_pk`, `uniqueId`, `name`, `companyName`, `quantity`, `price`) VALUES
(1, '001', 'Vitamin B', 'ManKind', 49, 12),
(2, '002', 'Vitamin C', 'Mankind', 49, 5),
(3, '003', 'Conbiflame', 'Combiflame', 58, 5),
(4, '004', 'Vitamin E', 'Vitamin', 88, 100),
(5, '005', 'Peracitamol', 'Mankind', 59, 10),
(6, '006', 'Dolo 650', 'Mankind', 49, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appuser`
--
ALTER TABLE `appuser`
  ADD PRIMARY KEY (`appuser_pk`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_pk`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medicine_pk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appuser`
--
ALTER TABLE `appuser`
  MODIFY `appuser_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medicine_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
