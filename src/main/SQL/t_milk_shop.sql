/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50173
Source Host           : localhost:3307
Source Database       : milk_tea_shop

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-11-24 21:57:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_material_addition`
-- ----------------------------
DROP TABLE IF EXISTS `t_material_addition`;
CREATE TABLE `t_material_addition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_material_addition
-- ----------------------------
INSERT INTO `t_material_addition` VALUES ('1', '珍珠');
INSERT INTO `t_material_addition` VALUES ('2', '冰块');

-- ----------------------------
-- Table structure for `t_materiel`
-- ----------------------------
DROP TABLE IF EXISTS `t_materiel`;
CREATE TABLE `t_materiel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_materiel
-- ----------------------------
INSERT INTO `t_materiel` VALUES ('1', '珍珠果', '碗');

-- ----------------------------
-- Table structure for `t_milk_stores`
-- ----------------------------
DROP TABLE IF EXISTS `t_milk_stores`;
CREATE TABLE `t_milk_stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_milk_stores
-- ----------------------------
INSERT INTO `t_milk_stores` VALUES ('1', '宝华门店', '18677890986', '宝华');
INSERT INTO `t_milk_stores` VALUES ('2', '梅林关门店', '13987678968', '梅林关');

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

-- ----------------------------
-- Table structure for `t_milk_tea_classification`
-- ----------------------------
DROP TABLE IF EXISTS `t_milk_tea_classification`;
CREATE TABLE `t_milk_tea_classification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_milk_tea_classification
-- ----------------------------
INSERT INTO `t_milk_tea_classification` VALUES ('2', '其他');
INSERT INTO `t_milk_tea_classification` VALUES ('3', 'B奶茶系列');
INSERT INTO `t_milk_tea_classification` VALUES ('4', 'C套餐');
INSERT INTO `t_milk_tea_classification` VALUES ('7', 'E奶茶');

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
INSERT INTO `t_milk_tea_employee` VALUES ('1', '小梅', '18823678978', '9527', '宝华门店', '员工', '1');

-- ----------------------------
-- Table structure for `t_milk_tea_taste`
-- ----------------------------
DROP TABLE IF EXISTS `t_milk_tea_taste`;
CREATE TABLE `t_milk_tea_taste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_milk_tea_taste
-- ----------------------------
INSERT INTO `t_milk_tea_taste` VALUES ('1', '柠檬');
INSERT INTO `t_milk_tea_taste` VALUES ('2', '香草');
INSERT INTO `t_milk_tea_taste` VALUES ('3', '咖啡');

-- ----------------------------
-- Table structure for `t_milk_tea_unit`
-- ----------------------------
DROP TABLE IF EXISTS `t_milk_tea_unit`;
CREATE TABLE `t_milk_tea_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_milk_tea_unit
-- ----------------------------
INSERT INTO `t_milk_tea_unit` VALUES ('1', '大杯');
INSERT INTO `t_milk_tea_unit` VALUES ('2', '中杯');
INSERT INTO `t_milk_tea_unit` VALUES ('3', '小杯');
INSERT INTO `t_milk_tea_unit` VALUES ('4', '小五');

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
  `recharge` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_milk_tea_vip
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1', 'NC34576876', '0', null, '0', null, '王亚平', '4', '0', '40', '2015-10-31 14:25:55', '宝华门店', null);
INSERT INTO `t_order` VALUES ('2', 'NC201510310005', null, '0', '0', null, '王亚平', '2', '0', '36', '2015-10-31 14:45:43', '宝华门店', '0');
INSERT INTO `t_order` VALUES ('3', 'NC201510310005', null, '0', '0', null, '王亚平', '3', '0', '47', '2015-11-01 13:37:07', '宝华门店', '0');
INSERT INTO `t_order` VALUES ('4', 'NC201510310005', null, '0', '0', null, '1', '1', '0', '32', '2015-11-01 14:12:53', '宝华门店', '0');
INSERT INTO `t_order` VALUES ('5', 'NC201510310005', null, '0', '0', null, '小梅', '2', '0', '72', '2015-11-12 00:04:23', '宝华门店', '0');
INSERT INTO `t_order` VALUES ('6', 'NC201510310005', null, '0', '0', null, '小梅', '4', '0', '62', '2015-11-14 09:27:03', '宝华门店', '0');
INSERT INTO `t_order` VALUES ('7', 'NC201510310005', null, '0', '0', null, '小梅', '2', '0', '35', '2015-11-17 00:11:08', '宝华门店', '0');
INSERT INTO `t_order` VALUES ('8', 'NC201510310005', null, '0', '0', null, '小梅', '2', '0', '35', '2015-11-17 00:13:40', '宝华门店', '0');

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
  `taste` varchar(20) DEFAULT NULL,
  `addtion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order_item
-- ----------------------------
INSERT INTO `t_order_item` VALUES ('1', '1', '0', '水蜜桃优格', '大杯', '1', '19', null, '', 'http://localhost:8080/yezic/resources/fileUpload/Desert1.jpg', '柠檬', null);
INSERT INTO `t_order_item` VALUES ('2', '1', '0', '珍珠奶茶', '大杯', '1', '12', null, '', 'http://localhost:8080/yezic/resources/fileUpload/Desert1.jpg', '柠檬', null);
INSERT INTO `t_order_item` VALUES ('3', '1', '0', '石榴', '碗', '1', '16', null, '', 'http://localhost:8080/yezic/resources/fileUpload/Desert1.jpg', '柠檬', null);
INSERT INTO `t_order_item` VALUES ('4', '1', '0', '水蜜桃优格', '大杯', '1', '19', null, '', 'http://localhost:8080/yezic/resources/fileUpload/Desert1.jpg', '柠檬', null);
INSERT INTO `t_order_item` VALUES ('5', '2', '0', '水蜜桃优格', '大杯', '1', '19', null, '', 'http://localhost:8080/yezic/resources/fileUpload/Desert1.jpg', '柠檬', null);
INSERT INTO `t_order_item` VALUES ('6', '2', '0', '珍珠奶茶', '大杯', '1', '12', null, '', 'http://localhost:8080/yezic/resources/fileUpload/Desert1.jpg', '柠檬', null);
INSERT INTO `t_order_item` VALUES ('7', '3', '0', '石榴', '碗', '1', '16', null, '', 'http://localhost:8080/yezic/resources/fileUpload/scale_Desert.jpg', '柠檬', null);
INSERT INTO `t_order_item` VALUES ('8', '3', '0', '水蜜桃优格', '大杯', '1', '19', null, '', 'http://localhost:8080/yezic/resources/fileUpload/scale_Hydrangeas.jpg', '柠檬', null);
INSERT INTO `t_order_item` VALUES ('9', '3', '0', '珍珠奶茶', '大杯', '1', '12', null, '', 'http://localhost:8080/yezic/resources/fileUpload/scale_Lighthouse.jpg', '柠檬', null);
INSERT INTO `t_order_item` VALUES ('10', '4', '0', '石榴', '碗', '2', '16', null, '', 'http://localhost:8080/yezic/resources/fileUpload/scale_Desert.jpg', '柠檬', null);
INSERT INTO `t_order_item` VALUES ('11', '5', '0', '石榴', '碗', '1', '16', null, '', 'http://localhost:8080/yezic/resources/fileUpload/scale_Desert.jpg', '柠檬', null);
INSERT INTO `t_order_item` VALUES ('12', '5', '0', '水蜜桃优格', '大杯', '3', '19', null, '', 'http://localhost:8080/yezic/resources/fileUpload/scale_Hydrangeas.jpg', '柠檬', null);
INSERT INTO `t_order_item` VALUES ('13', '6', '0', '石榴', '碗', '1', '16', null, '', 'http://localhost:8080/yezic/resources/fileUpload/scale_Desert.jpg', '柠檬', null);
INSERT INTO `t_order_item` VALUES ('14', '6', '0', '水蜜桃优格', '大杯', '1', '19', null, '', 'http://localhost:8080/yezic/resources/fileUpload/scale_Hydrangeas.jpg', '柠檬', null);
INSERT INTO `t_order_item` VALUES ('15', '6', '0', '珍珠奶茶', '大杯', '1', '12', null, '', 'http://localhost:8080/yezic/resources/fileUpload/scale_Lighthouse.jpg', '柠檬', null);
INSERT INTO `t_order_item` VALUES ('16', '6', '0', '哈密瓜奶茶', '大杯', '1', '15', null, '', 'http://localhost:8080/yezic/resources/fileUpload/scale_Penguins.jpg', '柠檬', null);
INSERT INTO `t_order_item` VALUES ('17', '8', '0', '石榴', '1', '1', '16', null, '', 'http://localhost:8080/yezic/resources/fileUpload/scale_Desert.jpg', '柠檬', '1');
INSERT INTO `t_order_item` VALUES ('18', '8', '0', '水蜜桃优格', '1', '1', '19', null, '', 'http://localhost:8080/yezic/resources/fileUpload/scale_Hydrangeas.jpg', '柠檬', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_resources
-- ----------------------------
INSERT INTO `t_resources` VALUES ('1', '奶茶管理', '7', 'milk', '1', '/milk/*', '1', 'fa-desktop', '0', '奶茶管理');
INSERT INTO `t_resources` VALUES ('2', '奶茶分类管理', '7', 'milkclassification', '1', '/milkclassification/*', '2', 'fa-list', '0', '奶茶分类管理');
INSERT INTO `t_resources` VALUES ('3', '奶茶口味管理', '7', 'milktaste', '1', '/milktaste/*', '7', 'fa-list', '0', '奶茶口味管理');
INSERT INTO `t_resources` VALUES ('4', '奶茶单位管理', '7', 'milkunit', '1', '/milkunit/*', '12', 'fa-list-alt', '0', '奶茶单位管理');
INSERT INTO `t_resources` VALUES ('5', '销售管理', '0', 'salesManager', '0', 'sales', '3', 'fa-list', '0', '销售管理');
INSERT INTO `t_resources` VALUES ('6', '会员管理', '0', 'vipManager', '0', 'vip', '4', 'fa-list', '0', '修改用户');
INSERT INTO `t_resources` VALUES ('7', '基础资料管理', '0', 'basicDataManager', '0', 'basicData', null, null, '0', null);
INSERT INTO `t_resources` VALUES ('8', '销售列表管理', '5', 'salesList', '1', '/sales/list/*', null, null, '0', null);
INSERT INTO `t_resources` VALUES ('9', '收银管理', '5', 'cashier', '1', '/sales/cashier/*', null, null, '0', null);
INSERT INTO `t_resources` VALUES ('10', '会员列表管理', '6', 'vipList', '1', '/vip/list', '4', null, '0', null);
INSERT INTO `t_resources` VALUES ('11', '会员充值管理', '6', 'vipCharge', '1', '/vip/charge', null, null, '0', null);
INSERT INTO `t_resources` VALUES ('12', '用户权限管理', '0', 'userRoleOperationManager', '0', 'userRoleOperation', '1', null, '0', '用户权限管理');
INSERT INTO `t_resources` VALUES ('13', '用户管理', '12', 'userManager', '1', '/user/list', '2', null, '0', '用户管理');
INSERT INTO `t_resources` VALUES ('14', '角色管理', '12', 'roleManager', '1', '/role/list', '2', null, '0', null);
INSERT INTO `t_resources` VALUES ('15', '资源管理', '12', 'resourcesManager', '1', '/resources/treeList', '2', null, '0', '资源管理');

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `state` varchar(3) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `roleKey` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('6', '0', '店长', 'store_manager', '分店的店长');
INSERT INTO `t_role` VALUES ('7', '0', '副店长', 'deputy_manager', '负责帮助店长处理日常事务');
INSERT INTO `t_role` VALUES ('8', '0', '总店长', 'super_store_manager', '总店的店长');
INSERT INTO `t_role` VALUES ('9', null, '营业员', 'shop_assistant', '负责日常营业');
INSERT INTO `t_role` VALUES ('10', null, '超级管理员', 'super_admin', '管理系统的初始化以及运行升级等问题');

-- ----------------------------
-- Table structure for `t_role_resources`
-- ----------------------------
DROP TABLE IF EXISTS `t_role_resources`;
CREATE TABLE `t_role_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) DEFAULT NULL,
  `resId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_resources
-- ----------------------------
INSERT INTO `t_role_resources` VALUES ('1', '10', '8');
INSERT INTO `t_role_resources` VALUES ('2', '10', '9');
INSERT INTO `t_role_resources` VALUES ('3', '10', '10');
INSERT INTO `t_role_resources` VALUES ('4', '10', '11');
INSERT INTO `t_role_resources` VALUES ('5', '10', '1');
INSERT INTO `t_role_resources` VALUES ('6', '10', '2');
INSERT INTO `t_role_resources` VALUES ('7', '10', '3');
INSERT INTO `t_role_resources` VALUES ('8', '10', '4');
INSERT INTO `t_role_resources` VALUES ('9', '10', '13');
INSERT INTO `t_role_resources` VALUES ('10', '10', '14');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `accountName` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `credentialsSalt` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `locked` varchar(3) DEFAULT '0',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletestatus` int(1) DEFAULT '0' COMMENT '逻辑删除状态0:存在1:删除',
  `employId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '蓝缘', 'simple', '78e21a6eb88529eab722793a448ed394', '4157c3feef4a6ed91b2c28cf4392f2d1', '普通店员用户', '1', '2015-11-15 09:42:35', '0', '1');
INSERT INTO `t_user` VALUES ('2', '超级管理员', 'root', 'dbbda745194ffcee431f0de8b410f2ae', 'd3bdfc9856cae45aad3e3d6f645b6e6f', '超级管理员用户，具有一切权限', '1', '2015-11-15 10:46:18', '0', '1');
INSERT INTO `t_user` VALUES ('3', '思思', 'admin', '78e21a6eb88529eab722793a448ed394', '4157c3feef4a6ed91b2c28cf4392f2d1', '店长用户，处理店内运营', '1', '2015-11-15 09:46:11', '0', '1');
INSERT INTO `t_user` VALUES ('4', '陈志', 'qq123456', '3cd3f775d1e8638f03e7df1440d8fe6d', '8453ee968757b431a5d44df9d2232be4', '副店长账户', '1', null, null, '0');

-- ----------------------------
-- Table structure for `t_user_resources`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_resources`;
CREATE TABLE `t_user_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_resources
-- ----------------------------
INSERT INTO `t_user_resources` VALUES ('1', '1', '3');
INSERT INTO `t_user_resources` VALUES ('2', '2', '3');
INSERT INTO `t_user_resources` VALUES ('3', '3', '3');
INSERT INTO `t_user_resources` VALUES ('4', '4', '3');
INSERT INTO `t_user_resources` VALUES ('5', '5', '3');
INSERT INTO `t_user_resources` VALUES ('6', '6', '3');
INSERT INTO `t_user_resources` VALUES ('7', '7', '3');
INSERT INTO `t_user_resources` VALUES ('8', '8', '3');
INSERT INTO `t_user_resources` VALUES ('9', '9', '3');
INSERT INTO `t_user_resources` VALUES ('10', '10', '3');
INSERT INTO `t_user_resources` VALUES ('11', '1', '2');
INSERT INTO `t_user_resources` VALUES ('12', '2', '2');
INSERT INTO `t_user_resources` VALUES ('13', '3', '2');
INSERT INTO `t_user_resources` VALUES ('14', '4', '2');
INSERT INTO `t_user_resources` VALUES ('15', '5', '2');
INSERT INTO `t_user_resources` VALUES ('16', '6', '2');
INSERT INTO `t_user_resources` VALUES ('17', '7', '2');
INSERT INTO `t_user_resources` VALUES ('18', '8', '2');
INSERT INTO `t_user_resources` VALUES ('19', '8', '2');
INSERT INTO `t_user_resources` VALUES ('20', '10', '2');
INSERT INTO `t_user_resources` VALUES ('30', '11', '2');
INSERT INTO `t_user_resources` VALUES ('31', '12', '2');
INSERT INTO `t_user_resources` VALUES ('32', '13', '2');
INSERT INTO `t_user_resources` VALUES ('33', '14', '2');
INSERT INTO `t_user_resources` VALUES ('34', '15', '2');
INSERT INTO `t_user_resources` VALUES ('35', '11', '3');
INSERT INTO `t_user_resources` VALUES ('36', '12', '3');
INSERT INTO `t_user_resources` VALUES ('37', '13', '3');
INSERT INTO `t_user_resources` VALUES ('38', '14', '3');

-- ----------------------------
-- Table structure for `t_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1', '2');
INSERT INTO `t_user_role` VALUES ('2', '2', '3');
INSERT INTO `t_user_role` VALUES ('3', '3', '1');
INSERT INTO `t_user_role` VALUES ('4', '4', '7');
INSERT INTO `t_user_role` VALUES ('5', '4', '9');
