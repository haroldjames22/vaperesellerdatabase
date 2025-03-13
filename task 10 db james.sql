-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2025 at 04:59 AM
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
  `u_contact` varchar(50) NOT NULL,
  `u_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`u_id`, `u_fname`, `u_lname`, `u_email`, `u_username`, `u_type`, `u_password`, `u_contact`, `u_status`) VALUES
(7, 'james', 'villena', 'jems@gmail.com', 'jims22', 'Admin', 'ysFRxqTIGeY8vS9UXIqFlSy1i/9OwivjtXMSN54lhEQ=', '09234990256', 'Pending'),
(8, 'clyde', 'villarico', 'jc@gmail.com', 'jc123', 'User', 'ysFRxqTIGeY8vS9UXIqFlSy1i/9OwivjtXMSN54lhEQ=', '09234990256', 'Pending'),
(10, 'jmare', 'gumade', 'jmare66@gmail.com', 'jmare123', 'Admin', 'ysFRxqTIGeY8vS9UXIqFlSy1i/9OwivjtXMSN54lhEQ=', '09234990256', 'Pending'),
(22, 'ajopaw', 'mabini', 'mabini@gmail.com', 'ajtop1', 'User', 'ysFRxqTIGeY8vS9UXIqFlSy1i/9OwivjtXMSN54lhEQ=', '09234990256', 'Pending'),
(23, 'fredo', 'monencillo', 'monen@gmail.com', 'fredotop2', 'Admin', 'ysFRxqTIGeY8vS9UXIqFlSy1i/9OwivjtXMSN54lhEQ=', '09561561156', 'Pending'),
(24, 'devonli', 'dabon', 'devs@gmail.com', 'devoloy', 'User', 'ysFRxqTIGeY8vS9UXIqFlSy1i/9OwivjtXMSN54lhEQ=', '09942341711', 'Pending'),
(25, 'andrei', 'lapay', 'andrei@gmail.com', 'androy12', 'Admin', 'ysFRxqTIGeY8vS9UXIqFlSy1i/9OwivjtXMSN54lhEQ=', '09234990256', 'Pending'),
(26, 'james', 'dawdawdaw', 'awdawd@gmail.com', 'adawdawd', 'Admin', 'ysFRxqTIGeY8vS9UXIqFlSy1i/9OwivjtXMSN54lhEQ=', '09234990256', 'Pending'),
(27, 'jr', 'umpad', 'hingayat@gmail.com', 'loveyou12', 'Admin', 'ysFRxqTIGeY8vS9UXIqFlSy1i/9OwivjtXMSN54lhEQ=', '09234990256', 'Pending'),
(28, 'james', 'james', 'james@gmail.com', 'james', 'User', 'ysFRxqTIGeY8vS9UXIqFlSy1i/9OwivjtXMSN54lhEQ=', '09234990256', 'Active'),
(29, 'jenelyn', 'diaz', 'jyniee@gmail.com', 'jen143', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', '09941479039', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
