-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220509.53f11afcaa
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 10:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `impactt`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `projects_id` varchar(255) NOT NULL,
  `activity_title` varchar(255) NOT NULL,
  `activity_date` date NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `projects_id`, `activity_title`, `activity_date`, `timestamp`) VALUES
(3, '1001', 'sample', '2022-04-13', '2022-05-13 05:07:14'),
(4, '1002', 'test', '2022-04-13', '2022-05-13 05:07:14'),
(5, '1001', 'activity', '2022-05-12', '2022-05-13 05:07:14'),
(8, '1001', 'activity 2', '2022-05-18', '2022-05-13 05:07:14'),
(10, '1001', 'sample activity', '2022-05-26', '2022-05-13 05:19:36'),
(11, '1001', 'activity 3', '2022-05-19', '2022-05-13 05:51:57'),
(14, '1002', 'activity 4', '2022-05-19', '2022-05-13 05:52:31'),
(15, '1003', 'activity 5', '2022-05-24', '2022-05-13 05:57:37'),
(16, '1003', 'activity 6', '2022-05-12', '2022-05-13 06:00:48'),
(17, '1004', 'activity 7', '2022-05-12', '2022-05-13 06:01:49'),
(18, '1004', 'Activity Test', '2022-05-26', '2022-05-27 06:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `id` int(11) NOT NULL,
  `acty_id` varchar(255) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `birthday` date NOT NULL,
  `age_range` varchar(255) NOT NULL,
  `gender` text NOT NULL,
  `ethnicity` text NOT NULL,
  `ct_municipality` text NOT NULL,
  `provnce` varchar(255) NOT NULL,
  `q1` text NOT NULL,
  `q2` text NOT NULL,
  `q3` text NOT NULL,
  `q4` text NOT NULL,
  `q5` text NOT NULL,
  `q6` text NOT NULL,
  `q7` text NOT NULL,
  `q8` text NOT NULL,
  `q9` text NOT NULL,
  `q10` text NOT NULL,
  `q11` varchar(255) NOT NULL,
  `q12` text NOT NULL,
  `q13` text NOT NULL,
  `q14` text NOT NULL,
  `q15` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`id`, `acty_id`, `first_name`, `last_name`, `birthday`, `age_range`, `gender`, `ethnicity`, `ct_municipality`, `provnce`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `q15`) VALUES
(18, '17', 'sample', 'samp', '2000-01-11', '15 - 25', 'Female', 'samp', 'samp', 'samp', '3', '3', '', '3', '3', '3', '4', '4', '4', '4', '2', 'NC', 'NC', 'NC', 'Moderately familiar'),
(19, '3', 'user', 'last name', '2012-05-11', '15-25', 'Female', 'sample', 'city', 'province', '4', '4', '3', '5', '3', '2', '4', '4', '4', '4', '4', 'NC', 'NC', 'NC', 'familiar'),
(20, '18', 'irene', 'fernandez', '1993-12-31', '26 - 35', 'Female', 'ilonggo', 'cotabato city', 'maguindanao', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '3', 'good', 'good', 'good', 'Moderately familiar'),
(21, '18', 'fsd', 'sdf', '1994-05-05', '26 - 35', 'Female', 'fasdf', 'fasf', 'asfsdf', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '', 'as', 'asdf', 'sdf', 'Slightly familiar'),
(22, '18', 'fsd', 'sdf', '1994-05-05', '26 - 35', 'Female', 'fasdf', 'fasf', 'asfsdf', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '', 'as', 'asdf', 'sdf', 'Slightly familiar'),
(23, '18', 'fsd', 'sdf', '1994-05-05', '26 - 35', 'Female', 'fasdf', 'fasf', 'asfsdf', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '', 'as', 'asdf', 'sdf', 'Slightly familiar');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `log_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`log_id`, `username`, `password`) VALUES
(1, 'enpold2', 'iag_enpold2');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(11) NOT NULL,
  `act_id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `birthdate` date NOT NULL,
  `agerange` varchar(255) NOT NULL,
  `gender` text NOT NULL,
  `ethnicity` text NOT NULL,
  `city_municipality` text NOT NULL,
  `province` varchar(255) NOT NULL,
  `mobileno` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL,
  `othereduc` varchar(255) NOT NULL,
  `org_office` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `org_no` varchar(255) NOT NULL,
  `org_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `act_id`, `firstname`, `lastname`, `birthdate`, `agerange`, `gender`, `ethnicity`, `city_municipality`, `province`, `mobileno`, `email`, `education`, `othereduc`, `org_office`, `position`, `org_no`, `org_email`) VALUES
(5, 4, 'adsfsd', 'daff', '1990-08-08', '26 - 35', 'Female', 'asdfsd', 'asdfasd', 'asdfsd', '064453434354', 'are@email.com', 'OtherEducation', 'asdfsd', 'dsfa', 'dfadf', 'asdf', 'asdf'),
(6, 3, 'x', 'x', '2022-05-19', '15 - 25', 'Female', 'x', 'x', 'x', '064453434354', 'are@email.com', 'Bachelors/Baccalaureate Degree', '', 'x', 'x', 'x', 'x'),
(7, 3, 'z', 'z', '1993-02-02', '26 - 35', 'Female', 'z', 'z', 'z', '064453434354', 'are@email.com', 'Bachelors/Baccalaureate Degree', '', 'z', 'z', 'z', 'z'),
(8, 5, 'r', 'r', '2000-04-04', '15 - 25', 'Male', 'r', 'r', 'r', 'r', 'are@email.com', 'Graduate Degree (Masters Degree)', '', 'r', 'r', 'NA', 'NA'),
(9, 5, 'irene', 'fernandez', '1993-12-31', '26 - 35', 'Female', 'tagalog', 'Cotabato City', 'maguindanao', '09111111111', 'email@sample.com', 'Bachelors/Baccalaureate Degree', '', 'iag', 'IT', 'NA', 'NA'),
(10, 8, 'user', 'user', '1990-11-11', '26 - 35', 'Male', 'samp', 'samp', 'samp', '1501165456', 'info@iag.org.ph', 'Bachelors/Baccalaureate Degree', '', 'samp', 'samp', 'NA', 'NA'),
(11, 3, 'asd', 'asd', '2000-01-01', '15 - 25', 'Male', 'asd', 'asd', 'asd', '1501165456', 'info@iag.org.ph', 'Bachelors/Baccalaureate Degree', '', 'ads', 'asd', 'NA', 'NA'),
(12, 17, 'firstname', 'lastname', '2000-11-11', '15 - 25', 'Female', 'ethnicity', 'city', 'province', '09459958168', 'rinfernandez31@gmail.com', 'Bachelors/Baccalaureate Degree', '', 'NA', 'NA', 'NA', 'NA'),
(13, 3, 'user', 'last user', '1991-02-22', '26 - 35', 'Female', 'samp', 'samp', 'province', '09459958168', 'i.fernandez@iag.org.ph', 'Graduate Degree (Masters Degree)', '', 'NA', 'NA', 'NA', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `projectcode`
--

CREATE TABLE `projectcode` (
  `id` int(11) NOT NULL,
  `projects_id` varchar(255) NOT NULL,
  `project_code` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectcode`
--

INSERT INTO `projectcode` (`id`, `projects_id`, `project_code`, `password`) VALUES
(1, '1001', 'EnPolD2', '1001*iagenpold2'),
(2, '1002', 'WFD', '1002*iagwfd'),
(3, '1003', 'KAS', '1003*iagkas'),
(4, '1004', 'MILAB', '1004*iagmilab'),
(5, '1005', 'IDEA', '1005*iagidea'),
(6, '1006', 'NDI', '1006*iagndi'),
(7, '1007', 'Freedom House', '1007*iagfh'),
(8, '1008', 'DFAT', '1008*iagdfat'),
(9, '1009', 'GCERF', '1009*iaggcerf'),
(10, '1010', 'IP Champions', '1010*iagipc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `log_id` (`log_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectcode`
--
ALTER TABLE `projectcode`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `projectcode`
--
ALTER TABLE `projectcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



