-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 01:26 PM
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
-- Database: `book_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc`
--

CREATE TABLE `acc` (
  `ID` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc`
--

INSERT INTO `acc` (`ID`, `user_name`, `password`) VALUES
(1, 'anhthoai', '123'),
(2, 'quoctuan', '123'),
(4, 'hoangmy', '123'),
(5, 'trongquynh', '123');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `ID` int(11) NOT NULL,
  `code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ID`, `code`, `book_name`, `book_type`, `publisher`, `purchase_date`, `book_image`) VALUES
(1, '0123', 'Doraemon truyện ngắn tập 1', 'Truyện', 'Kim Dong ', '2023-04-04', '../uploads/D1.jpg'),
(12, '124', 'Doraemon truyện ngắn tập 2', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D2.jpg'),
(13, '125', 'Doraemon truyện ngắn tập 3', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D3.jpg'),
(14, '126', 'Doraemon truyện ngắn tập 4', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D4.jpg'),
(15, '127', 'Doraemon truyện ngắn tập 5', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D5.jpg'),
(16, '128', 'Doraemon truyện ngắn tập 6', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D6.jpg'),
(17, '129', 'Doraemon truyện ngắn tập 7', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D7.jpg'),
(18, '130', 'Doraemon truyện ngắn tập 8', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D8.jpg'),
(19, '131', 'Doraemon truyện ngắn tập 9', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D9.jpg'),
(20, '132', 'Doraemon truyện ngắn tập 10', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D10.jpg'),
(21, '133', 'Doraemon truyện ngắn tập 11', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D11.jpg'),
(22, '134', 'Doraemon truyện ngắn tập 12', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D12.jpg'),
(23, '135', 'Doraemon truyện ngắn tập 13', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D13.jpg'),
(24, '136', 'Doraemon truyện ngắn tập 14', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D14.jpg'),
(25, '137', 'Doraemon truyện ngắn tập 15', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D15.jpg'),
(26, '138', 'Doraemon truyện ngắn tập 16', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D16.jpg'),
(27, '139', 'Doraemon truyện ngắn tập 17', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D17.jpg'),
(28, '140', 'Doraemon truyện ngắn tập 18', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D18.jpg'),
(29, '141', 'Doraemon truyện ngắn tập 19', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D19.jpg'),
(30, '142', 'Doraemon truyện ngắn tập 20', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D20.jpg'),
(31, '143', 'Doraemon truyện ngắn tập 21', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D21.jpg'),
(32, '144', 'Doraemon truyện ngắn tập 22', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D22.jpg'),
(33, '145', 'Doraemon truyện ngắn tập 23', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D23.jpg'),
(34, '146', 'Doraemon truyện ngắn tập 24', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D24.jpg'),
(35, '147', 'Doraemon truyện ngắn tập 25', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D25.jpg'),
(36, '148', 'Doraemon truyện ngắn tập 26', ' Truyá»‡n', 'Kim Dong ', '30-03-2000', '../uploads/D26.jpg'),
(37, '149', 'Doraemon truyện ngắn tập 27', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D27.jpg'),
(38, '150', 'Doraemon truyện ngắn tập 28', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D28.jpg'),
(39, '151', 'Doraemon truyện ngắn tập 29', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D29.jpg'),
(40, '152', 'Doraemon truyện ngắn tập 30', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D30.jpg'),
(41, '153', 'Doraemon truyện ngắn tập 31', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D31.jpg'),
(42, '154', 'Doraemon truyện ngắn tập 32', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D32.jpg'),
(43, '155', 'Doraemon truyện ngắn tập 33', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D33.jpg'),
(44, '156', 'Doraemon truyện ngắn tập 34', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D34.jpg'),
(45, '157', 'Doraemon truyện dài tập 1', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s1.jpg'),
(46, '158', 'Doraemon truyện dài tập 2', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s2.jpg'),
(47, '159', 'Doraemon truyện dài tập 3', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s3.jpg'),
(48, '160', 'Doraemon truyện dài tập 4', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s4.jpg'),
(49, '161', 'Doraemon truyện dài tập 5', ' Truyyện', 'Kim Dong ', '30-03-2000', '../uploads/s5.jpg'),
(50, '162', 'Doraemon truyện dài tập 6', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s6.jpg'),
(51, '163', 'Doraemon truyện dài tập 7', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s7.jpg'),
(52, '164', 'Doraemon truyện dài tập 8', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s8.jpg'),
(53, '165', 'Doraemon truyện dài tập 9', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s9.jpg'),
(54, '166', 'Doraemon truyện dài tập 10', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s10.jpg'),
(55, '167', 'Doraemon truyện dài tập 11', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s11.jpg'),
(56, '168', 'Doraemon truyện dài tập 12', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s12.jpg'),
(57, '169', 'Doraemon truyện dài tập 13', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s13.jpg'),
(58, '170', 'Doraemon truyện dài tập 14', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s14.jpg'),
(59, '171', 'Doraemon truyện dài tập 15', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s15.jpg'),
(60, '172', 'Doraemon truyện dài tập 16', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/D16.jpg'),
(61, '173', 'Doraemon truyện dài tập 17', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s17.jpg'),
(62, '174', 'Doraemon truyện dài tập 18', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s18.jpg'),
(63, '175', 'Doraemon truyện dài tập 19', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s19.jpg'),
(64, '176', 'Doraemon truyện dài tập 20', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s20.jpg'),
(65, '177', 'Doraemon truyện dài tập 21', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s21.jpg'),
(66, '178', 'Doraemon truyện dài tập 22', 'Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s22.jpg'),
(67, '179', 'Doraemon truyện dài tập 23', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s23.jpg'),
(68, '180', 'Doraemon truyện dài tập 24', ' Truyện', 'Kim Dong ', '30-03-2000', '../uploads/s24.jpg'),
(69, '124', 'Conan', ' truyện', 'kim dong', '2023-04-27', '../uploads/Nm09fuu.jpg'),
(70, '124', '1132', ' 1312231', '312321231', '2023-03-07', '../uploads/th.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc`
--
ALTER TABLE `acc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc`
--
ALTER TABLE `acc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
