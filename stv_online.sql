-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 17, 2013 at 07:18 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stv_online`
--
CREATE DATABASE `stv_online` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `stv_online`;

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE IF NOT EXISTS `application` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `birthplace` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `contactnumber` varchar(100) NOT NULL,
  `updt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uploaderCode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `lastname` (`lastname`,`firstname`,`middlename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`ID`, `lastname`, `firstname`, `middlename`, `address`, `birthdate`, `birthplace`, `gender`, `religion`, `contactnumber`, `updt_date`, `uploaderCode`) VALUES
(18, 'ako', 'ako', 'ako', 'ako', '1989-11-27', 'ako', 'Male', 'ako', 'ako', '2013-01-16 16:00:00', '1'),
(19, 'ako2', 'ako2', 'ako2', 'ako2', '1990-11-27', 'ako2', 'Male', 'ako2', 'ako2', '2013-01-16 16:00:00', '1'),
(20, 'sample', 'sample', 'sample', 'sample', '1990-11-27', 'sample', 'Male', 'sample', '123435', '2013-01-16 16:00:00', '1'),
(21, 'sample2', 'sample2', 'sample2`', 'sample2', '1990-11-27', 'sample2', 'Male', 'sample2', '4324324', '2013-01-16 16:00:00', '1'),
(22, 'TEst2', 'TEst2', 'TEst2', 'TEst2', '2013-01-01', 'TEst2', 'Male', 'TEst2', '12312321', '2013-01-16 16:00:00', '1'),
(23, 'test3', 'test3', 'test3', 'test3', '1990-11-27', 'sample', 'Male', 'sample', '123123', '2013-01-16 16:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`),
  KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `content`, `user_id`, `date_added`) VALUES
(1, '*Edited', '<p>Sakto!</p>\r\n<p><strong>TUMPAKCHI!!!</strong></p>', 'unik', '2013-01-16 13:55:53'),
(3, 'Pina try ako ni Mon-Mon :D', '<p>Ang galing nito ah. pa try ako ha.</p>\r\n<p>&nbsp;</p>', 'unik', '2013-01-16 02:44:10'),
(4, 'Pina try ako ni Mon-Mon :D', '<p>Ang galing nito ah. pa try ako ha. 3:)))</p>\r\n<p>&nbsp;</p>\r\n<p><em>hahahhaah</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'unik', '2013-01-16 16:12:41'),
(5, 'Pina try ako ni Mon-Mon :D', '<p>Ang galing nito ah. pa try ako ha. 3:)</p>\r\n<p>&nbsp;</p>', 'unik', '2013-01-16 16:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_educbackground`
--

CREATE TABLE IF NOT EXISTS `tbl_educbackground` (
  `application_ID` int(11) NOT NULL,
  `level` varchar(10) NOT NULL,
  `nameofschool` varchar(100) DEFAULT NULL,
  `year_attended` year(4) DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`application_ID`,`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_educbackground`
--

INSERT INTO `tbl_educbackground` (`application_ID`, `level`, `nameofschool`, `year_attended`, `average`) VALUES
(18, 'elementary', 'ako', 1998, 90),
(18, 'highschool', 'ako', 2002, 90),
(19, 'elementary', 'ako2', 1998, 90),
(19, 'highschool', 'ako2', 2002, 90);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_relation`
--

CREATE TABLE IF NOT EXISTS `tbl_relation` (
  `application_ID` int(11) NOT NULL,
  `relationship` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  PRIMARY KEY (`application_ID`,`relationship`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_relation`
--

INSERT INTO `tbl_relation` (`application_ID`, `relationship`, `name`, `occupation`) VALUES
(0, 'father', 'sample3', 'sample3'),
(0, 'guardian', 'sample3', 'sample3'),
(0, 'mother', 'sample3', 'sample3'),
(18, 'father', 'ako', 'ako'),
(18, 'guardian', 'ako', 'ako'),
(18, 'mother', 'ako', 'ako'),
(19, 'father', 'ako2', 'ako2'),
(19, 'guardian', 'ako2', 'ako2'),
(19, 'mother', 'ako2', 'ako2'),
(20, 'father', 'sample', 'sample'),
(20, 'guardian', 'sample', 'sample'),
(20, 'mother', 'sample', '`sample'),
(21, 'father', 'sample2', 'sample2'),
(21, 'guardian', 'sample2', 'sample2'),
(21, 'mother', 'sample2', 'sample2'),
(22, 'father', 'TEst2', 'TEst2'),
(22, 'guardian', 'TEst2', 'TEst2'),
(22, 'mother', 'TEst2', 'TEst2'),
(23, 'father', 'test3', 'test3'),
(23, 'guardian', 'test3', 'test3'),
(23, 'mother', 'test3', 'test3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userid` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `scope` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`),
  KEY `scope` (`scope`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `password`, `scope`) VALUES
('add', 'P@$$w0rd', 'user'),
('unik', 'UniqueDiamond', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
