-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2020 at 09:56 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `username` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `article` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`username`, `name`, `article`) VALUES
('tutor', 'Nur Mohammad', 'Enter text here...This is my first blog post'),
('tutor', 'Nur Mohammad', 'Enter text here...This is my second Article ');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `username`, `email`, `contact`) VALUES
(100, 'tutor', 'nur006@gmail.com', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `email`, `type`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', 'admin'),
(3, 'test', 'test', 'test', 'test'),
(15, 'student', 'student', 'ss', 'student'),
(16, 'updated', 'q', 'q', 'q'),
(19, 'dp', 'd', 'd', 'd'),
(100, 'tutor', 'tutor', 'nu1@gmail.com', 'tutor');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `ammount` int(20) NOT NULL,
  `course` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `type`, `ammount`, `course`) VALUES
(1, 'trail', 0, 'any'),
(2, 'general', 1000, 'any'),
(3, 'premium', 3000, 'any');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `login_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `class` varchar(20) NOT NULL,
  `package_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`login_id`, `name`, `class`, `package_id`) VALUES
(15, 'neel', 'english', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `activestatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`id`, `name`, `subject`, `activestatus`) VALUES
(17, 'morshed', 'math', 'pending'),
(100, 'tutor', 'math', 'pending'),
(100, 'tutor', 'math', 'pending'),
(100, 'tutor', 'math', 'pending'),
(100, 'tutor', 'math', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `tutorreview`
--

CREATE TABLE `tutorreview` (
  `id` int(100) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `rating` int(11) NOT NULL,
  `tutor_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutorreview`
--

INSERT INTO `tutorreview` (`id`, `comment`, `rating`, `tutor_id`) VALUES
(17, 'halar put halai onk valo', 5, 17);

-- --------------------------------------------------------

--
-- Table structure for table `tutorstudentlist`
--

CREATE TABLE `tutorstudentlist` (
  `id` int(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`article`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD KEY `login_id` (`login_id`),
  ADD KEY `student_ibfk_1` (`package_id`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD KEY `tutor_ibfk_1` (`id`);

--
-- Indexes for table `tutorreview`
--
ALTER TABLE `tutorreview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutor_id` (`tutor_id`);

--
-- Indexes for table `tutorstudentlist`
--
ALTER TABLE `tutorstudentlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `tutorstudentlist_ibfk_1` (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tutorreview`
--
ALTER TABLE `tutorreview`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tutorstudentlist`
--
ALTER TABLE `tutorstudentlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tutorreview`
--
ALTER TABLE `tutorreview`
  ADD CONSTRAINT `tutorreview_ibfk_1` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tutorstudentlist`
--
ALTER TABLE `tutorstudentlist`
  ADD CONSTRAINT `tutorstudentlist_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `tutor` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
