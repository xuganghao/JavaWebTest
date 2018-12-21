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

 Date: 21/12/2018 19:17:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for eduex
-- ----------------------------
DROP TABLE IF EXISTS `eduex`;
CREATE TABLE `eduex`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `study` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fitime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tech` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eduex
-- ----------------------------
INSERT INTO `eduex` VALUES (9, '18856210560', '南工院', '移动开发', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (10, '123456', '南工院', '移动开发', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (11, '1', '南工院', '移动开发', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (12, '123', '南工院', '移动开发', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (13, '111', '周勇', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (14, '999', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (15, '888', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (16, '18136655844', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (17, '0987654321@qq.com', '南工院', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (18, '13453480558', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (19, '18851999675', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (20, '18852009629', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (21, '1542556705@qq.com', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (22, '18765431234', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (23, '3187252587@qq.com', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (24, '13695566995', 'null', '移动开发', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (25, '18852009359', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (26, '18852009626', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (27, '13453480557', 'null', 'Java工程师', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (28, '13584644576', '南京工业职业技术学院', '移动应用开发', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (29, '18856218907', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (30, '17805129299', '南工院', '移动开发', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (31, '17805138931', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (32, '18852009601', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (33, '1575989788@qq.com', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (34, '572052037@qq.com', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (35, '18852009629', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `eduex` VALUES (36, '15956461176', 'null', 'null', 'null', 'null', 'null', 'null', 'null');

SET FOREIGN_KEY_CHECKS = 1;
