-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2024 at 02:24 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siproperty`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus_content`
--

CREATE TABLE `aboutus_content` (
  `id` int(11) NOT NULL,
  `caption` varchar(180) NOT NULL,
  `content1` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `label1` varchar(250) NOT NULL,
  `label2` varchar(250) NOT NULL,
  `label3` varchar(250) NOT NULL,
  `label4` varchar(250) NOT NULL,
  `label5` varchar(250) NOT NULL,
  `label6` varchar(250) NOT NULL,
  `label7` varchar(250) NOT NULL,
  `label8` varchar(250) NOT NULL,
  `value1` varchar(255) NOT NULL,
  `value2` varchar(255) NOT NULL,
  `value3` varchar(25) NOT NULL,
  `value4` varchar(255) NOT NULL,
  `label9` varchar(255) NOT NULL,
  `label10` varchar(250) NOT NULL,
  `unit1` varchar(5) NOT NULL,
  `unit2` varchar(5) NOT NULL,
  `unit3` varchar(5) NOT NULL,
  `unit4` varchar(5) NOT NULL,
  `content2` text NOT NULL,
  `content3` text NOT NULL,
  `image2` varchar(255) NOT NULL,
  `content4` text NOT NULL,
  `content5` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aboutus_content`
--

INSERT INTO `aboutus_content` (`id`, `caption`, `content1`, `image`, `status`, `label1`, `label2`, `label3`, `label4`, `label5`, `label6`, `label7`, `label8`, `value1`, `value2`, `value3`, `value4`, `label9`, `label10`, `unit1`, `unit2`, `unit3`, `unit4`, `content2`, `content3`, `image2`, `content4`, `content5`) VALUES
(27, 'Trivandrum, the capital city of Kerala, is now a continuously changing and echoing metropolis in South India, thanks to the growing IT sector and the city’s rapidly changing real e', ' Trivandrum, the capital city of Kerala, is now a continuously changing and echoing metropolis in South India, thanks to the growing IT sector and the city’s rapidly changing real estate landscapes.', 'page-title-2.jpg', 0, 'Chairman\\\'s Message', 'Why Choose', 'Reasons To Choose Us', 'LOOKING FOR A HOME IN TRIVANDRUM', 'Explore the best flats in Trivandrum', 'Testimonials', 'What They Say About Us', 'Get to know us', '250', '98', ' 688', '258', 'Agriculture matters to', 'the future of development', 'M', '%', 'K', 'K', 'We have established growth and high status by adhering to consistent high design and quality parameters that have improved the ease, comfort, and efficiency of lives that interact with or inhabit our projects. ', 'SI property has completed over 50 top-of-line projects making them one of the most trusted builders in Trivandrum, with a significant presence in both the residential and commercial sectors. ', 'page-title-2.jpg', 'Testimonials for anyone seeking a reliable and top-notch construction partner', 'We are thrilled to share the positive experiences of our client');

-- --------------------------------------------------------

--
-- Table structure for table `ad`
--

CREATE TABLE `ad` (
  `ad_id` int(12) NOT NULL,
  `adtype` varchar(500) NOT NULL,
  `status` varchar(30) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Category of products';

--
-- Dumping data for table `ad`
--

INSERT INTO `ad` (`ad_id`, `adtype`, `status`, `img`) VALUES
(33, 'First', 'InActive', '1719318526banner1.jpg'),
(34, 'Second', 'InActive', '1719318537banner1.jpg'),
(35, 'Third', 'InActive', '1719318547banner1.jpg'),
(36, 'Fourth', 'InActive', '1719318596banner1.jpg'),
(37, 'Fifth', 'InActive', '1719318610banner1.jpg'),
(38, 'Sixth', 'InActive', '1719318651banner1.jpg'),
(39, 'Seventh', 'InActive', '1719318842banner1.jpg'),
(41, 'Eigth', 'InActive', '1719323902banner1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `agentid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `Fblink` varchar(255) NOT NULL,
  `TwitterLink` varchar(255) NOT NULL,
  `YouTubeLink` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`agentid`, `image`, `active`, `name`, `designation`, `Fblink`, `TwitterLink`, `YouTubeLink`) VALUES
(1, 'team-6.jpg', 1, 'Jennifer Lawrence', 'Senior Agent', 'fb', 'twit', 'youtube'),
(2, 'team-5.jpg', 1, 'Jennifer Lawrence', 'Senior Agent', 'fb', 'twit', 'youtube'),
(3, 'team-4.jpg', 1, 'Jennifer Lawrence', 'Senior Agent', 'fb', 'twit', 'youtube'),
(4, 'team-6.jpg', 1, 'Jennifer Lawrence', 'Senior Agent', 'fb', 'twit', 'youtube'),
(5, 'team-6.jpg', 1, 'Jennifer Lawrence', 'Senior Agent', 'fb', 'twit', 'youtube');

-- --------------------------------------------------------

--
-- Table structure for table `billingdetails`
--

CREATE TABLE `billingdetails` (
  `billingid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `companyname` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `message` text NOT NULL,
  `zip` int(11) NOT NULL DEFAULT 0,
  `apartment` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `billshipflag` int(11) NOT NULL,
  `orderid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billingdetails`
--

INSERT INTO `billingdetails` (`billingid`, `name`, `companyname`, `email`, `phone`, `message`, `zip`, `apartment`, `address`, `country`, `city`, `state`, `billshipflag`, `orderid`) VALUES
(9, 'Sumila', NULL, 'sumila.c@gmail.com', 9539532141, 'i need good lights', 0, ' Lights', 'abumathew@pocketfriendlyweb.com', 'e6e061838856bf47e1de730719fb2609', '', '', 0, 0),
(14, 'sumi', NULL, 'sumi@gmail.com', 868686986986, 'ok send', 0, 'test subject', '', '', '', '', 0, 0),
(16, 'ccccccc', NULL, 'ccccc@gmail.com', 999999999999, 'vnvnvbnvbnvbnvb', 0, '689798798798', '', '', '', '', 0, 0),
(17, ' ', 'ccccc', 'ccccc@gmail.com', 99999999999999, '', 0, '', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', 0, 0),
(18, ' ', 'dgdgdfgdf', 'zzzzzzzzz@gmail.com', 566867987089, '', 0, '', '', 'bbe132224ee352f8ace8143179c9575a', '', '', 0, 0),
(19, ' ', 'aaaaaa', 'aaaaa@gmail.com', 68686989879, '', 0, '', '', '8cb5556467e5cecab37b04d3392d193d', '', '', 0, 0),
(20, ' ', 'ccccc', 'cccc@gmail.com', 1111111111, '', 0, '', '', '953bd0f00f4a33fcc98ea7f6f12cb7d9', '', '', 0, 0),
(25, 'tyuty,utyutyu', 'tyutyuyt', 'bb', 4645645, '', 0, '', 'dfddg', '', '', '', 0, 0),
(26, 'tyuty,utyutyu', 'tyutyuyt', 'bb', 4645645, '', 0, '', 'dfddg', '', '', '', 0, 0),
(27, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(28, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(29, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(30, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(31, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(32, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(33, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(34, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(35, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(36, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(37, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(38, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(39, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(40, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(41, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(42, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(44, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(45, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(46, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(47, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(49, ' Sumila,', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 0, '', '', '', '', '', 0, 0),
(50, ' Sumila,', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 0, '', '', '', '', '', 0, 0),
(51, ' Sumila,', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 0, '', '', '', '', '', 0, 0),
(52, ' Sumila,', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 0, '', '', '', '', '', 0, 0),
(53, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(54, ',', '', '', 0, '', 0, '', '', '', '', '', 0, 0),
(55, 'suni,c', 'suni tech', 'sunitech@gmail.com', 4645645567657, '', 34546464, '', '', '', '', '', 0, 0),
(56, ' Sumila,c', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 57687686, '', '', '', '', '', 0, 0),
(57, ' Sumila,c', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 9898989, '', 'hjkhkjhkjk', '', '', '', 0, 0),
(58, ' Sumila,c', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 87909808, '', '', '', '', '', 0, 0),
(59, ' Sumila,c', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 5658686, '', '', '', '', '', 0, 0),
(60, ' Sumila,dfgdfg', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 5567568, '', 'dfgdgfdgfd', '', '', '', 0, 0),
(61, ' Sumila,c', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 56756658, '', 'yrtyrtyrt', '', '', '', 0, 0),
(62, ' Sumila,c', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 89000, '', 'ghjghjgj', '', '', '', 0, 0),
(63, ' Sumila,c', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 68686868, '', '', '', '', '', 0, 0),
(64, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 6686868, '', '', '', '', '', 0, 0),
(65, ' Sumila fn,ln', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 695121, '', 'st add', '', '', '', 0, 0),
(66, ' Sumila,c', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '65765876876', 68678698, 'ap', 'st a', '', '', 'st', 0, 0),
(67, ' Sumila,c', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '65765876876', 457556868, 'ap', 'addd', 'India', '', 'state', 0, 0),
(68, ' Sumila,c', 'Tech comp name1', 'sumila.c@gmail.com', 65765876876, 'note', 456, 'ap', 'st', 'United Arab Emirates', 'town', 'st', 0, 0),
(69, 's1,l1', 'tc1', 'xxx@gmail.com', 56568686786, 'bbbbb nnnnn', 134636456, 'ap1', 'st1', 'Andorra', 'nta1', 'k', 0, 0),
(70, ' Sumila,c', 'Tech comp name', 'sumila.c@gmail.com', 1111111111, 'nnnnnnnnnnn', 121, 'ap', 'sa', 'Zimbabwe', 'town', 'k', 1, 0),
(71, ' Sumila,c', 'c1', 'sssss1', 5555555555555555, 'nnnnnnnnnnn', 123, 'ap1', 'sa1', 'Netherlands Antilles', 't1', 'k', 2, 0),
(72, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 1, 0),
(73, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 2, 0),
(74, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 1, 0),
(75, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 2, 0),
(76, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 1, 0),
(77, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 2, 0),
(78, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 1, 0),
(79, ' Sumila,C', '', '', 0, '', 0, '', '', '', '', 'Kerala', 2, 0),
(80, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 1, 0),
(81, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 2, 0),
(82, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 1, 0),
(83, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 2, 0),
(84, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 1, 0),
(85, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 2, 0),
(86, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 1, 0),
(87, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 2, 0),
(88, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 1, 0),
(89, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 2, 0),
(90, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 1, 0),
(91, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 2, 0),
(92, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 1, 0),
(93, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 2, 0),
(94, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 1, 0),
(95, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 2, 0),
(96, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 1, 0),
(97, ' Sumila,C', 'Tech comp name', 'sumila.c@gmail.com', 65765876876, '', 1234, 'Vila', 'Surya', 'India', 'cit', 'Kerala', 2, 0),
(98, 'test@gmail.com,t', 'ccc', 'test@gmail.com', 56867867876, '', 123456, 'aaaa', 'ssss', 'Albania', 'tttt', 'st', 1, 0),
(99, 'test@gmail.com,t', 'ccc', 'test@gmail.com', 56867867876, '', 123456, 'aaaa', 'ssss', 'Albania', 'tttt', 'st', 2, 0),
(100, 'test@gmail.com,t', 'ccc', 'test@gmail.com', 56867867876, '', 123456, 'aaaa', 'ssss', 'Albania', 'tttt', 'st', 1, 0),
(101, 'test@gmail.com,t', 'ccc', 'test@gmail.com', 56867867876, '', 123456, 'aaaa', 'ssss', 'Albania', 'tttt', 'st', 2, 0),
(102, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(103, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(104, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(105, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(106, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(107, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(108, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(109, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(110, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(111, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(112, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(113, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(114, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(115, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(116, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(117, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(118, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(119, 'test2,test', '', '', 0, '', 0, '', '', '', '', 'st', 2, 0),
(120, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(121, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(122, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(123, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(124, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(125, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(126, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(127, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(128, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(129, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(130, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(131, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(132, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(133, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(134, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(135, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(136, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(137, 'test2,test', '', '', 0, '', 0, '', '', '', '', 'st', 2, 0),
(138, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(139, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(140, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(141, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(142, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(143, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(144, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(145, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(146, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(147, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(148, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(149, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(150, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(151, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(152, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(153, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(154, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(155, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(156, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(157, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(158, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(159, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(160, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(161, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(162, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(163, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(164, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(165, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(166, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(167, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(168, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(169, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(170, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(171, 'test2,test', '', '', 0, '', 0, '', '', '', '', 'st', 2, 0),
(172, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(173, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(174, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(175, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(176, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(177, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(178, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(179, 'test2,test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(180, 'dsfdfh,fghfgh', 'fghfg', 'guest@gmail.com', 0, '', 2147483647, 'fghfghf', 'fghfgh', 'Zambia', 'fghfgh', 'fghfgh', 1, 0),
(181, 'dsfdfh,fghfgh', '', '', 0, '', 0, '', '', '', '', 'fghfgh', 2, 0),
(182, 'f,l', 'c', 'nnnnn@gmail.com', 78978978089, '', 56568678, 'a', 's', 'Venezuela', 't', 's', 1, 0),
(183, 'f,l', 'c', 'nnnnn@gmail.com', 78978978089, '', 56568678, 'a', 's', 'Venezuela', 't', 's', 2, 0),
(184, 'ryrty,tryrt', 'rty', 'bb@gmail.com', 56768678697, '', 2147483647, 'rtyrt', 'rtyrt', 'Zambia', 'tryrty', 'rtyrt', 1, 0),
(185, 'ryrty,tryrt', 'rty', 'bb@gmail.com', 56768678697, '', 2147483647, 'rtyrt', 'rtyrt', 'Zambia', 'tryrty', 'rtyrt', 2, 0),
(186, 'dfgfd,dfgdf', 'dfgfdg', 'bbb@gmail.com', 56876867867, '', 5756756, 'dfgdf', 'dfgfdg', 'Vatican City State (Holy See)', 'dfgdf', 'dfgdf', 1, 0),
(187, 'dfgfd,dfgdf', '', '', 0, '', 0, '', '', '', '', 'dfgdf', 2, 0),
(188, 'yiuyi,uyiuy', 'ouioiu', 'ccc@gmail.com', 56765867867, '', 768678679, 'iuoiuo', 'ouioui', 'Samoa', 'uioiuo', 'uiouio', 1, 0),
(189, 'yiuyi,uyiuy', 'ouioiu', 'ccc@gmail.com', 56765867867, '', 768678679, 'iuoiuo', 'ouioui', 'Samoa', 'uioiuo', 'uiouio', 2, 0),
(190, 'fghfghfgh,fghfgh', 'fggfhfgh', 'bb@gmail.com', 7789789789789, '', 2147483647, 'gfhfgh', 'fghfgh', 'Viet Nam', 'fghfgh', 'fghfghfg', 1, 0),
(191, 'fghfghfgh,fghfgh', 'fggfhfgh', 'bb@gmail.com', 7789789789789, '', 2147483647, 'gfhfgh', 'fghfgh', 'Viet Nam', 'fghfgh', 'fghfghfg', 2, 0),
(192, 'f,l', 'c', 'ccc@gmail.com', 5676876978080, '', 45645645, 'a', 's', 'United Arab Emirates', 't', 'kerala', 1, 0),
(193, 'f,l', 'c', 'ccc@gmail.com', 5676876978080, '', 45645645, 'a', 's', 'United Arab Emirates', 't', 'kerala', 2, 0),
(194, 'f,l', 'c', 'ccc@gmail.com', 5668678678768, '', 123, 'a', 's', 'United Arab Emirates', 't', 's', 1, 0),
(195, 'f,l', 'c', 'ccc@gmail.com', 5668678678768, '', 123, 'a', 's', 'United Arab Emirates', 't', 's', 2, 0),
(196, 'fffff,ffffff', 'ccccccccccccc', 'ccc@gmail.com', 68678678678, '', 121, 'aaaaaaaaaaaaa', 'ssssssssssss', 'United Arab Emirates', 'ttttttttttt', 'st', 1, 0),
(197, 'fffff,ffffff', 'ccccccccccccc', 'ccc@gmail.com', 68678678678, '', 121, 'aaaaaaaaaaaaa', 'ssssssssssss', 'United Arab Emirates', 'ttttttttttt', 'st', 2, 0),
(198, 'f,f', 'c', 'aaaa@gmail.com', 567568678678, '', 123456, 'a', 's', 'United Arab Emirates', 't', 's', 1, 0),
(199, 'f,f', 'c', 'aaaa@gmail.com', 567568678678, '', 123456, 'a', 's', 'United Arab Emirates', 't', 's', 2, 0),
(200, 'f,f', 'c', 'aaaa@gmail.com', 567568678678, '', 123456, 'a', 's', 'United Arab Emirates', 't', 's', 1, 0),
(201, 'f,f', 'c', 'aaaa@gmail.com', 567568678678, '', 123456, 'a', 's', 'United Arab Emirates', 't', 's', 2, 0),
(202, 'f,l', 'ccccccccccccc', 'aaaa@gmail.com', 5555555555555555, '', 123, 'a', 's', 'United States Virgin Islands', 't', 's', 1, 0),
(203, 'f,l', 'ccccccccccccc', 'aaaa@gmail.com', 5555555555555555, '', 123, 'a', 's', 'United States Virgin Islands', 't', 's', 2, 0),
(204, ',', '', '', 0, '', 0, '', '', '', '', '', 1, 0),
(205, ',', '', '', 0, '', 0, '', '', '', '', '', 2, 0),
(206, 'f,l', 'c', 'ccc@gmail.com', 567658678678, '', 2147483647, 'a', 's', 'Andorra', 't', 's', 1, 0),
(207, 'f,l', 'c', 'ccc@gmail.com', 567658678678, '', 2147483647, 'a', 's', 'Andorra', 't', 's', 2, 0),
(208, 'f,l', 'c', 'ccc@gmail.com', 567658678678, '', 2147483647, 'a', 's', 'Andorra', 't', 's', 1, 0),
(209, 'f,l', 'c', 'ccc@gmail.com', 567658678678, '', 2147483647, 'a', 's', 'Andorra', 't', 's', 2, 0),
(210, 'f,l', 'c', 'bb@gmail.com', 679879789789, '', 12345, 'a', 's', 'United Arab Emirates', 't', 's', 1, 0),
(211, 'f,l', 'c', 'bb@gmail.com', 679879789789, '', 12345, 'a', 's', 'United Arab Emirates', 't', 's', 2, 0),
(212, 'dsfgdsfg,dfgdf', 'fdgdfg', 'bb@gmail.com', 56756756756, '', 5675688, 'aaaa', 'dfgdfg', 'United Arab Emirates', 'tttt', 'st', 1, 0),
(213, 'dsfgdsfg,dfgdf', 'fdgdfg', 'bb@gmail.com', 56756756756, '', 5675688, 'aaaa', 'dfgdfg', 'United Arab Emirates', 'tttt', 'st', 2, 0),
(214, 'ffffff,lllllll', 'ccccccccccccc', 'oooo@gmail.com', 9999999999999999, '', 123456, 'aaaaaaaaaaaaa', 'ssssssssssss', 'United Arab Emirates', 'ttttttttttttttt', 'kerala', 1, 0),
(215, 'ffffff,lllllll', 'ccccccccccccc', 'oooo@gmail.com', 9999999999999999, '', 123456, 'aaaaaaaaaaaaa', 'ssssssssssss', 'United Arab Emirates', 'ttttttttttttttt', 'kerala', 2, 0),
(216, 'f,l', 'c', 'vvvvvv@gmail.com', 9999999999999999, '', 1234, 'a', 's', 'United Arab Emirates', 't', 's', 1, 0),
(217, 'f,l', 'c', 'vvvvvv@gmail.com', 9999999999999999, '', 1234, 'a', 's', 'United Arab Emirates', 't', 's', 2, 0),
(218, 'f,l', 'c', 'vvvvvv@gmail.com', 9999999999999999, '', 1234, 'a', 's', 'United Arab Emirates', 't', 's', 1, 0),
(219, 'f,l', 'c', 'vvvvvv@gmail.com', 9999999999999999, '', 1234, 'a', 's', 'United Arab Emirates', 't', 's', 2, 0),
(220, 'f,l', 'c', 'bb@gmail.com', 6587687697, '', 123456, 'a', 's', 'United Arab Emirates', 't', 's', 1, 0),
(221, 'f,l', 'c', 'bb@gmail.com', 6587687697, '', 123456, 'a', 's', 'United Arab Emirates', 't', 's', 2, 0),
(222, 'f,l', 'c', 'bb@gmail.com', 6867867867, '', 5767567, 'a', 's', 'Antigua & Barbuda', 't', 's', 1, 0),
(223, 'f,l', 'c', 'bb@gmail.com', 6867867867, '', 5767567, 'a', 's', 'Antigua & Barbuda', 't', 's', 2, 0),
(224, 'f,l', 'c', 'ppppp@gmail.com', 687698798798, '', 567568678, 'a', 's', 'United Arab Emirates', 't', 's', 1, 0),
(225, 'f,l', 'c', 'ppppp@gmail.com', 687698798798, '', 567568678, 'a', 's', 'United Arab Emirates', 't', 's', 2, 0),
(226, 'fffff llllll', 'ccccc', 'gg@gmail.com', 567567567567, '', 57575675, 'aaaaaaaaaa', 'sssss', 'Albania', 'ttttttt', 'sssssssssss', 1, 0),
(227, 'fffff llllll', 'ccccc', 'gg@gmail.com', 567567567567, '', 57575675, 'aaaaaaaaaa', 'sssss', 'Albania', 'ttttttt', 'sssssssssss', 2, 0),
(228, 'test2 test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(229, 'test2 test', '', '', 0, '', 0, '', '', '', '', 'st', 2, 0),
(230, 'test2 test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 1, 0),
(231, 'test2 test', 'ccccc', 'test2@gmail.com', 999999999999, '', 695121, 'aaaa', 'ssss', 'Tonga', 'city', 'st', 2, 0),
(232, ' ', '', '', 0, '', 0, '', '', '', '', '', 1, 0),
(233, ' ', '', '', 0, '', 0, '', '', '', '', '', 2, 0),
(234, ' ', '', '', 0, '', 0, '', '', '', '', '', 1, 0),
(235, ' ', '', '', 0, '', 0, '', '', '', '', '', 2, 0),
(236, ' ', '', '', 0, '', 0, '', '', '', '', '', 1, 0),
(237, ' ', '', '', 0, '', 0, '', '', '', '', '', 2, 0),
(238, ' ', '', '', 0, '', 0, '', '', '', '', '', 1, 0),
(239, ' ', '', '', 0, '', 0, '', '', '', '', '', 2, 0),
(240, 'nnnnn mmmmm', 'kkkkkk', 'bbb@gmail.com', 678769879870, '', 658768678, 'hjhjkhjk', 'addresss', 'India', 'hjkhjkjh', 'hjkhjk', 1, 0),
(241, 'nnnnn mmmmm', 'kkkkkk', 'bbb@gmail.com', 678769879870, '', 658768678, 'hjhjkhjk', 'addresss', 'India', 'hjkhjkjh', 'hjkhjk', 2, 0),
(242, 'dfgdfgdf dfgdfg', 'dfgdfg', 'bb@gmail.com', 658678769789, '56756756756', 56768769, 'dfgdfgdf', 'dfgdfg', 'Netherlands Antilles', 'dfgdfgd', 'dfgdfgd', 1, 0),
(243, 'dfgdfgdf dfgdfg', 'fghfgh', 'cccc@gmail.com', 57567567567, '56756756756', 2147483647, 'fgdfgdfg', 'mm', 'Anguilla', 'dfgfdgd', 'dfgdfgd', 2, 0),
(244, 'jhghjgjh hghjghjg', 'hjghjghjg', 'sumila.c@gmail.com', 86798798790780, 'jkhjkhjkkhk bnm', 89798798, 'hghjghjj', 'ujhgtjhgjhg', 'United Arab Emirates', 'hjghjgjh', 'hjgjhgjhg', 1, 0),
(245, 'jhghjgjh hghjghjg', 'mmmmm', 'cccc@gmail.com', 989080980080000, 'jkhjkhjkkhk bnm', 987987989, 'jlkjll', 'kljlkjlkl', 'Albania', '098098900', 'hjgjhgjhg', 2, 0),
(246, 'yuioui ouiouio', 'uioui', 'ccc@gmail.com', 4567567567567, '', 2147483647, 'ouioui', 'ouioui', 'Albania', 'uiouio', 'uiouio', 1, 0),
(247, 'yuioui ouiouio', 'uioui', 'ccc@gmail.com', 4567567567567, '', 2147483647, 'ouioui', 'ouioui', 'Albania', 'uiouio', 'uiouio', 2, 0),
(248, 'ghfhgfhjghj hghjgjjk', 'jkhljkhlkjhk', 'sumila.c@gmail.com', 7879879879797, '', 878979879, 'jkhjkhjk', 'jkhjkkljhlkhj', 'Anguilla', 'hjkhjkhkhk', 'hjkhjkhjkh', 1, 0),
(249, 'ghfhgfhjghj hghjgjjk', 'jkhljkhlkjhk', 'sumila.c@gmail.com', 7879879879797, '', 878979879, 'jkhjkhjk', 'jkhjkkljhlkhj', 'Anguilla', 'hjkhjkhkhk', 'hjkhjkhjkh', 2, 0),
(250, 'f l', 'c', 'ccc@gmail.com', 78978098790809, '', 695121, 'ap', 'sa', 'United Arab Emirates', 't', 'st', 1, 0),
(251, 'f l', '', '', 0, '', 0, '', '', '', '', 'st', 2, 0),
(252, 'fgfdgfd fghfgjgj', 'ghjghjgh', 'sumila.c@gmail.com', 678769789789, '', 2147483647, 'ghjhgjhg', 'ghjhgjhg', 'Netherlands Antilles', 'ghjhgjhg', 'hgjhgjhg', 1, 0),
(253, 'fgfdgfd fghfgjgj', 'ghjghjgh', 'sumila.c@gmail.com', 678769789789, '', 2147483647, 'ghjhgjhg', 'ghjhgjhg', 'Netherlands Antilles', 'ghjhgjhg', 'hgjhgjhg', 2, 0),
(254, 'ghhgkjhk hjkhjk', 'hjkhjkhj', 'bbb@gmail.com', 567868769780, 'gfdgfdgfdg', 2147483647, 'hjkhjkhjk', 'hjkhjkhj', 'Netherlands Antilles', 'hjkhjkhj', 'hjkhjkhjk', 1, 0),
(255, 'ghhgkjhk hjkhjk', 'dfgdfg', 'bbbb@gmail.com', 4645645645645, 'gfdgfdgfdg', 2147483647, 'dfgfdgfd', 'dfgdfgfd', 'Anguilla', 'dfgfdgfd', 'hjkhjkhjk', 2, 0),
(256, 'dfgfdgdfg fdgdfgdfgdf', 'dfgdfgfdgdf', 'ccc@gmail.com', 7698798708908, '', 2147483647, 'dfgfdgdfg', 'dfgfdgfdg', 'Netherlands Antilles', 'dfgfdgdf', 'dfgdfgdfg', 1, 0),
(257, 'dfgfdgdfg fdgdfgdfgdf', 'dfgdfgfdgdf', 'ccc@gmail.com', 7698798708908, '', 2147483647, 'dfgfdgdfg', 'dfgfdgfdg', 'Netherlands Antilles', 'dfgfdgdf', 'dfgdfgdfg', 2, 0),
(258, 'ffffff lllllll', 'cccccccccc', 'sumila.c@gmail.com', 769879789789, '', 567567568, 'aaaaaaaaaaaaaa', 'ssssssssssss', 'Netherlands Antilles', 'ttttttttttttttt', 'ssssssssssss', 1, 0),
(259, 'ffffff lllllll', 'cccccc1', '', 0, '', 695121, 'aaaaaa1', 'sssss1', 'Anguilla', 'tttttt1', 'ssssssssssss', 2, 0),
(260, 'dfgdfg dfgdfg', 'dfgdfg', 'bbb@gmail.com', 56786867867, '', 567567567, 'dfgfdg', 'fdgfdg', 'Angola', 'dfgdfg', 'dfgdfg', 1, 0),
(261, 'dfgdfg dfgdfg', '', '', 0, '', 0, '', '', '', '', 'dfgdfg', 2, 0),
(262, 'ghjghjgh ghjghjg', 'ghjghjgh', 'vvvvvv@gmail.com', 57567567567567, '', 678678678, 'fghfghfg', 'fghfghfgh', 'American Samoa', 'fghfghfg', 'fghfghf', 1, 0),
(263, 'ghjghjgh ghjghjg', '', '', 0, '', 0, '', '', '', '', 'fghfghf', 2, 0),
(264, 'dfgdfgdf dfgdfgdf', 'dfgdfgdfg', 'bb@gmail.com', 567658768768769, '', 2147483647, 'dfgfdgfdg', 'dfgdfgdfg', 'Armenia', 'dfgfdgdfg', 'dfgfdgdf', 1, 0),
(265, 'dfgdfgdf dfgdfgdf', '', '', 0, '', 0, '', '', '', '', 'dfgfdgdf', 2, 0),
(266, 'sdfdsfsd sdfsdfsd', 'sdfdsfd', 'vvvvvv@gmail.com', 5675678686786, 'notes----', 2147483647, 'sdfdsfs', 'dsfdsfds', 'Netherlands Antilles', 'dsfdsf', 'sdfsdf', 1, 0),
(267, 'sdfdsfsd sdfsdfsd', 'dfgdfgdf', 'bbbb@gmail.com', 67876867867, 'notes----', 2147483647, 'dfgdfgdf', 'dfgdfgdf', 'Netherlands Antilles', 'dfgdfgdf', 'sdfsdf', 2, 0),
(268, 'dfgdfgdf dfgdfg', 'dfgdfgdf', 'sumila.c@gmail.com', 567568768769, '', 567567567, 'dfgdfgdf', 'dfgdfgdf', 'United Arab Emirates', 'dfgdfgdfg', 'dfgdfgdf', 1, 0),
(269, 'dfgdfgdf dfgdfg', 'dfgdfgdf', 'sumila.c@gmail.com', 567568768769, '', 567567567, 'dfgdfgdf', 'dfgdfgdf', 'United Arab Emirates', 'dfgdfgdfg', 'dfgdfgdf', 2, 0),
(270, 'tyututy tyutyut', 'yutyutyu', 'ccc@gmail.com', 457657567567, '', 46456456, 'gfhfghfgh', 'fghfghfgh', 'Australia', 'fghfghfg', 'fghfghfg', 1, 0),
(271, 'tyututy tyutyut', 'yutyutyu', 'ccc@gmail.com', 457657567567, '', 46456456, 'gfhfghfgh', 'fghfghfgh', 'Australia', 'fghfghfg', 'fghfghfg', 2, 0),
(272, 'jghjgjhjk hjgjhkgjkgh', 'hjghjgjh', 'ccc@gmail.com', 897987987998, '', 786876, 'hjkhjkhl', 'hjghjgjh', 'Netherlands Antilles', 'ghjghjkgk', 'gjhkjkhjk', 1, 0),
(273, 'jghjgjhjk hjgjhkgjkgh', 'hjghjgjh', 'ccc@gmail.com', 897987987998, '', 786876, 'hjkhjkhl', 'hjghjgjh', 'Netherlands Antilles', 'ghjghjkgk', 'gjhkjkhjk', 2, 0),
(274, 'tyutuytu jhgjkjkhk', 'jkhjkhklj', 'vvvvvv@gmail.com', 9539532141, '', 8979879, 'hjgjkjk', 'hjgjhghj', 'Australia', 'hjghjgj', 'ghjghjgj', 1, 0),
(275, 'tyutuytu jhgjkjkhk', 'jkhjkhklj', 'vvvvvv@gmail.com', 9539532141, '', 8979879, 'hjgjkjk', 'hjgjhghj', 'Australia', 'hjghjgj', 'ghjghjgj', 2, 0),
(276, 'ttyuty utyutyu', 'tyutyu', 'sumila.c@gmail.com', 568678768678, '', 567567567, 'tyutyu', 'tyutyuty', 'Angola', 'tyutyu', 'tyutyu', 1, 0),
(277, 'ttyuty utyutyu', 'tyutyu', 'sumila.c@gmail.com', 568678768678, '', 567567567, 'tyutyu', 'tyutyuty', 'Angola', 'tyutyu', 'tyutyu', 2, 0),
(278, 'gtutuyty tyutyu', 'tyutyu', 'xxxx@gmail.com', 45645656756765, '', 678789789, 'tyutyu', 'tyutyuty', 'Argentina', 'tyutyuty', 'tyutyu', 1, 0),
(279, 'gtutuyty tyutyu', 'tyutyu', 'xxxx@gmail.com', 45645656756765, '', 678789789, 'tyutyu', 'tyutyuty', 'Argentina', 'tyutyuty', 'tyutyu', 2, 0),
(280, 'utyutyu tyutyu', 'tyutyut', 'ccc@gmail.com', 67867867876, '', 2147483647, 'tyutyu', 'tyutyu', 'Afghanistan', 'tyutyu', 'tyuytu', 1, 0),
(281, 'utyutyu tyutyu', 'tyutyut', 'ccc@gmail.com', 67867867876, '', 2147483647, 'tyutyu', 'tyutyu', 'Afghanistan', 'tyutyu', 'tyuytu', 2, 0),
(282, 'yrtyrty rtyrty', 'rtyrty', 'ccc@gmail.com', 546567657567, '', 2147483647, 'rtyrty', 'tryrty', 'American Samoa', 'tryrty', 'tryrty', 1, 0),
(283, 'yrtyrty rtyrty', 'rtyrty', 'ccc@gmail.com', 546567657567, '', 2147483647, 'rtyrty', 'tryrty', 'American Samoa', 'tryrty', 'tryrty', 2, 0),
(284, 'fghfgh fghfgh', 'fghfgh', 'vvvvvv@gmail.com', 567567567567, '', 678768679, 'fghfghgf', 'fghfgh', 'American Samoa', 'fghfghfg', 'fghfghfg', 1, 0),
(285, 'fghfgh fghfgh', 'fghfgh', 'vvvvvv@gmail.com', 567567567567, '', 678768679, 'fghfghgf', 'fghfgh', 'American Samoa', 'fghfghfg', 'fghfghfg', 2, 0),
(286, 'iyuiyu iyuiyui', 'yuiyui', 'bb@gmail.com', 678769789870, '', 678678678, 'yuiyui', 'yuiyui', 'Argentina', 'yuiyui', 'yuiyui', 1, 0),
(287, 'iyuiyu iyuiyui', 'yuiyui', 'bb@gmail.com', 678769789870, '', 678678678, 'yuiyui', 'yuiyui', 'Argentina', 'yuiyui', 'yuiyui', 2, 0),
(288, 'fghfgh fghfgh', 'fghfgh', 'bb@gmail.com', 456456456, '', 678768679, 'fghfghg', 'fghfghfg', 'Aruba', 'fghfghf', 'fghgfhfgh', 1, 0),
(289, 'fghfgh fghfgh', 'fghfgh', 'bb@gmail.com', 456456456, '', 678768679, 'fghfghg', 'fghfghfg', 'Aruba', 'fghfghf', 'fghgfhfgh', 2, 0),
(290, 'tyutyut tyutyu', 'tyutyuty', 'bb@gmail.com', 678769870980, '', 67567568, 'dfgdfgfdg', 'dfgdfgdfg', 'American Samoa', 'dfgdfgfd', 'dfgfdgfd', 1, 0),
(291, 'tyutyut tyutyu', 'tyutyuty', 'bb@gmail.com', 678769870980, '', 67567568, 'dfgdfgfdg', 'dfgdfgdfg', 'American Samoa', 'dfgdfgfd', 'dfgfdgfd', 2, 0),
(292, 'tutyut tyutyu', 'tyutyu', 'sumila.c@gmail.com', 567658768769, '', 2147483647, 'tyutyu', 'tyuytu', 'Argentina', 'tyutyu', 'tyutyuy', 1, 0),
(293, 'tutyut tyutyu', 'tyutyu', 'sumila.c@gmail.com', 567658768769, '', 2147483647, 'tyutyu', 'tyuytu', 'Argentina', 'tyutyu', 'tyutyuy', 2, 0),
(294, 'iopip iopiop', 'iopiop', 'bb@gmail.com', 67876987098098, '', 679879780, 'iopiop', 'iopiop', 'Aruba', 'iopiop', 'iopiop', 1, 0),
(295, 'iopip iopiop', 'iopiop', 'bb@gmail.com', 67876987098098, '', 679879780, 'iopiop', 'iopiop', 'Aruba', 'iopiop', 'iopiop', 2, 0),
(296, 'fghfgh ghjhg', 'khjkhjk', 'ccc@gmail.com', 76879879789, '', 67879870, 'hjkhjk', 'hjkhjk', 'Antigua & Barbuda', 'hjkhjk', 'hjkhjk', 1, 0),
(297, 'fghfgh ghjhg', 'khjkhjk', 'ccc@gmail.com', 76879879789, '', 67879870, 'hjkhjk', 'hjkhjk', 'Antigua & Barbuda', 'hjkhjk', 'hjkhjk', 2, 0),
(298, 'gdfgdf gdfgfd', 'gdfgdfg', 'sumila.c@gmail.com', 7898098089089, '', 567658768, 'dfgdfgdf', 'dfgdfgdf', 'Afghanistan', 'dfgdfgdfg', 'dsfdsfdsfg', 1, 0),
(299, 'gdfgdf gdfgfd', 'gdfgdfg', 'sumila.c@gmail.com', 7898098089089, '', 567658768, 'dfgdfgdf', 'dfgdfgdf', 'Afghanistan', 'dfgdfgdfg', 'dsfdsfdsfg', 2, 0),
(300, 'ihgjhgj hjkhjk', 'hjkhjk', 'zzzzz@gmail.com', 456567568768, '', 2147483647, 'hjkhjk', 'hjkhjk', 'Austria', 'hjkhjkhj', 'hjkhjk', 1, 0),
(301, 'ihgjhgj hjkhjk', 'hjkhjk', 'zzzzz@gmail.com', 456567568768, '', 2147483647, 'hjkhjk', 'hjkhjk', 'Austria', 'hjkhjkhj', 'hjkhjk', 2, 0),
(302, 'fghfgh fghfgh', 'fghfgh', 'ccc@gmail.com', 67867897987, '', 678769879, 'fghfgh', 'fghfgh', 'Austria', 'fghfgh', 'fghfghfg', 1, 0),
(303, 'fghfgh fghfgh', 'fghfgh', 'ccc@gmail.com', 67867897987, '', 678769879, 'fghfgh', 'fghfgh', 'Austria', 'fghfgh', 'fghfghfg', 2, 0),
(304, 'rtyrtyr yrtyrt', 'rtyrty', 'sumila.c@gmail.com', 567658678769, '', 678678678, 'rtyrtyrt', 'rtyrtyrt', 'Afghanistan', 'rtyrty', 'rtyrtyrt', 1, 0),
(305, 'rtyrtyr yrtyrt', 'rtyrty', 'sumila.c@gmail.com', 567658678769, '', 678678678, 'rtyrtyrt', 'rtyrtyrt', 'Afghanistan', 'rtyrty', 'rtyrtyrt', 2, 0),
(306, 'fhfghfg fghfg', 'hfghgfhgf', 'vvvvvv@gmail.com', 567568768679, '', 2147483647, 'fghfghf', 'fghfghfg', 'Afghanistan', 'fghfghgf', 'fghfghfg', 1, 0),
(307, 'fhfghfg fghfg', 'hfghgfhgf', 'vvvvvv@gmail.com', 567568768679, '', 2147483647, 'fghfghf', 'fghfghfg', 'Afghanistan', 'fghfghgf', 'fghfghfg', 2, 0),
(308, 'dfgfhfg fghfgh', 'fghfghfgh', 'ccc@gmail.com', 568768679789, '', 2147483647, 'fghfghfgh', 'fghfghgf', 'Austria', 'fghfghfg', 'fghfghfg', 1, 0),
(309, 'dfgfhfg fghfgh', 'fghfghfgh', 'ccc@gmail.com', 568768679789, '', 2147483647, 'fghfghfgh', 'fghfghgf', 'Austria', 'fghfghfg', 'fghfghfg', 2, 0),
(310, 'ghjgj ghjgh', 'jghjghj', 'bb@gmail.com', 56876876879, '', 567678678, 'ghjghj', 'hgjghj', 'Azerbaijan', 'ghjghj', 'ghjghj', 1, 0),
(311, 'ghjgj ghjgh', 'jghjghj', 'bb@gmail.com', 56876876879, '', 567678678, 'ghjghj', 'hgjghj', 'Azerbaijan', 'ghjghj', 'ghjghj', 2, 0),
(312, 'dgdfg dgdfg', 'dfgdfg', 'mmmm@gmail.com', 90000000000000, '', 2147483647, 'dfgdfgdf', 'dfgdfgfd', 'United Arab Emirates', 'dfgdfgdf', 'dfgdfgfd', 1, 0),
(313, 'dgdfg dgdfg', 'dfgdfg', 'mmmm@gmail.com', 90000000000000, '', 2147483647, 'dfgdfgdf', 'dfgdfgfd', 'United Arab Emirates', 'dfgdfgdf', 'dfgdfgfd', 2, 0),
(314, 'GHGJGHJ GHJGHJ', 'GHJHGJGH', 'nnnnn@gmail.com', 658678769879, '', 2147483647, 'GHJGHJGH', 'GHJGHJG', 'Australia', 'GHJHGJGH', 'GHJHGJ', 1, 0),
(315, 'GHGJGHJ GHJGHJ', 'GHJHGJGH', 'nnnnn@gmail.com', 658678769879, '', 2147483647, 'GHJGHJGH', 'GHJGHJG', 'Australia', 'GHJHGJGH', 'GHJHGJ', 2, 0),
(316, 'FGHFGH FGHFG', 'HFGHFGH', 'bb@gmail.com', 568768678678, '', 2147483647, 'FGHFGHFG', 'FGHFGHG', 'Andorra', 'FGHFGHFG', 'FGHFGHFG', 1, 0),
(317, 'FGHFGH FGHFG', 'HFGHFGH', 'bb@gmail.com', 568768678678, '', 2147483647, 'FGHFGHFG', 'FGHFGHG', 'Andorra', 'FGHFGHFG', 'FGHFGHFG', 2, 0),
(318, 'fhfghfg fghfgh', 'fghfghfg', 'nnnnn@gmail.com', 456547567658, '', 2147483647, 'fghfghfg', 'fghfghfg', 'Antigua & Barbuda', 'fghfghf', 'fghfghfg', 1, 0),
(319, 'fhfghfg fghfgh', 'fghfghfg', 'nnnnn@gmail.com', 456547567658, '', 2147483647, 'fghfghfg', 'fghfghfg', 'Antigua & Barbuda', 'fghfghf', 'fghfghfg', 2, 0),
(320, 'fghfgh fghfghfg', 'fghfghfgh', 'vvvvvv@gmail.com', 67879879879879, '', 2147483647, 'fghfghfgh', 'fghfghgf', 'Afghanistan', 'fghfghfg', 'fghfghfg', 1, 0),
(321, 'fghfgh fghfghfg', 'fghfghfgh', 'vvvvvv@gmail.com', 67879879879879, '', 2147483647, 'fghfghfgh', 'fghfghgf', 'Afghanistan', 'fghfghfg', 'fghfghfg', 2, 0),
(322, 'bnmbnm bnmbn', 'bnmbnm', 'bb@gmail.com', 56768678768, '5675675676', 67868678, 'bnmbnm', 'bnmbnm', 'Argentina', 'bnmbnm', 'bnmbnm', 1, 0),
(323, 'bnmbnm bnmbn', 'fghfgh', 'nn@gmail.com', 56756756756, '5675675676', 678678678, 'fghfghgf', 'fghgfhg', 'Argentina', 'fghfghg', 'bnmbnm', 2, 0),
(324, 'hjkhjkhkj jkhkjhkj', 'jhgjhjkhk', 'sumila.c@gmail.com', 75678687698769, '', 876898798, 'jhjkhjkhk', 'ghjghjgj', 'United Arab Emirates', 'jkhjkhjkk', 'jkhkjhkj', 1, 0),
(325, 'hjkhjkhkj jkhkjhkj', 'jhgjhjkhk', 'sumila.c@gmail.com', 75678687698769, '', 876898798, 'jhjkhjkhk', 'ghjghjgj', 'United Arab Emirates', 'jkhjkhjkk', 'jkhkjhkj', 2, 0),
(326, 'fgfghfg fghfgh', 'fghfgh', 'bb@gmail.com', 658678678678, '', 567687689, 'fghfghfg', 'fghfghfg', 'United Arab Emirates', '567567567', 'dsdgfdgfd', 1, 0),
(327, 'fgfghfg fghfgh', 'fghfgh', 'bb@gmail.com', 658678678678, '', 567687689, 'fghfghfg', 'fghfghfg', 'United Arab Emirates', '567567567', 'dsdgfdgfd', 2, 0),
(328, 'dgdfgf fgfdgfd', 'dfgdfg', 'bb@gmail.com', 67876876876, '', 2147483647, 'fdgdfg', 'dfgdfgfd', 'Australia', 'dfgfdg', 'dfgfdgf', 1, 0),
(329, 'dgdfgf fgfdgfd', 'dfgdfg', 'bb@gmail.com', 67876876876, '', 2147483647, 'fdgdfg', 'dfgdfgfd', 'Australia', 'dfgfdg', 'dfgfdgf', 2, 0),
(330, 'ututyu tyuytuyt', 'ytuytu', 'ccc@gmail.com', 678768678768, '', 678679879, 'fhfghfgh', 'hhhhhhhhhhhh', 'United Arab Emirates', 'fghfghfgh', 'fhyfhfgh', 1, 0),
(331, 'ututyu tyuytuyt', 'ytuytu', 'ccc@gmail.com', 678768678768, '', 678679879, 'fhfghfgh', 'hhhhhhhhhhhh', 'United Arab Emirates', 'fghfghfgh', 'fhyfhfgh', 2, 0),
(332, 'sumila c', 'Freelance', 'sumila.c@gmail.com', 9539532141, '', 695121, 'Thozhukal', 'Sharon', 'United Arab Emirates', 'Neyyattinkara', 'Kerala', 1, 0),
(333, 'sumila c', 'Freelance', 'sumila.c@gmail.com', 9539532141, '', 695121, 'Thozhukal', 'Sharon', 'United Arab Emirates', 'Neyyattinkara', 'Kerala', 2, 0),
(334, 'ghjghj hjkhj', 'hjkhjk', 'sumila.c@gmail.com', 5676867867876, '', 2147483647, 'hjkhjkjh', 'hjkhjkj', 'Albania', 'hjkhjk', 'hjkhjkhj', 1, 0),
(335, 'ghjghj hjkhj', 'hjkhjk', 'sumila.c@gmail.com', 5676867867876, '', 2147483647, 'hjkhjkjh', 'hjkhjkj', 'Albania', 'hjkhjk', 'hjkhjkhj', 2, 0),
(336, 'dfgdfg dfgdfg', 'dfgdfgdf', 'bb@gmail.com', 45756756756758, '', 567567567, 'dfgdfgfd', 'dfgdfgf', 'Afghanistan', 'dfgfdgdf', 'dfgfdgfd', 1, 0),
(337, 'dfgdfg dfgdfg', 'dfgdfgdf', 'bb@gmail.com', 45756756756758, '', 567567567, 'dfgdfgfd', 'dfgdfgf', 'Afghanistan', 'dfgfdgdf', 'dfgfdgfd', 2, 0),
(338, 'uyiyuiyu iyuiuyi', 'yuiuyiuy', 'bb@gmail.com', 56756768678, '', 2147483647, 'ccccc', 'yuiuyiuy', 'United Arab Emirates', 'ggggg', 'kkkkk', 1, 0),
(339, 'uyiyuiyu iyuiuyi', 'yuiuyiuy', 'bb@gmail.com', 56756768678, '', 2147483647, 'ccccc', 'yuiuyiuy', 'United Arab Emirates', 'ggggg', 'kkkkk', 2, 0),
(340, 'fghfgj ghjghj', 'ghjhgjhg', 'sumila.c@gmail.com', 567678678678, '', 2147483647, 'gfjhgjghj', 'hjhgjhgj', 'United Arab Emirates', 'ghjhgjgh', 'kkkkkk', 1, 0),
(341, 'fghfgj ghjghj', 'ghjhgjhg', 'sumila.c@gmail.com', 567678678678, '', 2147483647, 'gfjhgjghj', 'hjhgjhgj', 'United Arab Emirates', 'ghjhgjgh', 'kkkkkk', 2, 0),
(342, 'gjghjg ghjghj', 'ghjghjgh', 'bb@gmail.com', 456757567567, '', 567567567, 'ghjhgj', 'ghjhgjhg', 'Argentina', 'ghjghjgh', 'fghfghgfh', 1, 0),
(343, 'gjghjg ghjghj', 'ghjghjgh', 'bb@gmail.com', 456757567567, '', 567567567, 'ghjhgj', 'ghjhgjhg', 'Argentina', 'ghjghjgh', 'fghfghgfh', 2, 0),
(344, 'sumila c', 'comp', 'bb@gmail.com', 45657567567568, '', 57567567, 'fghfghfg', 'ssss', 'American Samoa', 'fghfghfg', 'fghfghgf', 1, 0),
(345, 'sumila c', 'comp', 'bb@gmail.com', 45657567567568, '', 57567567, 'fghfghfg', 'ssss', 'American Samoa', 'fghfghfg', 'fghfghgf', 2, 0),
(346, 'f l', 'comp', 'email@email.com', 987987980980, 'notes notes', 12345678, 'ap', 'st', 'United Arab Emirates', 'city', 'st', 1, 0),
(347, 'f l', 'comp1', 'e1@gmail.com', 879879089890, 'notes notes', 12345678, 'ap1', 'st1', 'Anguilla', 'city1', 'st', 2, 0),
(348, 'f1 l1', 'c1', 'e1@gmail.com', 90000000000, 'notes notes by ship', 123456, 'ap1', 'sa1', 'Australia', 'c1', 's1', 1, 0),
(349, 'f1 l1', 'c2', 'e2@gmail.com', 80000000000, 'notes notes by ship', 12345678, 'ap2', 'sa2', 'United Arab Emirates', 'c2', 's1', 2, 0),
(350, 'f l', 'c1', 'e1@gmail.com', 9539532141, 'notes del', 123456, 'a1', 's1', 'Netherlands Antilles', 't1', 'st', 1, 0),
(351, 'f l', 'c2', 'e2@gmail.com', 9999999999999999, 'notes del', 12345, 'a2', 's2', 'American Samoa', 't2', 'st', 2, 0),
(352, 'f1 l1', 'c1', 's1@gmail.com', 111111, 'nt nt', 1, 'ap1', 'sa1', 'United Arab Emirates', 't1', 'st1', 1, 0),
(353, 'f2 l2', 'c2', 's2@gmail.com', 222222, 'nt nt', 2, 'ap2', 'sa2', 'Afghanistan', 't2', 'st1', 2, 0),
(354, 'dffdh fghfgh', 'fghfgh', 'bb@gmail.com', 456456456, 'fgfdhfghgf', 556756756, 'fghfgh', 'fghfgh', 'Angola', 'fghfgh', 'fghfgh', 1, 0),
(355, 'dgdfgdf dfgdfg', 'fdgfdgdf', 'vv@gmail.com', 68678678678, 'fgfdhfghgf', 567657567, 'fdgfdg', 'fdgfdg', 'Afghanistan', 'dfgfdgfd', 'fghfgh', 2, 0),
(356, 'fgfhfg fghfgh', 'fghfgh', 'bb@gmail.com', 567568768768, 'hfghfghfgh', 456456456, 'ghjghj', 'fghfgjghj', 'Bangladesh', 'ghjhgjhg', '45645645', 1, 217),
(357, 'fgghjgh ghjghjhg', 'ghjhgj', 'bbbb@gmail.com', 56867876987, 'hfghfghfgh', 2147483647, 'ghjhgjhg', 'ghjhgj', 'Austria', 'ghjhgjh', '45645645', 2, 0),
(358, 'fgfhfg fghfgh', 'fghfgh', 'bb@gmail.com', 567568768768, 'hfghfghfgh', 456456456, 'ghjghj', 'fghfgjghj', 'Bangladesh', 'ghjhgjhg', '45645645', 1, 0),
(359, 'fgghjgh ghjghjhg', 'ghjhgj', 'bbbb@gmail.com', 56867876987, 'hfghfghfgh', 2147483647, 'ghjhgjhg', 'ghjhgj', 'Austria', 'ghjhgjh', '45645645', 2, 0),
(360, 'fhfgh fghfg', 'fghfghfg', 'bb@gmail.com', 57567567, 'dfgdfgdfg', 45657568, 'fghgfh', 'fghfgh', 'Azerbaijan', 'fghgfh', 'fghgfhfg', 1, 219),
(361, 'ffghfgh fghfgh', 'fghfghfg', 'cccc@gmail.com', 456567567567, 'dfgdfgdfg', 456456456, 'fghfghfgh', 'fghfghfg', 'Argentina', '567567567', 'fghgfhfg', 2, 219),
(362, 'hfghfgh fghfgh', 'fghfghfg', 'bb@gmail.com', 56756756756, 'hfghfghfgh', 567567567, 'fghfgh', 'fghfgh', 'Australia', 'fghfghfg', 'fghfgh', 1, 220),
(363, 'fghfghf fghfghfg', 'fghfgh', 'bbbb@gmail.com', 56867867979, 'hfghfghfgh', 567567567, 'fghfgh', 'fghfgh', 'Austria', 'fghfgh', 'fghfgh', 2, 220),
(364, 'f l', 'c', 'e1@gmail.com', 45567567, 'nt...', 123456, 'a', 's', 'American Samoa', 't', 's', 1, 221),
(365, 'f1 l1', 'c1', 'e2@gmail.com', 567567567, 'nt...', 123456, 'a1', 's1', 'Austria', 't1', 's', 2, 221),
(366, 'uioiuo uioui', 'uioiuo', 'bb@gmail.com', 567658769780, 'fghfghfghfg', 678769789, 'uiouio', 'uioui', 'Aruba', 'uioui', 'uioiu', 1, 222),
(367, 'uioiuo uioui', 'uioiuo', 'bb@gmail.com', 567658769780, 'fghfghfghfg', 678769789, 'uiouio', 'uioui', 'Aruba', 'uioui', 'uioiu', 2, 222),
(368, 'uyiyui yuiuyi', 'yuiyui', 'bb@gmail.com', 67876987087456, 'rtyrtyrtyrt', 679879789, 'yuiuyi', 'yuiyuiuy', 'Azerbaijan', 'yuiuyi', 'yuiuyi', 1, 223),
(369, 'uyiyui yuiuyi', 'yuiyui', 'bb@gmail.com', 67876987087456, 'rtyrtyrtyrt', 679879789, 'yuiuyi', 'yuiyuiuy', 'Azerbaijan', 'yuiuyi', 'yuiuyi', 2, 223),
(370, 'tyiuytiyu iyuiyu', 'yuiyui', 'vv@gmail.com', 4356456457, 'dfgfdgdf fdhfghfgh', 45645645, 'yuiuyiyu', 'yuiuyi', 'American Samoa', 'yuiuyi', 'st1', 1, 224),
(371, 'iyuiuyi yuiuyi', 'yuiuyi', 'vv1@gmail.com', 67867867876, 'dfgfdgdf fdhfghfgh', 45765756, 'yuiuyi', 'yuiuyiuy', 'American Samoa', 'yuiyui', 'st1', 2, 224),
(372, 'ffghfgjg hjkhjk', 'ghjghkh', 'bb@gmail.com', 5687686790, 'cvbcvb fgdfgdfg', 567568679, 'jkljkl', 'hjkhjl', 'Austria', 'jkljkl', 'st2', 1, 0),
(373, 'rtyrty rtyrty', 'rtyrty', 'ccc@gmail.com', 567567567, 'xcvcxbvcxb', 567567567, 'rtyrty', 'rtyrty', 'Azerbaijan', 'rtyrt', 'st', 1, 0),
(374, 'dgdfg dfgdfg', 'dfgdfg', 'bb@gmail.com', 56876867867, 'xcvcxbvcxb', 567568679, 'dfgdfg', 'dfgfdg', 'Australia', 'dfgfdg', 'st1', 2, 0),
(375, 'rtyrty rtyrty', 'rtyrty', 'ccc@gmail.com', 567567567, 'xcvcxbvcxb', 567567567, 'rtyrty', 'rtyrty', 'Azerbaijan', 'rtyrt', 'st', 1, 225),
(376, 'dgdfg dfgdfg', 'dfgdfg', 'bb@gmail.com', 56876867867, 'xcvcxbvcxb', 567568679, 'dfgdfg', 'dfgfdg', 'Australia', 'dfgfdg', 'st1', 2, 225),
(377, 'hgg ghjhgj', 'ghjhg', 'bb@gmail.com', 56756756, 'bcvbcvbcvb', 457657, 'ghjgh', 'ghjghjgh', 'Australia', 'ghjgh', 'st1', 1, 226),
(378, 'ghjghj ghjgh', 'jghjghj', 'bb@gmail.com', 56756756, 'bcvbcvbcvb', 56756756, 'ghjgh', 'ghjghj', 'Australia', 'ghjgh', 'st2', 2, 226),
(379, 'fhfgh fghfg', 'fghfg', 'bb@gmail.com', 6798789780, 'ghjghjghj', 567567568, 'fghfg', 'fghfg', 'Afghanistan', 'fghfg', 'fghfg', 1, 227),
(380, 'fghfgh fghfg', 'fghfg', 'bb@gmail.com', 567568, 'ghjghjghj', 567567, 'fghfg', 'fghfg', 'Bosnia and Herzegovina', 'fghfg', 'fghfghfghfgfgh', 2, 227),
(381, 'op[op[ op[po', 'op[op', 'ccc@gmail.com', 5675687678678, 'dgdfgdf xfgdfgfd', 67867867, 'op[op', 'op[op[', 'Anguilla', 'op[op', 'op[op', 1, 228),
(382, 'op[op[ op[po', 'op[op', 'ccc@gmail.com', 5675687678678, 'dgdfgdf xfgdfgfd', 67867867, 'op[op', 'op[op[', 'Anguilla', 'op[op', 'op[op', 2, 228),
(383, 'piupio iopio', 'iopio', 'bb@gmail.com', 568767876979, 'hgkhjkhjk', 757567, 'iopio', 'iopiop', 'Azerbaijan', 'iopio', 'iopio', 1, 229),
(384, 'piupio iopio', 'iopio', 'bb@gmail.com', 568767876979, 'hgkhjkhjk', 757567, 'iopio', 'iopiop', 'Azerbaijan', 'iopio', 'iopio', 2, 229),
(385, 'ipiop iopio', 'iopio', 'ccc@gmail.com', 567567567, 'ghjghjgh', 567567, 'gfjghj', 'iopio', 'Australia', '56756', 'fdghfd', 1, 230),
(386, 'ipiop iopio', 'iopio', 'ccc@gmail.com', 567567567, 'ghjghjgh', 567567, 'gfjghj', 'iopio', 'Australia', '56756', 'fdghfd', 2, 230),
(387, 'fdhfgh fghfg', 'hfghfgh', 'bb@gmail.com', 567658678769, 'gfjhgjgjhg', 2147483647, 'fghfg', 'fghfg', 'Australia', 'fghfg', 'fghfgh', 1, 0),
(388, 'fdhfgh fghfg', 'hfghfgh', 'bb@gmail.com', 567658678769, 'gfjhgjgjhg', 2147483647, 'fghfg', 'fghfg', 'Australia', 'fghfg', 'fghfgh', 2, 0),
(389, 'fdhfgh fghfg', 'hfghfgh', 'bb@gmail.com', 567658678769, 'gfjhgjgjhg', 2147483647, 'fghfg', 'fghfg', 'Australia', 'fghfg', 'fghfgh', 1, 0),
(390, 'fdhfgh fghfg', 'hfghfgh', 'bb@gmail.com', 567658678769, 'gfjhgjgjhg', 2147483647, 'fghfg', 'fghfg', 'Australia', 'fghfg', 'fghfgh', 2, 0),
(391, 'fdhfgh fghfg', 'hfghfgh', 'bb@gmail.com', 567658678769, 'gfjhgjgjhg', 2147483647, 'fghfg', 'fghfg', 'Australia', 'fghfg', 'fghfgh', 1, 0),
(392, 'fdhfgh fghfg', 'hfghfgh', 'bb@gmail.com', 567658678769, 'gfjhgjgjhg', 2147483647, 'fghfg', 'fghfg', 'Australia', 'fghfg', 'fghfgh', 2, 0),
(393, 'fdhfgh fghfg', 'hfghfgh', 'bb@gmail.com', 567658678769, 'gfjhgjgjhg', 2147483647, 'fghfg', 'fghfg', 'Australia', 'fghfg', 'fghfgh', 1, 0),
(394, 'fdhfgh fghfg', 'hfghfgh', 'bb@gmail.com', 567658678769, 'gfjhgjgjhg', 2147483647, 'fghfg', 'fghfg', 'Australia', 'fghfg', 'fghfgh', 2, 0),
(395, 'hgkhjk hjkhj', 'hjkhj', 'bb@gmail.com', 568768678769, 'jkhjkhjkhj', 5675686, 'hjkhjk', 'hjkhjk', 'Aruba', '567568', 'fghfgh', 1, 231),
(396, 'hgkhjk hjkhj', 'hjkhj', 'bb@gmail.com', 568768678769, 'jkhjkhjkhj', 5675686, 'hjkhjk', 'hjkhjk', 'Aruba', '567568', 'fghfgh', 2, 231),
(397, 'jghjghj ghjgh', 'jghjgh', 'bb@gmail.com', 76987978098098, 'jkhjkhj gfgjghjgh', 67867879, 'ghjhg', 'ghjgh', 'Argentina', 'ghjhg', 'hgjgh', 1, 0),
(398, 'jghjghj ghjgh', 'jghjgh', 'bb@gmail.com', 76987978098098, 'jkhjkhj gfgjghjgh', 67867879, 'ghjhg', 'ghjgh', 'Argentina', 'ghjhg', 'hgjgh', 2, 0),
(399, 'tutyu tyuty', 'tyutyu', 'bb@gmail.com', 678678678678, 'tyutyu', 678678678, 'tyuty', 'tyuty', 'Australia', 'tyuty', 'tyuty', 1, 232),
(400, 'tutyu tyuty', 'tyutyu', 'bb@gmail.com', 678678678678, 'tyutyu', 678678678, 'tyuty', 'tyuty', 'Australia', 'tyuty', 'tyuty', 2, 232),
(401, 'jhgjhgjhgj ghjgjkhgjk', 'jkhjkhkj', 'bb@gmail.com', 9809809809809, 'kljlkjlk', 98098098, 'hjkhjkhk', 'jkhjkhk', 'American Samoa', 'jkhjkhjk', 'kjkljlk', 1, 233),
(402, 'jhgjhgjhgj ghjgjkhgjk', 'jkhjkhkj', 'bb@gmail.com', 9809809809809, 'kljlkjlk', 98098098, 'hjkhjkhk', 'jkhjkhk', 'American Samoa', 'jkhjkhjk', 'kjkljlk', 2, 233),
(403, 'jghjgh jhgjghj', 'ghjgh', 'ccc@gmail.com', 567658679879, 'dgfdhfgh', 56768768, 'ghjghj', 'ghjghj', 'Australia', 'ghjgh', 'hfghfg', 1, 234),
(404, 'jghjgh jhgjghj', 'ghjgh', 'ccc@gmail.com', 567658679879, 'dgfdhfgh', 56768768, 'ghjghj', 'ghjghj', 'Australia', 'ghjgh', 'hfghfg', 2, 234),
(405, 'jghjgh jhgjghj', 'ghjgh', 'ccc@gmail.com', 567658679879, 'dgfdhfgh', 56768768, 'ghjghj', 'ghjghj', 'Australia', 'ghjgh', 'hfghfg', 1, 0),
(406, 'jghjgh jhgjghj', 'ghjgh', 'ccc@gmail.com', 567658679879, 'dgfdhfgh', 56768768, 'ghjghj', 'ghjghj', 'Australia', 'ghjgh', 'hfghfg', 2, 0),
(407, 'rtutyuty tyuty', 'utyuytt', 'bb@gmail.com', 457657568769, 'jkhjkhjkhkj', 2147483647, 'tyutyu', 'utyuty', 'Azerbaijan', 'tyutyu', 'utyu', 1, 236),
(408, 'rtutyuty tyuty', 'utyuytt', 'bb@gmail.com', 457657568769, 'jkhjkhjkhkj', 2147483647, 'tyutyu', 'utyuty', 'Azerbaijan', 'tyutyu', 'utyu', 2, 236),
(409, 'dfgdfgdf dfgdfg', 'dfgdfg', 'bb@gmail.com', 547567568679, 'fghfghfgh', 695121, 'sdgfdgdf', 'dfgdfg', 'United Arab Emirates', 'dfgdfg', 'dfgdfg', 1, 237),
(410, 'dfgdfgdf dfgdfg', 'dfgdfg', 'bb@gmail.com', 547567568679, 'fghfghfgh', 695121, 'sdgfdgdf', 'dfgdfg', 'United Arab Emirates', 'dfgdfg', 'dfgdfg', 2, 237),
(411, 'yhuiyui yuiyui', 'yuiyui', 'bb@gmail.com', 5676586798697, 'fghfghfgh', 2147483647, 'bb@gmail.com', 'yuiyui', 'Austria', '457567567', 'dfgdfgdf', 1, 238),
(412, 'yhuiyui yuiyui', 'yuiyui', 'bb@gmail.com', 5676586798697, 'fghfghfgh', 2147483647, 'bb@gmail.com', 'yuiyui', 'Austria', '457567567', 'dfgdfgdf', 2, 238),
(413, 'yhuiyui yuiyui', 'yuiyui', 'bb@gmail.com', 5676586798697, 'fghfghfgh', 2147483647, 'bb@gmail.com', 'yuiyui', 'Austria', '457567567', 'dfgdfgdf', 1, 0),
(414, 'yhuiyui yuiyui', 'yuiyui', 'bb@gmail.com', 5676586798697, 'fghfghfgh', 2147483647, 'bb@gmail.com', 'yuiyui', 'Austria', '457567567', 'dfgdfgdf', 2, 0),
(415, 'ryrty rtyrty', 'rtyrty', 'bb@gmail.com', 567568679869, 'fghfghfgh', 47657567, 'rtyrty', 'rtyrty', 'United Arab Emirates', 'ertryrt', 'Kerala', 1, 240);
INSERT INTO `billingdetails` (`billingid`, `name`, `companyname`, `email`, `phone`, `message`, `zip`, `apartment`, `address`, `country`, `city`, `state`, `billshipflag`, `orderid`) VALUES
(416, 'ryrty rtyrty', 'rtyrty', 'bb@gmail.com', 567568679869, 'fghfghfgh', 47657567, 'rtyrty', 'rtyrty', 'United Arab Emirates', 'ertryrt', 'Kerala', 2, 240),
(417, 'tyutyu tyutyu', 'tyuytu', 'bb@gmail.com', 4564575687658, '678768768', 56867867, 'tyuytu', 'tyutyu', 'United Arab Emirates', 'tyuty', 'tyuty', 1, 241),
(418, 'tyuytu tyutyu', 'tyutyu', 'cc@gmail.com', 5687658678, '678768768', 678678, 'tyutyu', 'tyuytu', 'Netherlands Antilles', 'tyutyu', 'tyuty', 2, 241),
(419, '567567 56756', '56756', 'nnn@gmail.com', 5756756756756, '', 2147483647, '56756756', '567567', 'Argentina', 'yrturtu', 'tyutyuty', 1, 242),
(420, '567567 56756', '56756', 'nnn@gmail.com', 5756756756756, '', 2147483647, '56756756', '567567', 'Argentina', 'yrturtu', 'tyutyuty', 2, 242),
(421, 'tuyrtuty utyuyt', 'tyuytu', 'ccc@gmail.com', 5687687987575, '6y7iuyiyui', 568768678, 'tyutyu', 'tyutyu', 'United Arab Emirates', 'tyutyu', 'rtyrtyt', 1, 243),
(422, 'tuyrtuty utyuyt', 'tyuytu', 'ccc@gmail.com', 5687687987575, '6y7iuyiyui', 568768678, 'tyutyu', 'tyutyu', 'United Arab Emirates', 'tyutyu', 'rtyrtyt', 2, 243),
(423, 'rtutyu tyutyu', 'tyutyu', 'bb@gmail.com', 568768769970, 'fghjgjghj', 568768768, 'tyutyuty', 'tyuty', 'Afghanistan', 'fghfghfg', 'fghfgh', 1, 244),
(424, 'rtutyu tyutyu', 'tyutyu', 'bb@gmail.com', 568768769970, 'fghjgjghj', 568768768, 'tyutyuty', 'tyuty', 'Afghanistan', 'fghfghfg', 'fghfgh', 2, 244),
(425, 'utyutyu tyuty', 'tyutyu', 'bb@gmail.com', 67876867876876, 'jhkhjkhjkhj', 6786786, 'tyutyu', 'tyutyu', 'Antigua & Barbuda', 'tyutyu', 'tyutyuy', 1, 245),
(426, 'utyutyu tyuty', 'tyutyu', 'bb@gmail.com', 67876867876876, 'jhkhjkhjkhj', 6786786, 'tyutyu', 'tyutyu', 'Antigua & Barbuda', 'tyutyu', 'tyutyuy', 2, 245),
(427, 'rtuytu tyuytu', 'tyuytu', 'bb@gmail.com', 769789789879, 'tyutyutyu', 567567567, 'tyutyu', 'tyutyu', 'Armenia', 'tyuytu', 'tyutyu', 1, 246),
(428, 'rtuytu tyuytu', 'tyuytu', 'bb@gmail.com', 769789789879, 'tyutyutyu', 567567567, 'tyutyu', 'tyutyu', 'Armenia', 'tyuytu', 'tyutyu', 2, 246),
(429, 'fghfgh fghfgh', 'fghfghfg', 'bb@gmail.com', 5687698708970, 'ytiuyimn errtedryrt', 567567567, 'fghfghfg', 'bb', 'United Arab Emirates', 'fghfgh', 'fdhfgh', 1, 247),
(430, 'fghfgh fghfgh', 'fghfghfg', 'bb@gmail.com', 5687698708970, 'ytiuyimn errtedryrt', 567567567, 'fghfghfg', 'bb', 'United Arab Emirates', 'fghfgh', 'fdhfgh', 2, 247),
(431, 'rtuytu tyuty', 'tyuytu', 'bb@gmail.com', 679879789789, '57567567567', 568768768, 'dfghfdhfgh', 'tyutyutyuty', 'United Arab Emirates', 'tyuty', 'tyutyuty', 1, 248),
(432, 'fghfgh fghfgh', 'fghfgh', 'bb@gmail.com', 56756756756, '57567567567', 678768678, 'fghfgh', 'fghfgh', 'United Arab Emirates', 'fghfgh', 'fghfgh', 2, 248),
(433, 'tutyutyu tyutyu', 'tyutyuyt', 'bb@gmail.com', 568678678678, 'tyutyutyuty', 678678678, 'tyutyuytu', 'ytuytuyt', 'United Arab Emirates', '567567567', 'ffghfghfg', 1, 249),
(434, 'tutyutyu tyutyu', 'tyutyuyt', 'bb@gmail.com', 568678678678, 'tyutyutyuty', 678678678, 'tyutyuytu', 'ytuytuyt', 'United Arab Emirates', '567567567', 'ffghfghfg', 2, 249),
(435, 'yuoyoui uiouioui', 'uiouio', 'bb@gmail.com', 678679879870, 'yuiuyiuyi', 79789789, 'uiouio', 'uiouio', 'United Arab Emirates', 'uiouio', 'uiouio', 1, 250),
(436, 'yuoyoui uiouioui', 'uiouio', 'bb@gmail.com', 678679879870, 'yuiuyiuyi', 79789789, 'uiouio', 'uiouio', 'United Arab Emirates', 'uiouio', 'uiouio', 2, 250),
(437, 'fghjgj ghjhgj', 'ghjghj', 'bb@gmail.com', 65876867867, '67867867876', 567568678, 'ghjghj', 'ghjghj', 'United Arab Emirates', 'ghjghj', 'ghjghjgh', 1, 251),
(438, 'fghjgj ghjhgj', 'ghjghj', 'bb@gmail.com', 65876867867, '67867867876', 567568678, 'ghjghj', 'ghjghj', 'United Arab Emirates', 'ghjghj', 'ghjghjgh', 2, 251),
(439, 'iyuiyu yuiyu', 'iyuiyu', 'bb@gmail.com', 5676867867867, 'uyoiuouio', 678678678, 'yuiyui', 'yuiyui', 'United Arab Emirates', 'yuiyui', 'yuiyui', 1, 252),
(440, 'iyuiyu yuiyu', 'iyuiyu', 'bb@gmail.com', 5676867867867, 'uyoiuouio', 678678678, 'yuiyui', 'yuiyui', 'United Arab Emirates', 'yuiyui', 'yuiyui', 2, 252),
(441, 'yuiyui yuiyui', 'yuiyui', 'bb@gmail.com', 678768678678, 'hjghjghj', 2147483647, 'yuiyuiy', 'yuiyuiyu', 'United Arab Emirates', 'yuiyuiyu', 'yuiyuiyu', 1, 253),
(442, 'yuiyui yuiyui', 'yuiyui', 'bb@gmail.com', 678768678678, 'hjghjghj', 2147483647, 'yuiyuiy', 'yuiyuiyu', 'United Arab Emirates', 'yuiyuiyu', 'yuiyuiyu', 2, 253),
(443, '78978978 78978978', '9789789', 'bb@gmail.com', 678769879870, 'yuiuyouio', 2147483647, 'hjghjghj', '78987987', 'United Arab Emirates', 'ghjghjgh', 'ghjghjgh', 1, 254),
(444, '78978978 78978978', '9789789', 'bb@gmail.com', 678769879870, 'yuiuyouio', 2147483647, 'hjghjghj', '78987987', 'United Arab Emirates', 'ghjghjgh', 'ghjghjgh', 2, 254),
(445, 'yuiyuiy yuiyui', 'yuiuyiuy', 'bb@gmail.com', 678678678678, 'fghfgjghj', 678768678, 'fghfgjghj', 'bb', 'United Arab Emirates', 'ghjghj', 'ghjghjhg', 1, 255),
(446, 'yuiyuiy yuiyui', 'yuiuyiuy', 'bb@gmail.com', 678678678678, 'fghfgjghj', 678768678, 'fghfgjghj', 'bb', 'United Arab Emirates', 'ghjghj', 'ghjghjhg', 2, 255);

-- --------------------------------------------------------

--
-- Table structure for table `blogcontents`
--

CREATE TABLE `blogcontents` (
  `blogid` int(11) NOT NULL,
  `blogtitle` varchar(250) NOT NULL,
  `blogshortdesc` tinytext NOT NULL,
  `bloglongdesc` longtext NOT NULL,
  `picture` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `addedby` varchar(255) NOT NULL DEFAULT 'Admin',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `videourl` varchar(255) NOT NULL,
  `picture2` varchar(255) NOT NULL,
  `blogdesc2` text NOT NULL,
  `quotedesc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogcontents`
--

INSERT INTO `blogcontents` (`blogid`, `blogtitle`, `blogshortdesc`, `bloglongdesc`, `picture`, `active`, `addedby`, `date`, `videourl`, `picture2`, `blogdesc2`, `quotedesc`) VALUES
(1, 'Ways to Increase Trust', 'SI property has completed over 50 top-of-line projects ,trusted builders in Trivandrum', 'Leela Madhavam Legacy by SI Property consists of a total of 39 apartments in 2 blocks. Leela consisting of 2 basements + Ground + 11 floors with 35 apartments and Madhavam consisting of Ground + 4 floors with 4 apartments, spread across 42 cents of land. Consisting only 3 BHK apartments, the project reflects class, convenience and security due to its proximity to the military contonment and other necessary services.', '1725280518blog.jpeg', 1, 'Admin', '2024-09-04 11:22:18', 'https://www.youtube.com/embed/qpHjaApU8zI?si=SXZKSxBJQMt4oh20', 'news-1.jpg', 'With us, every location that’s shortlisted, every floor plan that’s designed, and every amenity that’s chosen is all meant to improve and enhance the way you live', 'SI property has completed over 50 top-of-line projects making them one of the most trusted builders in Trivandrum'),
(33, 'The Added Value Social Worker ', 'SI property has completed over 50 top-of-line projects ,trusted builders in Trivandrum', 'Leela Madhavam Legacy by SI Property consists of a total of 39 apartments in 2 blocks. Leela consisting of 2 basements + Ground + 11 floors with 35 apartments and Madhavam consisting of Ground + 4 floors with 4 apartments, spread across 42 cents of land. Consisting only 3 BHK apartments, the project reflects class, convenience and security due to its proximity to the military contonment and other necessary services.', '1725280518blog.jpeg', 0, 'Admin', '2024-09-04 11:36:46', 'https://www.youtube.com/embed/qpHjaApU8zI?si=SXZKSxBJQMt4oh20', 'news-1.jpg', 'With us, every location that’s shortlisted, every floor plan that’s designed, and every amenity that’s chosen is all meant to improve and enhance the way you live', 'SI property has completed over 50 top-of-line projects'),
(34, 'The Added Value Social Worker ', 'SI property has completed over 50 top-of-line projects ,trusted builders in Trivandrum', 'Leela Madhavam Legacy by SI Property consists of a total of 39 apartments in 2 blocks. Leela consisting of 2 basements + Ground + 11 floors with 35 apartments and Madhavam consisting of Ground + 4 floors with 4 apartments, spread across 42 cents of land. Consisting only 3 BHK apartments, the project reflects class, convenience and security due to its proximity to the military contonment and other necessary services.', '1725280518blog.jpeg', 1, 'Admin', '2024-09-04 11:36:49', 'https://www.youtube.com/embed/qpHjaApU8zI?si=SXZKSxBJQMt4oh20', 'news-1.jpg', 'With us, every location that’s shortlisted, every floor plan that’s designed, and every amenity that’s chosen is all meant to improve and enhance the way you live', 'SI property has completed over 50 top-of-line projects'),
(35, 'Ways to Increase Trust', 'SI property has completed over 50 top-of-line projects ,trusted builders in Trivandrum', 'Leela Madhavam Legacy by SI Property consists of a total of 39 apartments in 2 blocks. Leela consisting of 2 basements + Ground + 11 floors with 35 apartments and Madhavam consisting of Ground + 4 floors with 4 apartments, spread across 42 cents of land. Consisting only 3 BHK apartments, the project reflects class, convenience and security due to its proximity to the military contonment and other necessary services.', '1725280518blog.jpeg', 1, 'Admin', '2024-09-04 11:36:52', 'https://www.youtube.com/embed/qpHjaApU8zI?si=SXZKSxBJQMt4oh20', 'news-1.jpg', 'With us, every location that’s shortlisted, every floor plan that’s designed, and every amenity that’s chosen is all meant to improve and enhance the way you live', 'SI property has completed over 50 top-of-line projects'),
(36, 'The Added Value Social Worker ', 'SI property has completed over 50 top-of-line projects ,trusted builders in Trivandrum', 'Leela Madhavam Legacy by SI Property consists of a total of 39 apartments in 2 blocks. Leela consisting of 2 basements + Ground + 11 floors with 35 apartments and Madhavam consisting of Ground + 4 floors with 4 apartments, spread across 42 cents of land. Consisting only 3 BHK apartments, the project reflects class, convenience and security due to its proximity to the military contonment and other necessary services.', '1725280518blog.jpeg', 1, 'Admin', '2024-09-04 11:36:54', 'https://www.youtube.com/embed/qpHjaApU8zI?si=SXZKSxBJQMt4oh20', 'news-1.jpg', 'With us, every location that’s shortlisted, every floor plan that’s designed, and every amenity that’s chosen is all meant to improve and enhance the way you live', 'SI property has completed over 50 top-of-line projects'),
(37, 'The Added Value Social Worker ', 'SI property has completed over 50 top-of-line projects ,trusted builders in Trivandrum', 'Leela Madhavam Legacy by SI Property consists of a total of 39 apartments in 2 blocks. Leela consisting of 2 basements + Ground + 11 floors with 35 apartments and Madhavam consisting of Ground + 4 floors with 4 apartments, spread across 42 cents of land. Consisting only 3 BHK apartments, the project reflects class, convenience and security due to its proximity to the military contonment and other necessary services.', '1725280518blog.jpeg', 1, 'Admin', '2024-09-04 11:36:56', 'https://www.youtube.com/embed/qpHjaApU8zI?si=SXZKSxBJQMt4oh20', 'news-1.jpg', 'With us, every location that’s shortlisted, every floor plan that’s designed, and every amenity that’s chosen is all meant to improve and enhance the way you live', 'SI property has completed over 50 top-of-line projects');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(12) NOT NULL,
  `blog_name` varchar(150) NOT NULL,
  `blog_canonial_name` varchar(150) NOT NULL,
  `blog_subject` varchar(250) NOT NULL,
  `blog_content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `blog_on_prod` int(12) NOT NULL DEFAULT 0,
  `blog_on_catg` int(12) NOT NULL DEFAULT 0,
  `blog_on_brand` int(12) NOT NULL DEFAULT 0,
  `blog_featured_image` varchar(150) DEFAULT NULL,
  `blog_added_by` varchar(255) NOT NULL,
  `blog_added_date` datetime NOT NULL,
  `blog_updated_by` int(12) NOT NULL,
  `blog_updated_date` datetime NOT NULL,
  `blog_status` int(5) NOT NULL DEFAULT 1 COMMENT '0:Trashed; 1:Draft; 2:Published;',
  `blog_notify` int(2) NOT NULL DEFAULT 1 COMMENT '0:No notification to customer; 1:Send notification mail to opt-in customers;',
  `authorimage` varchar(255) NOT NULL,
  `blog_short` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`blog_id`, `blog_name`, `blog_canonial_name`, `blog_subject`, `blog_content`, `blog_on_prod`, `blog_on_catg`, `blog_on_brand`, `blog_featured_image`, `blog_added_by`, `blog_added_date`, `blog_updated_by`, `blog_updated_date`, `blog_status`, `blog_notify`, `authorimage`, `blog_short`) VALUES
(1, 'The Added Value Social Worker', 'blog-slug', 'The Added Value Social Worker\r\n\r\n', 'Lorem ipsum dolor sit amet consectetur adipisicing sed.', 0, 0, 0, 'news-1.jpg', 'Admin', '2023-03-18 11:20:08', 1, '2023-04-01 11:16:58', 2, 1, 'logo-light.png', 'Lorem ipsum dolor sit amet consectetur adipisicing sed.'),
(2, 'The Added Value Social Worker', 'tips-for-a-successful-airport-transfer-service', 'Ways to Increase Trust', 'Lorem ipsum dolor sit amet consectetur adipisicing sed.easier, it is essential to prepare ahead of time. Consider if you prefer renting a car or using taxi services for your transfer needs &amp;ndash; then look into whether a limited mileage package will suffice compared to an unlimited one since they have varying rates. To get the best value while ensuring availability, book early! Read up on fare structures to know what type of airport transfer service meets all your requirements within budget constraints. &lt;/div&gt;', 0, 0, 0, 'news-1.jpg', 'Admin', '2023-04-01 11:18:26', 1, '2024-08-08 11:21:37', 2, 1, 'logo-light.png', 'Lorem ipsum dolor sit amet consectetur adipisicing sed.'),
(3, 'The Added Value Social Worker', 'tips-for-a-successful-airport-transfer-service', 'Ways to Increase Trust', 'Lorem ipsum dolor sit amet consectetur adipisicing sed.', 0, 0, 0, 'news-1.jpg', 'Admin', '2023-04-01 11:18:26', 1, '2024-08-08 11:21:50', 2, 1, 'logo-light.png', 'Lorem ipsum dolor sit amet consectetur adipisicing sed.');

-- --------------------------------------------------------

--
-- Table structure for table `blog_images`
--

CREATE TABLE `blog_images` (
  `blog_img_id` int(12) NOT NULL,
  `blog_img_bgid` int(12) NOT NULL COMMENT 'Blog ID',
  `blog_img_image` varchar(100) NOT NULL,
  `blog_img_description` varchar(100) NOT NULL,
  `blog_img_added_user` int(12) NOT NULL,
  `blog_img_status` int(5) NOT NULL COMMENT '0:Inactive; 1:Active;',
  `blog_img_added_date` datetime NOT NULL,
  `blog_img_updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Blog image lisiting table';

--
-- Dumping data for table `blog_images`
--

INSERT INTO `blog_images` (`blog_img_id`, `blog_img_bgid`, `blog_img_image`, `blog_img_description`, `blog_img_added_user`, `blog_img_status`, `blog_img_added_date`, `blog_img_updated_date`) VALUES
(1, 1, 'blog1.jpg', '', 1, 1, '0000-00-00 00:00:00', '2023-03-18 16:50:08'),
(2, 2, 'blog2.jpg', '', 1, 1, '0000-00-00 00:00:00', '2023-04-01 16:48:26');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(12) NOT NULL,
  `brand_name` varchar(50) NOT NULL,
  `brand_canonial_name` varchar(100) NOT NULL,
  `brand_image` varchar(150) NOT NULL,
  `brand_desc` longtext NOT NULL,
  `brand_added_user` int(12) NOT NULL,
  `brand_status` int(5) NOT NULL COMMENT '0:Inactive; 1:Active; 2:Trashed;',
  `brand_added_date` datetime NOT NULL,
  `brand_updated_date` datetime NOT NULL DEFAULT current_timestamp(),
  `addinmenu` int(11) NOT NULL,
  `brand_orderno` int(11) NOT NULL,
  `brandshortdesc` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Brands of products';

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_canonial_name`, `brand_image`, `brand_desc`, `brand_added_user`, `brand_status`, `brand_added_date`, `brand_updated_date`, `addinmenu`, `brand_orderno`, `brandshortdesc`) VALUES
(1, 'Schneider', 'schneider', 'se_brand.png', 'Leading the way in energy management and automation, Schneider Electric delivers innovative solutions for efficiency and sustainability.', 2, 1, '2021-07-15 16:51:15', '2024-07-16 10:44:23', 0, 100, ''),
(2, 'ABB', 'abb', 'abb_brand.png', 'A pioneering technology leader, ABB offers a wide range of products and services, from electrification to industrial automation and robotics.', 2, 1, '2021-07-16 16:45:11', '2024-06-18 05:19:23', 0, 4, ''),
(3, 'EATON', 'eaton', 'eaton_brand.png', 'A global power management company, Eaton provides electrical solutions that enhance reliability and safety across various industries.', 2, 1, '2021-07-18 05:22:33', '2024-07-16 10:45:48', 0, 5, ''),
(4, 'GM', 'gm', 'gm_brand.png', 'GM Electricals is a trusted name in the electrical industry, offering a diverse range of products known for their reliability and performance.', 2, 0, '2023-10-22 10:53:47', '2023-11-24 09:42:59', 0, 0, ''),
(5, 'Siemens', 'siemens', '001.jpg', 'Siemens is at the forefront of technology, providing cutting-edge solutions in electrification, automation, and digitalization for a sustainable future.', 2, 0, '2023-11-24 09:34:02', '2023-11-24 09:42:16', 0, 0, ''),
(6, 'Himel', 'himel', '002.jpg', 'Himel specializes in electrical enclosures, delivering high-quality products that ensure the safety and protection of electrical components.', 2, 1, '2023-11-24 09:46:03', '2023-11-24 09:46:03', 0, 0, ''),
(7, 'Bticino', 'bticino', 'BTicino.jpg', 'Bticino, a Legrand brand, is synonymous with stylish and innovative electrical solutions, including wiring devices and home automation.', 2, 1, '2023-11-24 10:31:05', '2023-11-24 10:31:05', 0, 0, ''),
(8, 'Omron', 'omron', 'omron.jpg', 'Omron is a global leader in automation, sensing, and control technologies, providing advanced solutions for various industries.', 2, 1, '2023-11-24 10:32:16', '2024-07-16 10:44:46', 0, 120, ''),
(9, 'Allen Bradley', 'allen-bradley', 'allen-bradley.jpg', 'As part of Rockwell Automation, Allen Bradley offers a comprehensive range of automation and control solutions for industries worldwide.', 2, 2, '2023-11-24 10:33:22', '2023-11-24 10:35:38', 0, 0, ''),
(10, 'RR Kabel', 'rr-kabel', 'RR_Logo.jpg', 'RR Kabel is a trusted name in the cable industry, known for delivering high-quality and durable electrical and communication cables.', 2, 1, '2023-11-24 10:36:56', '2023-11-24 10:36:56', 0, 0, ''),
(11, 'Allen Bradley', 'allen-bradley-1', 'allen-bradley.jpg', 'As part of Rockwell Automation, Allen Bradley offers a comprehensive range of automation and control solutions for industries worldwide.', 2, 2, '2023-11-24 10:38:12', '2023-11-24 10:38:12', 0, 0, ''),
(12, 'Alfanar', 'alfanar', 'alfanar.jpg', 'Alfanar is a diversified electrical and industrial company delivering excellence in engineering, manufacturing, and construction.', 2, 1, '2023-11-24 10:40:04', '2024-01-17 08:03:44', 1, 3, ''),
(26, 'Finder', 'Finder', '13.png', 'Today Finder produces over 14,500 different types of electromechanical and electronic devices for the residential, commercial and industrial sectors, all of them manufactured in our European facilities in Italy, France and Spain.', 1, 1, '0000-00-00 00:00:00', '2024-06-14 16:57:11', 10, 10, 'Today Finder produces over 14,500 different types of electromechanical and electronic devices for the residential, commercial and industrial sectors, all of them manufactured in our European facilities in Italy, France and Spain.'),
(27, 'Selec', 'Selec', '15.png', 'Selec Controls Pvt. Ltd. is an Indian manufacturer and a global supplier of high-quality, innovative products for Electrical Measurement, Power Quality, Industrial Automation, Process Control, Solar, and Electrical Protection & control.', 2, 1, '0000-00-00 00:00:00', '2024-07-16 10:46:55', 0, 150, 'Selec Controls Pvt. Ltd. is an Indian manufacturer and a global supplier of high-quality, innovative products for Electrical Measurement, Power Quality, Industrial Automation, Process Control, Solar, and Electrical Protection & control.'),
(28, 'Weldneser', 'Weldneser', '16.png', 'Weldneser understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nWeldneser is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 0, 1, '0000-00-00 00:00:00', '2024-06-14 18:05:33', 1, 1, 'Weldneser understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n'),
(29, 'Schmersal', 'Schmersal', '17.png', 'Schmersal understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nSchmersal is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 2, 1, '0000-00-00 00:00:00', '2024-06-23 16:26:30', 1, 1, 'Schmersal understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n'),
(30, 'Schmersal', 'schmersal-1', '18.png', 'Schmersal understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nSchmersal is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 2, 1, '0000-00-00 00:00:00', '2024-06-23 16:33:13', 1, 1, 'Schmersal understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.'),
(31, 'Leuze Electronic', 'Leuze Electronic', '19.png', 'Leuze Electronic understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nLeuze Electronic is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 0, 1, '0000-00-00 00:00:00', '2024-06-14 18:05:33', 1, 1, 'Leuze Electronic understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n'),
(32, 'ELDON', 'eldon', '20.png', 'ELDON understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nELDON is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 2, 1, '0000-00-00 00:00:00', '2024-06-23 16:59:07', 1, 1, 'ELDON understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.'),
(33, '3M', '3m', '21.png', '3M understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\n3M is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 2, 1, '0000-00-00 00:00:00', '2024-06-23 16:58:13', 1, 1, '3M understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.'),
(34, 'Gewiss', 'gewiss', '22.png', 'Gewiss understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nGewiss  is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 2, 1, '0000-00-00 00:00:00', '2024-06-23 16:57:30', 1, 1, 'Gewiss understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.'),
(35, 'IFM', 'ifm', '23.png', 'IFM understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nIFM is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 2, 1, '0000-00-00 00:00:00', '2024-06-23 16:55:50', 1, 1, 'IFM understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.'),
(36, 'Wago', 'wago', '24.png', 'Wago understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nWago is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 2, 1, '0000-00-00 00:00:00', '2024-06-23 16:54:50', 1, 1, 'Wago understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.'),
(37, 'Dorman Smith', 'Dorman_Smith', '25.png', 'Dorman Smith understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nDorman Smith is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 0, 1, '0000-00-00 00:00:00', '2024-06-14 18:05:33', 1, 1, 'Dorman Smith understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n'),
(38, 'Phoenix', 'phoenix-1', '26.png', 'Phoenix understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nPhoenix  is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 2, 1, '0000-00-00 00:00:00', '2024-06-23 16:51:11', 1, 1, 'Phoenix understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.'),
(39, 'Phoenix', 'phoenix', '27.png', 'Phoenix understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nPhoenix  is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 2, 1, '0000-00-00 00:00:00', '2024-06-23 16:50:03', 1, 1, 'Phoenix understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.'),
(40, 'Weidmuller', 'weidmuller', '28.png', 'Weidmuller understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nWeidmuller is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 2, 1, '0000-00-00 00:00:00', '2024-06-23 16:49:09', 1, 1, 'Weidmuller understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.'),
(41, 'D-Link', 'd-link', '29.png', 'D-Link understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nD-Link is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 2, 1, '0000-00-00 00:00:00', '2024-06-23 16:45:36', 1, 1, 'D-Link understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.'),
(42, 'Weq', 'weq', '30.png', 'Weq understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nWeq is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 2, 1, '0000-00-00 00:00:00', '2024-06-23 16:44:13', 1, 1, 'Weq understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.'),
(43, 'Hensel', 'hensel', '31.png', 'Hensel understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nHensel is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 2, 1, '0000-00-00 00:00:00', '2024-06-23 16:43:19', 1, 1, 'Hensel understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.'),
(44, 'OBO', 'obo', '32.png', 'OBO understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nOBO is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 2, 1, '0000-00-00 00:00:00', '2024-06-23 16:42:33', 1, 1, 'OBO understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.'),
(45, 'SCAME', 'scame', '33.png', 'SCAME understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nSCAME is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 2, 1, '0000-00-00 00:00:00', '2024-06-23 16:41:48', 1, 1, 'SCAME understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.'),
(46, 'ETE', 'ete', '34.png', 'ETE understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.\r\n\r\nETE is a UK independent business situated in Braintree, with a Design and Technical Department in Preston and a Sheet Metal Division in Clacton', 2, 1, '0000-00-00 00:00:00', '2024-06-23 16:40:58', 1, 1, 'ETE understands the needs of both the client and installer and we focus on; Technical and customer support, project management and product quality.');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `carouselid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title2` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `title3` varchar(255) NOT NULL,
  `alttagimg2` varchar(255) NOT NULL,
  `alttagimg3` varchar(255) NOT NULL,
  `alttagimg1` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `title4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`carouselid`, `title`, `title2`, `picture`, `title3`, `alttagimg2`, `alttagimg3`, `alttagimg1`, `active`, `title4`) VALUES
(2, 'Welcome to Electrical Junction', 'CIRCUIT BREAKER', 'banner-1.png', 'Best price ', '', '', '', 1, 'Upto 10% Offer'),
(9, 'Welcome to Electrical Junction', 'CIRCUIT BREAKER', '1709641935carousel.png', 'Best price ', '', '', '', 1, 'Upto 10% Offer'),
(10, 'Welcome to Electrical Junction', 'CIRCUIT BREAKER', '1709641948carousel.png', 'Best price ', '', '', '', 1, 'Upto 10% Offer');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(12) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_canonial_name` varchar(100) NOT NULL,
  `cat_image` varchar(150) NOT NULL,
  `cat_desc` longtext NOT NULL,
  `cat_added_user` int(12) NOT NULL,
  `cat_status` int(5) NOT NULL COMMENT '0:Inactive; 1:Active;',
  `cat_added_date` datetime NOT NULL,
  `cat_updated_date` datetime NOT NULL DEFAULT current_timestamp(),
  `addinmenu` int(11) NOT NULL,
  `cat_orderno` int(11) NOT NULL,
  `cat_shdesc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Category of products';

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_canonial_name`, `cat_image`, `cat_desc`, `cat_added_user`, `cat_status`, `cat_added_date`, `cat_updated_date`, `addinmenu`, `cat_orderno`, `cat_shdesc`) VALUES
(1, 'Residential', '', '<i class=\"icon-1\"></i>', '', 0, 1, '0000-00-00 00:00:00', '2024-09-03 09:58:14', 0, 0, ''),
(2, 'Commercial', '', '<i class=\"icon-2\"></i>', '', 0, 1, '0000-00-00 00:00:00', '2024-09-03 09:58:47', 0, 0, ''),
(3, 'Appartment', '', '<i class=\"icon-2\"></i>', '', 0, 1, '0000-00-00 00:00:00', '2024-09-03 09:58:47', 0, 0, ''),
(4, 'Industrial', '', '<i class=\"icon-4\"></i>', '', 0, 1, '0000-00-00 00:00:00', '2024-09-03 10:00:16', 0, 0, ''),
(5, 'Building Code', '', '<i class=\"icon-5\"></i>', '', 0, 1, '0000-00-00 00:00:00', '2024-09-03 10:00:16', 0, 0, ''),
(6, 'Land', '', '<i class=\"icon-6\"></i>', '', 0, 1, '0000-00-00 00:00:00', '2024-09-03 10:00:16', 0, 0, ''),
(7, 'Floor Area', '', '<i class=\"icon-7\"></i>', '', 0, 1, '0000-00-00 00:00:00', '2024-09-03 10:00:16', 0, 0, ''),
(8, 'Communal land', '', '<i class=\"icon-8\"></i>', '', 0, 1, '0000-00-00 00:00:00', '2024-09-03 10:00:16', 0, 0, ''),
(9, 'Offices', '', '<i class=\"icon-9\"></i>', '', 0, 1, '0000-00-00 00:00:00', '2024-09-03 10:00:16', 0, 0, ''),
(10, 'Factory', '', '<i class=\"icon-10\"></i>', '', 0, 1, '0000-00-00 00:00:00', '2024-09-03 10:00:16', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `contactenquiries`
--

CREATE TABLE `contactenquiries` (
  `enquiryid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phoneno` bigint(20) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactenquiries`
--

INSERT INTO `contactenquiries` (`enquiryid`, `name`, `phoneno`, `emailid`, `subject`, `message`, `date`) VALUES
(254, 'sumi', 9497174444, 'sumila@gmail.com', 'subject', 'message', '2024-09-02'),
(255, 'vvvvv', 5686787978978, 'bbbb@gmail.com', 'dfgdfgdfgdf', 'dfgdfgdfgdfg', '2024-09-03'),
(256, 'nnnnn', 7777777777777777, 'ccc@gmail.com', 'xxxxxx', 'ggg hhhh', '2024-09-03'),
(257, 'dgdfgdfgdfg', 56867879789780, 'bbbb@gmail.com', 'sfsdfsdfsdf', 'sdfsdfsdfsdf', '2024-09-04'),
(258, 'test', 567868679878978, 'tinku@gmail.com', 'sssss', 'mmmmmm', '2024-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `contact_id` int(11) NOT NULL,
  `emailid` varchar(180) NOT NULL,
  `phoneno` varchar(100) NOT NULL,
  `location` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `state` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `emailid2` varchar(255) NOT NULL,
  `whatsapp` varchar(15) NOT NULL,
  `phoneno1` varchar(50) NOT NULL,
  `pinno` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`contact_id`, `emailid`, `phoneno`, `location`, `status`, `state`, `country`, `emailid2`, `whatsapp`, `phoneno1`, `pinno`) VALUES
(7, 'mail@siproperty.int', '91 944716 99880', 'Silver Oaks, Near Golf Club, Kowdiarr, Trivandrum,\r\n                              ', 1, 'Kerala', 'India', 'marketing@siproperty.int', '91 944716 9988', '91 944716 99881', '695121');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `cus_id` int(12) NOT NULL,
  `customer_id` int(12) DEFAULT NULL COMMENT 'If Contacted by a Customer',
  `is_enquiry` int(2) NOT NULL DEFAULT 0 COMMENT '0:Contact us; 1:Enquiry;',
  `get_in_touch` int(2) NOT NULL DEFAULT 0 COMMENT '1: Submission from get in touch form',
  `enq_prod_id` int(12) DEFAULT NULL COMMENT 'Enquiry about a car',
  `cus_name` varchar(50) NOT NULL,
  `cus_email` varchar(100) NOT NULL,
  `cus_phone` varchar(15) NOT NULL,
  `cus_subject` varchar(50) NOT NULL,
  `cus_message` longtext NOT NULL,
  `cus_added_date` datetime NOT NULL DEFAULT current_timestamp(),
  `cus_updated_user` int(12) DEFAULT NULL,
  `cus_status` int(5) NOT NULL COMMENT '0: Trashed; 1: Unreaded; 2:Readed; 3: Contacted; 4: Analysing; 5: Resolved; 6: Ignore;',
  `brand` varchar(100) NOT NULL,
  `producttype` varchar(100) NOT NULL,
  `type` int(1) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data from contact us form';

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`cus_id`, `customer_id`, `is_enquiry`, `get_in_touch`, `enq_prod_id`, `cus_name`, `cus_email`, `cus_phone`, `cus_subject`, `cus_message`, `cus_added_date`, `cus_updated_user`, `cus_status`, `brand`, `producttype`, `type`, `country`) VALUES
(6, NULL, 0, 1, NULL, 'touch2', 'touch2@example.com', '444444444', 'Get in Touch submission by touch2', 'Get in Touch submission by touch2 regarding promotion ', '2023-05-14 12:00:20', 2023, 2, '', '', 0, ''),
(7, NULL, 0, 0, NULL, '', '', '', '', '', '2024-01-15 15:33:44', NULL, 0, '', '', 0, ''),
(14, NULL, 0, 0, NULL, 'sddgdfgdfg', 'bbbbb@gmail.com', '', 'fsfssdfsd', 'dfdsfsdfds', '2024-01-15 15:54:17', NULL, 0, '', '', 0, ''),
(16, NULL, 0, 0, NULL, 'fghfghfgj', 'bbbbb@gmail.com', '', 'fsdfsdfdsf', 'dfsdfds', '2024-01-15 16:01:25', NULL, 0, '', '', 0, ''),
(17, NULL, 0, 0, NULL, 'gggggg', 'bbbbb@gmail.com', '', 'fgfhgfhgfhg', 'hgfhfhfhf', '2024-01-15 16:08:28', NULL, 0, '', '', 0, ''),
(19, NULL, 0, 0, NULL, 'sdfsddgdfg', 'bbbbb@gmail.com', '', '34534645645', '6456456456456', '2024-01-15 16:14:59', NULL, 0, '', '', 0, ''),
(20, NULL, 0, 0, NULL, 'sdfdfd', 'bbbbb@gmail.com', '', 'sdfsdfsd', 'dgdgdfgdfg', '2024-01-17 11:59:26', NULL, 0, '', '', 0, ''),
(24, NULL, 0, 0, NULL, 'name', 'cccc@gmail.com', '345353453', 'sub', 'msg', '2024-03-11 16:27:17', NULL, 0, '', 'prdtype', 1, ''),
(25, NULL, 0, 0, NULL, 'name', 'bbbbb@gmail.com', '99999999999999', 'sub', 'msg', '2024-03-11 16:29:25', NULL, 0, 'brd', 'prd type', 1, ''),
(27, NULL, 0, 0, NULL, ' Sumila', 'sumila.c@gmail.com', '65765876876', 'gfdgdfgdfg', 'dfgdfgdfgdfg', '2024-03-15 15:54:52', NULL, 0, 'dfgfdgdfg', 'dfgdfgdfg', 1, ''),
(28, NULL, 0, 0, NULL, ' Sumila', 'sumila.c@gmail.com', '65765876876', 'lklk;lk;lk', 'jkljlkjlkjlk', '2024-03-16 17:38:50', NULL, 0, 'hkhjkjlkj', '9979009', 1, ''),
(29, NULL, 0, 0, NULL, ' Sumila', 'sumila.c@gmail.com', '65765876876', 'jhjkhkjhk', 'jlkjlkjlkjlkjkl', '2024-03-16 17:40:29', NULL, 0, 'jkjlkljkl', 'kjlkjljll', 2, ''),
(30, NULL, 0, 0, NULL, 'test@gmail.com', 'test@gmail.com', '56867867876', 'erteryrt', 'tyutyutyuyt', '2024-06-08 20:13:28', NULL, 0, 'rtuyrtutyuty', 'tutyuty', 1, ''),
(31, NULL, 0, 0, NULL, 'test@gmail.com', 'test@gmail.com', '56867867876', 'gdfgfdhfghf', 'fghfhfghfgh', '2024-06-08 20:49:50', NULL, 0, 'fghgfhfgh', 'fghfghfg', 1, ''),
(32, NULL, 0, 0, NULL, 'test@gmail.com', 'test@gmail.com', '56867867876', 'gdfgfdhfghf', 'fghfhfghfgh', '2024-06-08 20:50:07', NULL, 0, 'fghgfhfgh', 'fghfghfg', 1, ''),
(33, NULL, 0, 0, NULL, 'test@gmail.com', 'test@gmail.com', '56867867876', 'gdfgfdhfghf', 'fghfhfghfgh', '2024-06-08 20:51:04', NULL, 0, 'fghgfhfgh', 'fghfghfg', 1, ''),
(36, NULL, 0, 0, NULL, 'test2', 'test2@gmail.com', '999999999999', 'khjkhj', 'hjkhjk', '2024-06-18 14:14:59', NULL, 0, 'hjkhjk', 'hjkhjkhj', 2, ''),
(37, NULL, 0, 0, NULL, 'test2', 'test2@gmail.com', '999999999999', 'uoiiuoipoipo', 'ouioipoipoiop', '2024-06-20 20:43:31', NULL, 0, 'iuiouiouo', 'bbbbb', 2, ''),
(38, NULL, 0, 0, NULL, 'test2', 'test2@gmail.com', '999999999999', 'uoiiuoipoipo', 'ouioipoipoiop', '2024-06-20 20:43:48', NULL, 0, 'iuiouiouo', 'bbbbb', 2, ''),
(39, NULL, 0, 0, NULL, 'test2', 'test2@gmail.com', '999999999999', 'uoiiuoipoipo', 'ouioipoipoiop', '2024-06-20 20:43:58', NULL, 0, 'iuiouiouo', 'bbbbb', 2, ''),
(40, NULL, 0, 0, NULL, 'test2', 'test2@gmail.com', '999999999999', 'uoiiuoipoipo', 'ouioipoipoiop', '2024-06-20 20:44:07', NULL, 0, 'iuiouiouo', 'bbbbb', 2, ''),
(41, NULL, 0, 0, NULL, 'test2', 'test2@gmail.com', '999999999999', 'uoiiuoipoipo', 'ouioipoipoiop', '2024-06-20 20:46:51', NULL, 0, 'iuiouiouo', 'bbbbb', 2, ''),
(42, NULL, 0, 0, NULL, 'test2', 'test2@gmail.com', '999999999999', 'uoiiuoipoipo', 'ouioipoipoiop', '2024-06-20 20:48:00', NULL, 0, 'iuiouiouo', 'bbbbb', 2, ''),
(43, NULL, 0, 0, NULL, 'tyutyutyu', 'bbb@gmail.com', '6679789870980', 'sgdhgh', 'fghfghfg', '2024-06-20 20:58:20', NULL, 0, 'fghfgh', 'fghfg', 2, ''),
(44, NULL, 0, 0, NULL, 'dfhfghfgj', 'bbbb@gmail.com', '4564575687586', 'dsgdfhfh', 'ghjghjghj', '2024-06-20 21:01:50', NULL, 0, 'ghjghjgh', 'gjghjghj', 2, ''),
(45, NULL, 0, 0, NULL, 'test2', 'test2@gmail.com', '999999999999', 'fghfhfg', 'fghfghgf', '2024-06-20 21:07:02', NULL, 0, 'fghfgh', 'fghfgh', 2, ''),
(46, NULL, 0, 0, NULL, 'test2', 'test2@gmail.com', '999999999999', 'subject', 'we need', '2024-06-20 21:21:35', NULL, 0, 'brand', 'prdtype', 1, ''),
(47, NULL, 0, 0, NULL, 'test2', 'test2@gmail.com', '999999999999', 'Bulk Enquiry', 'ghjghjghjgh', '2024-06-20 22:58:38', NULL, 0, '1', 'TeSysD TH O/L Relay CL10A', 1, ''),
(48, NULL, 0, 0, NULL, 'dfgdfhfdh', 'bbbbb@gmail.com', '456457567567', 'sdfgdsfgdfg', 'dfgdfgdfgfd', '2024-06-24 11:00:07', NULL, 0, '10', 'Enclosures', 1, ''),
(49, NULL, 0, 0, NULL, 'name', 'emailgg@gmail.com', '090-90-90-99840', 'yuiyuiyu', 'ghjhkhjkj', '2024-06-26 20:57:33', NULL, 0, '23', 'Enclosures', 2, ''),
(50, NULL, 0, 0, NULL, 'Sumila', 'sumila.c@gmail.com', '9539532141', 'hfghfghf', 'hgfhfghfgh', '2024-06-30 14:30:24', NULL, 0, '90', 'TeSysD TH O/L RELAY CL10A  16-24A', 1, ''),
(51, NULL, 0, 0, NULL, 'sumila', 'sumila.c@gmail.com', '9539532141', 'test suject', 'test message', '2024-06-30 14:50:52', NULL, 0, '900', 'TeSysD TH O/L RELAY CL10A  16-24A', 1, ''),
(52, NULL, 0, 0, NULL, 'ssss', 'sumila.c@gmail.com', '9539532141', 'sub', 'test msg', '2024-06-30 14:53:44', NULL, 0, '90', 'TeSysD TH O/L RELAY CL10A  16-24A', 1, ''),
(53, NULL, 0, 0, NULL, 'vvvv', 'vv@gmail.com', '567567568', 'gdfgdfgd', 'dfgdfgdfg', '2024-06-30 14:57:38', NULL, 0, '90', 'TeSysD TH O/L RELAY CL10A  16-24A', 1, ''),
(54, NULL, 0, 0, NULL, 'ttttt', 'ttt@gmail.com', '45765756', 'dfgfdgdf', 'sdfdgdfg', '2024-06-30 15:25:31', NULL, 0, '90', 'Valve ', 1, ''),
(55, NULL, 0, 0, NULL, 'dddd', 'cccc@gmail.com', '547657567', 'sdfsdfsd', 'hfghfghfgh', '2024-06-30 15:31:17', NULL, 0, '23', 'Enclosures', 2, ''),
(56, NULL, 0, 0, NULL, 'xxxxx', 'quote@gmail.com', '9539532141', 'sssss', 'msg', '2024-06-30 15:45:45', NULL, 0, '21', 'Enclosures', 2, ''),
(57, NULL, 0, 0, NULL, 'uuuuu', 'uuuu@gmail.com', '658768678769', 'sssss', 'dfdgffdg dfgdfgdfg', '2024-06-30 15:47:38', NULL, 0, '90', 'Valve ', 1, ''),
(58, NULL, 0, 0, NULL, 'mmmm', 'gfhjghjgh@gmail.com', '5687686798789', 'fhfghfgh', 'fghfghfgh', '2024-07-01 17:05:59', NULL, 0, '', '', 2, ''),
(59, NULL, 0, 0, NULL, 'ghjghjgh', 'gfhjghjgh@gmail.com', '567567567567', 'gjghjghj', 'fghfghfgh', '2024-07-01 17:06:23', NULL, 0, '', '', 2, ''),
(60, NULL, 0, 0, NULL, 'fghfghfgh', 'bbbbb@gmail.com', '457657567568', 'fghfghfgh', 'fghfghfghfgh', '2024-07-01 17:11:10', NULL, 0, '', '', 2, ''),
(61, NULL, 0, 0, NULL, 'khjlkjljkl', 'bbbbb@gmail.com', '678678769870', 'ghjghj fghgfhjgj', 'ghjhgjhgj', '2024-07-01 17:12:37', NULL, 0, '', '', 2, ''),
(62, NULL, 0, 0, NULL, 'sdfsdfsd', 'bbbbb@gmail.com', '45657567568', 'fghfghjgjhg', 'ghjhgjhgj', '2024-07-01 17:14:17', NULL, 0, '', '', 2, ''),
(63, NULL, 0, 0, NULL, 'dfgdfgdfg', 'bbbbb@gmail.com', '56756768769', 'gcgfdgfdg', 'dfgfdgfdgfdg dfgdfgdfg dsfgdgdfg', '2024-07-01 17:17:28', NULL, 0, '', '', 2, ''),
(64, NULL, 0, 0, NULL, 'fghgfhfg', 'hmmm@gmail.com', '5756756879', 'fsdfsdfsd', 'sdfsdfsdfsdf', '2024-07-01 17:19:18', NULL, 0, '', '', 2, ''),
(65, NULL, 0, 0, NULL, 'dfgdfgdf', 'bbbbb@gmail.com', '567658678769', 'fghfghfgh', 'fghfghfghfgh', '2024-07-01 17:26:49', NULL, 0, '', '', 3, ''),
(66, NULL, 0, 0, NULL, 'terterte', 'bbbbb@gmail.com', '436457657568', 'sdfdsgdfhg', 'dfgdfgdfgdfg', '2024-07-01 22:40:43', NULL, 0, '', '', 3, ''),
(67, NULL, 0, 0, NULL, 'fghgfhfg', 'hmmm@gmail.com', '456575675', 'dfgdfgdfg', 'dfgdfgdfg', '2024-07-01 22:44:10', NULL, 0, '', '', 3, ''),
(68, NULL, 0, 0, NULL, 'fghgjghj', 'bbbbb@gmail.com', '56768678', 'fghfghfgh', 'fghfghfgh', '2024-07-01 22:53:03', NULL, 0, '', '', 3, ''),
(69, NULL, 0, 0, NULL, 'hkhjkhj', 'bbbbb@gmail.com', '567678678', 'hfghfg', 'fghfghfg', '2024-07-01 23:09:09', NULL, 0, '', '', 3, ''),
(70, NULL, 0, 0, NULL, 'hkhjkhj', 'bbbbb@gmail.com', '567678678', 'hfghfg', 'fghfghfg', '2024-07-01 23:09:23', NULL, 0, '', '', 3, ''),
(71, NULL, 0, 0, NULL, 'ghjghjgh', 'bbbbb@gmail.com', '56756756867', 'hgfhfghfg', 'fghfghfgh', '2024-07-01 23:10:56', NULL, 0, '', '', 3, ''),
(72, NULL, 0, 0, NULL, 'hjkhjk', 'hjkhjkhj@gmail.com', '67876987987', 'dfgdfgdfgdf', 'dfgdfgfdgfdg', '2024-07-01 23:11:29', NULL, 0, '', '', 3, ''),
(73, NULL, 0, 0, NULL, 'hjkhjkhjk', 'bbbbb@gmail.com', '678769887987', 'fhgfghfgh', 'fghfghfgh', '2024-07-01 23:12:27', NULL, 0, '', '', 3, ''),
(74, NULL, 0, 0, NULL, 'fghfghfgh', 'bb@gmail.com', '568678678678', 'sssss', 'mmmmm', '2024-07-05 12:15:35', NULL, 0, '', '', 3, ''),
(75, NULL, 0, 0, NULL, 'sdgdfgdfg', 'bb@gmail.com', '7768768769879', 'jhjkhkjhkj', 'jkhkjhkjh', '2024-07-05 12:18:23', NULL, 0, '', '', 3, ''),
(76, NULL, 0, 0, NULL, 'sumila', 'sumila.c@gmail.com', '9539532141', 'contact us', 'hello', '2024-07-05 12:23:49', NULL, 0, '', '', 3, ''),
(77, NULL, 0, 0, NULL, 'nnnnn', 'nn@gmail.com', '68768979879', 'sssss', 'mmm ddddd eeeee', '2024-07-05 12:44:58', NULL, 0, 'Nil', 'Nil', 3, ''),
(78, NULL, 0, 0, NULL, 'nnnnn', 'nn@gmail.com', '9539532141', 'ssss bbbb', 'mmmm nnnnn', '2024-07-05 12:52:03', NULL, 0, 'Nil', 'Nil', 3, 'United Arab Emirates'),
(79, NULL, 0, 0, NULL, 'sumila', 'sumila.c@gmail.com', '9539532141', 'ccccc', 'test msg', '2024-07-16 10:11:44', NULL, 0, 'Nil', 'Nil', 3, 'United Arab Emirates'),
(80, NULL, 0, 0, NULL, 'cccccc', 'cccc@gmail.com', '568678679780', 'xxxxxx', 'test msg', '2024-07-16 10:23:16', NULL, 0, '2', 'Enclosures', 2, ''),
(81, NULL, 0, 0, NULL, 'fdhfghfgh', 'bb@gmail.com', 'dfgdfg', 'dfgdfg', 'dfgdfgfdg', '2024-07-16 10:31:24', NULL, 0, 'Nil', 'Nil', 3, 'Afghanistan'),
(82, NULL, 0, 0, NULL, 'sumila', 'sumila.c@gmail.com', '9539532141', 'test subject', 'test message', '2024-07-16 10:42:12', NULL, 0, 'Nil', 'Nil', 3, 'Afghanistan'),
(83, NULL, 0, 0, NULL, 'tuytrutyu', 'bb@gmail.com', '56756756', 'hfghfghfg', 'fhgfghfg fhfghfghf', '2024-07-16 10:43:36', NULL, 0, 'Nil', 'Nil', 3, 'Albania'),
(84, NULL, 0, 0, NULL, 'fghfghfgh', 'bb@gmail.com', '4565756756', '6867867867', 'ghjkhkhjkhj', '2024-07-16 10:49:13', NULL, 0, '2', 'PLC ', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `alt_names` varchar(300) CHARACTER SET utf8 NOT NULL COMMENT 'Alternate names for each country. Used for searching purpose. Use pipe (|) to separate each names.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_code`, `country_name`, `alt_names`) VALUES
(1, 'AD', 'Andorra', '|Andorra|'),
(2, 'AE', 'United Arab Emirates', '|United Arab Emirates|UAE|'),
(3, 'AF', 'Afghanistan', '|Afghanistan|'),
(4, 'AG', 'Antigua & Barbuda', '|Antigua & Barbuda|'),
(5, 'AI', 'Anguilla', '|Anguilla|'),
(6, 'AL', 'Albania', '|Albania|'),
(7, 'AM', 'Armenia', '|Armenia|'),
(8, 'AN', 'Netherlands Antilles', '|Netherlands Antilles|'),
(9, 'AO', 'Angola', '|Angola|'),
(11, 'AR', 'Argentina', '|Argentina|'),
(12, 'AS', 'American Samoa', '|American Samoa|'),
(13, 'AT', 'Austria', '|Austria|'),
(14, 'AU', 'Australia', '|Australia|Australie|'),
(15, 'AW', 'Aruba', '|Aruba|'),
(16, 'AZ', 'Azerbaijan', '|Azerbaijan|'),
(17, 'BA', 'Bosnia and Herzegovina', '|Bosnia and Herzegovina|'),
(18, 'BB', 'Barbados', '|Barbados|'),
(19, 'BD', 'Bangladesh', '|Bangladesh|'),
(20, 'BE', 'Belgium', '|Belgium|'),
(21, 'BF', 'Burkina Faso', '|Burkina Faso|'),
(22, 'BG', 'Bulgaria', '|Bulgaria|'),
(23, 'BH', 'Bahrain', '|Bahrain|'),
(24, 'BI', 'Burundi', '|Burundi|'),
(25, 'BJ', 'Benin', '|Benin|'),
(26, 'BM', 'Bermuda', '|Bermuda|'),
(27, 'BN', 'Brunei Darussalam', '|Brunei Darussalam|'),
(28, 'BO', 'Bolivia', '|Bolivia|'),
(29, 'BR', 'Brazil', '|Brazil|'),
(30, 'BS', 'Bahama', '|Bahama|'),
(31, 'BT', 'Bhutan', '|Bhutan|'),
(33, 'BV', 'Bouvet Island', '|Bouvet Island|'),
(34, 'BW', 'Botswana', '|Botswana|'),
(35, 'BY', 'Belarus', '|Belarus|'),
(36, 'BZ', 'Belize', '|Belize|'),
(37, 'CA', 'Canada', '|Canada|CAN|'),
(38, 'CC', 'Cocos (Keeling) Islands', '|Cocos (Keeling) Islands|'),
(39, 'CF', 'Central African Republic', '|Central African Republic|'),
(40, 'CG', 'Congo', '|Congo|'),
(41, 'CH', 'Switzerland', '|Switzerland|'),
(42, 'CI', 'Côte d’Ivoire (Ivory Coast)', '|Côte d’Ivoire (Ivory Coast)|'),
(43, 'CK', 'Cook Iislands', '|Cook Iislands|'),
(44, 'CL', 'Chile', '|Chile|'),
(45, 'CM', 'Cameroon', '|Cameroon|'),
(46, 'CN', 'China', '|China|Chine|'),
(47, 'CO', 'Colombia', '|Colombia|'),
(48, 'CR', 'Costa Rica', '|Costa Rica|'),
(50, 'CU', 'Cuba', '|Cuba|'),
(51, 'CV', 'Cape Verde', '|Cape Verde|'),
(52, 'CX', 'Christmas Island', '|Christmas Island|'),
(53, 'CY', 'Cyprus', '|Cyprus|'),
(54, 'CZ', 'Czech Republic', '|Czech Republic|'),
(56, 'DE', 'Germany', '|Germany|'),
(57, 'DJ', 'Djibouti', '|Djibouti|'),
(58, 'DK', 'Denmark', '|Denmark|'),
(59, 'DM', 'Dominica', '|Dominica|'),
(60, 'DO', 'Dominican Republic', '|Dominican Republic|'),
(61, 'DZ', 'Algeria', '|Algeria|Algérie|'),
(62, 'EC', 'Ecuador', '|Ecuador|'),
(63, 'EE', 'Estonia', '|Estonia|'),
(64, 'EG', 'Egypt', '|Egypt|'),
(65, 'EH', 'Western Sahara', '|Western Sahara|'),
(66, 'ER', 'Eritrea', '|Eritrea|'),
(67, 'ES', 'Spain', '|Spain|'),
(68, 'ET', 'Ethiopia', '|Ethiopia|'),
(69, 'FI', 'Finland', '|Finland|'),
(70, 'FJ', 'Fiji', '|Fiji|'),
(71, 'FK', 'Falkland Islands (Malvinas)', '|Falkland Islands (Malvinas)|'),
(72, 'FM', 'Micronesia', '|Micronesia|'),
(73, 'FO', 'Faroe Islands', '|Faroe Islands|'),
(74, 'FR', 'France', '|France|'),
(76, 'GA', 'Gabon', '|Gabon|'),
(77, 'GB', 'United Kingdom (Great Britain)', '|United Kingdom (Great Britain)|UK|United Kingdom|'),
(78, 'GD', 'Grenada', '|Grenada|'),
(79, 'GE', 'Georgia', '|Georgia|'),
(80, 'GF', 'French Guiana', '|French Guiana|'),
(81, 'GH', 'Ghana', '|Ghana|'),
(82, 'GI', 'Gibraltar', '|Gibraltar|'),
(83, 'GL', 'Greenland', '|Greenland|'),
(84, 'GM', 'Gambia', '|Gambia|'),
(85, 'GN', 'Guinea', '|Guinea|'),
(86, 'GP', 'Guadeloupe', '|Guadeloupe|'),
(87, 'GQ', 'Equatorial Guinea', '|Equatorial Guinea|'),
(88, 'GR', 'Greece', '|Greece|'),
(89, 'GS', 'South Georgia and the South Sandwich Islands', '|South Georgia and the South Sandwich Islands|'),
(90, 'GT', 'Guatemala', '|Guatemala|'),
(91, 'GU', 'Guam', '|Guam|'),
(92, 'GW', 'Guinea-Bissau', '|Guinea-Bissau|'),
(93, 'GY', 'Guyana', '|Guyana|'),
(94, 'HK', 'Hong Kong', '|Hong Kong|'),
(95, 'HM', 'Heard & McDonald Islands', '|Heard & McDonald Islands|'),
(96, 'HN', 'Honduras', '|Honduras|'),
(97, 'HR', 'Croatia', '|Croatia|'),
(98, 'HT', 'Haiti', '|Haiti|'),
(99, 'HU', 'Hungary', '|Hungary|'),
(100, 'ID', 'Indonesia', '|Indonesia|'),
(101, 'IE', 'Ireland', '|Ireland|'),
(102, 'IL', 'Israel', '|Israel|'),
(103, 'IN', 'India', '|India|Inde|'),
(104, 'IO', 'British Indian Ocean Territory', '|British Indian Ocean Territory|'),
(105, 'IQ', 'Iraq', '|Iraq|'),
(106, 'IR', 'Islamic Republic of Iran', '|Islamic Republic of Iran|'),
(107, 'IS', 'Iceland', '|Iceland|'),
(108, 'IT', 'Italy', '|Italy|'),
(109, 'JM', 'Jamaica', '|Jamaica|'),
(110, 'JO', 'Jordan', '|Jordan|'),
(111, 'JP', 'Japan', '|Japan|'),
(112, 'KE', 'Kenya', '|Kenya|'),
(113, 'KG', 'Kyrgyzstan', '|Kyrgyzstan|'),
(114, 'KH', 'Cambodia', '|Cambodia|'),
(115, 'KI', 'Kiribati', '|Kiribati|'),
(116, 'KM', 'Comoros', '|Comoros|'),
(117, 'KN', 'St. Kitts and Nevis', '|St. Kitts and Nevis|'),
(118, 'KP', 'Korea, Democratic People\'s Republic of', '|Korea, Democratic People\'s Republic of|'),
(119, 'KR', 'Korea, Republic of', '|Korea, Republic of|'),
(120, 'KW', 'Kuwait', '|Kuwait|'),
(121, 'KY', 'Cayman Islands', '|Cayman Islands|'),
(122, 'KZ', 'Kazakhstan', '|Kazakhstan|'),
(123, 'LA', 'Lao People\'s Democratic Republic', '|Lao People\'s Democratic Republic|'),
(124, 'LB', 'Lebanon', '|Lebanon|'),
(125, 'LC', 'Saint Lucia', '|Saint Lucia|'),
(126, 'LI', 'Liechtenstein', '|Liechtenstein|'),
(127, 'LK', 'Sri Lanka', '|Sri Lanka|'),
(128, 'LR', 'Liberia', '|Liberia|'),
(129, 'LS', 'Lesotho', '|Lesotho|'),
(130, 'LT', 'Lithuania', '|Lithuania|'),
(131, 'LU', 'Luxembourg', '|Luxembourg|'),
(132, 'LV', 'Latvia', '|Latvia|'),
(133, 'LY', 'Libyan Arab Jamahiriya', '|Libyan Arab Jamahiriya|'),
(134, 'MA', 'Morocco', '|Morocco|'),
(135, 'MC', 'Monaco', '|Monaco|'),
(136, 'MD', 'Moldova, Republic of', '|Moldova, Republic of|'),
(137, 'MG', 'Madagascar', '|Madagascar|'),
(138, 'MH', 'Marshall Islands', '|Marshall Islands|'),
(139, 'ML', 'Mali', '|Mali|'),
(140, 'MN', 'Mongolia', '|Mongolia|'),
(141, 'MM', 'Myanmar', '|Myanmar|'),
(142, 'MO', 'Macau', '|Macau|'),
(143, 'MP', 'Northern Mariana Islands', '|Northern Mariana Islands|'),
(144, 'MQ', 'Martinique', '|Martinique|'),
(145, 'MR', 'Mauritania', '|Mauritania|'),
(146, 'MS', 'Monserrat', '|Monserrat|'),
(147, 'MT', 'Malta', '|Malta|'),
(148, 'MU', 'Mauritius', '|Mauritius|'),
(149, 'MV', 'Maldives', '|Maldives|'),
(150, 'MW', 'Malawi', '|Malawi|'),
(151, 'MX', 'Mexico', '|Mexico|'),
(152, 'MY', 'Malaysia', '|Malaysia|'),
(153, 'MZ', 'Mozambique', '|Mozambique|'),
(154, 'NA', 'Namibia', '|Namibia|'),
(155, 'NC', 'New Caledonia', '|New Caledonia|'),
(156, 'NE', 'Niger', '|Niger|'),
(157, 'NF', 'Norfolk Island', '|Norfolk Island|'),
(158, 'NG', 'Nigeria', '|Nigeria|'),
(159, 'NI', 'Nicaragua', '|Nicaragua|'),
(160, 'NL', 'Netherlands', '|Netherlands|'),
(161, 'NO', 'Norway', '|Norway|'),
(162, 'NP', 'Nepal', '|Nepal|'),
(163, 'NR', 'Nauru', '|Nauru|'),
(165, 'NU', 'Niue', '|Niue|'),
(166, 'NZ', 'New Zealand', '|New Zealand|'),
(167, 'OM', 'Oman', '|Oman|'),
(168, 'PA', 'Panama', '|Panama|'),
(169, 'PE', 'Peru', '|Peru|'),
(170, 'PF', 'French Polynesia', '|French Polynesia|'),
(171, 'PG', 'Papua New Guinea', '|Papua New Guinea|'),
(172, 'PH', 'Philippines', '|Philippines|'),
(173, 'PK', 'Pakistan', '|Pakistan|'),
(174, 'PL', 'Poland', '|Poland|'),
(175, 'PM', 'St. Pierre & Miquelon', '|St. Pierre & Miquelon|'),
(176, 'PN', 'Pitcairn', '|Pitcairn|'),
(177, 'PR', 'Puerto Rico', '|Puerto Rico|'),
(178, 'PT', 'Portugal', '|Portugal|'),
(179, 'PW', 'Palau', '|Palau|'),
(180, 'PY', 'Paraguay', '|Paraguay|'),
(181, 'QA', 'Qatar', '|Qatar|'),
(182, 'RE', 'Réunion', '|Réunion|'),
(183, 'RO', 'Romania', '|Romania|'),
(184, 'RU', 'Russian Federation', '|Russian Federation|'),
(185, 'RW', 'Rwanda', '|Rwanda|'),
(186, 'SA', 'Saudi Arabia', '|Saudi Arabia|'),
(187, 'SB', 'Solomon Islands', '|Solomon Islands|'),
(188, 'SC', 'Seychelles', '|Seychelles|'),
(189, 'SD', 'Sudan', '|Sudan|'),
(190, 'SE', 'Sweden', '|Sweden|'),
(191, 'SG', 'Singapore', '|Singapore|'),
(192, 'SH', 'St. Helena', '|St. Helena|'),
(193, 'SI', 'Slovenia', '|Slovenia|'),
(194, 'SJ', 'Svalbard & Jan Mayen Islands', '|Svalbard & Jan Mayen Islands|'),
(195, 'SK', 'Slovakia', '|Slovakia|'),
(196, 'SL', 'Sierra Leone', '|Sierra Leone|'),
(197, 'SM', 'San Marino', '|San Marino|'),
(198, 'SN', 'Senegal', '|Senegal|'),
(199, 'SO', 'Somalia', '|Somalia|'),
(200, 'SR', 'Suriname', '|Suriname|'),
(201, 'ST', 'Sao Tome & Principe', '|Sao Tome & Principe|'),
(203, 'SV', 'El Salvador', '|El Salvador|'),
(204, 'SY', 'Syrian Arab Republic', '|Syrian Arab Republic|'),
(205, 'SZ', 'Swaziland', '|Swaziland|'),
(206, 'TC', 'Turks & Caicos Islands', '|Turks & Caicos Islands|'),
(207, 'TD', 'Chad', '|Chad|'),
(208, 'TF', 'French Southern Territories', '|French Southern Territories|'),
(209, 'TG', 'Togo', '|Togo|'),
(210, 'TH', 'Thailand', '|Thailand|'),
(211, 'TJ', 'Tajikistan', '|Tajikistan|'),
(212, 'TK', 'Tokelau', '|Tokelau|'),
(213, 'TM', 'Turkmenistan', '|Turkmenistan|'),
(214, 'TN', 'Tunisia', '|Tunisia|'),
(215, 'TO', 'Tonga', '|Tonga|'),
(216, 'TP', 'East Timor', '|East Timor|'),
(217, 'TR', 'Turkey', '|Turkey|'),
(218, 'TT', 'Trinidad & Tobago', '|Trinidad & Tobago|'),
(219, 'TV', 'Tuvalu', '|Tuvalu|'),
(220, 'TW', 'Taiwan, Province of China', '|Taiwan, Province of China|'),
(221, 'TZ', 'Tanzania, United Republic of', '|Tanzania, United Republic of|'),
(222, 'UA', 'Ukraine', '|Ukraine|'),
(223, 'UG', 'Uganda', '|Uganda|'),
(224, 'UM', 'United States Minor Outlying Islands', '|United States Minor Outlying Islands|'),
(225, 'US', 'United States of America (USA)', '|United States of America|USA|America|United States|U.S.A.|United Stats|'),
(226, 'UY', 'Uruguay', '|Uruguay|'),
(227, 'UZ', 'Uzbekistan', '|Uzbekistan|'),
(228, 'VA', 'Vatican City State (Holy See)', '|Vatican City State (Holy See)|'),
(229, 'VC', 'St. Vincent & the Grenadines', '|St. Vincent & the Grenadines|'),
(230, 'VE', 'Venezuela', '|Venezuela|'),
(231, 'VG', 'British Virgin Islands', '|British Virgin Islands|'),
(232, 'VI', 'United States Virgin Islands', '|United States Virgin Islands|'),
(233, 'VN', 'Viet Nam', '|Viet Nam|'),
(234, 'VU', 'Vanuatu', '|Vanuatu|'),
(235, 'WF', 'Wallis & Futuna Islands', '|Wallis & Futuna Islands|'),
(236, 'WS', 'Samoa', '|Samoa|'),
(238, 'YE', 'Yemen', '|Yemen|'),
(239, 'YT', 'Mayotte', '|Mayotte|'),
(240, 'YU', 'Yugoslavia', '|Yugoslavia|'),
(241, 'ZA', 'South Africa', '|South Africa|'),
(242, 'ZM', 'Zambia', '|Zambia|'),
(243, 'ZR', 'Zaire', '|Zaire|'),
(244, 'ZW', 'Zimbabwe', '|Zimbabwe|');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(10) UNSIGNED NOT NULL,
  `country_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `iso` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `iso3` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `dial` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `country_name`, `iso`, `iso3`, `dial`, `currency`, `currency_name`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '93', 'AFN', 'Afghani'),
(2, 'Albania', 'AL', 'ALB', '355', 'ALL', 'Lek'),
(3, 'Algeria', 'DZ', 'DZA', '213', 'DZD', 'Algerian Dinar'),
(4, 'American Samoa', 'AS', 'ASM', '1-684', 'USD', 'US Dollar'),
(5, 'Andorra', 'AD', 'AND', '376', 'EUR', 'Euro'),
(6, 'Angola', 'AO', 'AGO', '244', 'AOA', 'Kwanza'),
(7, 'Anguilla', 'AI', 'AIA', '1-264', 'XCD', 'East Caribbean Dollar'),
(8, 'Antarctica', 'AQ', 'ATA', '672', NULL, NULL),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '1-268', 'XCD', 'East Caribbean Dollar'),
(10, 'Argentina', 'AR', 'ARG', '54', 'ARS', 'Argentine Peso'),
(11, 'Armenia', 'AM', 'ARM', '374', 'AMD', 'Armenian Dram'),
(12, 'Aruba', 'AW', 'ABW', '297', 'AWG', 'Aruban Florin'),
(13, 'Australia', 'AU', 'AUS', '61', 'AUD', 'Australian Dollar'),
(14, 'Austria', 'AT', 'AUT', '43', 'EUR', 'Euro'),
(15, 'Azerbaijan', 'AZ', 'AZE', '994', 'AZN', 'Azerbaijanian Manat'),
(16, 'Bahamas', 'BS', 'BHS', '1-242', 'BSD', 'Bahamian Dollar'),
(17, 'Bahrain', 'BH', 'BHR', '973', 'BHD', 'Bahraini Dinar'),
(18, 'Bangladesh', 'BD', 'BGD', '880', 'BDT', 'Taka'),
(19, 'Barbados', 'BB', 'BRB', '1-246', 'BBD', 'Barbados Dollar'),
(20, 'Belarus', 'BY', 'BLR', '375', 'BYR', 'Belarussian Ruble'),
(21, 'Belgium', 'BE', 'BEL', '32', 'EUR', 'Euro'),
(22, 'Belize', 'BZ', 'BLZ', '501', 'BZD', 'Belize Dollar'),
(23, 'Benin', 'BJ', 'BEN', '229', 'XOF', 'CFA Franc BCEAO'),
(24, 'Bermuda', 'BM', 'BMU', '1-441', 'BMD', 'Bermudian Dollar'),
(25, 'Bhutan', 'BT', 'BTN', '975', 'INR', 'Indian Rupee'),
(26, 'Bolivia, Plurinational State of', 'BO', 'BOL', '591', 'BOB', 'Boliviano'),
(27, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '599', 'USD', 'US Dollar'),
(28, 'Bosnia and Herzegovina', 'BA', 'BIH', '387', 'BAM', 'Convertible Mark'),
(29, 'Botswana', 'BW', 'BWA', '267', 'BWP', 'Pula'),
(30, 'Bouvet Island', 'BV', 'BVT', '47', 'NOK', 'Norwegian Krone'),
(31, 'Brazil', 'BR', 'BRA', '55', 'BRL', 'Brazilian Real'),
(32, 'British Indian Ocean Territory', 'IO', 'IOT', '246', 'USD', 'US Dollar'),
(33, 'Brunei Darussalam', 'BN', 'BRN', '673', 'BND', 'Brunei Dollar'),
(34, 'Bulgaria', 'BG', 'BGR', '359', 'BGN', 'Bulgarian Lev'),
(35, 'Burkina Faso', 'BF', 'BFA', '226', 'XOF', 'CFA Franc BCEAO'),
(36, 'Burundi', 'BI', 'BDI', '257', 'BIF', 'Burundi Franc'),
(37, 'Cambodia', 'KH', 'KHM', '855', 'KHR', 'Riel'),
(38, 'Cameroon', 'CM', 'CMR', '237', 'XAF', 'CFA Franc BEAC'),
(39, 'Canada', 'CA', 'CAN', '1', 'CAD', 'Canadian Dollar'),
(40, 'Cape Verde', 'CV', 'CPV', '238', 'CVE', 'Cabo Verde Escudo'),
(41, 'Cayman Islands', 'KY', 'CYM', '1-345', 'KYD', 'Cayman Islands Dollar'),
(42, 'Central African Republic', 'CF', 'CAF', '236', 'XAF', 'CFA Franc BEAC'),
(43, 'Chad', 'TD', 'TCD', '235', 'XAF', 'CFA Franc BEAC'),
(44, 'Chile', 'CL', 'CHL', '56', 'CLP', 'Chilean Peso'),
(45, 'China', 'CN', 'CHN', '86', 'CNY', 'Yuan Renminbi'),
(46, 'Christmas Island', 'CX', 'CXR', '61', 'AUD', 'Australian Dollar'),
(47, 'Cocos (Keeling) Islands', 'CC', 'CCK', '61', 'AUD', 'Australian Dollar'),
(48, 'Colombia', 'CO', 'COL', '57', 'COP', 'Colombian Peso'),
(49, 'Comoros', 'KM', 'COM', '269', 'KMF', 'Comoro Franc'),
(50, 'Congo', 'CG', 'COG', '242', 'XAF', 'CFA Franc BEAC'),
(51, 'Congo, the Democratic Republic of the', 'CD', 'COD', '243', NULL, NULL),
(52, 'Cook Islands', 'CK', 'COK', '682', 'NZD', 'New Zealand Dollar'),
(53, 'Costa Rica', 'CR', 'CRI', '506', 'CRC', 'Costa Rican Colon'),
(54, 'Croatia', 'HR', 'HRV', '385', 'HRK', 'Croatian Kuna'),
(55, 'Cuba', 'CU', 'CUB', '53', 'CUP', 'Cuban Peso'),
(56, 'Curaçao', 'CW', 'CUW', '599', 'ANG', 'Netherlands Antillean Guilder'),
(57, 'Cyprus', 'CY', 'CYP', '357', 'EUR', 'Euro'),
(58, 'Czech Republic', 'CZ', 'CZE', '420', 'CZK', 'Czech Koruna'),
(59, 'Côte d\'Ivoire', 'CI', 'CIV', '225', 'XOF', 'CFA Franc BCEAO'),
(60, 'Denmark', 'DK', 'DNK', '45', 'DKK', 'Danish Krone'),
(61, 'Djibouti', 'DJ', 'DJI', '253', 'DJF', 'Djibouti Franc'),
(62, 'Dominica', 'DM', 'DMA', '1-767', 'XCD', 'East Caribbean Dollar'),
(63, 'Dominican Republic', 'DO', 'DOM', '1-809', 'DOP', 'Dominican Peso'),
(64, 'Ecuador', 'EC', 'ECU', '593', 'USD', 'US Dollar'),
(65, 'Egypt', 'EG', 'EGY', '20', 'EGP', 'Egyptian Pound'),
(66, 'El Salvador', 'SV', 'SLV', '503', 'USD', 'US Dollar'),
(67, 'Equatorial Guinea', 'GQ', 'GNQ', '240', 'XAF', 'CFA Franc BEAC'),
(68, 'Eritrea', 'ER', 'ERI', '291', 'ERN', 'Nakfa'),
(69, 'Estonia', 'EE', 'EST', '372', 'EUR', 'Euro'),
(70, 'Ethiopia', 'ET', 'ETH', '251', 'ETB', 'Ethiopian Birr'),
(71, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '500', 'FKP', 'Falkland Islands Pound'),
(72, 'Faroe Islands', 'FO', 'FRO', '298', 'DKK', 'Danish Krone'),
(73, 'Fiji', 'FJ', 'FJI', '679', 'FJD', 'Fiji Dollar'),
(74, 'Finland', 'FI', 'FIN', '358', 'EUR', 'Euro'),
(75, 'France', 'FR', 'FRA', '33', 'EUR', 'Euro'),
(76, 'French Guiana', 'GF', 'GUF', '594', 'EUR', 'Euro'),
(77, 'French Polynesia', 'PF', 'PYF', '689', 'XPF', 'CFP Franc'),
(78, 'French Southern Territories', 'TF', 'ATF', '262', 'EUR', 'Euro'),
(79, 'Gabon', 'GA', 'GAB', '241', 'XAF', 'CFA Franc BEAC'),
(80, 'Gambia', 'GM', 'GMB', '220', 'GMD', 'Dalasi'),
(81, 'Georgia', 'GE', 'GEO', '995', 'GEL', 'Lari'),
(82, 'Germany', 'DE', 'DEU', '49', 'EUR', 'Euro'),
(83, 'Ghana', 'GH', 'GHA', '233', 'GHS', 'Ghana Cedi'),
(84, 'Gibraltar', 'GI', 'GIB', '350', 'GIP', 'Gibraltar Pound'),
(85, 'Greece', 'GR', 'GRC', '30', 'EUR', 'Euro'),
(86, 'Greenland', 'GL', 'GRL', '299', 'DKK', 'Danish Krone'),
(87, 'Grenada', 'GD', 'GRD', '1-473', 'XCD', 'East Caribbean Dollar'),
(88, 'Guadeloupe', 'GP', 'GLP', '590', 'EUR', 'Euro'),
(89, 'Guam', 'GU', 'GUM', '1-671', 'USD', 'US Dollar'),
(90, 'Guatemala', 'GT', 'GTM', '502', 'GTQ', 'Quetzal'),
(91, 'Guernsey', 'GG', 'GGY', '44', 'GBP', 'Pound Sterling'),
(92, 'Guinea', 'GN', 'GIN', '224', 'GNF', 'Guinea Franc'),
(93, 'Guinea-Bissau', 'GW', 'GNB', '245', 'XOF', 'CFA Franc BCEAO'),
(94, 'Guyana', 'GY', 'GUY', '592', 'GYD', 'Guyana Dollar'),
(95, 'Haiti', 'HT', 'HTI', '509', 'USD', 'US Dollar'),
(96, 'Heard Island and McDonald Islands', 'HM', 'HMD', '672', 'AUD', 'Australian Dollar'),
(97, 'Holy See (Vatican City State)', 'VA', 'VAT', '39-06', 'EUR', 'Euro'),
(98, 'Honduras', 'HN', 'HND', '504', 'HNL', 'Lempira'),
(99, 'Hong Kong', 'HK', 'HKG', '852', 'HKD', 'Hong Kong Dollar'),
(100, 'Hungary', 'HU', 'HUN', '36', 'HUF', 'Forint'),
(101, 'Iceland', 'IS', 'ISL', '354', 'ISK', 'Iceland Krona'),
(102, 'India', 'IN', 'IND', '91', 'INR', 'Indian Rupee'),
(103, 'Indonesia', 'ID', 'IDN', '62', 'IDR', 'Rupiah'),
(104, 'Iran, Islamic Republic of', 'IR', 'IRN', '98', 'IRR', 'Iranian Rial'),
(105, 'Iraq', 'IQ', 'IRQ', '964', 'IQD', 'Iraqi Dinar'),
(106, 'Ireland', 'IE', 'IRL', '353', 'EUR', 'Euro'),
(107, 'Isle of Man', 'IM', 'IMN', '44', 'GBP', 'Pound Sterling'),
(108, 'Israel', 'IL', 'ISR', '972', 'ILS', 'New Israeli Sheqel'),
(109, 'Italy', 'IT', 'ITA', '39', 'EUR', 'Euro'),
(110, 'Jamaica', 'JM', 'JAM', '1-876', 'JMD', 'Jamaican Dollar'),
(111, 'Japan', 'JP', 'JPN', '81', 'JPY', 'Yen'),
(112, 'Jersey', 'JE', 'JEY', '44', 'GBP', 'Pound Sterling'),
(113, 'Jordan', 'JO', 'JOR', '962', 'JOD', 'Jordanian Dinar'),
(114, 'Kazakhstan', 'KZ', 'KAZ', '7', 'KZT', 'Tenge'),
(115, 'Kenya', 'KE', 'KEN', '254', 'KES', 'Kenyan Shilling'),
(116, 'Kiribati', 'KI', 'KIR', '686', 'AUD', 'Australian Dollar'),
(117, 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', '850', 'KPW', 'North Korean Won'),
(118, 'Korea, Republic of', 'KR', 'KOR', '82', 'KRW', 'Won'),
(119, 'Kuwait', 'KW', 'KWT', '965', 'KWD', 'Kuwaiti Dinar'),
(120, 'Kyrgyzstan', 'KG', 'KGZ', '996', 'KGS', 'Som'),
(121, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '856', 'LAK', 'Kip'),
(122, 'Latvia', 'LV', 'LVA', '371', 'EUR', 'Euro'),
(123, 'Lebanon', 'LB', 'LBN', '961', 'LBP', 'Lebanese Pound'),
(124, 'Lesotho', 'LS', 'LSO', '266', 'ZAR', 'Rand'),
(125, 'Liberia', 'LR', 'LBR', '231', 'LRD', 'Liberian Dollar'),
(126, 'Libya', 'LY', 'LBY', '218', 'LYD', 'Libyan Dinar'),
(127, 'Liechtenstein', 'LI', 'LIE', '423', 'CHF', 'Swiss Franc'),
(128, 'Lithuania', 'LT', 'LTU', '370', 'EUR', 'Euro'),
(129, 'Luxembourg', 'LU', 'LUX', '352', 'EUR', 'Euro'),
(130, 'Macao', 'MO', 'MAC', '853', 'MOP', 'Pataca'),
(131, 'Macedonia, the Former Yugoslav Republic of', 'MK', 'MKD', '389', 'MKD', 'Denar'),
(132, 'Madagascar', 'MG', 'MDG', '261', 'MGA', 'Malagasy Ariary'),
(133, 'Malawi', 'MW', 'MWI', '265', 'MWK', 'Kwacha'),
(134, 'Malaysia', 'MY', 'MYS', '60', 'MYR', 'Malaysian Ringgit'),
(135, 'Maldives', 'MV', 'MDV', '960', 'MVR', 'Rufiyaa'),
(136, 'Mali', 'ML', 'MLI', '223', 'XOF', 'CFA Franc BCEAO'),
(137, 'Malta', 'MT', 'MLT', '356', 'EUR', 'Euro'),
(138, 'Marshall Islands', 'MH', 'MHL', '692', 'USD', 'US Dollar'),
(139, 'Martinique', 'MQ', 'MTQ', '596', 'EUR', 'Euro'),
(140, 'Mauritania', 'MR', 'MRT', '222', 'MRO', 'Ouguiya'),
(141, 'Mauritius', 'MU', 'MUS', '230', 'MUR', 'Mauritius Rupee'),
(142, 'Mayotte', 'YT', 'MYT', '262', 'EUR', 'Euro'),
(143, 'Mexico', 'MX', 'MEX', '52', 'MXN', 'Mexican Peso'),
(144, 'Micronesia, Federated States of', 'FM', 'FSM', '691', 'USD', 'US Dollar'),
(145, 'Moldova, Republic of', 'MD', 'MDA', '373', 'MDL', 'Moldovan Leu'),
(146, 'Monaco', 'MC', 'MCO', '377', 'EUR', 'Euro'),
(147, 'Mongolia', 'MN', 'MNG', '976', 'MNT', 'Tugrik'),
(148, 'Montenegro', 'ME', 'MNE', '382', 'EUR', 'Euro'),
(149, 'Montserrat', 'MS', 'MSR', '1-664', 'XCD', 'East Caribbean Dollar'),
(150, 'Morocco', 'MA', 'MAR', '212', 'MAD', 'Moroccan Dirham'),
(151, 'Mozambique', 'MZ', 'MOZ', '258', 'MZN', 'Mozambique Metical'),
(152, 'Myanmar', 'MM', 'MMR', '95', 'MMK', 'Kyat'),
(153, 'Namibia', 'NA', 'NAM', '264', 'ZAR', 'Rand'),
(154, 'Nauru', 'NR', 'NRU', '674', 'AUD', 'Australian Dollar'),
(155, 'Nepal', 'NP', 'NPL', '977', 'NPR', 'Nepalese Rupee'),
(156, 'Netherlands', 'NL', 'NLD', '31', 'EUR', 'Euro'),
(157, 'New Caledonia', 'NC', 'NCL', '687', 'XPF', 'CFP Franc'),
(158, 'New Zealand', 'NZ', 'NZL', '64', 'NZD', 'New Zealand Dollar'),
(159, 'Nicaragua', 'NI', 'NIC', '505', 'NIO', 'Cordoba Oro'),
(160, 'Niger', 'NE', 'NER', '227', 'XOF', 'CFA Franc BCEAO'),
(161, 'Nigeria', 'NG', 'NGA', '234', 'NGN', 'Naira'),
(162, 'Niue', 'NU', 'NIU', '683', 'NZD', 'New Zealand Dollar'),
(163, 'Norfolk Island', 'NF', 'NFK', '672', 'AUD', 'Australian Dollar'),
(164, 'Northern Mariana Islands', 'MP', 'MNP', '1-670', 'USD', 'US Dollar'),
(165, 'Norway', 'NO', 'NOR', '47', 'NOK', 'Norwegian Krone'),
(166, 'Oman', 'OM', 'OMN', '968', 'OMR', 'Rial Omani'),
(167, 'Pakistan', 'PK', 'PAK', '92', 'PKR', 'Pakistan Rupee'),
(168, 'Palau', 'PW', 'PLW', '680', 'USD', 'US Dollar'),
(169, 'Palestine, State of', 'PS', 'PSE', '970', NULL, NULL),
(170, 'Panama', 'PA', 'PAN', '507', 'USD', 'US Dollar'),
(171, 'Papua New Guinea', 'PG', 'PNG', '675', 'PGK', 'Kina'),
(172, 'Paraguay', 'PY', 'PRY', '595', 'PYG', 'Guarani'),
(173, 'Peru', 'PE', 'PER', '51', 'PEN', 'Nuevo Sol'),
(174, 'Philippines', 'PH', 'PHL', '63', 'PHP', 'Philippine Peso'),
(175, 'Pitcairn', 'PN', 'PCN', '870', 'NZD', 'New Zealand Dollar'),
(176, 'Poland', 'PL', 'POL', '48', 'PLN', 'Zloty'),
(177, 'Portugal', 'PT', 'PRT', '351', 'EUR', 'Euro'),
(178, 'Puerto Rico', 'PR', 'PRI', '1', 'USD', 'US Dollar'),
(179, 'Qatar', 'QA', 'QAT', '974', 'QAR', 'Qatari Rial'),
(180, 'Romania', 'RO', 'ROU', '40', 'RON', 'New Romanian Leu'),
(181, 'Russian Federation', 'RU', 'RUS', '7', 'RUB', 'Russian Ruble'),
(182, 'Rwanda', 'RW', 'RWA', '250', 'RWF', 'Rwanda Franc'),
(183, 'Réunion', 'RE', 'REU', '262', 'EUR', 'Euro'),
(184, 'Saint Barthélemy', 'BL', 'BLM', '590', 'EUR', 'Euro'),
(185, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', 'SHN', '290', 'SHP', 'Saint Helena Pound'),
(186, 'Saint Kitts and Nevis', 'KN', 'KNA', '1-869', 'XCD', 'East Caribbean Dollar'),
(187, 'Saint Lucia', 'LC', 'LCA', '1-758', 'XCD', 'East Caribbean Dollar'),
(188, 'Saint Martin (French part)', 'MF', 'MAF', '590', 'EUR', 'Euro'),
(189, 'Saint Pierre and Miquelon', 'PM', 'SPM', '508', 'EUR', 'Euro'),
(190, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '1-784', 'XCD', 'East Caribbean Dollar'),
(191, 'Samoa', 'WS', 'WSM', '685', 'WST', 'Tala'),
(192, 'San Marino', 'SM', 'SMR', '378', 'EUR', 'Euro'),
(193, 'Sao Tome and Principe', 'ST', 'STP', '239', 'STD', 'Dobra'),
(194, 'Saudi Arabia', 'SA', 'SAU', '966', 'SAR', 'Saudi Riyal'),
(195, 'Senegal', 'SN', 'SEN', '221', 'XOF', 'CFA Franc BCEAO'),
(196, 'Serbia', 'RS', 'SRB', '381', 'RSD', 'Serbian Dinar'),
(197, 'Seychelles', 'SC', 'SYC', '248', 'SCR', 'Seychelles Rupee'),
(198, 'Sierra Leone', 'SL', 'SLE', '232', 'SLL', 'Leone'),
(199, 'Singapore', 'SG', 'SGP', '65', 'SGD', 'Singapore Dollar'),
(200, 'Sint Maarten (Dutch part)', 'SX', 'SXM', '1-721', 'ANG', 'Netherlands Antillean Guilder'),
(201, 'Slovakia', 'SK', 'SVK', '421', 'EUR', 'Euro'),
(202, 'Slovenia', 'SI', 'SVN', '386', 'EUR', 'Euro'),
(203, 'Solomon Islands', 'SB', 'SLB', '677', 'SBD', 'Solomon Islands Dollar'),
(204, 'Somalia', 'SO', 'SOM', '252', 'SOS', 'Somali Shilling'),
(205, 'South Africa', 'ZA', 'ZAF', '27', 'ZAR', 'Rand'),
(206, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', '500', NULL, NULL),
(207, 'South Sudan', 'SS', 'SSD', '211', 'SSP', 'South Sudanese Pound'),
(208, 'Spain', 'ES', 'ESP', '34', 'EUR', 'Euro'),
(209, 'Sri Lanka', 'LK', 'LKA', '94', 'LKR', 'Sri Lanka Rupee'),
(210, 'Sudan', 'SD', 'SDN', '249', 'SDG', 'Sudanese Pound'),
(211, 'Suriname', 'SR', 'SUR', '597', 'SRD', 'Surinam Dollar'),
(212, 'Svalbard and Jan Mayen', 'SJ', 'SJM', '47', 'NOK', 'Norwegian Krone'),
(213, 'Swaziland', 'SZ', 'SWZ', '268', 'SZL', 'Lilangeni'),
(214, 'Sweden', 'SE', 'SWE', '46', 'SEK', 'Swedish Krona'),
(215, 'Switzerland', 'CH', 'CHE', '41', 'CHF', 'Swiss Franc'),
(216, 'Syrian Arab Republic', 'SY', 'SYR', '963', 'SYP', 'Syrian Pound'),
(217, 'Taiwan, Province of China', 'TW', 'TWN', '886', 'TWD', 'New Taiwan Dollar'),
(218, 'Tajikistan', 'TJ', 'TJK', '992', 'TJS', 'Somoni'),
(219, 'Tanzania, United Republic of', 'TZ', 'TZA', '255', 'TZS', 'Tanzanian Shilling'),
(220, 'Thailand', 'TH', 'THA', '66', 'THB', 'Baht'),
(221, 'Timor-Leste', 'TL', 'TLS', '670', 'USD', 'US Dollar'),
(222, 'Togo', 'TG', 'TGO', '228', 'XOF', 'CFA Franc BCEAO'),
(223, 'Tokelau', 'TK', 'TKL', '690', 'NZD', 'New Zealand Dollar'),
(224, 'Tonga', 'TO', 'TON', '676', 'TOP', 'Pa’anga'),
(225, 'Trinidad and Tobago', 'TT', 'TTO', '1-868', 'TTD', 'Trinidad and Tobago Dollar'),
(226, 'Tunisia', 'TN', 'TUN', '216', 'TND', 'Tunisian Dinar'),
(227, 'Turkey', 'TR', 'TUR', '90', 'TRY', 'Turkish Lira'),
(228, 'Turkmenistan', 'TM', 'TKM', '993', 'TMT', 'Turkmenistan New Manat'),
(229, 'Turks and Caicos Islands', 'TC', 'TCA', '1-649', 'USD', 'US Dollar'),
(230, 'Tuvalu', 'TV', 'TUV', '688', 'AUD', 'Australian Dollar'),
(231, 'Uganda', 'UG', 'UGA', '256', 'UGX', 'Uganda Shilling'),
(232, 'Ukraine', 'UA', 'UKR', '380', 'UAH', 'Hryvnia'),
(233, 'United Arab Emirates', 'AE', 'ARE', '971', 'AED', 'UAE Dirham'),
(234, 'United Kingdom', 'GB', 'GBR', '44', 'GBP', 'Pound Sterling'),
(235, 'United States', 'US', 'USA', '1', 'USD', 'US Dollar'),
(236, 'United States Minor Outlying Islands', 'UM', 'UMI', '1', 'USD', 'US Dollar'),
(237, 'Uruguay', 'UY', 'URY', '598', 'UYU', 'Peso Uruguayo'),
(238, 'Uzbekistan', 'UZ', 'UZB', '998', 'UZS', 'Uzbekistan Sum'),
(239, 'Vanuatu', 'VU', 'VUT', '678', 'VUV', 'Vatu'),
(240, 'Venezuela, Bolivarian Republic of', 'VE', 'VEN', '58', 'VEF', 'Bolivar'),
(241, 'Viet Nam', 'VN', 'VNM', '84', 'VND', 'Dong'),
(242, 'Virgin Islands, British', 'VG', 'VGB', '1-284', 'USD', 'US Dollar'),
(243, 'Virgin Islands, U.S.', 'VI', 'VIR', '1-340', 'USD', 'US Dollar'),
(244, 'Wallis and Futuna', 'WF', 'WLF', '681', 'XPF', 'CFP Franc'),
(245, 'Western Sahara', 'EH', 'ESH', '212', 'MAD', 'Moroccan Dirham'),
(246, 'Yemen', 'YE', 'YEM', '967', 'YER', 'Yemeni Rial'),
(247, 'Zambia', 'ZM', 'ZMB', '260', 'ZMW', 'Zambian Kwacha'),
(248, 'Zimbabwe', 'ZW', 'ZWE', '263', 'ZWL', 'Zimbabwe Dollar'),
(249, 'Åland Islands', 'AX', 'ALA', '358', 'EUR', 'Euro');

-- --------------------------------------------------------

--
-- Table structure for table `currencyconversion`
--

CREATE TABLE `currencyconversion` (
  `currencyid` int(11) NOT NULL,
  `currency` varchar(25) NOT NULL,
  `amount` decimal(7,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currencyconversion`
--

INSERT INTO `currencyconversion` (`currencyid`, `currency`, `amount`, `date`) VALUES
(10, 'USD', '0.27', '2024-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `created`, `modified`, `status`) VALUES
(1, 'ffff', 'bbbbb@gmail.com', '4645647', '4364646', '2024-01-08 11:44:06', '2024-01-08 11:44:06', '1'),
(2, 'nnnnnn', 'bbbbb@gmail.com', '9879879879797', 'gfhgfhgfhfh', '2024-01-09 06:13:37', '2024-01-09 06:13:37', '1'),
(3, 'nnnnnn', 'bbbbb@gmail.com', '9879879879797', 'gfhgfhgfhfh', '2024-01-09 06:14:28', '2024-01-09 06:14:28', '1'),
(4, 'uuuuu', 'uuuuu@gmail.com', '888888888888888', 'ffffffffffffff', '2024-01-09 07:18:44', '2024-01-09 07:18:44', '1'),
(5, 'nnnnnn', 'bbbbb@gmail.com', '99999999999999', 'aaaaaaaaaaaaaaa', '2024-01-09 07:31:30', '2024-01-09 07:31:30', '1'),
(6, 'yyyyy', 'bbb@gmail.com', '999999', 'ttttttt', '2024-01-09 07:45:06', '2024-01-09 07:45:06', '1'),
(7, 'ooooo', 'ooooo@gmail.com', '9999999999999', 'eeeeee', '2024-01-09 07:55:49', '2024-01-09 07:55:49', '1'),
(8, 'yyyyy', 'yyyyy@gmail.com', '88888888888', 'aaaaaa', '2024-01-09 08:04:37', '2024-01-09 08:04:37', '1'),
(9, 'hgfgfhgfh', 'bbbbb@gmail.com', '9999999999999', 'dddddddd', '2024-01-09 10:10:37', '2024-01-09 10:10:37', '1'),
(10, 'fgfhgfhf', 'bbbbb@gmail.com', 'hgfhgfhgfh', 'aaaaaaa', '2024-01-09 10:20:29', '2024-01-09 10:20:29', '1');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faqid` int(11) NOT NULL,
  `ques` text NOT NULL,
  `content` text NOT NULL,
  `points` text NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faqid`, `ques`, `content`, `points`, `active`) VALUES
(1, 'Do I really need a Realtor when buying a home?', 'Lorem ipsum dolor sit amet consectetur adipisicing do eumod tempor incidunt labore dolore magna aliqua enim minim veniam. quis nostrud exercitation laboris nis aliquip ex ea comodo consequat duis aute irure', 'consectetur elit sed do eius,consectetur elit sed', 1),
(2, 'Can a home depreciate in value?', 'Lorem ipsum dolor sit amet consectetur adipisicing do eumod tempor incidunt labore dolore magna aliqua enim minim veniam. quis nostrud exercitation laboris nis aliquip ex ea comodo consequat duis aute irure', 'consectetur elit sed do eius,consectetur elit sed', 1),
(3, 'Is an older home as good a value as a new home?', 'Lorem ipsum dolor sit amet consectetur adipisicing do eumod tempor incidunt labore dolore magna aliqua enim minim veniam. quis nostrud exercitation laboris nis aliquip ex ea comodo consequat duis aute irure', 'consectetur elit sed do eius,consectetur elit sed', 1),
(4, 'Who pays the Realtor fees when buying a home?', 'Lorem ipsum dolor sit amet consectetur adipisicing do eumod tempor incidunt labore dolore magna aliqua enim minim veniam. quis nostrud exercitation laboris nis aliquip ex ea comodo consequat duis aute irure', 'consectetur elit sed do eius,consectetur elit sed', 1),
(5, 'How much should I offer the sellers?', 'Lorem ipsum dolor sit amet consectetur adipisicing do eumod tempor incidunt labore dolore magna aliqua enim minim veniam. quis nostrud exercitation laboris nis aliquip ex ea comodo consequat duis aute irure', 'consectetur elit sed do eius,consectetur elit sed,mmmm', 1);

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `floorid` int(11) NOT NULL,
  `floorname` varchar(255) NOT NULL,
  `floordesc` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `projectid` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`floorid`, `floorname`, `floordesc`, `picture`, `projectid`, `status`) VALUES
(88, 'oooooo1', 'floor desc1', '1724743906project.jpg', 1, 0),
(89, 'sssss1123', 'uuuuu mmmm', '1724748420project.png', 1, 0),
(90, 'ggggg hhhhh178', 'ffff', '1724743809project.jpg', 5, 1),
(93, 'floor title1', 'floor desc1', '1724913998project.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `caption` varchar(180) NOT NULL,
  `buttonlink` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `caption2` varchar(250) NOT NULL,
  `type1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `caption`, `buttonlink`, `image`, `status`, `caption2`, `type1`) VALUES
(15, 'First', '', '1724059400gallery.jpeg', 1, 'Image1', 1),
(16, 'Second', '', '1724059428gallery.jpeg', 1, 'Image2', 1),
(20, 'Third', '', '1724059485gallery.jpeg', 1, 'Image4', 2),
(30, 'Fifth', '', '1724050154gallery.jpg', 1, '', 3),
(38, 'Sixth', '', '1724923899gallery.jpeg', 1, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_old1`
--

CREATE TABLE `gallery_old1` (
  `id` int(11) NOT NULL,
  `caption` varchar(180) NOT NULL,
  `buttonlink` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `caption2` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery_old1`
--

INSERT INTO `gallery_old1` (`id`, `caption`, `buttonlink`, `image`, `status`, `caption2`) VALUES
(15, 'Fruit', '', '1722936668-5.jpg', 1, 'Image1'),
(16, 'Fruit', '', '1722936676-6.jpg', 1, 'Image2'),
(20, 'Fruit', '', '1722936736-10.jpg', 1, 'Image4'),
(21, 'Fruit', '', '1722936745-9.jpg', 1, 'Image5'),
(22, 'Fruit', '', '1722936754-7.jpg', 1, 'Image6');

-- --------------------------------------------------------

--
-- Table structure for table `homecare`
--

CREATE TABLE `homecare` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `shortdesc` text NOT NULL,
  `phoneno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homecare`
--

INSERT INTO `homecare` (`id`, `title`, `content`, `name`, `picture`, `active`, `designation`, `date`, `shortdesc`, `phoneno`) VALUES
(2, 'Complete Homecare Services', 'Electricity and Telephone Bill Payments,                                                     Land and Building Tax Payments, Property Insurance,                                                     Monthly Cleaning Services,Annual Cable TV Payments,Monthly Maintenance Charges,Repair and Maintenance Work', 'ertertert', 'homecare.jpg', 1, 'ertert', '2024-08-19', 'SI Properties offers comprehensive support from home purchase to ongoing property management, including', '919447169988'),
(3, 'Resale Services', 'Electricity and Telephone Bill Payments,                                                     Land and Building Tax Payments,                                                     Property Insurance,                                                     Monthly Cleaning Services,                                                    Annual Cable TV Payments,Monthly Maintenance Charges,Repair and Maintenance Work                                                          ', 'name', 'homecare.jpg', 1, 'd', '2024-07-29', 'SI Properties offers comprehensive support throughout the home resale process: ', '919447169988'),
(4, 'Rental Services', ' Electricity and Telephone Bill Payments,                                                     Land and Building Tax Payments,                                                     Property Insurance,                                                     Monthly Cleaning Services,                                                    Annual Cable TV Payments,Monthly Maintenance Charges,Repair and Maintenance Work              ', 'name', '1724134816homecare.jpg', 0, 'fgdfgdfg', '2024-08-20', 'SI Properties offers comprehensive support throughout the home resale process', '919447169988');

-- --------------------------------------------------------

--
-- Table structure for table `homepagedetails`
--

CREATE TABLE `homepagedetails` (
  `image1` varchar(255) NOT NULL,
  `blogimage1` varchar(255) NOT NULL,
  `blogimage2` varchar(255) NOT NULL,
  `blogdesc` text NOT NULL,
  `blogid` int(11) NOT NULL,
  `date` date NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `clearenceimg1` varchar(255) NOT NULL,
  `clearenceimg2` varchar(255) NOT NULL,
  `clearenceimg3` varchar(255) NOT NULL,
  `clearenceimg4` varchar(255) NOT NULL,
  `label1` varchar(255) NOT NULL,
  `label2` varchar(255) NOT NULL,
  `label3` varchar(255) NOT NULL,
  `label4` varchar(255) NOT NULL,
  `label5` varchar(255) NOT NULL,
  `label6` varchar(255) NOT NULL,
  `desc1` text NOT NULL,
  `desc2` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homepagedetails`
--

INSERT INTO `homepagedetails` (`image1`, `blogimage1`, `blogimage2`, `blogdesc`, `blogid`, `date`, `image2`, `image3`, `clearenceimg1`, `clearenceimg2`, `clearenceimg3`, `clearenceimg4`, `label1`, `label2`, `label3`, `label4`, `label5`, `label6`, `desc1`, `desc2`, `id`) VALUES
('left.jpeg', '1718873449img13th.jpeg', '1718873449img14th.png', 'Nexa aims to empower our customers by delivering high-quality electrical products and automation.', 1, '2024-07-16', 'testimonial-video.mp4', 'banner-2.png', '1718873901img15th.png', '1718873780img16th.png', '1718873852img17th.png', '1718873852img18th.png', 'Welcome to SI Property Family', 'Ongoing Projects', 'PROJECTS IN TRIVANDRUM', 'LOOKING FOR A HOME IN TRIVANDRUM', 'Explore the best flats in Trivandrum', 'Most Reliable Builders in Trivandrum', ' Trivandrum, the capital city of Kerala, is now a continuously changing and echoing metropolis in South India, thanks to the growing IT sector and the citys rapidly changing real estate landscapes. With over two decades of experience in the industry, SI property has established itself as one of the leading builders in Trivandrum with a strong presence throughout the metropolitan city', 'We have established growth and high status by adhering to consistent high design and quality parameters that have improved the ease, comfort, and efficiency of lives that interact with or inhabit our projects. With us, every location that’s shortlisted, every floor plan that’s designed, and every amenity that’s chosen is all meant to improve and enhance the way you live.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `homepagedetails2`
--

CREATE TABLE `homepagedetails2` (
  `image1` varchar(255) NOT NULL,
  `chimage1` varchar(255) NOT NULL,
  `blogimage2` varchar(255) NOT NULL,
  `blogdesc` text NOT NULL,
  `blogid` int(11) NOT NULL,
  `date` date NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `clearenceimg1` varchar(255) NOT NULL,
  `clearenceimg2` varchar(255) NOT NULL,
  `clearenceimg3` varchar(255) NOT NULL,
  `clearenceimg4` varchar(255) NOT NULL,
  `label7` varchar(255) NOT NULL,
  `label8` varchar(255) NOT NULL,
  `label9` varchar(200) NOT NULL,
  `label10` varchar(200) NOT NULL,
  `label11` varchar(200) NOT NULL,
  `label12` varchar(200) NOT NULL,
  `desc3` text NOT NULL,
  `desc4` text NOT NULL,
  `id` int(11) NOT NULL,
  `happyclients` int(5) NOT NULL,
  `completedprojects` int(5) NOT NULL,
  `ongoingprojects` int(5) NOT NULL,
  `yearofexperience` int(5) NOT NULL,
  `desc5` text NOT NULL,
  `chairmanmessage` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `videourl` varchar(255) NOT NULL,
  `desc6` text NOT NULL,
  `desc7` text NOT NULL,
  `desc8` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homepagedetails2`
--

INSERT INTO `homepagedetails2` (`image1`, `chimage1`, `blogimage2`, `blogdesc`, `blogid`, `date`, `image2`, `image3`, `clearenceimg1`, `clearenceimg2`, `clearenceimg3`, `clearenceimg4`, `label7`, `label8`, `label9`, `label10`, `label11`, `label12`, `desc3`, `desc4`, `id`, `happyclients`, `completedprojects`, `ongoingprojects`, `yearofexperience`, `desc5`, `chairmanmessage`, `name`, `designation`, `videourl`, `desc6`, `desc7`, `desc8`) VALUES
('left.jpeg', '1724845992homepage.jpg', '1718873449img14th.png', 'Nexa aims to empower our customers by delivering high-quality electrical products and automation.', 1, '2024-07-16', 'banner-1.png', 'banner-2.png', '1718873901img15th.png', '1718873780img16th.png', '1718873852img17th.png', '1718873852img18th.png', 'News & Updates', 'Stay Update With SI Properties', 'Why Choose Us?', 'Reasons To Choose Us', 'products/category/capacitor-switches-sockets', 'products/category/capacitor-switches-sockets', 'SI property has completed over 50 top-of-line projects making them one of the most trusted builders in Trivandrum, with a significant presence in both the residential and commercial sectors. We are pioneers in building feature-rich apartment projects that come within your budget; since we always wanted to offer you more than simply a house with walls; our homes are the beacon of hope, dreams, and happiness. ', 'We take pride in delivering tailored solutions that align with your unique needs. Whether you require MCBs, MCCBs, RCCBs, RCBOs, ACBs, VCBs, timers, overload relays, safety relays, DOL starters, ATSs, VFDs, enclosures, fans, digital panel meters, energy meters, power factor controllers, induction motors, motor protection circuit breakers, on-delay/off-delay timers, inductive sensors,temperature controllers, proximity sensors, limit switches, capacitor switches and sockets, isolators, LED lighting, power and network cables, panel accessories, water level controllers, push buttons, changeover switches, terminal blocks, actuators, valves, network accessories, float switches, hour meters, PLCs, HMIs, or any other electrical product, you can rely on our expertise.4', 1, 335, 60, 40, 25, 'Join us on this journey as we explore the exciting possibilities of construction and design!', 'Our goal each day is to ensure that our residents’ needs are not only met but exceeded. To make that happen, we are committed to providing an environment.', 'Mr. S.N. Raghuchandran Nair', 'Managing Director', '1724145251vid.mp4', 'Trivandrum, the capital city of Kerala, is now a continuously changing and echoing metropolis in South India, thanks to the growing IT sector and the city’s rapidly changing real estate landscapes. With over two decades of experience in the industry, SI property has established itself as one of the leading builders in Trivandrum with a strong presence throughout the metropolitan city. ', 'We have established growth and high status by adhering to consistent high design and quality parameters that have improved the ease, comfort, and efficiency of lives that interact with or inhabit our projects. With us, every location that’s shortlisted, every floor plan that’s designed, and every amenity that’s chosen is all meant to improve and enhance the way you live.', 'SI property has completed over 50 top-of-line projects making them one of the most trusted builders in Trivandrum, with a significant presence in both the residential and commercial sectors. We are pioneers in building feature-rich apartment projects that come within your budget; since we always wanted to offer you more than simply a house with walls; our homes are the beacon of hope, dreams, and happiness.');

-- --------------------------------------------------------

--
-- Table structure for table `home_carosel`
--

CREATE TABLE `home_carosel` (
  `id` int(50) NOT NULL,
  `maintitle` varchar(500) NOT NULL,
  `subtitle` varchar(500) NOT NULL,
  `picture` varchar(1000) NOT NULL,
  `active` varchar(500) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_carosel`
--

INSERT INTO `home_carosel` (`id`, `maintitle`, `subtitle`, `picture`, `active`, `Time`) VALUES
(24, 'MOST RELIABLE BUILDERS IN TRIVANDRUM', 'SI Property has established itself as one of the leading builders in Trivandrum', '1723872333carousel.jpg', '1', '2024-08-17 05:32:16'),
(27, 'Top-rated Construction Companies in Trivandrum', 'SI Property has established itself as one of the leading builders in Trivandrum', '1723872572carousel.jpg', '1', '2024-08-17 05:32:52'),
(40, 'Search Properties for Sale and To Rent1', 'SI Property has established itself as one of the leading builders in Trivandrum', '1724233560carousel.jpeg', '1', '2024-08-23 08:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `home_projects`
--

CREATE TABLE `home_projects` (
  `id` int(50) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `project_descripition` varchar(1000) NOT NULL,
  `bedroom` int(100) NOT NULL,
  `bathroom` int(100) NOT NULL,
  `squarefeet` varchar(100) NOT NULL,
  `product_picture` varchar(1000) NOT NULL,
  `status` varchar(50) NOT NULL,
  `project_status` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `emailid` varchar(255) NOT NULL,
  `phoneno` bigint(20) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `addinside` int(11) NOT NULL,
  `shortdesc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_projects`
--

INSERT INTO `home_projects` (`id`, `project_name`, `price`, `project_descripition`, `bedroom`, `bathroom`, `squarefeet`, `product_picture`, `status`, `project_status`, `time`, `emailid`, `phoneno`, `agent`, `addinside`, `shortdesc`) VALUES
(1, 'LEELA MADHAVAM LEGACY', '₹ 1 CR', 'Leela Madhavam Legacy by SI Property consists of a total of 39 apartments in 2 blocks---.', 3, 2, '600', '1724155534project.jpeg', '1', '0', '2024-09-03 06:13:21', 'mail@siproperty.in', 919447169981, 'Michael Bean', 0, ''),
(3, 'LEELA MADHAVAM LEGACY', '₹ 1 CR', 'Leela Madhavam Legacy by SI Property consists of a total of 39 apartments in 2 blocks. ', 3, 2, '600', '1725446166project.jpeg', '1', '0', '2024-09-04 10:36:06', 'mail@siproperty.in', 919447169988, 'Michael Bean', 0, ''),
(5, 'Edura SI property', '50000', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 8, 9, '10', 'image-270x330.png', '1', '1', '2024-09-03 06:13:29', 'mail@siproperty.in', 919447169988, 'Modern Michael Bean', 0, ''),
(6, 'Edura SI property1', '2 Cr2', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.3', 24, 35, '50006', '1724153207project.jpg', '0', '1', '2024-09-03 06:13:35', 'mail@siproperty.in', 919447169988, 'Michael Bean', 0, ''),
(13, 'LEELA MADHAVAM LEGACY', '₹ 1 CR', 'Leela Madhavam Legacy by SI Property consists of a total of 39 apartments in 2 blocks. ', 3, 2, '600', '1725445895project.jpeg', '1', '0', '2024-09-04 10:31:35', 'mail@siproperty.in', 919447169988, 'Michael Bean', 1, ''),
(14, 'LEELA MADHAVAM LEGACY', '₹ 1 CR', 'Leela Madhavam Legacy by SI Property consists of a total of 39 apartments in 2 blocks. ', 3, 2, '600', '1725445996project.jpeg', '1', '0', '2024-09-04 10:33:16', 'mail@siproperty.in', 919447169988, 'Michael Bean', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(50) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `time`) VALUES
(4, 'abhin@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-07-26 07:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menuid` int(11) NOT NULL,
  `menuname` varchar(255) NOT NULL,
  `menutype` text NOT NULL,
  `parentmenuid` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `menuimg` varchar(255) DEFAULT NULL,
  `alttagimg1` varchar(255) DEFAULT NULL,
  `orderno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menuid`, `menuname`, `menutype`, `parentmenuid`, `url`, `status`, `menuimg`, `alttagimg1`, `orderno`) VALUES
(16, 'Clearance Sale', '1', '-1', 'clearencesale', 1, '', NULL, 1),
(17, 'Brands', '1', '-1', '#', 1, '', NULL, 2),
(18, 'Products', '1', '-1', 'products', 1, 'service-img.png', NULL, 3),
(19, 'About Us', '1', '-1', 'about-us', 1, '', NULL, 4),
(20, 'Clearance', '1', '-1', '#', 0, '', NULL, 5),
(24, 'Contact', '1', '18', 'contact-us', 1, 'submenu-icon-3.png', NULL, 6),
(52, 'RR Kabel', '2', '17', 'products/brand/rr-kabel', 1, NULL, NULL, 9),
(54, 'Bticino', '2', '17', 'products/brand/bticino', 1, NULL, NULL, 4),
(55, 'Himel', '2', '17', 'products/brand/himel', 1, NULL, NULL, 4),
(56, 'Siemens', '2', '17', 'products/brand/siemens', 1, NULL, NULL, 5),
(57, 'Gm', '2', '17', 'products/brand/gm', 1, NULL, NULL, 5),
(61, 'Capacitor Switches & Sockets', '2', '18', 'products/category/capacitor-switches-sockets', 1, NULL, NULL, 1),
(62, 'LED Lights', '2', '18', 'products/category/led-lights', 1, NULL, NULL, 2),
(63, 'PLC & HMI', '2', '18', 'products/category/plc-hmi', 1, NULL, NULL, 3),
(64, 'Hour Meter', '2', '18', 'products/category/hour-meter', 1, NULL, NULL, 70),
(65, 'Float Switch', '2', '18', 'products/category/float-switch', 1, NULL, NULL, 60),
(66, 'Network Accessories', '2', '18', 'products/category/network-accessories', 1, NULL, NULL, 6),
(67, 'Timers', '2', '18', 'products/category/timers', 1, NULL, NULL, 7),
(68, 'RCCB & RCBO', '2', '18', 'products/category/rccb-rcbo', 1, NULL, NULL, 8),
(69, 'MCB & MCCB', '2', '18', 'products/category/mcb-mccb', 1, NULL, NULL, 9),
(71, 'Alfanar', '2', '17', 'products/brand/alfanar', 1, NULL, NULL, 3),
(89, 'Home', '1', '-1', 'home', 1, NULL, NULL, 1),
(95, 'gkhkhjk', '2', '18', 'products/category/gkhkhjk', 1, NULL, NULL, 23),
(96, 'Legand', '2', '17', 'products/brand/legand', 1, NULL, NULL, 1),
(97, 'Schmersal', '2', '17', 'products/brand/schmersal-1', 1, NULL, NULL, 1),
(98, 'ETE', '2', '17', 'products/brand/ete', 1, NULL, NULL, 1),
(99, 'SCAME', '2', '17', 'products/brand/scame', 1, NULL, NULL, 1),
(100, 'OBO', '2', '17', 'products/brand/obo', 1, NULL, NULL, 1),
(101, 'Hensel', '2', '17', 'products/brand/hensel', 1, NULL, NULL, 1),
(102, 'Weq', '2', '17', 'products/brand/weq', 1, NULL, NULL, 1),
(103, 'D-Link', '2', '17', 'products/brand/d-link', 1, NULL, NULL, 1),
(104, 'Weidmuller', '2', '17', 'products/brand/weidmuller', 1, NULL, NULL, 1),
(105, 'Phoenix', '2', '17', 'products/brand/phoenix', 1, NULL, NULL, 1),
(106, 'Phoenix', '2', '17', 'products/brand/phoenix-1', 1, NULL, NULL, 1),
(107, 'Wago', '2', '17', 'products/brand/wago', 1, NULL, NULL, 1),
(108, 'IFM', '2', '17', 'products/brand/ifm', 1, NULL, NULL, 1),
(109, 'Gewiss', '2', '17', 'products/brand/gewiss', 1, NULL, NULL, 1),
(110, '3M', '2', '17', 'products/brand/3m', 1, NULL, NULL, 1),
(111, 'ELDON', '2', '17', 'products/brand/eldon', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `metadetails`
--

CREATE TABLE `metadetails` (
  `meta1` text NOT NULL,
  `meta2` text NOT NULL,
  `meta3` text NOT NULL,
  `meta4` text NOT NULL,
  `meta5` text NOT NULL,
  `meta6` text NOT NULL,
  `metaid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `metadetails`
--

INSERT INTO `metadetails` (`meta1`, `meta2`, `meta3`, `meta4`, `meta5`, `meta6`, `metaid`) VALUES
('   ', '    ', '   ', '   ', '   ', '   ', 10);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `mod_id` int(12) NOT NULL,
  `mod_name` varchar(25) NOT NULL,
  `mod_status` int(5) NOT NULL COMMENT '0: Inactive; 1: Active;'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Available modules in this site';

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`mod_id`, `mod_name`, `mod_status`) VALUES
(1, 'Dashboard', 1),
(2, 'Staffs', 1),
(3, 'Clients', 1),
(6, 'Site Settings', 1),
(7, 'Alerts & Messages', 0),
(8, 'Ask for IFIX Support', 1),
(9, 'Staff Roles', 1),
(10, 'Map', 1),
(11, 'Sitemap', 1),
(12, 'Enquiries', 1),
(13, 'Contact Us', 1),
(14, 'Blogs', 1),
(15, 'Subscribers', 1),
(16, 'Categories', 1),
(17, 'Brands', 1),
(18, 'Our Policies', 1),
(19, 'Products', 1),
(20, 'Product Detail Types', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newslettersubscribe`
--

CREATE TABLE `newslettersubscribe` (
  `newsletterid` int(11) NOT NULL,
  `subscribeemailid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newslettersubscribe`
--

INSERT INTO `newslettersubscribe` (`newsletterid`, `subscribeemailid`) VALUES
(1, 'bbbb@gmail.com'),
(7, 'index@gmail.com'),
(8, 'index@gmail.com'),
(9, 'projects@gmail.com'),
(10, 'propertydetails@gmail.com'),
(16, ''),
(17, ''),
(18, ''),
(19, 'bbbb@gmail.com'),
(20, ''),
(21, ''),
(22, 'index@gmail.com'),
(23, ''),
(24, ''),
(25, ''),
(26, ''),
(27, ''),
(28, ''),
(29, 'aboutus@gmail.com'),
(30, 'aboutus@gmail.com'),
(31, 'blog@gmail.com'),
(32, 'blog@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `grand_total` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive',
  `currency` varchar(25) NOT NULL,
  `shippingamount` double(10,2) NOT NULL,
  `vatper` decimal(6,2) NOT NULL,
  `vatamo` decimal(6,2) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `grand_total`, `created`, `modified`, `status`, `currency`, `shippingamount`, `vatper`, `vatamo`, `name`) VALUES
(9, 1, 30.00, '2024-01-09 11:03:43', '2024-01-09 11:03:43', '1', '', 0.00, '0.00', '0.00', ''),
(10, 1, 30.00, '2024-01-09 11:07:52', '2024-01-09 11:07:52', '1', '', 0.00, '0.00', '0.00', ''),
(11, 1, 0.00, '2024-01-09 11:13:08', '2024-01-09 11:13:08', '1', '', 0.00, '0.00', '0.00', ''),
(12, 1, 90.00, '2024-01-09 11:14:00', '2024-01-09 11:14:00', '1', '', 0.00, '0.00', '0.00', ''),
(13, 1, 30.00, '2024-01-09 11:16:22', '2024-01-09 11:16:22', '1', '', 0.00, '0.00', '0.00', ''),
(14, 1, 30.00, '2024-01-09 11:22:54', '2024-01-09 11:22:54', '1', '', 0.00, '0.00', '0.00', ''),
(15, 1, 30.00, '2024-01-09 11:26:07', '2024-01-09 11:26:07', '1', '', 0.00, '0.00', '0.00', ''),
(16, 1, 30.00, '2024-01-09 11:29:02', '2024-01-09 11:29:02', '1', '', 0.00, '0.00', '0.00', ''),
(17, 1, 0.00, '2024-01-09 11:36:17', '2024-01-09 11:36:17', '1', '', 0.00, '0.00', '0.00', ''),
(18, 1, 60.00, '2024-01-09 11:37:06', '2024-01-09 11:37:06', '1', '', 0.00, '0.00', '0.00', ''),
(19, 1, 30.00, '2024-01-09 11:41:07', '2024-01-09 11:41:07', '1', '', 0.00, '0.00', '0.00', ''),
(20, 1, 30.00, '2024-01-09 11:44:54', '2024-01-09 11:44:54', '1', '', 0.00, '0.00', '0.00', ''),
(21, 1, 0.00, '2024-01-09 11:46:04', '2024-01-09 11:46:04', '1', '', 0.00, '0.00', '0.00', ''),
(22, 1, 90.00, '2024-01-09 11:48:02', '2024-01-09 11:48:02', '1', '', 0.00, '0.00', '0.00', ''),
(23, 1, 30.00, '2024-01-09 11:54:34', '2024-01-09 11:54:34', '1', '', 0.00, '0.00', '0.00', ''),
(24, 1, 30.00, '2024-01-09 11:54:34', '2024-01-09 11:54:34', '1', '', 0.00, '0.00', '0.00', ''),
(25, 1, 30.00, '2024-01-09 11:54:34', '2024-01-09 11:54:34', '1', '', 0.00, '0.00', '0.00', ''),
(26, 1, 30.00, '2024-01-09 11:59:24', '2024-01-09 11:59:24', '1', '', 0.00, '0.00', '0.00', ''),
(27, 1, 30.00, '2024-01-09 12:02:06', '2024-01-09 12:02:06', '1', '', 0.00, '0.00', '0.00', ''),
(28, 1, 30.00, '2024-01-09 12:10:40', '2024-01-09 12:10:40', '1', '', 0.00, '0.00', '0.00', ''),
(29, 1, 0.00, '2024-01-09 12:11:41', '2024-01-09 12:11:41', '1', '', 0.00, '0.00', '0.00', ''),
(30, 1, 30.00, '2024-01-09 12:13:03', '2024-01-09 12:13:03', '1', '', 0.00, '0.00', '0.00', ''),
(31, 1, 30.00, '2024-01-09 12:16:25', '2024-01-09 12:16:25', '1', '', 0.00, '0.00', '0.00', ''),
(32, 1, 30.00, '2024-01-09 12:20:18', '2024-01-09 12:20:18', '1', '', 0.00, '0.00', '0.00', ''),
(33, 1, 30.00, '2024-01-09 12:21:25', '2024-01-09 12:21:25', '1', '', 0.00, '0.00', '0.00', ''),
(34, 1, 30.00, '2024-01-09 12:23:07', '2024-01-09 12:23:07', '1', '', 0.00, '0.00', '0.00', ''),
(35, 1, 30.00, '2024-01-09 12:25:34', '2024-01-09 12:25:34', '1', '', 0.00, '0.00', '0.00', ''),
(36, 1, 30.00, '2024-01-09 12:29:22', '2024-01-09 12:29:22', '1', '', 0.00, '0.00', '0.00', ''),
(37, 1, 0.00, '2024-01-09 12:30:11', '2024-01-09 12:30:11', '1', '', 0.00, '0.00', '0.00', ''),
(38, 1, 0.00, '2024-01-09 12:31:27', '2024-01-09 12:31:27', '1', '', 0.00, '0.00', '0.00', ''),
(39, 1, 30.00, '2024-01-09 12:32:04', '2024-01-09 12:32:04', '1', '', 0.00, '0.00', '0.00', ''),
(40, 1, 60.00, '2024-01-09 12:33:58', '2024-01-09 12:33:58', '1', '', 0.00, '0.00', '0.00', ''),
(41, 1, 90.00, '2024-01-09 12:42:48', '2024-01-09 12:42:48', '1', '', 0.00, '0.00', '0.00', ''),
(42, 1, 30.00, '2024-01-09 13:11:15', '2024-01-09 13:11:15', '1', '', 0.00, '0.00', '0.00', ''),
(43, 1, 180.00, '2024-01-09 14:22:09', '2024-01-09 14:22:09', '1', '', 0.00, '0.00', '0.00', ''),
(44, 1, 60.00, '2024-01-09 14:25:18', '2024-01-09 14:25:18', '1', '', 0.00, '0.00', '0.00', ''),
(45, 1, 30.00, '2024-01-09 14:27:55', '2024-01-09 14:27:55', '1', '', 0.00, '0.00', '0.00', ''),
(46, 1, 30.00, '2024-01-09 14:30:51', '2024-01-09 14:30:51', '1', '', 0.00, '0.00', '0.00', ''),
(47, 1, 120.00, '2024-01-09 14:38:38', '2024-01-09 14:38:38', '1', '', 0.00, '0.00', '0.00', ''),
(48, 1, 390.00, '2024-01-10 04:26:40', '2024-01-10 04:26:40', '1', '', 0.00, '0.00', '0.00', ''),
(49, 1, 30.00, '2024-01-10 04:40:27', '2024-01-10 04:40:27', '1', '', 0.00, '0.00', '0.00', ''),
(50, 1, 30.00, '2024-01-10 05:39:34', '2024-01-10 05:39:34', '1', '', 0.00, '0.00', '0.00', ''),
(51, 1, 30.00, '2024-01-10 05:42:16', '2024-01-10 05:42:16', '1', '', 0.00, '0.00', '0.00', ''),
(52, 1, 60.00, '2024-01-10 05:47:57', '2024-01-10 05:47:57', '1', '', 0.00, '0.00', '0.00', ''),
(53, 1, 60.00, '2024-01-10 05:48:51', '2024-01-10 05:48:51', '1', '', 0.00, '0.00', '0.00', ''),
(54, 1, 30.00, '2024-01-10 06:11:29', '2024-01-10 06:11:29', '1', '', 0.00, '0.00', '0.00', ''),
(55, 1, 60.00, '2024-01-10 06:16:44', '2024-01-10 06:16:44', '1', '', 0.00, '0.00', '0.00', ''),
(57, 1, 30.00, '2024-01-10 07:48:44', '2024-01-10 07:48:44', '1', '', 0.00, '0.00', '0.00', ''),
(58, 1, 60.00, '2024-01-10 08:17:33', '2024-01-10 08:17:33', '1', '', 0.00, '0.00', '0.00', ''),
(59, 1, 60.00, '2024-01-10 08:22:36', '2024-01-10 08:22:36', '1', '', 0.00, '0.00', '0.00', ''),
(60, 1, 90.00, '2024-01-10 08:29:30', '2024-01-10 08:29:30', '1', '', 0.00, '0.00', '0.00', ''),
(61, 1, 60.00, '2024-01-10 08:45:42', '2024-01-10 08:45:42', '1', '', 0.00, '0.00', '0.00', ''),
(62, 1, 270.00, '2024-01-10 15:04:10', '2024-01-10 15:04:10', '1', '', 0.00, '0.00', '0.00', ''),
(63, 1, 150.00, '2024-01-11 11:42:10', '2024-01-11 11:42:10', '1', '', 0.00, '0.00', '0.00', ''),
(64, 1, 53.87, '2024-01-13 07:43:09', '2024-01-13 07:43:09', '1', '', 0.00, '0.00', '0.00', ''),
(65, 1, 559.53, '2024-01-15 09:27:42', '2024-01-15 09:27:42', '1', '', 0.00, '0.00', '0.00', ''),
(66, 1, 0.00, '2024-01-15 09:36:03', '2024-01-15 09:36:03', '1', '', 0.00, '0.00', '0.00', ''),
(67, 1, 44.57, '2024-01-17 07:08:17', '2024-01-17 07:08:17', '1', '', 0.00, '0.00', '0.00', ''),
(68, 1, 100.00, '2024-01-25 07:10:24', '2024-01-25 07:10:24', '1', '', 0.00, '0.00', '0.00', ''),
(69, 1, 100.00, '2024-01-25 07:22:16', '2024-01-25 07:22:16', '1', '', 0.00, '0.00', '0.00', ''),
(85, 1, 44.57, '2024-04-03 16:55:05', '2024-04-03 16:55:05', '1', '', 0.00, '0.00', '0.00', ''),
(86, 1, 503.00, '2024-04-09 08:25:13', '2024-04-09 08:25:13', '1', '', 0.00, '0.00', '0.00', ''),
(87, 1, 844.57, '2024-04-26 16:29:31', '2024-04-26 16:29:31', '1', '', 0.00, '0.00', '0.00', ''),
(88, 1, 676.22, '2024-06-08 15:08:10', '2024-06-08 15:08:10', '1', '', 0.00, '0.00', '0.00', ''),
(89, 48, 0.00, '2024-06-08 16:41:00', '2024-06-08 16:41:00', '1', '', 0.00, '0.00', '0.00', ''),
(90, 48, 0.00, '2024-06-08 17:09:11', '2024-06-08 17:09:11', '1', '', 0.00, '0.00', '0.00', ''),
(91, 49, 139.96, '2024-06-15 07:54:35', '2024-06-15 07:54:35', '1', '', 0.00, '0.00', '0.00', ''),
(92, 49, 800.00, '2024-06-15 09:56:32', '2024-06-15 09:56:32', '1', '', 0.00, '0.00', '0.00', ''),
(93, 49, 400.00, '2024-06-15 10:03:52', '2024-06-15 10:03:52', '1', '', 0.00, '0.00', '0.00', ''),
(94, 49, 539.96, '2024-06-15 10:07:43', '2024-06-15 10:07:43', '1', '', 0.00, '0.00', '0.00', ''),
(95, 49, 279.92, '2024-06-15 10:27:21', '2024-06-15 10:27:21', '1', '', 0.00, '0.00', '0.00', ''),
(96, 49, 1000.00, '2024-06-16 22:50:02', '2024-06-16 22:50:02', '1', '', 0.00, '0.00', '0.00', ''),
(97, 49, 646.00, '2024-06-17 15:33:57', '2024-06-17 15:33:57', '1', '', 0.00, '0.00', '0.00', ''),
(98, 49, 174.00, '2024-06-20 16:20:48', '2024-06-20 16:20:48', '1', '', 0.00, '0.00', '0.00', ''),
(99, 49, 646.00, '2024-06-21 11:47:23', '2024-06-21 11:47:23', '1', '', 0.00, '0.00', '0.00', ''),
(100, 49, 690.57, '2024-06-21 11:59:04', '2024-06-21 11:59:04', '1', '', 0.00, '0.00', '0.00', ''),
(101, 49, 0.00, '2024-06-21 12:09:40', '2024-06-21 12:09:40', '1', '', 0.00, '0.00', '0.00', ''),
(102, 49, 61.08, '2024-06-21 12:10:13', '2024-06-21 12:10:13', '1', '', 0.00, '0.00', '0.00', ''),
(103, 49, 137.56, '2024-06-21 12:13:29', '2024-06-21 12:13:29', '1', '', 0.00, '0.00', '0.00', ''),
(104, 49, 137.56, '2024-06-21 12:15:31', '2024-06-21 12:15:31', '1', '', 0.00, '0.00', '0.00', ''),
(105, 49, 61.08, '2024-06-21 12:16:40', '2024-06-21 12:16:40', '1', '', 0.00, '0.00', '0.00', ''),
(106, 49, 137.56, '2024-06-21 12:28:53', '2024-06-21 12:28:53', '1', '', 0.00, '0.00', '0.00', ''),
(107, 49, 61.08, '2024-06-21 12:29:57', '2024-06-21 12:29:57', '1', '', 0.00, '0.00', '0.00', ''),
(108, 49, 61.08, '2024-06-21 21:09:53', '2024-06-21 21:09:53', '1', '', 0.00, '0.00', '0.00', ''),
(109, 49, 61.08, '2024-06-21 21:11:29', '2024-06-21 21:11:29', '1', '', 0.00, '0.00', '0.00', ''),
(110, 49, 122.16, '2024-06-21 21:13:38', '2024-06-21 21:13:38', '1', '', 0.00, '0.00', '0.00', ''),
(111, 49, 61.08, '2024-06-21 21:15:43', '2024-06-21 21:15:43', '1', '', 0.00, '0.00', '0.00', ''),
(112, 49, 61.08, '2024-06-21 21:17:18', '2024-06-21 21:17:18', '1', '', 0.00, '0.00', '0.00', ''),
(113, 49, 139.96, '2024-06-21 21:21:10', '2024-06-21 21:21:10', '1', '', 0.00, '0.00', '0.00', ''),
(114, 49, 61.08, '2024-06-21 21:28:08', '2024-06-21 21:28:08', '1', '', 0.00, '0.00', '0.00', ''),
(115, 49, 0.00, '2024-06-21 21:28:40', '2024-06-21 21:28:40', '1', '', 0.00, '0.00', '0.00', ''),
(116, 49, 61.08, '2024-06-21 21:28:54', '2024-06-21 21:28:54', '1', '', 0.00, '0.00', '0.00', ''),
(117, 49, 61.08, '2024-06-21 21:30:46', '2024-06-21 21:30:46', '1', '', 0.00, '0.00', '0.00', ''),
(118, 49, 44.57, '2024-06-21 21:32:52', '2024-06-21 21:32:52', '1', '', 0.00, '0.00', '0.00', ''),
(119, 49, 61.08, '2024-06-21 21:33:47', '2024-06-21 21:33:47', '1', '', 0.00, '0.00', '0.00', ''),
(120, 49, 61.08, '2024-06-21 21:35:05', '2024-06-21 21:35:05', '1', '', 0.00, '0.00', '0.00', ''),
(121, 49, 44.57, '2024-06-21 21:36:47', '2024-06-21 21:36:47', '1', '', 0.00, '0.00', '0.00', ''),
(122, 49, 44.57, '2024-06-21 21:38:09', '2024-06-21 21:38:09', '1', '', 0.00, '0.00', '0.00', ''),
(123, 49, 411.05, '2024-06-22 08:47:23', '2024-06-22 08:47:23', '1', '', 0.00, '0.00', '0.00', ''),
(124, 49, 61.08, '2024-06-22 08:48:23', '2024-06-22 08:48:23', '1', '', 0.00, '0.00', '0.00', ''),
(125, 49, 44.57, '2024-06-22 08:51:51', '2024-06-22 08:51:51', '1', '', 0.00, '0.00', '0.00', ''),
(126, 49, 44.57, '2024-06-22 08:57:05', '2024-06-22 08:57:05', '1', '', 0.00, '0.00', '0.00', ''),
(127, 49, 44.57, '2024-06-22 09:00:22', '2024-06-22 09:00:22', '1', '', 0.00, '0.00', '0.00', ''),
(128, 49, 450.00, '2024-06-23 15:38:31', '2024-06-23 15:38:31', '1', '', 0.00, '0.00', '0.00', ''),
(129, 50, 61.08, '2024-06-24 08:14:26', '2024-06-24 08:14:26', '1', '', 0.00, '0.00', '0.00', ''),
(130, 50, 61.08, '2024-06-24 09:18:03', '2024-06-24 09:18:03', '1', '', 0.00, '0.00', '0.00', ''),
(131, 50, 61.08, '2024-06-24 09:22:32', '2024-06-24 09:22:32', '1', '', 0.00, '0.00', '0.00', ''),
(132, 50, 61.08, '2024-06-24 09:25:09', '2024-06-24 09:25:09', '1', '', 0.00, '0.00', '0.00', ''),
(133, 50, 44.57, '2024-06-24 09:27:54', '2024-06-24 09:27:54', '1', '', 0.00, '0.00', '0.00', ''),
(134, 50, 89.14, '2024-06-24 09:35:54', '2024-06-24 09:35:54', '1', '', 0.00, '0.00', '0.00', ''),
(135, 50, 44.57, '2024-06-24 09:55:40', '2024-06-24 09:55:40', '1', '', 0.00, '0.00', '0.00', ''),
(136, 50, 44.57, '2024-06-24 09:58:27', '2024-06-24 09:58:27', '1', '', 0.00, '0.00', '0.00', ''),
(137, 50, 44.57, '2024-06-24 10:15:23', '2024-06-24 10:15:23', '1', '', 0.00, '0.00', '0.00', ''),
(138, 50, 44.57, '2024-06-24 10:20:38', '2024-06-24 10:20:38', '1', '', 0.00, '0.00', '0.00', ''),
(139, 50, 0.00, '2024-06-24 10:21:25', '2024-06-24 10:21:25', '1', '', 0.00, '0.00', '0.00', ''),
(140, 50, 44.57, '2024-06-24 10:22:29', '2024-06-24 10:22:29', '1', '', 0.00, '0.00', '0.00', ''),
(141, 50, 61.08, '2024-06-24 10:23:37', '2024-06-24 10:23:37', '1', '', 0.00, '0.00', '0.00', ''),
(142, 50, 44.57, '2024-06-24 10:25:33', '2024-06-24 10:25:33', '1', '', 0.00, '0.00', '0.00', ''),
(143, 50, 0.00, '2024-06-24 10:26:38', '2024-06-24 10:26:38', '1', '', 0.00, '0.00', '0.00', ''),
(144, 50, 44.57, '2024-06-24 10:27:23', '2024-06-24 10:27:23', '1', '', 0.00, '0.00', '0.00', ''),
(145, 50, 44.57, '2024-06-24 10:28:57', '2024-06-24 10:28:57', '1', '', 0.00, '0.00', '0.00', ''),
(146, 50, 178.28, '2024-06-24 11:23:16', '2024-06-24 11:23:16', '1', '', 0.00, '0.00', '0.00', ''),
(147, 50, 44.57, '2024-06-24 11:34:39', '2024-06-24 11:34:39', '1', '', 0.00, '0.00', '0.00', ''),
(148, 50, 0.00, '2024-06-24 11:35:24', '2024-06-24 11:35:24', '1', '', 0.00, '0.00', '0.00', ''),
(149, 50, 44.57, '2024-06-24 11:36:45', '2024-06-24 11:36:45', '1', '', 0.00, '0.00', '0.00', ''),
(150, 50, 61.08, '2024-06-24 11:38:29', '2024-06-24 11:38:29', '1', '', 0.00, '0.00', '0.00', ''),
(151, 50, 44.57, '2024-06-24 11:40:45', '2024-06-24 11:40:45', '1', '', 0.00, '0.00', '0.00', ''),
(152, 50, 105.65, '2024-06-24 11:51:25', '2024-06-24 11:51:25', '1', '', 0.00, '0.00', '0.00', ''),
(153, 49, 44.57, '2024-06-24 11:58:24', '2024-06-24 11:58:24', '1', '', 0.00, '0.00', '0.00', ''),
(154, 49, 105.65, '2024-06-25 15:52:33', '2024-06-25 15:52:33', '1', '', 0.00, '0.00', '0.00', ''),
(155, 50, 139.96, '2024-06-26 17:11:05', '2024-06-26 17:11:05', '1', '', 0.00, '0.00', '0.00', ''),
(156, 50, 137.56, '2024-06-26 17:17:24', '2024-06-26 17:17:24', '1', '', 0.00, '0.00', '0.00', ''),
(157, 50, 44.57, '2024-06-26 17:17:49', '2024-06-26 17:17:49', '1', '', 0.00, '0.00', '0.00', ''),
(158, 50, 646.00, '2024-06-27 19:49:07', '2024-06-27 19:49:07', '1', '', 0.00, '0.00', '0.00', ''),
(159, 50, 61.08, '2024-06-27 20:27:59', '2024-06-27 20:27:59', '1', '', 0.00, '0.00', '0.00', ''),
(160, 50, 44.57, '2024-06-29 13:52:17', '2024-06-29 13:52:17', '1', '', 0.00, '0.00', '0.00', ''),
(161, 50, 61.08, '2024-06-29 14:03:04', '2024-06-29 14:03:04', '1', '', 0.00, '0.00', '0.00', ''),
(162, 50, 61.08, '2024-06-29 14:31:21', '2024-06-29 14:31:21', '1', '', 0.00, '0.00', '0.00', ''),
(163, 50, 122.16, '2024-06-29 15:10:06', '2024-06-29 15:10:06', '1', '', 0.00, '0.00', '0.00', ''),
(164, 50, 44.57, '2024-06-29 15:11:47', '2024-06-29 15:11:47', '1', '', 0.00, '0.00', '0.00', ''),
(165, 50, 0.00, '2024-06-29 15:16:45', '2024-06-29 15:16:45', '1', '', 0.00, '0.00', '0.00', ''),
(166, 50, 61.08, '2024-06-29 15:18:24', '2024-06-29 15:18:24', '1', '', 0.00, '0.00', '0.00', ''),
(167, 50, 44.57, '2024-06-29 15:19:30', '2024-06-29 15:19:30', '1', '', 0.00, '0.00', '0.00', ''),
(168, 50, 61.08, '2024-06-29 15:21:19', '2024-06-29 15:21:19', '1', '', 0.00, '0.00', '0.00', ''),
(169, 50, 61.08, '2024-06-29 15:22:20', '2024-06-29 15:22:20', '1', '', 0.00, '0.00', '0.00', ''),
(170, 50, 61.08, '2024-06-29 15:26:34', '2024-06-29 15:26:34', '1', '', 0.00, '0.00', '0.00', ''),
(171, 50, 61.08, '2024-06-29 15:30:25', '2024-06-29 15:30:25', '1', '', 0.00, '0.00', '0.00', ''),
(172, 50, 61.08, '2024-06-29 15:33:41', '2024-06-29 15:33:41', '1', '', 0.00, '0.00', '0.00', ''),
(173, 50, 450.00, '2024-06-29 17:57:22', '2024-06-29 17:57:22', '1', '', 0.00, '0.00', '0.00', ''),
(174, 50, 511.08, '2024-06-29 18:19:15', '2024-06-29 18:19:15', '1', '', 0.00, '0.00', '0.00', ''),
(175, 50, 82.45, '2024-06-29 18:23:51', '2024-06-29 18:23:51', '1', '', 0.00, '0.00', '0.00', ''),
(176, 50, 1649.00, '2024-06-29 18:32:32', '2024-06-29 18:32:32', '1', '', 0.00, '0.00', '0.00', ''),
(177, 50, 44570.00, '2024-06-29 18:53:44', '2024-06-29 18:53:44', '1', '', 0.00, '0.00', '0.00', ''),
(178, 50, 61.08, '2024-06-29 19:24:49', '2024-06-29 19:24:49', '1', '', 0.00, '0.00', '0.00', ''),
(179, 50, 89.14, '2024-06-29 19:32:25', '2024-06-29 19:32:25', '1', '', 0.00, '0.00', '0.00', ''),
(180, 50, 89.14, '2024-06-29 19:34:03', '2024-06-29 19:34:03', '1', '', 0.00, '0.00', '0.00', ''),
(181, 50, 44.57, '2024-06-29 19:50:24', '2024-06-29 19:50:24', '1', '', 0.00, '0.00', '0.00', ''),
(182, 50, 44.57, '2024-06-29 20:11:40', '2024-06-29 20:11:40', '1', '', 0.00, '0.00', '0.00', ''),
(183, 50, 244.32, '2024-06-29 20:17:08', '2024-06-29 20:17:08', '1', '', 0.00, '0.00', '0.00', ''),
(184, 50, 89.14, '2024-06-29 20:26:26', '2024-06-29 20:26:26', '1', '', 0.00, '0.00', '0.00', ''),
(185, 50, 122.16, '2024-06-29 20:28:52', '2024-06-29 20:28:52', '1', '', 0.00, '0.00', '0.00', ''),
(186, 50, 61.08, '2024-06-29 20:32:22', '2024-06-29 20:32:22', '1', '', 0.00, '0.00', '0.00', ''),
(187, 50, 89.14, '2024-06-29 20:35:27', '2024-06-29 20:35:27', '1', '', 0.00, '0.00', '0.00', ''),
(188, 50, 61.08, '2024-06-29 20:37:22', '2024-06-29 20:37:22', '1', '', 0.00, '0.00', '0.00', ''),
(189, 50, 122.16, '2024-06-29 20:40:03', '2024-06-29 20:40:03', '1', '', 0.00, '0.00', '0.00', ''),
(190, 50, 122.16, '2024-06-29 20:44:02', '2024-06-29 20:44:02', '1', '', 0.00, '0.00', '0.00', ''),
(191, 50, 122.16, '2024-06-29 20:45:35', '2024-06-29 20:45:35', '1', '', 0.00, '0.00', '0.00', ''),
(192, 50, 183.24, '2024-06-29 20:48:51', '2024-06-29 20:48:51', '1', '', 0.00, '0.00', '0.00', ''),
(193, 50, 107.74, '2024-06-29 20:51:31', '2024-06-29 20:51:31', '1', '', 0.00, '0.00', '0.00', ''),
(194, 50, 44.57, '2024-06-29 20:53:10', '2024-06-29 20:53:10', '1', '', 0.00, '0.00', '0.00', ''),
(195, 50, 183.24, '2024-06-29 20:56:36', '2024-06-29 20:56:36', '1', '', 0.00, '0.00', '0.00', ''),
(196, 50, 89.14, '2024-06-29 21:02:11', '2024-06-29 21:02:11', '1', '', 0.00, '0.00', '0.00', ''),
(197, 50, 44.57, '2024-06-29 21:05:21', '2024-06-29 21:05:21', '1', '', 0.00, '0.00', '0.00', ''),
(198, 50, 366.04, '2024-06-30 06:34:19', '2024-06-30 06:34:19', '1', '', 0.00, '0.00', '0.00', ''),
(199, 50, 0.00, '2024-06-30 07:00:36', '2024-06-30 07:00:36', '1', '', 0.00, '0.00', '0.00', ''),
(200, 50, 44.57, '2024-06-30 07:08:50', '2024-06-30 07:08:50', '1', '', 0.00, '0.00', '0.00', ''),
(201, 50, 133.71, '2024-06-30 08:02:59', '2024-06-30 08:02:59', '1', '', 0.00, '0.00', '0.00', ''),
(202, 50, 44.57, '2024-06-30 08:37:54', '2024-06-30 08:37:54', '1', '', 0.00, '0.00', '0.00', ''),
(203, 50, 89.14, '2024-06-30 08:40:21', '2024-06-30 08:40:21', '1', '', 0.00, '0.00', '0.00', ''),
(204, 50, 122.16, '2024-06-30 08:55:34', '2024-06-30 08:55:34', '1', '', 0.00, '0.00', '0.00', ''),
(205, 50, 44.57, '2024-06-30 09:08:34', '2024-06-30 09:08:34', '1', '', 0.00, '0.00', '0.00', ''),
(206, 50, 44.57, '2024-06-30 09:13:05', '2024-06-30 09:13:05', '1', '', 0.00, '0.00', '0.00', ''),
(207, 50, 61.08, '2024-06-30 09:15:20', '2024-06-30 09:15:20', '1', '', 0.00, '0.00', '0.00', ''),
(208, 50, 122.16, '2024-06-30 09:22:52', '2024-06-30 09:22:52', '1', '', 0.00, '0.00', '0.00', ''),
(209, 50, 122.16, '2024-06-30 09:25:21', '2024-06-30 09:25:21', '1', '', 0.00, '0.00', '0.00', ''),
(210, 50, 905.72, '2024-06-30 10:59:09', '2024-06-30 10:59:09', '1', '', 0.00, '0.00', '0.00', ''),
(211, 50, 951.40, '2024-06-30 15:40:32', '2024-06-30 15:40:32', '1', '', 0.00, '0.00', '0.00', ''),
(212, 50, 44.57, '2024-07-03 12:02:43', '2024-07-03 12:02:43', '1', '', 0.00, '0.00', '0.00', ''),
(213, 50, 4947.00, '2024-07-03 12:21:52', '2024-07-03 12:21:52', '1', '', 0.00, '0.00', '0.00', ''),
(214, 50, 450000.00, '2024-07-03 12:36:54', '2024-07-03 12:36:54', '1', '', 0.00, '0.00', '0.00', ''),
(215, 50, 450.00, '2024-07-03 12:48:44', '2024-07-03 12:48:44', '1', '', 0.00, '0.00', '0.00', ''),
(216, 50, 466.49, '2024-07-03 13:08:33', '2024-07-03 13:08:33', '1', '', 0.00, '0.00', '0.00', ''),
(217, 50, 44.57, '2024-07-03 13:22:51', '2024-07-03 13:22:51', '1', '', 0.00, '0.00', '0.00', ''),
(218, 50, 0.00, '2024-07-03 13:23:21', '2024-07-03 13:23:21', '1', '', 0.00, '0.00', '0.00', ''),
(219, 50, 44.57, '2024-07-03 13:24:21', '2024-07-03 13:24:21', '1', '', 0.00, '0.00', '0.00', ''),
(220, 50, 193.83, '2024-07-04 12:35:51', '2024-07-04 12:35:51', '1', '', 0.00, '0.00', '0.00', ''),
(221, 50, 150.00, '2024-07-04 12:44:34', '2024-07-04 12:44:34', '1', '', 0.00, '0.00', '0.00', ''),
(222, 50, 61.08, '2024-07-06 10:07:35', '2024-07-06 10:07:35', '1', '', 0.00, '0.00', '0.00', ''),
(223, 50, 61.08, '2024-07-06 10:09:59', '2024-07-06 10:09:59', '1', '', 0.00, '0.00', '0.00', ''),
(224, 50, 61.08, '2024-07-06 10:26:55', '2024-07-06 10:26:55', '1', '', 0.00, '0.00', '0.00', ''),
(225, 50, 61.08, '2024-07-06 10:50:54', '2024-07-06 10:50:54', '1', 'AED', 25.00, '0.00', '0.00', ''),
(226, 50, 522.16, '2024-07-06 10:53:32', '2024-07-06 10:53:32', '1', 'AED', 0.00, '0.00', '0.00', ''),
(227, 50, 61.08, '2024-07-06 11:21:37', '2024-07-06 11:21:37', '1', 'AED', 25.00, '0.00', '0.00', ''),
(228, 50, 86.08, '2024-07-06 11:31:21', '2024-07-06 11:31:21', '1', 'AED', 25.00, '0.00', '0.00', ''),
(229, 50, 86.08, '2024-07-06 11:33:38', '2024-07-06 11:33:38', '1', 'AED', 25.00, '0.00', '0.00', ''),
(230, 50, 86.08, '2024-07-06 11:36:23', '2024-07-06 11:36:23', '1', 'AED', 25.00, '0.00', '0.00', ''),
(231, 50, 86.08, '2024-07-06 11:43:43', '2024-07-06 11:43:43', '1', 'AED', 25.00, '0.00', '0.00', ''),
(232, 50, 281.54, '2024-07-06 16:16:49', '2024-07-06 16:16:49', '1', 'AED', 25.00, '5.00', '12.22', ''),
(233, 50, 135.93, '2024-07-06 16:33:28', '2024-07-06 16:33:28', '1', 'AED', 25.00, '5.00', '5.28', 'xxxxx'),
(234, 50, 118.60, '2024-07-06 17:14:35', '2024-07-06 17:14:35', '1', 'AED', 25.00, '5.00', '4.46', 'jghjgh jhgjghj'),
(235, 50, 29.46, '2024-07-06 17:20:18', '2024-07-06 17:20:18', '1', 'AED', 25.00, '5.00', '4.46', 'jghjgh jhgjghj'),
(236, 50, 89.13, '2024-07-06 17:22:54', '2024-07-06 17:22:54', '1', 'AED', 25.00, '5.00', '3.05', 'rtutyuty tyuty'),
(237, 50, 89.13, '2024-07-06 17:28:45', '2024-07-06 17:28:45', '1', 'AED', 25.00, '5.00', '3.05', 'dfgdfgdf dfgdfg'),
(238, 50, 135.93, '2024-07-06 18:14:36', '2024-07-06 18:14:36', '1', 'AED', 25.00, '5.00', '5.28', 'yhuiyui yuiyui'),
(239, 50, 30.28, '2024-07-06 18:43:52', '2024-07-06 18:43:52', '1', 'AED', 25.00, '5.00', '5.28', 'yhuiyui yuiyui'),
(240, 50, 153.27, '2024-07-06 18:44:49', '2024-07-06 18:44:49', '1', 'AED', 25.00, '5.00', '6.11', 'ryrty rtyrty'),
(241, 50, 146.96, '2024-07-08 07:33:47', '2024-07-08 07:33:47', '1', 'AED', 0.00, '5.00', '7.00', 'tyuytu tyutyu'),
(242, 50, 64.13, '2024-07-08 07:44:37', '2024-07-08 07:44:37', '1', 'AED', 0.00, '5.00', '3.05', '567567 56756'),
(243, 50, 71.80, '2024-07-08 08:35:49', '2024-07-08 08:35:49', '1', 'AED', 25.00, '5.00', '2.23', 'tuyrtuty utyuyt'),
(244, 50, 128.27, '2024-07-08 08:41:22', '2024-07-08 08:41:22', '1', 'AED', 0.00, '5.00', '6.11', 'rtutyu tyutyu'),
(245, 50, 128.27, '2024-07-08 08:47:09', '2024-07-08 08:47:09', '1', 'AED', 0.00, '5.00', '6.11', 'utyutyu tyuty'),
(246, 50, 128.27, '2024-07-08 08:51:39', '2024-07-08 08:51:39', '1', 'AED', 0.00, '5.00', '6.11', 'rtuytu tyuytu'),
(247, 50, 153.27, '2024-07-08 08:53:06', '2024-07-08 08:53:06', '1', 'AED', 25.00, '5.00', '6.11', 'fghfgh fghfgh'),
(248, 50, 89.13, '2024-07-08 09:03:40', '2024-07-08 09:03:40', '1', 'AED', 25.00, '5.00', '3.05', 'fghfgh fghfgh'),
(249, 50, 130.65, '2024-07-13 12:59:56', '2024-07-13 12:59:56', '1', 'AED', 25.00, '0.00', '0.00', 'tutyutyu tyutyu'),
(250, 50, 130.65, '2024-07-13 14:00:25', '2024-07-13 14:00:25', '1', 'AED', 25.00, '0.00', '0.00', 'yuoyoui uiouioui'),
(251, 50, 130.65, '2024-07-13 14:10:02', '2024-07-13 14:10:02', '1', 'AED', 25.00, '0.00', '0.00', 'fghjgj ghjhgj'),
(252, 50, 141.48, '2024-07-13 14:26:24', '2024-07-13 14:26:24', '1', 'AED', 25.00, '0.00', '0.00', 'iyuiyu yuiyu'),
(253, 50, 141.48, '2024-07-13 14:30:47', '2024-07-13 14:30:47', '1', 'AED', 25.00, '5.00', '5.55', 'yuiyui yuiyui'),
(254, 50, 141.48, '2024-07-13 14:35:59', '2024-07-13 14:35:59', '1', 'AED', 25.00, '5.00', '5.55', '78978978 78978978'),
(255, 50, 141.48, '2024-07-13 14:38:45', '2024-07-13 14:38:45', '1', 'AED', 25.00, '5.00', '5.55', 'yuiyuiy yuiyui');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL,
  `sub_total` float(10,2) NOT NULL,
  `vatrate` decimal(6,2) NOT NULL,
  `vatamo` decimal(6,2) NOT NULL,
  `pricewithvat` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `sub_total`, `vatrate`, `vatamo`, `pricewithvat`) VALUES
(1, 2, 2, 8, 560.00, '0.00', '0.00', '0.00'),
(2, 2, 1, 1, 50.00, '0.00', '0.00', '0.00'),
(3, 2, 7, 4, 120.00, '0.00', '0.00', '0.00'),
(4, 2, 8, 3, 90.00, '0.00', '0.00', '0.00'),
(5, 2, 6, 1, 30.00, '0.00', '0.00', '0.00'),
(6, 3, 8, 1, 30.00, '0.00', '0.00', '0.00'),
(7, 3, 4, 1, 30.00, '0.00', '0.00', '0.00'),
(8, 4, 4, 1, 30.00, '0.00', '0.00', '0.00'),
(9, 5, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(10, 6, 49, 1, 30.00, '0.00', '0.00', '0.00'),
(11, 7, 49, 1, 30.00, '0.00', '0.00', '0.00'),
(12, 7, 6, 1, 30.00, '0.00', '0.00', '0.00'),
(13, 8, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(14, 9, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(15, 10, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(16, 12, 52, 2, 60.00, '0.00', '0.00', '0.00'),
(17, 12, 4, 1, 30.00, '0.00', '0.00', '0.00'),
(18, 13, 50, 1, 30.00, '0.00', '0.00', '0.00'),
(19, 14, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(20, 15, 48, 1, 30.00, '0.00', '0.00', '0.00'),
(21, 16, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(22, 18, 52, 2, 60.00, '0.00', '0.00', '0.00'),
(23, 19, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(24, 20, 50, 1, 30.00, '0.00', '0.00', '0.00'),
(25, 22, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(26, 22, 8, 1, 30.00, '0.00', '0.00', '0.00'),
(27, 22, 51, 1, 30.00, '0.00', '0.00', '0.00'),
(28, 23, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(29, 26, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(30, 27, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(31, 28, 51, 1, 30.00, '0.00', '0.00', '0.00'),
(32, 30, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(33, 31, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(34, 32, 51, 1, 30.00, '0.00', '0.00', '0.00'),
(35, 33, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(36, 34, 51, 1, 30.00, '0.00', '0.00', '0.00'),
(37, 35, 50, 1, 30.00, '0.00', '0.00', '0.00'),
(38, 36, 51, 1, 30.00, '0.00', '0.00', '0.00'),
(39, 39, 50, 1, 30.00, '0.00', '0.00', '0.00'),
(40, 40, 50, 1, 30.00, '0.00', '0.00', '0.00'),
(41, 40, 49, 1, 30.00, '0.00', '0.00', '0.00'),
(42, 41, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(43, 41, 8, 1, 30.00, '0.00', '0.00', '0.00'),
(44, 41, 48, 1, 30.00, '0.00', '0.00', '0.00'),
(45, 42, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(46, 43, 50, 6, 180.00, '0.00', '0.00', '0.00'),
(47, 44, 8, 1, 30.00, '0.00', '0.00', '0.00'),
(48, 44, 50, 1, 30.00, '0.00', '0.00', '0.00'),
(49, 45, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(50, 46, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(51, 47, 50, 2, 60.00, '0.00', '0.00', '0.00'),
(52, 47, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(53, 47, 15, 1, 30.00, '0.00', '0.00', '0.00'),
(54, 48, 47, 2, 60.00, '0.00', '0.00', '0.00'),
(55, 48, 50, 4, 120.00, '0.00', '0.00', '0.00'),
(56, 48, 7, 2, 60.00, '0.00', '0.00', '0.00'),
(57, 48, 8, 5, 150.00, '0.00', '0.00', '0.00'),
(58, 49, 7, 1, 30.00, '0.00', '0.00', '0.00'),
(59, 50, 50, 1, 30.00, '0.00', '0.00', '0.00'),
(60, 51, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(61, 52, 8, 1, 30.00, '0.00', '0.00', '0.00'),
(62, 52, 48, 1, 30.00, '0.00', '0.00', '0.00'),
(63, 53, 49, 2, 60.00, '0.00', '0.00', '0.00'),
(64, 54, 23, 1, 30.00, '0.00', '0.00', '0.00'),
(65, 55, 8, 1, 30.00, '0.00', '0.00', '0.00'),
(66, 55, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(67, 56, 52, 2, 60.00, '0.00', '0.00', '0.00'),
(68, 56, 50, 2, 60.00, '0.00', '0.00', '0.00'),
(69, 57, 7, 1, 30.00, '0.00', '0.00', '0.00'),
(70, 58, 50, 1, 30.00, '0.00', '0.00', '0.00'),
(71, 58, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(72, 59, 8, 2, 60.00, '0.00', '0.00', '0.00'),
(73, 60, 49, 1, 30.00, '0.00', '0.00', '0.00'),
(74, 60, 6, 2, 60.00, '0.00', '0.00', '0.00'),
(75, 61, 8, 1, 30.00, '0.00', '0.00', '0.00'),
(76, 61, 52, 1, 30.00, '0.00', '0.00', '0.00'),
(77, 62, 44, 2, 60.00, '0.00', '0.00', '0.00'),
(78, 62, 50, 4, 120.00, '0.00', '0.00', '0.00'),
(79, 62, 2, 3, 90.00, '0.00', '0.00', '0.00'),
(80, 63, 4, 2, 60.00, '0.00', '0.00', '0.00'),
(81, 63, 6, 1, 30.00, '0.00', '0.00', '0.00'),
(82, 63, 8, 2, 60.00, '0.00', '0.00', '0.00'),
(83, 64, 49, 1, 53.87, '0.00', '0.00', '0.00'),
(84, 65, 50, 3, 419.88, '0.00', '0.00', '0.00'),
(85, 65, 49, 1, 53.87, '0.00', '0.00', '0.00'),
(86, 65, 47, 1, 85.78, '0.00', '0.00', '0.00'),
(87, 65, 52, 1, 0.00, '0.00', '0.00', '0.00'),
(88, 66, 14, 1, 0.00, '0.00', '0.00', '0.00'),
(89, 67, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(90, 68, 10, 1, 100.00, '0.00', '0.00', '0.00'),
(91, 69, 10, 1, 100.00, '0.00', '0.00', '0.00'),
(92, 70, 106, 1, 500.00, '0.00', '0.00', '0.00'),
(93, 71, 50, 1, 139.96, '0.00', '0.00', '0.00'),
(94, 72, 6, 1, 34.00, '0.00', '0.00', '0.00'),
(95, 73, 106, 1, 500.00, '0.00', '0.00', '0.00'),
(96, 74, 52, 1, 0.00, '0.00', '0.00', '0.00'),
(97, 75, 43, 1, 53.87, '0.00', '0.00', '0.00'),
(98, 76, 8, 2, 40.00, '0.00', '0.00', '0.00'),
(99, 77, 4, 1, 58.00, '0.00', '0.00', '0.00'),
(100, 78, 48, 1, 137.56, '0.00', '0.00', '0.00'),
(101, 78, 50, 2, 279.92, '0.00', '0.00', '0.00'),
(102, 79, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(103, 79, 49, 1, 53.87, '0.00', '0.00', '0.00'),
(104, 80, 50, 1, 139.96, '0.00', '0.00', '0.00'),
(105, 81, 8, 1, 20.00, '0.00', '0.00', '0.00'),
(106, 82, 6, 3, 102.00, '0.00', '0.00', '0.00'),
(107, 83, 4, 1, 58.00, '0.00', '0.00', '0.00'),
(108, 84, 49, 1, 53.87, '0.00', '0.00', '0.00'),
(109, 85, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(110, 86, 18, 1, 503.00, '0.00', '0.00', '0.00'),
(111, 87, 130, 1, 800.00, '0.00', '0.00', '0.00'),
(112, 87, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(113, 88, 50, 2, 279.92, '0.00', '0.00', '0.00'),
(114, 88, 17, 1, 351.73, '0.00', '0.00', '0.00'),
(115, 88, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(116, 89, 52, 1, 0.00, '0.00', '0.00', '0.00'),
(117, 90, 52, 1, 0.00, '0.00', '0.00', '0.00'),
(118, 91, 50, 1, 139.96, '0.00', '0.00', '0.00'),
(119, 92, 50, 2, 800.00, '0.00', '0.00', '0.00'),
(120, 93, 50, 1, 400.00, '0.00', '0.00', '0.00'),
(121, 94, 50, 1, 139.96, '0.00', '0.00', '0.00'),
(122, 94, 49, 1, 400.00, '0.00', '0.00', '0.00'),
(123, 95, 50, 2, 279.92, '0.00', '0.00', '0.00'),
(124, 96, 115, 2, 1000.00, '0.00', '0.00', '0.00'),
(125, 97, 19, 1, 646.00, '0.00', '0.00', '0.00'),
(126, 98, 4, 3, 174.00, '0.00', '0.00', '0.00'),
(127, 99, 19, 1, 646.00, '0.00', '0.00', '0.00'),
(128, 100, 19, 1, 646.00, '0.00', '0.00', '0.00'),
(129, 100, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(130, 102, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(131, 103, 48, 1, 137.56, '0.00', '0.00', '0.00'),
(132, 104, 48, 1, 137.56, '0.00', '0.00', '0.00'),
(133, 105, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(134, 106, 48, 1, 137.56, '0.00', '0.00', '0.00'),
(135, 107, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(136, 108, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(137, 109, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(138, 110, 45, 2, 122.16, '0.00', '0.00', '0.00'),
(139, 111, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(140, 112, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(141, 113, 50, 1, 139.96, '0.00', '0.00', '0.00'),
(142, 114, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(143, 116, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(144, 117, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(145, 118, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(146, 119, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(147, 120, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(148, 121, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(149, 122, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(150, 123, 45, 6, 366.48, '0.00', '0.00', '0.00'),
(151, 123, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(152, 124, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(153, 125, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(154, 126, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(155, 127, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(156, 128, 15, 1, 450.00, '0.00', '0.00', '0.00'),
(157, 129, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(158, 130, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(159, 131, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(160, 132, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(161, 133, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(162, 134, 15, 2, 89.14, '0.00', '0.00', '0.00'),
(163, 135, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(164, 136, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(165, 137, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(166, 138, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(167, 140, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(168, 141, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(169, 142, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(170, 144, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(171, 145, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(172, 146, 15, 4, 178.28, '0.00', '0.00', '0.00'),
(173, 147, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(174, 149, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(175, 150, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(176, 151, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(177, 152, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(178, 152, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(179, 153, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(180, 154, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(181, 154, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(182, 155, 50, 1, 139.96, '0.00', '0.00', '0.00'),
(183, 156, 48, 1, 137.56, '0.00', '0.00', '0.00'),
(184, 157, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(185, 158, 19, 1, 646.00, '0.00', '0.00', '0.00'),
(186, 159, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(187, 160, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(188, 161, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(189, 162, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(190, 163, 45, 2, 122.16, '0.00', '0.00', '0.00'),
(191, 164, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(192, 165, 13, 1, 0.00, '0.00', '0.00', '0.00'),
(193, 166, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(194, 167, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(195, 168, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(196, 169, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(197, 170, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(198, 171, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(199, 172, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(200, 173, 15, 1, 450.00, '0.00', '0.00', '0.00'),
(201, 174, 15, 1, 450.00, '0.00', '0.00', '0.00'),
(202, 174, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(203, 175, 45, 5, 82.45, '0.00', '0.00', '0.00'),
(204, 176, 45, 100, 1649.00, '0.00', '0.00', '0.00'),
(205, 177, 15, 1000, 44570.00, '0.00', '0.00', '0.00'),
(206, 178, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(207, 179, 15, 2, 89.14, '0.00', '0.00', '0.00'),
(208, 180, 15, 2, 89.14, '0.00', '0.00', '0.00'),
(209, 181, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(210, 182, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(211, 183, 45, 4, 244.32, '0.00', '0.00', '0.00'),
(212, 184, 15, 2, 89.14, '0.00', '0.00', '0.00'),
(213, 185, 45, 2, 122.16, '0.00', '0.00', '0.00'),
(214, 186, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(215, 187, 15, 2, 89.14, '0.00', '0.00', '0.00'),
(216, 188, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(217, 189, 45, 2, 122.16, '0.00', '0.00', '0.00'),
(218, 190, 45, 2, 122.16, '0.00', '0.00', '0.00'),
(219, 191, 45, 2, 122.16, '0.00', '0.00', '0.00'),
(220, 192, 45, 3, 183.24, '0.00', '0.00', '0.00'),
(221, 193, 49, 2, 107.74, '0.00', '0.00', '0.00'),
(222, 194, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(223, 195, 45, 3, 183.24, '0.00', '0.00', '0.00'),
(224, 196, 15, 2, 89.14, '0.00', '0.00', '0.00'),
(225, 197, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(226, 198, 20, 2, 366.04, '0.00', '0.00', '0.00'),
(227, 198, 13, 1, 0.00, '0.00', '0.00', '0.00'),
(228, 199, 13, 1, 0.00, '0.00', '0.00', '0.00'),
(229, 200, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(230, 201, 15, 3, 133.71, '0.00', '0.00', '0.00'),
(231, 202, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(232, 203, 15, 2, 89.14, '0.00', '0.00', '0.00'),
(233, 204, 45, 2, 122.16, '0.00', '0.00', '0.00'),
(234, 205, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(235, 206, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(236, 207, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(237, 208, 45, 2, 122.16, '0.00', '0.00', '0.00'),
(238, 209, 45, 2, 122.16, '0.00', '0.00', '0.00'),
(239, 210, 45, 2, 122.16, '0.00', '0.00', '0.00'),
(240, 210, 48, 1, 137.56, '0.00', '0.00', '0.00'),
(241, 210, 19, 1, 646.00, '0.00', '0.00', '0.00'),
(242, 211, 45, 5, 305.40, '0.00', '0.00', '0.00'),
(243, 211, 19, 1, 646.00, '0.00', '0.00', '0.00'),
(244, 212, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(245, 213, 45, 300, 4947.00, '0.00', '0.00', '0.00'),
(246, 214, 13, 1000, 450000.00, '0.00', '0.00', '0.00'),
(247, 215, 15, 1, 450.00, '0.00', '0.00', '0.00'),
(248, 216, 15, 1, 450.00, '0.00', '0.00', '0.00'),
(249, 216, 45, 1, 16.49, '0.00', '0.00', '0.00'),
(250, 217, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(251, 219, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(252, 220, 50, 1, 139.96, '0.00', '0.00', '0.00'),
(253, 220, 49, 1, 53.87, '0.00', '0.00', '0.00'),
(254, 221, 27, 1, 150.00, '0.00', '0.00', '0.00'),
(255, 222, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(256, 223, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(257, 224, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(258, 225, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(259, 226, 45, 2, 122.16, '0.00', '0.00', '0.00'),
(260, 226, 13, 1, 0.00, '0.00', '0.00', '0.00'),
(261, 226, 9, 4, 400.00, '0.00', '0.00', '0.00'),
(262, 227, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(263, 228, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(264, 229, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(265, 230, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(266, 231, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(267, 232, 45, 4, 244.32, '0.00', '0.00', '0.00'),
(268, 233, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(269, 233, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(270, 234, 15, 2, 89.14, '0.00', '0.00', '0.00'),
(271, 236, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(272, 237, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(273, 238, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(274, 238, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(275, 240, 45, 2, 122.16, '0.00', '0.00', '0.00'),
(276, 241, 50, 1, 139.96, '0.00', '0.00', '0.00'),
(277, 242, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(278, 243, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(279, 243, 13, 1, 0.00, '0.00', '0.00', '0.00'),
(280, 244, 45, 2, 122.16, '0.00', '0.00', '0.00'),
(281, 245, 45, 2, 122.16, '0.00', '0.00', '0.00'),
(282, 246, 45, 2, 122.16, '0.00', '0.00', '0.00'),
(283, 247, 45, 2, 122.16, '0.00', '0.00', '0.00'),
(284, 248, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(285, 249, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(286, 249, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(287, 250, 45, 1, 61.08, '0.00', '0.00', '0.00'),
(288, 250, 15, 1, 44.57, '0.00', '0.00', '0.00'),
(289, 251, 45, 1, 61.08, '5.00', '3.05', '64.13'),
(290, 251, 15, 1, 44.57, '5.00', '2.23', '46.80'),
(291, 252, 45, 1, 61.08, '5.00', '3.05', '64.13'),
(292, 252, 15, 1, 44.57, '5.00', '2.23', '46.80'),
(293, 253, 45, 1, 61.08, '5.00', '3.05', '64.13'),
(294, 253, 15, 1, 44.57, '5.00', '2.23', '46.80'),
(295, 254, 45, 1, 61.08, '5.00', '3.05', '64.13'),
(296, 254, 15, 1, 44.57, '5.00', '2.23', '46.80'),
(297, 255, 45, 1, 61.08, '5.00', '3.05', '64.13'),
(298, 255, 15, 1, 44.57, '5.00', '2.23', '46.80');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `partnerid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`partnerid`, `image`, `active`) VALUES
(1, 'clients-1.png', 1),
(2, 'clients-1.png', 1),
(3, 'clients-1.png', 1),
(4, 'clients-1.png', 1),
(5, 'clients-1.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(12) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_canonial_name` varchar(150) NOT NULL,
  `prod_primary_image` varchar(100) NOT NULL,
  `prod_opt_type` varchar(12) NOT NULL COMMENT '1:Featured; 2:New Arrival; 3:Best Selling; 4:On Sale;',
  `prod_added_user` int(12) NOT NULL COMMENT 'User who added this production',
  `prod_updated_user` int(12) NOT NULL COMMENT 'User who updated this production',
  `prod_status` int(5) NOT NULL COMMENT '0:Inactive; 1: Active;',
  `prod_views` int(15) NOT NULL DEFAULT 0,
  `prod_added_date` datetime NOT NULL,
  `prod_updated_date` datetime NOT NULL DEFAULT current_timestamp(),
  `metatag` text NOT NULL,
  `rating` int(11) NOT NULL,
  `prdspec` text NOT NULL,
  `clearsaleflag` int(11) DEFAULT NULL,
  `addtoquote` int(2) NOT NULL,
  `discountper` decimal(5,2) NOT NULL,
  `mostviewed` int(1) NOT NULL,
  `instock` int(1) NOT NULL,
  `prdshdesc` text NOT NULL,
  `prod_price` double(10,2) NOT NULL,
  `prod_price2` double(10,2) DEFAULT NULL,
  `prod_price3` double(10,2) DEFAULT NULL,
  `sarrate` double(8,2) NOT NULL,
  `usdrate` double(8,2) NOT NULL,
  `dealoftheday` int(11) NOT NULL,
  `bestmove` int(11) NOT NULL,
  `color` varchar(30) NOT NULL,
  `size` varchar(30) NOT NULL,
  `requestremark` text NOT NULL,
  `oldprice` double(10,2) NOT NULL,
  `oldpriceusd` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Product lisiting table';

-- --------------------------------------------------------

--
-- Table structure for table `projectdetails`
--

CREATE TABLE `projectdetails` (
  `id` int(50) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `project_descripition` varchar(1000) NOT NULL,
  `bedroom` int(100) NOT NULL,
  `bathroom` int(100) NOT NULL,
  `squarefeet` varchar(100) NOT NULL,
  `product_picture` varchar(1000) NOT NULL,
  `status` varchar(50) NOT NULL,
  `project_status` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sizerange` varchar(255) NOT NULL,
  `bhk` varchar(255) NOT NULL,
  `yearbuilt` varchar(255) NOT NULL,
  `propertytype` varchar(255) NOT NULL,
  `amenities` text NOT NULL,
  `firstfloordesc` text NOT NULL,
  `firstfloordiscp1` varchar(255) NOT NULL,
  `firstfloordiscp2` varchar(255) NOT NULL,
  `firstfloordiscp3` varchar(255) NOT NULL,
  `secfloordesc` text NOT NULL,
  `secfloordescp1` varchar(255) DEFAULT NULL,
  `secfloordescp2` varchar(255) DEFAULT NULL,
  `thirdfloordescp` varchar(255) DEFAULT NULL,
  `thirdfloordescp1` varchar(255) DEFAULT NULL,
  `thirdfloordescp2` varchar(255) DEFAULT NULL,
  `prjlocation` varchar(255) DEFAULT NULL,
  `prjaddress` varchar(255) DEFAULT NULL,
  `educationdetails` text DEFAULT NULL,
  `edudist` text DEFAULT NULL,
  `hosp` text DEFAULT NULL,
  `hospdist` text DEFAULT NULL,
  `tbus` varchar(255) DEFAULT NULL,
  `airport` varchar(255) NOT NULL,
  `railway` varchar(255) NOT NULL,
  `projectid` int(11) NOT NULL,
  `videourl` varchar(255) NOT NULL,
  `gmapurl` text NOT NULL,
  `categoryid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectdetails`
--

INSERT INTO `projectdetails` (`id`, `project_name`, `price`, `project_descripition`, `bedroom`, `bathroom`, `squarefeet`, `product_picture`, `status`, `project_status`, `time`, `sizerange`, `bhk`, `yearbuilt`, `propertytype`, `amenities`, `firstfloordesc`, `firstfloordiscp1`, `firstfloordiscp2`, `firstfloordiscp3`, `secfloordesc`, `secfloordescp1`, `secfloordescp2`, `thirdfloordescp`, `thirdfloordescp1`, `thirdfloordescp2`, `prjlocation`, `prjaddress`, `educationdetails`, `edudist`, `hosp`, `hospdist`, `tbus`, `airport`, `railway`, `projectid`, `videourl`, `gmapurl`, `categoryid`) VALUES
(1, '\r\nLEELA MADHAVAM LEGACY', '₹ 1 CR', 'Leela Madhavam Legacy by SI Property consists of a total of 39 apartments in 2 blocks. Leela consisting of 2 basements + Ground + 11 floors with 35 apartments and Madhavam consisting of Ground + 4 floors with 4 apartments, spread across 42 cents of land. Consisting only 3 BHK apartments, the project reflects class, convenience and security due to its proximity to the military contonment and other necessary services.', 3, 2, '1858-1714 Sq Ft', '456', '0', '0', '2024-09-04 09:51:12', '1858-1714 Sq Ft', '03', '01 July, 2024', 'Apartment', 'Fitness Centre,Guest room(attached),Mini Home Theatre,Multipurpose Hall,Party Area,Swimming pool,Play Area,Business centre', 'Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusa dolore mque laudant.', 'floor-1.jpg', '', '', 'Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusa dolore mque laudant.', 'floor-1.jpg', NULL, 'Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusa dolore mque laudant.', 'floor-1.jpg', NULL, 'Pangode', 'Trivandrum', 'Kerala University,M.G University,Engineering College', '2.10 km,1.42 km,2.10 km', 'SP Fort Hospital,Kims Hospital,Nims Hospital', '3.10 km,2.42 km,1.22 km', '2.10 km', '1.42 km', '1.42 km', 1, 'https://www.youtube.com/embed/qpHjaApU8zI?si=SXZKSxBJQMt4oh20', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.9280327351375!2d76.98550957406161!3d8.506368896952841!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3b05bb38f83f4539%3A0x49bae54b857068b6!2sSI%20Property%20Leela%20Madhavam%20Legacy!5e0!3m2!1sen!2sin!4v1720869589602!5m2!1sen!2sin', 2),
(6, '\r\nLEELA MADHAVAM LEGACY', '₹ 1 CR', 'Leela Madhavam Legacy by SI Property consists of a total of 39 apartments in 2 blocks. Leela consisting of 2 basements + Ground + 11 floors with 35 apartments and Madhavam consisting of Ground + 4 floors with 4 apartments, spread across 42 cents of land. Consisting only 3 BHK apartments, the project reflects class, convenience and security due to its proximity to the military contonment and other necessary services.', 3, 2, '600', '456', '0', '0', '2024-09-04 09:51:16', '1858-1714 Sq Ft', ' 03', '01 July, 2024', 'Apartment', 'Fitness Centre,Guest room(attached),Mini Home Theatre,Multipurpose Hall,Party Area,Swimming pool,Play Area,Business centre', 'Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusa dolore mque laudant.', '1724146857project.jpg', '', '', 'Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusa dolore mque laudant.', '1724146857project.jpg', NULL, 'Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusa dolore mque laudant.', '1724146857project.jpg', NULL, 'Pangode', 'Trivandrum', 'Kerala University,M.G University,Engineering College', '2.10 km,1.42 km,2.10 km', 'SP Fort Hospital,Kims Hospital,Nims Hospital', '3.10 km,2.42 km,1.22 km', '2.10 km', '1.42 km', '1.42 km', 3, 'https://www.youtube.com/embed/qpHjaApU8zI?si=SXZKSxBJQMt4oh20', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.9280327351375!2d76.98550957406161!3d8.506368896952841!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3b05bb38f83f4539%3A0x49bae54b857068b6!2sSI%20Property%20Leela%20Madhavam%20Legacy!5e0!3m2!1sen!2sin!4v1720869589602!5m2!1sen!2sin', 3),
(7, '\r\nLEELA MADHAVAM LEGACY', '₹ 1 CR', 'Leela Madhavam Legacy by SI Property consists of a total of 39 apartments in 2 blocks. Leela consisting of 2 basements + Ground + 11 floors with 35 apartments and Madhavam consisting of Ground + 4 floors with 4 apartments, spread across 42 cents of land. Consisting only 3 BHK apartments, the project reflects class, convenience and security due to its proximity to the military contonment and other necessary services.', 3, 2, '1858-1714 Sq Ft', '456', '0', '0', '2024-09-04 09:51:22', '1858-1714 Sq Ft', '03', '01 July, 2024', 'Apartment', 'Fitness Centre,Guest room(attached),Mini Home Theatre,Multipurpose Hall,Party Area,Swimming pool,Play Area,Business centre', 'Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusa dolore mque laudant.', 'floor-1.jpg', '', '', 'Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusa dolore mque laudant.', 'floor-1.jpg', NULL, 'Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusa dolore mque laudant.', 'floor-1.jpg', NULL, 'Pangode', 'Trivandrum', 'Kerala University,M.G University,Engineering College', '2.10 km,1.42 km,2.10 km', 'SP Fort Hospital,Kims Hospital,Nims Hospital', '3.10 km,2.42 km,1.22 km', '2.10 km', '1.42 km', '1.42 km', 5, 'https://www.youtube.com/embed/qpHjaApU8zI?si=SXZKSxBJQMt4oh20', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.9280327351375!2d76.98550957406161!3d8.506368896952841!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3b05bb38f83f4539%3A0x49bae54b857068b6!2sSI%20Property%20Leela%20Madhavam%20Legacy!5e0!3m2!1sen!2sin!4v1720869589602!5m2!1sen!2sin', 2),
(8, '\r\nLEELA MADHAVAM LEGACY', '₹ 1 CR', '1Leela Madhavam Legacy by SI Property consists of a total of 39 apartments in 2 blocks. Leela consisting of 2 basements + Ground + 11 floors with 35 apartments and Madhavam consisting of Ground + 4 floors with 4 apartments, spread across 42 cents of land. Consisting only 3 BHK apartments, the project reflects class, convenience and security due to its proximity to the military contonment and other necessary services. pd', 3, 2, '1858-1714 Sq Ft', '456', '0', '0', '2024-09-04 09:51:26', '1858-1714 Sq Ft', '039bhk', '01 July, 2024 0000', 'Apartment type', 'Fitness Centre,Guest room(attached),Mini Home Theatre,Multipurpose Hall,Party Area,Swimming pool,Play Area,Business centre am', 'Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusa dolore mque laudant.1 fd', '1724137094project.jpg', '', '', 'Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusa dolore mque laudant. sd', '1724137354project.jpg', NULL, 'Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusa dolore mque laudant. td', '1724137637project.jpg', NULL, 'Pangode', 'Trivandrum pa', 'Kerala University,M.G University,Engineering College ed', '2.10 km,1.42 km,2.10 km km', 'SP Fort Hospital,Kims Hospital,Nims Hospital hd', '3.10 km,2.42 km,1.22 km km', '2.10 km nm', '1.42 km ap', '1.42 km rw', 6, 'vhttps://www.youtube.com/embed/qpHjaApU8zI?si=SXZKSxBJQMt4oh20', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.9280327351375!2d76.98550957406161!3d8.506368896952841!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3b05bb38f83f4539%3A0x49bae54b857068b6!2sSI%20Property%20Leela%20Madhavam%20Legacy!5e0!3m2!1sen!2sin!4v1720869589602!5m2!1sen!2sin', 1),
(11, '', '', 'Leela Madhavam Legacy by SI Property consists of a total of 39 apartments in 2 blocks. Leela consisting of 2 basements + Ground + 11 floors with 35 apartments and Madhavam consisting of Ground + 4 floors with 4 apartments, spread across 42 cents of land. Consisting only 3 BHK apartments, the project reflects class, convenience and security due to its proximity to the military contonment and other necessary services.', 0, 0, '', '', '', '', '2024-09-04 09:51:30', '', '034444', '01 July, 2024', 'Apartment', 'Fitness Centre,Guest room(attached),Mini Home Theatre,Multipurpose Hall,Party Area,Swimming pool,Play Area,Business centre', 'Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusa dolore mque laudant.', '1724136048homecare.', '', '', 'Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusa dolore mque laudant.', NULL, NULL, 'Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusa dolore mque laudant.', NULL, NULL, 'Thirumalla', 'Trivandrum', 'Kerala University,M.G University,Engineering College', '2.10 km,1.42 km,2.10 km', 'SP Fort Hospital,Kims Hospital,Nims Hospital', '3.10 km,2.42 km,1.22 km', '2.10 km', '1.42 km', '1.42 km', 8, 'https://www.youtube.com/embed/qpHjaApU8zI?si=SXZKSxBJQMt4oh20', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.9280327351375!2d76.98550957406161!3d8.506368896952841!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3b05bb38f83f4539%3A0x49bae54b857068b6!2sSI%20Property%20Leela%20Madhavam%20Legacy!5e0!3m2!1sen!2sin!4v1720869589602!5m2!1sen!2sin', 2),
(12, '', '', 'prj desc', 0, 0, '', '', '', '', '2024-09-04 09:52:02', '', 'project bhk', 'year built', 'prj type', 'am1,am2,am3', 'ff desc', '1724217545project.jpg', '', '', 'sf desc', '1724217545project.jpg', NULL, 'tf desc', '1724217545project.jpg', NULL, 'Kawdiar', 'prj add', 'edu1,edu2,edu3', '5,10,15', 'hosp1,hosp2,hosp3', '6,8,10', '10', '20', '30', 14, 'https://www.youtube.com/watch?v=KV2ssT8lzj8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15787.353464766009!2d77.07281368193789!3d8.417530192638257!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3b05ae6a67c41f6d%3A0xabeb381cba8df60b!2sThozhukkal%2C%20Neyyattinkara%2C%20Kerala!5e0!3m2!1sen!2sin!4v1724217532875!5m2!1sen!2sin\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', 1),
(13, '', '', 'pd', 0, 0, '', '', '', '', '2024-09-04 09:52:06', '', 'pk', 'yb', 'pt', 'a1,a2', 'fd', '1724231501project.jpg', '', '', 'sfd', '1724231501project.jpg', NULL, 'tfd', '1724231501project.jpg', NULL, 'Statue', 'pa', 'e1,e2,e3', '1,2,3', 'h1,h2', '1,2', 'bs1,bs2', '1,2', '34', 16, 'https://www.youtube.com/watch?v=KV2ssT8lzj8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15787.353464766009!2d77.07281368193789!3d8.417530192638257!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3b05ae6a67c41f6d%3A0xabeb381cba8df60b!2sThozhukkal%2C%20Neyyattinkara%2C%20Kerala!5e0!3m2!1sen!2sin!4v1724217532875!5m2!1sen!2sin', 9),
(14, '', '', 'prj desc', 0, 0, '', '', '', '', '2024-09-04 09:52:12', '', 'test bhk', 'year built', 'type', 'am', 'fllor desc', '1724487205project.jpg', '', '', 'sfd', '1724487205project.png', NULL, 'tfd', '1724487205project.jpg', NULL, 'Pullimoodu', 'prj add', 'ed', '567', 'ui', '23', '8', '9', '10', 18, 'nnnnn', 'mmmmm', 10),
(15, '', '', 'tertert', 0, 0, '', '', '', '', '2024-09-04 09:52:15', '', 'tertert', 'terter', 'erter', 'erter', 'ertert', '1724669372project.jpg', '', '', 'ertert', '1724669372project.jpg', NULL, 'erterter', '1724669372project.jpg', NULL, 'erter', 'erter', 'erter', 'erter', 'erter', 'erter', 'erter', 'erte', 'erter', 17, 'erter', 'erter', 2);

-- --------------------------------------------------------

--
-- Table structure for table `reasontochooseus`
--

CREATE TABLE `reasontochooseus` (
  `id` int(11) NOT NULL,
  `caption` varchar(180) NOT NULL,
  `shortdesc` tinytext NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reasontochooseus`
--

INSERT INTO `reasontochooseus` (`id`, `caption`, `shortdesc`, `image`, `status`, `icon`) VALUES
(27, 'Excellent Reputation', 'SI property has completed over 50 top-of-line projects ,trusted builders in Trivandrum', '1722673963-5.jpg', 1, '1722676724-11.png'),
(29, 'Excellent Reputation', 'SI property has completed over 50 top-of-line projects ,trusted builders in Trivandrum', '1722674010-6.jpg', 0, '1722676733-12.png'),
(30, 'Excellent Reputation', 'SI property has completed over 50 top-of-line projects ,trusted builders in Trivandrum', '1722674054-9.jpg', 1, '1722676743-14.png'),
(31, 'Excellent Reputation', 'SI property has completed over 50 top-of-line projects ,trusted builders in Trivandrum', '1722674112-8.jpg', 1, '1722676934-12.png'),
(32, 'Excellent Reputation', 'SI property has completed over 50 top-of-line projects ,trusted builders in Trivandrum', '1722674263-10.jpg', 1, '1722674263-13.png'),
(33, 'Excellent Reputation', 'SI property has completed over 50 top-of-line projects ,trusted builders in Trivandrum', '1722674410-7.jpg', 0, '1722676763-12.png'),
(58, 'Excellent Reputation', 'SI property has completed over 50 top-of-line projects ,trusted builders in Trivandrum', '1722674263-10.jpg', 1, '1722674263-13.png'),
(59, 'Excellent Reputation', 'SI property has completed over 50 top-of-line projects ,trusted builders in Trivandrum', '1722674410-7.jpg', 1, '1722676763-12.png');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(50) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gmail` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `gmail`, `password`, `time`) VALUES
(6, 'abin babu bm', 'abhin@gmail.com', ' 123', '2024-07-24 09:31:28'),
(7, 'abin babu bm', 'abhin@gmail.com', ' 123', '2024-07-24 09:38:30'),
(8, 'abin babu bm', 'arun@gmail.com', ' 123', '2024-07-24 09:39:24'),
(9, 'abin babu bm', 'arun@gmail.com', ' 123', '2024-07-24 09:40:03'),
(10, 'Hari Rs', 'hari@gamil.com', ' 123', '2024-07-24 12:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `serviceid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `servicedesc` text NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`serviceid`, `name`, `servicedesc`, `active`) VALUES
(1, 'Business Services', 'Lorem ipsum dolor sit consectetur sed eiusm tempor incididunt dolore magna.', 1),
(2, 'Real Estate Services', 'Lorem ipsum dolor sit consectetur sed eiusm tempor incididunt dolore magna.', 1),
(3, 'Individuals Services', 'Lorem ipsum dolor sit consectetur sed eiusm tempor incididunt dolore magna.', 1),
(4, 'Business Services', 'Lorem ipsum dolor sit consectetur sed eiusm tempor incididunt dolore magna.', 1),
(5, 'Trusted Agents', 'Lorem ipsum dolor sit consectetur sed eiusm tempor incididunt dolore magna.', 1),
(6, 'Rent Properties', 'Lorem ipsum dolor sit consectetur sed eiusm tempor incididunt dolore magna.', 1),
(7, 'Sale Properties', 'Lorem ipsum dolor sit consectetur sed eiusm tempor incididunt dolore magna.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `Fblink` varchar(250) NOT NULL,
  `TwitterLink` varchar(250) NOT NULL,
  `YouTubeLink` varchar(255) NOT NULL,
  `linkedlink` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `footercontent` text NOT NULL,
  `insta` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `whatsapp` varchar(20) NOT NULL,
  `pinterest` varchar(255) NOT NULL,
  `footercontent2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `Fblink`, `TwitterLink`, `YouTubeLink`, `linkedlink`, `favicon`, `logo`, `footercontent`, `insta`, `place`, `city`, `whatsapp`, `pinterest`, `footercontent2`) VALUES
(2, 'fb112', 'twit11', 'you tube1', 'linked11', '1723800307settings.png', '1724156018settings.png', 'SI property has completed over 50 top-of-line projects making them one of the most trusted builders in Trivandrum, with a significant presence in both the residential and commercial sectors.n fb', 'insta11', 'Pangode1', 'Trivandrum1', '944716 9988', 'pinterest', 'SI property has completed over 50 top-of-line projects making them one of the most trusted builders');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `testimonialid` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `shortdesc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`testimonialid`, `title`, `content`, `name`, `picture`, `active`, `designation`, `date`, `shortdesc`) VALUES
(27, 'Testimonial1', 'Our goal each day is to ensure that our residents’ needs are not only met but exceeded.', 'Rebeka Dawson', '1723787489testimonial.jpg', 1, 'Instructor', '2024-08-16', ''),
(33, 'Testimonial2', 'Our goal each day is to ensure that our residents’ needs are not only met but exceeded.', 'Owen Lester', '1723803435testimonial.jpg', 1, 'Manager', '2024-08-16', ''),
(34, 'Testimonial3', 'Our goal each day is to ensure that our residents’ needs are not only met but exceeded.', 'Marc Kenneth', '1723803919testimonal.jpg', 1, 'Founder CEO', '2024-08-16', ''),
(36, 'Testimonial1', 'Our goal each day is to ensure that our residents’ needs are not only met but exceeded.', 'Rebeka Dawson', '1723787489testimonial.jpg', 1, 'Instructor', '2024-08-16', ''),
(37, 'Testimonial2', 'Our goal each day is to ensure that our residents’ needs are not only met but exceeded.', 'Owen Lester', '1723803435testimonial.jpg', 1, 'Manager', '2024-08-16', ''),
(38, 'Testimonial3', 'Our goal each day is to ensure that our residents’ needs are not only met but exceeded.', 'Marc Kenneth', '1723803919testimonal.jpg', 1, 'Founder CEO', '2024-08-19', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_role` varchar(16) NOT NULL,
  `company` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `phone`, `password`, `user_role`, `company`) VALUES
(1, 'Admin', 'info@goldenvalleyfarm.in', '0909753123', '32d1f0d5c8880a229f08eb2102d88870', 'super_admin', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus_content`
--
ALTER TABLE `aboutus_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`agentid`);

--
-- Indexes for table `blogcontents`
--
ALTER TABLE `blogcontents`
  ADD PRIMARY KEY (`blogid`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`carouselid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contactenquiries`
--
ALTER TABLE `contactenquiries`
  ADD PRIMARY KEY (`enquiryid`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faqid`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`floorid`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_old1`
--
ALTER TABLE `gallery_old1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homecare`
--
ALTER TABLE `homecare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepagedetails`
--
ALTER TABLE `homepagedetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepagedetails2`
--
ALTER TABLE `homepagedetails2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_carosel`
--
ALTER TABLE `home_carosel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_projects`
--
ALTER TABLE `home_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `newslettersubscribe`
--
ALTER TABLE `newslettersubscribe`
  ADD PRIMARY KEY (`newsletterid`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`partnerid`);

--
-- Indexes for table `projectdetails`
--
ALTER TABLE `projectdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reasontochooseus`
--
ALTER TABLE `reasontochooseus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`testimonialid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus_content`
--
ALTER TABLE `aboutus_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `agentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogcontents`
--
ALTER TABLE `blogcontents`
  MODIFY `blogid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `carouselid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contactenquiries`
--
ALTER TABLE `contactenquiries`
  MODIFY `enquiryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `cus_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `floorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `gallery_old1`
--
ALTER TABLE `gallery_old1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `homecare`
--
ALTER TABLE `homecare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `homepagedetails`
--
ALTER TABLE `homepagedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homepagedetails2`
--
ALTER TABLE `homepagedetails2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_carosel`
--
ALTER TABLE `home_carosel`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `home_projects`
--
ALTER TABLE `home_projects`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `newslettersubscribe`
--
ALTER TABLE `newslettersubscribe`
  MODIFY `newsletterid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `partnerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `projectdetails`
--
ALTER TABLE `projectdetails`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `reasontochooseus`
--
ALTER TABLE `reasontochooseus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `testimonialid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
