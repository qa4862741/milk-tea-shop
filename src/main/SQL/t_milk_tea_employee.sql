/*
Navicat MySQL Data Transfer

Source Server         : Zero
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : milk_tea_shop

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2015-10-31 14:53:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_milk_tea_employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_milk_tea_employee`;
CREATE TABLE `t_milk_tea_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `jobid` varchar(255) DEFAULT NULL,
  `stores` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `storesId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_milk_tea_employee
-- ----------------------------
INSERT INTO `t_milk_tea_employee` VALUES ('1', '1', '', '', '1#AAA', '', null);
