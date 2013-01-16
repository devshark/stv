-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 18, 2012 at 05:53 PM
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
  PRIMARY KEY (`ID`),
  KEY `lastname` (`lastname`,`firstname`,`middlename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `user_id` varchar(200) NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`),
  KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userid` varchar(200) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
