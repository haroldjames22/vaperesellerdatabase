-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2025 at 11:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
  `log_id` int(30) NOT NULL,
  `u_id` int(30) NOT NULL,
  `action` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`log_id`, `u_id`, `action`, `date`) VALUES
(2, 30, 'Added order for Vape ID 1002', '2025-05-28'),
(3, 32, 'Updated Vape ID 1005: charf didspo', '2025-05-28'),
(4, 32, 'Created User Record with ID No. 42', '2025-05-28'),
(5, 32, 'Created User Record with ID No. 43', '2025-05-28'),
(6, 32, 'Updated User Record with ID No. 41', '2025-05-28'),
(7, 44, 'Updated Vape ID 1004: vape', '2025-05-28'),
(8, 44, 'Updated User Record with ID No. 44', '2025-05-28'),
(9, 44, 'Updated User Record with ID No. 38', '2025-05-28'),
(10, 30, 'Added order for Vape ID 1003', '2025-05-28'),
(11, 30, 'Added order for Vape ID 1003', '2025-05-28'),
(12, 32, 'Added Vape: mikee', '2025-05-28'),
(13, 30, 'Added order for Vape ID 1003', '2025-05-28'),
(14, 30, 'Added order for Vape ID 1006', '2025-05-28'),
(15, 30, 'Added order for Vape ID 1008', '2025-05-28');

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
(1, 30, 1003, '10', '2025-05-26', 'Pending'),
(5, 30, 1002, '2', '2025-05-28', 'Approved'),
(6, 30, 1003, '20', '2025-05-28', 'Pending'),
(7, 30, 1003, '20', '2025-05-28', 'Pending'),
(8, 30, 1003, '1000', '2025-05-28', 'Pending'),
(9, 30, 1006, '50', '2025-05-28', 'Pending'),
(10, 30, 1008, '50', '2025-05-28', 'Pending');

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
(38, 'awdawdawda', 'ssssawdawdawd', 'awdawdawd@gmail.vom', 'tester', 'What is your favorite food?', 'kiqdweYi/Glu2Qd5pH1XjayGRELPUr1cEGlDdP4872M=', 'What is your favorite food?', 'kiqdweYi/Glu2Qd5pH1XjayGRELPUr1cEGlDdP4872M=', '09234990256', 'Active', 'src/userimages/Cream and Brown Retro Cafe Logo.png'),
(39, 'awdawd', 'awdawd', 'awdawd@gmail.com', 'awdawd', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Undecided', 'Where were you born?', '092341990265', 'Pending', 'VSNdEMlcGce7ff0/nyy6wYS4ZirjawCaJgBQcLgLcX8='),
(40, 'clyde', 'kayat', 'bata@gmail.com', 'testers', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Who is your first love?', '7Glqnjy6nd37s9C6rit+YjnrlkYz2Sj5gocOezj6+KI=', '09234990256', 'Active', 'src/images/default.png'),
(41, 'dada', 'dadada', 'dada@gmail.com', 'dada', 'What is your favorite food?', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'What is your favorite food?', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', '12345678978', 'Pending', 'src/images/default.png'),
(43, 'jems', 'jemss', 'jemss@gmail.com', 'jemss', 'What is your favorite food?', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'What is your favorite food?', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', '45612345645', 'Active', 'src/image/default.png'),
(44, 'awdawdawd', 'hahaha', 'hahahahahaha@gmail.com', 'adok123', 'What is your favorite food?', 'NBYWrmoA/JoDM/ch9Tgq8p41ekFyon8BzFcia+U+AQc=', 'What is your favorite food?', 'NBYWrmoA/JoDM/ch9Tgq8p41ekFyon8BzFcia+U+AQc=', '09234990256', 'Active', 'src/images/default.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vapes`
--

CREATE TABLE `tbl_vapes` (
  `v_id` int(20) NOT NULL,
  `v_name` varchar(50) NOT NULL COMMENT '50',
  `v_price` varchar(50) NOT NULL COMMENT '50',
  `v_status` varchar(50) NOT NULL COMMENT '50',
  `v_image` varchar(50) NOT NULL,
  `v_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vapes`
--

INSERT INTO `tbl_vapes` (`v_id`, `v_name`, `v_price`, `v_status`, `v_image`, `v_quantity`) VALUES
(1001, 'Geek Bar', '500.00', 'Available', '', 0),
(1002, 'Geek Vape', '550.00', 'Available', '', 0),
(1003, 'Taro Ice Cream', '800.00', 'Available', '', 0),
(1004, 'vape', '250.00', 'Available', '', 0),
(1005, 'charf didspo', '200.00', 'Available', '', 50),
(1006, 'mikee', '500.00', 'Available', '', 100),
(1007, 'geek chillax', '550.00', 'Available', '', 50),
(1008, 'ikaw', '500', 'Available', '', 500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`log_id`),
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
  MODIFY `log_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `o_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_vapes`
--
ALTER TABLE `tbl_vapes`
  MODIFY `v_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD CONSTRAINT `u_id` FOREIGN KEY (`u_id`) REFERENCES `tbl_user` (`u_id`);

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
