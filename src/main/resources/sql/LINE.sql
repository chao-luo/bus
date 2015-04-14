/*
Navicat MySQL Data Transfer

Source Server         : 120.26.40.14
Source Server Version : 50624
Source Host           : 120.26.40.14:3306
Source Database       : bus

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2015-04-14 15:57:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `LINE`
-- ----------------------------
DROP TABLE IF EXISTS `LINE`;
CREATE TABLE `LINE` (
  `line_number` int(11) DEFAULT NULL,
  `station_id` int(11) DEFAULT NULL,
  `arrival_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of LINE
-- ----------------------------
INSERT INTO `LINE` VALUES ('1', '1', '07:05:30');
INSERT INTO `LINE` VALUES ('1', '2', '07:09:43');
INSERT INTO `LINE` VALUES ('1', '3', '07:20:50');
INSERT INTO `LINE` VALUES ('1', '4', '07:22:59');
INSERT INTO `LINE` VALUES ('1', '5', '07:28:08');
INSERT INTO `LINE` VALUES ('1', '6', '07:30:16');
INSERT INTO `LINE` VALUES ('1', '7', '07:35:24');
INSERT INTO `LINE` VALUES ('1', '8', '07:43:31');
INSERT INTO `LINE` VALUES ('1', '9', '07:45:38');
INSERT INTO `LINE` VALUES ('1', '10', '08:00:48');
INSERT INTO `LINE` VALUES ('1', '11', '08:03:57');
INSERT INTO `LINE` VALUES ('1', '12', '08:10:05');
INSERT INTO `LINE` VALUES ('1', '13', '08:12:14');
INSERT INTO `LINE` VALUES ('2', '14', '07:20:00');
INSERT INTO `LINE` VALUES ('2', '15', '07:25:00');
INSERT INTO `LINE` VALUES ('2', '16', '07:27:00');
INSERT INTO `LINE` VALUES ('2', '17', '07:29:00');
INSERT INTO `LINE` VALUES ('2', '18', '07:31:00');
INSERT INTO `LINE` VALUES ('2', '19', '07:34:00');
INSERT INTO `LINE` VALUES ('2', '20', '07:36:00');
INSERT INTO `LINE` VALUES ('2', '21', '07:38:00');
INSERT INTO `LINE` VALUES ('2', '22', '07:40:00');
INSERT INTO `LINE` VALUES ('2', '23', '07:41:00');
INSERT INTO `LINE` VALUES ('2', '24', '07:45:00');
INSERT INTO `LINE` VALUES ('2', '25', '07:46:00');
INSERT INTO `LINE` VALUES ('2', '26', '07:48:00');
INSERT INTO `LINE` VALUES ('2', '27', '07:52:00');
INSERT INTO `LINE` VALUES ('2', '28', '07:55:00');
INSERT INTO `LINE` VALUES ('2', '29', '08:01:00');
INSERT INTO `LINE` VALUES ('2', '30', '08:03:00');
INSERT INTO `LINE` VALUES ('2', '31', '08:05:00');
INSERT INTO `LINE` VALUES ('3', '33', '07:10:00');
INSERT INTO `LINE` VALUES ('3', '34', '07:11:01');
INSERT INTO `LINE` VALUES ('3', '35', '07:13:00');
INSERT INTO `LINE` VALUES ('3', '36', '07:16:00');
INSERT INTO `LINE` VALUES ('3', '37', '07:21:00');
INSERT INTO `LINE` VALUES ('3', '38', '07:26:00');
INSERT INTO `LINE` VALUES ('3', '39', '07:32:00');
INSERT INTO `LINE` VALUES ('3', '40', '07:36:00');
INSERT INTO `LINE` VALUES ('3', '41', '07:37:00');
INSERT INTO `LINE` VALUES ('3', '42', '07:47:00');
INSERT INTO `LINE` VALUES ('3', '43', '07:50:00');
INSERT INTO `LINE` VALUES ('3', '44', '07:52:00');
INSERT INTO `LINE` VALUES ('3', '45', '07:56:00');
INSERT INTO `LINE` VALUES ('3', '46', '08:00:00');
INSERT INTO `LINE` VALUES ('3', '47', '08:10:00');
INSERT INTO `LINE` VALUES ('3', '48', '08:15:00');
INSERT INTO `LINE` VALUES ('3', '49', '08:19:00');
INSERT INTO `LINE` VALUES ('4', '51', '07:05:00');
INSERT INTO `LINE` VALUES ('4', '52', '07:10:00');
INSERT INTO `LINE` VALUES ('4', '53', '07:20:00');
INSERT INTO `LINE` VALUES ('4', '54', '07:28:00');
INSERT INTO `LINE` VALUES ('4', '55', '07:36:00');
INSERT INTO `LINE` VALUES ('4', '56', '07:40:00');
INSERT INTO `LINE` VALUES ('4', '57', '07:47:00');
INSERT INTO `LINE` VALUES ('4', '58', '07:50:00');
INSERT INTO `LINE` VALUES ('4', '59', '07:55:00');
INSERT INTO `LINE` VALUES ('4', '60', '07:59:00');
INSERT INTO `LINE` VALUES ('4', '61', '08:02:00');
INSERT INTO `LINE` VALUES ('4', '62', '08:04:00');
INSERT INTO `LINE` VALUES ('4', '63', '08:06:00');
INSERT INTO `LINE` VALUES ('4', '64', '08:08:00');
INSERT INTO `LINE` VALUES ('4', '65', '08:10:00');
INSERT INTO `LINE` VALUES ('5', '66', '07:08:00');
INSERT INTO `LINE` VALUES ('5', '67', '07:11:00');
INSERT INTO `LINE` VALUES ('5', '68', '07:14:00');
INSERT INTO `LINE` VALUES ('5', '69', '07:17:00');
INSERT INTO `LINE` VALUES ('5', '70', '07:18:00');
INSERT INTO `LINE` VALUES ('5', '71', '07:25:00');
INSERT INTO `LINE` VALUES ('5', '72', '07:28:00');
INSERT INTO `LINE` VALUES ('5', '73', '07:32:00');
INSERT INTO `LINE` VALUES ('5', '74', '07:34:00');
INSERT INTO `LINE` VALUES ('5', '75', '07:36:00');
INSERT INTO `LINE` VALUES ('5', '76', '07:39:00');
INSERT INTO `LINE` VALUES ('5', '77', '07:41:00');
INSERT INTO `LINE` VALUES ('5', '78', '07:44:00');
INSERT INTO `LINE` VALUES ('5', '79', '07:56:00');
INSERT INTO `LINE` VALUES ('5', '80', '08:06:00');
INSERT INTO `LINE` VALUES ('5', '48', '08:14:00');
INSERT INTO `LINE` VALUES ('6', '81', '07:20:00');
INSERT INTO `LINE` VALUES ('6', '82', '07:26:00');
INSERT INTO `LINE` VALUES ('6', '83', '07:28:00');
INSERT INTO `LINE` VALUES ('6', '84', '07:30:00');
INSERT INTO `LINE` VALUES ('6', '85', '07:33:00');
INSERT INTO `LINE` VALUES ('6', '86', '07:35:00');
INSERT INTO `LINE` VALUES ('6', '87', '07:38:00');
INSERT INTO `LINE` VALUES ('6', '88', '07:40:00');
INSERT INTO `LINE` VALUES ('6', '89', '07:44:00');
INSERT INTO `LINE` VALUES ('6', '90', '07:48:00');
INSERT INTO `LINE` VALUES ('6', '91', '07:52:00');
INSERT INTO `LINE` VALUES ('6', '92', '07:57:00');
INSERT INTO `LINE` VALUES ('6', '93', '08:03:00');
INSERT INTO `LINE` VALUES ('6', '94', '08:05:00');
INSERT INTO `LINE` VALUES ('7', '95', '07:05:00');
INSERT INTO `LINE` VALUES ('7', '96', '07:07:00');
INSERT INTO `LINE` VALUES ('7', '97', '07:10:00');
INSERT INTO `LINE` VALUES ('7', '98', '07:15:00');
INSERT INTO `LINE` VALUES ('7', '99', '07:18:00');
INSERT INTO `LINE` VALUES ('7', '100', '07:28:00');
INSERT INTO `LINE` VALUES ('7', '101', '07:33:00');
INSERT INTO `LINE` VALUES ('7', '102', '07:35:00');
INSERT INTO `LINE` VALUES ('7', '103', '07:42:00');
INSERT INTO `LINE` VALUES ('7', '104', '07:47:00');
INSERT INTO `LINE` VALUES ('7', '105', '07:50:00');
INSERT INTO `LINE` VALUES ('7', '106', '07:53:00');
INSERT INTO `LINE` VALUES ('7', '107', '07:55:00');
INSERT INTO `LINE` VALUES ('7', '108', '07:58:00');
INSERT INTO `LINE` VALUES ('7', '109', '08:00:00');
INSERT INTO `LINE` VALUES ('7', '110', '08:03:00');
INSERT INTO `LINE` VALUES ('7', '111', '08:06:00');
INSERT INTO `LINE` VALUES ('7', '112', '08:08:00');
INSERT INTO `LINE` VALUES ('7', '113', '08:11:00');
INSERT INTO `LINE` VALUES ('7', '114', '08:15:00');
INSERT INTO `LINE` VALUES ('1', '115', '08:30:00');
INSERT INTO `LINE` VALUES ('2', '115', '08:30:00');
INSERT INTO `LINE` VALUES ('3', '115', '08:30:00');
INSERT INTO `LINE` VALUES ('4', '115', '08:30:00');
INSERT INTO `LINE` VALUES ('5', '115', '08:30:00');
INSERT INTO `LINE` VALUES ('6', '115', '08:30:00');
INSERT INTO `LINE` VALUES ('7', '115', '08:30:00');
