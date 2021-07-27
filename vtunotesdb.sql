-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 27, 2021 at 10:35 AM
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
  `sem` int(1) NOT NULL,
  `file_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`name`, `branch`, `sem`, `file_name`) VALUES
('Transform Calculus Fourier Series And Numerical Techniques', 'cse', 3, '18CS31'),
('Data Structures and Applications', 'cse', 3, '18CS32'),
('Analog and Digital Electronics', 'cse', 3, '18CS33'),
('Computer Organization', 'cse', 3, '18CS34'),
('Software Engineering', 'cse', 3, '18CS35'),
('Discrete Mathematical Structures', 'cse', 3, '18CS36'),
('Complex Analysis,Probability and statistical methods', 'cse', 4, '18CS41'),
('Design and Analysis of Algorithms', 'cse', 4, '18CS42'),
('Operating Systems', 'cse', 4, '18CS43'),
('Microcontroller and Embedded Systems', 'cse', 4, '18CS44'),
('Object Oriented Concepts', 'cse', 4, '18CS45'),
('Data Communication', 'cse', 4, '18CS46'),
('Management and Entrepreneurship For IT Industry', 'cse', 5, '18CS51'),
('Computer Networks and Security', 'cse', 5, '18CS52'),
('Database Management System', 'cse', 5, '18CS53'),
('Automata Theory and Computability', 'cse', 5, '18CS54'),
('Application Development using Python', 'cse', 5, '18CS55'),
('Unix Programming', 'cse', 5, '18CS56'),
('System Software and Compilers', 'cse', 6, '18CS61'),
('Computer Graphics and Visualization', 'cse', 6, '18CS62'),
('Web Technology and its Applications ', 'cse', 6, '18CS63'),
('Data Mining and Data Warehousing', 'cse', 6, '18CS641'),
('Advanced Linear Algebra', 'cse', 6, '18CS653');

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
