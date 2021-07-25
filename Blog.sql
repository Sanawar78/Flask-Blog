-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 25, 2021 at 11:33 PM
-- Server version: 8.0.25-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int NOT NULL,
  `name` varchar(80) NOT NULL,
  `phone_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `msg` varchar(120) NOT NULL,
  `date` datetime DEFAULT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'Ali', '', 'God is greate.', NULL, 'ali@gmail.com'),
(2, 'irfan', '', 'ok', '2021-06-15 18:32:01', 'irfan1234@gmail.com'),
(3, 'anees', '', 'Muhammad', '2021-06-15 18:54:30', 'Anees1234@gmail.com'),
(4, 'anees', '', 'Muhammad', '2021-06-15 22:13:14', 'Anees1234@gmail.com'),
(5, 'irfan', '', 'hello', '2021-06-16 13:01:57', 'Anees1234@gmail.com'),
(6, 'irfan', '', 'hello', '2021-06-16 13:03:16', 'Anees1234@gmail.com'),
(7, 'irfan', '', 'hello', '2021-06-16 13:06:49', 'Anees1234@gmail.com'),
(8, 'irfan', '', 'hello', '2021-06-16 13:11:52', 'Anees1234@gmail.com'),
(9, 'irfan', '', 'ok', '2021-06-16 13:12:23', 'sanawar78m@gmail.com'),
(10, 'irfan', '', 'ok', '2021-06-16 13:19:03', 'irfan1234@gmail.com'),
(11, 'irfan', '', 'ok', '2021-06-16 13:28:56', 'sanawar78m@gmail.com'),
(12, 'irfan', '', 'ok', '2021-06-16 13:33:27', 'sanawar78m@gmail.com'),
(13, 'Malik', '', 'ok', '2021-06-20 22:00:56', 'malik78m@gmail.com'),
(14, 'Malik', '', 'ok', '2021-06-20 22:06:46', 'malik78m@gmail.com'),
(15, 'Malik', '', 'ok', '2021-06-20 22:07:48', 'malik78m@gmail.com'),
(16, 'Malik', '', 'ok', '2021-06-20 22:09:53', 'malik78m@gmail.com'),
(17, 'irfan', '', 'ok', '2021-06-20 22:13:34', 'irfan1234@gmail.com'),
(18, 'Malik', '', 'ok', '2021-06-21 01:11:10', 'malik78m@gmail.com'),
(19, 'sohail', '', 'Good', '2021-06-21 01:12:30', 'malik78m@gmail.com'),
(20, 'anees', '', 'muhammad', '2021-06-21 01:14:48', 'Anees1234@gmail.com'),
(21, 'irfan', '', 'ok', '2021-06-21 01:16:17', 'irfan1234@gmail.com'),
(22, 'irfan', '', 'ok', '2021-06-21 01:36:23', 'irfan1234@gmail.com'),
(23, 'ali', '', 'first', '2021-06-21 01:36:50', 'irfan1234@gmail.com'),
(24, 'Malik', '03006007078', 'ok', '2021-06-21 16:48:13', 'malik78m@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(2, 'This is my second post.', 'That is  beautiful Post', 'your-post', 'We can make a div which has everything coded that how one blog listing should look then we just have to repeat that code and simultaneously change the data in every repetition which for loop will do, that div would be like a template in which we just insert the data and rest of the code remains same.', 'home-bg.jpg', '2021-07-22 17:00:01'),
(3, 'Hello. How are YOU.', '\r\nthird', 'yar-post', 'First we need to send list of data to HTML file for it to display one by one with the help of a for loop. For that first we have to filter posts like we did in previous blog but the difference is, in previous blog we filtered it by slug but in this case we want all blogs. So for ', '', '2021-07-22 17:00:01'),
(4, 'Rhasid is good boy.', 'no', 'yha', 'Now we have all the blogs from our database in “posts” variable. But we don’t want all, we only want some blogs on home page. “posts” is list of blogs, how can we only get some list items from a list? List slicing! Right! So if we want first five blogs then we can write: then', 'admin-panel.jpg', '2021-07-22 17:00:01'),
(5, '\'hellooo....', 'yes', 'ok-post', '', '', '2021-07-22 17:00:01'),
(7, 'Working Group ', 'man', 'just', 'you are looking so hensome.', '', '2021-07-22 17:00:01'),
(8, 'This is my end post.', 'this was working', 'that-post', 'How just have to repeat that code and simultaneously change the data in every repetition which for loop will do, that div would be like a template in which we just insert the data and rest of the code remains same.', 'admin-bg.jpg', '2021-07-22 17:00:01'),
(9, 'That is my end post.', 'that is working', 'ok-post', 'How repeat that code and simultaneously change the data in every repetition which for loop will do, that div would be like a template in which we just insert the data and rest of the code remains same.', 'post-bg.jpg', '2021-07-22 17:00:01'),
(10, 'This is my end post.', 'they are working', 'Last-post', 'Repeat that code and simultaneously change the data in every repetition which for loop will do, that div would be like a template in which we just insert the data and rest of the code remains same.', 'admin-bg.jpg', '2021-07-22 12:17:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
