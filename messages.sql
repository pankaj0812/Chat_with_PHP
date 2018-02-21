-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2018 at 09:18 PM
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
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user`, `message`, `date`) VALUES
(28, 'Lucifer', 'hello', '2018-02-21 20:02:53'),
(29, 'Lucifer', 'Hi', '2018-02-21 20:03:04'),
(30, 'Pankaj Kumar Singh', 'he;l', '2018-02-21 20:03:32'),
(31, 'Lucifer', 'vhjfbvj', '2018-02-21 20:03:52'),
(32, 'Lucifer', 'cvjdhfvb d', '2018-02-21 20:03:56'),
(33, 'Lucifer', 'vjbdjv', '2018-02-21 20:03:59'),
(34, 'Lucifer', 'vdfjkbv', '2018-02-21 20:04:26'),
(35, 'Lucifer', 'vdkjfvb', '2018-02-21 20:04:29'),
(36, 'Pankaj Kumar Singh', 'vvhvbdfv', '2018-02-21 20:04:42'),
(37, 'Lucifer', 'vjkfkb', '2018-02-21 20:04:45'),
(38, 'Pankaj Kumar Singh', 'jvbjdf', '2018-02-21 20:04:47'),
(39, 'Lucifer', 'vjhcvsdj', '2018-02-21 20:04:50'),
(40, 'Pankaj Kumar Singh', 'jcjdbvd', '2018-02-21 20:11:11'),
(41, 'Pankaj Kumar Singh', ' kk', '2018-02-21 20:11:12'),
(42, 'Pankaj Kumar Singh', ' k', '2018-02-21 20:11:12'),
(43, 'Pankaj Kumar Singh', 'mf n', '2018-02-21 20:11:13'),
(44, 'Pankaj Kumar Singh', ' lfk ;\'f lkf', '2018-02-21 20:11:14'),
(45, 'Pankaj Kumar Singh', 'nfg', '2018-02-21 20:11:15'),
(46, 'Pankaj Kumar Singh', ' k', '2018-02-21 20:11:15'),
(47, 'Pankaj Kumar Singh', 'f f', '2018-02-21 20:11:15'),
(48, 'Pankaj Kumar Singh', 'mfk fg', '2018-02-21 20:11:16'),
(49, 'Pankaj Kumar Singh', ' lf f', '2018-02-21 20:11:17'),
(50, 'Pankaj Kumar Singh', ' mlfg \'fgb', '2018-02-21 20:11:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
