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

 Date: 21/12/2018 19:18:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for selfinfo
-- ----------------------------
DROP TABLE IF EXISTS `selfinfo`;
CREATE TABLE `selfinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `web` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of selfinfo
-- ----------------------------
INSERT INTO `selfinfo` VALUES (42, '18856210560', NULL, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (43, '123456', NULL, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (44, '1', NULL, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (45, '123', NULL, '周勇', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (46, '111', NULL, '周勇', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (47, '999', 'images1544945020543.jpg', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (48, '888', 'images1544954834073.jpg', '周勇', '1998-1-1', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (49, '18136655844', 'images1545053848501.jpg', '周勇', '1994', '18136655844', '南京', '保密', 'www.zhouyong.com', '1575989788@qq.com', '南京工业职业技术学院');
INSERT INTO `selfinfo` VALUES (50, '0987654321@qq.com', 'null', 'null', 'null', 'null', 'null', '保密', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (51, '13453480558', 'images1545189110727.png', '许港浩', 'null', '13453480558', '山西', '保密', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (52, '18851999675', 'null', '花花', '1999-06-06', '18851999675', '南京', '女', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (53, '18852009629', 'images1545102096863.jpg', '娄洁', '1999.9.7', '18852009629', '南京', '保密', '2027151691@qq.com', 'null', '南京工业职业技术学院');
INSERT INTO `selfinfo` VALUES (54, '1542556705@qq.com', 'null', 'ff', 'null', '13966150116', 'null', '保密', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (55, '18765431234', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (56, '3187252587@qq.com', 'images1545102022865.jpg', '许港浩', 'null', '13453480558', '山西', '保密', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (57, '13695566995', 'images1545214493438.jpg', '周勇', '1998-1-1', 'null', 'null', '保密', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (58, '18852009359', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (59, '18852009626', 'images1545221990777.jpg', '娄洁', '1999.9.7', '18852009626', '南京', '保密', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (60, '13453480557', 'images1545233328100.jpg', '港浩', '2000-2-7', '13453480557', '山西', '保密', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (61, '13584644576', 'images1545233260087.jpg', '顾森湘', '1999.1.8', '13584644576', '南京', '保密', 'lll.com', '2110401421@qq.com', '南京仙林');
INSERT INTO `selfinfo` VALUES (62, '18856218907', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (63, '17805129299', 'null', '凤姐', 'null', 'null', 'null', '保密', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (64, '17805138931', 'images1545265718649.jpg', 'HJL', 'null', 'null', 'null', '保密', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (65, '18852009601', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (66, '1575989788@qq.com', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (67, '572052037@qq.com', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (68, '18852009629', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `selfinfo` VALUES (69, '15956461176', 'images1545274601258.jpg', '娄洁', '1999.9.7', '18852009629', '南京', '保密', '2027151691@qq.com', 'null', '南京工业职业技术学院');

SET FOREIGN_KEY_CHECKS = 1;
