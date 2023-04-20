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
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `imgUrl` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `email`, `no`, `state`, `password`, `imgUrl`) VALUES
(2345, 'Ben Tennyson', 'jay@gmail.com', '07687657464', 'active', '81dc9bdb52d04dc20036dbd8313ed055', 'https://yt3.googleusercontent.com/ytc/AGIKgqN59kfPtTbM2-qWIl3edomx5jvN5ziQwaBLlEJQ0Q=s900-c-k-c0x00ffffff-no-rj'),
(5678, 'Tin Tin', 'bing@gmail.com', '0713456453', 'active', '81dc9bdb52d04dc20036dbd8313ed055', 'https://www.sundaytimes.lk/200119/uploads/tin-tin.jpg'),
(5768, 'Peter Parker', 'peter@gmail.com', '0768765674', 'active', '81dc9bdb52d04dc20036dbd8313ed055', 'https://blog.playstation.com/tachyon/2022/06/0c3c20a8d8514501524a0859461f391572ea6e61.jpg?resize=1088%2C612&crop_strategy=smart'),
(6789, 'Alan Walker', 'alan@gmail.com', '0765676453', 'active', '81dc9bdb52d04dc20036dbd8313ed055', 'https://i.scdn.co/image/ab6761610000e5ebce202eea14763b8b7696936e'),
(9540, 'Bruce Wayne', 'bruce@gmail.com', '0766786555', 'inactive', '81dc9bdb52d04dc20036dbd8313ed055', 'https://media.cnn.com/api/v1/images/stellar/prod/211227135008-02-the-batman-trailer.jpg?c=4x3'),
(9563, 'Tony Stark', 'tony@gmail.com', '0766786225', 'active', '81dc9bdb52d04dc20036dbd8313ed055', 'https://www.redwolf.in/image/catalog/designer-Images/themes/iron-man-artist-image.png'),
(9865, 'Kevin Levin', 'blincoln@gmail.com', '0776788756', 'active', '81dc9bdb52d04dc20036dbd8313ed055', 'https://assets.mycast.io/actor_images/actor-kevin-levin-235003_large.jpg?1624845653'),
(9867, 'Fred Jones', 'mic344@gmail.com', '0713455434', 'active', '81dc9bdb52d04dc20036dbd8313ed055', 'https://preview.redd.it/in-scooby-doo-and-the-monster-of-mexico-during-the-scene-in-v0-3w53eyh7ln2a1.jpg?auto=webp&s=17180a4130514df3aaca32928d7f0f305dfd52f0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
