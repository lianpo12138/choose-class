/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50610
 Source Host           : localhost:3306
 Source Schema         : rain

 Target Server Type    : MySQL
 Target Server Version : 50610
 File Encoding         : 65001

 Date: 10/04/2022 23:49:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `loginname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `realname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `logintime` datetime(0) NULL DEFAULT NULL COMMENT '最近一次登录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '管理员表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'root', '吴林峰', 'root', NULL, NULL, NULL);
INSERT INTO `admin` VALUES (2, 'admin', 'admin', '111111', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `classname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `teacherid` bigint(20) NULL DEFAULT NULL COMMENT '教师id',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课程类型',
  `credit` int(11) NULL DEFAULT NULL COMMENT '学分',
  `credit_hours` int(10) NULL DEFAULT NULL COMMENT '学时',
  `term` char(12) CHARACTER SET utf32 COLLATE utf32_general_ci NULL DEFAULT NULL COMMENT '学期',
  `plan_num` int(3) NULL DEFAULT NULL COMMENT '可招人数',
  `reality_num` int(3) NULL DEFAULT NULL COMMENT '实际人数',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `notice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '注意事项',
  `simple_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上课时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `teacherid`(`teacherid`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121514544244854933 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程信息表\r\n' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (100, '营养与膳食', 1005, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (105, '现当代文学名著选读', 1029, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (107, '图像处理及Flash动画制作', 1034, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (130, '音乐鉴赏', 1044, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (177, '当代世界经济与政治（Mooc）', 1051, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (194, '普通话', 1082, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (198, '果品保鲜', 1087, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (236, '影视鉴赏', 1101, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (252, '膳食健康与美容', 1103, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (255, '围棋教学', 1118, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (263, '植物资源的开发和利用', 1134, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (265, '民间艺术鉴赏', 1177, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (429, '家具设计与欣赏', 1238, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (443, '化妆艺术', 1262, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (453, '管理心理学', 1278, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (460, '电子制作与简单家电维修', 1352, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (463, '中华诗词之美（mooc）', 1382, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (494, '口才艺术与社交礼仪（mooc）', 1384, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (495, '创业创新领导力（mooc）', 1386, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (497, '创新创业（mooc）', 1388, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (498, '西方哲学与智慧（mooc）', 1389, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (506, '物理与人类文明（mooc）', 1390, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (785, '沟通与协调艺术', 1394, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (789, '和平文化概论', 1396, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (795, '网络创业理论与实践（mooc）', 1397, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (797, '创新、发明与专利实务（mooc）', 1398, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (801, '数学的奥秘-本质与思维（mooc）', 1412, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (802, '家园的治理-环境科学概论（mooc）', 1431, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (808, '心理、行为与文化（mooc）', 1435, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (809, '中华民族精神（mooc）', 1442, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (810, '欧洲文明概论（mooc）', 1477, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (813, '电影美术造型', 1611, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (815, '影像中的法律', 1652, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (817, '创新创业实践', 1654, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (824, '英美文化概论（英语授课）（mooc）', 1770, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (825, '法语学习与法国文化（双语授课）（mooc）', 1771, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (826, '社会心理学（mooc）', 1776, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (828, '漫画艺术欣赏与创作（mooc）', 1778, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (829, '公共日语（mooc）', 1816, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (830, '舌尖上的植物学（mooc）', 1847, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (834, '辩论修养（mooc）', 1865, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (837, '礼仪形体训练（ 一）', 1866, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (846, '日语（一）', 1903, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (847, '俄语（一）', 1905, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (852, '阅读与写作', 1923, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (853, '情绪管理（mooc）', 1945, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (854, '品牌形象设计解析', 1951, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (856, '影视社会学', 1956, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (859, '俄语（一）', 2029, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (861, '日语（二）', 2054, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (862, '日语（三）', 2061, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (863, '今天的日本（mooc）', 2171, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (866, '人工智能、语言与伦理（mooc）', 2174, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (867, '前进中的物理学与人类文明（mooc）', 2176, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (870, '中国古典小说巅峰：四大名著鉴赏（mooc）', 2177, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (871, '突发事件及自救互救（mooc）', 2198, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (873, '女生穿搭技巧（mooc）', 2201, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (876, '大学生恋爱与性健康（mooc）', 2219, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (878, '看电影，学法律', 2223, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (881, '教师职业道德与教育法律法规', 2233, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (883, '名侦探柯南与化学探秘（Mooc）', 2234, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (885, '制胜：一部孙子傲商海（Mooc）', 2237, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (886, '做时间的记录者-手机摄影达人20天养成计划（Mooc）', 2240, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (887, '时间管理（Mooc）', 2242, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (889, '创新思维训练（Mooc）', 2267, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (890, '创业人生（Mooc）', 2296, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (891, '大学生防艾健康教育（Mooc）', 2305, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (892, '动漫角色设计', 2316, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (894, '小学科技教育', 2319, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (895, '语言艺术训练', 2324, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (897, '英语国家民俗文化', 2343, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (901, '电影中的法律世界', 2344, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (902, '语言艺术与表演', 2352, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (903, '领导科学与艺术', 2366, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (904, '服饰品牌鉴赏', 2369, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (905, '服饰搭配艺术', 2370, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (906, '调解技术', 2396, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (908, '中医健康理念（mooc）', 2397, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (909, '情绪管理（mooc）', 2442, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (910, '大学生爱情兵法（mooc）', 2446, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (911, '现代社交与礼仪（mooc）', 2447, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (912, '习近平新时代中国特色社会主义思想与当代中国（mooc）', 2448, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (913, '大学生创新创业降龙十八讲（mooc）', 2449, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (915, '中国陶瓷史（MOOC）', 2469, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (916, '人生与人心（MOOC）', 2486, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (917, '知识论导论：我们能知道什么（MOOC）', 2490, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (918, '中西文化比较（MOOC）', 2491, '通选课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (921, '应急管理：理论与经典案例', 2494, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (10122, '线性代数', 2499, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150825, '应用统计学（spss)', 2506, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150834, '公共行政学', 2507, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150837, '概率论', 2512, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150855, '房地产开发与经营', 2514, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150872, '检察实务', 2531, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150874, '志愿服务（三）', 2538, '技能训练', NULL, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150875, '知识产权法', 2570, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150876, '城市公用事业管理理论与实践', 2579, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150877, '公共组织财务管理', 2580, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150878, '危机管理', 2587, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150879, '社会工作评估', 2600, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150880, '项目筹款策划能力', 2604, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150881, '土地利用工程', 2605, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150882, '土地利用规划学', 2606, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150883, '城镇规划', 2625, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150884, '数字成图', 2636, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150885, '不动产估价', 2637, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150886, '法律职业伦理', 2655, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150887, '民法（二）', 2662, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150888, '刑法（二）', 2676, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150889, '行政法与行政诉讼法（一）', 2677, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150890, '政治学原理', 2678, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150891, '创新创业能力项目：社工文化节（社会服务项目设计）', 2689, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150892, '经济学', 2702, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150893, '组织社会学', 2704, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150894, '创新思维与创业', 2708, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150895, '破产法', 2709, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150896, '财税法', 2724, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150897, '最高人民法院经典案例剖析', 2725, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (150898, '司法考试技能指导', 2726, '选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (105401023, '乒乓球专项选修', 2728, '专项选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (105401024, '足球专项选修', 2756, '专项选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (105401025, '网球专项选修', 2758, '专项选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (105401026, '羽毛球专项选修', 2759, '专项选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (105402011, '田径', 2761, '专项选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (105402012, '体操', 2763, '专项选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (105402013, '篮球', 2793, '专项选修', 1, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106010001, '中学语文课程标准和教材研究', 2797, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106015001, '形式逻辑学', 2809, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106015002, '中国现当代文学（一）', 2815, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106015003, '中国文学批评史', 2818, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106020001, '大学语文', 2819, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106020002, '阅读与写作', 2822, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106020003, '当代中国传媒史', 3704, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106020004, '现代汉语', 3723, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106020005, '马克思主义新闻思想', 3763, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106020006, '中国文化概论', 3767, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106020007, '中国思想史', 3788, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106025001, '文学概论（二）', 3789, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106025002, '现代汉语（一）', 3805, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106025003, '中国现当代文学（三）', 3892, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106025004, '语言学概论', 3902, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106025005, '中国现当代文学（四）', 3907, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106030001, '新闻学概论', 3914, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106030002, '古代汉语（一）', 4035, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106030003, '中国古代文学（一）', 4040, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106035001, '中国古代文学（三）', 4041, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106035002, '古代汉语（二）', 4052, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106035003, '中国古代文学（四）', 4088, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (106035004, '现代汉语（二）', 4125, '普通课', 2, 16, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (244854864, '  高等数学(一) ', 5001, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854865, '  高等数学(二) ', 5002, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854866, '  线性代数 ', 5003, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854867, '  概率与数理统计 ', 9009, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854868, '  大学物理 ', 9010, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854870, '  毕业设计 ', 9015, '选修', 0, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854871, '  Java语言程序设计课程设计 ', 9034, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854872, '  专业实习 ', 9036, '选修', 0, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854873, '  创新创业实践活动 ', 9073, '选修', 0, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854874, '  数据结构课程设计 ', 9183, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854875, '  团队激励与沟通 ', 41002, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854876, '  IT创业技能教育与实践活动 ', 41178, '选修', 0, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854877, '  专业见习 ', 41179, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854878, '  社会实践活动 ', 41180, '选修', 0, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854879, '  学科与创新创业类竞赛活动 ', 41181, '选修', 0, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854880, '  学术科技实践活动 ', 41182, '选修', 0, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854882, '  心理健康教育 ', 41278, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854883, '  大学英语（一） ', 41279, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854884, '  形势与政策 ', 41280, '选修', 0, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854885, '  就业指导 ', 41281, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854886, '  马克思主义基本原理与实践 ', 41282, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854887, '  基础体育（一） ', 41283, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854888, '  基础体育（二） ', 41284, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854889, '  健康运动项目训练（一） ', 41285, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854890, '  健康运动项目训练（二） ', 41286, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854891, '  大学语文 ', 41287, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854892, '  大学英语（三） ', 4088, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854893, '  大学英语（二） ', 4125, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854894, '  大学生职业生涯规划 ', 5001, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854895, '  就业指导（mooc） ', 5002, '选修', 0, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854896, '  创新创业基础 ', 5003, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854897, '  军事理论 ', 9009, '选修', 0, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854898, '  中国近现代史纲要与实践 ', 9010, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854899, '  思想道德修养与法律基础理论和实践 ', 9015, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854900, '  毛泽东思想和中国特色社会主义概论与实践 ', 9034, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854902, '  计算机科学导论 ', 9036, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854903, '  高级语言程序设计 ', 9073, '选修', 0, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854904, '  高级语言程序设计实训 ', 9183, '选修', 0, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854905, '  Java程序设计 ', 41002, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854906, '  高级语言程序设计 ', 41178, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854907, '  软件工程 ', 41179, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854908, '  云计算平台 ', 41180, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854909, '  编译原理 ', 41181, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854910, '  数字逻辑设计 ', 41182, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854911, '  HTML5应用开发 ', 41278, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854912, '  操作系统 ', 41279, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854913, '  数据结构 ', 41280, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854914, '  离散数学 ', 41281, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854915, '  计算机网络 ', 41282, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854916, '  数据库原理与应用 ', 41283, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854917, '  计算机组成原理 ', 2793, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854918, '  Web应用开发技术 ', 2797, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854919, '  数据库应用开发 ', 2809, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854920, '  企业高级应用开发 ', 2815, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854921, '  企业项目实践1 ', 2818, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854922, '  企业项目实践2 ', 2819, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854924, '  人工智能 ', 2822, '选修', 0, 20, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854927, '  大数据云存储技术 ', 3704, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854928, '  数据可视化 ', 3723, '必修', 3, 12, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854929, '  大数据采集技术 ', 3763, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854930, '  离线大数据处理技术 ', 3767, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854931, '  创业项目实践3 ', 3788, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');
INSERT INTO `class` VALUES (121514544244854932, '  创业项目实践4 ', 3789, '必修', 3, 30, '2021-2022-2', 100, 0, NULL, NULL, '周三第二大节');

-- ----------------------------
-- Table structure for class_student
-- ----------------------------
DROP TABLE IF EXISTS `class_student`;
CREATE TABLE `class_student`  (
  `id` int(10) NOT NULL,
  `class_id` int(10) NULL DEFAULT NULL COMMENT '课程编号',
  `student` int(10) NULL DEFAULT NULL COMMENT '课程',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `class_id`(`class_id`, `student`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of class_student
-- ----------------------------

-- ----------------------------
-- Table structure for classroom
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `classroom_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教室编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教室名称',
  `origin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教室地址\r\n所在校区',
  `function` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教室功能',
  `building` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在教学楼',
  `capacity` int(10) NULL DEFAULT NULL COMMENT '容纳人数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 206 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of classroom
-- ----------------------------
INSERT INTO `classroom` VALUES (20, '2020613', '厚德楼B613', '东校区', '多媒体教室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (21, '2020617', '厚德楼B617', '东校区', '多媒体教室(东校区)', '厚德楼', 180);
INSERT INTO `classroom` VALUES (22, '2040101', '博学楼A101', '东校区', '多媒体教室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (23, '2040402', '博学楼A402', '东校区', '实训室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (24, '2040501', '博学楼A501', '东校区', '多媒体教室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (25, '2050102', '博学楼B102', '东校区', '多媒体教室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (26, '2060203', '博学楼C_203', '东校区', '多媒体教室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (27, '2060303', '博学楼C_303', '东校区', '多媒体教室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (28, '206501', '博学楼C_501', '东校区', '多媒体教室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (29, '206503', '博学楼C_503', '东校区', '多媒体教室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (30, '2080102', '东区田径场2', '东校区', '体育场馆(东校区)', '东区田径场', 60);
INSERT INTO `classroom` VALUES (31, '208110', '东区田径场10', '东校区', '体育场馆(东校区)', '东区田径场', 60);
INSERT INTO `classroom` VALUES (32, '209101', '博学楼D_106会议室', '东校区', '多功能会议室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (33, '211201', 'E4-201', '东校区', '琴室(东校区)', '教师教育研究与素质训练中心', 60);
INSERT INTO `classroom` VALUES (34, '211206', 'E4-206', '东校区', '琴室(东校区)', '教师教育研究与素质训练中心', 60);
INSERT INTO `classroom` VALUES (35, '212A103', '逸夫楼A103', '东校区', '实训室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (36, '212A304', '逸夫楼A304', '东校区', '多媒体教室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (37, '212A406', '逸夫楼A406', '东校区', '多媒体教室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (38, '212A505', '逸夫楼A505', '东校区', '实验室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (39, '212A510', '逸夫楼A510', '东校区', '实验室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (40, '212A610', '逸夫楼A610', '东校区', '计算机房(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (41, '212A701', '逸夫楼A701', '东校区', '实验室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (42, '212A703', '逸夫楼A703', '东校区', '实验室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (43, '213208', '逸夫楼B208', '东校区', '计算机房(东校区)', '逸夫楼', 180);
INSERT INTO `classroom` VALUES (44, '213304', '逸夫楼B304', '东校区', '计算机房(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (45, '213407', '逸夫楼B407', '东校区', '微格教室(东校区)', '逸夫楼', 180);
INSERT INTO `classroom` VALUES (46, '213408', '逸夫楼B408', '东校区', '微格教室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (47, '213409', '逸夫楼B409', '东校区', '微格教室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (48, '213505', '逸夫楼B507', '东校区', '实训室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (49, '213506', '逸夫楼B506', '东校区', '实训室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (50, '2010104', '厚德楼A104', '东校区', '实训室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (51, '2010831', '厚德楼A306', '东校区', '计算机房(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (52, '201410', '厚德楼A410', '东校区', '实验室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (53, '2020217', '厚德楼B217', '东校区', '多媒体教室(东校区)', '厚德楼', 180);
INSERT INTO `classroom` VALUES (54, '2020315', '厚德楼B_315', '东校区', '一般教室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (55, '2020415', '厚德楼B415', '东校区', '琴室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (56, '2020520', '厚德楼B520', '东校区', '多媒体教室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (57, '2010411', '厚德楼A411', '东校区', '实验室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (58, '2040404', '博学楼A404', '东校区', '实训室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (59, '2040406', '博学楼A406', '东校区', '办公室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (60, '2050204', '博学楼B_204', '东校区', '多媒体教室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (61, '2050304', '博学楼B_304', '东校区', '多媒体教室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (62, '2050307', '博学楼B_307', '东校区', '多媒体教室(东校区)', '博学楼', 180);
INSERT INTO `classroom` VALUES (63, '2050501', '博学楼B501', '东校区', '实训室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (64, '2050601', '博学楼B601', '东校区', '实训室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (65, '2050604', '博学楼B604', '东校区', '语音室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (66, '205110', '博学楼B110', '东校区', '实训室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (67, '2060201', '博学楼C_201', '东校区', '多媒体教室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (68, '2060204', '博学楼C_204', '东校区', '多媒体教室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (69, '2060402', '博学楼C_402', '东校区', '多媒体教室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (70, '206502', '博学楼C_502', '东校区', '多媒体教室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (71, '2070102', '天健楼-跆拳道馆101', '东校区', '体育场馆(东校区)', '天健楼', 60);
INSERT INTO `classroom` VALUES (72, '207106', '天健楼106', '东校区', '实训室(东校区)', '天健楼', 60);
INSERT INTO `classroom` VALUES (73, '207207', '天健楼-乒乓球馆207', '东校区', '体育场馆(东校区)', '天健楼', 180);
INSERT INTO `classroom` VALUES (74, '2080006', '东区田径场6', '东校区', '体育场馆(东校区)', '东区田径场', 60);
INSERT INTO `classroom` VALUES (75, '2080103', '东区田径场3', '东校区', '体育场馆(东校区)', '东区田径场', 60);
INSERT INTO `classroom` VALUES (76, '212A308', '逸夫楼A308', '东校区', '多媒体教室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (77, '212A612', '逸夫楼A612', '东校区', '实验室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (78, '212A705', '逸夫楼A705', '东校区', '实验室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (79, '212A706', '逸夫楼A706', '东校区', '实验室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (80, '213104', '逸夫楼B104', '东校区', '实训室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (81, '213106', '逸夫楼B106', '东校区', '实训室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (82, '213301', '逸夫楼B301', '东校区', '计算机房(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (83, '213503002', '逸夫楼B503', '东校区', '实训室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (84, '2010404', '厚德楼A404', '东校区', '计算机房(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (85, '2010503', '厚德楼A503', '东校区', '舞蹈室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (86, '201301', '厚德楼A301', '东校区', '实验室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (87, '2020115', '厚德楼B115', '东校区', '一般教室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (88, '2020218', '厚德楼B218', '东校区', '多媒体教室(东校区)', '厚德楼', 180);
INSERT INTO `classroom` VALUES (89, '2020301', '厚德楼B301', '东校区', '多媒体教室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (90, '2020304', '厚德楼B_304', '东校区', '多媒体教室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (91, '2020318', '厚德楼B_318', '东校区', '一般教室(东校区)', '厚德楼', 180);
INSERT INTO `classroom` VALUES (92, '2020504', '厚德楼B504', '东校区', '一般教室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (93, '2010106', '厚德楼A106', '东校区', '实训室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (94, '2010108', '厚德楼A108', '东校区', '多媒体教室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (95, '201204', '厚德楼A204', '东校区', '实训室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (96, '201401', '厚德楼A401', '东校区', '实验室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (97, '2020104', '厚德楼B104', '东校区', '一般教室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (98, '2020202', '厚德楼B202', '东校区', '多媒体教室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (99, '2150603', '机械楼A603', '东校区', '多媒体教室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (100, '2150604', '机械楼A604', '东校区', '多媒体教室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (101, '2150605', '机械楼A605', '东校区', '办公室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (102, '2150606', '机械楼A606', '东校区', '办公室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (103, '2160101', '机械楼B101', '东校区', '办公室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (104, '2160102', '机械楼B102', '东校区', '办公室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (105, '2160103', '机械楼B103', '东校区', '办公室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (106, '2160201', '机械楼B201', '东校区', '实验室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (107, '2160202', '机械楼B202', '东校区', '实验室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (108, '2160203', '机械楼B203', '东校区', '实验室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (109, '2160204', '机械楼B204', '东校区', '实验室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (110, '2160205', '机械楼B205', '东校区', '实验室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (111, '2160206', '机械楼B206', '东校区', '实验室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (112, '2160207', '机械楼B207', '东校区', '实验室(东校区)', '机械楼', 180);
INSERT INTO `classroom` VALUES (113, '2160208', '机械楼B208', '东校区', '办公室(东校区)', '机械楼', 180);
INSERT INTO `classroom` VALUES (114, '2160301', '机械楼B301', '东校区', '实验室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (115, '2160302', '机械楼B302', '东校区', '办公室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (116, '2160303', '机械楼B303', '东校区', '办公室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (117, '2160304', '机械楼B304', '东校区', '实验室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (118, '2160305', '机械楼B305', '东校区', '实验室(东校区)', '机械楼', 60);
INSERT INTO `classroom` VALUES (139, '212A510', '逸夫楼A510', '东校区', '实验室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (140, '212A610', '逸夫楼A610', '东校区', '计算机房(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (141, '212A701', '逸夫楼A701', '东校区', '实验室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (142, '212A703', '逸夫楼A703', '东校区', '实验室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (143, '213208', '逸夫楼B208', '东校区', '计算机房(东校区)', '逸夫楼', 180);
INSERT INTO `classroom` VALUES (144, '213304', '逸夫楼B304', '东校区', '计算机房(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (145, '213407', '逸夫楼B407', '东校区', '微格教室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (146, '213408', '逸夫楼B408', '东校区', '微格教室(东校区)', '逸夫楼', 180);
INSERT INTO `classroom` VALUES (147, '213409', '逸夫楼B409', '东校区', '微格教室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (148, '213505', '逸夫楼B507', '东校区', '实训室(东校区)', '逸夫楼', 180);
INSERT INTO `classroom` VALUES (149, '213506', '逸夫楼B506', '东校区', '实训室(东校区)', '逸夫楼', 60);
INSERT INTO `classroom` VALUES (150, '2010104', '厚德楼A104', '东校区', '实训室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (151, '2010831', '厚德楼A306', '东校区', '计算机房(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (152, '201410', '厚德楼A410', '东校区', '实验室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (153, '2020217', '厚德楼B217', '东校区', '多媒体教室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (154, '2020315', '厚德楼B_315', '东校区', '一般教室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (155, '2020415', '厚德楼B415', '东校区', '琴室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (156, '2020520', '厚德楼B520', '东校区', '多媒体教室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (157, '2010411', '厚德楼A411', '东校区', '实验室(东校区)', '厚德楼', 60);
INSERT INTO `classroom` VALUES (158, '2040404', '博学楼A404', '东校区', '实训室(东校区)', '博学楼', 60);
INSERT INTO `classroom` VALUES (198, '10086', '飞跃楼A101', '东区', '多媒体教室', '飞跃楼', 60);
INSERT INTO `classroom` VALUES (199, NULL, '飞跃楼A101', '东区', '多媒体教室', '飞跃楼', 60);
INSERT INTO `classroom` VALUES (200, '10086', '飞跃楼A101', '东区', '多媒体教室', '飞跃楼', 60);
INSERT INTO `classroom` VALUES (201, NULL, '飞跃楼A101', '东区', '多媒体教室', '飞跃楼', 60);
INSERT INTO `classroom` VALUES (202, '10086', '飞跃楼A101', '东区', '多媒体教室', '飞跃楼', 60);
INSERT INTO `classroom` VALUES (203, NULL, '飞跃楼A101', '东区', '多媒体教室', '飞跃楼', 60);
INSERT INTO `classroom` VALUES (204, '10086', '飞跃楼A101', '东区', '多媒体教室', '飞跃楼', 60);
INSERT INTO `classroom` VALUES (205, NULL, '飞跃楼A101', '东区', '多媒体教室', '飞跃楼', 60);

-- ----------------------------
-- Table structure for classroom_use
-- ----------------------------
DROP TABLE IF EXISTS `classroom_use`;
CREATE TABLE `classroom_use`  (
  `id` int(10) NOT NULL,
  `classroom_id` int(10) NULL DEFAULT NULL COMMENT '教室标号',
  `date` datetime(0) NULL DEFAULT NULL COMMENT '日期',
  `lesson_time` int(1) NULL DEFAULT NULL COMMENT '第几节',
  `class_id` int(10) NULL DEFAULT NULL COMMENT '课程编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of classroom_use
-- ----------------------------

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userid` bigint(20) NULL DEFAULT NULL COMMENT '评论者id',
  `usertype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论者身份',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '评论表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for courses_choose
-- ----------------------------
DROP TABLE IF EXISTS `courses_choose`;
CREATE TABLE `courses_choose`  (
  `courses_open_id` int(15) NOT NULL COMMENT '开课编号',
  `student_number` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `performance` int(4) NULL DEFAULT NULL COMMENT '成绩',
  PRIMARY KEY (`courses_open_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '选课表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses_choose
-- ----------------------------

-- ----------------------------
-- Table structure for courses_open
-- ----------------------------
DROP TABLE IF EXISTS `courses_open`;
CREATE TABLE `courses_open`  (
  `courses_open_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '被审核后存入class里，自动增长class_id',
  `teacher_id` int(10) NOT NULL,
  `term_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '0是普通选修，1是体育选修',
  PRIMARY KEY (`courses_open_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '开课表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses_open
-- ----------------------------
INSERT INTO `courses_open` VALUES (1, 2531, 8, 105401023, 1);
INSERT INTO `courses_open` VALUES (2, 2538, 8, 105401024, 1);
INSERT INTO `courses_open` VALUES (3, 2570, 8, 105401025, 1);
INSERT INTO `courses_open` VALUES (4, 2579, 8, 105401026, 1);
INSERT INTO `courses_open` VALUES (5, 2580, 8, 105402013, 1);
INSERT INTO `courses_open` VALUES (6, 2640, 8, 105402011, 1);
INSERT INTO `courses_open` VALUES (7, 2564, 8, 105402012, 1);
INSERT INTO `courses_open` VALUES (80, 1390, 8, 150825, 0);
INSERT INTO `courses_open` VALUES (81, 1394, 8, 817, 0);
INSERT INTO `courses_open` VALUES (82, 1396, 8, 150834, 0);
INSERT INTO `courses_open` VALUES (83, 1397, 8, 150837, 0);
INSERT INTO `courses_open` VALUES (84, 1398, 8, 150855, 0);
INSERT INTO `courses_open` VALUES (85, 1412, 8, 150892, 0);
INSERT INTO `courses_open` VALUES (86, 1431, 8, 150893, 0);
INSERT INTO `courses_open` VALUES (87, 1435, 8, 150894, 0);
INSERT INTO `courses_open` VALUES (88, 2453, 8, 150895, 0);

-- ----------------------------
-- Table structure for download
-- ----------------------------
DROP TABLE IF EXISTS `download`;
CREATE TABLE `download`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  `count` int(11) NULL DEFAULT NULL COMMENT '下载次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '下载表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of download
-- ----------------------------

-- ----------------------------
-- Table structure for period
-- ----------------------------
DROP TABLE IF EXISTS `period`;
CREATE TABLE `period`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `term` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学期',
  `term_start_date` date NULL DEFAULT NULL COMMENT '开学日期',
  `term_end_date` date NULL DEFAULT NULL COMMENT '结束日期',
  `choose_start_date` date NULL DEFAULT NULL COMMENT '选课开始时间',
  `choose_end_date` date NULL DEFAULT NULL COMMENT '选课结束日期',
  `remark` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '上课时间，以及选课时间表\r\n' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of period
-- ----------------------------
INSERT INTO `period` VALUES (1, '2018-2019-1', '2018-09-12', '2019-01-10', NULL, NULL, NULL);
INSERT INTO `period` VALUES (2, '2018-2019-2', '2019-02-20', '2019-07-10', NULL, NULL, NULL);
INSERT INTO `period` VALUES (3, '2019-2020-1', '2019-09-03', '2020-01-10', NULL, NULL, NULL);
INSERT INTO `period` VALUES (4, '2019-2020-2', '2020-02-19', '2020-07-10', NULL, NULL, NULL);
INSERT INTO `period` VALUES (5, '2020-2021-1', '2020-09-10', '2021-01-10', '1970-01-01', '1970-01-01', '没有备注');
INSERT INTO `period` VALUES (6, '2020-2021-2', '2021-02-17', '2021-07-10', '2020-01-01', '1970-01-01', '添加一些备注');
INSERT INTO `period` VALUES (7, '2021-2022-1', '2021-09-10', '2022-01-10', '1970-01-01', '1970-01-01', '随便加一点');
INSERT INTO `period` VALUES (8, '2021-2022-2', '2022-02-17', '2022-07-10', '1970-01-01', '1970-01-01', '1.2022年2月17日开学，2月18日正式上课。\n2.2月19-20日期初补(缓)考。\n3.第11周举行期中考试。\n4.2022年6月24日-7月3日举行期末考试，7月4日开始放假。');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `studentid` bigint(20) NULL DEFAULT NULL COMMENT '学生id',
  `classid` bigint(20) NULL DEFAULT NULL COMMENT '课程id',
  `scorenum` float NULL DEFAULT NULL COMMENT '成绩大小',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 122971047111823361 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '成绩表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (122883281116073984, 1, 121514544244854784, 100, NULL);
INSERT INTO `score` VALUES (122970886792941568, 1, 121514544244854866, NULL, NULL);
INSERT INTO `score` VALUES (122971047111823360, 1, 121514544244854864, NULL, NULL);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `loginname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `realname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `logintime` datetime(0) NULL DEFAULT NULL COMMENT '最近一次登录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1880130442 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '学生表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1700130115, '1700130115', '曹东', '1700130115', 'zhuym@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1700130215, '1700130215', '田利', '1700130215', 'zhousc@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1700130430, '1700130430', '邱凡', '1700130430', 'zhoujianhai@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1700130637, '1700130637', '许虎瑞', '1700130637', 'zhougf@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1700130719, '1700130719', '何沅健', '1700130719', 'zhijin.li@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1700130735, '1700130735', '韩博', '1700130735', 'zhengqianfan@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130101, '1800130101', '刘杰岱', '1800130101', 'zhaoyl@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130102, '1800130102', '许智键', '1800130102', 'zhaoxu@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130103, '1800130103', '曹志宏', '1800130103', 'zhaoshenan@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130104, '1800130104', '黄筱淇', '1800130104', 'zhangxq@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130105, '1800130105', '楼朝钪', '1800130105', 'zhangss@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130106, '1800130106', '林泽威', '1800130106', 'zhangly@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130107, '1800130107', '邱城富', '1800130107', 'zhangli@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130108, '1800130108', '郭静雯', '1800130108', 'zhangjm@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130109, '1800130109', '周庆', '1800130109', 'zhangdan@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130110, '1800130110', '李世豪', '1800130110', 'zhangcy@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130111, '1800130111', '张雨欣', '1800130111', 'zhang.liang@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130112, '1800130112', '颜子讯', '1800130112', 'zhaidq@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130113, '1800130113', '石峰', '1800130113', 'zcai@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130114, '1800130114', '胡双麟', '1800130114', 'yukan@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130115, '1800130115', '邓光智', '1800130115', 'yongbo.zhu@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130116, '1800130116', '周炎词', '1800130116', 'yaoml@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130117, '1800130117', '肖维', '1800130117', 'yaobing@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130118, '1800130118', '石准', '1800130118', 'yangxz@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130119, '1800130119', '方懿', '1800130119', 'yangjialin@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130120, '1800130120', '漆琛崴', '1800130120', 'yanggh@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130121, '1800130121', '丁烨炜', '1800130121', 'xuzy@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130122, '1800130122', '甘东果', '1800130122', 'xuzheng@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130123, '1800130123', '李嗣瀚', '1800130123', 'xuming@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130124, '1800130124', '沈正午', '1800130124', 'xucj@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130125, '1800130125', '魏诗明', '1800130125', 'xixiaoli@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130126, '1800130126', '吴雨涵', '1800130126', 'xiejq@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130127, '1800130127', '蔡霖翰', '1800130127', 'xiazj@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130128, '1800130128', '王栋梁', '1800130128', 'xiaolm@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130129, '1800130129', '李政辉', '1800130129', 'xiaobo.wang@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130130, '1800130130', '彭皓明', '1800130130', 'wuzq@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130131, '1800130131', '甘嘉辉', '1800130131', 'wuhj@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130132, '1800130132', '雷佳宁', '1800130132', 'weihong@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130133, '1800130133', '秦纪仁﻿', '1800130133', 'wangzy@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130134, '1800130134', '谢佳文', '1800130134', 'wangxudong@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130135, '1800130135', '熊锦辉', '1800130135', 'wangxi@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130136, '1800130136', '朱丽琼', '1800130136', 'wangqin@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130137, '1800130137', '米刚', '1800130137', 'wangml@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130138, '1800130138', '段雪梅', '1800130138', 'wangjq@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130139, '1800130139', '廖可可', '1800130139', 'wanggr@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130140, '1800130140', '肖飞', '1800130140', 'wangdan@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130201, '1800130201', '景玉', '1800130201', 'wangbin@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130202, '1800130202', '吕锐', '1800130202', 'wangaj@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130203, '1800130203', '张永传', '1800130203', 'tsypp.zly@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130204, '1800130204', '黄伟杰', '1800130204', 'tsyp.zly@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130205, '1800130205', '李治学', '1800130205', 'tianli@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130206, '1800130206', '文溪', '1800130206', 'tianhh@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130207, '1800130207', '唐赛', '1800130207', 'test01@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130208, '1800130208', '张小龙', '1800130208', 'test001@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130209, '1800130209', '傅宇', '1800130209', 'taoym@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130210, '1800130210', '阳灵淇', '1800130210', 'sunhw2@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130211, '1800130211', '周凯伦', '1800130211', 'sundh@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130212, '1800130212', '许振', '1800130212', 'songgl@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130213, '1800130213', '王训', '1800130213', 'ronghw@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130214, '1800130214', '刘佳威', '1800130214', 'renyp@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130215, '1800130215', '谭智升', '1800130215', 'quzj@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130216, '1800130216', '李星宇', '1800130216', 'qiwy@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130217, '1800130217', '谢志元', '1800130217', 'qianghf@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130218, '1800130218', '陶锡彬', '1800130218', 'panym@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130219, '1800130219', '周祥', '1800130219', 'panwj@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130220, '1800130220', '苏昱恒', '1800130220', 'minjun@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130221, '1800130221', '吴俊毅', '1800130221', 'min.liu@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130222, '1800130222', '吴恩成', '1800130222', 'mengjin@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130223, '1800130223', '张开浪', '1800130223', 'luye@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130224, '1800130224', '欧阳昱', '1800130224', 'luml@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130225, '1800130225', '李思颖', '1800130225', 'lufenghua@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130226, '1800130226', '陈明神', '1800130226', 'lizhen@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130227, '1800130227', '张萌春', '1800130227', 'liwc@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130228, '1800130228', '李逸', '1800130228', 'liuyl@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130229, '1800130229', '冯轲涵', '1800130229', 'liurc@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130230, '1800130230', '田泳', '1800130230', 'liumuzhang@126.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130231, '1800130231', '杨天雨', '1800130231', 'liugw@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130232, '1800130232', '聂广', '1800130232', 'linsq@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130233, '1800130233', '李松达', '1800130233', 'limei@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130234, '1800130234', '李瑶', '1800130234', 'lilh@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130235, '1800130235', '龙云杨', '1800130235', 'lifh@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130236, '1800130236', '陈希伦', '1800130236', 'lichunliang18@sina.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130237, '1800130237', '田环宇', '1800130237', 'leying@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130238, '1800130238', '彭凌锐', '1800130238', 'leijie@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130301, '1800130301', '袁文聪', '1800130301', 'lei.cai@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130302, '1800130302', '季天乐', '1800130302', 'laowangjin@163.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130303, '1800130303', '李世勇', '1800130303', 'jinwz@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130304, '1800130304', '吴林峰', '1800130304', 'jie.yang@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130305, '1800130305', '俞祖强', '111111', 'huanglc@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130306, '1800130306', '张福春', '1800130306', 'hongjing@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130307, '1800130307', '张璐豪', '1800130307', 'heyc@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130308, '1800130308', '江炳兴', '1800130308', 'hejun@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130309, '1800130309', '袁鹍', '1800130309', 'guwen@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130310, '1800130310', '刘斌', '1800130310', 'guqw@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130311, '1800130311', '王家享', '1800130311', 'gaojy@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130312, '1800130312', '陈玉芳', '1800130312', 'dours@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130313, '1800130313', '周佑', '1800130313', 'donghm@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130314, '1800130314', '向长江', '1800130314', 'cuilh@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130315, '1800130315', '黄爽', '1800130315', 'chenqiuwen@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130316, '1800130316', '王啸', '1800130316', 'chenqi@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130317, '1800130317', '李庆', '1800130317', 'chenmy@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130318, '1800130318', '舒聪', '1800130318', 'chenhr@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130319, '1800130319', '王利', '1800130319', 'chenhai@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130320, '1800130320', '彭程科', '1800130320', 'chen.xiong@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130321, '1800130321', '杨婷', '1800130321', 'changpf@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130322, '1800130322', '李晨飞', '1800130322', 'caopj@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130323, '1800130323', '曹志杰', '1800130323', 'caoliang@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130325, '1800130325', '测试', '1800130325', '4205633@qq.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130326, '1800130326', '测试', '1800130326', '4205633@qq.com', '2022-03-25 08:32:28', NULL);
INSERT INTO `student` VALUES (1800130327, '1800130327', '测试', '1800130327', '4205633@qq.com', '2022-03-25 08:45:07', NULL);
INSERT INTO `student` VALUES (1800130401, '1800130401', '王君钰', '1800130401', 'bianjb@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130402, '1800130402', '梁硕仕', '1800130402', '420564393@qq.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130403, '1800130403', '朱澳', '1800130403', '420564393@qq.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130404, '1800130404', '郑唯', '1800130404', '420564393@qq.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130405, '1800130405', '方俊乐', '1800130405', '420564393@qq.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130406, '1800130406', '李雅倩', '1800130406', '420564393@qq.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130407, '1800130407', '谭浩杰', '1800130407', '151@sypglass.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130408, '1800130408', '贺子豪', '1800130408', '15137327109@163.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130409, '1800130409', '刘宇轩', '1800130409', '15137327109@163.com', NULL, NULL);
INSERT INTO `student` VALUES (1800130410, '1800130410', '林勇卓', '1800130410', '', NULL, NULL);
INSERT INTO `student` VALUES (1800130411, '1800130411', '阳岚', '1800130411', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130412, '1800130412', '易家豪', '1800130412', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130413, '1800130413', '李茂林', '1800130413', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130414, '1800130414', '朱建军', '1800130414', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130415, '1800130415', '谢丹', '1800130415', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130416, '1800130416', '邹虎', '1800130416', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130417, '1800130417', '杨兴邦', '1800130417', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130418, '1800130418', '高贝', '1800130418', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130419, '1800130419', '许伟', '1800130419', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130420, '1800130420', '陈泽龙', '1800130420', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130421, '1800130421', '杨梦炜', '1800130421', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130422, '1800130422', '张世民', '1800130422', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130423, '1800130423', '熊俊', '1800130423', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130424, '1800130424', '刘思婉', '1800130424', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130425, '1800130425', '李珍珠', '1800130425', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130426, '1800130426', '梁韬华', '1800130426', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130427, '1800130427', '彭琪', '1800130427', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130428, '1800130428', '朱海蓉', '1800130428', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130429, '1800130429', '罗若勤', '1800130429', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130430, '1800130430', '周伶', '1800130430', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130431, '1800130431', '莫富仁', '1800130431', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130432, '1800130432', '李泽昱', '1800130432', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130433, '1800130433', '毛初明', '1800130433', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130434, '1800130434', '唐志远', '1800130434', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130435, '1800130435', '舒甲', '1800130435', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130436, '1800130436', '陈涵', '1800130436', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130437, '1800130437', '蒋艺明', '1800130437', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130438, '1800130438', '韩奇君', '1800130438', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130439, '1800130439', '李佳伟', '1800130439', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130440, '1800130440', '尹正元', '1800130440', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130442, '1800130442', '旷力源', '1800130442', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130443, '1800130443', '瞿钖', '1800130443', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130444, '1800130444', '何涛', '1800130444', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130445, '1800130445', '刘翔', '1800130445', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130446, '1800130446', '龙其坤', '1800130446', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130501, '1800130501', '佟沛泽', '1800130501', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130502, '1800130502', '霍金硕', '1800130502', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130503, '1800130503', '任欧蕾', '1800130503', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130504, '1800130504', '许婷', '1800130504', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130505, '1800130505', '谭懿恒', '1800130505', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130506, '1800130506', '王天伦', '1800130506', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130507, '1800130507', '梁腾', '1800130507', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130508, '1800130508', '邓俊成', '1800130508', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130509, '1800130509', '邓颖', '1800130509', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130510, '1800130510', '詹韬', '1800130510', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130511, '1800130511', '唐锋', '1800130511', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130512, '1800130512', '李天翔', '1800130512', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130513, '1800130513', '卢凌辉', '1800130513', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130514, '1800130514', '刘汛怀', '1800130514', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130515, '1800130515', '刘灿', '1800130515', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130516, '1800130516', '孙泽洲', '1800130516', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130517, '1800130517', '谌培', '1800130517', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130518, '1800130518', '李金谕', '1800130518', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130519, '1800130519', '邓顺平', '1800130519', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130520, '1800130520', '戴佳丽', '1800130520', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130521, '1800130521', '袁翔', '1800130521', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130522, '1800130522', '杨文熠', '1800130522', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130523, '1800130523', '李焱', '1800130523', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130524, '1800130524', '田晓龙', '1800130524', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130525, '1800130525', '杨里', '1800130525', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130526, '1800130526', '李佳望', '1800130526', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130527, '1800130527', '周宏杰', '1800130527', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130528, '1800130528', '李浩', '1800130528', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130529, '1800130529', '范明昊', '1800130529', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130530, '1800130530', '曹华', '1800130530', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130531, '1800130531', '杨琦', '1800130531', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130532, '1800130532', '黄巧云', '1800130532', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130533, '1800130533', '殷果', '1800130533', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130534, '1800130534', '丁浩', '1800130534', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130535, '1800130535', '陈源林', '1800130535', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130536, '1800130536', '王灿凯', '1800130536', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130537, '1800130537', '曹世纪', '1800130537', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130538, '1800130538', '康陆鹏', '1800130538', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130539, '1800130539', '戴重佳', '1800130539', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130540, '1800130540', '谭选文', '1800130540', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130541, '1800130541', '欧阳远平', '1800130541', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130542, '1800130542', '陈涛', '1800130542', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130543, '1800130543', '李圣基', '1800130543', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130544, '1800130544', '钟豪', '1800130544', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130545, '1800130545', '何婷', '1800130545', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130546, '1800130546', '刘高', '1800130546', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130547, '1800130547', '曾鹏', '1800130547', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130548, '1800130548', '何晓明', '1800130548', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130549, '1800130549', '张琪', '1800130549', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130550, '1800130550', '易波', '1800130550', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130551, '1800130551', '向鹏霖', '1800130551', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130552, '1800130552', '唐守豪', '1800130552', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130553, '1800130553', '蒋芯蕊', '1800130553', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130554, '1800130554', '谭大卫', '1800130554', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130555, '1800130555', '杨菊花', '1800130555', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130556, '1800130556', '刘龙飞', '1800130556', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130557, '1800130557', '陈春米', '1800130557', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130558, '1800130558', '胡悦', '1800130558', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130559, '1800130559', '赵阳阳', '1800130559', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130601, '1800130601', '刘文涛', '1800130601', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130602, '1800130602', '孔令锴', '1800130602', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130603, '1800130603', '彭樊涛', '1800130603', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130604, '1800130604', '王宇林', '1800130604', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130605, '1800130605', '姚睿琦', '1800130605', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130606, '1800130606', '宋惠婷', '1800130606', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130607, '1800130607', '彭茶清', '1800130607', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130608, '1800130608', '谭展鹏', '1800130608', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130609, '1800130609', '欧阳轶', '1800130609', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130610, '1800130610', '费荣', '1800130610', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130611, '1800130611', '阳慧玲', '1800130611', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130612, '1800130612', '李小塘', '1800130612', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130613, '1800130613', '李洋求', '1800130613', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130614, '1800130614', '马骁', '1800130614', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130615, '1800130615', '唐杰', '1800130615', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130616, '1800130616', '李梦婷', '1800130616', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130617, '1800130617', '吴世隆', '1800130617', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130618, '1800130618', '苏叶', '1800130618', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130619, '1800130619', '李钦', '1800130619', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130620, '1800130620', '王加其', '1800130620', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130621, '1800130621', '刘昱霄', '1800130621', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130622, '1800130622', '唐洪生', '1800130622', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130623, '1800130623', '王鹏辉', '1800130623', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130624, '1800130624', '覃剑', '1800130624', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130625, '1800130625', '陈海东', '1800130625', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130626, '1800130626', '夏广', '1800130626', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130627, '1800130627', '熊姿', '1800130627', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130628, '1800130628', '吴磊', '1800130628', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130629, '1800130629', '左炎强', '1800130629', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130630, '1800130630', '邹星欣', '1800130630', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130631, '1800130631', '欧阳超', '1800130631', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130632, '1800130632', '王聪健', '1800130632', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130633, '1800130633', '杨文勇', '1800130633', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130634, '1800130634', '覃文', '1800130634', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130635, '1800130635', '谭任君', '1800130635', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130636, '1800130636', '申镇玮', '1800130636', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130637, '1800130637', '杨攀垒', '1800130637', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130638, '1800130638', '郭俊南', '1800130638', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130639, '1800130639', '陈华弟', '1800130639', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130640, '1800130640', '杨剑', '1800130640', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130641, '1800130641', '李桂林', '1800130641', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130701, '1800130701', '王天鹏', '1800130701', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130702, '1800130702', '卢子岩', '1800130702', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130703, '1800130703', '刘军辉', '1800130703', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130704, '1800130704', '付凌宇', '1800130704', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130705, '1800130705', '董妙', '1800130705', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130706, '1800130706', '戴嘉成', '1800130706', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130707, '1800130707', '汤家豪', '1800130707', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130708, '1800130708', '胡康华', '1800130708', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130709, '1800130709', '周磊', '1800130709', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130710, '1800130710', '熊晓颖', '1800130710', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130711, '1800130711', '冯敏', '1800130711', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130712, '1800130712', '吴洪江', '1800130712', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130713, '1800130713', '胡思婕', '1800130713', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130714, '1800130714', '张传彦', '1800130714', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130715, '1800130715', '阳杰', '1800130715', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130716, '1800130716', '银锐', '1800130716', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130717, '1800130717', '李阳阳', '1800130717', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130718, '1800130718', '陈虎', '1800130718', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130719, '1800130719', '黄仲童', '1800130719', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130720, '1800130720', '胡子豪', '1800130720', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130721, '1800130721', '周家雄', '1800130721', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130722, '1800130722', '刘少林', '1800130722', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130723, '1800130723', '周嘉涵', '1800130723', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130724, '1800130724', '万雄', '1800130724', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130725, '1800130725', '陈嘉龙', '1800130725', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130726, '1800130726', '周健', '1800130726', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130727, '1800130727', '谢宇', '1800130727', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130728, '1800130728', '邓建伟', '1800130728', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130729, '1800130729', '周婧', '1800130729', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130730, '1800130730', '陈勇辉', '1800130730', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130731, '1800130731', '何银林', '1800130731', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130732, '1800130732', '李之凯', '1800130732', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130733, '1800130733', '侯芬', '1800130733', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130734, '1800130734', '易景才', '1800130734', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130735, '1800130735', '韦甘莉', '1800130735', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130736, '1800130736', '林芳平', '1800130736', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1800130737, '1800130737', '唐闻铭', '1800130737', NULL, NULL, NULL);
INSERT INTO `student` VALUES (1880130441, '1880130441', '赵浩然', '1880130441', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `loginname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `realname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `logintime` datetime(0) NULL DEFAULT NULL COMMENT '最近一次登录时间',
  `academic_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职称',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56416517 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '老师表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1005, '1005', '谭伟平', '1005', '2018603582@qq.com', NULL, NULL, '教授', '13431080131');
INSERT INTO `teacher` VALUES (1029, '1029', '龙立群', '1029', '2018603582@qq.com', NULL, NULL, '高级工程师', '13816420158');
INSERT INTO `teacher` VALUES (1034, '1034', '颜顺秋', '1034', '1870310325@qq.com', NULL, NULL, '讲师（高校）', '13724853682');
INSERT INTO `teacher` VALUES (1044, '1044', '吴峰', '1044', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13818945727');
INSERT INTO `teacher` VALUES (1051, '1051', '张松青', '1051', '2018603582@qq.com', NULL, NULL, '研究员（自然科学）', '13693276191');
INSERT INTO `teacher` VALUES (1082, '1082', '佘朝文', '1082', '2018603582@qq.com', NULL, NULL, '教授', '13524807550');
INSERT INTO `teacher` VALUES (1087, '1087', '蒋凤英', '1087', '2018603582@qq.com', NULL, NULL, '副教授', '13810663627');
INSERT INTO `teacher` VALUES (1101, '1101', '张南生', '1101', '2018603582@qq.com', NULL, NULL, '高级政工师', '18616208321');
INSERT INTO `teacher` VALUES (1103, '1103', '夏森淼', '1103', '2018603582@qq.com', NULL, NULL, '高级政工师', '18302105802');
INSERT INTO `teacher` VALUES (1118, '1118', '姜香清', '1118', '2018603582@qq.com', NULL, NULL, '高级政工师', '13521248135');
INSERT INTO `teacher` VALUES (1134, '1134', '陈晖', '1134', '2018603582@qq.com', NULL, NULL, '--', '18721297028');
INSERT INTO `teacher` VALUES (1177, '1177', '张力岚', '1177', '2018603582@qq.com', NULL, NULL, '--', '13660265310');
INSERT INTO `teacher` VALUES (1238, '1238', '吴波', '1238', '1870310325@qq.com', NULL, NULL, '教授', '13816715743');
INSERT INTO `teacher` VALUES (1262, '1262', '周华', '1262', '2018603582@qq.com', NULL, NULL, '副教授', '18868817220');
INSERT INTO `teacher` VALUES (1278, '1278', '邓小铭', '1278', '2018603582@qq.com', NULL, NULL, '政工师', '13422225552');
INSERT INTO `teacher` VALUES (1352, '1352', '宋克慧', '1352', '2018603582@qq.com', NULL, NULL, '教授', '15533143011');
INSERT INTO `teacher` VALUES (1382, '1382', '陈迪钊', '111111', '2018603582@qq.com', NULL, NULL, '教授', '17055918242');
INSERT INTO `teacher` VALUES (1384, '1384', '毛新平', '1384', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13003221829');
INSERT INTO `teacher` VALUES (1386, '1386', '李万伟', '1386', '2018603582@qq.com', NULL, NULL, '工程师', '13636340917');
INSERT INTO `teacher` VALUES (1388, '1388', '杨兴华', '1388', '2018603582@qq.com', NULL, NULL, '教授', '18872024810');
INSERT INTO `teacher` VALUES (1389, '1389', '林红卫', '1389', '2018603582@qq.com', NULL, NULL, '教授', '18321415523');
INSERT INTO `teacher` VALUES (1390, '1390', '何春萍', '1390', '2018603582@qq.com', NULL, NULL, '副教授', '15900729038');
INSERT INTO `teacher` VALUES (1394, '1394', '刘瞻', '1394', '2018603582@qq.com', NULL, NULL, '高级实验师', '13816279099');
INSERT INTO `teacher` VALUES (1396, '1396', '欧阳跃军', '1396', '2018603582@qq.com', NULL, NULL, '教授', '13641621830');
INSERT INTO `teacher` VALUES (1397, '1397', '黄明强', '1397', '2018603582@qq.com', NULL, NULL, '中级工', '13910493699');
INSERT INTO `teacher` VALUES (1398, '1398', '胡扬剑', '1398', 'zhangzhongbo@sundeinfo.cn', NULL, NULL, '教授', '13651278812');
INSERT INTO `teacher` VALUES (1412, '1412', '伍贤进', '1412', '2018603582@qq.com', NULL, NULL, '教授', '18318023708');
INSERT INTO `teacher` VALUES (1431, '1431', '晏小红', '1431', '2018603582@qq.com', NULL, NULL, '教员', '13671816916');
INSERT INTO `teacher` VALUES (1435, '1435', '张小玲', '1435', '2018603582@qq.com', NULL, NULL, '--', '13824661627');
INSERT INTO `teacher` VALUES (1442, '1442', '李强', '1442', '2018603582@qq.com', NULL, NULL, '教授', '13426493325');
INSERT INTO `teacher` VALUES (1477, '1477', '王荣', '1477', '2018603582@qq.com', NULL, NULL, '高等学校教师', '13269511550');
INSERT INTO `teacher` VALUES (1611, '1611', '杨弢', '1611', '2018603582@qq.com', NULL, NULL, '实验师', '13810216680');
INSERT INTO `teacher` VALUES (1652, '1652', '申桂荣', '1652', '2018603582@qq.com', NULL, NULL, '--', '13392697805');
INSERT INTO `teacher` VALUES (1654, '1654', '向平', '1654', '2018603582@qq.com', NULL, NULL, '--', '13817733728');
INSERT INTO `teacher` VALUES (1770, '1770', '杨青英', '1770', '2018603582@qq.com', NULL, NULL, '馆员（档案）', '13632255331');
INSERT INTO `teacher` VALUES (1771, '1771', '刘宪文', '1771', '2018603582@qq.com', NULL, NULL, '副教授', '18521797106');
INSERT INTO `teacher` VALUES (1776, '1776', '王文才', '1776', '2018603582@qq.com', NULL, NULL, '高教未评', '18801155618');
INSERT INTO `teacher` VALUES (1778, '1778', '游振华', '1778', '2018603582@qq.com', NULL, NULL, '高级政工师', '18910325826');
INSERT INTO `teacher` VALUES (1816, '1816', '瞿建国', '1816', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13701850890');
INSERT INTO `teacher` VALUES (1847, '1847', '冉婷', '1847', '2018603582@qq.com', NULL, NULL, '副教授', '18033028772');
INSERT INTO `teacher` VALUES (1865, '1865', '戴丽娟', '1865', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13422127093');
INSERT INTO `teacher` VALUES (1866, '1866', '李莉华', '1866', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13482328392');
INSERT INTO `teacher` VALUES (1903, '1903', '冯秀玲', '1903', '2018603582@qq.com', NULL, NULL, '副教授', '13558799428');
INSERT INTO `teacher` VALUES (1905, '1905', '司金山', '1905', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13611946681');
INSERT INTO `teacher` VALUES (1923, '1923', '张春梅', '1923', '2018603582@qq.com', NULL, NULL, '中教一级', '13601718181');
INSERT INTO `teacher` VALUES (1945, '1945', '连琰', '1945', '2018603582@qq.com', NULL, NULL, '副教授', '15001992018');
INSERT INTO `teacher` VALUES (1951, '1951', '刘志伟', '1951', '2018603582@qq.com', NULL, NULL, '助教（高校）', '13916747817');
INSERT INTO `teacher` VALUES (1956, '1956', '陈展望', '1956', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13501302998');
INSERT INTO `teacher` VALUES (2029, '2029', '李茂科', '2029', '2018603582@qq.com', NULL, NULL, '副教授', '18918650186');
INSERT INTO `teacher` VALUES (2054, '2054', '余金秀', '2054', '2018603582@qq.com', NULL, NULL, '--', '18032793979');
INSERT INTO `teacher` VALUES (2061, '2061', '陈晓玲', '2061', '2018603582@qq.com', NULL, NULL, '助理馆员（图书）', '13045642660');
INSERT INTO `teacher` VALUES (2171, '2171', '邓琼湘', '2171', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13636481862');
INSERT INTO `teacher` VALUES (2174, '2174', '胡蓉', '2174', '2018603582@qq.com', NULL, NULL, '副教授', '13651607829');
INSERT INTO `teacher` VALUES (2176, '2176', '吕华', '2176', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '15710038657');
INSERT INTO `teacher` VALUES (2177, '2177', '段勇军', '2177', '2018603582@qq.com', NULL, NULL, '--', '13260169908');
INSERT INTO `teacher` VALUES (2198, '2198', '易松华', '2198', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '17381904977');
INSERT INTO `teacher` VALUES (2201, '2201', '蒋爱英', '2201', '2018603582@qq.com', NULL, NULL, '副教授', '13764748160');
INSERT INTO `teacher` VALUES (2219, '2219', '胡蔚昱', '2219', '2018603582@qq.com', NULL, NULL, '实验师', '13631353703');
INSERT INTO `teacher` VALUES (2223, '2223', '朱尚华', '2223', '2018603582@qq.com', NULL, NULL, '副教授', '13162350289');
INSERT INTO `teacher` VALUES (2233, '2233', '夏洪亮', '2233', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '17710943065');
INSERT INTO `teacher` VALUES (2234, '2234', '田圣会', '2234', '2018603582@qq.com', NULL, NULL, '副教授', '13671763656');
INSERT INTO `teacher` VALUES (2237, '2237', '郭建原', '2237', '2018603582@qq.com', NULL, NULL, '副教授', '18101320417');
INSERT INTO `teacher` VALUES (2240, '2240', '石明灯', '2240', '2018603582@qq.com', NULL, NULL, '副教授', '18034167825');
INSERT INTO `teacher` VALUES (2242, '2242', '唐剑萍', '2242', '2018603582@qq.com', NULL, NULL, '副教授', '13482330502');
INSERT INTO `teacher` VALUES (2267, '2267', '李敏', '2267', '2018603582@qq.com', NULL, NULL, '教员', '15900400881');
INSERT INTO `teacher` VALUES (2296, '2296', '杨庭业', '2296', '2018603582@qq.com', NULL, NULL, '--', '18017658310');
INSERT INTO `teacher` VALUES (2305, '2305', '俞建华', '2305', '2018603582@qq.com', NULL, NULL, '--', '13601377117');
INSERT INTO `teacher` VALUES (2316, '2316', '李小海', '2316', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13051951051');
INSERT INTO `teacher` VALUES (2319, '2319', '何学红', '2319', '1870310325@qq.com', NULL, NULL, '--', '18036328067');
INSERT INTO `teacher` VALUES (2324, '2324', '谢娟娟', '2324', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13810410625');
INSERT INTO `teacher` VALUES (2343, '2343', '黄丽衡', '2343', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '18861215132');
INSERT INTO `teacher` VALUES (2344, '2344', '王志成', '2344', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13651700178');
INSERT INTO `teacher` VALUES (2352, '2352', '刘健', '2352', '2018603582@qq.com', NULL, NULL, '--', '15021133926');
INSERT INTO `teacher` VALUES (2366, '2366', '赵永新', '2366', '2018603582@qq.com', NULL, NULL, '教授', '15810500051');
INSERT INTO `teacher` VALUES (2369, '2369', '艾小康', '2369', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13651297299');
INSERT INTO `teacher` VALUES (2370, '2370', '李元祥', '2370', '2018603582@qq.com', NULL, NULL, '教授', '13641976959');
INSERT INTO `teacher` VALUES (2396, '2396', '杨萍', '2396', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '15618738616');
INSERT INTO `teacher` VALUES (2397, '2397', '叶丽艳', '2397', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13426363106');
INSERT INTO `teacher` VALUES (2442, '2442', '王立群', '2442', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '19921545712');
INSERT INTO `teacher` VALUES (2446, '2446', '姚美雄', '2446', '2018603582@qq.com', NULL, NULL, '副教授', '13520722812');
INSERT INTO `teacher` VALUES (2447, '2447', '尹璐', '2447', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13472481816');
INSERT INTO `teacher` VALUES (2448, '2448', '张京平', '2448', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13622752093');
INSERT INTO `teacher` VALUES (2449, '2449', '赵娟', '2449', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '18922308582');
INSERT INTO `teacher` VALUES (2469, '2469', '姚三军', '2469', '2018603582@qq.com', NULL, NULL, '副教授', '18868804600');
INSERT INTO `teacher` VALUES (2486, '2486', '张海洲', '2486', '2018603582@qq.com', NULL, NULL, '副教授', '13609786937');
INSERT INTO `teacher` VALUES (2490, '2490', '杨雅芳', '2490', '1540097527@qq.com', NULL, NULL, '讲师（高校）', '13402198567');
INSERT INTO `teacher` VALUES (2491, '2491', '杨丹', '2491', '2018603582@qq.com', NULL, NULL, '副教授', '18321609592');
INSERT INTO `teacher` VALUES (2494, '2494', '伍汝辉', '2494', '2018603582@qq.com', NULL, NULL, '助理研究员（自然科学）', '13046690006');
INSERT INTO `teacher` VALUES (2499, '2499', '肖锦凤', '2499', '2018603582@qq.com', NULL, NULL, '副教授', '13718260080');
INSERT INTO `teacher` VALUES (2506, '2506', '杨宏', '2506', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13472765932');
INSERT INTO `teacher` VALUES (2507, '2507', '汪黎黎', '2507', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13524368258');
INSERT INTO `teacher` VALUES (2512, '2512', '刘明吉', '2512', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13311912651');
INSERT INTO `teacher` VALUES (2514, '2514', '叶漪', '2514', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13810055926');
INSERT INTO `teacher` VALUES (2531, '2531', '颜元春', '2531', '2018603582@qq.com', NULL, NULL, '高级工程师', '15201915889');
INSERT INTO `teacher` VALUES (2538, '2538', '杨亦阳', '2538', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '18861828463');
INSERT INTO `teacher` VALUES (2570, '2570', '姜莉芳', '2570', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13611415059');
INSERT INTO `teacher` VALUES (2579, '2579', '姚远', '2579', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '15821803780');
INSERT INTO `teacher` VALUES (2580, '2580', '曾利霞', '2580', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13520070838');
INSERT INTO `teacher` VALUES (2587, '2587', '刘艳', '2587', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13521005134');
INSERT INTO `teacher` VALUES (2600, '2600', '王伟', '2600', '2018603582@qq.com', NULL, NULL, '--', '13472422806');
INSERT INTO `teacher` VALUES (2604, '2604', '刘胥杉', '2604', '2018603582@qq.com', NULL, NULL, '助教（高校）', '13501068355');
INSERT INTO `teacher` VALUES (2605, '2605', '赵新雨', '2605', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13710899731');
INSERT INTO `teacher` VALUES (2606, '2606', '胡小军', '2606', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '18011422868');
INSERT INTO `teacher` VALUES (2625, '2625', '黄艺', '2625', '2018603582@qq.com', NULL, NULL, '助教（高校）', '15992437899');
INSERT INTO `teacher` VALUES (2636, '2636', '程超志', '2636', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13811228856');
INSERT INTO `teacher` VALUES (2637, '2637', '刘鑫', '2637', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13302300998');
INSERT INTO `teacher` VALUES (2655, '2655', '张玲', '2655', '2018603582@qq.com', NULL, NULL, '--', '13450258194');
INSERT INTO `teacher` VALUES (2662, '2662', '金丽', '2662', '2018603582@qq.com', NULL, NULL, '副教授', '13585740937');
INSERT INTO `teacher` VALUES (2676, '2676', '宋彦斌', '2676', '2018603582@qq.com', NULL, NULL, '副教授', '17710923205');
INSERT INTO `teacher` VALUES (2677, '2677', '苑文卉', '2677', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '18860126105');
INSERT INTO `teacher` VALUES (2678, '2678', '王丹', '2678', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13516722741');
INSERT INTO `teacher` VALUES (2689, '2689', '刘英姿', '2689', '2018603582@qq.com', NULL, NULL, '副研究馆员（图书）', '13331999220');
INSERT INTO `teacher` VALUES (2702, '2702', '谢剑', '2702', '2018603582@qq.com', NULL, NULL, '--', '13381722978');
INSERT INTO `teacher` VALUES (2704, '2704', '高嘉玮', '2704', '2018603582@qq.com', NULL, NULL, '助教（高校）', '13810055926');
INSERT INTO `teacher` VALUES (2708, '2708', '段韫慧', '2708', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13611282892');
INSERT INTO `teacher` VALUES (2709, '2709', '魏彦娜', '2709', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13611707731');
INSERT INTO `teacher` VALUES (2724, '2724', '朱清华', '2724', '2018603582@qq.com', NULL, NULL, '--', '13761805505');
INSERT INTO `teacher` VALUES (2725, '2725', '李霜', '2725', '2018603582@qq.com', NULL, NULL, '--', '13045608391');
INSERT INTO `teacher` VALUES (2726, '2726', '邓青友', '2726', '2018603582@qq.com', NULL, NULL, '--', '13472522635');
INSERT INTO `teacher` VALUES (2728, '2728', '董正宇', '2728', '2018603582@qq.com', NULL, NULL, '教授', '13482317550');
INSERT INTO `teacher` VALUES (2756, '2756', '向要立', '2756', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13917925656');
INSERT INTO `teacher` VALUES (2758, '2758', '毛和', '2758', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13316193280');
INSERT INTO `teacher` VALUES (2759, '2759', '黄夕雨', '2759', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13816221621');
INSERT INTO `teacher` VALUES (2761, '2761', '刘红艳', '2761', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13061693190');
INSERT INTO `teacher` VALUES (2763, '2763', '瞿琼学', '2763', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '17316803159');
INSERT INTO `teacher` VALUES (2793, '2793', '田薇', '2793', '2018603582@qq.com', NULL, NULL, '--', '18037759902');
INSERT INTO `teacher` VALUES (2797, '2797', '吴彦其', '2797', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '15921286880');
INSERT INTO `teacher` VALUES (2809, '2809', '曾露', '2809', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13564520065');
INSERT INTO `teacher` VALUES (2815, '2815', '熊娜娜', '2815', '2018603582@qq.com', NULL, NULL, '--', '15921448587');
INSERT INTO `teacher` VALUES (2818, '2818', '申维', '2818', '2018603582@qq.com', NULL, NULL, '教员', '13482236599');
INSERT INTO `teacher` VALUES (2819, '2819', '向荫耀', '2819', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13524520056');
INSERT INTO `teacher` VALUES (2822, '2822', '胡玉平', '2822', '2018603582@qq.com', NULL, NULL, '实验师', '13817688631');
INSERT INTO `teacher` VALUES (3704, '3704', '王智超', '3704', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13672408632');
INSERT INTO `teacher` VALUES (3723, '3723', '舒翩然', '3723', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13269309616');
INSERT INTO `teacher` VALUES (3763, '3763', '颜娟', '3763', '2018603582@qq.com', NULL, NULL, '讲师（高校）', '13023121902');
INSERT INTO `teacher` VALUES (3767, '3767', '周福伟', '3767', '2018603582@qq.com', NULL, NULL, '助教（高校）', '13055247207');
INSERT INTO `teacher` VALUES (3788, '3788', '米裕丹', '3788', '2018603582@qq.com', NULL, NULL, '--', '13422036951');
INSERT INTO `teacher` VALUES (3789, '3789', '曾君', '3789', '2018603582@qq.com', '2021-12-23 14:45:56', NULL, '--', '13631398096');
INSERT INTO `teacher` VALUES (3805, '3805', '陈启莲', '3805', '2018603582@qq.com', NULL, NULL, '--', '15910498059');
INSERT INTO `teacher` VALUES (3892, '3892', '匡衡', '3892', '2018603582@qq.com', NULL, NULL, '高等学校教师', '18825073208');
INSERT INTO `teacher` VALUES (3902, '3902', '吴佳嵘', '3902', '2018603582@qq.com', NULL, NULL, '助教（高校）', '18856396635');
INSERT INTO `teacher` VALUES (3907, '3907', '黄钟瑶', '3907', '2018603582@qq.com', NULL, NULL, '高等学校教师', '15521162550');
INSERT INTO `teacher` VALUES (3914, '3914', '向钦成', '3914', '2018603582@qq.com', NULL, NULL, '--', '13524668998');
INSERT INTO `teacher` VALUES (4035, '4035', '谭坤', '4035', '2018603582@qq.com', NULL, NULL, '--', '13764295608');
INSERT INTO `teacher` VALUES (4040, '4040', '周楚为', '4040', '2018603582@qq.com', NULL, NULL, '--', '13522678320');
INSERT INTO `teacher` VALUES (4041, '4041', '伍贤军', '4041', '2018603582@qq.com', NULL, NULL, '--', '13340986875');
INSERT INTO `teacher` VALUES (4052, '4052', '吴漾', '4052', '2018603582@qq.com', NULL, NULL, '--', '15302201521');
INSERT INTO `teacher` VALUES (4088, '4088', '黄元军', '4088', '2018603582@qq.com', NULL, NULL, '--', '13401055534');
INSERT INTO `teacher` VALUES (4125, '4125', '张议方', '4125', '2018603582@qq.com', NULL, NULL, '助教（高校）', '18030626885');
INSERT INTO `teacher` VALUES (5001, '5001', '刘望', '5001', '2018603582@qq.com', NULL, NULL, '教授', '13426072856');
INSERT INTO `teacher` VALUES (5002, '5002', '王刚', '5002', '2018603582@qq.com', NULL, NULL, '馆员（图书）', '13362841918');
INSERT INTO `teacher` VALUES (5003, '5003', '刘文华', '5003', '2018603582@qq.com', NULL, NULL, '教授', '13917876855');
INSERT INTO `teacher` VALUES (9009, '9009', '杰娜金', '9009', '2018603582@qq.com', NULL, NULL, '教授', '13423687710');
INSERT INTO `teacher` VALUES (9010, '9010', '什维达', '9010', '2018603582@qq.com', NULL, NULL, '教授', '15801209937');
INSERT INTO `teacher` VALUES (9015, '9015', '易音', '9015', '2018603582@qq.com', NULL, NULL, '--', '13609762883');
INSERT INTO `teacher` VALUES (9034, '9034', '赵强', '9034', '2018603582@qq.com', NULL, NULL, '--', '17800812574');
INSERT INTO `teacher` VALUES (9036, '9036', '耿旭成', '9036', '2018603582@qq.com', NULL, NULL, '--', '13601283655');
INSERT INTO `teacher` VALUES (9073, '9073', '张丹', '9073', '2018603582@qq.com', NULL, NULL, '--', '15921063825');
INSERT INTO `teacher` VALUES (9183, '9183', '金山权', '9183', '2018603582@qq.com', NULL, NULL, '教授', '18613110199');
INSERT INTO `teacher` VALUES (41002, '41002', '李玉瑛', '41002', '2018603582@qq.com', NULL, NULL, '高级政工师', '13611349915');
INSERT INTO `teacher` VALUES (41178, 'p54010', '刘芳刚', 'p54010', '2018603582@qq.com', NULL, NULL, '高级工程师', '13585823680');
INSERT INTO `teacher` VALUES (41179, 'p54011', '郭璟瑜', 'p54011', '2018603582@qq.com', NULL, NULL, '工程师', '18865500519');
INSERT INTO `teacher` VALUES (41180, 'p54012', '向萌', 'p54012', '2018603582@qq.com', NULL, NULL, '工程师', '18038047803');
INSERT INTO `teacher` VALUES (41181, 'p54013', '张艳', 'p54013', '2018603582@qq.com', NULL, NULL, '高级工程师', '13321908810');
INSERT INTO `teacher` VALUES (41182, 'p54014', '朱维钧', 'p54014', '1540097527@qq.com', NULL, NULL, '高级工程师', '13078888661');
INSERT INTO `teacher` VALUES (41278, 'P31001', '梁怀利', 'P31001', '2018603582@qq.com', NULL, NULL, '--', '13424021821');
INSERT INTO `teacher` VALUES (41279, 'P31002', '全万庆', 'P31002', '2018603582@qq.com', NULL, NULL, '--', '13581726996');
INSERT INTO `teacher` VALUES (41280, 'P31003', '何聪', 'P31003', '1870310325@qq.com', NULL, NULL, '--', '15801608658');
INSERT INTO `teacher` VALUES (41281, 'P31004', '史莎莎', 'P31004', '2018603582@qq.com', NULL, NULL, '--', '18861270320');
INSERT INTO `teacher` VALUES (41282, 'P31005', '何姝', 'P31005', '2018603582@qq.com', NULL, NULL, '--', '15618287665');
INSERT INTO `teacher` VALUES (41283, 'P311801', '常媚', 'P311801', '2018603582@qq.com', NULL, NULL, '--', '15601310956');
INSERT INTO `teacher` VALUES (41284, 'P311808', '胡宏伟', 'P311808', '2018603582@qq.com', NULL, NULL, '中学教师', '13611727033');
INSERT INTO `teacher` VALUES (41285, 'P311809', '方晓慧', 'P311809', '2018603582@qq.com', NULL, NULL, '--', '13391117123');
INSERT INTO `teacher` VALUES (41286, 'P311902', '向濠渲', 'P311902', '2018603582@qq.com', NULL, NULL, '--', '18858172516');
INSERT INTO `teacher` VALUES (41287, 'P45002', 'Marina', 'P45002', '2018603582@qq.com', NULL, NULL, '--', '13910565185');
INSERT INTO `teacher` VALUES (41292, '41292', '吴林峰', '41292', '1@qq.com', '2022-03-02 04:14:16', NULL, '1', '13032103062');
INSERT INTO `teacher` VALUES (41293, '41293', '1', '41293', '1@qq.com', '2022-03-02 04:17:22', NULL, '1', '13025452546');
INSERT INTO `teacher` VALUES (41294, '41294', '1', '41294', '1@qq.com', '2022-03-02 04:19:53', NULL, '1', '13032103062');
INSERT INTO `teacher` VALUES (56416516, '56416516', '廉颇', '56416516', '123423@qq.com', '2022-03-25 08:55:46', NULL, '博士', '5156156616');

SET FOREIGN_KEY_CHECKS = 1;
