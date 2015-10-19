/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50173
Source Host           : localhost:3307
Source Database       : milk_tea_shop

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-10-13 22:48:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_milk_tea`
-- ----------------------------
DROP TABLE IF EXISTS `t_milk_tea`;
CREATE TABLE `t_milk_tea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `productNumber` varchar(60) DEFAULT NULL,
  `unit` varchar(60) DEFAULT NULL,
  `capacity` varchar(60) DEFAULT NULL,
  `salePrice` decimal(12,2) DEFAULT NULL,
  `costPrice` decimal(12,2) DEFAULT NULL,
  `points` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_milk_tea
-- ----------------------------
INSERT INTO `t_milk_tea` VALUES ('4', '石榴', 'MC1548890', '碗', '大碗', '16.00', '10.00', '20.00');
INSERT INTO `t_milk_tea` VALUES ('5', '水蜜桃优格', 'NC34577568', '大杯', '大杯', '18.50', '12.00', '20.00');
