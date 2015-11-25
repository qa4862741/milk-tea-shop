/*
Navicat MySQL Data Transfer

Source Server         : Zero
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : milk_tea_shop

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2015-11-25 21:28:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_out_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_out_order`;
CREATE TABLE `t_out_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderDate` date DEFAULT NULL,
  `orderNum` decimal(10,0) DEFAULT NULL,
  `materialId` int(11) DEFAULT NULL,
  `materialName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_out_order
-- ----------------------------
