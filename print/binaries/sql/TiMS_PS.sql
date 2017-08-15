/*
SQLyog Community v12.3.2 (64 bit)
MySQL - 10.2.7-MariaDB : Database - spagent
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/*Table structure for table `tims_ps_concattask` */

DROP TABLE IF EXISTS `tims_ps_concattask`;

CREATE TABLE `tims_ps_concattask` (
  `TASK_ID` varchar(200) NOT NULL,
  `JOB_NO` varchar(30) NOT NULL,
  `SPOOL_NO` varchar(30) NOT NULL,
  `FILE_COUNT` int(11) NOT NULL,
  `OUTPUT_PATH` varchar(1000) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT current_timestamp(),
  `MODIFY_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `tims_ps_concattask_dtl` */

DROP TABLE IF EXISTS `tims_ps_concattask_dtl`;

CREATE TABLE `tims_ps_concattask_dtl` (
  `TASK_ID` varchar(200) NOT NULL,
  `FILE_NO` int(11) NOT NULL,
  `FILE_PATH` varchar(1000) NOT NULL,
  PRIMARY KEY (`TASK_ID`,`FILE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `tims_ps_pstask` */

DROP TABLE IF EXISTS `tims_ps_pstask`;

CREATE TABLE `tims_ps_pstask` (
  `TASK_ID` varchar(200) NOT NULL,
  `JOB_NO` varchar(30) DEFAULT NULL,
  `SPOOL_NO` varchar(30) DEFAULT NULL,
  `FILE_COUNT` int(11) DEFAULT NULL,
  `OUTPUT_PATH` varchar(1000) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT current_timestamp(),
  `MODIFY_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`TASK_ID`),
  KEY `IDX_JOB_SPOOL` (`JOB_NO`,`SPOOL_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `tims_ps_pstask_dtl` */

DROP TABLE IF EXISTS `tims_ps_pstask_dtl`;

CREATE TABLE `tims_ps_pstask_dtl` (
  `TASK_ID` varchar(200) NOT NULL,
  `FILE_NO` int(11) NOT NULL,
  `FILE_PATH` varchar(1000) NOT NULL DEFAULT 'NULL',
  `STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`TASK_ID`,`FILE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
