-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 05, 2012 at 04:35 PM
-- Server version: 5.5.25
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `enrollment`
--

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

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`ID`, `year_level`, `tuition_fee`, `development_fee`, `computer_fee`, `energy_fee`, `First_Communion`, `field_trip`, `graduation_fee`, `membership_fee`, `retreat`, `reading_materials`, `total_fee`, `GrandTotal`, `payment_scheme`, `payment_month`, `Payment_date`, `note(A.R)`) VALUES
(1, 'Grade 1', '15,353.00', '3,680.00', '2,500.00', '1,550.00', NULL, '2,400.00', NULL, '400.00', NULL, '1,000.00', '11,530.00', '26,883.00', '1st', '1 Year', NULL, NULL),
(2, 'Grade 2', '15,353.00', '3,680.00', '2,500.00', '1,550.00', NULL, '2,400.00', NULL, '400.00', NULL, '1,000.00', '11,530.00', '26,883.00', '1st', '1 Year', NULL, NULL),
(3, 'Grade 3', '15,353.00', '3,680.00', '2,500.00', '1,550.00', '1,200.00', '2,400.00', NULL, '400.00', NULL, '1,000.00', '11,530.00', '26,083.00', '1st', '1 Year', NULL, NULL),
(4, 'Grade 4', '15,353.00', '3,680.00', '2,500.00', '1,550.00', NULL, '1,400.00', NULL, '400.00', '750.00', '1,000.00', '11,280.00', '26,663.00', '1st', '1 Year', NULL, NULL),
(5, 'Grade 5', '15,353.00', '3,680.00', '2,500.00', '1,550.00', NULL, '1,400.00', NULL, '400.00', '750.00', '1,000.00', '11,280.00', '26,663.00', '1st', '1 Year', NULL, NULL),
(6, 'Grade 6', '15,353.00', '3,680.00', '2,500.00', '1,550.00', NULL, '1,400.00', '1,800.00', '400.00', '1,700.00', '1,000.00', '14,030.00', '29,383.00', '1st', '1 Year', NULL, NULL),
(7, 'Grade 7', '15,380.00', '3,680.00', '3,000.00', '1,550.00', NULL, '1,400.00', NULL, '400.00', '830.00', '1,000.00', '11,860.00', '27,240.00', '1st', '1 Year', NULL, NULL),
(8, '2nd Year', '15,380.00', '3,680.00', '3,000.00', '1,550.00', NULL, '1,400.00', NULL, '400.00', '830.00', '1,000.00', '11,860.00', '27,240.00', '1st', '1 Year', NULL, NULL),
(9, '3rd Year', '15,380.00', '3,680.00', '3,000.00', '1,550.00', NULL, '1,400.00', NULL, '400.00', '830.00', '1,000.00', '11,860.00', '27,240.00', '1st', '1 Year', NULL, NULL),
(10, '4th Year', '15,380.00', '3,680.00', '3,000.00', '1,550.00', NULL, '1,400.00', '3,000.00', '400.00', '830.00', '1,000.00', '16,330.00', '31,710.000', '1st', '1 Year', NULL, NULL),
(11, '1st Year', '15,380.00', '3,680.00', '3,000.00', '1,550.00', NULL, '1,400.00', NULL, '400.00', '830.00', '1,000.00', '11,860.00', '27,240.00', '1st', '1 Year', NULL, NULL),
(12, 'Grade 1', '1,538.00', '3,680.00', '2,500.00', '1,550.00', NULL, '2,400.00', NULL, '400.00', NULL, '1,000.00', '11,530.00', '13,068.00', '2nd', 'Monthly', NULL, NULL),
(13, 'Grade 2', '1,538.00', '3,680.00', '2,500.00', '1,550.00', NULL, '2,400.00', NULL, '400.00', NULL, '1,000.00', '11,530.00', '13,068.00', '2nd', 'Monthly', NULL, NULL),
(14, 'Grade 3', '1,538.00', '3,680.00', '2,500.00', '1,550.00', '1,200.00', '2,400.00', NULL, '400.00', NULL, '1,000.00', '12,730.00', '14,268.00', '2nd', 'Monthly', NULL, NULL),
(15, 'Grade 4', '1,538.00', '3,680.00', '2,500.00', '1,550.00', NULL, '1,400.00', NULL, '400.00', '750.00', '1,000.00', '11,280.00', '12,818.00', '2nd', 'Monthly', NULL, NULL),
(16, 'Grade 5', '1,538.00', '3,680.00', '2,500.00', '1,550.00', NULL, '1,400.00', NULL, '400.00', '750.00', '1,000.00', '11,280.00', '12,818.00', '2nd', 'Monthly', NULL, NULL),
(17, 'Grade 6', '1,538.00', '3,680.00', '2,500.00', '1,550.00', NULL, '1,400.00', '1,800.00', '400.00', '1,700.00', '1,000.00', '14,030.00', '15,568.00', '2nd', 'Monthly', NULL, NULL),
(18, 'Grade 7', '1,538.00', '3,680.00', '3,000.00', '1,550.00', NULL, '1,400.00', NULL, '400.00', '830.00', '1,000.00', '11,860.00', '13,398.00', '2nd', 'Monthly', NULL, NULL),
(19, '2nd Year', '1,538.00', '3,680.00', '3,000.00', '1,550.00', NULL, '1,400.00', NULL, '400.00', '830.00', '1,000.00', '11,860.00', '13,398.00', '2nd', 'Monthly', NULL, NULL),
(20, '3rd Year', '1,538.00', '3,680.00', '3,000.00', '1,550.00', NULL, '1,400.00', NULL, '400.00', '830.00', '1,000.00', '11,860.00', '13,398.00', '2nd', 'Monthly', NULL, NULL),
(21, '4th Year', '1,538.00', '3,680.00', '3,000.00', '1,550.00', NULL, '1,400.00', '3,000.00', '400.00', '2,300.00', '1,000.00', '16,330.00', '17,868.00', '2nd ', 'Monthly', NULL, NULL),
(23, '1st Year', '1,538.00', '3,680.00', '3,000.00', '1,550.00', NULL, '1,400.00', NULL, '400.00', '830.00', '1,000.00', '11,860.00', '13,398.00', '2nd', 'Monthly', NULL, NULL),
(24, 'Grade 1', '3070.6', '736.00', '500.00', '310.00', NULL, '480.00', NULL, '80.00', NULL, '200.00', '5,377.00', NULL, '3rd', 'JUNE', NULL, NULL),
(25, 'Grade 2', '3070.6', '736.00', '500.00', '310.00', NULL, '480.00', NULL, '80.00', NULL, '200.00', '5,377.00', NULL, '3rd', 'JUNE', NULL, NULL),
(26, 'Grade 3', '3070.6', '736.00', '500.00', '310.00', '240.00', '480.00', NULL, '80.00', NULL, '200.00', '5,617.00', NULL, '3rd', 'JUNE', NULL, NULL),
(27, 'Grade 4', '3070.6', '736.00', '500.00', '310.00', NULL, '288.00', NULL, '80.00', NULL, NULL, NULL, NULL, NULL, 'JUNE', NULL, NULL);

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

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`ID`, `reg_lname`, `reg_fname`, `reg_mname`, `reg_age`, `reg_gender`, `reg_religion`, `reg_email`, `reg_phone`, `reg_stat`, `reg_fat_name`, `reg_mot_name`, `reg_fat_occup`, `reg_mot_occup`, `reg_address`, `reg_bday`, `reg_last_school`, `reg_yearLevel`, `reg_last_school_add`, `reg_b_place`) VALUES
(2, 'villaluz', 'reymond', 'deleon', 12, 'MALE', 'CATHOLIC', 'rdllv@yahoo.com', 'none', 0, 'ramon villaluz', 'alma villaluz', 'none', 'none', 'wawa', '1990-11-27', 'ACADEMIA DE SAN BARTOLOME DE TAGUIG', 'FOURTH YEAR', 'TAGUIG CITY', 'TAGUIG CITY');

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

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`ID`, `sec_code`, `no_of_stud_limit`, `no_of_stud`, `room_no`) VALUES
(1, 'ST MATTHEW', 50, 0000000034, '201'),
(2, 'ST PETER', 50, 0000000050, '203'),
(3, 'ST  MARK', 50, 0000000000, '203');

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

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `stud_num`, `stud_lname`, `stud_fname`, `stud_mname`, `stud_address`, `stud_gender`, `stud_age`, `stud_religion`, `stud_fatname`, `stud_motname`, `stud_fat_occup`, `stud_mot_occup`, `stud_bday`, `stud_bday_place`, `stud_contact`, `stud_email`, `stud_year`, `stud_sec`, `stud_date_enrolled`, `stud_payment_stat`) VALUES
(14, '12-1001', 'NONE', 'REYMOND', 'DELEON', 'WAWA', 'MALE', 12, NULL, 'RAMON VILLALUZ', 'ALMA VILLALUZ', 'NONE', 'NONE', '1990-11-08', 'TAGUIG CITY', 'NONEE', 'RDLLV@YAHOO.COM', '1st Year', 'ST MATTHEW', '2012-08-09', NULL),
(18, '12-1002', 'VILLALUZ', 'REYMOND', 'DELEON', 'WAWA', 'MALE', 12, 'CATHOLIC', 'RAMON VILLALUZ', 'ALMA VILLALUZ', 'NONE', 'NONE', '1990-11-27', 'TAGUIG CITY', '999999999', 'RDLLV@YAHOO.COM', '1st Year', 'ST MATTHEW', '2012-08-29', NULL);

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

--
-- Dumping data for table `stud_year`
--

INSERT INTO `stud_year` (`ID`, `stud_year`) VALUES
(35, 'Grade 1'),
(36, 'Grade 2'),
(37, 'Grade 3'),
(38, 'Grade 4'),
(39, 'Grade 5'),
(40, 'Grade 6'),
(41, 'Grade 7'),
(42, '1st Year'),
(43, '2nd Year'),
(44, '3rd Year'),
(45, '4th Year'),
(46, '5th Year');

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

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`ID`, `subj_code`, `subj_desc`, `sched_date`, `sched_time`, `sec_code`, `stud_year`) VALUES
(1, 'English', '1231111212', '7:30-8:00am', 'Tuesday', 'ST PETER', '1st Year'),
(2, 'CL', '1231111212', '7:30-8:00am', 'Tuesday', 'ST MATTHEW', '2nd Year'),
(3, 'English2', '1231111212', '7:30-8:00am', 'Tuesday', 'ST MATTHEW', '2nd Year'),
(7, 'CL2', '12', '7:30-8:00am', 'Tuesday', 'ST MATTHEW', '1st Year'),
(8, 'MATH', 'mathematics', '9:00-9:30am', 'Monday', 'ST MATTHEW', '1st Year');

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

--
-- Dumping data for table `subj_stud`
--

INSERT INTO `subj_stud` (`ID`, `STUD_ID`, `SUBJ_CODE`, `STUD_GRADE`) VALUES
(19, '12-1002', 'CL2', 'TAKING'),
(20, '12-1002', 'MATH', 'TAKING'),
(21, '', 'CL2', 'TAKING'),
(22, '', 'MATH', 'TAKING');

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

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`ID`, `teacher_lname`, `teacher_fname`, `teacher_mname`, `teacher_address`, `teacher_phone`, `teacher_email`, `teacher_code`) VALUES
(1, 'VILLABROSA', 'MILO', 'NA', 'PASIG', 'NONE', 'milo.com', 'MILO123'),
(2, 'ARCANGHEL', 'NOREEN', 'NA', 'PASIG', 'NONE', 'ARC.COM', 'ARC123');

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

--
-- Dumping data for table `teacher_subj`
--

INSERT INTO `teacher_subj` (`id`, `teacher_code`, `subj_code`, `sec_code`, `year_level`) VALUES
(33, 'MILO123', 'English2', 'ST MATTHEW', '2nd Year'),
(34, 'MILO123', 'CL2', 'ST MATTHEW', '1st Year');

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
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`ID`, `usrname`, `pass`, `lname`, `fname`, `mname`, `address`, `user_priviledge`) VALUES
(1, 'admin', 'admin', 'admin', 'Administrator', 'admin', '', 'admin'),
(2, 'user', 'user', 'user', 'user', 'user', 'user', 'User'),
(3, 'reymond', '1', 'none', 'none', 'none', 'none', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
