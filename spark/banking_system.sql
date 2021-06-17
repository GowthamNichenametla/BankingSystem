-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 17, 2021 at 05:33 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customers`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `balance` int(10) NOT NULL,
  `datetime` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sender`, `receiver`, `balance`, `datetime`) VALUES
('Arjun', 'Gowtham', 3000, '2021-06-17'),
('Charan', 'Mitun', 500, '2021-06-17'),
('Sai', 'Jomy', 4300, '2021-06-17'),
('Suhail', 'Chandu', 1900, '2021-06-17'),
('Jomy', 'Prasanth', 1300, '2021-06-17'),
('Gowtham', 'Sai', 300, '2021-06-17'),
('Charan', 'Suhail', 600, '2021-06-17'),
('Vijay', 'Prasanth', 2000, '2021-06-17'),
('Prasanth', 'Jomy', 4000, '2021-06-17'),
('Gowtham', 'Mitun', 5400, '2021-06-17'),
('Sai', 'Chandu', 3500, '2021-06-17'),
('Suhail', 'Vijay', 500, '2021-06-17'),
('Mitun', 'Prasanth', 7000, '2021-06-17'),
('Jomy', 'Chandu', 800, '2021-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Gowtham', 'gowtham@gmail.com', 52370),
(2, 'Arjun', 'arjun@gmail.com', 30000),
(3, 'Sai', 'sai@gmail.com', 20500),
(4, 'Prasanth', 'prasanth@gmail.com', 40000),
(5, 'Jomy', 'jomy@gmail.com', 18500),
(6, 'Mitun', 'mitun@gmail.com', 48900),
(7, 'Suhail', 'suhail@gmail.com', 65700),
(8, 'Chandu', 'chandu@gmail.com', 12340),
(9, 'Charan', 'charan@gmail.com', 34000),
(10, 'Vijay', 'vijay@gmail.com', 25000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
