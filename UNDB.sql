-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 17, 2012 at 07:03 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT=0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `enrollment`
--
CREATE DATABASE `enrollment` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `enrollment`;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `year_level` varchar(20) DEFAULT NULL,
  `tuition_fee` varchar(50) DEFAULT NULL,
  `development_fee` varchar(50) DEFAULT NULL,
  `computer_fee` varchar(50) DEFAULT NULL,
  `energy_fee` varchar(50) DEFAULT NULL,
  `First_Communion` varchar(50) DEFAULT NULL,
  `field_trip` varchar(50) DEFAULT NULL,
  `graduation_fee` varchar(50) DEFAULT NULL,
  `membership_fee` varchar(50) DEFAULT NULL,
  `retreat` varchar(50) DEFAULT NULL,
  `reading_materials` varchar(50) DEFAULT NULL,
  `total_fee` varchar(50) DEFAULT NULL,
  `GrandTotal` varchar(100) DEFAULT NULL,
  `payment_scheme` varchar(11) DEFAULT NULL,
  `payment_month` varchar(20) NOT NULL,
  `Payment_date` datetime DEFAULT NULL,
  `note(A.R)` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

-- --------------------------------------------------------

--
-- Table structure for table `regeducationalbackground`
--

CREATE TABLE IF NOT EXISTS `regeducationalbackground` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `reg_school` varchar(100) NOT NULL,
  `reg_year` varchar(50) NOT NULL,
  `reg_id` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `reg_lname` varchar(30) NOT NULL,
  `reg_fname` varchar(30) NOT NULL,
  `reg_mname` varchar(30) DEFAULT NULL,
  `reg_age` int(11) NOT NULL,
  `reg_gender` varchar(20) NOT NULL,
  `reg_religion` varchar(30) NOT NULL,
  `reg_email` varchar(50) DEFAULT NULL,
  `reg_phone` varchar(50) DEFAULT NULL,
  `reg_stat` tinyint(1) NOT NULL,
  `reg_fat_name` varchar(50) DEFAULT NULL,
  `reg_mot_name` varchar(50) DEFAULT NULL,
  `reg_fat_occup` varchar(50) DEFAULT NULL,
  `reg_mot_occup` varchar(50) DEFAULT NULL,
  `reg_address` varchar(100) DEFAULT NULL,
  `reg_bday` date DEFAULT NULL,
  `reg_last_school` varchar(100) DEFAULT NULL,
  `reg_yearLevel` varchar(50) DEFAULT NULL,
  `reg_last_school_add` varchar(100) DEFAULT NULL,
  `reg_b_place` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `sec_code` varchar(50) NOT NULL,
  `no_of_stud_limit` int(11) DEFAULT '50',
  `no_of_stud` int(10) unsigned zerofill DEFAULT NULL,
  `room_no` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `stud_info`
--

CREATE TABLE IF NOT EXISTS `stud_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` varchar(15) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `stud_year`
--

CREATE TABLE IF NOT EXISTS `stud_year` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `stud_year` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `stud_num` varchar(50) NOT NULL,
  `stud_lname` varchar(30) NOT NULL,
  `stud_fname` varchar(30) NOT NULL,
  `stud_mname` varchar(20) DEFAULT NULL,
  `stud_address` varchar(50) NOT NULL,
  `stud_gender` varchar(20) NOT NULL,
  `stud_age` int(11) NOT NULL,
  `stud_religion` varchar(30) DEFAULT NULL,
  `stud_fatname` varchar(30) NOT NULL,
  `stud_motname` varchar(30) NOT NULL,
  `stud_fat_occup` varchar(50) DEFAULT NULL,
  `stud_mot_occup` varchar(50) DEFAULT NULL,
  `stud_bday` date NOT NULL,
  `stud_bday_place` varchar(100) DEFAULT NULL,
  `stud_contact` varchar(20) DEFAULT NULL,
  `stud_email` varchar(50) NOT NULL,
  `stud_year` varchar(50) NOT NULL,
  `stud_sec` varchar(50) NOT NULL,
  `stud_date_enrolled` date DEFAULT NULL,
  `stud_payment_stat` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `subj_stud`
--

CREATE TABLE IF NOT EXISTS `subj_stud` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STUD_ID` varchar(50) NOT NULL,
  `SUBJ_CODE` varchar(20) NOT NULL,
  `STUD_GRADE` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `subj_code` varchar(20) DEFAULT NULL,
  `subj_desc` varchar(20) DEFAULT NULL,
  `sched_date` varchar(20) DEFAULT NULL,
  `sched_time` varchar(20) DEFAULT NULL,
  `sec_code` varchar(20) NOT NULL,
  `stud_year` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_lname` varchar(30) NOT NULL,
  `teacher_fname` varchar(30) NOT NULL,
  `teacher_mname` varchar(30) NOT NULL DEFAULT 'NA',
  `teacher_address` varchar(50) NOT NULL,
  `teacher_phone` varchar(20) DEFAULT NULL,
  `teacher_email` varchar(25) DEFAULT NULL,
  `teacher_code` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subj`
--

CREATE TABLE IF NOT EXISTS `teacher_subj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_code` varchar(50) NOT NULL,
  `subj_code` varchar(50) NOT NULL,
  `sec_code` varchar(50) NOT NULL,
  `year_level` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `usrname` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `user_priviledge` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;
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
  `content` text NOT NULL,
  `user_id` varchar(200) NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
