-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2022 at 10:33 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

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
(19, '1008', 'Youth Vulnerability to Violent Extremism: A Follow-through Study in the BARMM', '2022-01-22', '2022-06-28 04:17:55'),
(20, '1001', 'Forum and Round Table Discussion on BTA BILL No.58 - An Act Providing for the Bangsamoro Local Governance Code', '2022-02-17', '2022-06-28 05:37:52'),
(21, '1008', 'IPS Summit: Road towards genuine recognition', '2022-04-20', '2022-06-28 05:47:05');

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
(14, 19, 'Nihma Maulod', 'Dompol', '0000-00-00', '15 - 25', 'Female', 'Yakan', 'Lamitan City', 'Basilan', '09276708750', 'nihmadompol27@gmail.com', 'Bachelors/Baccalaureate Degree', '', 'Null', 'Null', 'NA', 'NA'),
(15, 19, 'Al-Nasser Taleon', 'Tumacder, Jr.', '0000-00-00', '15 - 25', 'Male', 'Tausug', 'Null', 'Sulu', '09562180207', 'alnasserttjr@gmail.com', 'Graduate Degree (Masters Degree)', '', 'TGYPO', 'President', 'NA', 'NA'),
(16, 19, 'Ruaina Salapi', 'Abdurasid', '0000-00-00', '', 'Female', 'Null', 'Zamboanga City', 'Null', '09278062414', 'none@email.com', 'Bachelors/Baccalaureate Degree', '', 'Null', 'Null', 'NA', 'NA'),
(17, 19, 'Delhana Mustafa', 'Uto', '0000-00-00', '46 - 55', 'Female', 'Tausug', 'Lamitan City', 'Basilan', '09457237397', 'delhanamj@gmail.com', 'Graduate Degree (Masters Degree)', '', 'DepEd', 'TIC', 'NA', 'NA'),
(18, 19, 'Aileen Reyes', 'Aracama', '0000-00-00', '36 - 45', 'Female', 'Tausug', 'Lamitan City', 'Basilan', '09551069957', 'aileen.aracama@deped.gov.ph', 'Bachelors/Baccalaureate Degree', '', 'DepEd', 'Teacher-1', 'NA', 'NA'),
(19, 19, 'Raina Reyes', 'Aracama', '0000-00-00', '15 - 25', 'Female', 'Tausug', 'Lamitan City', 'Basilan', '09364291519', 'itsrainaaracama@gmail.com', 'Bachelors/Baccalaureate Degree', '', 'Null', 'Null', 'NA', 'NA'),
(20, 19, 'Parha Abdulla', 'Jainal', '0000-00-00', '36 - 45', 'Female', 'Tausug', 'Lamitan City', 'Basilan', '09355980274', 'parha.jainal@deped.gov.ph', 'Bachelors/Baccalaureate Degree', '', 'DepEd', 'Teacher-1', 'NA', 'NA'),
(21, 19, 'Yahya Nanain', 'Titong', '0000-00-00', '36 - 45', 'Male', 'Tausug', 'Null', 'Sulu', '09552700690', 'tedtitong@gmail.com', 'OtherEducation', 'ILFP, FELLOW', 'Muslim Leaders Asssembly, Inc.', 'President', 'NA', 'NA'),
(22, 19, 'Eddiemer Alih', 'Abuhasim', '0000-00-00', '', 'Male', 'Tausug', 'Null', 'Sulu', '09678116373', 'abuhasimedda@gmail.com', 'Bachelors/Baccalaureate Degree', '', 'Null', 'Null', 'NA', 'NA'),
(23, 19, 'Hakim Nanain', 'Titong', '0000-00-00', '26 - 35', 'Male', 'Tausug', 'Null', 'Sulu', '09651280592', 'kim883910@gmail.com', 'Bachelors/Baccalaureate Degree', '', 'Null', 'Null', 'NA', 'NA');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `projectcode`
--
ALTER TABLE `projectcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
