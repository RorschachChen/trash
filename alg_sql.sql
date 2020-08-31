/*
SQLyog Ultimate v8.32 
MySQL - 5.5.40 : Database - feature
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`feature` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `feature`;

/*Table structure for table `feature_algorithmtype` */

DROP TABLE IF EXISTS `feature_algorithmtype`;

CREATE TABLE `feature_algorithmtype` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `update_time` DATE NOT NULL,
  `create_time` DATE NOT NULL,
  `alg_num` int(5),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Data for the table `feature_algorithmtype` */

insert  into `feature_algorithmtype`(`name`,`description`) values ('name1','des1');

/*Table structure for table `feature_algorithm` */

DROP TABLE IF EXISTS `feature_algorithm`;

CREATE TABLE `feature_algorithm` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `update_time` DATE NOT NULL,
  `create_time` DATE NOT NULL,
  `algorithmType_id` int(255) NOT NULL,
  PRIMARY KEY (`id`),
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Data for the table `feature_algorithm` */

insert  into `feature_algorithm`(`name`,`description`,`algorithmType_id`) values ('name1', 'des1', 1);

/*Table structure for table `feature_datasource` */

DROP TABLE IF EXISTS `feature_datasource`;

CREATE TABLE `feature_datasource` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `update_time` DATE NOT NULL,
  `create_time` DATE NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Data for the table `s_clazz` */

insert  into `feature_datasource`(`name`) values ('name');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
