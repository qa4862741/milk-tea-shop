/*
Navicat MySQL Data Transfer

Source Server         : Zero
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : milk_tea_shop

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2015-11-25 23:57:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_inorder`
-- ----------------------------
DROP TABLE IF EXISTS `t_inorder`;
CREATE TABLE `t_inorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderDate` date DEFAULT NULL,
  `orderNum` decimal(10,0) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `shipment` decimal(10,0) DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `inNum` decimal(10,0) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `materialId` int(11) DEFAULT NULL,
  `materialName` varchar(255) DEFAULT NULL,
  `orderNumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_inorder
-- ----------------------------
