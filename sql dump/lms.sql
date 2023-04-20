-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 06:44 PM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `password`) VALUES
(1, '5d41402abc4b2a76b9719d911017c592');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookId` int(11) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `edition` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL,
  `year` varchar(4) NOT NULL,
  `pub` varchar(50) NOT NULL,
  `imgUrl` mediumtext NOT NULL,
  `author` varchar(100) NOT NULL,
  `cat` varchar(100) NOT NULL,
  `rack` varchar(10) NOT NULL,
  `shell` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookId`, `isbn`, `name`, `edition`, `price`, `year`, `pub`, `imgUrl`, `author`, `cat`, `rack`, `shell`) VALUES
(1, '9780141439747', 'Oliver Twist', '3', '1500', '2023', 'CreateSpace Independent', 'https://images.moviesanywhere.com/b51b0b3c7e83fdba3c40fadd9c58e338/2806543f-08cc-4f14-bcc6-9fc6a3f764e7.jpg', 'Charles Dickens', 'Fiction,Literary-fiction', '21', '10'),
(2, '9780142410387', 'The Lightning Thief', '1', '2000', '2005', 'Puffin Books', 'https://jumpbooks.lk/ceruvef/uploads/2022/12/Percy-Jackson-and-the-Lightning-Thief-1.jpeg', 'Rick Riordan', 'Fiction,Fantasy', '5', '2'),
(3, '9780545162074', 'Harry potter and the philosopher\'s stone', '1', '3500', '1997', 'Scholastic Press', 'https://i2-prod.walesonline.co.uk/incoming/article6890072.ece/ALTERNATES/s615b/hp1.jpg', 'J.K.Rowling', 'Fiction,Adventure', '4', '1'),
(19, '9780810993136', 'Diary of a Wimpy Kid', '1', '2500', '2007', 'Amulet Books', 'https://m.media-amazon.com/images/I/51PU+rBEnjL.jpg', 'Jeff Kinney', 'Fiction,Comedy', '1', '3'),
(20, '9780810993136', 'Diary of a Wimpy Kid', '1', '2500', '2007', 'Amulet Books', 'https://m.media-amazon.com/images/I/51PU+rBEnjL.jpg', 'Jeff Kinney', 'Fiction,Comedy', '1', '3'),
(31, '9780141439747', 'Oliver Twist', '3', '1500', '2023', 'CreateSpace Independent', 'https://images.moviesanywhere.com/b51b0b3c7e83fdba3c40fadd9c58e338/2806543f-08cc-4f14-bcc6-9fc6a3f764e7.jpg', 'Charles Dickens', 'Fiction,Literary-fiction', '21', '10'),
(32, '9780141439747', 'Oliver Twist', '3', '1500', '2023', 'CreateSpace Independent', 'https://images.moviesanywhere.com/b51b0b3c7e83fdba3c40fadd9c58e338/2806543f-08cc-4f14-bcc6-9fc6a3f764e7.jpg', 'Charles Dickens', 'Fiction,Literary-fiction', '21', '10'),
(34, '9780064400153', 'The Lion, the Witch and the Wardrobe', '1', '4000', '1950', 'Harper Collins', 'https://m.media-amazon.com/images/M/MV5BMTc0NTUwMTU5OV5BMl5BanBnXkFtZTcwNjAwNzQzMw@@._V1_FMjpg_UX1000_.jpg', 'C.S.Lewis', 'Fiction,Fantasy', '12', '4'),
(35, '9780064400153', 'The Lion, the Witch and the Wardrobe', '1', '4000', '1950', 'Harper Collins', 'https://m.media-amazon.com/images/M/MV5BMTc0NTUwMTU5OV5BMl5BanBnXkFtZTcwNjAwNzQzMw@@._V1_FMjpg_UX1000_.jpg', 'C.S.Lewis', 'Fiction,Fantasy', '12', '4'),
(40, '9780375829137', 'Good work secret seven', '2', '1500', '2007', 'Random House Books', 'https://cdn.shopify.com/s/files/1/0554/7268/5246/products/9781444913484.jpg?v=1620402635', 'Enid Blyton', 'Fiction,Adventure', '2', '3'),
(41, '9780375829138', 'The secret seven', '3', '1500', '2007', 'Random House Books', 'https://m.media-amazon.com/images/I/512MQGZcrML.jpg', 'Enid Blyton', 'Fiction,Adventure', '3', '5'),
(42, '9780141322629', 'Percy Jackson and the Olympians ', '1', '3000', '2009', 'Puffin Books', 'https://images.booksense.com/images/475/101/9781423101475.jpg', 'Rick Riordan', 'Fiction,Mystery', '5', '8'),
(43, '9780141322629', 'Percy Jackson and the Olympians ', '1', '3000', '2009', 'Puffin Books', 'https://images.booksense.com/images/475/101/9781423101475.jpg', 'Rick Riordan', 'Fiction,Mystery', '5', '8'),
(45, '9780446310789', 'To Kill a Mockingbird', '5', '3000', '2010', 'HarperCollins', 'https://cdn.britannica.com/21/182021-050-666DB6B1/book-cover-To-Kill-a-Mockingbird-many-1961.jpg', 'Harper Lee ', 'Fiction,Literary-fiction', '3', '8'),
(46, '9780385533920', 'Steve Jobs', '1', '2300', '2011', 'Simon and  Schuster', 'https://upload.wikimedia.org/wikipedia/en/e/e4/Steve_Jobs_by_Walter_Isaacson.jpg', 'Walter Isaacson', 'Non-fiction,Biography', '7', '3'),
(47, '9780140424425', 'The Complete Poems of Emily Dickinson', '1', '1000', '1976', 'Penguin Classics', 'https://cloud.firebrandtech.com/api/v2/img/111/9781631068416/XL', 'Emily Dickinson', 'Poetry,Lyric-poetry', '6', '2'),
(48, '9780134093413', 'Campbell Biology', '11', '12000', '2016', 'Pearson Education', 'https://m.media-amazon.com/images/I/51xSdEZMNgL._AC_UF894,1000_QL80_.jpg', 'Lisa A.Urry ,Michael L.Cain , Steven A.Wasserman, Peter V. Minorsky', 'Reference,Encyclopedias', '20', '1'),
(49, '9780134093413', 'Campbell Biology', '11', '12000', '2016', 'Pearson Education', 'https://m.media-amazon.com/images/I/51xSdEZMNgL._AC_UF894,1000_QL80_.jpg', 'Lisa A.Urry ,Michael L.Cain , Steven A.Wasserman, Peter V. Minorsky', 'Reference,Encyclopedias', '20', '1'),
(50, '9780078021510', 'Chemistry', '11', '7000', '2015', 'McGraw Hill Education', 'https://m.media-amazon.com/images/I/611X6uJkrzL._AC_UF350,350_QL50_.jpg', 'Raymond Chang, Kenneth A.Goldsby', 'Reference,Encyclopedias', '20', '2'),
(51, '9780431178722', 'Essential Physics for GCSE', '2', '4000', '2006', 'Nelson Thornes', 'https://up.bookfusion.com/book/cover/000/929/543/large_c54450b94fbe3220.jpg', 'Jim Breithaupt', 'Reference,Encyclopedias', '20', '3'),
(52, '9780140424426', 'William Wordsworth: The Major Works', '1', '1500', '2000', 'Penguin Classics', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1387701184i/112136.jpg', 'William Wordsworth, Stephen Gill', 'Poetry,Free-verse', '16', '2'),
(53, '9780743477567', 'The Complete Sonnets of William Shakespeare', '1', '1000', '2002', 'Simon and Schuster', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1328868050l/143483.jpg', 'William Shakespeare', 'Poetry,Sonnets', '16', '3'),
(54, '9780805078046', 'A People\'s History of the United States', '3', '2000', '2004', 'Harper Perennial Modern Classics', 'https://m.media-amazon.com/images/I/5155P19GPPL._AC_UF1000,1000_QL80_.jpg', 'Howard Zinn', 'Non-fiction,History', '7', '1'),
(55, '9781401245252', 'Batman: The Court of Owls', 'New edition', '1050', '2013', 'DC Comics', 'https://m.media-amazon.com/images/I/91H1elJFgML.jpg', 'Scott Snyder, Greg Capullo', 'Graphic-novels,Comics', '9', '2'),
(56, '9781401245252', 'Batman: The Court of Owls', 'New edition', '1050', '2013', 'DC Comics', 'https://m.media-amazon.com/images/I/91H1elJFgML.jpg', 'Scott Snyder, Greg Capullo', 'Graphic-novels,Comics', '9', '2'),
(57, '9781401245252', 'Batman: The Court of Owls', 'New edition', '1050', '2013', 'DC Comics', 'https://m.media-amazon.com/images/I/91H1elJFgML.jpg', 'Scott Snyder, Greg Capullo', 'Graphic-novels,Comics', '9', '2'),
(58, '9781506713163', 'Avatar: The Last Airbender - The Promise', '3', '1000', '2019', 'Dark Horse Comics', 'https://m.media-amazon.com/images/I/91iIqBM-JaL._AC_UF1000,1000_QL80_.jpg', 'Gene Luen Yang, Gurihiru', 'Graphic-novels,Manga', '9', '2'),
(59, '9781506713163', 'Avatar: The Last Airbender - The Promise', '3', '1000', '2019', 'Dark Horse Comics', 'https://m.media-amazon.com/images/I/91iIqBM-JaL._AC_UF1000,1000_QL80_.jpg', 'Gene Luen Yang, Gurihiru', 'Graphic-novels,Manga', '9', '2'),
(60, '9771092078037', 'Forbes', '127', '500', '2023', 'Forbes Media LLC', 'https://media.licdn.com/dms/image/D4D22AQEwJEAiG1IDGg/feedshare-shrink_2048_1536/0/1681109928535?e=1684368000&v=beta&t=5Gt4nmQDlwHvdnYcPzSjriQoZayv5KG5NwqRFk5kPRc', 'Multiple Authors', 'Magazines-and-newspapers,Current-events-magazines', '25', '5'),
(61, '9770026982122', 'Sports Illustrated', '134', '450', '2023', 'ABG SI LLC', 'https://assets.emagazines.com/uploads/SI040123_CVR_94e989fb-b833-4716-8cf7-d699a48b89ef.jpg', 'Multiple Authors', 'Magazines-and-newspapers,Sports-magazines', '25', '4'),
(62, '9770018546380', 'Rolling Stone', '134', '300', '2023', 'Penske Media Corporation', 'https://cdn.shopify.com/s/files/1/2096/4023/products/FrvfbzmWwAANRyu.jpg?v=1679586231', 'Multiple Authors', 'Magazines-and-newspapers,Other', '25', '3'),
(63, '9780143130727', 'Ikigai', 'Reprint Edition', '2300', '2018', 'Penguin Books', 'https://static-01.daraz.lk/p/e326b92ced0cac7932bf9cc3b6f31259.jpg', 'Hector Garcia, Francesc Miralles', 'Non-fiction,Self-help-personal-development', '4', '1'),
(64, '9780735211292', 'Atomic Habits', '1', '2700', '2018', 'Avery', 'https://m.media-amazon.com/images/I/91bYsX41DVL.jpg', 'James Clear', 'Non-fiction,Self-help-personal-development', '23', '2'),
(65, '9781421530588', 'Pokémon Adventures: Red & Blue, Vol. 1', '1', '1000', '2011', 'VIZ Media LLC', 'https://m.media-amazon.com/images/I/51Zo7d4TjvL.jpg', 'Hidenori Kusaka, Mato', 'Graphic-novels,Manga', '3', '7'),
(67, '9780140439083', 'The Adventures of Sherlock Holmes', 'Reissue Edition', '800', '2003', 'Penguin Classics', 'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781607102113/the-adventures-of-sherlock-holmes-and-other-stories-9781607102113_hr.jpg', 'Arthur Conan Doyle', 'Fiction,Mystery', '5', '7');

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

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` date NOT NULL,
  `reqDate` date NOT NULL,
  `state` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `bookId`, `userId`, `date`, `reqDate`, `state`) VALUES
(2, 1, 9563, '2023-04-06', '2023-04-15', 'rejected'),
(3, 19, 9563, '2023-04-06', '2023-04-12', 'rejected'),
(5, 31, 9563, '2023-04-09', '2023-04-11', 'completed'),
(7, 35, 9563, '2023-04-12', '2023-04-20', 'completed'),
(8, 41, 9563, '2023-04-12', '2023-04-27', 'accepted'),
(10, 42, 9563, '2023-04-12', '2023-04-15', 'completed'),
(11, 32, 9540, '2023-04-13', '2023-04-14', 'completed'),
(12, 45, 9563, '2023-04-16', '2023-04-19', 'rejected'),
(14, 46, 9563, '2023-04-20', '2023-04-29', 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`borrower_id`),
  ADD KEY `fk_book` (`book_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_u` (`userId`),
  ADD KEY `fk_b` (`bookId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `fk_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`bookId`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`borrower_id`) REFERENCES `member` (`id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `fk_b` FOREIGN KEY (`bookId`) REFERENCES `book` (`bookId`),
  ADD CONSTRAINT `fk_u` FOREIGN KEY (`userId`) REFERENCES `member` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
