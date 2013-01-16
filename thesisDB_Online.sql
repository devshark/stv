/*
SQLyog Ultimate v9.10 
MySQL - 5.5.25 : Database - stv_online
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*CREATE DATABASE /*!32312 IF NOT EXISTS`stv_online` /*!40100 DEFAULT CHARACTER SET utf8 */;

/*USE `stv_online`;*/

/*Table structure for table `application` */

DROP TABLE IF EXISTS `application`;

CREATE TABLE `application` (
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `application` */

LOCK TABLES `application` WRITE;

insert  into `application`(`ID`,`lastname`,`firstname`,`middlename`,`address`,`birthdate`,`birthplace`,`gender`,`religion`,`contactnumber`,`updt_date`,`uploaderCode`) values (18,'ako','ako','ako','ako','1989-11-27','ako','Male','ako','ako','2012-09-20 16:31:22','1'),(19,'ako2','ako2','ako2','ako2','1990-11-27','ako2','Male','ako2','ako2','2012-09-20 16:39:12','1'),(20,'sample','sample','sample','sample','1990-11-27','sample','Male','sample','123435','2013-01-09 15:13:03','1'),(21,'sample2','sample2','sample2`','sample2','1990-11-27','sample2','Male','sample2','4324324','2013-01-09 15:17:40','1'),(22,'TEst2','TEst2','TEst2','TEst2','2013-01-01','TEst2','Male','TEst2','12312321','2013-01-09 17:19:46','1'),(23,'test3','test3','test3','test3','1990-11-27','sample','Male','sample','123123','2013-01-09 17:27:58','1');

UNLOCK TABLES;

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `user_id` varchar(200) NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `posts` */

LOCK TABLES `posts` WRITE;

insert  into `posts`(`post_id`,`title`,`content`,`user_id`) values (1,'dfgdfgfdgdfg','<p>asdasd</p>','unik'),(2,'sadasdasd','<p>sdfsdfsdf</p>','unik'),(3,'Pina try ako ni Mon-Mon :D','<p>Ang galing nito ah. pa try ako ha.</p>\r\n<p>&nbsp;</p>','unik');

UNLOCK TABLES;

/*Table structure for table `tbl_educbackground` */

DROP TABLE IF EXISTS `tbl_educbackground`;

CREATE TABLE `tbl_educbackground` (
  `application_ID` int(11) NOT NULL,
  `level` varchar(10) NOT NULL,
  `nameofschool` varchar(100) DEFAULT NULL,
  `year_attended` year(4) DEFAULT NULL,
  `average` double DEFAULT NULL,
  PRIMARY KEY (`application_ID`,`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_educbackground` */

LOCK TABLES `tbl_educbackground` WRITE;

insert  into `tbl_educbackground`(`application_ID`,`level`,`nameofschool`,`year_attended`,`average`) values (18,'elementary','ako',1998,90),(18,'highschool','ako',2002,90),(19,'elementary','ako2',1998,90),(19,'highschool','ako2',2002,90);

UNLOCK TABLES;

/*Table structure for table `tbl_relation` */

DROP TABLE IF EXISTS `tbl_relation`;

CREATE TABLE `tbl_relation` (
  `application_ID` int(11) NOT NULL,
  `relationship` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  PRIMARY KEY (`application_ID`,`relationship`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_relation` */

LOCK TABLES `tbl_relation` WRITE;

insert  into `tbl_relation`(`application_ID`,`relationship`,`name`,`occupation`) values (0,'father','sample3','sample3'),(0,'guardian','sample3','sample3'),(0,'mother','sample3','sample3'),(18,'father','ako','ako'),(18,'guardian','ako','ako'),(18,'mother','ako','ako'),(19,'father','ako2','ako2'),(19,'guardian','ako2','ako2'),(19,'mother','ako2','ako2'),(20,'father','sample','sample'),(20,'guardian','sample','sample'),(20,'mother','sample','`sample'),(21,'father','sample2','sample2'),(21,'guardian','sample2','sample2'),(21,'mother','sample2','sample2'),(22,'father','TEst2','TEst2'),(22,'guardian','TEst2','TEst2'),(22,'mother','TEst2','TEst2'),(23,'father','test3','test3'),(23,'guardian','test3','test3'),(23,'mother','test3','test3');

UNLOCK TABLES;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userid` varchar(200) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users` */

LOCK TABLES `users` WRITE;

insert  into `users`(`userid`,`password`) values ('unik','unik');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
