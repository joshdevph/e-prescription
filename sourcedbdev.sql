-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2023 at 02:40 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sourcedbdev`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `adminId` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`email`, `password`, `fullname`, `adminId`) VALUES
('admin@email.com', 'admin', 'Juan Dela Cruz', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'Joshua Alexes Dignadice', 'joshua@gmail.com', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs_tbl`
--

CREATE TABLE `user_logs_tbl` (
  `logId` int(11) NOT NULL,
  `userId` varchar(100) NOT NULL,
  `temperature` int(11) NOT NULL,
  `timeIn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_logs_tbl`
--

INSERT INTO `user_logs_tbl` (`logId`, `userId`, `temperature`, `timeIn`) VALUES
(123, '76A32BCA', 33, '2022-09-23 23:50:01'),
(124, '76A32BCA', 33, '2022-09-24 00:00:41'),
(125, '3503B473', 33, '2022-09-24 00:05:39'),
(126, '3503B473', 33, '2022-09-24 00:55:19'),
(127, '3503B473', 33, '2022-09-24 01:02:52'),
(128, '3503B473', 33, '2022-09-26 22:27:29'),
(129, '3503B473', 32, '2022-10-05 20:21:06'),
(130, '3503B473', 32, '2022-10-05 20:21:08'),
(131, '3503B473', 32, '2022-10-05 20:21:16'),
(132, '3503B473', 32, '2022-10-05 20:21:37'),
(133, '3503B473', 32, '2022-10-05 20:22:21'),
(134, '3503B473', 32, '2022-10-05 20:22:43'),
(135, '3503B473', 32, '2022-10-05 20:53:44'),
(136, '3503B473', 31, '2022-10-05 21:18:42'),
(137, '3503B473', 31, '2022-10-14 20:00:15'),
(138, '3503B473', 32, '2022-10-14 20:00:26'),
(139, '3503B473', 32, '2022-10-14 20:02:59'),
(140, '3503B473', 33, '2022-10-14 20:09:51'),
(141, '3503B473', 32, '2022-10-14 20:29:27'),
(142, '3503B473', 32, '2022-10-14 20:29:44'),
(143, '3503B473', 31, '2022-10-14 20:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `id` int(11) NOT NULL,
  `rfid` varchar(250) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `yearlvl` varchar(10) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `lrn` varchar(250) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `vax_stat` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`id`, `rfid`, `fname`, `mname`, `lname`, `yearlvl`, `section`, `department`, `lrn`, `vax_stat`, `email`, `password`, `image`) VALUES
(127, '76A32BCA', 'Jayvee', 'Guarra', 'Dignadice', '4', 'B', 'BSIS', '', 'VACCINATED', 'admin@email.com', 'admin', ''),
(164, '12345', 'JOSHUA ALEXES', NULL, 'DIGNADICE', '4', 'B', 'CRIM', 'null', 'VACCINATED', 'JOSHUA@YAHOO.COM', 'null', 'uploadPhoto/63adbb86dc9a7.jpeg'),
(166, '1234455', 'JUAN', NULL, 'DOE', '4', 'A', 'BSIS', 'null', 'VACCINATED', 'JUAN@EMAIL.COM', 'null', 'uploadPhoto/63b3f77302d23.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logs_tbl`
--
ALTER TABLE `user_logs_tbl`
  ADD PRIMARY KEY (`logId`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `adminId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_logs_tbl`
--
ALTER TABLE `user_logs_tbl`
  MODIFY `logId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
