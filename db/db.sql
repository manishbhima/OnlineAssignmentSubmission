/*
SQLyog Community v11.52 (32 bit)
MySQL - 5.5.30 : Database - assignment
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`assignment` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `assignment`;

/*Table structure for table `answers` */

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `sno` varchar(500) DEFAULT NULL,
  `qtn` varchar(500) DEFAULT NULL,
  `ans` varchar(4000) DEFAULT NULL,
  `rno` varchar(500) DEFAULT NULL,
  `marks` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `asignment` */

DROP TABLE IF EXISTS `asignment`;

CREATE TABLE `asignment` (
  `sno` int(100) DEFAULT NULL,
  `subjt` varchar(500) DEFAULT NULL,
  `duedate` varchar(500) DEFAULT NULL,
  `qtn1` varchar(1000) DEFAULT NULL,
  `qtn2` varchar(1000) DEFAULT NULL,
  `qtn3` varchar(1000) DEFAULT NULL,
  `qtn4` varchar(1000) DEFAULT NULL,
  `qtn5` varchar(1000) DEFAULT NULL,
  `factid` varchar(500) DEFAULT NULL,
  `dept` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `faculty` */

DROP TABLE IF EXISTS `faculty`;

CREATE TABLE `faculty` (
  `name` varchar(500) DEFAULT NULL,
  `factid` varchar(500) DEFAULT NULL,
  `pwd` varchar(500) DEFAULT NULL,
  `dept` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `mno` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `name` varchar(500) DEFAULT NULL,
  `rno` varchar(500) DEFAULT NULL,
  `pwd` varchar(500) DEFAULT NULL,
  `dept` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `mno` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
