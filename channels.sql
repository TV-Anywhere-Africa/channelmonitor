-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 12, 2022 at 03:22 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `channels`
--

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `ID` int(11) NOT NULL,
  `UID` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Link` varchar(50000) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Position` int(11) NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`ID`, `UID`, `Name`, `Link`, `Status`, `Position`, `Date`) VALUES
(1, 'cgtn', 'cgtn', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,a4d1d6e2d94538f8cd3293480e4f73763701eb92,1631803839,g00000000000,0-cgtn,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-cgtn/live/index.m3u8', 'g00000000000', 0, '2021-09-15 14:50:43'),
(2, 'x2d', 'x2d', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,ba8735e78ff811d1be693d7f9d3bc97832cd7b88,1631803839,g00000000000,0-x2d,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-x2d/live/index.m3u8', 'g00000000000', 1, '2021-09-15 14:50:43'),
(3, 'france24', 'france24', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,40b64512fc1d5e78dc14e3b7f70383f6dc21006b,1631803839,g00000000000,0-france241,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-france241/live/index.m3u8', 'g00000000000', 2, '2021-09-15 14:50:43'),
(4, 'rtnews', 'rtnews', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,5d60e9d9662732292b8e7ba49abd41bdb4913aee,1631803839,g00000000000,0-rtnews,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-rtnews/live/index.m3u8', 'g00000000000', 3, '2021-09-15 14:50:43'),
(5, 'cgtndocumentary', 'cgtndocumentary', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,090fd5e90e2a57ea015fbf9cd3cabf46e5faa878,1631803839,g00000000000,0-cgtnd,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-cgtnd/live/index.m3u8', 'g00000000000', 4, '2021-09-15 14:50:43'),
(6, 'lollykids', 'lollykids', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,115fe1628e6595ad4389b6e30cda16bc50a04a77,1631803839,g00000000000,0-lollykids,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-lollykids/live/index.m3u8', 'g00000000000', 5, '2021-09-15 14:50:43'),
(7, 'praisetv', 'praisetv', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,702851c84ad673fb277778acb1b4d8f40257b862,1631803839,g00000000000,0-praisetv,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-praisetv/live/index.m3u8', 'g00000000000', 6, '2021-09-15 14:50:43'),
(8, 'iHolyfieldTV', 'iHolyfieldTV', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,5ce9938eb190ba5b9a1fff65bd31e562617e2990,1631803839,g00000000000,0-iholyfield,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-iholyfield/live/index.m3u8', 'g00000000000', 7, '2021-09-15 14:50:43'),
(9, 'cowboytheater', 'cowboytheater', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,2aa19103aaaf4d178a3a55fb20c4c8085a3107f6,1631803839,g00000000000,0-cowboytheater,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-cowboytheater/live/index.m3u8', 'g00000000000', 8, '2021-09-15 14:50:43'),
(10, 'slaptech', 'slaptech', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,9836c4272e0e108605dd913823a6132b9d63b1bd,1631803839,g00000000000,0-slaptech,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-slaptech/live/index.m3u8', 'g00000000000', 9, '2021-09-15 14:50:43'),
(11, 'simsitv', 'simsitv', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,d07354772e86346fdd012998c871cd6771c21f83,1631803839,g00000000000,0-simsi,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-simsi/live/index.m3u8', 'g00000000000', 10, '2021-09-15 14:50:43'),
(12, 'readysetaction', 'readysetaction', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,39a504f0340893bb6fbe1ad3de344696c1b61d98,1631803839,g00000000000,0-readysetaction,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-readysetaction/live/index.m3u8', 'g00000000000', 11, '2021-09-15 14:50:43'),
(13, 'cnc', 'cnc', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,14844c43e0bfcc5bd9e44c672c09803e0aed2c15,1631803839,g00000000000,0-cnc,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-cnc/live/index.m3u8', 'g00000000000', 12, '2021-09-15 14:50:43'),
(14, 'faithtv', 'faithtv', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,6ff311a3e7a105ab2f446f1c249b9fb482ee1056,1631803839,g00000000000,0-faithtv,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-faithtv/live/index.m3u8', 'g00000000000', 13, '2021-09-15 14:50:43'),
(15, 'dimensionscifi', 'dimensionscifi', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,18c4277254d542450dc8ff5fb247c8197dbcaf5a,1631803839,g00000000000,0-dimensionscifi,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-dimensionscifi/live/index.m3u8', 'g00000000000', 14, '2021-09-15 14:50:43'),
(16, 'funnybone', 'funnybone', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,a104a630d6c26f1a33dcf18de1688d3aacbe7bf4,1631803839,g00000000000,0-funnybone,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-funnybone/live/index.m3u8', 'g00000000000', 15, '2021-09-15 14:50:43'),
(17, 'comfytv', 'comfytv', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,a5423171637f24f8d1aa14fc10b9521552992d58,1631803839,g00000000000,0-comfytv,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-comfytv/live/index.m3u8', 'g00000000000', 16, '2021-09-15 14:50:43'),
(18, 'realfamilytv', 'realfamilytv', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,670346d7e5cda6d59ea0c0f11333899ea23bb9f3,1631803839,g00000000000,0-realfamilytv,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-realfamilytv/live/index.m3u8', 'g00000000000', 17, '2021-09-15 14:50:43'),
(19, 'primetime', 'primetime', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,d6e1acb0bd8abfa72a78e4094aecd07602d26f40,1631803839,g00000000000,0-primetime,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-primetime/live/index.m3u8', 'g00000000000', 18, '2021-09-15 14:50:43'),
(20, 'xzonetv', 'xzonetv', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,4ce384611ed06e0b6c76a9e0f4d4aa0ca878663c,1631803839,g00000000000,0-xzonetv,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-xzonetv/live/index.m3u8', 'g00000000000', 19, '2021-09-15 14:50:43'),
(21, 'outdoorlifestyle', 'outdoorlifestyle', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,d2f1cf254530dc2db45e8123af1421bd65c3c53c,1631803839,g00000000000,0-outdoorlifestyle,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-outdoorlifestyle/live/index.m3u8', 'g00000000000', 20, '2021-09-15 14:50:43'),
(22, 'batterypop', 'batterypop', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,669e21a61e6a45c5c2c5237f4da954f88e9ea158,1631803839,g00000000000,0-batterypop,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-batterypop/live/index.m3u8', 'g00000000000', 21, '2021-09-15 14:50:43'),
(23, 'thrillerz', 'thrillerz', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,b52b9a711234b1c6a5047a222cf57598c55c7df3,1631803839,g00000000000,0-thrillerz,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-thrillerz/live/index.m3u8', 'g00000000000', 22, '2021-09-15 14:50:43'),
(24, 'ishetv', 'ishetv', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,a9e01544bce3f180f8166161cfeb0c9c989b9d11,1631803839,g00000000000,0-ishetv,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-ishetv/live/index.m3u8', 'g00000000000', 23, '2021-09-15 14:50:43'),
(25, 'switchtv', 'switchtv', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,08bf7fb2ad45b0e949437bd9e4c6aabefc664780,1631803839,g00000000000,0-switchtv,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-switchtv/live/index.m3u8', 'g00000000000', 24, '2021-09-15 14:50:43'),
(26, 'kidcentral', 'kidcentral', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,336ae917aa2008b8cc0df35c85d9c31e372c0190,1631803839,g00000000000,0-kidcentral,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-kidcentral/live/index.m3u8', 'g00000000000', 25, '2021-09-15 14:50:43'),
(27, 'mythos', 'mythos', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,c796851c4b274e35c0461295379a5320c4671297,1631803839,g00000000000,0-mythos,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-mythos/live/index.m3u8', 'g00000000000', 26, '2021-09-15 14:50:43'),
(28, 'youthsuccess', 'youthsuccess', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,c725f9ee28e48bf11909f9317722ce074a2b38ea,1631803839,g00000000000,0-youthsuccess,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-youthsuccess/live/index.m3u8', 'g00000000000', 27, '2021-09-15 14:50:43'),
(29, 'c3', 'c3', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,c59655c6cc51cc5532bf643488d7b381363f4a9c,1631803839,g00000000000,0-c3,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-c3/live/index.m3u8', 'g00000000000', 28, '2021-09-15 14:50:43'),
(30, 'providence', 'providence', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,0964381ee62ea8757c51a763545665997217501a,1631803839,g00000000000,0-providence,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-providence/live/index.m3u8', 'g00000000000', 29, '2021-09-15 14:50:43'),
(31, 'jemh', 'jemh', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,2d6c4670b621fc934781c1b3d04d3a752577a0ba,1631803839,g00000000000,0-jemh,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-jemh/live/index.m3u8', 'g00000000000', 30, '2021-09-15 14:50:43'),
(32, 'rtdoc', 'rtdoc', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,5ce0fc6d8a247b2cd7a040dd0cd55e3ae5a811b3,1631803839,g00000000000,0-rtdocumentary,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-rtdocumentary/live/index.m3u8', 'g00000000000', 31, '2021-09-15 14:50:43'),
(33, 'talentwazobia', 'talentwazobia', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,9c41ce99640d097d64ba278a16e7993ca22deca7,1631803839,g00000000000,0-talentwazobianew,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-talentwazobianew/live/index.m3u8', 'g00000000000', 32, '2021-09-15 14:50:43'),
(34, 'talentsport', 'talentsport', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,8b486bb639f6a1c0b0375ec5893ab5176e9e66b4,1631803839,g00000000000,0-talentsportnew,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-talentsportnew/live/index.m3u8', 'g00000000000', 33, '2021-09-15 14:50:43'),
(35, 'aljazeera', 'aljazeera', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,3fd41c9fa3d6e8086e422d32392eee0833bb7c58,1631803839,g00000000000,0-aljazeera1,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-aljazeera1/live/index.m3u8', 'g00000000000', 34, '2021-09-15 14:50:43'),
(36, 'dgn', 'dgn', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,62e4ea397337c5a11d891e896e6282b0c0e1bc72,1631803839,g00000000000,0-dgn,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-dgn/live/index.m3u8', 'g00000000000', 35, '2021-09-15 14:50:43'),
(37, 'footballtv', 'footballtv', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,5377e0fbf2744e75f71c848a2b0f3ce477bb8174,1631803839,g00000000000,0-footballtv,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-footballtv/live/index.m3u8', 'g00000000000', 36, '2021-09-15 14:50:43'),
(38, 'serieszone', 'serieszone', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,c0f9165edccb86a41cf7f773c1f74d104138f09a,1631803839,g00000000000,0-serieszone,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-serieszone/live/index.m3u8', 'g00000000000', 37, '2021-09-15 14:50:43'),
(39, 'shortfilmstv', 'shortfilmstv', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,89f0597d2a5f90e32a45ad85a15ed1216672429c,1631803839,g00000000000,0-shortfilmstv,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-shortfilmstv/live/index.m3u8', 'g00000000000', 38, '2021-09-15 14:50:43'),
(40, 'cocktailtv', 'cocktailtv', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,731ff37fc8a946027a44af10446a1c1ed50ddc9a,1631803839,g00000000000,0-cocktailtv,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-cocktailtv/live/index.m3u8', 'g00000000000', 39, '2021-09-15 14:50:43'),
(41, 'africanlifestyletv', 'africanlifestyletv', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,1c87946fe208793b8cc1b9faaed527f920452f2c,1631803839,g00000000000,0-africanlifestyletv,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-africanlifestyletv/live/index.m3u8', 'g00000000000', 40, '2021-09-15 14:50:43'),
(42, 'zeecinema', 'zeecinema', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,c5fc2cd6aa9b3b9a34a9073a5e689377b75fa04d,1631803839,g00000000000,0-zeecinema,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-zeecinema/live/index.m3u8', 'g00000000000', 41, '2021-09-15 14:50:43'),
(43, 'wion', 'wion', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,9d3eb84c997f301dcede930558f3a06337470703,1631803839,g00000000000,0-wion,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-wion/live/index.m3u8', 'g00000000000', 42, '2021-09-15 14:50:43'),
(44, 'wsport', 'wsport', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,7bc974e862c4656bc996b6dd64ea48fd4c72b89f,1631803839,g00000000000,0-wsport,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-wsport/live/index.m3u8', 'g00000000000', 43, '2021-09-15 14:50:43'),
(45, 'zing', 'zing', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,aee05b194390d189e66f4ed2e67345433510cbf2,1631803839,g00000000000,0-zing,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-zing/live/index.m3u8', 'g00000000000', 44, '2021-09-15 14:50:43'),
(46, 'xcor', 'xcor', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,8fe0bca2e883425232605adea95c5e5b89ee7506,1631803839,g00000000000,0-xcortv,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-xcortv/live/index.m3u8', 'g00000000000', 45, '2021-09-15 14:50:43'),
(47, 'traceurban', 'traceurban', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,013b498752a4bf0492877ae8d8742650cb04fe95,1631803839,g00000000000,0-traceurban,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-traceurban/live/index.m3u8', 'g00000000000', 46, '2021-09-15 14:50:43'),
(48, 'moviesnews', 'moviesnews', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,2440c134ba967cf506e489d9ee7194a332f01ba4,1631803839,g00000000000,0-moviesnews,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-moviesnews/live/index.m3u8', 'g00000000000', 47, '2021-09-15 14:50:43'),
(49, 'myjam', 'myjam', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,5f6039cff062002ae517161733ec80a2b139e99d,1631803839,g00000000000,0-myjam,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-myjam/live/index.m3u8', 'g00000000000', 48, '2021-09-15 14:50:43'),
(50, 'speedtv', 'speedtv', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,4aacd9b66c5ecc8aa955ad63c17a4e885a70fac7,1631803839,g00000000000,0-speedtv,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-speedtv/live/index.m3u8', 'g00000000000', 49, '2021-09-15 14:50:43'),
(51, 'amcmovies', 'amcmovies', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,e70dbf433a60b14a1b84ebe17defd5f7e33ae999,1631803839,g00000000000,0-amcmovies,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-amcmovies/live/index.m3u8', 'g00000000000', 50, '2021-09-15 14:50:43'),
(52, 'amcseries', 'amcseries', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,132bbf2eec4368ee71c7f0115c3d89893b752927,1631803839,g00000000000,0-amcseries,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-amcseries/live/index.m3u8', 'g00000000000', 51, '2021-09-15 14:50:43'),
(53, 'kartc', 'kartc', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,ea8367fa62817a30e7673b8b3816237802658b43,1631803839,g00000000000,0-kartc,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-kartc/live/index.m3u8', 'g00000000000', 52, '2021-09-15 14:50:43'),
(54, 'movienews', 'movienews', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,2440c134ba967cf506e489d9ee7194a332f01ba4,1631803839,g00000000000,0-moviesnews,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-moviesnews/live/index.m3u8', 'g00000000000', 53, '2021-09-15 14:50:43'),
(55, 'moviezone', 'moviezone', 'https://glonigeria.tvanywhereafrica.com:28182/auth-streaming/2,e6e8353e9d1c5635854a056d6d92520feea6fed2,1631803839,g00000000000,0-movieszone,8,8,2,8,8,8,DESKTOP,40146,all,none,glotv,172.20.1.31/playlist/0-movieszone/live/index.m3u8', 'g00000000000', 54, '2021-09-15 14:50:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UID` (`UID`,`Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
