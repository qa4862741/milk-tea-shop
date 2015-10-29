/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50173
Source Host           : localhost:3307
Source Database       : milk_tea_shop

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-10-29 20:56:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_resources`
-- ----------------------------
DROP TABLE IF EXISTS `t_resources`;
CREATE TABLE `t_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `resKey` varchar(50) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `resUrl` varchar(200) DEFAULT NULL,
  `level` int(4) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `ishide` int(3) DEFAULT '0',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_resources
-- ----------------------------
INSERT INTO `t_resources` VALUES ('1', '奶茶管理', '0', 'milk', '0', '/milk/*', '1', 'fa-desktop', '0', '奶茶管理');
INSERT INTO `t_resources` VALUES ('2', '奶茶分类管理', '1', 'milkclassification', '1', '/milkclassification/*', '2', 'fa-list', '0', '奶茶分类管理');
INSERT INTO `t_resources` VALUES ('3', '奶茶口味管理', '1', 'milktaste', '1', '/milktaste/*', '7', 'fa-list', '0', '奶茶口味管理');
INSERT INTO `t_resources` VALUES ('4', '奶茶单位管理', '1', 'milkunit', '1', '/milkunit/*', '12', 'fa-list-alt', '0', '奶茶单位管理');
INSERT INTO `t_resources` VALUES ('5', '销售管理', '2', 'sales', '2', '/sales/*', '3', 'fa-list', '0', '销售管理');
INSERT INTO `t_resources` VALUES ('6', '修改用户', '2', 'vip', '2', '/vip/*', '4', 'fa-list', '0', '修改用户');
