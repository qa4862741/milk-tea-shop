/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50173
Source Host           : localhost:3307
Source Database       : milk_tea_shop

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-11-01 13:33:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderNumber` varchar(60) DEFAULT NULL,
  `customer` varchar(60) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `vipId` int(11) DEFAULT NULL,
  `vipName` varchar(60) DEFAULT NULL,
  `salesMan` varchar(60) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `employeeId` int(11) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `storeName` varchar(60) DEFAULT NULL,
  `storeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1', 'NC34576876', '0', null, '0', null, '王亚平', '4', '0', '40', '2015-10-31 14:25:55', '宝华门店', null);
INSERT INTO `t_order` VALUES ('2', 'NC201510310005', null, '0', '0', null, '王亚平', '2', '0', '36', '2015-10-31 14:45:43', '宝华门店', '0');
