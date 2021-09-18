-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2021 at 05:19 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `addrooms`
--

CREATE TABLE `addrooms` (
  `addrooms_id` int(11) NOT NULL,
  `addrooms_firstname` varchar(50) NOT NULL,
  `addrooms_lastname` varchar(50) NOT NULL,
  `addrooms_email` varchar(50) NOT NULL,
  `addrooms_roomno` varchar(50) NOT NULL,
  `addrooms_roomtype` varchar(50) NOT NULL,
  `addrooms_food` varchar(50) NOT NULL,
  `addrooms_semester` varchar(50) NOT NULL,
  `addrooms_startdate` date NOT NULL,
  `addrooms_enddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addrooms`
--

INSERT INTO `addrooms` (`addrooms_id`, `addrooms_firstname`, `addrooms_lastname`, `addrooms_email`, `addrooms_roomno`, `addrooms_roomtype`, `addrooms_food`, `addrooms_semester`, `addrooms_startdate`, `addrooms_enddate`) VALUES
(2, 'shryl', 'jennifer', 'jenny@gmail.com', '301', 'two-sharing', 'Non-Veg', '3', '2018-06-12', '2022-06-12'),
(3, 'harshitha', 'shetty', 'shetty@gmail.com', '301', 'two-sharing', 'Non-Veg', '6', '2020-07-20', '2022-08-30'),
(4, 'sheela', 'plum', 'sheela@gmail.com', '401', 'three-sharing', 'Veg', '7', '2021-06-21', '2022-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_firstname` varchar(50) NOT NULL,
  `contact_lastname` varchar(50) NOT NULL,
  `contact_email` varchar(50) NOT NULL,
  `contact_phone` varchar(50) NOT NULL,
  `contact_gender` varchar(50) NOT NULL,
  `contact_complaint` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_firstname`, `contact_lastname`, `contact_email`, `contact_phone`, `contact_gender`, `contact_complaint`) VALUES
(1, 'preethi', 'Nyer', 'preethi@gmail.com', '5566789654', 'female', 'I am not able to sign up.'),
(3, 'penelope', 'john', 'penelope@gmail.com', '6543345666', 'female', 'The rooms are not getting booked. please sort it o'),
(4, 'juicy', 'phillips', 'juicyyy11@gmail.com', '6578999876', 'female', 'the login page is not working');

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `personal_id` int(11) NOT NULL,
  `personal_firstname` varchar(50) NOT NULL,
  `personal_lastname` varchar(50) NOT NULL,
  `personal_email` varchar(50) NOT NULL,
  `personal_age` varchar(50) NOT NULL,
  `personal_phone` varchar(50) NOT NULL,
  `personal_gender` varchar(10) NOT NULL,
  `personal_alternatephone` varchar(50) NOT NULL,
  `personal_nationality` varchar(50) NOT NULL,
  `personal_city` varchar(50) NOT NULL,
  `personal_native` varchar(50) NOT NULL,
  `personal_semester` varchar(50) NOT NULL,
  `personal_degree` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`personal_id`, `personal_firstname`, `personal_lastname`, `personal_email`, `personal_age`, `personal_phone`, `personal_gender`, `personal_alternatephone`, `personal_nationality`, `personal_city`, `personal_native`, `personal_semester`, `personal_degree`) VALUES
(1, 'shryl', 'jennifer', 'jenny@gmail.com', '19', '9988776655', 'female', '1122334455', 'indian', 'bangalore', 'bellary', '3', 'be'),
(4, 'sheela', 'plum', 'sheela@gmail.com', '18', '6655447788', 'female', '5567843244', 'indian', 'bangalore', 'delhi', '7', 'mba');

-- --------------------------------------------------------

--
-- Table structure for table `sign`
--

CREATE TABLE `sign` (
  `sno` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sign`
--

INSERT INTO `sign` (`sno`, `firstname`, `lastname`, `email`, `phone`, `gender`, `password`) VALUES
(1, 'shryl', 'jennifer', 'jenny@gmail.com', '9988776655', 'female', 'jenny123'),
(2, 'penelope', 'john', 'penelope@gmail.com', '6543345666', 'female', 'john123'),
(3, 'ishaan', 'Avasthi', 'ishaan@gmail.com', '7765789765', 'male', 'ishaan321'),
(4, 'amy', 'santiago', 'amy@gmail.com', '5676545555', 'female', 'amy123'),
(5, 'harshitha', 'shetty', 'shetty@gmail.com', '6677887766', 'female', 'harshi123'),
(6, 'sheela', 'plum', 'sheela@gmail.com', '6655447788', 'female', 'sheela123'),
(7, 'cloe', 'princess', 'cloe@gmail.com', '6655778543', 'female', 'cloe123'),
(8, 'rahul', 'pans', 'rahul@gmail.com', '7768543456', 'male', 'pans123'),
(9, 'Avinash', 'yadav', 'avinash@gmail.com', '6678543234', 'male', 'avi123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addrooms`
--
ALTER TABLE `addrooms`
  ADD PRIMARY KEY (`addrooms_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`personal_id`);

--
-- Indexes for table `sign`
--
ALTER TABLE `sign`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addrooms`
--
ALTER TABLE `addrooms`
  MODIFY `addrooms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `personal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sign`
--
ALTER TABLE `sign`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
