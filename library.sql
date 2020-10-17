-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2020 at 08:35 PM
-- Server version: 5.6.47-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fenoza_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `lmsaccount`
--

CREATE TABLE `lmsaccount` (
  `userid` int(50) NOT NULL,
  `name` char(30) NOT NULL,
  `password` char(100) NOT NULL,
  `createddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdby` char(16) NOT NULL,
  `userrole` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lmsaccount`
--

INSERT INTO `lmsaccount` (`userid`, `name`, `password`, `createddate`, `createdby`, `userrole`) VALUES
(1, 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-03-18 19:44:36', 'admin', 'admin'),
(3, 'abhi', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-03-18 20:21:43', 'abhi', 'student'),
(4, 'Jeevan', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 11:13:46', 'admin', 'student'),
(5, 'sujan', 'd41d8cd98f00b204e9800998ecf8427e', '2027-03-20 11:15:04', 'admin', 'student'),
(7, 'Janani', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:25:33', 'admin', 'student'),
(8, 'Radhika', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:25:51', 'admin', 'student'),
(9, 'Pinky', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:26:07', 'admin', 'student'),
(10, 'Aarti', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:26:22', 'admin', 'student'),
(11, 'Brinda', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:26:36', 'admin', 'student'),
(12, 'chirag', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:26:51', 'admin', 'student'),
(13, 'Dinesh', '021fa240a024ef7b00be15c7056260d2', '2027-03-20 06:27:07', 'admin', 'student'),
(14, 'Eninandan', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:27:29', 'admin', 'student'),
(15, 'Farhan', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:27:45', 'admin', 'student'),
(16, 'Gyaneshwar', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:28:06', 'admin', 'student'),
(17, 'Harivansh', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:28:36', 'admin', 'student'),
(18, 'Ira', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:28:48', 'admin', 'student'),
(19, 'Ira shankar', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:29:03', 'admin', 'student'),
(20, 'Juhi', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:29:26', 'admin', 'student'),
(21, 'Juhi Narayanan', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:29:42', 'admin', 'student'),
(22, 'Krishnaswamy Murali Prasad', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:30:07', 'admin', 'student'),
(23, 'Lina Gulati', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:30:40', 'admin', 'student'),
(24, 'Mahesh Manjrekar Swamy', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:31:06', 'admin', 'student'),
(25, 'Neerja Bhat', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:31:43', 'admin', 'student'),
(26, 'Orbindo Prasad Chirag', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:32:11', 'admin', 'student'),
(27, 'Priyanka khatri', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:32:31', 'admin', 'student'),
(28, 'Qyiara', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:32:54', 'admin', 'student'),
(29, 'Rama Shankar Iyer Swamy', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:33:22', 'admin', 'student'),
(30, 'Shamsher Singh Gill', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:33:52', 'admin', 'student'),
(31, 'Tanishq Chabra', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:34:11', 'admin', 'student'),
(32, 'Unni Krishnan', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:34:30', 'admin', 'student'),
(33, 'Virat Rajpal', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:34:48', 'admin', 'student'),
(34, 'Wazir Sinha', 'e19d5cd5af0378da05f63f891c7467af', '2027-03-20 06:35:09', 'admin', 'student'),
(35, 'kelvin', 'e19d5cd5af0378da05f63f891c7467af', '2028-03-20 06:59:31', 'admin', 'student'),
(36, 'Saina', 'e19d5cd5af0378da05f63f891c7467af', '2029-03-20 09:22:00', 'admin', 'student'),
(37, 'Ananya', 'e19d5cd5af0378da05f63f891c7467af', '2030-03-20 08:21:00', 'admin', 'admin'),
(38, 'Anjana', 'e19d5cd5af0378da05f63f891c7467af', '2030-03-20 08:21:23', 'admin', 'student'),
(39, 'Jeet', '6d062fcc94a868510a906ef4ae5b461f', '2030-03-20 08:25:24', 'Ananya', 'admin'),
(40, 'Ira Shin', 'e19d5cd5af0378da05f63f891c7467af', '2031-03-20 07:33:49', 'admin', 'student'),
(41, 'Jayesh', 'e19d5cd5af0378da05f63f891c7467af', '2001-04-20 11:06:57', 'admin', 'admin'),
(42, 'Naina', 'e19d5cd5af0378da05f63f891c7467af', '2001-04-20 11:07:12', 'admin', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `lmsbook`
--

CREATE TABLE `lmsbook` (
  `bookid` varchar(20) NOT NULL,
  `ISBN` varchar(100) NOT NULL,
  `booktitle` varchar(200) NOT NULL,
  `bookedition` varchar(100) NOT NULL,
  `bookpublisher` varchar(80) NOT NULL,
  `bookprice` decimal(10,2) NOT NULL,
  `bookauthor` varchar(200) NOT NULL,
  `racknumber` varchar(50) NOT NULL,
  `bookonloan` varchar(100) NOT NULL,
  `bookcategory` varchar(50) NOT NULL,
  `createdby` int(50) NOT NULL,
  `createddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bookimage` varchar(50000) NOT NULL,
  `bookdesc` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lmsbook`
--

INSERT INTO `lmsbook` (`bookid`, `ISBN`, `booktitle`, `bookedition`, `bookpublisher`, `bookprice`, `bookauthor`, `racknumber`, `bookonloan`, `bookcategory`, `createdby`, `createddate`, `bookimage`, `bookdesc`) VALUES
('1072816', '1234-7878-0987', 'Gone Girl', '1', 'Crown Publisher', '1001.00', 'Gillian Flyn', '16', 'NO', 'thriller', 1, '2027-03-20 06:08:51', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Story Book'),
('1078325', '4321-9876-9876', 'The Woman in the mirror', '1', 'Good reads', '649.95', 'A J Finn', '20', 'NO', 'thriller', 1, '2027-03-20 06:12:49', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg', 'Women'),
('1097250', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('1103746', '1287799', 'Reflexotherapy', '1', 'Google books', '1000.00', 'Jojo Moyes', '31', 'NO', 'Science', 1, '2030-03-20 12:10:21', 'relax therapy.png', 'Relax mind and body'),
('1127602', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('1133485', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('1136178', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('1150619', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('1191166', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('1201602', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('1213562', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('1226036', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('1273193', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('1357045', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('1371344', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('1379077', '898761212', 'Life of a Pie', 'E1', ' â€ŽKnopf Canada 123', '750.00', 'Yann Marte 123', '123', 'NO', 'Fiction', 1, '2027-03-20 11:22:16', '', ''),
('1386379', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('1458982', '1111111', 'The Wonder', '3', 'Google books', '15.00', 'Jojo Moyes', '28', 'NO', 'Maths', 41, '2001-04-20 11:14:37', 'IMG_5934.JPG', 'Wonder Books for God Shiva'),
('1524995', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('1570116', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('1600105', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('1611944', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('1650601', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('1663457', '1287799', 'Reflexotherapy', '1', 'Google books', '1000.00', 'Jojo Moyes', '31', 'NO', 'Science', 1, '2030-03-20 12:10:21', 'relax therapy.png', 'Relax mind and body'),
('1682102', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('1686585', '1212312323', 'Batman Knigtfall again', '1.0', 'Google Books', '1222.00', 'Good Reads', '26', 'NO', 'thriller', 1, '2028-03-20 11:23:41', '', ''),
('1708783', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('1713763', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('1715799', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('1754336', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('1852018', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('1866592', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('1885120', '1111111', 'The Wonder', '3', 'Google books', '15.00', 'Jojo Moyes', '28', 'NO', 'Maths', 41, '2001-04-20 11:14:37', 'IMG_5934.JPG', 'Wonder Books for God Shiva'),
('1902866', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('1911717', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('1926203', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('1929352', '1212312323', 'Batman Knigtfall again', '1.0', 'Google Books', '1222.00', 'Good Reads', '26', 'NO', 'thriller', 1, '2028-03-20 11:23:41', '', ''),
('1951620', '1234-1234', 'Nancy Drew', '1', 'Oreilly', '100.00', 'Nancy', '5', 'RESERVED', 'thriller', 1, '2026-03-20 04:20:38', '', ''),
('1952027', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('1971399', '9876-9898-1234', 'The giver of stars', '3', 'Good Reads', '200.00', 'Jojo Moyes', '4', 'NO', 'Science', 1, '2026-03-20 01:29:46', '', ''),
('1983077', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('2006950', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('2048765', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('2056275', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('2094099', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('2106223', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('2122708', '1234-1234-1234', 'Mr. Bean', '1', 'KH Enterprises Pvt Ltd', '150.50', 'Mr Bean', '7', 'NO', 'Humour', 1, '2027-03-20 11:09:29', '', ''),
('2130013', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('2133159', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('2145714', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('2158037', '1111111', 'The Wonder', '3', 'Google books', '15.00', 'Jojo Moyes', '28', 'NO', 'Maths', 41, '2001-04-20 11:14:37', 'IMG_5934.JPG', 'Wonder Books for God Shiva'),
('2189070', '12345678', 'Science for dummies', '2', 'Google books', '50.00', 'Lilian Luise Pierson', '102', 'NO', 'Science', 1, '2026-03-20 01:18:36', '', ''),
('2203325', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('2207120', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('2210350', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('2223971', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('2244763', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('2260019', '1111111', 'The Wonder', '3', 'Google books', '15.00', 'Jojo Moyes', '28', 'NO', 'Maths', 41, '2001-04-20 11:14:37', 'IMG_5934.JPG', 'Wonder Books for God Shiva'),
('2271348', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('2274532', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('2286262', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('2288324', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('2289663', '121212124545', 'Hardy Boys', '1', 'Good reads', '234.98', 'Stephen Covey', '30', 'NO', 'Adventure', 1, '2029-03-20 09:20:41', '', ''),
('2290255', '121212124545', 'Hardy Boys', '1', 'Good reads', '234.98', 'Stephen Covey', '30', 'NO', 'Adventure', 1, '2029-03-20 09:20:41', '', ''),
('2366213', '1111111', 'The Wonder', '3', 'Google books', '15.00', 'Jojo Moyes', '28', 'NO', 'Maths', 41, '2001-04-20 11:14:37', 'IMG_5934.JPG', 'Wonder Books for God Shiva'),
('2367218', '8787-9861', 'The Silent Patient', '1', 'Google Books', '750.00', 'Alex Michaelidis', '19', 'NO', 'thriller', 1, '2027-03-20 06:11:07', '', ''),
('2435829', '8787-9861', 'The Silent Patient', '1', 'Google Books', '750.00', 'Alex Michaelidis', '19', 'NO', 'thriller', 1, '2027-03-20 06:11:07', '', ''),
('2448812', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('2465983', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('2470902', '1234-1234-1234', 'Mr. Bean', '1', 'KH Enterprises Pvt Ltd', '150.50', 'Mr Bean', '7', 'NO', 'Humour', 1, '2027-03-20 11:09:29', '', ''),
('2506126', '1234-7878-0987', 'Gone Girl', '1', 'Crown Publisher', '1001.00', 'Gillian Flyn', '16', 'NO', 'thriller', 1, '2027-03-20 06:08:51', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Story Book'),
('2519743', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('2524515', '1234343', 'Batman Knigtfall', '3.4', 'Press world', '560.05', 'Good Reads', '23', 'NO', 'Comic', 1, '2027-03-20 07:34:41', '', ''),
('2555564', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('2580087', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('2596916', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('2613914', '1287799', 'Reflexotherapy', '1', 'Google books', '1000.00', 'Jojo Moyes', '31', 'NO', 'Science', 1, '2030-03-20 12:10:21', 'relax therapy.png', 'Relax mind and body'),
('2676294', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('2677906', '8787-9861', 'The Silent Patient', '1', 'Google Books', '750.00', 'Alex Michaelidis', '19', 'NO', 'thriller', 1, '2027-03-20 06:11:07', '', ''),
('2707982', '9999', 'ramyana', '9', 'ramanand sagar', '800.00', 'valmiki', '10', 'NO', 'mythology', 1, '2026-03-20 04:26:45', '', ''),
('2738531', '9999', 'ramyana', '9', 'ramanand sagar', '800.00', 'valmiki', '10', 'NO', 'mythology', 1, '2026-03-20 04:26:45', '', ''),
('2764463', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('2771354', '1212312323', 'Batman Knigtfall again', '1.0', 'Google Books', '1222.00', 'Good Reads', '26', 'NO', 'thriller', 1, '2028-03-20 11:23:41', '', ''),
('2790810', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('2879267', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('2891816', '1111', 'The Karma of life', '14', 'Good Reads', '129.00', 'Vyasa', '35', 'NO', 'Mystery', 1, '2031-03-20 07:32:52', 'relax therapy.png', 'The war of family and truth'),
('2947526', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('3028356', '1111', 'The Karma of life', '14', 'Good Reads', '129.00', 'Vyasa', '35', 'NO', 'Mystery', 1, '2031-03-20 07:32:52', 'relax therapy.png', 'The war of family and truth'),
('3033157', '9999', 'ramyana', '9', 'ramanand sagar', '800.00', 'valmiki', '10', 'NO', 'mythology', 1, '2026-03-20 04:26:45', '', ''),
('3056381', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('3058774', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('3084147', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('3116289', '1234343', 'Batman Knigtfall', '3.4', 'Press world', '560.05', 'Good Reads', '23', 'NO', 'Comic', 1, '2027-03-20 07:34:41', '', ''),
('3136552', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('3142527', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3157029', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('3176007', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3182949', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3191484', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('3209193', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3256989', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('3303285', '1234343', 'Batman Knigtfall', '3.4', 'Press world', '560.05', 'Good Reads', '23', 'NO', 'Comic', 1, '2027-03-20 07:34:41', '', ''),
('3304329', '1212312323', 'Batman Knigtfall again', '1.0', 'Google Books', '1222.00', 'Good Reads', '26', 'NO', 'thriller', 1, '2028-03-20 11:23:41', '', ''),
('3315219', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3333479', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('3340997', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('3350943', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3363531', '1287799', 'Reflexotherapy', '1', 'Google books', '1000.00', 'Jojo Moyes', '31', 'RESERVED', 'Science', 1, '2030-03-20 12:10:21', 'relax therapy.png', 'Relax mind and body'),
('3406057', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3409944', '12345678', 'Science for dummies', '2', 'Google books', '50.00', 'Lilian Luise Pierson', '102', 'NO', 'Science', 1, '2026-03-20 01:18:36', '', ''),
('3410567', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3535558', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3551528', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('3572933', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('3590054', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('3622184', '1234-7878-0987', 'Gone Girl', '1', 'Crown Publisher', '1001.00', 'Gillian Flyn', '16', 'RESERVED', 'thriller', 1, '2027-03-20 06:08:51', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Story Book'),
('3622651', '3947934-34343443-3434344', 'Physics', 'Volume 7', 'George', '100.00', 'Albert', 'IIII88777', 'NO', 'Science', 1, '2026-03-20 09:43:40', '', ''),
('3653917', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3659590', '1287799', 'AAA1', '14', 'Google books', '250.00', 'Jojo Moyes', '34', 'NO', 'Maths', 41, '2001-04-20 11:12:54', '', ''),
('3693159', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3723227', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('3736016', '9999', 'ramyana', '9', 'ramanand sagar', '800.00', 'valmiki', '10', 'NO', 'mythology', 1, '2026-03-20 04:26:45', '', ''),
('3736190', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3739609', '1111', 'The Karma of life', '14', 'Good Reads', '129.00', 'Vyasa', '35', 'NO', 'Mystery', 1, '2031-03-20 07:32:52', 'relax therapy.png', 'The war of family and truth'),
('3740401', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3759347', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('3762027', '1212312323', 'Batman Knigtfall again', '1.0', 'Google Books', '1222.00', 'Good Reads', '26', 'NO', 'thriller', 1, '2028-03-20 11:23:41', '', ''),
('3780927', '1111111', 'The Wonder', '3', 'Google books', '15.00', 'Jojo Moyes', '28', 'NO', 'Maths', 41, '2001-04-20 11:14:37', 'IMG_5934.JPG', 'Wonder Books for God Shiva'),
('3793947', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3809741', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3825188', '9876-9898-1234', 'The giver of stars', '3', 'Good Reads', '200.00', 'Jojo Moyes', '4', 'NO', 'Science', 1, '2026-03-20 01:29:46', '', ''),
('3834125', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3842739', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3876645', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('3910622', '12345678', 'Science for dummies', '2', 'Google books', '50.00', 'Lilian Luise Pierson', '102', 'NO', 'Science', 1, '2026-03-20 01:18:36', '', ''),
('3936675', '12345678', 'Science for dummies', '2', 'Google books', '50.00', 'Lilian Luise Pierson', '102', 'NO', 'Science', 1, '2026-03-20 01:18:36', '', ''),
('3974729', '9999', 'ramyana', '9', 'ramanand sagar', '800.00', 'valmiki', '10', 'NO', 'mythology', 1, '2026-03-20 04:26:45', '', ''),
('3976797', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('3986295', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('3993856', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('3994106', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('4016439', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('4026314', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('4055599', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('4060201', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('4112068', '1234-7878-0987', 'Gone Girl', '1', 'Crown Publisher', '1001.00', 'Gillian Flyn', '16', 'RESERVED', 'thriller', 1, '2027-03-20 06:08:51', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Story Book'),
('4144675', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('4165461', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('4170092', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('4172108', '1234343', 'Batman Knigtfall', '3.4', 'Press world', '560.05', 'Good Reads', '23', 'NO', 'Comic', 1, '2027-03-20 07:34:41', '', ''),
('4196041', '1234-1234-1234', 'Mr. Bean', '1', 'KH Enterprises Pvt Ltd', '150.50', 'Mr Bean', '7', 'NO', 'Humour', 1, '2027-03-20 11:09:29', '', ''),
('4198922', '1212312323', 'Batman Knigtfall again', '1.0', 'Google Books', '1222.00', 'Good Reads', '26', 'NO', 'thriller', 1, '2028-03-20 11:23:41', '', ''),
('4202266', '1111111', 'The Wonder', '3', 'Google books', '15.00', 'Jojo Moyes', '28', 'NO', 'Maths', 41, '2001-04-20 11:14:37', 'IMG_5934.JPG', 'Wonder Books for God Shiva'),
('4226870', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('4231670', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('4235255', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('4263467', '1212312323', 'Batman Knigtfall again', '1.0', 'Google Books', '1222.00', 'Good Reads', '26', 'NO', 'thriller', 1, '2028-03-20 11:23:41', '', ''),
('4313491', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('4316475', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('4339820', '98765-98766-0909', 'The Time machine', '1.0', 'Google books', '150.00', 'H G Wells', '2', 'NO', 'Science', 1, '2026-03-20 01:22:29', '', ''),
('4341209', '1234-1234-1234', 'Mr. Bean', '1', 'KH Enterprises Pvt Ltd', '150.50', 'Mr Bean', '7', 'NO', 'Humour', 1, '2027-03-20 11:09:29', '', ''),
('4342313', '1234-1234', 'Nancy Drew', '1', 'Oreilly', '100.00', 'Nancy', '5', 'NO', 'thriller', 1, '2026-03-20 04:20:38', '', ''),
('4347811', '1212312323', 'Batman Knigtfall again', '1.0', 'Google Books', '1222.00', 'Good Reads', '26', 'NO', 'thriller', 1, '2028-03-20 11:23:41', '', ''),
('4433850', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('4434045', '121212124545', 'Hardy Boys', '1', 'Good reads', '234.98', 'Stephen Covey', '30', 'NO', 'Adventure', 1, '2029-03-20 09:20:41', '', ''),
('4437773', '9876-9898-1234', 'The giver of stars', '3', 'Good Reads', '200.00', 'Jojo Moyes', '4', 'NO', 'Science', 1, '2026-03-20 01:29:46', '', ''),
('4442786', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('4498267', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('4528009', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('4528308', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('4560618', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('4612429', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('4627893', '1234-1234', 'Nancy Drew', '1', 'Oreilly', '100.00', 'Nancy', '5', 'NO', 'thriller', 1, '2026-03-20 04:20:38', '', ''),
('4630552', '1111', 'The Karma of life', '14', 'Good Reads', '129.00', 'Vyasa', '35', 'NO', 'Mystery', 1, '2031-03-20 07:32:52', 'relax therapy.png', 'The war of family and truth'),
('4659860', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('4768645', '1287799', 'Reflexotherapy', '1', 'Google books', '1000.00', 'Jojo Moyes', '31', 'NO', 'Science', 1, '2030-03-20 12:10:21', 'relax therapy.png', 'Relax mind and body'),
('4789140', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('4814612', '121212124545', 'Hardy Boys', '1', 'Good reads', '234.98', 'Stephen Covey', '30', 'NO', 'Adventure', 1, '2029-03-20 09:20:41', '', ''),
('4826064', '1111111', 'The Wonder', '3', 'Google books', '15.00', 'Jojo Moyes', '28', 'NO', 'Maths', 41, '2001-04-20 11:14:37', 'IMG_5934.JPG', 'Wonder Books for God Shiva'),
('4830969', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('4858051', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('4861151', '1234-7878-0987', 'Gone Girl', '1', 'Crown Publisher', '1001.00', 'Gillian Flyn', '16', 'YES', 'thriller', 1, '2027-03-20 06:08:51', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Story Book'),
('4874985', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('4877803', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('4925204', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('4927497', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('4937445', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('4987412', '1212312323', 'Batman Knigtfall again', '1.0', 'Google Books', '1222.00', 'Good Reads', '26', 'NO', 'thriller', 1, '2028-03-20 11:23:41', '', ''),
('4999713', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('5045955', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('5057465', '1111', 'The Karma of life', '14', 'Good Reads', '129.00', 'Vyasa', '35', 'NO', 'Mystery', 1, '2031-03-20 07:32:52', 'relax therapy.png', 'The war of family and truth'),
('5070303', '8787-9861', 'The Silent Patient', '1', 'Google Books', '750.00', 'Alex Michaelidis', '19', 'NO', 'thriller', 1, '2027-03-20 06:11:07', '', ''),
('5088798', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('5106053', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('5122373', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('5127649', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('5144509', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('5155363', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('5167397', '898761212', 'Life of a Pie', 'E1', ' â€ŽKnopf Canada 123', '750.00', 'Yann Marte 123', '123', 'NO', 'Fiction', 1, '2027-03-20 11:22:16', '', ''),
('5276059', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('5299821', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('5323821', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('5360309', '1234-1234-1234', 'Mr. Bean', '1', 'KH Enterprises Pvt Ltd', '150.50', 'Mr Bean', '7', 'NO', 'Humour', 1, '2027-03-20 11:09:29', '', ''),
('5360610', '1234-1234-1234', 'Mr. Bean', '1', 'KH Enterprises Pvt Ltd', '150.50', 'Mr Bean', '7', 'NO', 'Humour', 1, '2027-03-20 11:09:29', '', ''),
('5416351', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('5419878', '1234-7878-0987', 'Gone Girl', '1', 'Crown Publisher', '1001.00', 'Gillian Flyn', '16', 'NO', 'thriller', 1, '2027-03-20 06:08:51', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Story Book'),
('5463324', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('5499264', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('5509126', '1287799', 'AAA1', '14', 'Google books', '250.00', 'Jojo Moyes', '34', 'NO', 'Maths', 41, '2001-04-20 11:12:54', '', ''),
('5575089', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('5612528', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('5685538', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('5713647', '1111111', 'The Wonder', '3', 'Google books', '15.00', 'Jojo Moyes', '28', 'NO', 'Maths', 41, '2001-04-20 11:14:37', 'IMG_5934.JPG', 'Wonder Books for God Shiva'),
('5736753', '8787-9861', 'The Silent Patient', '1', 'Google Books', '750.00', 'Alex Michaelidis', '19', 'NO', 'thriller', 1, '2027-03-20 06:11:07', '', ''),
('5747208', '98765-98766-0909', 'The Time machine', '1.0', 'Google books', '150.00', 'H G Wells', '2', 'NO', 'Science', 1, '2026-03-20 01:22:29', '', ''),
('5797902', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('5829900', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('5845454', '12345678', 'Science for dummies', '2', 'Google books', '50.00', 'Lilian Luise Pierson', '102', 'NO', 'Science', 1, '2026-03-20 01:18:36', '', ''),
('5851466', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('5854142', '9999', 'ramyana', '9', 'ramanand sagar', '800.00', 'valmiki', '10', 'NO', 'mythology', 1, '2026-03-20 04:26:45', '', ''),
('5907834', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('5924537', '898761212', 'Life of a Pie', 'E1', ' â€ŽKnopf Canada 123', '750.00', 'Yann Marte 123', '123', 'NO', 'Fiction', 1, '2027-03-20 11:22:16', '', ''),
('5929677', '9876-9898-1234', 'The giver of stars', '3', 'Good Reads', '200.00', 'Jojo Moyes', '4', 'NO', 'Science', 1, '2026-03-20 01:29:46', '', ''),
('5960568', '1234343', 'Batman Knigtfall', '3.4', 'Press world', '560.05', 'Good Reads', '23', 'NO', 'Comic', 1, '2027-03-20 07:34:41', '', ''),
('5964915', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('5968751', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('5990999', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('5994309', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('6012655', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6015551', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('6075945', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('6103924', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('6112508', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('6119021', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('6143934', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('6156346', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6157375', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6176879', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('6183600', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6189313', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('6192324', '4321-9876-9876', 'The Woman in the mirror', '1', 'Good reads', '649.95', 'A J Finn', '20', 'NO', 'thriller', 1, '2027-03-20 06:12:49', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg', 'Women'),
('6215567', '1111111', 'The Wonder', '3', 'Google books', '15.00', 'Jojo Moyes', '28', 'YES', 'Maths', 41, '2001-04-20 11:14:37', 'IMG_5934.JPG', 'Wonder Books for God Shiva'),
('6233570', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('6284794', '1212312323', 'Batman Knigtfall again', '1.0', 'Google Books', '1222.00', 'Good Reads', '26', 'RESERVED', 'thriller', 1, '2028-03-20 11:23:41', '', ''),
('6290736', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6307682', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6324564', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6328599', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('6349271', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6351211', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6388403', '121212124545', 'Hardy Boys', '1', 'Good reads', '234.98', 'Stephen Covey', '30', 'NO', 'Adventure', 1, '2029-03-20 09:20:41', '', ''),
('6390558', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('6423025', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('6427990', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('6445602', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('6466817', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6466842', '1234343', 'Batman Knigtfall', '3.4', 'Press world', '560.05', 'Good Reads', '23', 'NO', 'Comic', 1, '2027-03-20 07:34:41', '', ''),
('6517328', '8787-9861', 'The Silent Patient', '1', 'Google Books', '750.00', 'Alex Michaelidis', '19', 'NO', 'thriller', 1, '2027-03-20 06:11:07', '', ''),
('6526420', '1111', 'The Karma of life', '14', 'Good Reads', '129.00', 'Vyasa', '35', 'NO', 'Mystery', 1, '2031-03-20 07:32:52', 'relax therapy.png', 'The war of family and truth'),
('6533607', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('6570589', '121212124545', 'Hardy Boys', '1', 'Good reads', '234.98', 'Stephen Covey', '30', 'NO', 'Adventure', 1, '2029-03-20 09:20:41', '', ''),
('6576306', '1212312323', 'Batman Knigtfall again', '1.0', 'Google Books', '1222.00', 'Good Reads', '26', 'RESERVED', 'thriller', 1, '2028-03-20 11:23:41', '', ''),
('6581739', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('6585284', '1287799', 'AAA1', '14', 'Google books', '250.00', 'Jojo Moyes', '34', 'NO', 'Maths', 41, '2001-04-20 11:12:54', '', ''),
('6589589', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('6631290', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('6631712', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6643295', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('6658832', '1234-1234', 'Nancy Drew', '1', 'Oreilly', '100.00', 'Nancy', '5', 'NO', 'thriller', 1, '2026-03-20 04:20:38', '', ''),
('6683641', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('6688546', '9876-9898-1234', 'The giver of stars', '3', 'Good Reads', '200.00', 'Jojo Moyes', '4', 'NO', 'Science', 1, '2026-03-20 01:29:46', '', ''),
('6707713', '8787-9861', 'The Silent Patient', '1', 'Google Books', '750.00', 'Alex Michaelidis', '19', 'NO', 'thriller', 1, '2027-03-20 06:11:07', '', ''),
('6754956', '1234-7878-0987', 'Gone Girl', '1', 'Crown Publisher', '1001.00', 'Gillian Flyn', '16', 'YES', 'thriller', 1, '2027-03-20 06:08:51', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Story Book'),
('6772796', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6788560', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6794896', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6799498', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('6804934', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('6817297', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6820736', '1234-1234-1234', 'Mr. Bean', '1', 'KH Enterprises Pvt Ltd', '150.50', 'Mr Bean', '7', 'NO', 'Humour', 1, '2027-03-20 11:09:29', '', '');
INSERT INTO `lmsbook` (`bookid`, `ISBN`, `booktitle`, `bookedition`, `bookpublisher`, `bookprice`, `bookauthor`, `racknumber`, `bookonloan`, `bookcategory`, `createdby`, `createddate`, `bookimage`, `bookdesc`) VALUES
('6853477', '121212124545', 'Hardy Boys', '1', 'Good reads', '234.98', 'Stephen Covey', '30', 'NO', 'Adventure', 1, '2029-03-20 09:20:41', '', ''),
('6865070', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('6881295', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('6901828', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6922796', '9999', 'ramyana', '9', 'ramanand sagar', '800.00', 'valmiki', '10', 'NO', 'mythology', 1, '2026-03-20 04:26:45', '', ''),
('6938275', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6950406', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6954030', '1287799', 'Reflexotherapy', '1', 'Google books', '1000.00', 'Jojo Moyes', '31', 'NO', 'Science', 1, '2030-03-20 12:10:21', 'relax therapy.png', 'Relax mind and body'),
('6954103', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('6954322', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('6981352', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('7011836', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('7015023', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('7084813', '9999', 'ramyana', '9', 'ramanand sagar', '800.00', 'valmiki', '10', 'NO', 'mythology', 1, '2026-03-20 04:26:45', '', ''),
('7106206', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('7118768', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('7142367', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('7143650', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('7197208', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('7199654', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('7244524', '1111', 'The Karma of life', '14', 'Good Reads', '129.00', 'Vyasa', '35', 'NO', 'Mystery', 1, '2031-03-20 07:32:52', 'relax therapy.png', 'The war of family and truth'),
('7252692', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('7281472', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('7282821', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('7287486', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('7314340', '12345678', 'Science for dummies', '2', 'Google books', '50.00', 'Lilian Luise Pierson', '102', 'NO', 'Science', 1, '2026-03-20 01:18:36', '', ''),
('7322824', '1234-1234-1234', 'Mr. Bean', '1', 'KH Enterprises Pvt Ltd', '150.50', 'Mr Bean', '7', 'NO', 'Humour', 1, '2027-03-20 11:09:29', '', ''),
('7359017', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('7375532', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('7405485', '898761212', 'Life of a Pie', 'E1', ' â€ŽKnopf Canada 123', '750.00', 'Yann Marte 123', '123', 'NO', 'Fiction', 1, '2027-03-20 11:22:16', '', ''),
('7407094', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('7432060', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('7467997', '12345678', 'Science for dummies', '2', 'Google books', '50.00', 'Lilian Luise Pierson', '102', 'NO', 'Science', 1, '2026-03-20 01:18:36', '', ''),
('7519669', '1234343', 'Batman Knigtfall', '3.4', 'Press world', '560.05', 'Good Reads', '23', 'NO', 'Comic', 1, '2027-03-20 07:34:41', '', ''),
('7554387', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('7554613', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('7647761', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('7667087', '1111', 'The Karma of life', '14', 'Good Reads', '129.00', 'Vyasa', '35', 'NO', 'Mystery', 1, '2031-03-20 07:32:52', 'relax therapy.png', 'The war of family and truth'),
('7685454', '3947934-34343443-3434344', 'Physics', 'Volume 7', 'George', '100.00', 'Albert', 'IIII88777', 'NO', 'Science', 1, '2026-03-20 09:43:40', '', ''),
('7689080', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('7708613', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('7714433', '98765-98766-0909', 'The Time machine', '1.0', 'Google books', '150.00', 'H G Wells', '2', 'NO', 'Science', 1, '2026-03-20 01:22:29', '', ''),
('7716943', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('7726142', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('7727925', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('7748070', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('7777081', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('7782638', '9876-9898-1234', 'The giver of stars', '3', 'Good Reads', '200.00', 'Jojo Moyes', '4', 'NO', 'Science', 1, '2026-03-20 01:29:46', '', ''),
('7798433', '898761212', 'Life of a Pie', 'E1', ' â€ŽKnopf Canada 123', '750.00', 'Yann Marte 123', '123', 'NO', 'Fiction', 1, '2027-03-20 11:22:16', '', ''),
('7808199', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('7821896', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('7837091', '12345678', 'Science for dummies', '2', 'Google books', '50.00', 'Lilian Luise Pierson', '102', 'NO', 'Science', 1, '2026-03-20 01:18:36', '', ''),
('7838528', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('7856280', '3947934-34343443-3434344', 'Physics', 'Volume 7', 'George', '100.00', 'Albert', 'IIII88777', 'NO', 'Science', 1, '2026-03-20 09:43:40', '', ''),
('7921455', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('7931440', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('7935057', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('7949588', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('7951604', '12345678', 'Science for dummies', '2', 'Google books', '50.00', 'Lilian Luise Pierson', '102', 'NO', 'Science', 1, '2026-03-20 01:18:36', '', ''),
('7957943', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('7961877', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('7986039', '9876-9898-1234', 'The giver of stars', '3', 'Good Reads', '200.00', 'Jojo Moyes', '4', 'NO', 'Science', 1, '2026-03-20 01:29:46', '', ''),
('7999330', '3947934-34343443-3434344', 'Physics', 'Volume 7', 'George', '100.00', 'Albert', 'IIII88777', 'NO', 'Science', 1, '2026-03-20 09:43:40', '', ''),
('8028789', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('8067734', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('8073986', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('8080979', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('8097361', '1234-1234', 'Nancy Drew', '1', 'Oreilly', '100.00', 'Nancy', '5', 'NO', 'thriller', 1, '2026-03-20 04:20:38', '', ''),
('8108185', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('8110776', '4321-9876-9876', 'The Woman in the mirror', '1', 'Good reads', '649.95', 'A J Finn', '20', 'NO', 'thriller', 1, '2027-03-20 06:12:49', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg', 'Women'),
('8115406', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('8169048', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('8197225', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('8209037', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('8213212', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('8220922', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('8223726', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('8247295', '4321-9876-9876', 'The Woman in the mirror', '1', 'Good reads', '649.95', 'A J Finn', '20', 'YES', 'thriller', 1, '2027-03-20 06:12:49', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg', 'Women'),
('8262950', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('8296797', '1212312323', 'Batman Knigtfall again', '1.0', 'Google Books', '1222.00', 'Good Reads', '26', 'RESERVED', 'thriller', 1, '2028-03-20 11:23:41', '', ''),
('8319664', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('8330749', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('8359397', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('8361430', '121212124545', 'Hardy Boys', '1', 'Good reads', '234.98', 'Stephen Covey', '30', 'NO', 'Adventure', 1, '2029-03-20 09:20:41', '', ''),
('8364628', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('8396023', '8787-9861', 'The Silent Patient', '1', 'Google Books', '750.00', 'Alex Michaelidis', '19', 'NO', 'thriller', 1, '2027-03-20 06:11:07', '', ''),
('8411550', '1111', 'The Karma of life', '14', 'Good Reads', '129.00', 'Vyasa', '35', 'NO', 'Mystery', 1, '2031-03-20 07:32:52', 'relax therapy.png', 'The war of family and truth'),
('8428043', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('8447374', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('8458402', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('8494792', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'NO', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('8519612', '9999', 'ramyana', '9', 'ramanand sagar', '800.00', 'valmiki', '10', 'YES', 'mythology', 1, '2026-03-20 04:26:45', '', ''),
('8542183', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('8550430', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('8561320', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('8571574', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('8593973', '1111', 'The Karma of life', '14', 'Good Reads', '129.00', 'Vyasa', '35', 'RESERVED', 'Mystery', 1, '2031-03-20 07:32:52', 'relax therapy.png', 'The war of family and truth'),
('8596885', '1287799', 'Reflexotherapy', '1', 'Google books', '1000.00', 'Jojo Moyes', '31', 'NO', 'Science', 1, '2030-03-20 12:10:21', 'relax therapy.png', 'Relax mind and body'),
('8598717', '898761212', 'Life of a Pie', 'E1', ' â€ŽKnopf Canada 123', '750.00', 'Yann Marte 123', '123', 'RESERVED', 'Fiction', 1, '2027-03-20 11:22:16', '', ''),
('8642939', '1234343', 'Batman Knigtfall', '3.4', 'Press world', '560.05', 'Good Reads', '23', 'NO', 'Comic', 1, '2027-03-20 07:34:41', '', ''),
('8667976', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('8690600', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('8726920', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('8741281', '898761212', 'Life of a Pie', 'E1', ' â€ŽKnopf Canada 123', '750.00', 'Yann Marte 123', '123', 'YES', 'Fiction', 1, '2027-03-20 11:22:16', '', ''),
('8761916', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('8773745', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('8776650', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('8826148', '1287799', 'Reflexotherapy', '1', 'Google books', '1000.00', 'Jojo Moyes', '31', 'RESERVED', 'Science', 1, '2030-03-20 12:10:21', 'relax therapy.png', 'Relax mind and body'),
('8830472', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('8839345', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('8876943', '4321-9876-9876', 'The Woman in the mirror', '1', 'Good reads', '649.95', 'A J Finn', '20', 'YES', 'thriller', 1, '2027-03-20 06:12:49', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg', 'Women'),
('8892871', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('8911144', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('8918091', '9876-9898-1234', 'The giver of stars', '3', 'Good Reads', '200.00', 'Jojo Moyes', '4', 'NO', 'Science', 1, '2026-03-20 01:29:46', '', ''),
('8924947', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('8961879', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('8962098', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('8999769', '1287799', 'Reflexotherapy', '1', 'Google books', '1000.00', 'Jojo Moyes', '31', 'NO', 'Science', 1, '2030-03-20 12:10:21', 'relax therapy.png', 'Relax mind and body'),
('9036756', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('9076614', '3947934-34343443-3434344', 'Physics', 'Volume 7', 'George', '100.00', 'Albert', 'IIII88777', 'NO', 'Science', 1, '2026-03-20 09:43:40', '', ''),
('9091281', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('9117922', '1234343', 'Batman Knigtfall', '3.4', 'Press world', '560.05', 'Good Reads', '23', 'NO', 'Comic', 1, '2027-03-20 07:34:41', '', ''),
('9143385', '4321-9876-9876', 'The Woman in the mirror', '1', 'Good reads', '649.95', 'A J Finn', '20', 'NO', 'thriller', 1, '2027-03-20 06:12:49', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg', 'Women'),
('9182909', '1234-7878-0987', 'Gone Girl', '1', 'Crown Publisher', '1001.00', 'Gillian Flyn', '16', 'YES', 'thriller', 1, '2027-03-20 06:08:51', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Story Book'),
('9183998', '1234-1234-1234', 'Mr. Bean', '1', 'KH Enterprises Pvt Ltd', '150.50', 'Mr Bean', '7', 'NO', 'Humour', 1, '2027-03-20 11:09:29', '', ''),
('9189786', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('9199849', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'NO', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('9223151', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('9258234', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('9268752', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'RESERVED', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('9303858', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('9336949', '1234-7878-0987', 'Gone Girl', '1', 'Crown Publisher', '1001.00', 'Gillian Flyn', '16', 'YES', 'thriller', 1, '2027-03-20 06:08:51', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Story Book'),
('9345661', '121212124545', 'Hardy Boys', '1', 'Good reads', '234.98', 'Stephen Covey', '30', 'NO', 'Adventure', 1, '2029-03-20 09:20:41', '', ''),
('9375696', '1287799', 'Reflexotherapy', '1', 'Google books', '1000.00', 'Jojo Moyes', '31', 'RESERVED', 'Science', 1, '2030-03-20 12:10:21', 'relax therapy.png', 'Relax mind and body'),
('9376366', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('9380584', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('9390204', '1234343', 'Batman Knigtfall', '3.4', 'Press world', '560.05', 'Good Reads', '23', 'NO', 'Comic', 1, '2027-03-20 07:34:41', '', ''),
('9395764', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('9396731', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('9415547', '3947934-34343443-3434344', 'Physics', 'Volume 7', 'George', '100.00', 'Albert', 'IIII88777', 'RESERVED', 'Science', 1, '2026-03-20 09:43:40', '', ''),
('9456771', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('9459607', '121212124545', 'Hardy Boys', '1', 'Good reads', '234.98', 'Stephen Covey', '30', 'NO', 'Adventure', 1, '2029-03-20 09:20:41', '', ''),
('9480345', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('9497217', '9876-9898-1234', 'The giver of stars', '3', 'Good Reads', '200.00', 'Jojo Moyes', '4', 'YES', 'Science', 1, '2026-03-20 01:29:46', '', ''),
('9503960', '1234-1234-1234', 'Mr. Bean', '1', 'KH Enterprises Pvt Ltd', '150.50', 'Mr Bean', '7', 'NO', 'Humour', 1, '2027-03-20 11:09:29', '', ''),
('9529864', '564322-123434', 'Maus', '1.2', 'American Books', '777.98', 'Art Speigalmein', '22', 'RESERVED', 'Comic', 1, '2027-03-20 07:11:48', '', 'Maus'),
('9540814', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('9550018', '9876-9898-1234', 'the trial book', '2', 'Google books', '250.00', 'Jojo Moyes', '102', 'NO', 'Fantasy', 1, '2028-03-20 06:54:11', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Book Of fantasy'),
('9561395', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('9580031', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'NO', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('9589560', '9876-9898-1234', 'The giver of stars', '3', 'Good Reads', '200.00', 'Jojo Moyes', '4', 'YES', 'Science', 1, '2026-03-20 01:29:46', '', ''),
('9592369', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'YES', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('9610339', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'RESERVED', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('9613551', '898761212', 'Life of a Pie', 'E1', ' â€ŽKnopf Canada 123', '750.00', 'Yann Marte 123', '123', 'YES', 'Fiction', 1, '2027-03-20 11:22:16', '', ''),
('9730784', '45654-9887', 'Dandy', '1.0', 'Amalgamated Press', '130.00', 'Dudly D wakins', '21', 'RESERVED', 'Comic', 1, '2027-03-20 07:10:21', '', ''),
('9738802', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('9755732', '1234-7878-0987', 'Gone Girl', '1', 'Crown Publisher', '1001.00', 'Gillian Flyn', '16', 'YES', 'thriller', 1, '2027-03-20 06:08:51', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg, gettyimages-865109088-1548970937.jpg, top-7-books-that-changed-the-world.jpg', 'Story Book'),
('9759699', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'YES', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('9793491', '8787-9861', 'The Silent Patient', '1', 'Google Books', '750.00', 'Alex Michaelidis', '19', 'NO', 'thriller', 1, '2027-03-20 06:11:07', '', ''),
('9818755', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'NO', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth'),
('9853010', '8787-9861', 'The Silent Patient', '1', 'Google Books', '750.00', 'Alex Michaelidis', '19', 'RESERVED', 'thriller', 1, '2027-03-20 06:11:07', '', ''),
('9883460', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'RESERVED', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('9890903', '3947934-34343443-3434344', 'Physics', 'Volume 7', 'George', '100.00', 'Albert', 'IIII88777', 'RESERVED', 'Science', 1, '2026-03-20 09:43:40', '', ''),
('9904554', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('9910011', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'NO', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('9926159', '9887', 'The 9 tips for dummies', '9', 'Crown Publisher', '100.00', 'Stephen Covey', '28', 'RESERVED', 'Comic', 1, '2028-03-20 11:40:37', '', ''),
('9949297', '4321-9876-9876', 'The Woman in the mirror', '1', 'Good reads', '649.95', 'A J Finn', '20', 'NO', 'thriller', 1, '2027-03-20 06:12:49', '1 YLlZ96J3p8GFkIh1USVMzg.jpeg, education-books.jpg, getty_883231284_200013331818843182490_335833.jpg', 'Women'),
('9969874', '12345678', 'Science for dummies', '2', 'Google books', '50.00', 'Lilian Luise Pierson', '102', 'YES', 'Science', 1, '2026-03-20 01:18:36', '', ''),
('9978095', '98765-98766-0909', 'The fairy tale', '15', 'Good Reads', '300.00', 'Lilian Luis', '37', 'YES', 'Adventure', 1, '2031-03-20 12:36:04', 'IMG_0010.JPG', 'The goddess and her fairy tales'),
('9979205', '11232', 'Mahabhartha', '12', 'Google books', '1000.00', 'Vyasa', '34', 'RESERVED', 'mythology', 1, '2030-03-20 06:37:43', 'mahabhartha.jpg', 'The war of family and truth');

-- --------------------------------------------------------

--
-- Table structure for table `lmsbookcat`
--

CREATE TABLE `lmsbookcat` (
  `bookid` varchar(20) NOT NULL,
  `bookcategory` varchar(200) NOT NULL,
  `bookcatdescr` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lmsbookcat`
--

INSERT INTO `lmsbookcat` (`bookid`, `bookcategory`, `bookcatdescr`) VALUES
('27891253', 'Action', 'Action'),
('21601190', 'Adventure', 'Adventure'),
('77866957', 'Classics', 'Classics'),
('60071492', 'Comic', 'Comic'),
('76171589', 'Computers', 'Computers'),
('44343313', 'Drama', 'Drama'),
('39573956', 'fairy tale', 'fairy tale'),
('31615627', 'Fantasy', 'Fantasy'),
('86836400', 'Fiction', 'Fictional'),
('50063565', 'fiction and comedy', 'FICTION and comedy'),
('56549640', 'Final Testing1', 'Final Testing1'),
('21856841', 'Final Testing2', 'Final Testing3'),
('51024514', 'Finance Management', 'Finance Management'),
('84065274', 'history', 'history'),
('90737027', 'horror', 'horror'),
('26688673', 'HR Management', 'HR Management'),
('81292378', 'Humour', 'Humour'),
('46981298', 'Marketing Management', 'Marketing Management'),
('16897150', 'Maths', 'fd'),
('73929305', 'Mystery', 'Mystery'),
('91734975', 'mythology', 'mythology'),
('64995292', 'Picture Book', 'Picture Book'),
('17702961', 'Romance', 'Romance'),
('29486852', 'Satire', 'Satire'),
('416466979', 'Science', 'Science Text book'),
('48139723', 'Short Story', 'Short Story'),
('41270470', 'thriller', 'thriller'),
('58844503', 'trial', 'trial');

-- --------------------------------------------------------

--
-- Table structure for table `lmsbookloan`
--

CREATE TABLE `lmsbookloan` (
  `loanrunno` int(11) NOT NULL,
  `bookid` varchar(20) NOT NULL,
  `userid` int(50) NOT NULL,
  `createddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(50) NOT NULL,
  `loanstartdate` varchar(90) NOT NULL,
  `loanenddate` varchar(90) NOT NULL,
  `loanstatus` varchar(50) NOT NULL,
  `lcactualreturndate` varchar(500) NOT NULL,
  `fine` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lmsbookloan`
--

INSERT INTO `lmsbookloan` (`loanrunno`, `bookid`, `userid`, `createddate`, `createdby`, `loanstartdate`, `loanenddate`, `loanstatus`, `lcactualreturndate`, `fine`) VALUES
(1, '9890903', 3, '2026-03-20 09:44:51', 1, '2020-03-26 00:00:00', '2020-04-01 00:00:00', 'returned and payed fine', '2020-03-26 09:49:23', '10.00'),
(2, '9613551', 3, '2027-03-20 11:28:10', 1, '2019-04-28 00:00:00', '2020-04-01 00:00:00', 'ACTIVE', 'Not Updated', '0.00'),
(3, '9503960', 5, '2027-03-20 11:29:25', 1, '2020-03-27 00:00:00', '2020-03-31 00:00:00', 'returned and not payed fine', '2020-03-27 11:49:31', '0.00'),
(4, '8519612', 3, '2027-03-20 11:31:17', 1, '2020-04-01 00:00:00', '2020-03-30 00:00:00', 'ACTIVE', 'Not Updated', '0.00'),
(5, '9969874', 5, '2027-03-20 11:49:00', 1, '2020-04-02 00:00:00', '2020-04-04 00:00:00', 'ACTIVE', 'Not Updated', '0.00'),
(6, '9589560', 5, '2027-03-20 12:12:04', 1, '2020-03-27 00:00:00', '2022-04-29 00:00:00', 'ACTIVE', 'Not Updated', '0.00'),
(7, '9497217', 4, '2027-03-20 06:15:29', 1, '2020-03-27 00:00:00', '2020-04-03 00:00:00', 'ACTIVE', 'Not Updated', '0.00'),
(8, '7951604', 4, '2027-03-20 06:16:18', 1, '2020-03-27 00:00:00', '2020-03-31 00:00:00', 'returned and not payed fine', '2020-03-31 10:05:54', '0.00'),
(9, '9949297', 3, '2027-03-20 06:17:04', 1, '2020-03-27 00:00:00', '2020-04-02 00:00:00', 'returned and payed fine', '2020-03-31 10:01:59', '0.00'),
(10, '9143385', 3, '2027-03-20 06:18:00', 1, '2020-03-27 00:00:00', '2020-04-01 00:00:00', 'returned and not payed fine', '2020-03-31 10:03:48', '0.00'),
(11, '9755732', 4, '2027-03-20 06:18:35', 1, '2020-03-27 00:00:00', '2020-03-31 00:00:00', 'ACTIVE', 'Not Updated', '0.00'),
(12, '8876943', 5, '2027-03-20 06:19:08', 1, '2020-03-27 00:00:00', '2020-04-03 00:00:00', 'ACTIVE', 'Not Updated', '0.00'),
(13, '8247295', 5, '2027-03-20 06:19:45', 1, '2020-03-27 00:00:00', '2020-03-28 00:00:00', 'ACTIVE', 'Not Updated', '0.00'),
(14, '9336949', 4, '2027-03-20 06:28:42', 1, '2020-03-27 00:00:00', '2021-04-28 00:00:00', 'ACTIVE', 'Not Updated', '0.00'),
(15, '9182909', 4, '2027-03-20 06:31:59', 1, '2020-03-27 00:00:00', '2020-04-28 00:00:00', 'ACTIVE', 'Not Updated', '0.00'),
(16, '9503960', 15, '2027-03-20 07:02:28', 1, '2020-03-27 00:00:00', '2020-05-30 00:00:00', 'returned and not payed fine', '2020-03-27 07:03:22', '0.00'),
(17, '8741281', 15, '2027-03-20 07:02:54', 1, '2020-03-27 00:00:00', '2020-05-12 00:00:00', 'ACTIVE', 'Not Updated', '0.00'),
(18, '6754956', 15, '2027-03-20 07:05:44', 1, '2020-03-27 00:00:00', '2020-07-31 00:00:00', 'ACTIVE', 'Not Updated', '0.00'),
(19, '9853010', 18, '2028-03-20 11:42:12', 1, '2020-03-28 00:00:00', '2020-04-02 00:00:00', 'returned and not payed fine', '2020-03-28 11:43:26', '0.00'),
(20, '9390204', 18, '2028-03-20 11:42:30', 1, '2020-03-28 00:00:00', '2020-04-03 00:00:00', 'returned and payed fine', '2020-03-31 10:07:53', '5.00'),
(22, '4112068', 13, '2028-03-20 12:39:45', 13, 'NOT UPDATED', 'NOT UPDATED', 'RESERVED', 'NOT UPDATED', '0.00'),
(23, '9883460', 13, '2028-03-20 01:58:10', 13, 'NOT UPDATED', 'NOT UPDATED', 'RESERVED', 'NOT UPDATED', '0.00'),
(24, '1951620', 13, '2028-03-20 01:58:41', 13, 'NOT UPDATED', 'NOT UPDATED', 'RESERVED', 'NOT UPDATED', '0.00'),
(25, '8296797', 13, '2028-03-20 02:00:44', 13, 'NOT UPDATED', 'NOT UPDATED', 'RESERVED', 'NOT UPDATED', '0.00'),
(26, '6576306', 18, '2028-03-20 02:01:29', 18, 'NOT UPDATED', 'NOT UPDATED', 'RESERVED', 'NOT UPDATED', '0.00'),
(27, '6284794', 15, '2028-03-20 02:02:01', 15, 'NOT UPDATED', 'NOT UPDATED', 'RESERVED', 'NOT UPDATED', '0.00'),
(28, '9550018', 16, '2028-03-20 06:56:56', 1, '2020-03-28', '2020-04-15', 'returned and not payed fine', '2020-03-28 06:58:04', '0.00'),
(29, '9759699', 35, '2028-03-20 07:01:07', 1, '2020-03-28', '2020-03-31', 'ACTIVE', 'Not Updated', '0.00'),
(30, '9592369', 35, '2028-03-20 07:01:32', 1, '2020-03-28', '2020-03-31', 'ACTIVE', 'Not Updated', '0.00'),
(31, '6192324', 35, '2028-03-20 07:02:45', 1, '2020-03-28', '2020-03-31', 'returned and not payed fine', '2020-03-28 07:03:53', '0.00'),
(32, '1078325', 35, '2028-03-20 07:03:11', 1, '2020-03-28', '2020-03-31', 'returned and not payed fine', '2020-03-31 10:07:06', '0.00'),
(33, '8598717', 35, '2028-03-20 07:04:56', 35, 'NOT UPDATED', 'NOT UPDATED', 'RESERVED', 'NOT UPDATED', '0.00'),
(34, '4861151', 35, '2028-03-20 07:09:58', 35, '2020-04-01', '2020-04-15', 'ACTIVE', 'NOT UPDATED', '0.00'),
(35, '3622184', 3, '2028-03-20 07:25:53', 3, 'NOT UPDATED', 'NOT UPDATED', 'RESERVED', 'NOT UPDATED', '0.00'),
(36, '9853010', 18, '2029-03-20 03:03:22', 18, 'NOT UPDATED', 'NOT UPDATED', 'RESERVED', 'NOT UPDATED', '0.00'),
(37, '9529864', 18, '2029-03-20 03:03:30', 18, 'NOT UPDATED', 'NOT UPDATED', 'RESERVED', 'NOT UPDATED', '0.00'),
(38, '9375696', 18, '2030-03-20 12:11:50', 18, 'NOT UPDATED', 'NOT UPDATED', 'RESERVED', 'NOT UPDATED', '0.00'),
(39, '9890903', 3, '2030-03-20 03:57:49', 3, 'NOT UPDATED', 'NOT UPDATED', 'RESERVED', 'NOT UPDATED', '0.00'),
(40, '8826148', 4, '2030-03-20 06:34:35', 4, 'NOT UPDATED', 'NOT UPDATED', 'RESERVED', 'NOT UPDATED', '0.00'),
(41, '9268752', 4, '2030-03-20 06:34:54', 4, 'NOT UPDATED', 'NOT UPDATED', 'RESERVED', 'NOT UPDATED', '0.00'),
(42, '9979205', 18, '2030-03-20 06:38:14', 18, 'NOT UPDATED', 'NOT UPDATED', 'RESERVED', 'NOT UPDATED', '0.00'),
(43, '9610339', 3, '2030-03-20 06:54:11', 3, 'NOT UPDATED', 'NOT UPDATED', 'RESERVED', 'NOT UPDATED', '0.00'),
(44, '3363531', 3, '2030-03-20 07:05:24', 3, '0', '0', 'RESERVED', '0', '0.00'),
(45, '9926159', 18, '2031-03-20 07:29:16', 18, '0', '0', 'RESERVED', '0', '0.00'),
(46, '9730784', 18, '2031-03-20 07:29:28', 18, '0', '0', 'RESERVED', '0', '0.00'),
(47, '9415547', 18, '2031-03-20 07:29:54', 18, '0', '0', 'RESERVED', '0', '0.00'),
(48, '9978095', 12, '2031-03-20 12:37:22', 1, '2020-03-31', '2020-04-15', 'returned and not payed fine', '2020-03-31 12:38:39', '0.00'),
(49, '9978095', 3, '2031-03-20 02:11:46', 3, '2020-03-31', '2020-04-01', 'ACTIVE', '0', '0.00'),
(50, '8593973', 3, '2001-04-20 10:26:19', 3, '0', '0', 'RESERVED', '0', '0.00'),
(51, '6215567', 42, '2001-04-20 11:16:47', 41, '2020-04-01', '2020-04-15', 'ACTIVE', 'Not Updated', '0.00'),
(52, '5713647', 42, '2001-04-20 11:17:02', 41, '2020-04-01', '2020-04-15', 'returned and not payed fine', '2020-04-01 11:17:50', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `lmsborrower`
--

CREATE TABLE `lmsborrower` (
  `userid` int(50) NOT NULL,
  `uniqueid` varchar(30) NOT NULL,
  `uniqueidtype` varchar(30) NOT NULL,
  `primarycontact` varchar(11) NOT NULL,
  `secondarycontact` varchar(11) NOT NULL,
  `rollno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lmsborrower`
--

INSERT INTO `lmsborrower` (`userid`, `uniqueid`, `uniqueidtype`, `primarycontact`, `secondarycontact`, `rollno`) VALUES
(3, '5e7c2c275bd32', 'student', '1234568790', '1111447789', '1234'),
(5, '5e7d9369dfdda', 'student', '9988776651', '9977776651', '10'),
(4, '5e7df525af447', 'student', '9988776651', '2342982322', '12'),
(7, '5e7dfa237ccdf', 'student', '9898767812', '9898767813', '13'),
(12, '5e7dfa46518a4', 'student', '9898767814', '9898767815', '14'),
(15, '5e7e005630a9b', 'student', '9988776655', '9898767817', '15'),
(18, '5e7eeaa854b2b', 'student', '9955887766', '8987666666', '16'),
(16, '5e7f502cd1d64', 'student', '9876547556', '9876547556', '17'),
(35, '5e7f517633f3b', 'student', '76545666', '7654444', '18'),
(42, '5e842aa3b0933', 'student', '87965432', '87965432', '19');

-- --------------------------------------------------------

--
-- Table structure for table `lmslogo`
--

CREATE TABLE `lmslogo` (
  `no` int(11) NOT NULL,
  `college_details` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lmslogo`
--

INSERT INTO `lmslogo` (`no`, `college_details`, `image`) VALUES
(1, 'Mahatma Gandi PHD Library, India', 'mm1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lmsaccount`
--
ALTER TABLE `lmsaccount`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `lmsbook`
--
ALTER TABLE `lmsbook`
  ADD PRIMARY KEY (`bookid`),
  ADD KEY `LMSBook_fk0` (`bookcategory`),
  ADD KEY `LMSBook_fk1` (`createdby`);

--
-- Indexes for table `lmsbookcat`
--
ALTER TABLE `lmsbookcat`
  ADD PRIMARY KEY (`bookcategory`),
  ADD UNIQUE KEY `bookid` (`bookid`),
  ADD KEY `LMSBookCat_fk2` (`bookcatdescr`);

--
-- Indexes for table `lmsbookloan`
--
ALTER TABLE `lmsbookloan`
  ADD PRIMARY KEY (`loanrunno`),
  ADD KEY `LMSbookloan_fk0` (`bookid`),
  ADD KEY `LMSbookloan_fk1` (`userid`),
  ADD KEY `LMSbookloan_fk2` (`createdby`);

--
-- Indexes for table `lmsborrower`
--
ALTER TABLE `lmsborrower`
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `lmslogo`
--
ALTER TABLE `lmslogo`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lmsaccount`
--
ALTER TABLE `lmsaccount`
  MODIFY `userid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `lmsbookloan`
--
ALTER TABLE `lmsbookloan`
  MODIFY `loanrunno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `lmslogo`
--
ALTER TABLE `lmslogo`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lmsbook`
--
ALTER TABLE `lmsbook`
  ADD CONSTRAINT `LMSBook_fk0` FOREIGN KEY (`bookcategory`) REFERENCES `lmsbookcat` (`bookcategory`),
  ADD CONSTRAINT `LMSBook_fk1` FOREIGN KEY (`createdby`) REFERENCES `lmsaccount` (`userid`);

--
-- Constraints for table `lmsbookloan`
--
ALTER TABLE `lmsbookloan`
  ADD CONSTRAINT `LMSbookloan_fk0` FOREIGN KEY (`bookid`) REFERENCES `lmsbook` (`bookid`),
  ADD CONSTRAINT `LMSbookloan_fk1` FOREIGN KEY (`userid`) REFERENCES `lmsaccount` (`userid`),
  ADD CONSTRAINT `LMSbookloan_fk2` FOREIGN KEY (`createdby`) REFERENCES `lmsaccount` (`userid`);

--
-- Constraints for table `lmsborrower`
--
ALTER TABLE `lmsborrower`
  ADD CONSTRAINT `lmsborrower_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `lmsaccount` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
