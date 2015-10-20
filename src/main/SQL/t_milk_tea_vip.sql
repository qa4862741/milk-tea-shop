/*
Navicat MySQL Data Transfer

Source Server         : Zero
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : milk_tea_shop

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2015-10-20 21:44:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_milk_tea_vip`
-- ----------------------------
DROP TABLE IF EXISTS `t_milk_tea_vip`;
CREATE TABLE `t_milk_tea_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varbinary(255) DEFAULT NULL,
  `tel` varbinary(13) DEFAULT NULL,
  `discount` decimal(10,0) DEFAULT NULL COMMENT '折扣',
  `integral` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_milk_tea_vip
-- ----------------------------
INSERT INTO `t_milk_tea_vip` VALUES ('1', 0x646173, 0x3131, '1', '1');
