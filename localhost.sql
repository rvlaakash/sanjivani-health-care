-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 19, 2019 at 05:28 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id8280403_hms`
--
CREATE DATABASE IF NOT EXISTS `id8280403_hms` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id8280403_hms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'Dentist', 1, 1, 500, '2016-12-31', '09:25', '2017-01-01 00:29:02', 1, 0, ''),
(2, 'Homeopath', 4, 5, 700, '2017-01-11', '14:10', '2017-01-07 08:02:58', 0, 1, ''),
(3, 'Demo test', 7, 2, 200, '2019-01-30', '9:30 AM', '2019-01-18 03:59:26', 1, 1, ''),
(4, 'Demo test', 7, 2, 200, '2019-01-29', '12:45 PM', '2019-01-18 07:21:31', 1, 1, ''),
(5, 'Demo test', 7, 2, 200, '2019-01-20', '2:45 PM', '2019-01-18 09:18:06', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `subject`, `message`) VALUES
('Akash Raval', 'rvlaakash@gmail.com', 'hello World', '9157937194'),
('Akash Raval', 'rvlaakash@gmail.com', 'hello World', 'dvssdvsdvsvdsvsdvsdvsvs'),
('Akash Raval', 'rvlaakash@gmail.com', 'hello World', 'dvssdvsdvsvdsvsdvsdvsvs'),
('Deep', 'jarvis19989008@gmail.com', 'testing', 'i need to test my back of new injury'),
('Deep', 'jarvis19989008@gmail.com', 'testing', '1234567890'),
('Deep', 'jarvis19989008@gmail.com', 'testing', 'i needfafasdf '),
('Deep', 'jarvis19989008@gmail.com', 'testing', 'Contact Me On 1234567890\njarvis19989008@gmail.com\ni need to test my knees ');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Anuj', 'New Delhi', '500', 8285703354, 'anuj.lpu1@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2016-12-29 06:25:37', '04-01-2017 01:27:51 PM'),
(2, 'Homeopath', 'Sarita Pandey', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', ''),
(3, 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', ''),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', ''),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', ''),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', ''),
(7, 'Demo test', 'abc ', 'xyz', '200', 852888888, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:08:58', ''),
(8, 'General Physician', 'Akash Raval', '15, New Market Pakistan', '200', 9157937199, 'drdr@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2019-01-17 09:39:48', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 2, 'sarita@gmail.com', 0x30000000000000000000000000000000, '2017-01-06 05:53:31', '', 1),
(2, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 06:36:07', '', 0),
(3, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:36:37', '06/01/2017 07:36:45', 1),
(4, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:41:33', '12:11:46', 1),
(5, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:55:16', '06-01-2017 12:27:47 PM', 1),
(6, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 07:07:12', '', 0),
(7, 0, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:04:42', '', 0),
(8, 0, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:04:55', '19-01-2019 08:09:22 AM', 0),
(9, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:05:54', '19-01-2019 09:41:11 AM', 1),
(10, 7, 'test@demo.com', 0x32372e35342e3137392e313830000000, '2019-01-17 08:55:18', '17-01-2019 02:20:17 PM', 1),
(11, 7, 'test@demo.com', 0x32372e35342e3137392e313830000000, '2019-01-17 09:00:05', '17-01-2019 02:35:39 PM', 1),
(12, 7, 'test@demo.com', 0x3135372e33322e392e39320000000000, '2019-01-17 17:50:58', '17-01-2019 11:15:19 PM', 1),
(13, 7, 'test@demo.com', 0x32372e35342e3137392e313830000000, '2019-01-18 03:58:09', '18-01-2019 09:22:26 AM', 1),
(14, 7, 'test@demo.com', 0x32372e35342e3137392e313830000000, '2019-01-18 03:59:56', '18-01-2019 09:24:52 AM', 1),
(15, 7, 'test@demo.com', 0x323430353a3230353a633930623a6638, '2019-01-18 06:09:41', '18-01-2019 11:42:08 AM', 1),
(16, 7, 'test@demo.com', 0x32372e35342e3137392e313830000000, '2019-01-18 07:03:23', '18-01-2019 12:27:24 PM', 1),
(17, 7, 'test@demo.com', 0x32372e35342e3137392e313830000000, '2019-01-18 07:22:04', '18-01-2019 12:46:22 PM', 1),
(18, 7, 'test@demo.com', 0x32372e35342e3137392e313830000000, '2019-01-18 08:16:44', '18-01-2019 01:48:10 PM', 1),
(19, 7, 'test@demo.com', 0x32372e35342e3137392e313830000000, '2019-01-18 08:46:08', '18-01-2019 02:12:09 PM', 1),
(20, 7, 'test@demo.com', 0x32372e35342e3137392e313830000000, '2019-01-18 09:40:19', '', 1),
(21, 7, 'test@demo.com', 0x3135372e33322e3233342e3830000000, '2019-01-19 02:35:17', '19-01-2019 08:01:06 AM', 1),
(22, 7, 'test@demo.com', 0x3135372e33322e3233342e3830000000, '2019-01-19 02:45:48', '', 1),
(23, 7, 'test@demo.com', 0x3135372e33322e3233342e3830000000, '2019-01-19 04:17:29', '', 1),
(24, 7, 'test@demo.com', 0x3135372e33322e3233342e3830000000, '2019-01-19 04:48:49', '', 1),
(25, 0, 'test@demo.com', 0x3135372e33322e3233342e3830000000, '2019-01-19 05:29:56', '', 0),
(26, 7, 'test@demo.com', 0x3135372e33322e3233342e3830000000, '2019-01-19 05:30:05', '19-01-2019 10:54:39 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', ''),
(2, 'General Physician', '2016-12-28 06:38:12', ''),
(3, 'Dermatologist', '2016-12-28 06:38:48', ''),
(4, 'Homeopath', '2016-12-28 06:39:26', ''),
(5, 'Ayurveda', '2016-12-28 06:39:51', ''),
(6, 'Dentist', '2016-12-28 06:40:08', ''),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', ''),
(9, 'Demo test', '2016-12-28 07:37:39', '28-12-2016 01:28:42 PM'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '07-01-2017 01:38:04 PM');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diseases` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `medicines` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Diet` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `doctor` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `name`, `diseases`, `medicines`, `Diet`, `date`, `doctor`, `email`) VALUES
('2', 'Sarita pandey', 'No Problems', 'No', 'No', '2019-01-19 05:30:37', 'abc ', 'test@demo.com');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(6, 1, '', 0x3a3a3100000000000000000000000000, '2017-01-06 07:02:28', '', 1),
(7, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:04:28', '', 1),
(8, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 07:07:41', '06-01-2017 12:38:09 PM', 0),
(9, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:08:01', '', 1),
(10, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:10:09', '06-01-2017 12:41:43 PM', 1),
(11, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 07:57:18', '07-01-2017 01:27:34 PM', 1),
(12, 0, 'asdad', 0x3a3a3100000000000000000000000000, '2017-01-07 07:57:44', '', 0),
(13, 0, 'xyz@test.com', 0x3a3a3100000000000000000000000000, '2017-01-07 07:59:43', '', 0),
(14, 5, 'amit12@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:00:44', '07-01-2017 01:34:19 PM', 1),
(15, 2, 'test@gmail.com', 0x32372e35342e3137392e313830000000, '2019-01-17 08:56:59', '17-01-2019 02:21:39 PM', 1),
(16, 2, 'test@gmail.com', 0x32372e35342e3137392e313830000000, '2019-01-18 03:50:25', '18-01-2019 09:15:06 AM', 1),
(17, 2, 'test@gmail.com', 0x32372e35342e3137392e313830000000, '2019-01-18 03:57:24', '18-01-2019 09:21:40 AM', 1),
(18, 2, 'test@gmail.com', 0x32372e35342e3137392e313830000000, '2019-01-18 03:58:48', '18-01-2019 09:23:25 AM', 1),
(19, 2, 'test@gmail.com', 0x32372e35342e3137392e313830000000, '2019-01-18 07:02:54', '18-01-2019 12:26:55 PM', 1),
(20, 2, 'test@gmail.com', 0x32372e35342e3137392e313830000000, '2019-01-18 07:21:12', '18-01-2019 12:45:30 PM', 1),
(21, 2, 'test@gmail.com', 0x32372e35342e3137392e313830000000, '2019-01-18 07:41:29', '', 1),
(22, 0, 'test@gmail.com', 0x32372e35342e3137392e313830000000, '2019-01-18 07:48:51', '', 0),
(23, 2, 'test@gmail.com', 0x32372e35342e3137392e313830000000, '2019-01-18 07:49:13', '', 1),
(24, 2, 'test@gmail.com ', 0x32372e35342e3137392e313830000000, '2019-01-18 07:56:00', '', 1),
(25, 2, 'test@gmail.com', 0x32372e35342e3137392e313830000000, '2019-01-18 07:57:32', '', 1),
(26, 2, 'test@gmail.com', 0x32372e35342e3137392e313830000000, '2019-01-18 08:00:15', '18-01-2019 01:40:02 PM', 1),
(27, 2, 'test@gmail.com', 0x32372e35342e3137392e313830000000, '2019-01-18 08:30:23', '18-01-2019 02:09:16 PM', 1),
(28, 0, 'test@demo.com', 0x32372e35342e3137392e313830000000, '2019-01-18 08:45:48', '', 0),
(29, 2, 'test@gmail.com', 0x32372e35342e3137392e313830000000, '2019-01-18 09:16:41', '18-01-2019 02:51:59 PM', 1),
(30, 2, 'test@gmail.com', 0x3135372e33322e3233342e3830000000, '2019-01-19 02:51:15', '', 1),
(31, 0, 'test@gmail.com', 0x3135372e33322e3233342e3830000000, '2019-01-19 05:24:45', '', 0),
(32, 2, 'test@gmail.com', 0x3135372e33322e3233342e3830000000, '2019-01-19 05:24:55', '19-01-2019 10:53:32 AM', 1),
(33, 2, 'test@gmail.com', 0x3135372e33322e3233342e3830000000, '2019-01-19 05:31:08', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Anuj kumar', 'Test address', 'Aligarh', 'Males', 'info@w3gang.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-26 07:03:09', '30-12-2016 11:27:47 AM'),
(2, 'Sarita pandey', 'New Delhi India', 'Delhi', 'female', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-30 05:34:39', ''),
(4, 'Rahul Singh', 'New Delhi', 'New delhi', 'male', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:41:14', ''),
(5, 'Amit kumar', 'New Delhi India', 'Delhi', 'male', 'amit12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:00:26', '07-01-2017 01:32:12 PM'),
(6, 'Jayant Patel', '16 , New Ashopalav Society,  , Dhobighat Road , Surat', 'Surat', 'male', 'jagjit@gmail.com', '4297f44b13955235245b2497399d7a93', '2019-01-17 14:21:57', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
