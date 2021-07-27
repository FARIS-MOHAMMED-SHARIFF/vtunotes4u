-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 27, 2021 at 05:18 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vtunotesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `name` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `sem` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`name`, `branch`, `sem`) VALUES
('Transform Calculus, Fourier Series\r\nAnd Numerical Techniques', 'cse', 3),
('Data Structures and Applications', 'cse', 3),
('Analog and Digital Electronics', 'cse', 3),
('Computer Organization', 'cse', 3),
('Software Engineering', 'cse', 3),
('Discrete Mathematical Structures', 'cse', 3),
('Complex Analysis,Probability and statistical methods', 'cse', 4),
('Design and Analysis of Algorithms', 'cse', 4),
('Operating Systems', 'cse', 4),
('Microcontroller and Embedded Systems', 'cse', 4),
('Object Oriented Concepts', 'cse', 4),
('Data Communication', 'cse', 4),
('Management and Entrepreneurship For IT Industry', 'cse', 5),
('Computer Networks and Security', 'cse', 5),
('Database Management System', 'cse', 5),
('Automata Theory and Computability', 'cse', 5),
('Application Development using Python', 'cse', 5),
('Unix Programming', 'cse', 5),
('System Software and Compilers', 'cse', 6),
('Computer Graphics and Visualization', 'cse', 6),
('Web Technology and its Applications ', 'cse', 6),
('Data Mining and Data Warehousing', 'cse', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(30) NOT NULL,
  `pasword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `pasword`) VALUES
('admin@gmail.com', 'admin'),
('faris@gmail.com', 'faris'),
('user@gmail.com', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
