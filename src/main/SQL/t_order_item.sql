/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50173
Source Host           : localhost:3307
Source Database       : milk_tea_shop

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-11-01 13:33:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_order_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item`;
CREATE TABLE `t_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `goodsId` int(11) DEFAULT NULL,
  `goodsName` varchar(30) DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `unitPrice` decimal(10,0) DEFAULT NULL,
  `salePrice` decimal(10,0) DEFAULT NULL,
  `isPresent` bit(1) DEFAULT NULL,
  `imagePath` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order_item
-- ----------------------------
INSERT INTO `t_order_item` VALUES ('1', '0', '0', '水蜜桃优格', '大杯', '1', '19', null, '', 'http://localhost:8080/yezic/resources/fileUpload/Desert1.jpg');
INSERT INTO `t_order_item` VALUES ('2', '0', '0', '珍珠奶茶', '大杯', '1', '12', null, '', 'http://localhost:8080/yezic/resources/fileUpload/Desert1.jpg');
INSERT INTO `t_order_item` VALUES ('3', '0', '0', '石榴', '碗', '1', '16', null, '', 'http://localhost:8080/yezic/resources/fileUpload/Desert1.jpg');
INSERT INTO `t_order_item` VALUES ('4', '0', '0', '水蜜桃优格', '大杯', '1', '19', null, '', 'http://localhost:8080/yezic/resources/fileUpload/Desert1.jpg');
INSERT INTO `t_order_item` VALUES ('5', '2', '0', '水蜜桃优格', '大杯', '1', '19', null, '', 'http://localhost:8080/yezic/resources/fileUpload/Desert1.jpg');
INSERT INTO `t_order_item` VALUES ('6', '2', '0', '珍珠奶茶', '大杯', '1', '12', null, '', 'http://localhost:8080/yezic/resources/fileUpload/Desert1.jpg');
