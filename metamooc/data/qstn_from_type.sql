/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50542
Source Host           : localhost:3306
Source Database       : metamooc

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2019-05-25 22:03:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qstn_from_type
-- ----------------------------
DROP TABLE IF EXISTS `qstn_from_type`;
CREATE TABLE `qstn_from_type` (
  `QSTN_FROM_TYPE_ID` varchar(50) NOT NULL,
  `QSTN_FROM_TYPE_CODE` varchar(50) DEFAULT NULL,
  `QSTN_FROM_TYPE_INFO` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`QSTN_FROM_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qstn_from_type
-- ----------------------------
INSERT INTO `qstn_from_type` VALUES ('1', '自定义', '说明: 自定义');
INSERT INTO `qstn_from_type` VALUES ('2', '面试整理', '说明: 面试整理');
INSERT INTO `qstn_from_type` VALUES ('3', '企业套题', '说明: 企业套题');
INSERT INTO `qstn_from_type` VALUES ('4', '网络收集', '说明: 网络收集');
