-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 25, 2021 at 05:58 AM
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
-- Database: `visittimorleste`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id_account` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id_account`, `first_name`, `last_name`, `email`, `password`, `birthday`) VALUES
(1, 'Padang', 'Perwira Yudha', 'padangperwirayudha@gmail.com', 'password', '1998-08-16'),
(2, 'tes', '123', 'tes123@gmail.com', 'p3rw1rapcaaa', NULL),
(6, 'tes123', 'Ttteesss', 'Tes@gmail.com', 'testing', NULL),
(7, 'testingmekmek', 'testingzzz', 'testing@gmail.com', 'testing', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `category_name`, `image`) VALUES
(1, 'Attractions', 'categoryattractions.jpg'),
(2, 'Accomodations', 'categoryaccomodations.jpg'),
(3, 'Food & Beverages', 'categoryfoodbeverages.jpg'),
(4, 'Bars & Clubs', 'categorybarsclubs.jpg'),
(5, 'Mall & Shops', 'categorymallshops.jpg'),
(6, 'Tours', 'categorytours.jpg'),
(7, 'Events', 'categoryevents.jpg'),
(9, 'really', 'sneakpeak1.png-1623075949653-644552459.png');

-- --------------------------------------------------------

--
-- Table structure for table `localreview`
--

CREATE TABLE `localreview` (
  `id_localreview` int(11) NOT NULL,
  `id_tours` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `quote` varchar(255) NOT NULL,
  `whyshouldvisit` text NOT NULL,
  `specialtip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `localreview`
--

INSERT INTO `localreview` (`id_localreview`, `id_tours`, `id_user`, `quote`, `whyshouldvisit`, `specialtip`) VALUES
(2, 5, 3, 'Nikmati rasa stroberi di sini', 'Enak banget buat duduk duduk gaes', 'Mending kalau ke sini bawa golok buat bacok pengunjung sekitarzz'),
(3, 6, 1, 'Uindah polll', 'pokoknya harps ke sini', 'bawa hang');

-- --------------------------------------------------------

--
-- Table structure for table `precinct`
--

CREATE TABLE `precinct` (
  `id_precinct` int(11) NOT NULL,
  `precinct_name` varchar(255) NOT NULL,
  `mini_description` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `precinct`
--

INSERT INTO `precinct` (`id_precinct`, `precinct_name`, `mini_description`, `description`, `image`) VALUES
(1, 'tes123', 'asdasdasd', 'asdasdasdasd', 'Screen Shot 2021-06-15 at 23.45.21.png-1623947825826-315258601.png'),
(2, 'tes123', 'sadasd', 'asdasdasd', 'Screen Shot 2021-06-15 at 23.45.21.png-1623948229289-156530470.png'),
(3, 'testinglagi', 'testinglagi', 'testinglagi', 'Screen Shot 2021-06-15 at 23.45.21.png-1623948596382-180607977.png'),
(4, 'atatat', 'atatat', 'attar', 'Screen Shot 2021-06-15 at 23.45.21.png-1623948755692-939578819.png'),
(5, 'atatatadsasdasdasd', 'atatat', 'attar', 'Screen Shot 2021-06-15 at 23.45.21.png-1623948801889-818601500.png'),
(6, 'aaa', 'aaaa', 'bbbb', 'Screen Shot 2021-06-15 at 23.45.21.png-1623948840691-684462851.png'),
(7, 'dsfdsf', 'dsfdsfdsf', 'ffff', 'Screen Shot 2021-06-15 at 23.45.21.png-1623949544867-576610228.png');

-- --------------------------------------------------------

--
-- Table structure for table `precinct_tours`
--

CREATE TABLE `precinct_tours` (
  `id_precinct` int(11) NOT NULL,
  `id_tours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `precinct_tours`
--

INSERT INTO `precinct_tours` (`id_precinct`, `id_tours`) VALUES
(1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id_promotions` int(11) NOT NULL,
  `promotions_name` varchar(255) NOT NULL,
  `id_tours` int(11) NOT NULL,
  `from_time` date NOT NULL,
  `to_time` date NOT NULL,
  `description` text NOT NULL,
  `redemptioninstruction` text NOT NULL,
  `termsandconditions` text NOT NULL,
  `disclaimer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id_promotions`, `promotions_name`, `id_tours`, `from_time`, `to_time`, `description`, `redemptioninstruction`, `termsandconditions`, `disclaimer`) VALUES
(2, 'aaaaaazzz', 5, '2021-06-18', '2021-06-26', '<p><b>sdasda</b></p>', '<p>asdasd</p>', '<p>asdasd</p>', '<p>asdasd</p>');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `days` varchar(50) NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `id_tours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`days`, `from_time`, `to_time`, `id_tours`) VALUES
('Sunday', '09:30:00', '09:30:00', 3),
('Sunday', '09:30:00', '09:30:00', 5),
('Sunday', '09:30:00', '09:30:00', 2),
('Sunday', '09:30:00', '09:30:00', 6),
('Public Holiday', '09:30:00', '09:30:00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `spotlights`
--

CREATE TABLE `spotlights` (
  `id_spotlights` int(11) NOT NULL,
  `spotlights_title` varchar(255) NOT NULL,
  `id_tours` int(11) NOT NULL,
  `date_posted` datetime NOT NULL,
  `spotlights_content` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `id_tours` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id_tours`, `id_category`, `name`, `address`, `website`, `phone`, `description`, `image`) VALUES
(2, 1, 'satu', 'satu', 'satu', 'satu', 'satu', '405ff63f-2ac8-473e-807e-495f21850af9.jpg'),
(3, 1, 'xxx', 'xxx', 'xxx', 'xxx', 'xxx', '405ff63f-2ac8-473e-807e-495f21850af9.jpg'),
(5, 1, 'Memek', 'awaw', 'awaw', 'aw', 'awaw', '02a54dee1a0b584d33e37c89a80aad68.jpg-1623085069886-915700970.jpg'),
(6, 9, 'tes123', 'nyiahaha', 'nyiahaha', 'nyiahaha', 'nyiahahanyiahahanyiahahanyiahahanyiahahanyiahahanyiahahanyiahahanyiahahanyiahahanyiahahanyiahahanyiahahanyiahahanyiahahanyiahahanyiahahanyiahahanyiahahanyiaha', 'sneakpeak1.png-1623087855205-688261418.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `minitype` varchar(255) NOT NULL,
  `aboutme` text NOT NULL,
  `locals` enum('Yes','No') NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`, `type`, `minitype`, `aboutme`, `locals`, `avatar`) VALUES
(1, 'padang', 'Explorer', 'Foodies | Wibu | Ginseng', 'ganteng orangnya', 'No', 'avatarpadang.jpg'),
(3, 'ganteng123', 'Explorer', 'a | b', 'guanteng pollzzzzz', 'No', 'Screenshot_1618976987.png-1623140463340-265041052.png'),
(4, 'User 5', 'Tourist', 'toursit | ganteng', 'Toursit ghanteng', 'Yes', 'unnamed.png-1623139021776-797246257.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id_account`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `localreview`
--
ALTER TABLE `localreview`
  ADD PRIMARY KEY (`id_localreview`),
  ADD KEY `id_tours` (`id_tours`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `precinct`
--
ALTER TABLE `precinct`
  ADD PRIMARY KEY (`id_precinct`);

--
-- Indexes for table `precinct_tours`
--
ALTER TABLE `precinct_tours`
  ADD KEY `id_precinct` (`id_precinct`),
  ADD KEY `id_tours` (`id_tours`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id_promotions`),
  ADD KEY `id_tours` (`id_tours`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD KEY `id_tours` (`id_tours`);

--
-- Indexes for table `spotlights`
--
ALTER TABLE `spotlights`
  ADD PRIMARY KEY (`id_spotlights`),
  ADD KEY `id_tours` (`id_tours`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id_tours`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `localreview`
--
ALTER TABLE `localreview`
  MODIFY `id_localreview` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `precinct`
--
ALTER TABLE `precinct`
  MODIFY `id_precinct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id_promotions` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `spotlights`
--
ALTER TABLE `spotlights`
  MODIFY `id_spotlights` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `id_tours` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `localreview`
--
ALTER TABLE `localreview`
  ADD CONSTRAINT `localreview_ibfk_1` FOREIGN KEY (`id_tours`) REFERENCES `tours` (`id_tours`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `localreview_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `precinct_tours`
--
ALTER TABLE `precinct_tours`
  ADD CONSTRAINT `precinct_tours_ibfk_1` FOREIGN KEY (`id_precinct`) REFERENCES `precinct` (`id_precinct`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `precinct_tours_ibfk_2` FOREIGN KEY (`id_tours`) REFERENCES `tours` (`id_tours`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_ibfk_1` FOREIGN KEY (`id_tours`) REFERENCES `tours` (`id_tours`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`id_tours`) REFERENCES `tours` (`id_tours`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `spotlights`
--
ALTER TABLE `spotlights`
  ADD CONSTRAINT `spotlights_ibfk_1` FOREIGN KEY (`id_tours`) REFERENCES `tours` (`id_tours`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
