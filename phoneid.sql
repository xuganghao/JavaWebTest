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

 Date: 21/12/2018 19:17:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for phoneid
-- ----------------------------
DROP TABLE IF EXISTS `phoneid`;
CREATE TABLE `phoneid`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phoneid
-- ----------------------------
INSERT INTO `phoneid` VALUES (44, '周勇', '18856210560', '123456');
INSERT INTO `phoneid` VALUES (45, '周勇', '123456', '123456');
INSERT INTO `phoneid` VALUES (46, '周勇', '1', '1');
INSERT INTO `phoneid` VALUES (47, '周勇', '123', '123');
INSERT INTO `phoneid` VALUES (48, '周勇', '111', '111');
INSERT INTO `phoneid` VALUES (49, '一号', '999', '999');
INSERT INTO `phoneid` VALUES (50, '8', '888', '888');
INSERT INTO `phoneid` VALUES (51, 'zhouyong', '18136655844', '123456');
INSERT INTO `phoneid` VALUES (52, 'xuganghao', '13453480558', '970412');
INSERT INTO `phoneid` VALUES (53, 'asdf', '18851999675', '123456');
INSERT INTO `phoneid` VALUES (55, 'huang', '18765431234', '123456');
INSERT INTO `phoneid` VALUES (56, 'zy', '13695566995', '123456');
INSERT INTO `phoneid` VALUES (57, 'jie', '18852009359', '12345678');
INSERT INTO `phoneid` VALUES (58, 'jie', '18852009626', '123456');
INSERT INTO `phoneid` VALUES (59, 'xuganghao', '13453480557', 'xgh970412');
INSERT INTO `phoneid` VALUES (60, 'wsyjg', '13584644576', '123456');
INSERT INTO `phoneid` VALUES (61, 'zy', '18856218907', '123456');
INSERT INTO `phoneid` VALUES (62, 'fj', '17805129299', 'fj12345');
INSERT INTO `phoneid` VALUES (63, 'HJL', '17805138931', '123456');
INSERT INTO `phoneid` VALUES (64, 'a', '18852009601', '456');
INSERT INTO `phoneid` VALUES (65, 'lj', '18852009629', '123456');
INSERT INTO `phoneid` VALUES (66, 'lj', '15956461176', 'lj1234');

SET FOREIGN_KEY_CHECKS = 1;
