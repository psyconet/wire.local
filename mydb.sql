-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 04, 2017 at 10:42 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_register`
--

CREATE TABLE `tb_register` (
  `_id` int(6) NOT NULL,
  `_name` varchar(20) NOT NULL,
  `_email` varchar(20) NOT NULL,
  `_password` varchar(20) NOT NULL,
  `_active` varchar(10) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_register`
--

INSERT INTO `tb_register` (`_id`, `_name`, `_email`, `_password`, `_active`) VALUES
(1, 'akshay', 'akshay@gmail.com', 'akshay', 'no'),
(2, 'user1', 'user1@gmail.com', 'user1', 'no'),
(5, 'Arjun', 'arjunsinghjasrotia@g', '123', 'no'),
(6, 'u2', 'akkilsl522@gmail.com', '123', 'no'),
(7, 'maninder', 'maplesaskgmail.com', 'cbitss', 'no'),
(8, 'u4', 'u4@gmail.com', '123', 'no'),
(9, 'u6', 'u6', '123', 'no'),
(10, 'mani', 'maplesaskgmail.com', '123', 'no'),
(11, 'uu', 'uu', 'uu', 'no'),
(12, 'akshay', 'akkilsl522@gmail.com', 'q', 'no'),
(13, 'akshay', 'akkilsl522@gmail.com', 'q', 'no'),
(14, 'akshay', 'akkilsl522@gmail.com', 'q', 'no'),
(15, 'akshay', 'akkilsl522@gmail.com', 'q', 'no'),
(16, 'akshay', 'akkilsl522@gmail.com', 'q', 'no'),
(17, 'akshay', 'akkilsl522@gmail.com', 'q', 'no'),
(18, 'akshay', 'akkilsl522@gmail.com', 'q', 'no'),
(19, 'aakansha', 'aakansha', '123', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tb_staas`
--

CREATE TABLE `tb_staas` (
  `_name` varchar(20) NOT NULL,
  `_storage` varchar(20) NOT NULL,
  `_block_quota` varchar(20) NOT NULL,
  `_file_quota` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_register`
--
ALTER TABLE `tb_register`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `tb_staas`
--
ALTER TABLE `tb_staas`
  ADD PRIMARY KEY (`_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_register`
--
ALTER TABLE `tb_register`
  MODIFY `_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
