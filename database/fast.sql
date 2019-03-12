-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2019 at 01:01 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fast`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'Administrator', '$2y$10$uTLz42KZpTMpY4KKFAl9reuA9zKVl3VWtPeWDToCKT0hpAUTxtoiO', 'Elikem ', 'Nanayaw', '38532457_151080585778355_2234909953577975808_n.jpg', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(27, 10, 'John Dramani', 'Mahama', 'John_Dramani_Mahama_2014_(cropped).jpg', 'NDC Aspirant'),
(28, 10, 'Nana Addo', 'Dankwa Akuffo', 'Nana_Akufo-Addo_at_European_Development_Days_2017.jpg', 'NPP Aspirant '),
(29, 10, 'Alhassan', 'Ayariga', 'images.jpg', 'APC Aspirant'),
(30, 10, 'Papa Kwesi', 'Ndum', 'in.jpg', 'CPP Aspirant '),
(31, 10, 'Komla ', 'Ivor', 'images.jpg', 'NDPC Aspirant'),
(32, 11, 'Abban, Alexander', 'Kodwo Kom', '71f2a2dfeab166899b46f9ca020eebdfgomoa_w_mp_2017.jpg', 'MP'),
(33, 11, 'Okudjeto Samuel', 'Ablakwa', 'e3edd23a9f367b400def689696ff1f34north_tongu_mp_2017.jpg', 'NDC MP North Tongu'),
(34, 11, ' Kwame George', 'Aboagye', '46a1521b9a4be7373745b5404a504b7aasene_akroso_manso_mp_2017.jpg', 'NPP MP Asene/ Akroso/ Manso');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(10, 'Presidential', 1, 1),
(11, 'Members Of Parliament ', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(1, 'zl3dFcNvXYRPqfs', '$2y$10$Wga3DTHQ0dhTFK.cAcXiOu6pTSSwpWHB3UtJjwSdZbLRTPbOa3Jke', 'Commandant ', 'Santrofi', 'se.jpg'),
(2, 'kWyc5MPvjgnRoF2', '$2y$10$A4KADv0MUiEgoqj5aWQWPeaP/a7REdSjAbXXDb7lkOQjhfNNXYXF.', 'Godwin', 'Kani', 'gow.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(81, 5, 26, 8),
(82, 5, 18, 9),
(83, 5, 19, 9),
(84, 5, 21, 9),
(85, 5, 24, 9),
(86, 6, 26, 8),
(87, 6, 18, 9),
(88, 6, 19, 9),
(89, 7, 26, 8),
(90, 7, 18, 9),
(91, 7, 19, 9),
(92, 7, 22, 9),
(93, 8, 25, 8),
(94, 8, 18, 9),
(95, 8, 19, 9),
(96, 9, 26, 8),
(97, 9, 18, 9),
(98, 9, 19, 9),
(99, 9, 23, 9),
(100, 10, 26, 8),
(101, 10, 18, 9),
(102, 10, 22, 9),
(103, 11, 26, 8),
(104, 11, 18, 9),
(105, 11, 22, 9),
(106, 12, 25, 8),
(107, 12, 26, 8),
(108, 12, 18, 9),
(109, 12, 21, 9),
(110, 12, 23, 9),
(111, 13, 25, 8),
(112, 13, 26, 8),
(113, 13, 18, 9),
(114, 13, 20, 9),
(115, 13, 22, 9),
(116, 14, 26, 8),
(117, 14, 18, 9),
(118, 14, 19, 9),
(119, 14, 24, 9),
(120, 15, 25, 8),
(121, 15, 18, 9),
(122, 16, 25, 8),
(123, 16, 18, 9),
(124, 17, 25, 8),
(125, 17, 18, 9),
(126, 2, 27, 10),
(127, 2, 33, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
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
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
