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

 Date: 21/12/2018 19:17:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for emailid
-- ----------------------------
DROP TABLE IF EXISTS `emailid`;
CREATE TABLE `emailid`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emailid
-- ----------------------------
INSERT INTO `emailid` VALUES (26, 'zhouyong', '0987654321@qq.com', '123456');
INSERT INTO `emailid` VALUES (27, 'ff', '1542556705@qq.com', '1234567');
INSERT INTO `emailid` VALUES (28, 'xgh2', '3187252587@qq.com', '123456');
INSERT INTO `emailid` VALUES (29, 'grjpejgpjs', '1575989788@qq.com', 'smfipjips');
INSERT INTO `emailid` VALUES (30, '18851999123', '572052037@qq.com', 'zr123');

SET FOREIGN_KEY_CHECKS = 1;
