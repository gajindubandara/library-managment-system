-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 06:47 PM
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
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `borrower_id` int(11) NOT NULL,
  `borrow_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `penalty` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`id`, `book_id`, `borrower_id`, `borrow_date`, `due_date`, `return_date`, `penalty`) VALUES
(11, 20, 9563, '2023-04-06', '2023-04-03', '2023-04-12', '1000'),
(15, 2, 9540, '2023-04-06', '2023-04-20', '2023-04-19', NULL),
(18, 20, 9563, '2023-04-09', '2023-04-23', '2023-04-16', NULL),
(19, 20, 9563, '2023-04-09', '2023-04-23', '2023-04-19', NULL),
(20, 34, 5678, '2023-04-12', '2023-04-26', NULL, NULL),
(21, 1, 5768, '2023-04-12', '2023-04-26', NULL, NULL),
(22, 3, 9540, '2023-04-12', '2023-04-26', NULL, NULL),
(23, 19, 9563, '2023-04-12', '2023-04-26', NULL, NULL),
(24, 20, 2345, '2023-04-16', '2023-04-30', NULL, NULL),
(25, 20, 2345, '2023-04-16', '2023-04-30', NULL, NULL),
(26, 20, 2345, '2023-04-16', '2023-04-30', '2023-04-16', NULL),
(27, 2, 2345, '2023-04-16', '2023-04-30', NULL, NULL),
(28, 20, 2345, '2023-04-01', '2023-04-15', NULL, NULL),
(29, 20, 2345, '2023-04-17', '2023-05-01', NULL, NULL),
(30, 20, 2345, '2023-03-01', '2023-03-15', '2023-04-19', '3500'),
(31, 20, 2345, '2023-04-17', '2023-05-01', NULL, NULL),
(32, 20, 2345, '2023-04-17', '2023-05-01', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`borrower_id`),
  ADD KEY `fk_book` (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `fk_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`bookId`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`borrower_id`) REFERENCES `member` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
