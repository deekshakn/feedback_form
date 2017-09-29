-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 16, 2017 at 07:54 AM
-- Server version: 5.6.36
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nmit`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `usn` varchar(10) DEFAULT NULL,
  `branch` varchar(25) DEFAULT NULL,
  `mail` varchar(25) DEFAULT NULL,
  `phno` int(11) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`fname`, `lname`, `usn`, `branch`, `mail`, `phno`, `password`) VALUES
('deeksha', 'bhat', '1NT16IS049', 'information science', 'deeksha.kn1999@gmail.com', 2147483647, 'pass123'),
('anagha', 'v', '1NT16IS016', 'information science', 'anagha.v1998@gmail.com', 2147483647, 'ana123'),
('chinmayee', 'js', '1NT16IS048', 'information science', 'chinmayee.js1998@gmail.co', 2147483647, 'ramya123'),
('anusha', 'bhat', '1NT16IS078', 'information science', 'anusha.v1998@gmail.com', 2147483647, 'anu456'),
('dee', 'kn', '1NT16IS049', 'information science', 'dee.kn1999@gmail.com', 2147483647, 'dee123'),
('gayathri', 'ks', '1NT16IS001', 'information science', 'gayathri@gmail.com', 2147483647, 'gayathri');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `usn` varchar(10) DEFAULT NULL,
  `mail` varchar(25) DEFAULT NULL,
  `phno` int(11) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`fname`, `lname`, `usn`, `mail`, `phno`, `password`) VALUES
('deeksha', 'bhat', '1NT16IS049', 'deeksha.kn1999@gmail.com', 2147483647, 'deeksha'),
('gayathri', 'ks', '1NT16IS001', 'gayathri@gmail.com', 2147483647, 'gayathri'),
('ashwal', 'kn', '1NT16IS100', 'ashwal@gmail.com', 2147483647, 'ashwal'),
('neelakanta', 'ks', '1NT16IS200', 'neelakanta@gmail.com', 2147483647, 'neelakanta'),
('chinmayee', 'js', '1NT16IS048', 'chinmayee.js1998@gmail.co', 2147483647, 'chinmayee');

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE `signin` (
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `usn` varchar(10) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `mailid` varchar(25) DEFAULT NULL,
  `phno` int(11) DEFAULT NULL,
  `pswrd` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `usn` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`usn`, `name`, `age`, `sem`) VALUES
('1NT11PEM01', 'Ashwini', 40, 6),
('1NT11PEM02', 'Bharani', 35, 6),
('1NT11PEM03', 'Kruthika', 38, 6),
('1NT11PEM03', 'Rohani', 38, 6);

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `name` varchar(25) DEFAULT NULL,
  `usn` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
