/*
Navicat MySQL Data Transfer

Source Server         : Zero
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : milk_tea_shop

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2015-11-18 22:36:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_materiel`
-- ----------------------------
DROP TABLE IF EXISTS `t_materiel`;
CREATE TABLE `t_materiel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_materiel
-- ----------------------------
