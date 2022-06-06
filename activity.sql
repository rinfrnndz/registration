-- phpMyAdmin SQL Dump
-- version 5.2.1-dev+20220512.1c7aab1a4d
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 04:07 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `activity`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `projects_id` varchar(255) NOT NULL,
  `act_title` varchar(255) NOT NULL,
  `act_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `projects_id`, `act_title`, `act_date`) VALUES
(1, '1004', 'sample', '2022-04-28'),
(2, '1002', 'test', '2022-05-02');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `act_id` varchar(255) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `act_id`, `f_name`, `l_name`, `birthdate`, `address`, `email`) VALUES
(1, '2', 'user', 'user', '1990-12-31', 'cotabato City', 'example@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `project_codes`
--

CREATE TABLE `project_codes` (
  `id` int(11) NOT NULL,
  `projects_id` varchar(255) NOT NULL,
  `projects_code` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_codes`
--

INSERT INTO `project_codes` (`id`, `projects_id`, `projects_code`, `password`) VALUES
(1, '1001', 'EnPolD2', '1001*iagenpold2'),
(2, '1002', 'MILAB', '1002*iagmilab'),
(3, '1003', 'KAS', '1003*iagkas'),
(4, '1004', 'WFD', '1004*iagwfd'),
(5, '1005', 'GCERF', '1005*iaggcerf'),
(6, '1006', 'Freedom House', '1006*FH'),
(7, '1007', 'NDI', '1007*iagndi'),
(8, '1008', 'IP Champions', '1008*iagipc'),
(9, '1009', 'DFAT', '1009*iagdfat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_codes`
--
ALTER TABLE `project_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_id` (`projects_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_codes`
--
ALTER TABLE `project_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
