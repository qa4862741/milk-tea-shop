/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50173
Source Host           : localhost:3307
Source Database       : milk_tea_shop

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-10-29 20:57:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_user_resources`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_resources`;
CREATE TABLE `t_user_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_resources
-- ----------------------------
INSERT INTO `t_user_resources` VALUES ('1', '1', '3');
INSERT INTO `t_user_resources` VALUES ('2', '2', '3');
INSERT INTO `t_user_resources` VALUES ('3', '3', '3');
INSERT INTO `t_user_resources` VALUES ('4', '4', '3');
INSERT INTO `t_user_resources` VALUES ('5', '5', '3');
INSERT INTO `t_user_resources` VALUES ('6', '6', '3');
