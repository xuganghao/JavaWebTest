/*
 Navicat MySQL Data Transfer

 Source Server         : 1111
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : user

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 21/12/2018 19:18:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for workex
-- ----------------------------
DROP TABLE IF EXISTS `workex`;
CREATE TABLE `workex`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fitime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tech` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of workex
-- ----------------------------
INSERT INTO `workex` VALUES (1, '123', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (2, 'null', '阿里巴巴', '安卓开发', '2018-12-05', '2018-12-07', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (3, 'null', '阿里巴巴', '安卓开发', '2018-12-04', '2018-12-29', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (4, '123', '阿里巴巴', '安卓开发', '2018-12-05', '2018-12-29', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (5, '123', '阿里巴巴', '安卓开发', '2018-12-20', '2018-12-30', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (6, '111', '阿里巴巴', '安卓开发', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (7, '111', '阿里巴巴', '安卓开发', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (8, '111', '阿里巴巴', '安卓开发', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (9, '111', '阿里巴巴', '安卓开发', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (10, '999', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (11, '888', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (12, '18136655844', '百度', '安卓开发', '2018-12-05', '2018-12-30', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (13, '0987654321@qq.com', '阿里巴巴', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (14, '13453480558', '邮电大学', '教授', '2018-12-11', '2018-12-14', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (15, '18851999675', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (16, '18852009629', 'null', '安卓开发', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (17, '1542556705@qq.com', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (18, '18765431234', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (19, '3187252587@qq.com', '邮电大学', '教授', '2018-12-06', '2018-12-10', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (20, '13695566995', '阿里巴巴', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (21, '18852009359', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (22, '18852009626', '邮电大学', 'null', 'null', '2017-12-01', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (23, '13453480557', '邮电大学', '教授', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (24, '13584644576', '南京搬豆', 'java工程师', '2001-02-24', '2011-07-26', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (25, '18856218907', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (26, '17805129299', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (27, '17805138931', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (28, '18852009601', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (29, '1575989788@qq.com', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (30, '572052037@qq.com', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (31, '18852009629', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `workex` VALUES (32, '15956461176', '南工院', '教授', '2018-01-31', '2018-12-30', 'null', 'null', 'null');

SET FOREIGN_KEY_CHECKS = 1;
