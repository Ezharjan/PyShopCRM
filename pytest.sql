/*
Navicat MySQL Data Transfer

Source Server         : Alexander
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : pytest

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-08-03 17:47:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `content` varchar(255) DEFAULT NULL,
  `member` varchar(255) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `sum` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES ('initialGoods*10', '1', '2020-08-03 00:00:00', '1000');
INSERT INTO `history` VALUES ('initialGoods*1\\0', '1', '2020-08-03 00:00:00', '100');
INSERT INTO `history` VALUES ('initialGoods*10', '0', '2020-08-03 00:00:00', '1000');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT '',
  `phone` varchar(255) DEFAULT '',
  `credit` varchar(255) DEFAULT '',
  `balance` varchar(255) DEFAULT '',
  `shop` varchar(255) DEFAULT '',
  `feature` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('0', 'ezharjan', '18801110111', '0', '122', '1', '0');
INSERT INTO `member` VALUES ('1', 'alex', '18801000100', '1', '211', '1', '1');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `shop` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('initialGoods', '100', '1', '1');
INSERT INTO `product` VALUES ('secondGoods', '200', '1', '0');

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `name` varchar(255) DEFAULT '',
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('testerShop', '1', 'alex', '123');
