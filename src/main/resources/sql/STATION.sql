/*
Navicat MySQL Data Transfer

Source Server         : 120.26.40.14
Source Server Version : 50624
Source Host           : 120.26.40.14:3306
Source Database       : bus

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2015-04-14 15:57:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `STATION`
-- ----------------------------
DROP TABLE IF EXISTS `STATION`;
CREATE TABLE `STATION` (
  `id` int(11) NOT NULL,
  `station_name` varchar(255) DEFAULT NULL,
  `lon` float DEFAULT NULL,
  `lat` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of STATION
-- ----------------------------
INSERT INTO `STATION` VALUES ('1', '阿奎利亚小区门口站临泉路(唐郢站)', '117.271', '31.9599');
INSERT INTO `STATION` VALUES ('2', '阜阳路（天水路）', '117.281', '31.9409');
INSERT INTO `STATION` VALUES ('3', '阜阳路（凤台路杏林小区）', '117.293', '31.8988');
INSERT INTO `STATION` VALUES ('4', '临泉路(一里井站)', '117.294', '31.8924');
INSERT INTO `STATION` VALUES ('5', '临泉路(郑河站)', '117.278', '31.8923');
INSERT INTO `STATION` VALUES ('6', '临泉路(李洼站)', '117.264', '31.8928');
INSERT INTO `STATION` VALUES ('7', '临泉路(四里河路站)', '117.252', '31.8869');
INSERT INTO `STATION` VALUES ('8', '青阳北路（青史站）', '117.248', '31.8695');
INSERT INTO `STATION` VALUES ('9', '史河路（颐和佳苑小学站）', '117.243', '31.8685');
INSERT INTO `STATION` VALUES ('10', '樊洼路（金色池塘南门）', '117.216', '31.8702');
INSERT INTO `STATION` VALUES ('11', '稻香路（合肥皮革城站）', '117.175', '31.8665');
INSERT INTO `STATION` VALUES ('12', '井岗路(35中站)', '117.175', '31.8629');
INSERT INTO `STATION` VALUES ('13', '长江西路（枫林路站）', '117.169', '31.8371');
INSERT INTO `STATION` VALUES ('14', '濉溪路(夏园路站)', '117.309', '31.886');
INSERT INTO `STATION` VALUES ('15', '濉溪路（白水坝站)', '117.285', '31.8861');
INSERT INTO `STATION` VALUES ('16', '濉溪路（南国花园站)', '117.279', '31.8852');
INSERT INTO `STATION` VALUES ('17', '濉溪路（亳州路站)', '117.269', '31.8846');
INSERT INTO `STATION` VALUES ('18', '濉溪路（16所站)', '117.263', '31.8848');
INSERT INTO `STATION` VALUES ('19', '合作化北路五里岗站', '117.257', '31.8741');
INSERT INTO `STATION` VALUES ('20', '淠河路(合作化北路站)', '117.257', '31.8631');
INSERT INTO `STATION` VALUES ('21', '淠河路(状元楼酒店站)', '117.247', '31.8634');
INSERT INTO `STATION` VALUES ('22', '淠河路(凤凰城小区南站)', '117.239', '31.8637');
INSERT INTO `STATION` VALUES ('23', '潜山北路(七里塘站)', '117.237', '31.8642');
INSERT INTO `STATION` VALUES ('24', '潜山南路(邮电学院站)', '117.239', '31.8554');
INSERT INTO `STATION` VALUES ('25', '贵池路(广利花园站)', '117.232', '31.8517');
INSERT INTO `STATION` VALUES ('26', '贵池路（怀宁路站)', '117.228', '31.8512');
INSERT INTO `STATION` VALUES ('27', '黄山路（五爪塘站）', '117.227', '31.847');
INSERT INTO `STATION` VALUES ('28', '黄山路（皇冠假日酒店门口站）', '117.222', '31.8475');
INSERT INTO `STATION` VALUES ('29', '长江西路(科学大道站)', '117.215', '31.862');
INSERT INTO `STATION` VALUES ('30', '长江西路(通用所站)', '117.208', '31.8603');
INSERT INTO `STATION` VALUES ('31', '长江西路(新家坡花园城站)', '117.203', '31.86');
INSERT INTO `STATION` VALUES ('33', '临泉路(唐郢站)', '117.347', '31.8824');
INSERT INTO `STATION` VALUES ('34', '临泉路(合家福超市站)', '117.34', '31.8828');
INSERT INTO `STATION` VALUES ('35', '临泉路(安徽大市场站)', '117.333', '31.8828');
INSERT INTO `STATION` VALUES ('36', '临泉路(合肥晚报社站)', '117.325', '31.8826');
INSERT INTO `STATION` VALUES ('37', '临泉路(炉桥路口)', '117.301', '31.8823');
INSERT INTO `STATION` VALUES ('38', '宿州北路(劳动村站)', '117.299', '31.8814');
INSERT INTO `STATION` VALUES ('39', '环城北路(亳州路站)', '117.269', '31.8846');
INSERT INTO `STATION` VALUES ('40', '环城西路(省劳改局站)', '117.277', '31.8686');
INSERT INTO `STATION` VALUES ('41', '安庆西路(干休所站)', '117.269', '31.8686');
INSERT INTO `STATION` VALUES ('42', '长江西路(国购广场站)', '117.262', '31.8606');
INSERT INTO `STATION` VALUES ('43', '贵池路(合作化南路站)', '117.258', '31.8528');
INSERT INTO `STATION` VALUES ('44', '贵池路(江南书院站)', '117.252', '31.8524');
INSERT INTO `STATION` VALUES ('45', '潜山南路（新华U阁站）', '117.237', '31.85');
INSERT INTO `STATION` VALUES ('46', '潜山南路（轻机厂站)', '117.238', '31.8409');
INSERT INTO `STATION` VALUES ('47', '黄山路（绿城桂花园站)', '117.205', '31.846');
INSERT INTO `STATION` VALUES ('48', '玉兰大道（蜀山森林公园站)', '117.198', '31.8456');
INSERT INTO `STATION` VALUES ('49', '望江西路（蜀南庭院站)', '117.174', '31.8372');
INSERT INTO `STATION` VALUES ('51', '龙岗路', '117.383', '31.8656');
INSERT INTO `STATION` VALUES ('52', '当涂路(花溪新村站)', '117.343', '31.8696');
INSERT INTO `STATION` VALUES ('53', '铜陵南路(淝河路站)', '117.319', '31.8458');
INSERT INTO `STATION` VALUES ('54', '铜陵南路(贾大郢站)', '117.32', '31.8302');
INSERT INTO `STATION` VALUES ('55', '东流路(望江东路站)', '117.321', '31.8318');
INSERT INTO `STATION` VALUES ('56', '祁门路(望湖城站)', '117.301', '31.8158');
INSERT INTO `STATION` VALUES ('57', '祁门路(桐城南路站)', '117.283', '31.8133');
INSERT INTO `STATION` VALUES ('58', '习友路（怀宁路站）', '117.229', '31.8614');
INSERT INTO `STATION` VALUES ('59', '翡翠大道路（平塘站）', '117.222', '31.8081');
INSERT INTO `STATION` VALUES ('60', '祁门路（翡翠大道站）', '117.222', '31.815');
INSERT INTO `STATION` VALUES ('61', '祁门路（八中站）', '117.214', '31.813');
INSERT INTO `STATION` VALUES ('62', '习友路（柳树塘站）', '117.206', '31.8174');
INSERT INTO `STATION` VALUES ('63', '科学大道（海棠路站）', '117.2', '31.8235');
INSERT INTO `STATION` VALUES ('64', '科学大道（银杏路站）', '117.201', '31.8272');
INSERT INTO `STATION` VALUES ('65', '科学大道（合欢路站）', '117.201', '31.8299');
INSERT INTO `STATION` VALUES ('66', '和平路（曙光影院站）', '117.34', '31.8599');
INSERT INTO `STATION` VALUES ('67', '和平路（合肥市二院站）', '117.326', '31.8607');
INSERT INTO `STATION` VALUES ('68', '全椒路（明光路站） ', '117.318', '31.8596');
INSERT INTO `STATION` VALUES ('69', '屯溪路（裕丰花市站）', '117.316', '31.8574');
INSERT INTO `STATION` VALUES ('70', '屯溪路（姑娘巷站）', '117.312', '31.8544');
INSERT INTO `STATION` VALUES ('71', '芜湖路(大钟楼站)', '117.293', '31.8611');
INSERT INTO `STATION` VALUES ('72', '芜湖路(省建三公司站) ', '117.29', '31.8574');
INSERT INTO `STATION` VALUES ('73', '黄山路(省电力公司站) ', '117.287', '31.8479');
INSERT INTO `STATION` VALUES ('74', '黄山路(省立新安医院站)', '117.28', '31.8475');
INSERT INTO `STATION` VALUES ('75', '黄山路(科大北区站) ', '117.275', '31.8481');
INSERT INTO `STATION` VALUES ('76', '黄山路(稻香村站)', '117.265', '31.8478');
INSERT INTO `STATION` VALUES ('77', '黄山路(科技馆站)', '117.256', '31.8477');
INSERT INTO `STATION` VALUES ('78', '黄山路(电子工程学院站) ', '117.244', '31.8474');
INSERT INTO `STATION` VALUES ('79', '黄山路（天智路站）天湖路修路暂时改动)', '117.216', '31.8464');
INSERT INTO `STATION` VALUES ('80', '海关路（园景天下小区南站）', '117.204', '31.8545');
INSERT INTO `STATION` VALUES ('81', '九华山路（马鞍山路站）', '117.308', '31.8454');
INSERT INTO `STATION` VALUES ('82', '太湖路（马鞍山路站）', '117.308', '31.8379');
INSERT INTO `STATION` VALUES ('83', '太湖路（鱼花池站）', '117.303', '31.8378');
INSERT INTO `STATION` VALUES ('84', '太湖路（太宁花园站）', '117.3', '31.8376');
INSERT INTO `STATION` VALUES ('85', '太湖路（太湖新村站）', '117.274', '31.8385');
INSERT INTO `STATION` VALUES ('86', '徽州大道（卫岗站）', '117.293', '31.8349');
INSERT INTO `STATION` VALUES ('87', '徽州大道（卫塘站）', '117.291', '31.8267');
INSERT INTO `STATION` VALUES ('88', '水阳江路(吴夹弄站)', '117.285', '31.827');
INSERT INTO `STATION` VALUES ('89', '太湖路（金寨路站）', '117.272', '31.8398');
INSERT INTO `STATION` VALUES ('90', '太湖路（藏洼站）', '117.267', '31.8403');
INSERT INTO `STATION` VALUES ('91', '合作化南路（安高站）', '117.258', '31.8341');
INSERT INTO `STATION` VALUES ('92', '东流路(石台路站)', '117.245', '31.8233');
INSERT INTO `STATION` VALUES ('93', '东流路（翡翠大道站）', '117.222', '31.8256');
INSERT INTO `STATION` VALUES ('94', '望江西路（和一花园站)', '117.219', '31.8353');
INSERT INTO `STATION` VALUES ('95', '西藏路（师范附小站）', '117.288', '31.7373');
INSERT INTO `STATION` VALUES ('96', '西藏路（46中站）', '117.286', '31.7217');
INSERT INTO `STATION` VALUES ('97', '紫云路（广西路站） ', '117.298', '31.7467');
INSERT INTO `STATION` VALUES ('98', '庐州大道（福州路口站）', '117.298', '31.7496');
INSERT INTO `STATION` VALUES ('99', '习友路（慈习路口站）', '117.276', '31.7696');
INSERT INTO `STATION` VALUES ('100', '石门路（葛小郢站）', '117.266', '31.7808');
INSERT INTO `STATION` VALUES ('101', '耕耘路（乡村花园小区南门站）', '117.259', '31.7662');
INSERT INTO `STATION` VALUES ('102', '紫云路（南郡明珠站）', '117.25', '31.7472');
INSERT INTO `STATION` VALUES ('103', '紫云路（桃源路口站）', '117.216', '31.7506');
INSERT INTO `STATION` VALUES ('104', '紫云路（金寨路口站）', '117.207', '31.7589');
INSERT INTO `STATION` VALUES ('105', '翡翠大道（紫云路站）', '117.199', '31.7652');
INSERT INTO `STATION` VALUES ('106', '翡翠大道（工大新区站）', '117.212', '31.7719');
INSERT INTO `STATION` VALUES ('107', '翡翠大道(群英站) ', '117.216', '31.7765');
INSERT INTO `STATION` VALUES ('108', '翡翠大道(繁华大道站)', '117.216', '31.7883');
INSERT INTO `STATION` VALUES ('109', '翡翠大道（芙蓉西路站）', '117.216', '31.7949');
INSERT INTO `STATION` VALUES ('110', '芙蓉西路（石鼓路口站）', '117.212', '31.7909');
INSERT INTO `STATION` VALUES ('111', '繁华大道（松林路站）', '117.206', '31.7881');
INSERT INTO `STATION` VALUES ('112', '繁华大道（电力设计院站）', '117.202', '31.7881');
INSERT INTO `STATION` VALUES ('113', '繁华大道(一里洋房站）', '117.196', '31.7894');
INSERT INTO `STATION` VALUES ('114', '杭埠路（格力公司站）', '117.178', '31.809');
INSERT INTO `STATION` VALUES ('115', '公司', '117.144', '31.837');
