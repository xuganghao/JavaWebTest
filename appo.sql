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

 Date: 21/12/2018 19:08:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for appo
-- ----------------------------
DROP TABLE IF EXISTS `appo`;
CREATE TABLE `appo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `theme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `free` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `site` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of appo
-- ----------------------------
INSERT INTO `appo` VALUES (1, '18856210560', '看电影，吃饭', '我买单', '2018-12-20 00:00:00', '年纪大了，只想被宠，不想被凶', '南京', '17805138931');
INSERT INTO `appo` VALUES (2, '18856210561', '吃饭，K歌', '我买单', '2018-12-20 00:00:00', '我是宅男', '上海', '15956461176');
INSERT INTO `appo` VALUES (3, '18856210562', '看电影，吃饭', 'AA', '2018-12-20 00:09:30', '我的性格比较安静，不喜欢多说', '北京', '15956461176');
INSERT INTO `appo` VALUES (4, '18856210563', '打游戏，K歌', '我买单', '2018-12-20 00:07:20', '如果有来世，就让我们做一对快乐的小老鼠。', '天津', '13453480557');
INSERT INTO `appo` VALUES (5, '18856210564', '旅行，逛街', '我买单', '2018-12-20 00:00:00', '属性相合，缘分井上添花', '合肥', NULL);
INSERT INTO `appo` VALUES (6, '18856210565', '吃饭，逛街', 'AA', '2018-12-20 00:00:00', '有进取心，有见识', '铜陵', NULL);
INSERT INTO `appo` VALUES (7, '18856210566', '看电影，旅行', 'AA', '2018-12-20 00:00:00', '满怀诚意，非诚勿扰', '武汉', '13695566995');
INSERT INTO `appo` VALUES (8, '18856210567', '喝咖啡，k歌', '我买单', '2018-12-20 00:00:00', '难于应付，拒绝套路', '太原', NULL);
INSERT INTO `appo` VALUES (9, '18856210568', '看电影，旅行', '我买单', '2018-12-20 00:06:30', '看好要求，自我介绍', '杭州', NULL);
INSERT INTO `appo` VALUES (10, '18856210569', '看电影，其他', 'AA', '2018-12-20 00:00:00', '直接微信，恕难从命', '郑州', '18852009629');
INSERT INTO `appo` VALUES (11, '18856210570', '吃饭，旅行', '我买单', '2018-12-20 00:00:00', '爱一个人意味着什么呢', '湖州', NULL);
INSERT INTO `appo` VALUES (12, '18856210571', 'K歌，看电影', '我买单', '2018-12-20 00:00:00', '一般的宿命，就是我们终会遇见', '兰州', NULL);
INSERT INTO `appo` VALUES (13, '18856210572', '旅行', 'AA', '2018-12-20 00:03:05', '只愿一起牵手走遍山川河流', '山西', NULL);
INSERT INTO `appo` VALUES (14, '18856210573', '看电影，旅行', '我买单', '2018-12-20 00:00:00', '不吸烟不喝酒的女人适合当老婆', '陕西', NULL);
INSERT INTO `appo` VALUES (15, '18856210574', '吃饭，K歌', 'AA', '2018-12-20 00:00:00', '我相信爱情，我不会说：“男人都不是好东西”', '湖北', NULL);
INSERT INTO `appo` VALUES (16, '18856210575', '旅行', '我买单', '2018-12-20 00:00:00', '比较宅，爱笑，喜欢听音乐', '杭州', NULL);
INSERT INTO `appo` VALUES (17, '18856210576', '吃饭，K歌', 'AA', '2018-12-20 00:01:25', '我无法选择爱不爱你，我只能选择更爱你，', '苏州', NULL);
INSERT INTO `appo` VALUES (18, '18856210577', 'k歌', '我买单', '2018-12-20 00:00:00', '想找同一个城市的吗？', '泰州', NULL);
INSERT INTO `appo` VALUES (19, '18856210578', '看电影，吃饭', 'AA', '2018-12-20 00:00:00', '走吧', '南京', NULL);
INSERT INTO `appo` VALUES (20, '13453480579', '喝咖啡', 'AA', '中午十二点', '我是宅男', '南京', NULL);
INSERT INTO `appo` VALUES (21, '13453480558', 'K歌', '我买单', '中午十二点', '我是一个爱笑的人', '湖北', NULL);
INSERT INTO `appo` VALUES (22, '13695566995', '看电影', 'male ', '2018-12=5', '我是灾难', '南京', NULL);
INSERT INTO `appo` VALUES (23, '13695566995', '看电影', 'female', '2018', '我爱学习', '南京', NULL);
INSERT INTO `appo` VALUES (24, '13695566995', '看电影', 'female', '2018', '我爱学习', '南京', NULL);
INSERT INTO `appo` VALUES (25, '13695566995', '看电影', 'female', '2018', '我爱学习', '南京', NULL);
INSERT INTO `appo` VALUES (26, '13695566995', '看电影', 'female', '2018', '我爱学习', '南京', NULL);
INSERT INTO `appo` VALUES (27, '13695566995', 'K歌', 'male ', '', '', '', NULL);
INSERT INTO `appo` VALUES (28, '13695566995', 'K歌', 'male ', '', '', '', NULL);
INSERT INTO `appo` VALUES (29, '13695566995', '看电影', 'male ', '', '', '', NULL);
INSERT INTO `appo` VALUES (30, '13695566995', '看电影', 'male ', '', '', '', NULL);
INSERT INTO `appo` VALUES (31, '13695566995', '看电影', 'male ', '', '', '', NULL);
INSERT INTO `appo` VALUES (32, '18852009629', '吃饭', 'female', '2018-12=5', '', '南京', NULL);
INSERT INTO `appo` VALUES (33, '18852009629', '吃饭', 'female', '2018-12=5', '', '南京', NULL);
INSERT INTO `appo` VALUES (34, '18852009629', '吃饭', 'female', '2018-12=5', '', '南京', NULL);
INSERT INTO `appo` VALUES (35, '18852009629', '吃饭', 'female', '2018-12=5', '', '南京', NULL);
INSERT INTO `appo` VALUES (36, '18852009629', '吃饭', 'female', '2018-12=5', '', '南京', NULL);
INSERT INTO `appo` VALUES (37, '18852009626', '看电影', 'female', '2018-12-11', '12344', '南京', NULL);
INSERT INTO `appo` VALUES (38, '13584644576', '看电影', 'male ', '12月25号', '来找我', '南京仙林', NULL);
INSERT INTO `appo` VALUES (39, '13453480557', '吃饭', 'male ', '晚上12点', '嘿嘿嘿', '学校食堂', NULL);
INSERT INTO `appo` VALUES (40, '13453480557', '喝咖啡', 'male ', '晚上10点', '4如4534wq', '', NULL);
INSERT INTO `appo` VALUES (41, '13453480557', '吃饭', 'male ', '', '', '', NULL);
INSERT INTO `appo` VALUES (42, '13453480557', 'K歌', 'male ', '晚上12点', '445', '', NULL);
INSERT INTO `appo` VALUES (43, '13584644576', '看电影', 'male ', '12月25号', 'qwertyu', '南京仙林', NULL);
INSERT INTO `appo` VALUES (44, '17805129299', '看电影', 'male ', '12-22', '冯杰是', '南京', NULL);
INSERT INTO `appo` VALUES (45, '17805138931', '看电影', 'female', '2017-8-7', 'ENE', '南京', NULL);
INSERT INTO `appo` VALUES (46, '13695566995', 'K歌', 'male ', '明天', '看电影', '我家', NULL);
INSERT INTO `appo` VALUES (47, '18852009601', '旅行', 'female', '2018-12-20', '今天中午约你去松山湖钓鱼。', '松山湖', NULL);
INSERT INTO `appo` VALUES (48, '15956461176', 'K歌', 'male ', '2018-12-11', '大家一起出去玩', '南工院', NULL);

SET FOREIGN_KEY_CHECKS = 1;
