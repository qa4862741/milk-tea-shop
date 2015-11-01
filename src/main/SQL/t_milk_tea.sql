/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50173
Source Host           : localhost:3307
Source Database       : milk_tea_shop

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-11-01 13:32:31
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
  `unitId` int(11) DEFAULT NULL,
  `classification` varchar(60) DEFAULT NULL,
  `classificationId` int(11) DEFAULT NULL,
  `taste` varchar(60) DEFAULT NULL,
  `tasteId` int(11) DEFAULT NULL,
  `salePrice` decimal(12,2) DEFAULT NULL,
  `costPrice` decimal(12,2) DEFAULT NULL,
  `points` decimal(12,2) DEFAULT '0.00',
  `imagePath` varchar(200) DEFAULT NULL,
  `scaledImagePath` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_milk_tea
-- ----------------------------
INSERT INTO `t_milk_tea` VALUES ('4', '石榴', 'MC1548890', '碗', '1', 'B奶茶系列', '3', '柠檬', '1', '16.00', '10.00', '20.00', 'http://localhost:8080/yezic/resources/fileUpload/Desert.jpg', 'http://localhost:8080/yezic/resources/fileUpload/scale_Desert.jpg');
INSERT INTO `t_milk_tea` VALUES ('5', '水蜜桃优格', 'NC34577568', '大杯', '1', 'B奶茶系列', '3', '柠檬', '1', '18.50', '12.00', '20.00', 'http://localhost:8080/yezic/resources/fileUpload/Hydrangeas.jpg', 'http://localhost:8080/yezic/resources/fileUpload/scale_Hydrangeas.jpg');
INSERT INTO `t_milk_tea` VALUES ('6', '珍珠奶茶', '32435', '大杯', '1', '其他', '2', '柠檬', '1', '12.00', '12.00', '12.00', 'http://localhost:8080/yezic/resources/fileUpload/Lighthouse.jpg', 'http://localhost:8080/yezic/resources/fileUpload/scale_Lighthouse.jpg');
INSERT INTO `t_milk_tea` VALUES ('7', '哈密瓜奶茶', 'NC1245885', '大杯', '1', 'B奶茶系列', '3', '柠檬', '1', '15.00', '12.00', '20.00', 'http://localhost:8080/yezic/resources/fileUpload/Penguins.jpg', 'http://localhost:8080/yezic/resources/fileUpload/scale_Penguins.jpg');
INSERT INTO `t_milk_tea` VALUES ('8', '榴莲奶茶', 'NC458799234', '大杯', '1', '其他', '2', '柠檬', '1', '12.00', '10.00', '20.00', 'http://localhost:8080/yezic/resources/fileUpload/Jellyfish.jpg', 'http://localhost:8080/yezic/resources/fileUpload/scale_Jellyfish.jpg');
INSERT INTO `t_milk_tea` VALUES ('9', '香芋奶茶', 'NC201509123', '大杯', '1', 'B奶茶系列', '3', '柠檬', '1', '14.00', '10.00', '10.00', 'http://localhost:8080/yezic/resources/fileUpload/Tulips.jpg', 'http://localhost:8080/yezic/resources/fileUpload/scale_Tulips.jpg');
