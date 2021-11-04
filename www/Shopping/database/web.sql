-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 30, 2021 at 03:03 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(5) NOT NULL,
  `auser` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apassword` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `auser`, `apassword`) VALUES
(1, 'ภาวดี ชัยษา', '12345678'),
(2, 'สาวิตรี ชัยษา', '87654321');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `cid` int(10) NOT NULL,
  `csubject` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cEmail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ccompany` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cmessage` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ctime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cid`, `csubject`, `cname`, `cEmail`, `ccompany`, `cmessage`, `ctime`) VALUES
(1, 'ทดสอบ', 'ภาวดี', 'Pawadee_22@hotmail.com', 'msu', 'ข้อความ', '2021-10-08 21:24:42'),
(3, 'ทดสอบ1', 'ภาวดี ชัยษา', '63010974013@msu.ac.th', 'msu1', 'ทดสอบได้', '2021-10-18 09:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mid` int(10) NOT NULL,
  `muser` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mpassword` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mid`, `muser`, `mpassword`) VALUES
(10003, 'ภาวดี ชัยษา', '1234'),
(10004, 'Pawadee', '4321'),
(10012, 'Taem', '9876'),
(10015, 'boy', '2525'),
(10016, 'boy', '2525'),
(10018, 'root', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

CREATE TABLE `orderproduct` (
  `id` int(11) NOT NULL,
  `ordersid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `procode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit1` int(11) NOT NULL,
  `price1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderproduct`
--

INSERT INTO `orderproduct` (`id`, `ordersid`, `procode`, `unit1`, `price1`) VALUES
(1, '1', 'Backpacks10', 1, 751),
(2, '1', 'Backpacks10', 1, 751),
(3, '1', 'Backpacks10', 1, 751),
(4, '2', 'Backpacks1', 1, 351),
(5, '3', 'TShirts1', 1, 2151),
(6, '3', 'Boots2', 2, 6141),
(7, '4', 'Backpacks3', 1, 371),
(8, '5', 'Backpacks4', 2, 741),
(9, '6', 'Backpacks5', 1, 371),
(10, '6', 'Backpacks4', 2, 1112),
(11, '5', 'Backpacks1', 1, 371),
(12, '6', 'Sweatshirts4', 1, 3705),
(13, '6', 'Dresses2', 2, 7557),
(14, '5', 'Backpacks5', 1, 371);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ordersid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pricetotal` int(11) NOT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lname` varchar(255) NOT NULL,
  `muser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ordersid`, `pricetotal`, `tel`, `address`, `fname`, `lname`, `muser`) VALUES
('4', 396, '0987867543', 'ที่อยู่*10 หมู่ที่ 5 ต.แคน อ.วาปีปทุม จ.มหาสาคาม 44120', 'มนู', 'นามเหลา', 'ภาวดี ชัยษา'),
('5', 396, '0935363281', '60', 'Thasani Chaisongkham', 'Thasani Chaisongkham', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(8) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(255,2) NOT NULL,
  `tproid` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `name`, `code`, `image`, `price`, `tproid`, `unit`, `sale`) VALUES
(3, 'Backpacks3', 'Backpacks3', 'product-images\\Backpacks3.jpg', 390.00, 1, 14, 5),
(4, 'Backpacks4', 'Backpacks4', 'product-images\\Backpacks4.jpg', 390.00, 1, 6, 5),
(5, 'Backpacks5', 'Backpacks5', 'product-images\\Backpacks5.jpg', 390.00, 1, 8, 5),
(6, 'Backpacks6', 'Backpacks6', 'product-images\\Backpacks6.jpg', 590.00, 1, 5, 5),
(7, 'Backpacks7', 'Backpacks7', 'product-images\\Backpacks7.jpg', 590.00, 1, 10, 5),
(8, 'Backpacks8', 'Backpacks8', 'product-images\\Backpacks8.jpg', 590.00, 1, 5, 5),
(9, 'Backpacks9', 'Backpacks9', 'product-images\\Backpacks9.jpg', 590.00, 1, 10, 5),
(10, 'Backpacks10', 'Backpacks10', 'product-images\\Backpacks10.jpg', 790.00, 2, 8, 5),
(11, 'Clutches1', 'Clutches1', 'product-images\\Clutches1.jpg', 790.00, 2, 5, 5),
(12, 'Clutches2', 'Clutches2', 'product-images\\Clutches2.jpg', 590.00, 2, 5, 5),
(13, 'Clutches3', 'Clutches3', 'product-images\\Clutches3.jpg', 1200.00, 2, 5, 5),
(14, 'Clutches4', 'Clutches4', 'product-images\\Clutches4.jpg', 1400.00, 2, 5, 5),
(15, 'Clutches5', 'Clutches5', 'product-images\\Clutches5.jpg', 1700.00, 2, 10, 5),
(16, 'Clutches6', 'Clutches6', 'product-images\\Clutches6.jpg', 2100.00, 2, 5, 5),
(17, 'Clutches7', 'Clutches7', 'product-images\\Clutches7.jpg', 2300.00, 2, 5, 5),
(18, 'Clutches8', 'Clutches8', 'product-images\\Clutches8.jpg', 2500.00, 2, 10, 5),
(19, 'Clutches9', 'Clutches9', 'product-images\\Clutches9.jpg', 1550.00, 2, 10, 5),
(20, 'Clutches10', 'Clutches10', 'product-images\\Clutches10.jpg', 2500.00, 2, 15, 5),
(21, 'Crossbody1', 'Crossbody1', 'product-images\\Crossbody1.jpg\r\n', 2600.00, 3, 15, 10),
(22, 'Crossbody2', 'Crossbody2', 'product-images\\Crossbody2.jpg', 1780.00, 3, 15, 5),
(23, 'Crossbody3', 'Crossbody3', 'product-images\\Crossbody3.jpg', 1560.00, 3, 20, 10),
(24, 'Crossbody4', 'Crossbody4', 'product-images\\Crossbody4.jpg', 2700.00, 3, 30, 10),
(25, 'Crossbody5', 'Crossbody5', 'product-images\\Crossbody5.jpg', 1200.00, 3, 20, 15),
(26, 'Crossbody6', 'Crossbody6', 'product-images\\Crossbody6.jpg', 1800.00, 3, 15, 5),
(27, 'Crossbody7', 'Crossbody7', 'product-images\\Crossbody7.jpg', 1990.00, 3, 10, 5),
(28, 'Crossbody8', 'Crossbody8', 'product-images\\Crossbody8.jpg', 2600.00, 3, 15, 10),
(29, 'Crossbody9', 'Crossbody9', 'product-images\\Crossbody9.jpg', 2900.00, 3, 20, 10),
(30, 'Crossbody10', 'Crossbody10', 'product-images\\Crossbody10.jpg', 2650.00, 3, 10, 5),
(31, 'Mini Bags1', 'Mini Bags1', 'product-images\\Mini Bags1.jpg', 2700.00, 4, 5, 10),
(32, 'Mini Bags2', 'Mini Bags2', 'product-images\\Mini Bags2.jpg', 2200.00, 4, 5, 15),
(33, 'Mini Bags3', 'Mini Bags3', 'product-images\\Mini Bags3.jpg', 2500.00, 4, 5, 5),
(34, 'Mini Bags4', 'Mini Bags4', 'product-images\\Mini Bags4.jpg', 3500.00, 4, 25, 5),
(35, 'Mini Bags5', 'Mini Bags5', 'product-images\\Mini Bags5.jpg', 2400.00, 4, 30, 5),
(36, 'Mini Bags6', 'Mini Bags6', 'product-images\\Mini Bags6.jpg', 1680.00, 4, 20, 5),
(37, 'Mini Bags7', 'Mini Bags7', 'product-images\\Mini Bags7.jpg', 2500.00, 4, 35, 5),
(38, 'Mini Bags8', 'Mini Bags8', 'product-images\\Mini Bags8.jpg', 1250.00, 4, 25, 5),
(39, 'Mini Bags9', 'Mini Bags9', 'product-images\\Mini Bags9.jpg', 2350.00, 4, 20, 5),
(40, 'Mini Bags10', 'Mini Bags10', 'product-images\\Mini Bags10.jpg', 2350.00, 4, 20, 5),
(41, 'Shoulder Bags1', 'Shoulder Bags1', 'product-images\\Shoulder Bags1.jpg', 3750.00, 5, 15, 5),
(42, 'Shoulder Bags2', 'Shoulder Bags2', 'product-images\\Shoulder Bags2.jpg', 4750.00, 5, 30, 10),
(43, 'Shoulder Bags3', 'Shoulder Bags3', 'product-images\\Shoulder Bags3.jpg', 3500.00, 5, 25, 5),
(44, 'Shoulder Bags4', 'Shoulder Bags4', 'product-images\\Shoulder Bags4.jpg', 2310.00, 5, 15, 10),
(45, 'Shoulder Bags5', 'Shoulder Bags5', 'product-images\\Shoulder Bags5.jpg', 2550.00, 5, 20, 5),
(46, 'Shoulder Bags6', 'Shoulder Bags6', 'product-images\\Shoulder Bags6.jpg', 3550.00, 5, 15, 10),
(47, 'Shoulder Bags7', 'Shoulder Bags7', 'product-images\\Shoulder Bags7.jpg', 1250.00, 5, 10, 15),
(48, 'Shoulder Bags8', 'Shoulder Bags8', 'product-images\\Shoulder Bags8.jpg', 3250.00, 5, 10, 5),
(49, 'Shoulder Bags9', 'Shoulder Bags9', 'product-images\\Shoulder Bags9.jpg', 1270.00, 5, 20, 5),
(50, 'Shoulder Bags10', 'Shoulder Bags10', 'product-images\\Shoulder Bags10.jpg', 3450.00, 5, 10, 5),
(51, 'Tote Bags1', 'Tote Bags1', 'product-images\\Tote Bags1.jpg', 2350.00, 6, 15, 5),
(52, 'Tote Bags2', 'Tote Bags2', 'product-images\\Tote Bags2.jpg', 3580.00, 6, 20, 5),
(53, 'Tote Bags3', 'Tote Bags3', 'product-images\\Tote Bags3.jpg', 2360.00, 6, 15, 5),
(54, 'Tote Bags4', 'Tote Bags4', 'product-images\\Tote Bags4.jpg', 2450.00, 6, 10, 5),
(55, 'Tote Bags5', 'Tote Bags5', 'product-images\\Tote Bags5.jpg', 3750.00, 6, 15, 5),
(56, 'Tote Bags6', 'Tote Bags6', 'product-images\\Tote Bags6.jpg', 1250.00, 6, 20, 5),
(57, 'Tote Bags7', 'Tote Bags7', 'product-images\\Tote Bags7.jpg', 3260.00, 6, 10, 15),
(58, 'Tote Bags8', 'Tote Bags8', 'product-images\\Tote Bags8.jpg', 2480.00, 6, 30, 5),
(59, 'Tote Bags9', 'Tote Bags9', 'product-images\\Tote Bags9.jpg', 1240.00, 6, 15, 10),
(60, 'Tote Bags10', 'Tote Bags10', 'product-images\\Tote Bags10.jpg', 2470.00, 6, 15, 10),
(61, 'Precious Handbags1', 'Precious Handbags1', 'product-images\\Precious Handbags1.jpg', 4590.00, 7, 15, 5),
(62, 'Precious Handbags2', 'Precious Handbags2', 'product-images\\Precious Handbags2.jpg', 4500.00, 7, 20, 5),
(63, 'Precious Handbags3', 'Precious Handbags3', 'product-images\\Precious Handbags3.jpg', 4250.00, 7, 15, 5),
(64, 'Precious Handbags4', 'Precious Handbags4', 'product-images\\Precious Handbags4.jpg', 4300.00, 7, 20, 5),
(65, 'Precious Handbags5', 'Precious Handbags5', 'product-images\\Precious Handbags5.jpg', 4100.00, 7, 5, 15),
(66, 'Precious Handbags6', 'Precious Handbags6', 'product-images\\Precious Handbags6.jpg', 4150.00, 7, 15, 5),
(67, 'Precious Handbags7', 'Precious Handbags7', 'product-images\\Precious Handbags7.jpg', 3900.00, 7, 15, 10),
(68, 'Precious Handbags8', 'Precious Handbags8', 'product-images\\Precious Handbags8.jpg', 3190.00, 7, 16, 5),
(69, 'Precious Handbags9', 'Precious Handbags9', 'product-images\\Precious Handbags9.jpg', 3690.00, 7, 15, 5),
(70, 'Precious Handbags10', 'Precious Handbags10', 'product-images\\Precious Handbags10.jpg', 3490.00, 7, 15, 10),
(71, 'Top Handle Bags1', 'Top Handle Bags1', 'product-images\\Top Handle Bags1.jpg', 4170.00, 8, 15, 10),
(72, 'Top Handle Bags2', 'Top Handle Bags2', 'product-images\\Top Handle Bags2.jpg', 4530.00, 8, 15, 5),
(73, 'Top Handle Bags3', 'Top Handle Bags3', 'product-images\\Top Handle Bags3.jpg', 4520.00, 8, 30, 5),
(74, 'Top Handle Bags4', 'Top Handle Bags4', 'product-images\\Top Handle Bags4.jpg', 4310.00, 8, 35, 5),
(75, 'Top Handle Bags5', 'Top Handle Bags5', 'product-images\\Top Handle Bags5.jpg', 3980.00, 8, 17, 5),
(76, 'Top Handle Bags6', 'Top Handle Bags6', 'product-images\\Top Handle Bags6.jpg', 3270.00, 8, 19, 5),
(77, 'Top Handle Bags7', 'Top Handle Bags7', 'product-images\\Top Handle Bags7.jpg', 3280.00, 8, 15, 5),
(78, 'Top Handle Bags8', 'Top Handle Bags8', 'product-images\\Top Handle Bags8.jpg', 2340.00, 8, 27, 5),
(79, 'Top Handle Bags9', 'Top Handle Bags9', 'product-images\\Top Handle Bags9.jpg', 2360.00, 8, 32, 5),
(80, 'Top Handle Bags10', 'Top Handle Bags10', 'product-images\\Top Handle Bags10.jpg', 3890.00, 8, 10, 10),
(81, 'Travel Bags1', 'Travel Bags1', 'product-images\\Travel Bags1.jpg', 2670.00, 9, 10, 10),
(82, 'Travel Bags2', 'Travel Bags2', 'product-images\\Travel Bags2.jpg', 4530.00, 9, 40, 5),
(83, 'Travel Bags3', 'Travel Bags3', 'product-images\\Travel Bags3.jpg', 2670.00, 9, 45, 5),
(84, 'Travel Bags4', 'Travel Bags4', 'product-images\\Travel Bags4.jpg', 4870.00, 9, 5, 15),
(85, 'Travel Bags5', 'Travel Bags5', 'product-images\\Travel Bags5.jpg', 2370.00, 9, 15, 5),
(86, 'Travel Bags6', 'Travel Bags6', 'product-images\\Travel Bags6.jpg', 2380.00, 9, 15, 5),
(87, 'Travel Bags7', 'Travel Bags7', 'product-images\\Travel Bags7.jpg', 3560.00, 9, 12, 5),
(88, 'Travel Bags8', 'Travel Bags8', 'product-images\\Travel Bags8.jpg', 2380.00, 9, 30, 5),
(89, 'Travel Bags9', 'Travel Bags9', 'product-images\\Travel Bags9.jpg', 3490.00, 9, 29, 5),
(90, 'Travel Bags10', 'Travel Bags10', 'product-images\\Travel Bags10.jpg', 3240.00, 9, 23, 5),
(91, 'Dresses1', 'Dresses1', 'product-images\\Dresses1.jpg', 3460.00, 10, 20, 10),
(92, 'Dresses2', 'Dresses2', 'product-images\\Dresses2.jpg', 2140.00, 10, 13, 10),
(93, 'Dresses3', 'Dresses3', 'product-images\\Dresses3.jpg', 2100.00, 10, 30, 5),
(94, 'Dresses4', 'Dresses4', 'product-images\\Dresses4.jpg', 3200.00, 10, 30, 5),
(95, 'Dresses5', 'Dresses5', 'product-images\\Dresses5.jpg', 3490.00, 10, 10, 15),
(96, 'Dresses6', 'Dresses6', 'product-images\\Dresses6.jpg', 1250.00, 10, 36, 5),
(97, 'Dresses7', 'Dresses7', 'product-images\\Dresses7.jpg', 2310.00, 10, 20, 5),
(98, 'Dresses8', 'Dresses8', 'product-images\\Dresses8.jpg', 2390.00, 10, 20, 5),
(99, 'Dresses9', 'Dresses9', 'product-images\\Dresses9.jpg', 3400.00, 10, 20, 5),
(100, 'Dresses10', 'Dresses10', 'product-images\\Dresses10.jpg', 2600.00, 10, 5, 15),
(101, 'Sweatshirts1', 'Sweatshirts1', 'product-images\\Sweatshirts1.jpg', 3400.00, 11, 5, 5),
(102, 'Sweatshirts2', 'Sweatshirts2', 'product-images\\Sweatshirts2.jpg', 4700.00, 11, 10, 5),
(103, 'Sweatshirts3', 'Sweatshirts3', 'product-images\\Sweatshirts3.jpg', 5100.00, 11, 5, 15),
(104, 'Sweatshirts4', 'Sweatshirts4', 'product-images\\Sweatshirts4.jpg', 3900.00, 11, 9, 5),
(105, 'Sweatshirts5', 'Sweatshirts5', 'product-images\\Sweatshirts5.jpg', 2900.00, 11, 15, 5),
(106, 'Sweatshirts6', 'Sweatshirts6', 'product-images\\Sweatshirts6.jpg', 3200.00, 11, 20, 5),
(107, 'Sweatshirts7', 'Sweatshirts7', 'product-images\\Sweatshirts7.jpg', 1100.00, 11, 20, 5),
(108, 'Sweatshirts8', 'Sweatshirts8', 'product-images\\Sweatshirts8.jpg', 2300.00, 11, 10, 5),
(109, 'Sweatshirts9', 'Sweatshirts9', 'product-images\\Sweatshirts9.jpg', 2950.00, 11, 25, 5),
(110, 'Sweatshirts10', 'Sweatshirts10', 'product-images\\Sweatshirts10.jpg', 1300.00, 11, 15, 5),
(111, 'TShirts1', 'TShirts1', 'product-images\\TShirts1.jpg', 2390.00, 12, 29, 10),
(112, 'TShirts2', 'TShirts2', 'product-images\\TShirts2.jpg', 1500.00, 12, 25, 10),
(113, 'TShirts3', 'TShirts3', 'product-images\\TShirts3.jpg', 1750.00, 12, 10, 10),
(114, 'TShirts4', 'TShirts4', 'product-images\\TShirts4.jpg', 2900.00, 12, 5, 10),
(115, 'TShirts5', 'TShirts5', 'product-images\\TShirts5.jpg', 2970.00, 12, 10, 10),
(116, 'TShirts6', 'TShirts6', 'product-images\\TShirts6.jpg', 1950.00, 12, 10, 10),
(117, 'TShirts7', 'TShirts7', 'product-images\\TShirts7.jpg', 1960.00, 12, 5, 10),
(118, 'TShirts8', 'TShirts8', 'product-images\\TShirts8.jpg', 1600.00, 12, 10, 10),
(119, 'TShirts9', 'TShirts9', 'product-images\\TShirts9.jpg', 2890.00, 12, 20, 10),
(120, 'TShirts10', 'TShirts10', 'product-images\\TShirts10.jpg', 2940.00, 12, 10, 10),
(121, 'Oulerwear1', 'Oulerwear1', 'product-images\\Oulerwear1.jpg', 1280.00, 13, 10, 5),
(122, 'Oulerwear2', 'Oulerwear2', 'product-images\\Oulerwear2.jpg', 2180.00, 13, 10, 5),
(123, 'Oulerwear3', 'Oulerwear3', 'product-images\\Oulerwear3.jpg', 1240.00, 13, 10, 5),
(124, 'Oulerwear4', 'Oulerwear4', 'product-images\\Oulerwear4.jpg', 2310.00, 13, 10, 5),
(125, 'Oulerwear5', 'Oulerwear5', 'product-images\\Oulerwear5.jpg', 2390.00, 13, 15, 5),
(126, 'Oulerwear6', 'Oulerwear6', 'product-images\\Oulerwear6.jpg', 1280.00, 13, 18, 5),
(127, 'Oulerwear7', 'Oulerwear7', 'product-images\\Oulerwear7.jpg', 1260.00, 13, 20, 5),
(128, 'Oulerwear8', 'Oulerwear8', 'product-images\\Oulerwear8.jpg', 1870.00, 13, 25, 5),
(129, 'Oulerwear9', 'Oulerwear9', 'product-images\\Oulerwear9.jpg', 2510.00, 13, 10, 5),
(130, 'Oulerwear10', 'Oulerwear10', 'product-images\\Oulerwear10.jpg', 2190.00, 13, 19, 5),
(131, 'Activewear1', 'Activewear1', 'product-images\\Activewear1.jpg', 2170.00, 14, 27, 10),
(132, 'Activewear2', 'Activewear2', 'product-images\\Activewear2.jpg', 3210.00, 14, 26, 10),
(133, 'Activewear3', 'Activewear3', 'product-images\\Activewear3.jpg', 2340.00, 14, 30, 10),
(134, 'Activewear4', 'Activewear4', 'product-images\\Activewear4.jpg', 2160.00, 14, 15, 10),
(135, 'Activewear5', 'Activewear5', 'product-images\\Activewear5.jpg', 3210.00, 14, 10, 10),
(136, 'Activewear6', 'Activewear6', 'product-images\\Activewear6.jpg', 1290.00, 14, 30, 10),
(137, 'Activewear7', 'Activewear7', 'product-images\\Activewear7.jpg', 2140.00, 14, 35, 10),
(138, 'Activewear8', 'Activewear8', 'product-images\\Activewear8.jpg', 3730.00, 14, 10, 10),
(139, 'Activewear9', 'Activewear9', 'product-images\\Activewear9.jpg', 1540.00, 14, 15, 10),
(140, 'Activewear10', 'Activewear10', 'product-images\\Activewear10.jpg', 3410.00, 14, 30, 10),
(141, 'Swealers and Cardigans1', 'Swealers and Cardigans1', 'product-images\\Swealers and Cardigans1.jpg', 4370.00, 15, 10, 5),
(142, 'Swealers and Cardigans2', 'Swealers and Cardigans2', 'product-images\\Swealers and Cardigans2.jpg', 4370.00, 15, 10, 5),
(143, 'Swealers and Cardigans3', 'Swealers and Cardigans3', 'product-images\\Swealers and Cardigans3.jpg', 4600.00, 15, 10, 5),
(144, 'Swealers and Cardigans4', 'Swealers and Cardigans4', 'product-images\\Swealers and Cardigans4.jpg', 4500.00, 15, 10, 5),
(145, 'Swealers and Cardigans5', 'Swealers and Cardigans5', 'product-images\\Swealers and Cardigans5.jpg', 4800.00, 15, 15, 5),
(146, 'Swealers and Cardigans6', 'Swealers and Cardigans6', 'product-images\\Swealers and Cardigans6.jpg', 4200.00, 15, 20, 5),
(147, 'Swealers and Cardigans7', 'Swealers and Cardigans7', 'product-images\\Swealers and Cardigans7.jpg', 4510.00, 15, 25, 5),
(148, 'Swealers and Cardigans8', 'Swealers and Cardigans8', 'product-images\\Swealers and Cardigans8.jpg', 3780.00, 15, 10, 5),
(149, 'Swealers and Cardigans9', 'Swealers and Cardigans9', 'product-images\\Swealers and Cardigans9.jpg', 4530.00, 15, 26, 5),
(150, 'Swealers and Cardigans10', 'Swealers and Cardigans10', 'product-images\\Swealers and Cardigans10.jpg', 3700.00, 15, 15, 5),
(151, 'Tops and Shirts1', 'Tops and Shirts1', 'product-images\\Tops and Shirts1.jpg', 2160.00, 16, 15, 10),
(152, 'Tops and Shirts2', 'Tops and Shirts2', 'product-images\\Tops and Shirts2.jpg', 1220.00, 16, 20, 10),
(153, 'Tops and Shirts3', 'Tops and Shirts3', 'product-images\\Tops and Shirts3.jpg', 2180.00, 16, 10, 10),
(154, 'Tops and Shirts4', 'Tops and Shirts4', 'product-images\\Tops and Shirts4.jpg', 2110.00, 16, 15, 10),
(155, 'Tops and Shirts5', 'Tops and Shirts5', 'product-images\\Tops and Shirts5.jpg', 4310.00, 16, 10, 10),
(156, 'Tops and Shirts6', 'Tops and Shirts6', 'product-images\\Tops and Shirts6.jpg', 3280.00, 16, 15, 10),
(157, 'Tops and Shirts7', 'Tops and Shirts7', 'product-images\\Tops and Shirts7.jpg', 1200.00, 16, 12, 10),
(158, 'Tops and Shirts8', 'Tops and Shirts8', 'product-images\\Tops and Shirts8.jpg', 1300.00, 16, 17, 10),
(159, 'Tops and Shirts9', 'Tops and Shirts9', 'product-images\\Tops and Shirts9.jpg', 1500.00, 16, 10, 10),
(160, 'Tops and Shirts10', 'Tops and Shirts10', 'product-images\\Tops and Shirts10.jpg', 1700.00, 16, 20, 10),
(161, 'Ballet Flats1', 'Ballet Flats1', 'product-images\\Ballet Flats1.jpg', 2700.00, 17, 10, 15),
(162, 'Ballet Flats2', 'Ballet Flats2', 'product-images\\Ballet Flats2.jpg', 2800.00, 17, 10, 5),
(163, 'Ballet Flats3', 'Ballet Flats3', 'product-images\\Ballet Flats3.jpg', 2100.00, 17, 10, 5),
(164, 'Ballet Flats4', 'Ballet Flats4', 'product-images\\Ballet Flats4.jpg', 3900.00, 17, 20, 5),
(165, 'Ballet Flats5', 'Ballet Flats5', 'product-images\\Ballet Flats5.jpg', 2000.00, 17, 10, 5),
(166, 'Ballet Flats6', 'Ballet Flats6', 'product-images\\Ballet Flats6.jpg', 2500.00, 17, 10, 5),
(167, 'Ballet Flats7', 'Ballet Flats7', 'product-images\\Ballet Flats7.jpg', 3000.00, 17, 15, 5),
(168, 'Ballet Flats8', 'Ballet Flats8', 'product-images\\Ballet Flats8.jpg', 3600.00, 17, 20, 5),
(169, 'Ballet Flats9', 'Ballet Flats9', 'product-images\\Ballet Flats9.jpg', 2700.00, 17, 10, 5),
(170, 'Ballet Flats10', 'Ballet Flats10', 'product-images\\Ballet Flats10.jpg', 3700.00, 17, 15, 5),
(171, 'Boots1', 'Boots1', 'product-images\\Boots1.jpg', 2500.00, 18, 10, 5),
(172, 'Boots2', 'Boots2', 'product-images\\Boots2.jpg', 2100.00, 18, 18, 5),
(173, 'Boots3', 'Boots3', 'product-images\\Boots3.jpg', 1100.00, 18, 10, 5),
(174, 'Boots4', 'Boots4', 'product-images\\Boots4.jpg', 1000.00, 18, 10, 5),
(175, 'Boots5', 'Boots5', 'product-images\\Boots5.jpg', 1200.00, 18, 5, 10),
(176, 'Boots6', 'Boots6', 'product-images\\Boots6.jpg', 2300.00, 18, 10, 10),
(177, 'Boots7', 'Boots7', 'product-images\\Boots7.jpg', 1500.00, 18, 10, 5),
(178, 'Boots8', 'Boots8', 'product-images\\Boots8.jpg', 2000.00, 18, 10, 5),
(179, 'Boots9', 'Boots9', 'product-images\\Boots9.jpg', 4000.00, 18, 15, 5),
(180, 'Boots10', 'Boots10', 'product-images\\Boots10.jpg', 3200.00, 18, 15, 5),
(181, 'Pumps1', 'Pumps1', 'product-images\\Pumps1.jpg', 2000.00, 19, 10, 10),
(182, 'Pumps2', 'Pumps2', 'product-images\\Pumps2.jpg', 2300.00, 19, 10, 10),
(183, 'Pumps3', 'Pumps3', 'product-images\\Pumps3.jpg', 3400.00, 19, 16, 5),
(184, 'Pumps4', 'Pumps4', 'product-images\\Pumps4.jpg', 2900.00, 19, 10, 10),
(185, 'Pumps5', 'Pumps5', 'product-images\\Pumps5.jpg', 2900.00, 19, 20, 5),
(186, 'Pumps6', 'Pumps6', 'product-images\\Pumps6.jpg', 3800.00, 19, 25, 5),
(187, 'Pumps7', 'Pumps7', 'product-images\\Pumps7.jpg', 2600.00, 19, 15, 10),
(188, 'Pumps8', 'Pumps8', 'product-images\\Pumps8.jpg', 2100.00, 19, 10, 10),
(189, 'Pumps9', 'Pumps9', 'product-images\\Pumps9.jpg', 1300.00, 19, 10, 10),
(190, 'Pumps10', 'Pumps10', 'product-images\\Pumps10.jpg', 2500.00, 19, 15, 5),
(191, 'Sandals1', 'Sandals1', 'product-images\\Sandals1.jpg', 3400.00, 20, 10, 5),
(192, 'Sandals2', 'Sandals2', 'product-images\\Sandals2.jpg', 1100.00, 20, 10, 5),
(193, 'Sandals3', 'Sandals3', 'product-images\\Sandals3.jpg', 3700.00, 20, 10, 5),
(194, 'Sandals4', 'Sandals4', 'product-images\\Sandals4.jpg', 2700.00, 20, 10, 5),
(195, 'Sandals5', 'Sandals5', 'product-images\\Sandals5.jpg', 2300.00, 20, 10, 5),
(196, 'Sandals6', 'Sandals6', 'product-images\\Sandals6.jpg', 2100.00, 20, 15, 5),
(197, 'Sandals7', 'Sandals7', 'product-images\\Sandals7.jpg', 1300.00, 20, 20, 5),
(198, 'Sandals8', 'Sandals8', 'product-images\\Sandals8.jpg', 1600.00, 20, 10, 5),
(199, 'Sandals9', 'Sandals9', 'product-images\\Sandals9.jpg', 3500.00, 20, 10, 5),
(200, 'Sandals10', 'Sandals10', 'product-images\\Sandals10.jpg', 4000.00, 20, 10, 5),
(201, 'Slides and Thong Sandals1', 'Slides and Thong Sandals1', 'product-images\\Slides and Thong Sandals1.jpg\r\n', 1260.00, 21, 10, 10),
(202, 'Slides and Thong Sandals2', 'Slides and Thong Sandals2', 'product-images\\Slides and Thong Sandals2.jpg\r\n', 1200.00, 21, 30, 5),
(203, 'Slides and Thong Sandals3', 'Slides and Thong Sandals3', 'product-images\\Slides and Thong Sandals3.jpg\r\n', 1300.00, 21, 10, 10),
(204, 'Slides and Thong Sandals4', 'Slides and Thong Sandals4', 'product-images\\Slides and Thong Sandals4.jpg\r\n', 1200.00, 21, 5, 10),
(205, 'Slides and Thong Sandals5', 'Slides and Thong Sandals5', 'product-images\\Slides and Thong Sandals5.jpg\r\n', 2800.00, 21, 10, 5),
(206, 'Slides and Thong Sandals6', 'Slides and Thong Sandals6', 'product-images\\Slides and Thong Sandals6.jpg\r\n', 2300.00, 21, 15, 5),
(207, 'Slides and Thong Sandals7', 'Slides and Thong Sandals7', 'product-images\\Slides and Thong Sandals7.jpg\r\n', 4300.00, 21, 10, 5),
(208, 'Slides and Thong Sandals8', 'Slides and Thong Sandals8', 'product-images\\Slides and Thong Sandals8.jpg\r\n', 4000.00, 21, 35, 5),
(209, 'Slides and Thong Sandals9', 'Slides and Thong Sandals9', 'product-images\\Slides and Thong Sandals9.jpg\r\n', 4500.00, 21, 10, 5),
(210, 'Slides and Thong Sandals10', 'Slides and Thong Sandals10', 'product-images\\Slides and Thong Sandals10.jpg\r\n', 4300.00, 21, 10, 5),
(211, 'Slippers and Mules1', 'Slippers and Mules1', 'product-images\\Slippers and Mules1.jpg', 2300.00, 22, 10, 10),
(212, 'Slippers and Mules2', 'Slippers and Mules2', 'product-images\\Slippers and Mules2.jpg', 2400.00, 22, 10, 10),
(213, 'Slippers and Mules3', 'Slippers and Mules3', 'product-images\\Slippers and Mules3.jpg', 3500.00, 22, 15, 10),
(214, 'Slippers and Mules4', 'Slippers and Mules4', 'product-images\\Slippers and Mules4.jpg', 2000.00, 22, 10, 10),
(215, 'Slippers and Mules5', 'Slippers and Mules5', 'product-images\\Slippers and Mules5.jpg', 4500.00, 22, 15, 10),
(216, 'Slippers and Mules6', 'Slippers and Mules6', 'product-images\\Slippers and Mules6.jpg', 1200.00, 22, 10, 10),
(217, 'Slippers and Mules7', 'Slippers and Mules7', 'product-images\\Slippers and Mules7.jpg', 2300.00, 22, 15, 10),
(218, 'Slippers and Mules8', 'Slippers and Mules8', 'product-images\\Slippers and Mules8.jpg', 4100.00, 22, 20, 10),
(219, 'Slippers and Mules9', 'Slippers and Mules9', 'product-images\\Slippers and Mules9.jpg', 3000.00, 22, 15, 10),
(220, 'Slippers and Mules10', 'Slippers and Mules10', 'product-images\\Slippers and Mules10.jpg', 3200.00, 22, 13, 10),
(221, 'Sneakers1', 'Sneakers1', 'product-images\\Sneakers1.jpg', 2900.00, 23, 10, 5),
(222, 'Sneakers2', 'Sneakers2', 'product-images\\Sneakers2.jpg', 3900.00, 23, 10, 5),
(223, 'Sneakers3', 'Sneakers3', 'product-images\\Sneakers3.jpg', 3800.00, 23, 10, 5),
(224, 'Sneakers4', 'Sneakers4', 'product-images\\Sneakers4.jpg', 2100.00, 23, 15, 5),
(225, 'Sneakers5', 'Sneakers5', 'product-images\\Sneakers5.jpg', 1300.00, 23, 17, 5),
(226, 'Sneakers6', 'Sneakers6', 'product-images\\Sneakers6.jpg', 1400.00, 23, 20, 5),
(227, 'Sneakers7', 'Sneakerst7', 'product-images\\Sneakers7.jpg', 2300.00, 23, 10, 5),
(228, 'Sneakers8', 'Sneakers8', 'product-images\\Sneakers8.jpg', 4500.00, 23, 15, 5),
(229, 'Sneakers9', 'Sneakers9', 'product-images\\Sneakers9.jpg', 2900.00, 23, 10, 5),
(230, 'Sneakers10', 'Sneakers10', 'product-images\\Sneakers10.jpg', 2700.00, 23, 15, 5),
(231, 'Espadrilles and Wedges1', 'Espadrilles and Wedges1', 'product-images\\Espadrilles and Wedges1.jpg', 1700.00, 24, 10, 10),
(232, 'Espadrilles and Wedges2', 'Espadrilles and Wedges2', 'product-images\\Espadrilles and Wedges2.jpg', 1800.00, 24, 15, 10),
(233, 'Espadrilles and Wedges3', 'Espadrilles and Wedges3', 'product-images\\Espadrilles and Wedges3.jpg', 1390.00, 24, 15, 10),
(234, 'Espadrilles and Wedges4', 'Espadrilles and Wedges4', 'product-images\\Espadrilles and Wedges4.jpg', 2900.00, 24, 20, 10),
(235, 'Espadrilles and Wedges5', 'Espadrilles and Wedges5', 'product-images\\Espadrilles and Wedges5.jpg', 3700.00, 24, 20, 10),
(236, 'Espadrilles and Wedges6', 'Espadrilles and Wedges6', 'product-images\\Espadrilles and Wedges6.jpg', 2370.00, 24, 10, 5),
(237, 'Espadrilles and Wedges7', 'Espadrilles and Wedges7', 'product-images\\Espadrilles and Wedges7.jpg', 3210.00, 24, 16, 5),
(238, 'Espadrilles and Wedges8', 'Espadrilles and Wedges8', 'product-images\\Espadrilles and Wedges8.jpg', 3450.00, 24, 10, 5),
(239, 'Espadrilles and Wedges9', 'Espadrilles and Wedges9', 'product-images\\Espadrilles and Wedges9.jpg', 2100.00, 24, 15, 5);

-- --------------------------------------------------------

--
-- Table structure for table `typeproduct`
--

CREATE TABLE `typeproduct` (
  `tproid` int(11) NOT NULL,
  `tproname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `typeproduct`
--

INSERT INTO `typeproduct` (`tproid`, `tproname`) VALUES
(1, 'Backpocks'),
(2, 'Clutches'),
(3, 'Crossbody'),
(4, 'Mini Bags'),
(5, 'Shoulder Bags'),
(6, 'Tote Bags'),
(7, 'Precious Handbags'),
(8, 'Top Handle Bags'),
(9, 'Travel Bags'),
(10, 'Dresses'),
(11, 'Sweatshirts'),
(12, 'TShirts'),
(13, 'Oulerwear'),
(14, 'Activewear'),
(15, 'Swealers and Cardigans'),
(16, 'Tops and Shirts'),
(17, 'Ballet Flats'),
(18, 'Boots'),
(19, 'Pumps'),
(20, 'Sandals'),
(21, 'Slides and Thong Sandals'),
(22, 'Slippers and Mules'),
(23, 'Sneakers'),
(24, 'Espadrilles and Wedges');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ordersid`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`,`code`);

--
-- Indexes for table `typeproduct`
--
ALTER TABLE `typeproduct`
  ADD PRIMARY KEY (`tproid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `mid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10019;

--
-- AUTO_INCREMENT for table `orderproduct`
--
ALTER TABLE `orderproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `typeproduct`
--
ALTER TABLE `typeproduct`
  MODIFY `tproid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
