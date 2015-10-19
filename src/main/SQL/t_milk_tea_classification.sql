/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50173
Source Host           : localhost:3307
Source Database       : milk_tea_shop

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-10-13 22:48:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_milk_tea_classification`
-- ----------------------------
DROP TABLE IF EXISTS `t_milk_tea_classification`;
CREATE TABLE `t_milk_tea_classification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_milk_tea_classification
-- ----------------------------
INSERT INTO `t_milk_tea_classification` VALUES ('2', '其他');
INSERT INTO `t_milk_tea_classification` VALUES ('3', 'B奶茶系列');
INSERT INTO `t_milk_tea_classification` VALUES ('4', 'C套餐');
INSERT INTO `t_milk_tea_classification` VALUES ('7', 'E奶茶');
