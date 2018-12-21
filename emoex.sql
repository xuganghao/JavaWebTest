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

 Date: 21/12/2018 19:17:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for emoex
-- ----------------------------
DROP TABLE IF EXISTS `emoex`;
CREATE TABLE `emoex`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marry` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emoex
-- ----------------------------
INSERT INTO `emoex` VALUES (10, '18856210560', 'null', 'null');
INSERT INTO `emoex` VALUES (11, '123456', 'null', 'null');
INSERT INTO `emoex` VALUES (12, '1', 'null', 'null');
INSERT INTO `emoex` VALUES (13, '123', '未婚', '好的');
INSERT INTO `emoex` VALUES (14, '111', 'null', 'null');
INSERT INTO `emoex` VALUES (15, '999', 'null', 'null');
INSERT INTO `emoex` VALUES (16, '888', '已婚', 'null');
INSERT INTO `emoex` VALUES (17, '18136655844', '已婚', 'null');
INSERT INTO `emoex` VALUES (18, '0987654321@qq.com', '离异', 'null');
INSERT INTO `emoex` VALUES (19, '13453480558', '已婚', 'null');
INSERT INTO `emoex` VALUES (20, '18851999675', 'null', 'null');
INSERT INTO `emoex` VALUES (21, '18852009629', 'null', 'null');
INSERT INTO `emoex` VALUES (22, '1542556705@qq.com', 'null', 'null');
INSERT INTO `emoex` VALUES (23, '18765431234', 'null', 'null');
INSERT INTO `emoex` VALUES (24, '3187252587@qq.com', '已婚', '我有两个孩子');
INSERT INTO `emoex` VALUES (25, '13695566995', '离异', 'null');
INSERT INTO `emoex` VALUES (26, '18852009359', 'null', 'null');
INSERT INTO `emoex` VALUES (27, '18852009626', 'null', 'null');
INSERT INTO `emoex` VALUES (28, '13453480557', '已婚', 'null');
INSERT INTO `emoex` VALUES (29, '13584644576', '未婚', '无');
INSERT INTO `emoex` VALUES (30, '18856218907', 'null', 'null');
INSERT INTO `emoex` VALUES (31, '17805129299', 'null', 'null');
INSERT INTO `emoex` VALUES (32, '17805138931', 'null', 'null');
INSERT INTO `emoex` VALUES (33, '18852009601', 'null', 'null');
INSERT INTO `emoex` VALUES (34, '1575989788@qq.com', 'null', 'null');
INSERT INTO `emoex` VALUES (35, '572052037@qq.com', 'null', 'null');
INSERT INTO `emoex` VALUES (36, '18852009629', 'null', 'null');
INSERT INTO `emoex` VALUES (37, '15956461176', 'null', 'null');

SET FOREIGN_KEY_CHECKS = 1;
