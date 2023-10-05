-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 05, 2023 at 01:14 PM
-- Server version: 5.7.41
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `markoseries_support`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignchat`
--

CREATE TABLE `assignchat` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `rqr` varchar(50) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignchat`
--

INSERT INTO `assignchat` (`id`, `username`, `rqr`, `date`, `time`) VALUES
(51, 'user1', 'ABCD', '2021-12-11', '16:19:44.000000'),
(52, 'user1', 'BCDE', '2021-12-14', '16:21:32.000000'),
(53, 'user1', 'CDEF', '2021-12-11', '16:21:33.000000'),
(54, 'siju', 'DEFG', '2021-12-13', '11:07:58.000000'),
(55, 'user2', 'EFGH', '2021-12-13', '12:38:04.000000'),
(56, 'siju', 'FGHI', '2021-12-13', '17:10:38.000000'),
(57, 'siju', 'ASDF', '2021-12-13', '17:10:38.000000'),
(58, 'user1', 'FGHI', '2021-12-14', '13:47:20.000000');

-- --------------------------------------------------------

--
-- Table structure for table `battery`
--

CREATE TABLE `battery` (
  `id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `tech` varchar(500) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `battery`
--

INSERT INTO `battery` (`id`, `image`, `model`, `brand`, `category`, `tech`, `status`) VALUES
(1, 'LIVGUARD-100-AH-BATTERY-LG1048TT.png', 'LIVGUARD 100 AH BATTERY LG1048TT', 'Livguard', 'Battery', 'tubular bed', 1),
(2, 'LIVGUARD-110-AH-BATTERY-LG1160TT.png', 'LIVGUARD 110 AH BATTERY LG1160TT', 'Livguard', 'Battery', 'TUBULAR MT', 1),
(3, 'LIVGUARD-120-AH-BATTERY-LG1248bed.png', 'LIVGUARD 120 AH BATTERY LG1248bed', 'Livguard', 'Battery', 'TUBULAR BED', 1),
(4, 'LIVGUARD-150-AH-BATTERY-LG1536FP.png', 'LIVGUARD 150 AH BATTERY LG1536FP', 'Livguard', 'Battery', 'Flat plate', 1),
(5, 'LIVGUARD-150-AH-BATTERY-LG1542.png', 'LIVGUARD 150 AH BATTERY LG1542', 'Livguard', 'Battery', 'tubular bed j', 1),
(6, 'LIVGUARD-150-AH-BATTERY-LG1545TT.png', 'LIVGUARD 150 AH BATTERY LG1545TT', 'Livguard', 'Battery', 'Tubular TT', 1),
(7, 'LIVGUARD-150-AH-BATTERY-LG1554STJ.png', 'LIVGUARD 150 AH BATTERY LG1554STJ', 'Livguard', 'Battery', 'Tubular bed J', 1),
(8, 'LIVGUARD-150-AH-BATTERY-LG1554TT.png', 'LIVGUARD 150 AH BATTERY LG1554TT', 'Livguard', 'Battery', 'Tubular TT', 1),
(9, 'LIVGUARD-150-AH-BATTERY-LG1560-MT.png', 'LIVGUARD 150 AH BATTERY LG1560 MT', 'Livguard', 'Battery', 'TUBULAR MT\r\n', 1),
(10, 'LIVGUARD-150-AH-BTERY-LATG1560TT.png', 'LIVGUARD 150 AH BTERY LATG1560TT', 'Livguard', 'Battery', 'Tubular TT', 1),
(11, 'LIVGUARD-160-AH-BATTERY-LG1639TT.png', 'LIVGUARD 160 AH BATTERY LG1639TT', 'Livguard', 'Battery', 'TUBULAR TT', 1),
(12, 'LIVGUARD-160-AH-BATTERY-LG1666TT.png', 'LIVGUARD 160 AH BATTERY LG1666TT', 'Livguard', 'Battery', 'Tubular TT', 1),
(13, 'LIVGUARD-180-AH-BATTERY-LG1866TT.png', 'LIVGUARD 180 AH BATTERY LG1866TT', 'Livguard', 'Battery', 'Tubular TT', 1),
(14, 'LIVGUARD-200-AH-BATTERY-LG2048TT.png', 'LIVGUARD 200 AH BATTERY LG2048TT', 'Livguard', 'Battery', 'TUBULAR TT', 1),
(15, 'LIVGUARD-200-AH-BATTERY-LG2066TT.png', 'LIVGUARD 200 AH BATTERY LG2066TT', 'Livguard', 'Battery', 'TUBULAR TT', 1),
(16, 'LIVGUARD-220-AH-BATTERY-LG2266TT.png', 'LIVGUARD 220 AH BATTERY LG2266TT', 'Livguard', 'Battery', 'Tubular TT', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `bnd_id` int(11) NOT NULL,
  `bnd_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `itm_id` int(11) NOT NULL,
  `mdl_id` int(11) NOT NULL,
  `bnd_isactive` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `companyid` int(5) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `companymail` varchar(100) NOT NULL,
  `companynumber` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gst` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` int(10) NOT NULL,
  `role` varchar(20) NOT NULL,
  `status` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `dealerid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `companyid` int(6) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cemail` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password_1` varchar(50) NOT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `id_proof` varchar(100) DEFAULT NULL,
  `referalid` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `status` int(5) NOT NULL,
  `role` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `adusr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`dealerid`, `username`, `companyid`, `companyname`, `designation`, `email`, `cemail`, `phone`, `password_1`, `profile_img`, `id_proof`, `referalid`, `pincode`, `status`, `role`, `address`, `adusr`) VALUES
(3, 'test', 2, 'test_company2', 'staff', 'test@gmail.com', 'test@gmail.com', '1234567896', '123456', NULL, NULL, '2', '67895', 1, 'Staff', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `engresponse`
--

CREATE TABLE `engresponse` (
  `id` int(11) NOT NULL,
  `customername` varchar(100) DEFAULT NULL,
  `cphone` varchar(20) DEFAULT NULL,
  `engineer` varchar(100) DEFAULT NULL,
  `ephone` varchar(20) DEFAULT NULL,
  `tickid` int(11) DEFAULT NULL,
  `item` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `rqr` varchar(500) DEFAULT NULL,
  `complaint` varchar(500) DEFAULT NULL,
  `work` varchar(500) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `paymentby` varchar(50) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `paystatus` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `engresponse`
--

INSERT INTO `engresponse` (`id`, `customername`, `cphone`, `engineer`, `ephone`, `tickid`, `item`, `model`, `brand`, `rqr`, `complaint`, `work`, `note`, `paymentby`, `amount`, `paystatus`, `status`) VALUES
(13, 'greeshma', '8848992045', 'staff3', '+91 9870123654', 64, 'hvbh', 'vhv', 'bhb', '					vhvh', 'hj nh', 'yes', 'jj jn', 'By Cash', '5566', 1, 1),
(12, 'Customer4', '7946130258', 'staff3', '+91 9870123654', 22, 'Iphone6', 'Iphone', 'Apple', 'Display Lagging, Overheating, Slow Charging					', 'erwerfr', 'ddfd', 'dfdfsfd', 'By Cash', '1000', 1, 1),
(14, 'abctest', '123456', 'cpooltest', '9876543210', 68, 'battery', 'sjrvf', ' sjvc s', '					sjnvcjsnvjsnjvnsjv', 'actual complaint is', 'yes i done this work', 'no', 'By Cash', '5000', 0, 1),
(15, 'xxxtest', '000000', 'xxx', '88888888', 79, 'xxx', 'sjvnjsv', 'sjv js', '					snvjknsakjvnajkv', 'njdvdsvjsvdj', ' dvjdvjfdjv', 'a evjsjfvj', 'By Cash', '1000', 1, 1),
(16, 'xxxtest', '000000', 'xxx', '9876543210', 80, 'yyy', 'jnvjasdjv', 'njaqvjn', '					', 'jjsv', 'snv s', 'sv nsvn', 'By Cash', '2000', 1, 1),
(17, 'zzz', '987654', 'xxx', '9876543210', 81, 'zzz', 'jsncjs', 'jnvjsjdv', '					 vjsvdj jkdv jsvj', 'sfcs', 'vdvdv', 'dvdvfd', 'By Cash', '3000', 1, 1),
(18, 'reshma', '8529637410', 'sana', '', 83, 'gjk', 'fgb', 'gyhu', '				ghj	', 'bbj', 'yes', 'hjjj', 'By Cash', '5000', 1, 1),
(19, 'xxx555', '999999999', 'xxx', '9876543210', 90, 'cvfv', 'rvr', 'rv', 'svsvdsv', 'ddddddddddddddd', 'ffffffffffffgg', 'gggggggg', 'UPI Payment', '1000', 1, 1),
(20, 'Devika Gopi', '9745524953', 'new4', '123', 102, 'battery', '58', 'orion', 'This is a test Message\r\n\r\n', 'battery problem', 'yes', 'nothing', 'By Cash', '100', 0, 1),
(21, 'akshaj', '123456789', 'sana', '9873210456', 111, 'lap', '123', 'asus', 'test complaint					', 'testing actual complaint', 'testing Work Done', 'testing Additional Not', 'UPI Payment', '12345', 0, 1),
(23, 'Noby', '9495305189', 'shimjith', '8129359546', 119, 'ups', '1050', 'luminous', 'Not working ', 'PC board replaced ', 'Change PC board ', '', 'By Cash', '2300', 1, 1),
(24, 'HIMAYATHUL SCHOOL', '97474400446', 'jasir', '8086995283', 126, 'ups', '2.5kva', 'luminous', 'LUMINOUS 2.5/36V BEEP SOUND', 'Pcb replays ', '', '', 'By Cash', '3500/-', 1, 1),
(25, 'G group security', '9349987013', 'saran v p', '8086813710', 150, '1050', 'Eco volt', 'Luminous ', '		Not working 			', 'Line problem', '', '', 'By Cash', '600', 1, 1),
(26, 'THOMARAKKATIL TILE GALLERY', '7034314300', 'saran v p', '8086813710', 149, 'INVERTER', '1700', 'LIVGUARD', '			BACK UP ISSUE		', 'Battery complaint', '', '', 'By Cash', '400', 1, 1),
(27, 'Krs parcel service', '9207715867', 'jasir', '8086995283', 141, 'Ups', 'Avr 750va', 'Orion ', 'Orion inverter not working ', 'No output ', 'Done', 'Preset replies ', 'By Cash', '600', 1, 1),
(28, 'Real infotech meenangadi', '9544746378', 'jasir', '8086995283', 145, 'Inverter ', 'LgS 2250', 'Livguard ', 'Meenangadi', 'Backup problem ', '', 'Charging reset , battery water filld,in put switch on', 'By Cash', '', 1, 1),
(29, 'Print house', '9526111631', 'prabheesh', '9400123969', 147, 'Utl', '5kva', 'Utl', 'Utl', 'No complaint ', 'Completed ', '', 'By Cash', '', 1, 1),
(30, 'SUBHEESH KUMAR S B', '9072006373', 'anas basheer', '9961097856', 155, 'INVERTER', '1100', 'ORION', '				INVERTER COMPLAINT	', 'Line problem ', '', '', 'By Cash', 'Warrenty ', 1, 1),
(31, 'C/O SAJITH MANJERI', '9447176430', 'saran v p', '8086813710', 172, 'ONGRID', '5KW', 'LIVGAURD', '					', 'Fuse & wire burned', 'Main switch replaced', '', 'By Cash', 'Warranty', 1, 1),
(32, 'Ajinas', '9747558338', 'anas basheer', '9961097856', 170, 'inverter', '1100', 'orion', 'not working					', 'Board complaint ', 'Board replaced ', '', 'By Cash', 'Warrenty service ', 1, 1),
(33, 'PHOTONIX IMAGING SOLUTION', '9037734071', 'saran v p', '8086813710', 181, 'UTL ALFA ONLINE', 'UTL', 'UTL', '					COMPLAINT', 'Mains problem', '', '', 'By Cash', '500', 1, 1),
(34, 'Suneesh kallodi', '9747103339', 'jasir', '8086995283', 153, '2kva ', 'Solar', 'Orion', ' Solar Charger not working 				', 'Ne smu installed 24 v /50am', 'Work done ', '', 'By Cash', '4500/-', 1, 1),
(35, 'C/O SCALES  NAGARAM VANITHA ', '9037843193', 'prabheesh', '9400123969', 199, 'LIVGUARD', 'LG', 'LG', 'COMPLAINT, BACK UP ISSUE					', 'Braker trip ', '', '', 'By Cash', '', 1, 1),
(36, 'BUDGET PHARMA', '9447335525', 'jasir', '8086995283', 201, 'ORION 2KV`', 'ORION', '2KV', 'COMPLAINT					', 'Wiring problem ', 'Work done ', '', 'By Cash', '1400/-', 0, 1),
(37, 'C/O SANDEEP , AROGYA POLYCLINIC', '9061337700', 'shimjith', '8129359546', 200, 'ORION 2000', '2KV', 'ORION', 'CUT OFF					', 'PC board replaced ', '', '', 'UPI Payment', '2500', 1, 1),
(38, 'C/O SREEJITH AND COMPANY, RAGHUNATH', '8129924236', 'jasir', '8086995283', 212, '', '', '', 'NEAR CHRISTIAN COLLEGE', 'Copper socket replies ', 'Work done ', '', 'By Cash', '450', 1, 1),
(39, 'bharath college', '9995248957', 'jasir', '8086995283', 218, 'Livguard 1100', '0', 'Livguard 1100', '		complaint			', 'System hang', '', 'Warranty ', 'By Cash', '', 1, 1),
(40, 'donbosco', '9440323771', 'anas basheer', '9961097856', 220, 'orion 3kv /36 power pack', 'orion 3kv', 'orion', 'restarting problem					', 'Input fuse loose contact ', 'Fuse tighted ', 'Warrenty service ', 'By Cash', '', 1, 1),
(41, 'C/O SRISHTISREE', '9387528959', 'jasir', '8086995283', 234, 'UTL 10KV ONLINE UPS', 'UTL', 'UTL 10KV', 'COMPLAINT					', 'Output voltage high ', '', '', 'By Cash', '', 1, 1),
(42, 'govt college ', '9946050099', 'anas basheer', '9961097856', 250, 'ups', '3500va', 'luminous', 'not working', 'Not working ', 'Board serviced ', '', 'By Cash', '2400', 0, 1),
(43, 'test', '123456789', 'tester', '7894561230', 262, 'Item 1', 'Model 1', 'Brand 1', 'Detail of complaint 1					', 'test actual complaint', 'test work done', 'test additional note', 'UPI Payment', '1234', 1, 1),
(51, 'Comford', '9645535296', 'prabheesh', '9400123969', 288, 'Shiner5kva ', '5kva ', 'Shiner', '		Not working 			', 'Braker trip 1', 'Work done ', 'H', 'By Cash', '300', 1, 1),
(46, 'test', '1234567890', 'test', '0123456789', 299, 'orion battery', 'S1000RR', 'orion', 'this is a cmplaint written to test weather the functionality of the website\r\n', 'customer was right', 'battery changed', 'test', 'UPI Payment', 'nil', 1, 1),
(47, 'Shobha gopinath', '9847531252', 'saran v p', '8086813710', 325, 'Solar inverter ', '1kva solar ', 'Tata', 'Not working				', 'Switch complaint', 'Switch replaced', 'Battery jumper also replaced', 'By Cash', '800', 1, 1),
(48, 'Sajin kalpathoor bank', '9947378007', 'prabheesh', '9400123969', 287, 'Orion 2kv ', '2kva ', 'Orion ', '	Not working 				', 'In put complaint ', 'Work done ', 'Warranty ', 'By Cash', '000', 1, 1),
(52, 'Sarga', '9495259257', 'prabheesh', '9400123969', 289, '10kva utl', '10kva ', 'Utl', '	Not working 				', 'Zmpt ', 'Work done ', 'Replaced    zmpt', 'By Cash', '0000', 1, 1),
(53, 'george arupura', '9846702224', 'prabheesh', '9400123969', 314, 'inverter', 'orion 1100', 'orion', '	Not working 				', 'F', 'Work done ', 'Warranty ', 'By Cash', '000', 1, 1),
(54, 'A one offset', '9845', 'prabheesh', '9400123969', 310, 'Ups', '5kva ', 'Bp', 'Not working 				', 'Battery complaint ', 'Work done ', 'Battery replaced ', 'By Cash', '000', 1, 1),
(55, 'nadery health centre', '9846146113', 'ANAS', '9961097856', 305, 'ups', 'powerpack 5kva', 'orion', 'not working					', 'Not working ', 'Board serviced ', 'Board serviced ', 'By Cash', '0', 0, 1),
(56, 'Tondranad bank', '9747558338', 'ANAS', '9961097856', 306, '2kva inverter', '2kv', 'orion', '	not working				', 'Switch complaint ', 'Switch replaced ', 'Switch replaced ', 'By Cash', '600', 1, 1),
(57, 'Trends babycare', '9349710111', 'ANAS', '9961097856', 309, 'Ups', 'Utl 7.5kva', 'Utl', '	Not working 				', 'Line problem ', 'Screw tighted ', 'Loose contact ', 'By Cash', '800', 1, 1),
(58, 'Muhammed ashik', '9747558338', 'ANAS', '9961097856', 308, 'Inverter ', '1kva ', 'Orion ', 'Not working 					', 'Board complaint ', 'Board replaced ', 'Warrenty service ', 'By Cash', '0', 1, 1),
(59, 'Rajeesh, c/o sandheep', '8870039075', 'ANAS', '9961097856', 319, 'inverter', 'powerpack 1kva', 'orion', '					', 'Board complaint ', 'Board replaced ', 'Warrenty service ', 'By Cash', '0', 1, 1),
(60, 'Nadery health centre', '9846146113', 'ANAS', '9961097856', 318, 'ups', 'powerpack 5kva', 'orion', 'not working					', 'Board complaint ', 'Board serviced ', 'Warrenty service ', 'By Cash', '0', 1, 1),
(61, 'channelode', '8156862484', 'ANAS', '9961097856', 323, 'inverter', 'orion 1kva', 'orion', 'not working					', 'Display not working ', 'Display replaced ', 'Display replaced ', 'By Cash', '600', 1, 1),
(62, 'geetha', '9495318094', 'shimjith', '8129359546', 304, 'battery', '150ah', 'other', 'battery water filling					', 'Low water ', 'Complete ', 'Nothing ', 'By Cash', '600', 1, 1),
(63, 'Sneha poornima', '9567333394', 'shimjith', '8129359546', 311, 'Battery', 'T', 'Livguard ', '	Battery checking and water Filling 				', 'No complete ', 'Complete ', 'Nothing ', 'By Cash', '100', 1, 1),
(64, 'thiruvannur', '8907444857', 'shimjith', '8129359546', 316, 'invrter', 'orion 2kva', 'orion', 'not working					', 'Battery complaint ', 'Complete ', 'Nothing ', 'By Cash', '12500', 1, 1),
(65, 'danesh', '9439501005', 'shimjith', '8129359546', 322, 'battery', '1666', 'livguard', '	lg1666 inatallation				', 'Battery complete ', 'Complete ', 'Nothing ', 'By Cash', '15000', 1, 1),
(66, ' c/o sreejith and co,', '9847270777', 'shimjith', '8129359546', 324, 'inverter', 'lgs1600', 'livguard', 'instlation,1600va lg					', 'Inverter complaint ', 'New installed ', 'Nothing ', 'By Cash', '9300', 1, 1),
(67, 'TM mathew', '9447275617', 'jasir', '8086995283', 335, 'inverter', '1500 luminous, ion', 'luminous', 'not working					', 'Cooper socket replies ', 'Completed ', '450/-', 'By Cash', '450/-', 1, 1),
(68, 'Usman', '9544775586', 'jasir', '8086995283', 334, 'inverter', 'orion 1kva/12vdc', 'orion', 'not working				', 'Battery down ', 'Completed ', 'Warranty ', 'By Cash', '00', 1, 1),
(69, 'Dr Jayasree Narayan', '9497079789', 'jasir', '8086995283', 332, 'solar inverter', '3kva solar', 'luminous', 'not working					', 'Overload ', 'Completed ', '600/-', 'By Cash', '600', 1, 1),
(70, 'sreyas kunnamangalam', '9349113081', 'prabheesh', '9400123969', 329, 'ups', '1100va', 'liv gaurd', 'installation 	', 'Instlation', 'Work done ', 'W', 'By Cash', '0000', 1, 1),
(71, 'apsara', '9895201104', 'prabheesh', '9400123969', 330, 'ups', '2000va', 'orion', 'not working', 'No complaint ', 'Work done ', 'W', 'By Cash', '0000', 1, 1),
(72, 'mammy daddy shop', '628225348', 'prabheesh', '9400123969', 346, 'ups', 'orion ', '1250va', 'not working', 'Fan not working ', 'Fan replaced ', 'Warranty ', 'By Cash', '0000', 1, 1),
(73, 'ideal vijayan', '9745457345', 'prabheesh', '9400123969', 351, 'online', '5kv', 'other', 'backup problem		', 'Call canceled ', 'Call canceled ', 'Call canceled ', 'By Cash', 'Called ', 1, 1),
(74, 'tester', '1234567890', 'test', '0123456789', 386, 'ups', 'orion', 'everyday', 'this is a test message from the developer to test the functionality of this website\r\n', 'dead', 'repaired', 'working fine', 'By Cash', '1', 1, 1),
(78, 'test', '12345687910', 'test', '0123456789', 389, '', '', '', 'kmab uyad', 'sad', 'sad', 'asd', 'By Cash', '10000', 1, 1),
(79, 'test', '1234567890', 'test', '0123456789', 391, 'ups', '1000', 'utl', 'delete this message as soon as you see it', 'dead', 'fixed', 'nil', 'By Cash', '10000', 1, 1),
(80, 'Pulpally service  co operative bank', '9656871055', 'ANAS', '9961097856', 328, 'ups', '2000va  avr', 'orion', 'not working		', 'Not working ', 'Board serviced ', 'Board serviced ', 'By Cash', '1200', 1, 1),
(81, 'sumayya', '8547845620', 'ANAS', '9961097856', 349, 'ups', 'orion', '1100va', 'not working			', 'Not working ', 'System reset ', 'System reset ', 'By Cash', '500', 1, 1),
(82, 'budjet pharma', '9567979745', 'ANAS', '9961097856', 354, 'ups', '1700va', 'livguard', 'not working', 'Not working ', 'Jumber replaced ', 'Jumber replaced ', 'By Cash', '550', 1, 1),
(83, 'suneer', '9567373929', 'ANAS', '9961097856', 359, 'ups', '2000va', 'orion', 'not working', 'Not working ', 'IC replaced ', 'IC replaced ', 'By Cash', '1000', 1, 1),
(84, 'ambadi', '9746096727', 'ANAS', '9961097856', 365, 'ups', '1100va', 'orion', 'not working', 'Line problem ', 'Inverter working checked ', 'Inverter working ok ', 'By Cash', '300', 1, 1),
(85, 'horizon IT', '9847017676', 'ANAS', '9961097856', 392, 'ups', '800', 'other', 'not working', 'Ups board complaint ', 'Ups checking ', 'Ups checking ', 'By Cash', '500', 1, 1),
(86, 'gandhi asramam computer center', '8138000444', 'ANAS', '9961097856', 400, 'ups', '2000va', 'other', 'not working', 'Ups not working ', 'New order ', 'New order ', 'By Cash', '0', 1, 1),
(87, 'fackrudheen', '9176593232', 'ANAS', '9961097856', 440, 'ups', '1000va', 'other brand', 'not working', 'Copper socket broken ', 'Copper socket replaced ', 'Copper socket replaced ', 'By Cash', '600', 1, 1),
(88, 'sreekrishna tailoring ', '9400989050', 'ANAS', '9961097856', 438, 'ups', '1050', 'luminous', 'not working', 'Not working ', 'Terminal cleaned ', 'Terminal cleaned ', 'By Cash', '500', 1, 1),
(89, 'mathew', '9447904669', 'ANAS', '9961097856', 425, 'ups', '1100va', 'orion', 'not working		', 'Display complaint ', 'Display replaced ', 'Display replaced ', 'By Cash', 'Warrenty ', 1, 1),
(90, 'saji ', '8943070609', 'ANAS', '9961097856', 426, 'battery', 'wave', '150ah', 'backup problem', 'Battery complaint ', 'Battery complaint ', 'Battery complaint ', 'By Cash', '0', 1, 1),
(91, 'mubarak', '9995550166', 'ANAS', '9961097856', 439, 'ups', '1050', 'luminous', 'not working', 'Battery low ', 'Battery charged ', 'Battery charged ', 'By Cash', '600', 1, 1),
(92, 'velayudhan nair', '9947530987', 'ANAS', '9961097856', 435, 'ups', '1000va', 'orion', 'not working		', 'Battery terminal rest', 'Battery terminal cleaned ', 'Battery terminal cleaned ', 'By Cash', '500', 1, 1),
(93, 'rajesh', '8129544650', 'ANAS', '9961097856', 433, 'ups', '700va', 'orion', 'not working', 'Battery complaint ', 'Battery checked ', 'Battery complaint ', 'By Cash', 'O', 1, 1),
(94, 'abdhul latheef', '9447892081', 'ANAS', '9961097856', 413, 'ups', '700va', 'luminous', 'not working', 'Copper socket complaint ', 'Copper socket replaced ', 'Copper socket replaced ', 'By Cash', '600', 1, 1),
(95, 'ram raj', '8156927262', 'ANAS', '9961097856', 412, 'ups', '1250va', 'orion', 'not working', 'LED complaint ', 'LED replaced ', 'Warrenty ', 'By Cash', 'Warrenty ', 1, 1),
(96, 'test', '8893111557', 'test', '1234567891', 876, 'battery', '', 'marko', 'test		', 'battery issue', 'replace ', 'nothing', 'By Cash', '0', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faqid` int(11) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `companyid` int(5) NOT NULL,
  `question` varchar(500) NOT NULL,
  `answer` varchar(1500) NOT NULL,
  `status` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faqid`, `companyname`, `companyid`, `question`, `answer`, `status`) VALUES
(9, 'test_company1', 1, 'Have your second question?', 'You can have your second answer					', 1),
(6, 'test_company1', 1, 'Who can create FAQs?', 'Only the company has the right to create FAQs. This can be done by logging into the webpage and going to the create FAQs.					', 1),
(10, 'test_company1', 1, 'You Can have your third question?', 'Your Answer to your third question', 1),
(13, 'test_company2', 2, 'Faq q1', 'faq ans1 					', 1),
(12, 'test_company1', 1, 'What is FAQ?', 'FAQ  is a Frequently Asked Questions. FAQ  is a Frequently Asked Questions. \r\n					', 1);

-- --------------------------------------------------------

--
-- Table structure for table `heater`
--

CREATE TABLE `heater` (
  `id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `heater`
--

INSERT INTO `heater` (`id`, `image`, `model`, `brand`, `category`, `status`) VALUES
(2, '1650089593112.jpg', 'ORION Solar Water Heater', 'Orion', 'Solar Water Heater', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inverter`
--

CREATE TABLE `inverter` (
  `id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `dim` varchar(100) DEFAULT NULL,
  `cap` varchar(100) DEFAULT NULL,
  `volt` varchar(100) DEFAULT NULL,
  `warrenty` varchar(100) DEFAULT NULL,
  `tech` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inverter`
--

INSERT INTO `inverter` (`id`, `image`, `model`, `brand`, `category`, `dim`, `cap`, `volt`, `warrenty`, `tech`, `status`) VALUES
(1, 'LIVGUARD-INVERTER-LG700.png', 'LIVGUARD INVERTER LG700', 'Livguard ', 'UPS/Inverter', '275x297x123', NULL, '12', '24  months', NULL, 1),
(2, 'LIVGUARD-INVERTER-LGS1100.png', 'LIVGUARD INVERTER LGS1100', 'Livguard ', 'UPS/Inverter', '275x297x123', NULL, '12 ', '24 months', NULL, 1),
(3, 'LIVGUARD-INVERTER-LGS1700.png', 'LIVGUARD INVERTER LGS1700', 'Livguard ', 'UPS/Inverter', '275x318x143', NULL, '24 ', '24 months', NULL, 1),
(4, 'LIVGUARD-INVERTER-LGS2300.png', 'LIVGUARD INVERTER LGS2300', 'Livguard ', 'UPS/Inverter', NULL, NULL, NULL, NULL, 'SINE WAVE', 1),
(5, 'LIVGUARD-INVERTER-LGS3500.png', 'LIVGUARD INVERTER LGS3500', 'Livguard ', 'UPS/Inverter', NULL, NULL, '48', NULL, 'SINE WAVE', 1),
(6, 'LIVGUARD-INVERTER-LGS5000.png', 'LIVGUARD INVERTER LGS5000', 'Livguard ', 'UPS/Inverter', NULL, NULL, '48 ', NULL, 'SINE WAVE', 1),
(7, 'LIVGUARD-INVERTER-LGS900.png', 'LIVGUARD INVERTER LGS900', 'Livguard ', 'UPS/Inverter', '275x297x123', NULL, '12 ', '24 months', NULL, 1),
(8, 'ORION-1100-VA-12-V-SINE-WAVE-UPS.png', 'ORION 1100 VA 12 V SINE WAVE UPS', 'Orion', 'UPS/Inverter', NULL, '1100 VA', '12 ', '60 months', NULL, 1),
(9, 'ORION-INVERTER-1250VA.png', 'ORION INVERTER 1250VA', 'Orion', 'UPS/Inverter', NULL, NULL, '12', NULL, 'SINE WAVE', 1),
(10, 'ORION-INVERTER-2000VA.png', 'ORION INVERTER 2000VA', 'Orion', 'UPS/Inverter', NULL, NULL, '24', NULL, 'SINE WAVE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itm_id` int(11) NOT NULL,
  `itm_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `itm_isactive` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itm_id`, `itm_name`, `itm_isactive`) VALUES
(8, 'test', 1),
(9, 'Battery', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `mdl_id` int(11) NOT NULL,
  `itm_id` int(11) NOT NULL,
  `mdl_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `mdl_isactive` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`mdl_id`, `itm_id`, `mdl_title`, `mdl_isactive`) VALUES
(5, 8, 'test model', 1),
(6, 9, 'A100 AH LS1048TT', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `dim` varchar(100) DEFAULT NULL,
  `cap` varchar(100) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `tech` varchar(500) DEFAULT NULL,
  `volt` varchar(500) DEFAULT NULL,
  `warrenty` varchar(500) DEFAULT NULL,
  `power` varchar(100) DEFAULT NULL,
  `detail` varchar(500) DEFAULT NULL,
  `detail2` varchar(500) DEFAULT NULL,
  `detail3` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `model`, `brand`, `category`, `dim`, `cap`, `weight`, `tech`, `volt`, `warrenty`, `power`, `detail`, `detail2`, `detail3`, `status`) VALUES
(1, 'LIVGUARD-100-AH-BATTERY-LG1048TT.png', 'LIVGUARD 100 AH BATTERY LG1048TT', 'Livguard', 'Battery', NULL, NULL, NULL, 'tubular bed', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'LIVGUARD-110-AH-BATTERY-LG1160TT.png', 'LIVGUARD 110 AH BATTERY LG1160TT', 'Livguard', 'Battery', NULL, NULL, NULL, 'TUBULAR MT', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 'LIVGUARD-120-AH-BATTERY-LG1248bed.png', 'LIVGUARD 120 AH BATTERY LG1248bed', 'Livguard', 'Battery', NULL, NULL, NULL, 'TUBULAR BED', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(4, 'LIVGUARD-150-AH-BATTERY-LG1536FP.png', 'LIVGUARD 150 AH BATTERY LG1536FP', 'Livguard', 'Battery', NULL, NULL, NULL, 'Flat plate', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, 'LIVGUARD-150-AH-BATTERY-LG1542.png', 'LIVGUARD 150 AH BATTERY LG1542', 'Livguard', 'Battery', NULL, NULL, NULL, 'tubular bed j', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 'LIVGUARD-150-AH-BATTERY-LG1545TT.png', 'LIVGUARD 150 AH BATTERY LG1545TT', 'Livguard', 'Battery', NULL, NULL, NULL, 'Tubular TT', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(7, 'LIVGUARD-150-AH-BATTERY-LG1554STJ.png', 'LIVGUARD 150 AH BATTERY LG1554STJ', 'Livguard', 'Battery', NULL, NULL, NULL, 'Tubular bed J', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(8, 'LIVGUARD-150-AH-BATTERY-LG1554TT.png', 'LIVGUARD 150 AH BATTERY LG1554TT', 'Livguard', 'Battery', NULL, NULL, NULL, 'Tubular TT', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(9, 'LIVGUARD-150-AH-BATTERY-LG1560-MT.png', 'LIVGUARD 150 AH BATTERY LG1560 MT', 'Livguard', 'Battery', NULL, NULL, NULL, 'TUBULAR MT\r\n', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(10, 'LIVGUARD-150-AH-BTERY-LATG1560TT.png', 'LIVGUARD 150 AH BTERY LATG1560TT', 'Livguard', 'Battery', NULL, NULL, NULL, 'Tubular TT', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(11, 'LIVGUARD-160-AH-BATTERY-LG1639TT.png', 'LIVGUARD 160 AH BATTERY LG1639TT', 'Livguard', 'Battery', NULL, NULL, NULL, 'TUBULAR TT', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(12, 'LIVGUARD-160-AH-BATTERY-LG1666TT.png', 'LIVGUARD 160 AH BATTERY LG1666TT', 'Livguard', 'Battery', NULL, NULL, NULL, 'Tubular TT', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(13, 'LIVGUARD-180-AH-BATTERY-LG1866TT.png', 'LIVGUARD 180 AH BATTERY LG1866TT', 'Livguard', 'Battery', NULL, NULL, NULL, 'Tubular TT', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(14, 'LIVGUARD-200-AH-BATTERY-LG2048TT.png', 'LIVGUARD 200 AH BATTERY LG2048TT', 'Livguard', 'Battery', NULL, NULL, NULL, 'TUBULAR TT', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(15, 'LIVGUARD-200-AH-BATTERY-LG2066TT.png', 'LIVGUARD 200 AH BATTERY LG2066TT', 'Livguard', 'Battery', NULL, NULL, NULL, 'TUBULAR TT', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(16, 'LIVGUARD-220-AH-BATTERY-LG2266TT.png', 'LIVGUARD 220 AH BATTERY LG2266TT', 'Livguard', 'Battery', NULL, NULL, NULL, 'Tubular TT', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(17, '1650089593112.jpg', 'ORION Solar Water Heater', 'Orion', 'Solar Water Heater', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(18, 'LIVGUARD-INVERTER-LG700.png', 'LIVGUARD INVERTER LG700', 'Livguard ', 'UPS/Inverter', '275x297x123', NULL, NULL, NULL, '12', '24  months', NULL, NULL, NULL, NULL, 1),
(19, 'LIVGUARD-INVERTER-LGS1100.png', 'LIVGUARD INVERTER LGS1100', 'Livguard ', 'UPS/Inverter', '275x297x123', NULL, NULL, NULL, '12 ', '24 months', NULL, NULL, NULL, NULL, 1),
(20, 'LIVGUARD-INVERTER-LGS1700.png', 'LIVGUARD INVERTER LGS1700', 'Livguard ', 'UPS/Inverter', '275x318x143', NULL, NULL, NULL, '24 ', '24 months', NULL, NULL, NULL, NULL, 1),
(21, 'LIVGUARD-INVERTER-LGS2300.png', 'LIVGUARD INVERTER LGS2300', 'Livguard ', 'UPS/Inverter', NULL, NULL, NULL, 'SINE WAVE', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(22, 'LIVGUARD-INVERTER-LGS3500.png', 'LIVGUARD INVERTER LGS3500', 'Livguard ', 'UPS/Inverter', NULL, NULL, NULL, 'SINE WAVE', '48', NULL, NULL, NULL, NULL, NULL, 1),
(23, 'LIVGUARD-INVERTER-LGS5000.png', 'LIVGUARD INVERTER LGS5000', 'Livguard ', 'UPS/Inverter', NULL, NULL, NULL, 'SINE WAVE', '48 ', NULL, NULL, NULL, NULL, NULL, 1),
(24, 'LIVGUARD-INVERTER-LGS900.png', 'LIVGUARD INVERTER LGS900', 'Livguard ', 'UPS/Inverter', '275x297x123', NULL, NULL, NULL, '12 ', '24 months', NULL, NULL, NULL, NULL, 1),
(25, 'ORION-1100-VA-12-V-SINE-WAVE-UPS.png', 'ORION 1100 VA 12 V SINE WAVE UPS', 'Orion', 'UPS/Inverter', NULL, '1100 ', NULL, NULL, '12 ', '60 months', NULL, NULL, NULL, NULL, 1),
(26, 'ORION-INVERTER-1250VA.png', 'ORION INVERTER 1250VA', 'Orion', 'UPS/Inverter', NULL, NULL, NULL, 'SINE WAVE', '12', NULL, NULL, NULL, NULL, NULL, 1),
(27, 'ORION-INVERTER-2000VA.png', 'ORION INVERTER 2000VA', 'Orion', 'UPS/Inverter', NULL, NULL, NULL, 'SINE WAVE', '24', NULL, NULL, NULL, NULL, NULL, 1),
(28, 'LIVGUARD-1-KVA-OFF-GRID-SOLAR-PACKAGES.png', 'LIVGUARD 1 KVA OFF-GRID SOLAR PACKAGES', 'Livguard', 'Solar products', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LIVGUARD 165 AH SOLAR BATTERY * 1 nos( 5 YEAR WARR', 'LIVGUARD 165 AH SOLAR BATTERY * 1 nos( 5 YEAR WARR', 'LIVGUARD 165 W MONO PERC SOLAR PANEL*1 nos( 25 YEA', 1),
(29, 'LIVGUARD-100-AH-SOLAR-BATTERY-LGMLS10060TT.png', 'LIVGUARD 100 AH SOLAR BATTERY LGMLS10060TT', 'Livguard', 'Solar products', '505x190x430', '100', '3% (Kg) – 52.6', 'Tubular', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(30, 'LIVGUARD-135-AH-SOLAR-BATTERY-LGMLS13560TT.png', 'LIVGUARD 135 AH SOLAR BATTERY LGMLS13560TT', 'Livguard', 'Solar products', '505x190x430', '135 ', '3% (Kg) – 54.8', 'Tubular', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(31, 'LIVGUARD-150-AH-SOLAR-BATTERY-LGMLS15060TT-1.png', 'LIVGUARD 150 AH SOLAR BATTERY LGMLS15060TT', 'Livguard', 'Solar products', '505x190x430 ', '150', '3% (Kg) – 54.8', 'Tubular', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(32, 'LIVGUARD-165-AH-SOLAR-BATTERY-LGMLS16560TT.png', 'LIVGUARD 165 AH SOLAR BATTERY LGMLS16560TT', 'Livguard', 'Solar products', '505x190x430', '165', '3% (Kg) – 58.1', 'Tubular', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(33, 'LIVGUARD-180-AH-SOLAR-BATTERY-LGMLS18060TT.png', 'LIVGUARD 180 AH SOLAR BATTERY LGMLS18060TT', 'Livguard', 'Solar products', '505x190x430', '180 ', '3% (Kg) – 58.1', 'Tubular', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(34, 'LIVGUARD-200-AH-SOLAR-BATTERY-LGTLS20060TT.png', 'LIVGUARD 200 AH SOLAR BATTERY LGTLS20060TT', 'Livguard', 'Solar products', '505x189x422', '200', '3% (Kg) – 69.5', 'Tubular', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(35, 'LIVGUARD-40-AH-SOLAR-BATTERY-LGTLS4036ST.png', 'LIVGUARD 40 AH SOLAR BATTERY LGTLS4036ST', 'Livguard', 'Solar products', '410x176x253', '40 ', '3% (Kg) – 22.6', 'Tubular', NULL, '36 months', NULL, NULL, NULL, NULL, 1),
(36, 'LIVGUARD-30-AMPS-SMU-LSMU-122430.png', 'LIVGUARD 30 AMPS SMU LSMU 122430', 'Livguard ', 'Solar products', NULL, '30 ', NULL, 'PWM', '12/24', NULL, 'Max Solar PV Panel – 12V: 500 Wp I 24V: 1000 Wp', 'Livguard Solar Management Unit (SMU) converts any existing inverter into solar system. It has in-built intelligence to maximize use of solar energy and is ideal for various DC voltages.', NULL, NULL, 1),
(37, 'LIVGUARD-75-AH-SOLAR-BATTERY-LGTLS7536ST.png', 'LIVGUARD 75 AH SOLAR BATTERY LGTLS7536ST', 'Livguard ', 'Solar products', '510x180x255', '75 ', '3% (Kg) – 36.4', 'Tubular', NULL, '36 months', NULL, NULL, NULL, NULL, 1),
(38, 'LIVGUARD-SOLAR-INVERTER-LS0G3500.png', 'LIVGUARD SOLAR INVERTER LS0G3500', 'Livguard ', 'Solar products', NULL, NULL, NULL, NULL, '48', '2 YEAR', NULL, NULL, NULL, NULL, 1),
(39, 'LIVGUARD-SOLAR-INVERTER-LSOG1150.png', 'LIVGUARD SOLAR INVERTER LSOG1150', 'Livguard ', 'Solar products', NULL, NULL, NULL, 'Pure Sine Wave', '12', '24 months', 'Max Solar PV Panel – 900 Wp', NULL, NULL, NULL, 1),
(40, 'LIVGUARD-SOLAR-INVERTER-LSOG1850.png', 'LIVGUARD SOLAR INVERTER LSOG1850', 'Livguard ', 'Solar products', NULL, NULL, NULL, 'Pure Sine Wave', '24', '24 months', 'Max Solar PV Panel – 1600 Wp', NULL, NULL, NULL, 1),
(41, 'LIVGUARD-SOLAR-INVERTER-LSOG2250.png', 'LIVGUARD SOLAR INVERTER LSOG2250', 'Livguard ', 'Solar products', NULL, NULL, NULL, 'Pure Sine Wave', '24', '24 months', 'Max Solar PV Panel – 1600 Wp', NULL, NULL, NULL, 1),
(42, '1650089593169.jpg', 'Orion Water Heater', 'Orion ', 'Solar products', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `response`
--

CREATE TABLE `response` (
  `id` int(11) NOT NULL,
  `tickid` int(11) NOT NULL,
  `sendfromid` int(11) NOT NULL,
  `sendfromname` varchar(100) NOT NULL,
  `sendtoid` int(11) NOT NULL,
  `sendtoname` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `vstatus` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `response`
--

INSERT INTO `response` (`id`, `tickid`, `sendfromid`, `sendfromname`, `sendtoid`, `sendtoname`, `message`, `vstatus`, `date`, `time`) VALUES
(1, 22, 20, 'staff3', 24, 'Customer4', 'hai,this is staff3 , Sorry for your inconvinence, Please explain your problem', 0, '2022/07/29', '03:47:49pm'),
(21, 32, 34, 'tester12', 20, 'staff3', 'i want to find the status of my tester', 0, '2022/08/06', '09:39:26pm'),
(20, 32, 20, 'staff3', 34, 'tester12', 'whats the problem?', 0, '2022/08/06', '09:38:55pm'),
(19, 32, 34, 'tester12', 20, 'staff3', 'hai', 0, '2022/08/06', '09:30:20pm'),
(18, 32, 20, 'staff3', 34, 'tester12', 'hello', 0, '2022/08/06', '09:27:37pm'),
(17, 22, 20, 'staff3', 24, 'Customer4', 'sorry', 0, '2022/07/30', '12:46:40pm'),
(15, 22, 20, 'staff3', 24, 'Customer4', 'hello', 0, '2022/07/29', '07:41:42pm'),
(16, 22, 24, 'Customer4', 20, 'staff3', 'Display Lagging, Overheating', 0, '2022/07/29', '07:45:58pm'),
(22, 32, 20, 'staff3', 34, 'tester12', 'let me see', 0, '2022/08/06', '09:40:16pm'),
(23, 32, 34, 'tester12', 20, 'staff3', 'ok thank you', 0, '2022/08/06', '09:40:33pm'),
(24, 32, 34, 'tester12', 20, 'staff3', 'hai', 0, '2022/08/06', '09:41:30pm'),
(25, 32, 34, 'tester12', 20, 'staff3', 'hai', 0, '2022/08/06', '09:42:03pm'),
(26, 32, 34, 'tester12', 20, 'staff3', 'hello', 0, '2022/08/06', '09:42:19pm'),
(27, 32, 20, 'staff3', 34, 'tester12', 'hello', 0, '2022/08/06', '09:42:35pm'),
(28, 34, 36, 'test8', 35, 'test6', 'i will come on 9th aug', 0, '2022/08/08', '11:43:53am'),
(29, 34, 35, 'test6', 36, 'test8', 'thank you', 0, '2022/08/08', '11:45:29am'),
(30, 34, 36, 'test8', 35, 'test6', 'HELLO', 0, '2022/08/08', '04:24:40pm'),
(31, 23, 20, 'staff3', 24, 'Customer4', 'wasdas', 0, '2022/08/20', '03:48:21pm'),
(32, 68, 61, 'cpooltest', 59, 'abctest', 'i will look into it', 0, '2022/08/25', '11:23:07am'),
(33, 68, 61, 'cpooltest', 59, 'abctest', 'lets chat', 0, '2022/08/25', '11:23:25am'),
(34, 76, 61, 'cpooltest', 64, 'damu', 'status changed', 0, '2022/08/26', '10:50:04am'),
(35, 79, 67, 'xxx', 66, 'xxxtest', 'hi i am coming', 0, '2022/08/27', '12:16:46pm'),
(36, 79, 66, 'xxxtest', 67, 'xxx', 'ok. thank u', 0, '2022/08/27', '12:18:00pm'),
(37, 83, 70, 'sana', 69, 'reshma', 'hello i am there @ 11.00 am today', 0, '2022/08/29', '09:32:38am'),
(38, 83, 69, 'reshma', 70, 'sana', 'ok i will wait for you', 0, '2022/08/29', '09:33:41am'),
(39, 100, 55, 'new4', 84, 'Devika', 'work in progress', 0, '2022/11/30', '02:37:27pm'),
(40, 102, 55, 'new4', 86, 'Devika Gopi', 'work completed', 0, '2022/12/01', '12:53:25pm'),
(41, 107, 93, 'nova test', 71, 'test11', 'test chat', 0, '2023/01/31', '12:22:51pm'),
(42, 111, 70, 'sana', 97, 'akshaj', 'hi akshaj', 0, '2023/02/07', '01:53:51pm'),
(43, 27, 0, 'babu', 70, 'sana', 'hello', 0, '2023/02/07', '02:02:07pm'),
(44, 27, 70, 'sana', 0, 'babu', 'hi', 0, '2023/02/07', '02:02:26pm'),
(45, 118, 116, 'hari das', 115, 'jasir', 'hi', 0, '2023/02/08', '04:54:10pm'),
(46, 118, 115, 'jasir', 116, 'hari das', '', 0, '2023/02/10', '01:39:42pm'),
(47, 129, 115, 'jasir', 134, 'Madhavan', 'Line problem ', 0, '2023/02/13', '01:19:07pm'),
(48, 133, 124, 'saran v p', 139, 'Kunhidhuhaji', 'Livguard inverter', 0, '2023/02/14', '06:36:42pm'),
(49, 133, 124, 'saran v p', 139, 'Kunhidhuhaji', 'Fuse replaced. Warrenty', 0, '2023/02/14', '06:37:11pm'),
(50, 131, 126, 'anas basheer', 137, 'c/o S S KOODARANJI', '', 0, '2023/02/14', '07:49:50pm'),
(51, 131, 126, 'anas basheer', 137, 'c/o S S KOODARANJI', '', 0, '2023/02/14', '07:51:06pm'),
(52, 131, 126, 'anas basheer', 137, 'c/o S S KOODARANJI', 'Complaint solved', 0, '2023/02/15', '09:14:30am'),
(53, 131, 126, 'anas basheer', 137, 'c/o S S KOODARANJI', 'Complaint solved', 0, '2023/02/15', '09:14:34am'),
(54, 119, 123, 'shimjith', 117, 'Noby', 'Pc board replaced now working good condition ', 0, '2023/02/15', '12:17:24pm'),
(55, 119, 123, 'shimjith', 117, 'Noby', 'Service charge 2300', 0, '2023/02/15', '12:17:52pm'),
(56, 136, 124, 'saran v p', 144, 'GOPALAN', 'No complaint found', 0, '2023/02/15', '02:27:28pm'),
(57, 137, 124, 'saran v p', 145, 'Abilash ', 'Installation completed', 0, '2023/02/15', '06:03:38pm'),
(58, 138, 127, 'sharun rag', 146, 'raj solar', 'Complete service charge 2500 ku', 0, '2023/02/17', '10:06:44am'),
(59, 138, 127, 'sharun rag', 146, 'raj solar', '', 0, '2023/02/17', '02:17:37pm'),
(60, 138, 127, 'sharun rag', 146, 'raj solar', '', 0, '2023/02/17', '02:18:09pm'),
(61, 149, 124, 'saran v p', 156, 'THOMARAKKATIL TILE GALLERY', 'Battery complaint', 0, '2023/02/17', '05:06:24pm'),
(62, 148, 126, 'anas basheer', 155, 'JUSTIN KARIKANDANPARA C/O QUALITY', 'Battery charged  ,Warrenty service ', 0, '2023/02/17', '08:29:44pm'),
(63, 147, 143, 'prabheesh', 154, 'Print house', 'No complaint ', 0, '2023/02/18', '10:51:28am'),
(64, 162, 170, 'shameer atholi', 126, 'anas basheer', 'hy', 0, '2023/02/18', '11:18:42am'),
(65, 162, 170, 'shameer atholi', 126, 'anas basheer', 'hy', 0, '2023/02/18', '11:18:43am'),
(66, 148, 126, 'anas basheer', 155, 'JUSTIN KARIKANDANPARA C/O QUALITY', '', 0, '2023/02/18', '12:47:11pm'),
(67, 148, 126, 'anas basheer', 155, 'JUSTIN KARIKANDANPARA C/O QUALITY', '', 0, '2023/02/18', '12:48:36pm'),
(68, 148, 126, 'anas basheer', 155, 'JUSTIN KARIKANDANPARA C/O QUALITY', '', 0, '2023/02/18', '12:49:45pm'),
(69, 148, 126, 'anas basheer', 155, 'JUSTIN KARIKANDANPARA C/O QUALITY', '', 0, '2023/02/18', '12:49:53pm'),
(70, 164, 124, 'saran v p', 172, 'elite dental  clinic  ', 'Other brand taken to Orion', 0, '2023/02/18', '12:59:57pm'),
(71, 160, 124, 'saran v p', 168, 'Muhamed', 'Tata inverter', 0, '2023/02/18', '01:00:24pm'),
(72, 160, 124, 'saran v p', 168, 'Muhamed', 'Board short', 0, '2023/02/18', '01:00:38pm'),
(73, 165, 143, 'prabheesh', 173, 'ideal vijayan', 'Call  canceled ', 0, '2023/02/20', '04:32:06pm'),
(74, 172, 124, 'saran v p', 180, 'C/O SAJITH MANJERI', 'Main switch replaced', 0, '2023/02/20', '04:50:30pm'),
(75, 152, 124, 'saran v p', 159, 'Greenome developers', 'Quotation given', 0, '2023/02/20', '10:14:14pm'),
(76, 180, 124, 'saran v p', 187, 'SHABEER SALEEL ASSOCIATES', 'Battery jumper replaced & water filled(6l) ', 0, '2023/02/22', '01:53:14pm'),
(77, 180, 124, 'saran v p', 187, 'SHABEER SALEEL ASSOCIATES', 'Battery jumper replaced & water filled(6l) ', 0, '2023/02/22', '01:53:16pm'),
(78, 180, 124, 'saran v p', 187, 'SHABEER SALEEL ASSOCIATES', 'Battery jumper replaced & water filled(6l) ', 0, '2023/02/22', '01:53:17pm'),
(79, 192, 123, 'shimjith', 199, 'BABU JOSE', 'Battery complete. Required battery quotation (100ah 1nos)', 0, '2023/02/23', '08:16:04pm'),
(80, 197, 123, 'shimjith', 204, 'ROSHITH THALAKULATHOOR', 'Installation complete ', 0, '2023/02/23', '08:17:05pm'),
(81, 195, 124, 'saran v p', 202, 'AKBAR ALI PONNANI', 'Check collected', 0, '2023/02/24', '10:38:43am'),
(82, 204, 124, 'saran v p', 184, 'C/O SREEJITH AND CO', 'Installation completed', 0, '2023/02/24', '05:32:33pm'),
(83, 203, 128, 'subeesh', 209, 'C/O SCALES', 'Installation completed', 0, '2023/02/24', '06:06:46pm'),
(84, 205, 124, 'saran v p', 210, 'MITHUN K C', 'Installation completed', 0, '2023/02/25', '10:06:15am'),
(85, 200, 123, 'shimjith', 207, 'C/O SANDEEP , AROGYA POLYCLINIC', 'Pc board failure. Replaced PC board ', 0, '2023/02/28', '07:34:42pm'),
(86, 215, 123, 'shimjith', 220, 'HEYS', 'Installation complete ', 0, '2023/02/28', '07:36:22pm'),
(87, 216, 123, 'shimjith', 209, 'C/O SCALES   ', 'Installation complete ', 0, '2023/02/28', '07:36:54pm'),
(88, 219, 124, 'saran v p', 223, 'subhash', 'Over voltage', 0, '2023/03/01', '11:10:23am'),
(89, 219, 124, 'saran v p', 223, 'subhash', 'Phase changed', 0, '2023/03/01', '11:10:33am'),
(90, 225, 124, 'saran v p', 229, 'PERUMANNA KSEB', 'Battery water filled', 0, '2023/03/01', '12:56:12pm'),
(91, 228, 123, 'shimjith', 232, 'STAR AGENCIES PHARMACEUTICALS', 'Battery complete . Required a battery quotation on 100ah 1 nos', 0, '2023/03/03', '10:23:11am'),
(92, 230, 123, 'shimjith', 234, 'BADHUSHA SUPERMARKET', 'Orion 4kv Mosit complete request a stand by UPS then taken', 0, '2023/03/03', '10:25:39am'),
(93, 230, 123, 'shimjith', 234, 'BADHUSHA SUPERMARKET', '', 0, '2023/03/03', '10:26:02am'),
(94, 242, 124, 'saran v p', 232, 'STAR AGENCIES PHARMACEUTICALS', '100ah battery installed', 0, '2023/03/04', '06:10:40pm'),
(95, 247, 127, 'sharun rag', 248, 'C/ SREEJITH AND COMPANY, SKYLINE MEADOWS', '', 0, '2023/03/06', '12:27:57pm'),
(96, 247, 127, 'sharun rag', 248, 'C/ SREEJITH AND COMPANY, SKYLINE MEADOWS', '', 0, '2023/03/06', '12:29:23pm'),
(97, 251, 123, 'shimjith', 184, 'c/o sreejith and company ', 'Installation complete ', 0, '2023/03/06', '02:53:48pm'),
(98, 247, 127, 'sharun rag', 248, 'C/ SREEJITH AND COMPANY, SKYLINE MEADOWS', '', 0, '2023/03/06', '05:47:19pm'),
(99, 249, 127, 'sharun rag', 146, 'raj solar', '2500 service charge', 0, '2023/03/07', '09:27:02pm'),
(100, 284, 283, 'ANAS', 282, 'siraj', 'Ic replaced', 0, '2023/04/11', '01:33:21pm'),
(101, 284, 283, 'ANAS', 282, 'siraj', 'Service charge 850/-', 0, '2023/04/11', '01:33:36pm'),
(102, 299, 295, 'test', 296, 'test', 'hi when can i expect the service to be compleated??', 0, '2023/04/17', '02:44:15pm'),
(103, 299, 296, 'test', 295, 'test', 'you can expect it by the end of this day', 0, '2023/04/17', '02:47:50pm'),
(104, 325, 124, 'saran v p', 318, 'Shobha gopinath', 'Switch complaint', 0, '2023/04/22', '04:57:25pm');

-- --------------------------------------------------------

--
-- Table structure for table `sliderhome`
--

CREATE TABLE `sliderhome` (
  `id` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `stitle` varchar(1000) NOT NULL,
  `title2` varchar(1000) NOT NULL,
  `stitle2` varchar(1000) NOT NULL,
  `title3` varchar(1000) NOT NULL,
  `stitle3` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliderhome`
--

INSERT INTO `sliderhome` (`id`, `image`, `image2`, `image3`, `title`, `stitle`, `title2`, `stitle2`, `title3`, `stitle3`) VALUES
(1, '090-a-1-1024x4242.jpg', '087-copy-1-1024x424.jpg', 'sli3.jpg', 'The Clear Choice', 'to protect your ', 'critical applications', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sliderhome2`
--

CREATE TABLE `sliderhome2` (
  `id` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `stitle` varchar(1000) NOT NULL,
  `title2` varchar(1000) NOT NULL,
  `stitle2` varchar(1000) NOT NULL,
  `title3` varchar(1000) NOT NULL,
  `stitle3` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliderhome2`
--

INSERT INTO `sliderhome2` (`id`, `image`, `image2`, `image3`, `title`, `stitle`, `title2`, `stitle2`, `title3`, `stitle3`) VALUES
(1, 'inverter-ups1.jpg', 'solar-energy-11.jpg', 'batteries1.jpg', 'UPS/Inverters', 'Orion technologies provide the best solution for your power backup needs. We are providing the best inverter with battery for home. We are the leading authorised dealers of inverter and inverter with battery and ups dealers in calicut. We are striving to make available the best deal for inverter with battery price in Kerala. Select the best inverter for home from Orion technologies.', 'Solar Products', 'Orion Technologies provides life time guaranteed Solar systems, solar inverter with battery, solar water heaters etc. We do solar panel installation everywhere if solar is available. We have solar panel installation dealers all over Kerala. We assure quality for every solar system we deliver, the efficiency of solar panel, type of flat plate collector, types of solar panels and our genuine service support. Utilize the benefits of solar energy. Check out our Solar system variants.', 'Batteries', 'Orion Technologies is No.1 multi-brand battery store, offering 100% genuine automobile and inverter batteries with manufacturer warranty. Authorized dealers of best inverter battery for home. Automobile batteries available from your favourite battery brands such as exide batteries, Livguard tractor batteries, amaron battery, kriloskar, luminous etc. Don’t waste your time searching car battery dealers near you, everything available here.');

-- --------------------------------------------------------

--
-- Table structure for table `sliderhome3`
--

CREATE TABLE `sliderhome3` (
  `id` int(10) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `title` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliderhome3`
--

INSERT INTO `sliderhome3` (`id`, `image`, `title`) VALUES
(1, 'IMG_6520-11.jpg', ' Orion technologies is a company established in the year 1999. We are the main dealers of Inverter, UPS and Batteries, power backup systems and solar system, different types of solar panels, solar on grid system and off grid system etc., across Calicut (Kozhikode), Wayanad, Malappuram, Palakkad. Orion is the authorised dealers of best class quality automobile batteries, best inverter battery, inverter with battery, best water heater, solar system, and ups dealers. Available automobile batteries for all vehicles. The best car battery dealers near you, we have dealers and service support all over Kerala. For solar panel installation and services, choosing best types of solar panels for your home. Years of successful experience in installation of solar panels and in solar system projects. Orion technologies head-quartered at Calicut, India. Presently we have a team of 30+ skilled professionals. We are specialized and mastered in installation, configuration and maintenance of all types of power backup systems (Inverter, UPS, Batteries, Solar Products…) available in the market today.');

-- --------------------------------------------------------

--
-- Table structure for table `sliderhome5`
--

CREATE TABLE `sliderhome5` (
  `id` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `image4` varchar(100) NOT NULL,
  `image5` varchar(100) NOT NULL,
  `image6` varchar(100) NOT NULL,
  `image7` varchar(100) NOT NULL,
  `image8` varchar(100) NOT NULL,
  `image9` varchar(100) NOT NULL,
  `image10` varchar(100) NOT NULL,
  `image11` varchar(100) NOT NULL,
  `image12` varchar(100) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `title2` varchar(1000) NOT NULL,
  `title3` varchar(1000) NOT NULL,
  `title4` varchar(1000) NOT NULL,
  `title5` varchar(1000) NOT NULL,
  `title6` varchar(1000) NOT NULL,
  `title7` varchar(1000) NOT NULL,
  `title8` varchar(1000) NOT NULL,
  `title9` varchar(1000) NOT NULL,
  `title10` varchar(1000) NOT NULL,
  `title11` varchar(1000) NOT NULL,
  `title12` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliderhome5`
--

INSERT INTO `sliderhome5` (`id`, `image`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `image8`, `image9`, `image10`, `image11`, `image12`, `title`, `title2`, `title3`, `title4`, `title5`, `title6`, `title7`, `title8`, `title9`, `title10`, `title11`, `title12`) VALUES
(1, 'p01.png', 'p02.png', 'p03.png', 'p04.png', 'p05.png', 'p06.png', 'p07.png', 'p08.png', 'p09.png', 'p10.png', 'p11.png', 'p12.png', 'LIVGUARD 100 AH BATTERY LG1048TT', 'LIVGUARD 110 AH BATTERY LG1160TT', 'LIVGUARD 120 AH BATTERY LG1248bed', 'LIVGUARD 150 AH BATTERY LG1536FP', 'LIVGUARD 150 AH BATTERY LG1542', 'LIVGUARD 150 AH BATTERY LG1545TT', 'LIVGUARD 150 AH BATTERY LG1554STJ', 'LIVGUARD 150 AH BATTERY LG1554TT', 'LIVGUARD 150 AH BATTERY LG1560 MT', 'LIVGUARD 150 AH BTERY LATG1560TT', 'LIVGUARD 160 AH BATTERY LG1639TT', 'LIVGUARD 160 AH BATTERY LG1666TT');

-- --------------------------------------------------------

--
-- Table structure for table `sliderhome6`
--

CREATE TABLE `sliderhome6` (
  `id` int(10) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `image2` varchar(1000) NOT NULL,
  `image3` varchar(1000) NOT NULL,
  `image4` varchar(1000) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `title2` varchar(1000) NOT NULL,
  `title3` varchar(1000) NOT NULL,
  `title4` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliderhome6`
--

INSERT INTO `sliderhome6` (`id`, `image`, `image2`, `image3`, `image4`, `title`, `title2`, `title3`, `title4`) VALUES
(1, 'p13.png', 'p14.png', 'p15.png', 'p16.png', 'LIVGUARD 180 AH BATTERY LG1866TT', 'LIVGUARD 200 AH BATTERY LG2048TT', 'LIVGUARD 200 AH BATTERY LG2066TT', 'LIVGUARD 220 AH BATTERY LG2266TT');

-- --------------------------------------------------------

--
-- Table structure for table `sliderhome7`
--

CREATE TABLE `sliderhome7` (
  `id` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `image4` varchar(100) NOT NULL,
  `image5` varchar(100) NOT NULL,
  `image6` varchar(100) NOT NULL,
  `image7` varchar(100) NOT NULL,
  `image8` varchar(100) NOT NULL,
  `image9` varchar(100) NOT NULL,
  `image10` varchar(100) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `title2` varchar(1000) NOT NULL,
  `title3` varchar(1000) NOT NULL,
  `title4` varchar(1000) NOT NULL,
  `title5` varchar(1000) NOT NULL,
  `title6` varchar(1000) NOT NULL,
  `title7` varchar(1000) NOT NULL,
  `title8` varchar(1000) NOT NULL,
  `title9` varchar(1000) NOT NULL,
  `title10` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliderhome7`
--

INSERT INTO `sliderhome7` (`id`, `image`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `image8`, `image9`, `image10`, `title`, `title2`, `title3`, `title4`, `title5`, `title6`, `title7`, `title8`, `title9`, `title10`) VALUES
(1, 's016.jpg', 's021.jpg', 's031.jpg', 's041.jpg', 's051.jpg', 's061.jpg', 's071.jpg', 's081.jpg', 's091.jpg', 's0101.jpg', 'LIVGUARD 1 KVA OFF-GRID SOLAR PACKAGES', 'LIVGUARD 100 AH SOLAR BATTERY LGMLS10060TT', 'LIVGUARD 135 AH SOLAR BATTERY LGMLS13560TT', 'LIVGUARD 150 AH SOLAR BATTERY LGMLS15060TT', 'LIVGUARD 165 AH SOLAR BATTERY LGMLS16560TT', 'LIVGUARD 180 AH SOLAR BATTERY LGMLS18060TT', 'LIVGUARD 200 AH SOLAR BATTERY LGTLS20060TT', 'LIVGUARD 30 AMPS SMU LSMU 122430', 'LIVGUARD 40 AH SOLAR BATTERY LGTLS4036ST', 'LIVGUARD 75 AH SOLAR BATTERY LGTLS7536ST');

-- --------------------------------------------------------

--
-- Table structure for table `sliderhome8`
--

CREATE TABLE `sliderhome8` (
  `id` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `title2` varchar(1000) NOT NULL,
  `title3` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliderhome8`
--

INSERT INTO `sliderhome8` (`id`, `image`, `image2`, `image3`, `title`, `title2`, `title3`) VALUES
(1, 's0111.jpg', 'spage02.jpg', 'spage03.jpg', 'LIVGUARD SOLAR INVERTER LSOG1850', 'LIVGUARD SOLAR INVERTER LSOG2250', 'Orion Water Heater');

-- --------------------------------------------------------

--
-- Table structure for table `sliderhome9`
--

CREATE TABLE `sliderhome9` (
  `id` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `image4` varchar(100) NOT NULL,
  `image5` varchar(100) NOT NULL,
  `image6` varchar(100) NOT NULL,
  `image7` varchar(100) NOT NULL,
  `image8` varchar(100) NOT NULL,
  `image9` varchar(100) NOT NULL,
  `image10` varchar(100) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `title2` varchar(1000) NOT NULL,
  `title3` varchar(1000) NOT NULL,
  `title4` varchar(1000) NOT NULL,
  `title5` varchar(1000) NOT NULL,
  `title6` varchar(1000) NOT NULL,
  `title7` varchar(1000) NOT NULL,
  `title8` varchar(1000) NOT NULL,
  `title9` varchar(1000) NOT NULL,
  `title10` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliderhome9`
--

INSERT INTO `sliderhome9` (`id`, `image`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `image8`, `image9`, `image10`, `title`, `title2`, `title3`, `title4`, `title5`, `title6`, `title7`, `title8`, `title9`, `title10`) VALUES
(1, 'inv01.jpg', 'inv02.jpg', 'inv03.jpg', 'inv04.jpg', 'inv05.jpg', 'inv06.jpg', 'inv07.jpg', 'inv08.jpg', 'inv09.jpg', 'inv010.jpg', 'LIVGUARD INVERTER LG700', 'LIVGUARD INVERTER LGS1100', 'LIVGUARD INVERTER LGS1700', 'LIVGUARD INVERTER LGS2300', 'LIVGUARD INVERTER LGS3500', 'LIVGUARD INVERTER LGS5000', 'LIVGUARD INVERTER LGS900', 'ORION 1100 VA 12 V SINE WAVE UPS', 'ORION INVERTER 1250VA', 'ORION INVERTER 2000VA');

-- --------------------------------------------------------

--
-- Table structure for table `sliderhome10`
--

CREATE TABLE `sliderhome10` (
  `id` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `title2` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliderhome10`
--

INSERT INTO `sliderhome10` (`id`, `image`, `image2`, `title`, `title2`) VALUES
(1, 'heater01.jpg', 'heater02.jpg', 'ORION Solar Water Heater', 'Orion Water Heater');

-- --------------------------------------------------------

--
-- Table structure for table `solar`
--

CREATE TABLE `solar` (
  `id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `dim` varchar(500) DEFAULT NULL,
  `cap` varchar(100) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `tech` varchar(50) DEFAULT NULL,
  `warrenty` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `solar`
--

INSERT INTO `solar` (`id`, `image`, `model`, `brand`, `category`, `dim`, `cap`, `weight`, `tech`, `warrenty`, `status`) VALUES
(1, 'LIVGUARD-1-KVA-OFF-GRID-SOLAR-PACKAGES.png', 'LIVGUARD 1 KVA OFF-GRID SOLAR PACKAGES', 'Livguard', 'Solar products', 'LIVGUARD 165 AH SOLAR BATTERY * 1 nos( 5 YEAR WARR', 'LIVGUARD 165 AH SOLAR BATTERY * 1 nos( 5 YEAR WARR', 'LIVGUARD 165 W MONO PERC SOLAR PANEL*1 nos( 25 YEA', NULL, NULL, 1),
(2, 'LIVGUARD-100-AH-SOLAR-BATTERY-LGMLS10060TT.png', 'LIVGUARD 100 AH SOLAR BATTERY LGMLS10060TT', 'Livguard', 'Solar products', '505x190x430', '100', '3% (Kg) – 52.6', 'Tubular', NULL, 1),
(3, 'LIVGUARD-135-AH-SOLAR-BATTERY-LGMLS13560TT.png', 'LIVGUARD 135 AH SOLAR BATTERY LGMLS13560TT', 'Livguard', 'Solar products', '505x190x430', '135 ', '3% (Kg) – 54.8', 'Tubular', NULL, 1),
(4, 'LIVGUARD-150-AH-SOLAR-BATTERY-LGMLS15060TT-1.png', 'LIVGUARD 150 AH SOLAR BATTERY LGMLS15060TT', 'Livguard', 'Solar products', '505x190x430 ', '150', '3% (Kg) – 54.8', 'Tubular', NULL, 1),
(5, 'LIVGUARD-165-AH-SOLAR-BATTERY-LGMLS16560TT.png', 'LIVGUARD 165 AH SOLAR BATTERY LGMLS16560TT', 'Livguard', 'Solar products', '505x190x430', '165', '3% (Kg) – 58.1', 'Tubular', NULL, 1),
(6, 'LIVGUARD-180-AH-SOLAR-BATTERY-LGMLS18060TT.png', 'LIVGUARD 180 AH SOLAR BATTERY LGMLS18060TT', 'Livguard', 'Solar products', '505x190x430', '180 ', '3% (Kg) – 58.1', 'Tubular', NULL, 1),
(7, 'LIVGUARD-200-AH-SOLAR-BATTERY-LGTLS20060TT.png', 'LIVGUARD 200 AH SOLAR BATTERY LGTLS20060TT', 'Livguard', 'Solar products', '505x189x422', '200', '3% (Kg) – 69.5', 'Tubular', NULL, 1),
(8, 'LIVGUARD-40-AH-SOLAR-BATTERY-LGTLS4036ST.png', 'LIVGUARD 40 AH SOLAR BATTERY LGTLS4036ST', 'Livguard', 'Solar products', '410x176x253', '40 ', '3% (Kg) – 22.6', 'Tubular', '36 months', 1),
(14, 'LIVGUARD-30-AMPS-SMU-LSMU-122430.png', 'LIVGUARD 30 AMPS SMU LSMU 122430', 'Livguard ', 'Solar products', 'Livguard Solar Management Unit (SMU) converts any existing inverter into solar system. It has in-built intelligence to maximize use of solar energy and is ideal for various DC voltages.', '30 ', 'Max Solar PV Panel – 12V: 500 Wp I 24V: 1000 Wp', 'PWM', 'Voltage – 12/24V', 1),
(15, 'LIVGUARD-75-AH-SOLAR-BATTERY-LGTLS7536ST.png', 'LIVGUARD 75 AH SOLAR BATTERY LGTLS7536ST', 'Livguard ', 'Solar products', '510x180x255', '75 ', '3% (Kg) – 36.4', 'Tubular', '36 months', 1),
(16, 'LIVGUARD-SOLAR-INVERTER-LS0G3500.png', 'LIVGUARD SOLAR INVERTER LS0G3500', 'Livguard ', 'Solar products', NULL, NULL, NULL, NULL, '2 YEAR', 1),
(17, 'LIVGUARD-SOLAR-INVERTER-LSOG1150.png', 'LIVGUARD SOLAR INVERTER LSOG1150', 'Livguard ', 'Solar products', 'Voltage – 12V', 'Max Solar PV Panel – 900 Wp', NULL, 'Pure Sine Wave', '24 months', 1),
(18, 'LIVGUARD-SOLAR-INVERTER-LSOG1850.png', 'LIVGUARD SOLAR INVERTER LSOG1850', 'Livguard ', 'Solar products', 'Voltage – 24V', 'Max Solar PV Panel – 1600 Wp', NULL, 'Pure Sine Wave', '24 months', 1),
(19, 'LIVGUARD-SOLAR-INVERTER-LSOG2250.png', 'LIVGUARD SOLAR INVERTER LSOG2250', 'Livguard ', 'Solar products', 'Voltage – 24 VA', 'Max Solar PV Panel – 1600 Wp', NULL, 'Pure Sine Wave', '24 months', 1),
(20, '1650089593169.jpg', 'Orion Water Heater', 'Orion ', 'Solar products', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `companyid` int(100) NOT NULL,
  `customername` varchar(100) NOT NULL,
  `customerid` int(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `item` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `prodetail` varchar(200) NOT NULL,
  `rqr` varchar(100) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `status` int(10) NOT NULL,
  `date` varchar(10) DEFAULT NULL,
  `time` varchar(10) NOT NULL,
  `resolvedtime` varchar(20) DEFAULT NULL,
  `resolveddate` varchar(20) DEFAULT NULL,
  `view_status` varchar(20) NOT NULL,
  `staffid` int(20) NOT NULL,
  `staff` varchar(50) NOT NULL,
  `assign_status` int(5) NOT NULL,
  `orgname` text,
  `is_delete` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `companyname`, `companyid`, `customername`, `customerid`, `email`, `phone`, `address`, `item`, `model`, `brand`, `prodetail`, `rqr`, `remark`, `status`, `date`, `time`, `resolvedtime`, `resolveddate`, `view_status`, `staffid`, `staff`, `assign_status`, `orgname`, `is_delete`) VALUES
(873, 'test_company2', 2, 'Nova Test', 753, 'webnovaitpark@gmail.com', '8893111557', '', '', '', '', '', 'This is a testing complaint registration.', '', 0, '2023/09/13', '10:48:39', NULL, NULL, '0', 0, '-', 0, NULL, 1),
(874, 'test_company2', 2, 'WebNova', 753, 'webnovaitpark@gmail.com', '8893111557', '', '', '', '', '', 'This is a testing from Webnova', '', 0, '2023/09/20', '10:07:23', NULL, NULL, '0', 0, '-', 0, NULL, 1),
(875, 'test_company2', 2, 'Web', 753, 'webnovaitpark@gmail.com', '8893111557', '', '', '', '', '', 'Testing 2', '', 0, '2023/09/20', '10:24:12', NULL, NULL, '0', 0, '-', 0, NULL, 1),
(876, 'test_company2', 2, 'test', 754, '', '8893111555', 'vengali		', 'battery', '', 'marko', '					', 'test		', '					', 2, '2023/09/20', '10:33:28', '10:38:55am', '2023/09/20', '0', 755, 'test', 1, NULL, 1),
(877, 'test_company2', 2, 'test', 756, 'test@gmail.com', '9745524953', '', '', '', '', '', 'test', '', 0, '2023/09/20', '10:59:37', NULL, NULL, '0', 0, '-', 0, NULL, 1),
(878, 'test_company2', 2, 'WebNova', 753, 'webnovaitpark@gmail.com', '8893111557', '', '', '', '', '', 'This is a testing from Nova iT Park', '', 3, '2023/09/20', '11:22:25', '11:23:14am', '2023/09/20', '0', 755, 'test', 2, NULL, 0),
(879, 'test_company2', 2, 'marko', 757, 'marko@gmail.com', '1234567890', '', '', '', '', '', 'test', '', 3, '2023/09/20', '12:37:14', '12:47:22pm', '2023/09/20', '0', 758, 'Arun', 3, NULL, 0),
(880, 'test_company2', 2, 'Sreeraman Nair', 759, '', '9447538583', '', '', '', '', '', 'charging complaint', '', 3, '2023/09/20', '12:52:44', '12:59:33pm', '2023/09/20', '0', 758, 'Arun', 1, NULL, 1),
(881, 'test_company2', 2, 'Jobby', 760, 'jobby@gmail.com', '9349493634', 'Zillion Isolution\r\nThondayad\r\nStarcare side Road\r\nThondayad', 'Battery', '200AH', 'Marko series', '					wwww', '		Cleaning W/F			', '				complaint forward	', 0, '2023/09/20', '13:12:54', NULL, NULL, '0', 0, '-', 0, NULL, 1),
(882, 'test_company2', 2, 'AHAMMED ', 761, '', '9496661111', 'OP. KISMATH HOTEL\r\nCHERUVATTA		', 'INVERTOR', 'SSSS', 'MARKO SERIES', 'INVERTOR		', 'INVERTOR OFF				', 'INVERTOR  TO OFFICE				', 0, '2023/09/23', '08:43:47', NULL, NULL, '0', 0, '-', 0, NULL, 1),
(883, 'test_company2', 2, 'Raghuram', 764, 'micro@gmail.com', '8281259326', 'Micro Lab\r\nKuttiyadi', ' UPS', 'wwww', 'MICRO SIRIES', '	3KV UPS		', '	UPS OFF				', 'Forward compaints			', 0, '2023/09/23', '09:12:47', NULL, NULL, '0', 0, '-', 0, NULL, 1),
(884, 'test_company2', 2, 'Nassar', 765, 'nassar@gmail.com', '9895417413', 'Kuruvattoor			', 'Battery', 'www', 'marko', 'battery			', 'water filling					', '		closed			', 0, '2023/09/23', '09:15:38', NULL, NULL, '0', 0, '-', 0, NULL, 1),
(885, 'test_company2', 2, 'Pizzahut', 766, 'pizzahut@gmail.com', '7025906495', 'South Beach\r\nKozhikode	', 'Invertor', 'wwww', 'Marko', 'Invertor Battery			', 'Invertor switch of			', 'Invertor battery to office					', 0, '2023/09/23', '09:31:46', NULL, NULL, '0', 0, '-', 0, NULL, 1),
(886, 'test_company2', 2, 'Luxes supermarket', 767, 'luxes@gmail.com', '7902574436', 'Kunnamangalam				', 'UPS', 'www', 'Marko', 'UPS			', 'UPS off				', '	forwarded				', 0, '2023/09/23', '09:40:13', NULL, NULL, '0', 0, '-', 0, NULL, 1),
(887, 'test_company2', 2, 'NOVA', 757, 'nova@nova.com', '1234567890', 'address					', 'itm', 'model', 'brand', '					', 'details					', '					', 2, '2023/09/23', '10:05:31', '12:02:07pm', '2023/09/23', '0', 758, 'Arun', 2, NULL, 0),
(888, 'test_company2', 2, 'Ahammed', 761, 'ahammed@gmail.com', '9496661111', 'Op. Kismath hotel			\r\nCheruvatta', 'Invertor', 'www', 'marko', '	Invertor				', 'Intertor off					', 'complaint forward					', 1, '2023/09/23', '10:14:32', '11:55:16am', '2023/09/28', '0', 762, 'Vaisakh', 2, NULL, 0),
(889, 'test_company2', 2, 'Micro Lab', 764, 'micro@gmail.com', '8281259326', 'Kuttiyadi					', 'ups', 'www', 'marko', '3 KVA UPS					', 'Ups not working				', '	complaint forward				', 1, '2023/09/23', '10:27:09', NULL, NULL, '0', 762, 'Vaisakh', 2, NULL, 0),
(890, 'test_company2', 2, 'Micro Lab', 764, 'micro@gmail.com', '8281259326', 'Kuttiyadi					', 'ups', 'www', 'marko', '3 KVA UPS					', 'Ups not working				', '	complaint forward				', 1, '2023/09/23', '10:27:12', NULL, NULL, '0', 762, 'Vaisakh', 1, NULL, 1),
(891, 'test_company2', 2, 'Pizza hut', 766, 'pizzahut@gmail.com', '7025906495', 'south Beach\r\nKozhikode					', 'invertor', 'www', 'marko', 'Invertor					', 'Invertor off					', 'forward 					', 1, '2023/09/23', '10:38:00', NULL, NULL, '0', 763, 'NAVANEETH', 3, NULL, 0),
(892, 'test_company2', 2, 'test', 757, 'test@test.com', '1234567890', 'ljsbiba					', 'njdn', 'skjv js', 'dsjdjnvk', 'sk vjks					', 'svkdsj 					', '					', 1, '2023/09/23', '15:15:55', NULL, NULL, '0', 758, 'Arun', 2, NULL, 0),
(893, 'test_company2', 2, 'Benny Joseph', 768, 'benny@gmail', '9846990679', 'Thiruvambadi\r\nKoodaranji vazhi	', 'invertor', 'wwww', 'marko', 'Invertor					', '\r\ninvertor off					', 'deliverd to technicien					', 1, '2023/09/25', '12:16:41', NULL, NULL, '0', 758, 'Arun', 1, NULL, 0),
(894, 'test_company2', 2, 'Akbar', 769, 'akbar@gmail.com', '9847088046', 'Pulikkal					', 'invertor', 'www', 'marko', 'Invertor					', 'Invertor service			', 'complaint forward					', 1, '2023/09/25', '12:23:51', NULL, NULL, '0', 758, 'Arun', 1, NULL, 0),
(895, 'test_company2', 2, 'Kappapd Resort', 770, 'Aljamia@gmail.com', '9645625546', 'Kappad					', 'Inverter', 'wwww', 'marko', 'Inverter					', 'Inverter off					', 'forward technicien					', 1, '2023/09/25', '14:15:26', NULL, NULL, '0', 758, 'Arun', 3, NULL, 0),
(896, 'test_company2', 2, 'Rajeesh  Green leaf', 772, 'rajeesh@gmail.com', '9048230946', 'Greenleaf \r\nKakkodi				', 'Invertor', 'wwww', 'marko', 'Invertor			', 'Invertor off					', 'complaint forward			', 1, '2023/09/25', '16:37:03', NULL, NULL, '0', 758, 'Arun', 3, NULL, 0),
(897, 'test_company2', 2, 'Rajeesh', 772, 'rajeesh@gmail.com', '9048230946', 'Greenleaf\r\nKakkode					', 'Invertor', 'wwww', 'marko', 'Invertor	', 'invertor off					', 'transfer to engineer					', 1, '2023/09/28', '09:50:35', NULL, NULL, '0', 758, 'Arun', 1, '', 0),
(898, 'test_company2', 2, 'Mootoli', 773, 'mootoli@gmail.com', '9745249264', 'mootoli\r\ncalicut					', 'Invertor', 'www', 'marko', 'Invertor		', 'Invertor off					', '	transfered to technicien				', 1, '2023/09/28', '11:11:43', NULL, NULL, '0', 762, 'Vaisakh', 1, NULL, 0),
(899, 'test_company2', 2, 'Holycross scholl', 774, 'school@gmail.com', '9778157013', 'Holicross school\r\nVettilapara					', 'Invertor', 'www', 'marko', 'invertor\r\n					', 'invertor off					', 'transfer to technicien		', 1, '2023/09/28', '11:17:02', NULL, NULL, '0', 758, 'Arun', 1, NULL, 0),
(900, 'test_company2', 2, 'vadaka store', 774, 'store@gmail.com', '9778157013', 'Chathamanagalam					', 'Invt+ Battery', 'wwww', 'marko', 'invt + battery	standby			', 'not working					', 'invt + battery to office					', 1, '2023/09/28', '11:23:27', NULL, NULL, '0', 758, 'Arun', 1, NULL, 0),
(901, 'test_company2', 2, 'Sunny', 775, 'sunny@gmail.com', '9400761461', 'Kallanode\r\nThondiyil\r\n					', 'invertor', 'www', 'marko`', '	invertor				', '	not working				', 'transfer to technicien			', 1, '2023/09/28', '11:32:03', NULL, NULL, '0', 762, 'Vaisakh', 3, NULL, 0),
(902, 'test_company2', 2, 'Manish', 775, 'manish@gmail.com', '8618190335', 'Manish\r\nJafarkhan colony				', 'Invertor', 'www', 'marko', 'invertor					', 'Not working					', '	transe to technicien				', 1, '2023/09/28', '14:09:01', NULL, NULL, '0', 758, 'Arun', 3, 'marko', 0),
(903, 'test_company2', 2, 'Vinitha', 776, 'vinitha@gmail.com', '8281915523', 'chulliyodu road\r\nCalicut					', 'Inverter', 'wwww', 'Marko', 'invertor					', 'notn working			', 'Transfer to technicien					', 1, '2023/09/28', '17:36:01', NULL, NULL, '0', 762, 'Vaisakh', 3, NULL, 0),
(904, 'test_company2', 2, 'Sobha Vargheese', 777, 'sobha@gmail.com', '9946329145', 'Behind Iqraa hospital\r\nMalaparamba					', 'Invertor', 'wwww', 'marko', 'Invertor			', 'not working					', 'complaint transfer to technicien					', 1, '2023/09/28', '17:44:30', NULL, NULL, '0', 762, 'Vaisakh', 3, NULL, 0),
(905, 'test_company2', 2, 'Ozhukkara', 778, 'ozhukkara@gmail.com', '9249218050', 'Mayanad					', 'Invertor', 'wwww', 'marko', 'Invertor					', 'not working					', 'to office					', 1, '2023/09/29', '11:18:41', NULL, NULL, '0', 762, 'Vaisakh', 1, NULL, 0),
(906, 'test_company2', 2, 'Muneer', 779, 'muneer@gmail.com', '9895151557', 'Kunnamangalam					', 'Invertor', 'wwww', 'marko', '	invertor				', 'to office				', 'Invertor stand by					', 1, '2023/09/29', '11:33:06', NULL, NULL, '0', 758, 'Arun', 2, NULL, 0),
(907, 'test_company2', 2, 'Aljamia School', 780, 'school@gmail.com', '8137038923', 'Santhapuram\r\nPattikkad					', 'Invertor', 'www', 'marko', 'invertor					', 'direct cutt off 					', 'transfer to technicien				', 1, '2023/09/29', '11:38:15', NULL, NULL, '0', 762, 'Vaisakh', 1, NULL, 0),
(908, 'test_company2', 2, 'Nisha Fancy', 781, 'nisha@gmail.com', '9605632242', 'Nisha Fancy \r\nKarapparamba					', 'Invertor', 'wwww', 'Marko', 'invertor					', 'not working					', 'transfer to technicien					', 1, '2023/09/29', '11:43:00', NULL, NULL, '0', 762, 'Vaisakh', 3, NULL, 0),
(909, 'test_company2', 2, 'Kalpaka', 782, 'kalpaka@gmail.com', '9048213126', 'Palattuthazham			', 'invetor', 'www', 'marko', 'invertor \r\n					', 'not working					', 'transferd to technicien					', 1, '2023/09/30', '10:14:21', NULL, NULL, '0', 763, 'NAVANEETH', 1, NULL, 0),
(910, 'test_company2', 2, 'Jaya Govind', 783, 'jaya@gmil.com', '9496925012', 'Ferok					', 'Invertor', 'wwww', 'marko', 'Invertor 					', 'not working					', 'under process					', 1, '2023/09/30', '10:35:10', NULL, NULL, '0', 758, 'Arun', 1, NULL, 0),
(911, 'test_company2', 2, 'Jithesh', 784, 'jitesh@gmail.com', '8075343298', 'Vattakkinar\r\ncalicut					', 'invetor', 'www', 'marko', 'Inverter					', '	not working		', 'transfer to technicien							', 1, '2023/09/30', '13:00:58', NULL, NULL, '0', 762, 'Vaisakh', 1, NULL, 0),
(912, 'test_company2', 2, 'Johnson', 785, 'johnson@gmail.com', '9447241517', 'qqqqq					', 'inv', 'wwww', 'marko', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\ninvertor		', 'not  working						', '	under processing				', 1, '2023/10/04', '09:32:19', NULL, NULL, '0', 771, 'Babeesh', 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `companyid` int(6) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `cemail` varchar(50) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `password_1` varchar(50) NOT NULL,
  `profile_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_proof` varchar(100) DEFAULT NULL,
  `referalid` varchar(50) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `status` int(5) NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `adusr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `companyid`, `companyname`, `designation`, `email`, `cemail`, `phone`, `password_1`, `profile_img`, `id_proof`, `referalid`, `pincode`, `status`, `role`, `address`, `adusr`) VALUES
(1, 'Super_Admin', 0, 'MARKOV SERIES', 'superadmin', 'superadmin@gmail.com', 'superadmin@gmail.com', '+91 1234567890', 'superadmin', '', NULL, '1j12a', '123456', 1, 'Super Admin', NULL, ''),
(753, 'Nova Test', 2, 'test_company2', 'Customer', 'webnovaitpark@gamil.com', 'webnovaitpark@gamil.com', '8893111557', 'Nova*123', NULL, NULL, '0', '673303', 1, 'Customer', 'Vengali, Calicut', ''),
(754, 'test', 2, 'test_company2', 'Customer', '', '', '8893111555', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'vengali		', ''),
(756, 'test', 2, 'test_company2', 'Customer', 'test@gmail.com', 'test@gmail.com', '9745524953', 'password', NULL, NULL, '-', NULL, 1, 'Customer', NULL, ''),
(757, 'marko', 2, 'test_company2', 'Customer', 'marko@gmail.com', 'marko@gmail.com', '1234567890', 'password', NULL, NULL, '-', NULL, 1, 'Customer', NULL, ''),
(758, 'Arun', 2, 'test_company2', 'Service Engineer', 'arun@gmail.com', 'arun@gmail.com', '8281395764', 'Arun*123', NULL, NULL, '', '673010', 1, 'Staff', '', ''),
(759, 'Sreeraman Nair', 2, 'test_company2', 'Customer', '', '', '9447538583', 'password', NULL, NULL, '-', NULL, 1, 'Customer', NULL, ''),
(760, 'Jobby', 2, 'test_company2', 'Customer', 'jobby@gmail.com', 'jobby@gmail.com', '9349493634', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Zillion Isolution\r\nThondayad\r\nStarcare side Road\r\nThondayad', ''),
(761, 'AHAMMED ', 2, 'test_company2', 'Customer', '', '', '9496661111', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'OP. KISMATH HOTEL\r\nCHERUVATTA		', ''),
(762, 'Vaisakh', 2, 'test_company2', 'Engineer', 'vaisakh@gmail.com', 'vaisakh@gmail.com', '9605971105', 'vaisakh@123', NULL, NULL, 'v230923', '', 1, 'Staff', '', ''),
(763, 'NAVANEETH', 2, 'test_company2', 'Service Engineeer', 'navaneeth@gmail.com', 'navaneeth@gmail.com', '8075328541', 'navaneeth@123', NULL, NULL, 'N230923', '', 1, 'Staff', '', ''),
(764, 'Raghuram', 2, 'test_company2', 'Customer', 'micro@gmail.com', 'micro@gmail.com', '8281259326', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Micro Lab\r\nKuttiyadi', ''),
(765, 'Nassar', 2, 'test_company2', 'Customer', 'nassar@gmail.com', 'nassar@gmail.com', '9895417413', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Kuruvattoor			', ''),
(766, 'Pizzahut', 2, 'test_company2', 'Customer', 'pizzahut@gmail.com', 'pizzahut@gmail.com', '7025906495', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'South Beach\r\nKozhikode	', ''),
(767, 'Luxes supermarket', 2, 'test_company2', 'Customer', 'luxes@gmail.com', 'luxes@gmail.com', '7902574436', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Kunnamangalam				', ''),
(768, 'Benny Joseph', 2, 'test_company2', 'Customer', 'benny@gmail', 'benny@gmail', '9846990679', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Thiruvambadi\r\nKoodaranji vazhi	', ''),
(769, 'Akbar', 2, 'test_company2', 'Customer', 'akbar@gmail.com', 'akbar@gmail.com', '9847088046', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Pulikkal					', ''),
(770, 'Kappapd Resort', 2, 'test_company2', 'Customer', 'Aljamia@gmail.com', 'Aljamia@gmail.com', '9645625546', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Kappad					', ''),
(771, 'Babeesh', 2, 'test_company2', 'Service Engineer', 'babeesh@gmail.com', 'babeesh@gmail.com', '9633649608', 'babeesh@123', NULL, NULL, '', '', 1, 'Staff', '', ''),
(772, 'Rajeesh  Green leaf', 2, 'test_company2', 'Customer', 'rajeesh@gmail.com', 'rajeesh@gmail.com', '9048230946', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Greenleaf \r\nKakkodi				', ''),
(773, 'Mootoli', 2, 'test_company2', 'Customer', 'mootoli@gmail.com', 'mootoli@gmail.com', '9745249264', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'mootoli\r\ncalicut					', ''),
(774, 'Holycross scholl', 2, 'test_company2', 'Customer', 'school@gmail.com', 'school@gmail.com', '9778157013', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Holicross school\r\nVettilapara					', ''),
(775, 'Sunny', 2, 'test_company2', 'Customer', 'sunny@gmail.com', 'sunny@gmail.com', '9400761461', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Kallanode\r\nThondiyil\r\n					', ''),
(776, 'Vinitha', 2, 'test_company2', 'Customer', 'vinitha@gmail.com', 'vinitha@gmail.com', '8281915523', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'chulliyodu road\r\nCalicut					', ''),
(777, 'Sobha Vargheese', 2, 'test_company2', 'Customer', 'sobha@gmail.com', 'sobha@gmail.com', '9946329145', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Behind Iqraa hospital\r\nMalaparamba					', ''),
(778, 'Ozhukkara', 2, 'test_company2', 'Customer', 'ozhukkara@gmail.com', 'ozhukkara@gmail.com', '9249218050', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Mayanad					', ''),
(779, 'Muneer', 2, 'test_company2', 'Customer', 'muneer@gmail.com', 'muneer@gmail.com', '9895151557', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Kunnamangalam					', ''),
(780, 'Aljamia School', 2, 'test_company2', 'Customer', 'school@gmail.com', 'school@gmail.com', '8137038923', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Santhapuram\r\nPattikkad					', ''),
(781, 'Nisha Fancy', 2, 'test_company2', 'Customer', 'nisha@gmail.com', 'nisha@gmail.com', '9605632242', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Nisha Fancy \r\nKarapparamba					', ''),
(782, 'Kalpaka', 2, 'test_company2', 'Customer', 'kalpaka@gmail.com', 'kalpaka@gmail.com', '9048213126', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Palattuthazham			', ''),
(783, 'Jaya Govind', 2, 'test_company2', 'Customer', 'jaya@gmil.com', 'jaya@gmil.com', '9496925012', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Ferok					', ''),
(784, 'Jithesh', 2, 'test_company2', 'Customer', 'jitesh@gmail.com', 'jitesh@gmail.com', '8075343298', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'Vattakkinar\r\ncalicut					', ''),
(785, 'Johnson', 2, 'test_company2', 'Customer', 'johnson@gmail.com', 'johnson@gmail.com', '9447241517', 'password', NULL, NULL, '-', '-', 1, 'Customer', 'qqqqq					', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignchat`
--
ALTER TABLE `assignchat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `battery`
--
ALTER TABLE `battery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`bnd_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`companyid`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`dealerid`);

--
-- Indexes for table `engresponse`
--
ALTER TABLE `engresponse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faqid`);

--
-- Indexes for table `heater`
--
ALTER TABLE `heater`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inverter`
--
ALTER TABLE `inverter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itm_id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`mdl_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliderhome`
--
ALTER TABLE `sliderhome`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliderhome2`
--
ALTER TABLE `sliderhome2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliderhome3`
--
ALTER TABLE `sliderhome3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliderhome5`
--
ALTER TABLE `sliderhome5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliderhome6`
--
ALTER TABLE `sliderhome6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliderhome7`
--
ALTER TABLE `sliderhome7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliderhome8`
--
ALTER TABLE `sliderhome8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliderhome9`
--
ALTER TABLE `sliderhome9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliderhome10`
--
ALTER TABLE `sliderhome10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solar`
--
ALTER TABLE `solar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignchat`
--
ALTER TABLE `assignchat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `battery`
--
ALTER TABLE `battery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `bnd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `companyid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dealer`
--
ALTER TABLE `dealer`
  MODIFY `dealerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `engresponse`
--
ALTER TABLE `engresponse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `heater`
--
ALTER TABLE `heater`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inverter`
--
ALTER TABLE `inverter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `itm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `mdl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `response`
--
ALTER TABLE `response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `sliderhome`
--
ALTER TABLE `sliderhome`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliderhome2`
--
ALTER TABLE `sliderhome2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliderhome3`
--
ALTER TABLE `sliderhome3`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliderhome5`
--
ALTER TABLE `sliderhome5`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliderhome6`
--
ALTER TABLE `sliderhome6`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliderhome7`
--
ALTER TABLE `sliderhome7`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliderhome8`
--
ALTER TABLE `sliderhome8`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliderhome9`
--
ALTER TABLE `sliderhome9`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliderhome10`
--
ALTER TABLE `sliderhome10`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `solar`
--
ALTER TABLE `solar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=913;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=786;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
