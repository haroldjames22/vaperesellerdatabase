-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2025 at 07:41 AM
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
  `u_question` varchar(100) NOT NULL,
  `u_answer` varchar(100) NOT NULL,
  `u_contact` varchar(50) NOT NULL,
  `u_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`u_id`, `u_fname`, `u_lname`, `u_email`, `u_username`, `u_type`, `u_password`, `u_question`, `u_answer`, `u_contact`, `u_status`) VALUES
(30, 'tests', 'test', 'test@gmail.com', 'test', 'User', 'NyaDNd1pMQRb3N+SYj/4GaZCRLU9DnRtQ4eXNJ1NpXg=', '', '', '09234990256', 'Active'),
(32, 'tests', 'tests', 'tests23@gmail.com', 'tests', 'Admin', 'g3Vu6+bbccSZxJizaJwsIWa0bLRje5FE013FpERZ8aM=', '', '', '09452341711', 'Active'),
(33, 'testing', 'testing', 'testing@gmail.com', 'testing', 'User', '73l8gRjwLftklgfdXT+MdiMEjJwGPVMsyVxe16iYpk8=', '', '', '09234990256', 'Active'),
(34, 'mels', 'limpo', 'mellimpo@gmail.com', 'mel', 'Admin', 'rQeIGQ5aX7n+n0PB5KDwZT9lCR3xGT3N2a+JOhbSitI=', '', '', '09622496073', 'Active'),
(35, 'alfred', 'villena', 'alfred23@gmail.com', 'alfred123', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', '', '', '09234990256', 'Active'),
(36, 'jenny', 'billones', 'jenny@gmail.com', 'jenny1', 'Admin', 'mRh+H9R+Yh4EvRy70GC3efjAbAuGgN0lNnEfLpWJbck=', '', '', '09234990256', 'Active'),
(37, 'tralalelo', 'test', 'hahah@gmail.com', 'tralalelo', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', '', '', '09234990556', 'Active'),
(38, 'awdawd', 'bartos', 'kj@gmail.com', 'kayat123', 'User', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', '', '', '09234990256', 'Active'),
(39, 'awdwd', 'dawdawdawd', 'awdawdawd@gmail.com', 'awdawdawd', 'Admin', 'iRumBySui7iOwy1DA3VvTJjaQ5Mh9nvQiU3dQeEIXvQ=', '', '', '09234490256', 'Active'),
(40, 'hanna', 'alferez', 'jajawd@gmail.com', 'keonboang', 'Admin', 'iRumBySui7iOwy1DA3VvTJjaQ5Mh9nvQiU3dQeEIXvQ=', '', '', '09234490256', 'Active'),
(41, 'awdwdrggg', 'dawdawdawd', 'jamesjawhdaww@gmail.com', 'jfghjnhgvhn', 'Admin', 'iRumBySui7iOwy1DA3VvTJjaQ5Mh9nvQiU3dQeEIXvQ=', '', '', '09234490256', 'Active'),
(42, 'wderferg', 'wdawdwad', 'awdwd@gmail.com', 'jamesgwapo', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', '', '', '09234990256', 'Active'),
(43, 'test', 'test', 'jems@gmail.com', 'jems', 'User', '4umVi1JCFVXfWUYbFdmEmoWfy2+fbiFchln02joxUJU=', 'What is your favorite food?	', 'uPmN1UwMBVgmLPLNn2NJy997SUhYM8/03NkhYpmP2wk=', '12345678945', 'Active'),
(44, 'jc', 'villacensio', 'jc@gmail.com', 'jc', 'Admin', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'What is your favorite color?', 'j87QC2zigUVtadrvXysz6vGkoptZI+vl8fLFT1iGx6M=', '12312312312', 'Active'),
(45, 'drtgdg', 'drgdrg', 'drgdrg@gmail.com', 'adok', 'Admin', 'HuF2fDAcR6+tf9g9bKrTbX9HcLYGMTBoPLoNQWakW5k=', 'Where were you born?', 'VSNdEMlcGce7ff0/nyy6wYS4ZirjawCaJgBQcLgLcX8=', '09234990256', 'Pending'),
(46, 'baho', 'clyde', 'kaayo@gmail.com', 'seaside', 'Admin', '3xKkBrQVwhfft9LSAJI9mrvZOLOVEIp9B4aDKIA9N+0=', 'Who is your first love?', 'M5O6PEvv1bBFjp9+3+3qlvrdSbBXkIzdgPSmc+nHrNg=', '09941479039', 'Active'),
(47, 'adok', 'adok', 'adok@gmail.com', 'adokdok', 'Admin', 'HuF2fDAcR6+tf9g9bKrTbX9HcLYGMTBoPLoNQWakW5k=', 'Who is your first love?', 'z54I0JyrjY9nZ5UnqvEPVOhv45oY/IMgGPJcg4+8VHk=', '09234992589', 'Active');

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
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
