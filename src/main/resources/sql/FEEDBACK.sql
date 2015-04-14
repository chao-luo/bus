/*
Navicat MySQL Data Transfer

Source Server         : 120.26.40.14
Source Server Version : 50624
Source Host           : 120.26.40.14:3306
Source Database       : bus

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2015-04-14 15:57:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `FEEDBACK`
-- ----------------------------
DROP TABLE IF EXISTS `FEEDBACK`;
CREATE TABLE `FEEDBACK` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

