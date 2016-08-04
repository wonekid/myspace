/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : myspace
Target Host     : localhost:3306
Target Database : myspace
Date: 2013-06-05 10:44:33
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1');
INSERT INTO `user` VALUES ('2', '2');
INSERT INTO `user` VALUES ('ccc', 'ccc');
INSERT INTO `user` VALUES ('we22', 'we');
