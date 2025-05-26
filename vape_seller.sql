-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2025 at 08:59 AM
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
-- Database: `vape_seller`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `logs_id` int(30) NOT NULL,
  `u_id` int(30) NOT NULL,
  `action` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `o_id` int(20) NOT NULL,
  `u_id` int(20) NOT NULL,
  `v_id` int(11) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_orders`
--

INSERT INTO `tbl_orders` (`o_id`, `u_id`, `v_id`, `quantity`, `date`, `status`) VALUES
(1, 30, 1003, '10', '2025-05-26', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `u_id` int(20) NOT NULL,
  `u_fname` varchar(50) NOT NULL,
  `u_lname` varchar(50) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_username` varchar(50) NOT NULL,
  `u_type` varchar(50) NOT NULL,
  `u_password` varchar(50) NOT NULL,
  `u_question` varchar(100) NOT NULL,
  `u_answer` varchar(100) NOT NULL,
  `u_contact` varchar(50) NOT NULL,
  `u_status` varchar(50) NOT NULL,
  `u_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`u_id`, `u_fname`, `u_lname`, `u_email`, `u_username`, `u_type`, `u_password`, `u_question`, `u_answer`, `u_contact`, `u_status`, `u_image`) VALUES
(30, 'tests', 'test', 'test@gmail.com', 'test', 'User', 'NyaDNd1pMQRb3N+SYj/4GaZCRLU9DnRtQ4eXNJ1NpXg=', '', '', '09234990256', 'Active', ''),
(32, 'tests', 'tests', 'tests23@gmail.com', 'tests', 'Admin', 'g3Vu6+bbccSZxJizaJwsIWa0bLRje5FE013FpERZ8aM=', '', '', '09452341711', 'Active', ''),
(33, 'testing', 'testing', 'testing@gmail.com', 'testing', 'User', '73l8gRjwLftklgfdXT+MdiMEjJwGPVMsyVxe16iYpk8=', '', '', '09234990256', 'Active', ''),
(34, 'mels', 'limpo', 'mellimpo@gmail.com', 'mel', 'Admin', 'rQeIGQ5aX7n+n0PB5KDwZT9lCR3xGT3N2a+JOhbSitI=', '', '', '09622496073', 'Active', ''),
(35, 'alfred', 'villena', 'alfred23@gmail.com', 'alfred123', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', '', '', '09234990256', 'Active', ''),
(36, 'jenny', 'billones', 'jenny@gmail.com', 'jenny1', 'Admin', 'mRh+H9R+Yh4EvRy70GC3efjAbAuGgN0lNnEfLpWJbck=', '', '', '09234990256', 'Active', 'src/userimages/adminpp_edit-removebg-preview.png'),
(37, 'tralalelo', 'test', 'hahah@gmail.com', 'tralalelo', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', '', '', '09234990556', 'Active', 'src/userimages/Mari.png'),
(38, 'awdawdawda', 'ssssawdawdawd', 'awdawdawd@gmail.vom', 'tester', 'Admin', '2xY/4ALk+Or1Y2gxGqwbSd5bLrdddSLt2TuK5h5iotQ=', 'Undecided', 'Who is your first love?', '09234990256', 'Active', 'q61I74hjoyI7xVplzXKDQKARWI6odce9/rfsRyd5x4Q='),
(39, 'awdawd', 'awdawd', 'awdawd@gmail.com', 'awdawd', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Undecided', 'Where were you born?', '092341990265', 'Pending', 'VSNdEMlcGce7ff0/nyy6wYS4ZirjawCaJgBQcLgLcX8='),
(40, 'clyde', 'kayat', 'bata@gmail.com', 'testers', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Who is your first love?', '7Glqnjy6nd37s9C6rit+YjnrlkYz2Sj5gocOezj6+KI=', '09234990256', 'Active', 'Undecided');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vapes`
--

CREATE TABLE `tbl_vapes` (
  `v_id` int(20) NOT NULL,
  `v_name` varchar(50) NOT NULL COMMENT '50',
  `v_price` varchar(50) NOT NULL COMMENT '50',
  `v_status` varchar(50) NOT NULL COMMENT '50',
  `v_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vapes`
--

INSERT INTO `tbl_vapes` (`v_id`, `v_name`, `v_price`, `v_status`, `v_image`) VALUES
(1001, 'Geek Bar', '500.00', 'Available', ''),
(1002, 'Geek Vape', '550.00', 'Available', ''),
(1003, 'Taro Ice Cream', '800.00', 'Available', ''),
(1004, 'awdawd', 'awdawd', 'Available', ''),
(1005, 'charf didspo', '200.00', 'Available', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`logs_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `uid` (`u_id`),
  ADD KEY `vid` (`v_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `tbl_vapes`
--
ALTER TABLE `tbl_vapes`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `logs_id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `o_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_vapes`
--
ALTER TABLE `tbl_vapes`
  MODIFY `v_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD CONSTRAINT `u_id` FOREIGN KEY (`logs_id`) REFERENCES `tbl_user` (`u_id`);

--
-- Constraints for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD CONSTRAINT `uid` FOREIGN KEY (`u_id`) REFERENCES `tbl_user` (`u_id`),
  ADD CONSTRAINT `vid` FOREIGN KEY (`v_id`) REFERENCES `tbl_vapes` (`v_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
