# Host: localhost  (Version: 5.5.15)
# Date: 2013-06-06 16:54:49
# Generator: MySQL-Front 5.3  (Build 3.9)

/*!40101 SET NAMES utf8 */;

CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET gbk */;
USE `test`;

#
# Source for table "user"
#

CREATE TABLE `user` (
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Data for table "user"
#

INSERT INTO `user` VALUES ('1','1'),('2','2'),('ccc','ccc'),('we22','we');
