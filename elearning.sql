-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2020 at 11:33 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

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
  `id` int(11) NOT NULL,
  `author` varchar(10) NOT NULL,
  `article_name` varchar(20) NOT NULL,
  `article` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `author`, `article_name`, `article`) VALUES
(2, 'student', 'Coronavirus cure: Wh', 'What work is being done to find treatments?\r\nMore than 150 different drugs are being researched in different countries. Most are existing drugs that are being trialled against the virus.\r\n\r\nThe UK is running the the world\'s largest clinical trial, called Recovery, with more than 12,000 patients taking part - it is one of the few trials to have given a definitive view on which drugs do and do not work\r\nThe World Health Organization (WHO) is running the the Solidarity trial to assess promising treatments in countries around the world\r\nMultiple pharmaceutical companies are running trials of their own drugs\r\nThere are three broad approaches being investigated:\r\n\r\nAntiviral drugs that directly affect the coronavirus\'s ability to thrive inside the body\r\nDrugs that calm the immune system (severe Covid-19 is caused by patients\' immune systems overreacting and damaging the body)\r\nAntibodies that can target the virus, taken from either survivors\' blood or made in a lab\r\nIt is possible that different drugs will work better at different stages - such as anti-virals at the beginning and immune drugs in late-stage diseases. Combinations of therapies will also be investigated.\r\n\r\nThe only life-saving drug\r\nOf all the drugs being trialled, only one has been been proven to save lives - dexamethasone - and it is a significant breakthrough in the fight against coronavirus.\r\n\r\nThe UK\'s Recovery trial showed the drug cut the risk of death by a third for patients on ventilators and by a fifth for those on oxygen.\r\n\r\nDexamethasone is a steroid that calms down inflammation (part of the immune response) in the body.\r\n\r\nCrucially it is also cheap which means it could be used all around the world.\r\n\r\nHowever, the drug does not work on people with milder symptoms.'),
(3, 'student', 'Express.js', 'Express.js, or simply Express, is a web application framework for Node.js, released as free and open-source software under the MIT License. It is designed for building web applications and APIs.[3] It has been called the de facto standard server framework for Node.js.[4]\r\n\r\nThe original author, TJ Holowaychuk, described it as a Sinatra-inspired server,[5] meaning that it is relatively minimal with many features available as plugins. Express is the back-end component of the MEAN stack, together with the MongoDB database software and AngularJS front-end framework.[6]'),
(10, 'student', 'What is podcast host', 'Before starting this guide, if you are asking yourself: “What is a podcast?”, the answer is straightforward.\r\n\r\nIn layman’s terms, a podcast is a collection of audio files on a specific topic that can be listened to and downloaded to a computer or mobile device. Podcast hosting is a unique service that provides a platform to store and deliver media files associated with a podcast. Since podcasts require a lot of space and bandwidth, personal website servers do not have this amount of storage for such large files.\r\n\r\nHowever, hosting servers for podcasts offer you the capacity to store audio files so that your audience can download them. These podcast hosting sites provide advanced analytics reports on your podcast’s audience, marketing tools to increase your audience base, 24/7 customer support, and much more.\r\n\r\nThe most important reason for selecting a hosting service for your podcast is so that you can stop worrying about how you can share or store it. These services are designed in such a way to eliminate the technological aspects of creating a podcast through the provision of built-in features. In addition to this, these hosting services also simplify the process of embedding or sharing podcast files on social media or other websites.'),
(11, 'student', 'assdsd', 'new blog'),
(12, 'student 1', 'test', 'blog test\r\n'),
(13, 'tutor', 'tutor......', 'this is a new article from tutor');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `message`) VALUES
(2, 'shuvroroy51@gmail.co', 'I want to learn painting.Is there any skilled tutor ?'),
(3, 'shuvroroy51@gmail.com', 'I want to learn painting.Is there any skilled tutor ?'),
(4, 'shuvroroy51@gmail.com', 'no problem'),
(17, 't@gmail.comnk', 'tutor contact message'),
(18, 'shuvroroy51@gmail.co', 'sdadaws');

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
(15, 'student', 'student', 'shuvroroy51@gmail.coo', 'student'),
(16, 'updated', 'q', 'q', 'q'),
(17, 'tutor', 'tutor', 't@gmail.comnk', 'tutor');

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
(17, 'tutor', 'art', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE `tutorials` (
  `id` int(11) NOT NULL,
  `publisher` varchar(20) NOT NULL,
  `content` varchar(100) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutorials`
--

INSERT INTO `tutorials` (`id`, `publisher`, `content`, `url`) VALUES
(1, 'Morshed', 'Node.js intro', 'https://www.youtube.com/embed/TlB_eWDSMt4'),
(3, 'Rakib', 'Quantum physics', 'https://www.youtube.com/watch?v=2fxnvJBSLF4'),
(4, ' Simplilearn', 'Machine learning basics\r\n', 'https://www.youtube.com/watch?v=ukzFI9rgwfU');

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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
