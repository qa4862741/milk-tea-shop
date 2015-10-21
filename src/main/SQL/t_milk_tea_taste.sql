/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50173
Source Host           : localhost:3307
Source Database       : milk_tea_shop

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-10-21 21:22:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_milk_tea_taste`
-- ----------------------------
DROP TABLE IF EXISTS `t_milk_tea_taste`;
CREATE TABLE `t_milk_tea_taste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_milk_tea_taste
-- ----------------------------
INSERT INTO `t_milk_tea_taste` VALUES ('1', '柠檬');
INSERT INTO `t_milk_tea_taste` VALUES ('2', '香草');
INSERT INTO `t_milk_tea_taste` VALUES ('3', '咖啡');
