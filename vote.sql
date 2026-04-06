-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2017 at 07:41 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vote`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Username`, `Password`, `Name`) VALUES
(1, 'Admin', '12345', 'Lateef');

-- --------------------------------------------------------

--
-- Table structure for table `gen_sec`
--

CREATE TABLE IF NOT EXISTS `gen_sec` (
  `id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Matric` int(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gen_sec`
--

INSERT INTO `gen_sec` (`id`, `Name`, `Matric`) VALUES
(6, 'Adeniyi Latifat Olaitan', 1630110029),
(7, 'Abdulkareem Abisola Sarat', 1630110047);

-- --------------------------------------------------------

--
-- Table structure for table `gen_vote`
--

CREATE TABLE IF NOT EXISTS `gen_vote` (
  `id` int(11) NOT NULL,
  `candidate_id` int(200) NOT NULL,
  `voters_id` int(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gen_vote`
--

INSERT INTO `gen_vote` (`id`, `candidate_id`, `voters_id`) VALUES
(14, 1630110029, 1630110057),
(15, 1630110047, 1630130001);

-- --------------------------------------------------------

--
-- Table structure for table `president`
--

CREATE TABLE IF NOT EXISTS `president` (
  `id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Matric` int(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `president`
--

INSERT INTO `president` (`id`, `Name`, `Matric`) VALUES
(31, 'Adio Lateef Olamilekan', 1630110037),
(32, 'Babatunde Ibarahim Oluwashina', 1630110028);

-- --------------------------------------------------------

--
-- Table structure for table `presi_vote`
--

CREATE TABLE IF NOT EXISTS `presi_vote` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(150) NOT NULL,
  `Voter_id` int(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presi_vote`
--

INSERT INTO `presi_vote` (`id`, `candidate_id`, `Voter_id`) VALUES
(18, '1630110037', 1630110057),
(19, '1630110037', 1630130001);

-- --------------------------------------------------------

--
-- Table structure for table `vice_p`
--

CREATE TABLE IF NOT EXISTS `vice_p` (
  `id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Matric` int(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vice_p`
--

INSERT INTO `vice_p` (`id`, `Name`, `Matric`) VALUES
(17, 'Osubiyi Wareez Abiodun', 1630110054),
(18, 'Ademola Oyindamola Yetunde', 1630130059);

-- --------------------------------------------------------

--
-- Table structure for table `vice_vote`
--

CREATE TABLE IF NOT EXISTS `vice_vote` (
  `id` int(11) NOT NULL,
  `candidate_id` int(200) NOT NULL,
  `voters_id` int(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vice_vote`
--

INSERT INTO `vice_vote` (`id`, `candidate_id`, `voters_id`) VALUES
(11, 1630130059, 1630110057),
(12, 1630110054, 1630130001);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE IF NOT EXISTS `voters` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Matric` int(15) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`ID`, `FirstName`, `LastName`, `Matric`, `Password`) VALUES
(23, 'Adigun', 'Abdulazeez', 1630110057, 'df2a0a74f18eaee98ec579d7946d6acf'),
(24, 'Gbadegeshin', 'Jeleel', 1630130001, 'df2a0a74f18eaee98ec579d7946d6acf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gen_sec`
--
ALTER TABLE `gen_sec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gen_vote`
--
ALTER TABLE `gen_vote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `president`
--
ALTER TABLE `president`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presi_vote`
--
ALTER TABLE `presi_vote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vice_p`
--
ALTER TABLE `vice_p`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vice_vote`
--
ALTER TABLE `vice_vote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gen_sec`
--
ALTER TABLE `gen_sec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `gen_vote`
--
ALTER TABLE `gen_vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `president`
--
ALTER TABLE `president`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `presi_vote`
--
ALTER TABLE `presi_vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `vice_p`
--
ALTER TABLE `vice_p`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `vice_vote`
--
ALTER TABLE `vice_vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
