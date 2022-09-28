/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : xiaoyu11

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 13/06/2022 13:24:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_brand
-- ----------------------------
DROP TABLE IF EXISTS `tb_brand`;
CREATE TABLE `tb_brand`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_letter` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_brand
-- ----------------------------
INSERT INTO `tb_brand` VALUES (1, '2018-04-11 15:58:07.692997', '2018-04-11 15:58:07.693099', 'Apple', 'CtM3BVrOMI-AVPWrAAAPN5YrVxw2187795', 'A');
INSERT INTO `tb_brand` VALUES (2, '2018-04-14 03:01:13.193045', '2018-04-14 03:01:13.193091', '华为（HUAWEI）', 'CtM3BVrRbvmAJ0cWAAAefuA2Xqo3496149', 'H');

-- ----------------------------
-- Table structure for tb_channel_group
-- ----------------------------
DROP TABLE IF EXISTS `tb_channel_group`;
CREATE TABLE `tb_channel_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_channel_group
-- ----------------------------
INSERT INTO `tb_channel_group` VALUES (1, '2018-04-11 15:58:07.692997', '2018-04-11 15:58:07.693099', '手机数码');
INSERT INTO `tb_channel_group` VALUES (2, '2018-04-11 15:58:07.692997', '2018-04-11 15:58:07.693099', '电脑家电');
INSERT INTO `tb_channel_group` VALUES (3, '2018-04-11 15:58:07.692997', '2018-04-11 15:58:07.693099', '家居家装');
INSERT INTO `tb_channel_group` VALUES (4, '2018-04-11 15:58:07.692997', '2018-04-11 15:58:07.693099', '男女童装');
INSERT INTO `tb_channel_group` VALUES (5, '2018-04-11 15:58:07.692997', '2018-04-11 15:58:07.693099', '女鞋箱包');
INSERT INTO `tb_channel_group` VALUES (6, '2018-04-11 15:58:07.692997', '2018-04-11 15:58:07.693099', '手机数码');
INSERT INTO `tb_channel_group` VALUES (7, '2018-04-11 15:58:07.692997', '2018-04-11 15:58:07.693099', '运动户外');
INSERT INTO `tb_channel_group` VALUES (8, '2018-04-11 15:58:07.692997', '2018-04-11 15:58:07.693099', '房产汽车');
INSERT INTO `tb_channel_group` VALUES (9, '2018-04-11 15:58:07.692997', '2018-04-11 15:58:07.693099', '食品生鲜');
INSERT INTO `tb_channel_group` VALUES (10, '2018-04-11 15:58:07.692997', '2018-04-11 15:58:07.693099', '图书音像');
INSERT INTO `tb_channel_group` VALUES (11, '2018-04-11 15:58:07.692997', '2018-04-11 15:58:07.693099', '旅游生活');

-- ----------------------------
-- Table structure for tb_content
-- ----------------------------
DROP TABLE IF EXISTS `tb_content`;
CREATE TABLE `tb_content`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sequence` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_content_category_id_c6e5ac73_fk_tb_content_category_id`(`category_id` ASC) USING BTREE,
  CONSTRAINT `tb_content_category_id_c6e5ac73_fk_tb_content_category_id` FOREIGN KEY (`category_id`) REFERENCES `tb_content_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_content
-- ----------------------------
INSERT INTO `tb_content` VALUES (1, '2018-04-09 16:50:23.230734', '2018-04-09 16:50:23.230780', '美图M8s', 'http://www.itcast.cn', 'CtM3BVrLmc-AJdVSAAEI5Wm7zaw8639396', '', 1, 1, 1);
INSERT INTO `tb_content` VALUES (2, '2018-04-09 16:51:46.173309', '2018-04-09 16:51:46.173354', '黑色星期五', 'http://www.itcast.cn', 'CtM3BVrLmiKANEeLAAFfMRWFbY86177278', '', 2, 1, 1);
INSERT INTO `tb_content` VALUES (3, '2018-04-09 16:52:22.471123', '2018-04-09 16:52:22.471191', '厨卫365', 'http://www.itcast.cn', 'CtM3BVrLmkaAPIMJAAESCG7GAh43642702', '', 3, 1, 1);
INSERT INTO `tb_content` VALUES (4, '2018-04-09 16:53:10.539505', '2018-04-09 16:53:10.539553', '君乐宝买一送一', 'http://www.itcast.cn', 'CtM3BVrLmnaADtSKAAGlxZuk7uk4998927', '', 4, 1, 1);
INSERT INTO `tb_content` VALUES (5, '2018-04-09 16:53:57.409847', '2018-04-09 16:53:57.409913', 'i7顽石低至4199元', 'http://www.itcast.cn', '', '', 1, 1, 2);
INSERT INTO `tb_content` VALUES (6, '2018-04-09 16:54:36.805870', '2018-04-09 16:54:36.805912', '奥克斯专场 正1匹空调1313元抢', 'http://www.itcast.cn', '', '', 2, 1, 2);
INSERT INTO `tb_content` VALUES (7, '2018-04-09 16:55:37.481628', '2018-04-09 16:55:37.481707', '荣耀9青春版 高配 领券立减220元', 'http://www.itcast.cn', '', '', 3, 1, 2);
INSERT INTO `tb_content` VALUES (8, '2018-04-09 16:55:59.644645', '2018-04-09 16:55:59.644697', '美多探索公益新模式', 'http://www.itcast.cn', '', '', 4, 1, 2);
INSERT INTO `tb_content` VALUES (9, '2018-04-09 16:57:05.390017', '2018-04-09 16:57:05.390098', '冰箱洗衣机专场 套购9折', 'http://www.itcast.cn', '', '', 5, 1, 2);
INSERT INTO `tb_content` VALUES (10, '2018-04-09 16:57:41.680151', '2018-04-09 16:57:41.680198', '超市美食家 满188减100', 'http://www.itcast.cn', '', '', 6, 1, 2);
INSERT INTO `tb_content` VALUES (11, '2018-04-09 16:58:27.074643', '2018-04-09 16:58:27.074831', '电竟之日 电脑最高减1000元', 'http://www.itcast.cn', '', '', 7, 1, 2);
INSERT INTO `tb_content` VALUES (12, '2018-04-09 16:59:36.669624', '2018-04-09 16:59:36.669664', '好友联盟双双赚', 'http://www.itcast.cn', 'CtM3BVrLm_iAILnwAACbl1lbG3U8255973', '', 1, 1, 3);
INSERT INTO `tb_content` VALUES (14, '2018-04-09 17:01:42.028961', '2018-04-09 17:01:42.029005', '荣耀V10', 'http://www.itcast.cn', 'CtM3BVrLnHaATJWfAABcalxfbWk5995788', '', 1, 1, 5);
INSERT INTO `tb_content` VALUES (15, '2018-04-09 17:01:56.504762', '2018-04-09 17:01:56.504805', '手机', 'http://www.itcast.cn', '', '', 1, 1, 6);
INSERT INTO `tb_content` VALUES (16, '2018-04-09 17:02:11.330329', '2018-04-09 17:02:11.330373', '配件', 'http://www.itcast.cn', '', '', 2, 1, 6);
INSERT INTO `tb_content` VALUES (17, '2018-04-09 17:02:27.171626', '2018-04-09 17:02:27.171669', '充值', 'http://www.itcast.cn', '', '', 3, 1, 6);
INSERT INTO `tb_content` VALUES (18, '2018-04-09 17:02:47.086939', '2018-04-09 17:02:47.086983', '优惠券', 'http://www.itcast.cn', '', '', 4, 1, 6);
INSERT INTO `tb_content` VALUES (19, '2018-04-09 17:03:06.144946', '2018-04-09 17:03:06.144990', '荣耀手机', 'http://www.itcast.cn', '', '', 1, 1, 7);
INSERT INTO `tb_content` VALUES (20, '2018-04-09 17:03:23.268285', '2018-04-09 17:03:23.268333', '国美手机', 'http://www.itcast.cn', '', '', 2, 1, 7);
INSERT INTO `tb_content` VALUES (21, '2018-04-09 17:03:36.403398', '2018-04-09 17:03:36.403463', '华为手机', 'http://www.itcast.cn', '', '', 3, 1, 7);
INSERT INTO `tb_content` VALUES (22, '2018-04-09 17:03:54.000395', '2018-04-09 17:03:54.000460', '热销推荐', 'http://www.itcast.cn', '', '', 4, 1, 7);
INSERT INTO `tb_content` VALUES (23, '2018-04-09 17:04:12.517924', '2018-04-09 17:04:12.517972', '以旧换新', 'http://www.itcast.cn', '', '', 5, 1, 7);
INSERT INTO `tb_content` VALUES (24, '2018-04-09 17:04:29.338056', '2018-04-09 17:04:29.338132', '潮3C', 'http://www.itcast.cn', '', '', 6, 1, 7);
INSERT INTO `tb_content` VALUES (25, '2018-04-09 17:04:45.403852', '2018-04-09 17:04:45.403917', '全面屏', 'http://www.itcast.cn', '', '', 7, 1, 7);
INSERT INTO `tb_content` VALUES (26, '2018-04-09 17:04:58.159270', '2018-04-09 17:04:58.159321', '守护宝', 'http://www.itcast.cn', '', '', 8, 1, 7);
INSERT INTO `tb_content` VALUES (27, '2018-04-09 17:05:14.234438', '2018-04-09 17:05:14.234482', '存储卡', 'http://www.itcast.cn', '', '', 9, 1, 7);
INSERT INTO `tb_content` VALUES (28, '2018-04-10 08:51:33.422870', '2018-04-10 08:51:33.422915', '360手机 N6 Pro 全网通', 'http://www.itcast.cn', 'CtM3BVrMexWAfodJAAAhg8MeEWU8364862', '￥ 2699.00', 1, 1, 8);
INSERT INTO `tb_content` VALUES (29, '2018-04-10 08:52:50.280197', '2018-04-10 08:52:50.280243', 'iPhone X', 'http://www.itcast.cn', 'CtM3BVrMe2KAGXDKAAAVASh8SzY6938726', '￥ 7788.00', 2, 1, 8);
INSERT INTO `tb_content` VALUES (30, '2018-04-10 08:56:33.016220', '2018-04-10 09:16:59.298002', '荣耀 畅玩7A 全网通 极光蓝', 'http://www.itcast.cn', 'CtM3BVrMgQuAM4-sAABPvjDmrZE7647305', '￥ 749.00', 3, 1, 8);
INSERT INTO `tb_content` VALUES (31, '2018-04-10 08:57:52.744863', '2018-04-10 09:18:36.211831', '魅蓝 S6 全网通', 'http://www.itcast.cn', 'CtM3BVrMgWyAH_f1AAAQuFJkR2o1196559', '￥1199.00', 4, 1, 8);
INSERT INTO `tb_content` VALUES (32, '2018-04-10 08:59:19.379261', '2018-04-10 09:20:59.490599', '红米5Plus 全网通 浅蓝', 'http://www.itcast.cn', 'CtM3BVrMgX2AeXiGAABuWTn7Wr09762364', '￥1299.00', 5, 1, 8);
INSERT INTO `tb_content` VALUES (33, '2018-04-10 09:19:52.078636', '2018-04-10 09:21:15.251997', 'OPPO A1 全网通 深海蓝', 'http://www.itcast.cn', 'CtM3BVrMgbiARBnzAABbhp78Lqs6191821', '￥1399.00', 6, 1, 8);
INSERT INTO `tb_content` VALUES (34, '2018-04-10 09:20:43.322594', '2018-04-10 09:21:08.660170', '华为 nova3e 全网通 幻夜黑', 'http://www.itcast.cn', 'CtM3BVrMgeuAYEocAABd3TzhhGw1571126', '￥1999.00', 7, 1, 8);
INSERT INTO `tb_content` VALUES (35, '2018-04-10 09:22:14.074590', '2018-04-10 09:22:14.074656', 'OPPO R15 全网通 梦镜红', 'http://www.itcast.cn', 'CtM3BVrMgkaAWyHAAABbrVH9a7o5762009', '￥3299.00', 8, 1, 8);
INSERT INTO `tb_content` VALUES (36, '2018-04-10 09:22:52.988391', '2018-04-10 09:22:52.988518', '荣耀V10 全网通 标配版 沙滩金', 'http://www.itcast.cn', 'CtM3BVrMgmyAB_1AAABoaAzPPW86045138', '￥2499.00', 9, 1, 8);
INSERT INTO `tb_content` VALUES (37, '2018-04-10 09:23:26.963050', '2018-04-10 09:23:26.963128', 'vivo X21 异形全面屏 全网通', 'http://www.itcast.cn', 'CtM3BVrMgo6Aa3OTAAA82h3PXzw9976088', '￥3198.00', 10, 1, 8);
INSERT INTO `tb_content` VALUES (38, '2018-04-10 09:29:30.877589', '2018-04-10 09:29:30.877630', '华为P10 全网通', 'http://www.itcast.cn', 'CtM3BVrMg_qACjBsAAActVXQUoc6433633', '￥3488.00', 1, 1, 10);
INSERT INTO `tb_content` VALUES (39, '2018-04-10 09:29:59.145437', '2018-04-10 09:29:59.145821', '小米 红米5 全网通版', 'http://www.itcast.cn', 'CtM3BVrMhBeAaZ9OAABuZHjPsV88472096', '￥699.00', 2, 1, 10);
INSERT INTO `tb_content` VALUES (40, '2018-04-10 09:30:29.868913', '2018-04-10 09:30:29.868969', '魅蓝 Note6 全网通公开版', 'http://www.itcast.cn', 'CtM3BVrMhDWAEwgEAABPce7je4w1228836', '￥1499.00', 3, 1, 10);
INSERT INTO `tb_content` VALUES (41, '2018-04-10 09:31:07.855868', '2018-04-10 09:31:07.855915', '红米5Plus 全网通', 'http://www.itcast.cn', 'CtM3BVrMhFuAB5eZAAAaQIF-UNs3707070', '￥1299.00', 4, 1, 10);
INSERT INTO `tb_content` VALUES (42, '2018-04-10 09:31:42.980397', '2018-04-10 09:31:42.980445', '荣耀9青春版 标配版', 'http://www.itcast.cn', 'CtM3BVrMhH6AAjD4AABS1vBu6x01229529', '￥1099.00', 5, 1, 10);
INSERT INTO `tb_content` VALUES (43, '2018-04-10 09:34:08.867671', '2018-04-10 09:34:08.867712', '华为 畅享8 全网通', 'http://www.itcast.cn', 'CtM3BVrMhRCAB5hsAAAQZye4aIM5257140', '￥1299.00', 6, 1, 10);
INSERT INTO `tb_content` VALUES (44, '2018-04-10 09:35:12.710916', '2018-04-10 09:35:12.710989', '荣耀 畅玩7X 尊享版', 'http://www.itcast.cn', 'CtM3BVrMhVCAFC8tAABonSNLGHA3584281', '￥1799.00', 7, 1, 10);
INSERT INTO `tb_content` VALUES (45, '2018-04-10 09:35:42.251919', '2018-04-10 09:35:42.251963', '华为 nova3e 全网通 幻夜黑', 'http://www.itcast.cn', 'CtM3BVrMhW6Ac7QMAABd3TzhhGw0583536', '￥1999.00', 8, 1, 10);
INSERT INTO `tb_content` VALUES (46, '2018-04-10 09:36:12.028644', '2018-04-10 09:36:12.028685', '魅族 RPO 7 Plus 全网通', 'http://www.itcast.cn', 'CtM3BVrMhYyAOjMVAABU1kCuf_48013827', '￥2799.00', 9, 1, 10);
INSERT INTO `tb_content` VALUES (47, '2018-04-10 09:36:36.804759', '2018-04-10 09:36:36.804804', '三星 S8 Plus 全网通', 'http://www.itcast.cn', 'CtM3BVrMhaSAK3QLAAA7LKRGwzQ0348867', '￥5499.00', 10, 1, 10);
INSERT INTO `tb_content` VALUES (48, '2018-04-10 09:38:59.226650', '2018-04-10 09:38:59.226695', 'Aogress一体双用数据线DC-28金', 'http://www.itcast.cn', 'CtM3BVrMhjOAdMNbAAAR1JGA_cA5064317', '￥29.00', 1, 1, 11);
INSERT INTO `tb_content` VALUES (49, '2018-04-10 09:39:32.483523', '2018-04-10 09:39:32.483585', '黑客iPhone X 钢化膜', 'http://www.itcast.cn', 'CtM3BVrMhlSAP_27AAAW_YBdNEk8530912', '￥29.00', 2, 1, 11);
INSERT INTO `tb_content` VALUES (50, '2018-04-10 09:40:08.968290', '2018-04-10 09:40:08.968367', '黑客 3D曲面 全屏钢化膜', 'http://www.itcast.cn', 'CtM3BVrMhniADXZpAAALTWT-dfQ6160056', '￥99.00', 4, 1, 11);
INSERT INTO `tb_content` VALUES (51, '2018-04-10 09:40:40.405191', '2018-04-10 09:40:40.405231', '三星（SAMSUNG）存储卡 64G', 'http://www.itcast.cn', 'CtM3BVrMhpiAV3lJAABiLlkgy2Y9166507', '￥169.00', 5, 1, 11);
INSERT INTO `tb_content` VALUES (52, '2018-04-10 09:42:15.130337', '2018-04-10 09:42:15.130419', '浦诺菲(pivoful) PUC-15 Type-C 数据线', 'http://www.itcast.cn', 'CtM3BVrMhveAOh8EAAA1ykQ-kAU6900992', '￥19.90', 6, 1, 11);
INSERT INTO `tb_content` VALUES (53, '2018-04-10 09:43:07.486074', '2018-04-10 09:43:07.486118', '好格(Aogress) A-100E移动电源', 'http://www.itcast.cn', 'CtM3BVrMhyuAEf95AABFDj_owsg4241256', '￥99.00', 7, 1, 11);
INSERT INTO `tb_content` VALUES (54, '2018-04-10 09:43:38.901332', '2018-04-10 09:43:38.901374', '卡士奇 存储卡', 'http://www.itcast.cn', 'CtM3BVrMh0qAavITAABOVXYg3SI5232882', '￥29.90', 8, 1, 11);
INSERT INTO `tb_content` VALUES (55, '2018-04-10 09:44:39.359738', '2018-04-10 09:44:39.359783', '捷波朗(Jabra)OTE23 运动蓝牙耳机', 'http://www.itcast.cn', 'CtM3BVrMh4eAWdF2AAA-Fkkc5rM1921911', '￥299.00', 9, 1, 11);
INSERT INTO `tb_content` VALUES (56, '2018-04-10 09:45:17.804328', '2018-04-10 09:45:17.804368', 'besiterBST-0109FO强尼思', 'http://www.itcast.cn', 'CtM3BVrMh62AUlDTAAA-SfqPszY5890026', '￥99.00', 10, 1, 11);
INSERT INTO `tb_content` VALUES (57, '2018-04-10 09:58:35.242596', '2018-04-10 09:58:35.242654', '小米九号平衡车', 'http://www.itcast.cn', 'CtM3BVrMisuAJnyWAABYJxXfN8w9822011', '加100元送小米汽车', 1, 1, 16);
INSERT INTO `tb_content` VALUES (58, '2018-04-10 09:59:16.706582', '2018-04-10 09:59:16.706628', '小米空气净化器2', 'http://www.itcast.cn', 'CtM3BVrMivSAUTWcAAANpJ-t9xg5938130', '加价10元送滤芯', 2, 1, 16);
INSERT INTO `tb_content` VALUES (59, '2018-04-11 06:39:11.953183', '2018-04-11 06:39:11.953229', 'Apple Watch S3 GPS版', 'http://www.itcast.cn', 'CtM3BVrNrY-AdBacAAA7DYB8sjU0120233', '加1元换够蓝牙耳机', 3, 1, 16);
INSERT INTO `tb_content` VALUES (60, '2018-04-11 06:40:29.270078', '2018-04-11 06:40:29.270123', '裴讯智能体脂秤S7P', 'http://www.itcast.cn', 'CtM3BVrNrd2AbRH-AAALOATUqqM8030242', '加1元换够南浮电池', 4, 1, 16);
INSERT INTO `tb_content` VALUES (61, '2018-04-11 06:41:03.054344', '2018-04-11 06:41:03.054390', '360儿童手表电话SE2', 'http://www.itcast.cn', 'CtM3BVrNrf-AJ1ZjAAB_vAApFkw8201014', '￥169.00', 5, 1, 16);
INSERT INTO `tb_content` VALUES (62, '2018-04-11 06:42:11.402524', '2018-04-11 06:42:11.402782', 'S2PGHW-521蓝牙耳机', 'http://www.itcast.cn', 'CtM3BVrNrkOAYXcbAABQocGJtes4517631', '￥449.00', 6, 1, 16);
INSERT INTO `tb_content` VALUES (63, '2018-04-11 06:42:47.985726', '2018-04-11 06:42:47.985771', '科大讯飞 翻译机', 'http://www.itcast.cn', 'CtM3BVrNrmeAPQkiAAAKCg08y3w4028142', '加1元换够电池', 7, 1, 16);
INSERT INTO `tb_content` VALUES (64, '2018-04-11 06:43:19.285413', '2018-04-11 06:43:19.285477', 'Apple AirPods蓝牙耳机', 'http://www.itcast.cn', 'CtM3BVrNroeAUxHkAAAKhSBwnSk3723835', '￥1288.00', 8, 1, 16);
INSERT INTO `tb_content` VALUES (65, '2018-04-11 06:43:59.651504', '2018-04-11 06:43:59.651581', 'ILIFE V5 智能扫地机器人', 'http://www.itcast.cn', 'CtM3BVrNrq-AbFajAABb8Hp05302964728', '加1元换够充电器', 9, 1, 16);
INSERT INTO `tb_content` VALUES (66, '2018-04-11 06:44:29.649982', '2018-04-11 06:44:29.650036', '360记录仪M301', 'http://www.itcast.cn', 'CtM3BVrNrs2AMHPbAABMxVYJeMo0602527', '￥319.00', 10, 1, 16);
INSERT INTO `tb_content` VALUES (67, '2018-04-11 06:46:32.465443', '2018-04-11 06:46:32.465515', 'Apple iPad 平板电脑 2018款', 'http://www.itcast.cn', 'CtM3BVrNr0iAAbCEAABZEWPGxc48830214', '￥2388.00', 1, 1, 18);
INSERT INTO `tb_content` VALUES (68, '2018-04-11 06:47:11.689035', '2018-04-11 06:47:11.689102', '华硕飞行堡垒五代游戏本', 'http://www.itcast.cn', 'CtM3BVrNr2-AbNUxAABwpN-gR8E7784256', '￥5999.00', 2, 1, 18);
INSERT INTO `tb_content` VALUES (69, '2018-04-11 06:48:08.629095', '2018-04-11 06:48:08.629138', 'ThinkPad T480', 'http://www.itcast.cn', 'CtM3BVrNr6iAWKHsAAAcWfJ6OD00441704', '￥8399.00', 3, 1, 18);
INSERT INTO `tb_content` VALUES (70, '2018-04-11 06:48:34.571822', '2018-04-11 06:48:34.571868', '华硕飞行堡垒五代游戏本', 'http://www.itcast.cn', 'CtM3BVrNr8KAD6b2AAByGLpNQV01684706', '￥6299.00', 4, 1, 18);
INSERT INTO `tb_content` VALUES (71, '2018-04-11 06:49:16.497815', '2018-04-26 12:46:17.580482', '艾比格特 无线移动WIFI', 'http://www.itcast.cn', 'CtM3BVrhyhmAehqbAAA3XtuXCto1322736', '￥1399.00', 5, 1, 18);
INSERT INTO `tb_content` VALUES (72, '2018-04-11 06:49:49.839309', '2018-04-11 06:49:49.839349', '360 巴迪龙儿童手表', 'http://www.itcast.cn', 'CtM3BVrNsA2AQUMbAAAbb_vBV6I1599925', '￥999.00', 6, 1, 18);
INSERT INTO `tb_content` VALUES (73, '2018-04-11 06:50:19.092920', '2018-04-11 06:50:19.093006', 'Lenovo 星球大战 绝地挑战 AR眼镜', 'http://www.itcast.cn', 'CtM3BVrNsCuAUvllAAAOkY17G984349519', '￥1999.00', 7, 1, 18);
INSERT INTO `tb_content` VALUES (74, '2018-04-11 06:50:41.252312', '2018-04-11 06:50:41.252453', 'HTC VR眼镜', 'http://www.itcast.cn', 'CtM3BVrNsEGAZTfyAAAasplERbc8856337', '￥4299.00', 8, 1, 18);
INSERT INTO `tb_content` VALUES (75, '2018-04-11 06:51:12.922333', '2018-04-11 06:51:12.922378', 'Apple Watch S3 蜂窝版', 'http://www.itcast.cn', 'CtM3BVrNsGCAeDZeAABtIYY5-s41601603', '￥3188.00', 9, 1, 18);
INSERT INTO `tb_content` VALUES (76, '2018-04-11 06:51:40.271373', '2018-04-11 06:51:40.271422', '360电话手表 X1Pro', 'http://www.itcast.cn', 'CtM3BVrNsHyANXdyAABeDo_Qzeg1095047', '￥1499.00', 10, 1, 18);
INSERT INTO `tb_content` VALUES (77, '2018-04-11 06:53:31.774835', '2018-04-11 06:53:31.774982', '小米笔记本Air', 'http://www.itcast.cn', 'CtM3BVrNsOuAQbJYAABoachTxTo8223966', '', 1, 1, 13);
INSERT INTO `tb_content` VALUES (78, '2018-04-11 06:53:46.540973', '2018-04-11 06:53:46.541041', '电脑', 'http://www.itcast.cn', '', '', 1, 1, 14);
INSERT INTO `tb_content` VALUES (79, '2018-04-11 06:54:00.356620', '2018-04-11 06:54:00.356669', '数码', 'http://www.itcast.cn', '', '', 2, 1, 14);
INSERT INTO `tb_content` VALUES (80, '2018-04-11 06:54:11.361324', '2018-04-11 06:54:11.361367', '配件', 'http://www.itcast.cn', '', '', 3, 1, 14);
INSERT INTO `tb_content` VALUES (81, '2018-04-11 06:54:21.777505', '2018-04-11 06:54:21.777549', '潮电子', 'http://www.itcast.cn', '', '', 4, 1, 14);
INSERT INTO `tb_content` VALUES (82, '2018-04-11 06:54:36.170021', '2018-04-11 06:54:36.170082', 'iPad新品', 'http://www.itcast.cn', '', '', 1, 1, 15);
INSERT INTO `tb_content` VALUES (83, '2018-04-11 06:54:50.484452', '2018-04-11 06:54:50.484499', '限量购', 'http://www.itcast.cn', '', '', 2, 1, 15);
INSERT INTO `tb_content` VALUES (84, '2018-04-11 06:55:11.333884', '2018-04-11 06:55:11.333934', '单反相机', 'http://www.itcast.cn', '', '', 3, 1, 15);
INSERT INTO `tb_content` VALUES (85, '2018-04-11 06:55:31.975211', '2018-04-11 06:55:31.975285', '智能家具', 'http://www.itcast.cn', '', '', 4, 1, 15);
INSERT INTO `tb_content` VALUES (86, '2018-04-11 06:55:43.070748', '2018-04-11 06:55:43.070796', '智能路由', 'http://www.itcast.cn', '', '', 5, 1, 15);
INSERT INTO `tb_content` VALUES (87, '2018-04-11 06:55:57.563944', '2018-04-11 06:55:57.563999', '限时抢', 'http://www.itcast.cn', '', '', 6, 1, 15);
INSERT INTO `tb_content` VALUES (88, '2018-04-11 06:56:14.604570', '2018-04-11 06:56:14.604661', '颂拓', 'http://www.itcast.cn', '', '', 7, 1, 15);
INSERT INTO `tb_content` VALUES (89, '2018-04-11 06:56:25.639226', '2018-04-11 06:56:25.639271', '微单', 'http://www.itcast.cn', '', '', 8, 1, 15);
INSERT INTO `tb_content` VALUES (90, '2018-04-11 06:56:34.836303', '2018-04-11 06:56:34.836374', '耳机', 'http://www.itcast.cn', '', '', 9, 1, 15);
INSERT INTO `tb_content` VALUES (91, '2018-04-11 06:56:58.113652', '2018-04-11 06:56:58.113703', '水星家纺', 'http://www.itcast.cn', 'CtM3BVrNsbqAbi4CAABYmW4pmPA1782942', '', 1, 1, 21);
INSERT INTO `tb_content` VALUES (92, '2018-04-11 06:57:13.215501', '2018-04-11 06:57:13.215548', '家具日用', 'http://www.itcast.cn', '', '', 1, 1, 22);
INSERT INTO `tb_content` VALUES (93, '2018-04-11 06:57:30.689560', '2018-04-11 06:57:30.689647', '家纺寝具', 'http://www.itcast.cn', '', '', 2, 1, 22);
INSERT INTO `tb_content` VALUES (94, '2018-04-11 06:57:50.983438', '2018-04-11 06:57:50.983481', '住宅家具', 'http://www.itcast.cn', '', '', 3, 1, 22);
INSERT INTO `tb_content` VALUES (95, '2018-04-11 06:58:03.324082', '2018-04-11 06:58:03.324128', '厨具餐饮', 'http://www.itcast.cn', '', '', 1, 1, 23);
INSERT INTO `tb_content` VALUES (96, '2018-04-11 06:58:13.694750', '2018-04-11 06:58:13.694795', '被子', 'http://www.itcast.cn', '', '', 2, 1, 23);
INSERT INTO `tb_content` VALUES (97, '2018-04-11 06:58:31.412903', '2018-04-11 06:58:31.412949', '实木床', 'http://www.itcast.cn', '', '', 3, 1, 23);
INSERT INTO `tb_content` VALUES (98, '2018-04-11 06:58:52.598947', '2018-04-11 06:58:52.598992', '箭牌马桶', 'http://www.itcast.cn', '', '', 4, 1, 23);
INSERT INTO `tb_content` VALUES (99, '2018-04-11 06:59:07.562439', '2018-04-11 06:59:07.562541', '指纹锁', 'http://www.itcast.cn', '', '', 5, 1, 23);
INSERT INTO `tb_content` VALUES (100, '2018-04-11 06:59:24.628095', '2018-04-11 06:59:24.628162', '电饭煲', 'http://www.itcast.cn', '', '', 6, 1, 23);
INSERT INTO `tb_content` VALUES (101, '2018-04-11 06:59:37.707050', '2018-04-11 06:59:37.707098', '热水器', 'http://www.itcast.cn', '', '', 7, 1, 23);
INSERT INTO `tb_content` VALUES (102, '2018-04-11 06:59:48.635658', '2018-04-11 06:59:48.635707', '席梦思', 'http://www.itcast.cn', '', '', 8, 1, 23);
INSERT INTO `tb_content` VALUES (103, '2018-04-11 06:59:57.465653', '2018-04-11 06:59:57.465696', '沙发', 'http://www.itcast.cn', '', '', 9, 1, 23);
INSERT INTO `tb_content` VALUES (104, '2018-04-11 07:02:03.780376', '2018-04-11 07:02:03.780419', '洁柔纸巾', 'http://www.itcast.cn', 'CtM3BVrNsuuAQo25AAAmP_AGNMA9808303', '￥45.90', 1, 1, 24);
INSERT INTO `tb_content` VALUES (105, '2018-04-11 07:02:46.547111', '2018-04-11 07:02:46.547187', '花仙子除湿剂', 'http://www.itcast.cn', 'CtM3BVrNsxaAeU4HAAAkQDJCGSY6809195', '￥19.90', 2, 1, 24);
INSERT INTO `tb_content` VALUES (106, '2018-04-11 07:03:18.325791', '2018-04-11 07:03:18.325869', '超能洗衣液', 'http://www.itcast.cn', 'CtM3BVrNszaAMu2PAACwnbap8zI9797082', '惊喜价', 3, 1, 24);
INSERT INTO `tb_content` VALUES (107, '2018-04-11 07:04:04.509724', '2018-04-11 07:04:04.509770', '创简坊 扫帚', 'http://www.itcast.cn', 'CtM3BVrNs2SAf2DEAAAGl2-3v5k2172012', '惊喜价', 4, 1, 24);
INSERT INTO `tb_content` VALUES (108, '2018-04-11 07:04:34.799452', '2018-04-11 07:04:34.799494', '万象玻璃杯', 'http://www.itcast.cn', 'CtM3BVrNs4KAIlJKAAAQmKypd2c1901811', '爆款热销', 5, 1, 24);
INSERT INTO `tb_content` VALUES (109, '2018-04-11 07:05:10.845016', '2018-04-11 07:05:10.845072', '爱丽丝收纳箱', 'http://www.itcast.cn', 'CtM3BVrNs6aAea7bAAAIoddXpoA5854653', '￥66.00', 6, 1, 24);
INSERT INTO `tb_content` VALUES (110, '2018-04-11 07:05:41.147138', '2018-04-11 07:05:41.147210', '塑料袋 加厚', 'http://www.itcast.cn', 'CtM3BVrNs8WAZsplAAB-c4wo3kI9077289', '跳楼价', 7, 1, 24);
INSERT INTO `tb_content` VALUES (111, '2018-04-11 07:06:12.674584', '2018-04-11 07:06:12.674634', '特白惠 塑料杯', 'http://www.itcast.cn', 'CtM3BVrNs-SAaLqBAAAPB44z-fw7327519', '实惠价', 8, 1, 24);
INSERT INTO `tb_content` VALUES (112, '2018-04-11 07:06:54.675238', '2018-04-11 07:06:54.675282', 'Bormioli Rocco意大利进口水果杯', 'http://www.itcast.cn', 'CtM3BVrNtA6AFtbDAAAVJIjSdl43078544', '买一送一', 9, 1, 24);
INSERT INTO `tb_content` VALUES (113, '2018-04-11 07:07:29.946108', '2018-04-11 07:07:29.946151', '宜兴紫砂壶', 'http://www.itcast.cn', 'CtM3BVrNtDGAdlzlAAAZZRjOIrQ5323041', '￥220.00', 10, 1, 24);
INSERT INTO `tb_content` VALUES (114, '2018-04-11 07:09:57.168028', '2018-04-11 07:09:57.168075', '苏泊尔 炒锅', 'http://www.itcast.cn', 'CtM3BVrNtMWANuqTAACac0TCaxU2674435', '￥329.00 惠', 1, 1, 25);
INSERT INTO `tb_content` VALUES (115, '2018-04-11 07:10:32.939492', '2018-04-11 07:10:32.939538', '双立人 多用双刀', 'http://www.itcast.cn', 'CtM3BVrNtOiAKex1AAAOZc14LLQ2319263', '惊喜价', 2, 1, 25);
INSERT INTO `tb_content` VALUES (116, '2018-04-11 07:11:13.792342', '2018-04-11 07:11:13.792386', '爱仕达高压锅', 'http://www.itcast.cn', 'CtM3BVrNtRGAGUbMAACY-WS_oQg9101415', '特惠价', 3, 1, 25);
INSERT INTO `tb_content` VALUES (117, '2018-04-11 07:12:01.447582', '2018-04-11 07:12:01.447628', '维艾圆形不秀钢盆', 'http://www.itcast.cn', 'CtM3BVrNtUGACPW-AAAWNwYc_Yg9317761', '￥69.90', 4, 1, 25);
INSERT INTO `tb_content` VALUES (118, '2018-04-11 07:12:34.001525', '2018-04-11 07:12:34.001609', '家栢利304不锈钢壁挂', 'http://www.itcast.cn', 'CtM3BVrNtWKAUKPkAADhQEAcAgQ4155172', '￥198.00', 5, 1, 25);
INSERT INTO `tb_content` VALUES (119, '2018-04-11 07:13:17.630873', '2018-04-11 07:13:17.630916', '生物海瓷', 'http://www.itcast.cn', 'CtM3BVrNtY2ABEOfAAAWaWuGKss3304555', '震撼价', 6, 1, 25);
INSERT INTO `tb_content` VALUES (120, '2018-04-11 07:13:45.655300', '2018-04-11 07:13:45.655340', '实木筷', 'http://www.itcast.cn', 'CtM3BVrNtamAdrqPAAAYsg3AvQ86108884', '买二送一', 7, 1, 25);
INSERT INTO `tb_content` VALUES (121, '2018-04-11 07:14:11.876255', '2018-04-11 07:14:11.876328', '菜板', 'http://www.itcast.cn', 'CtM3BVrNtcOAYTH1AABVIz70wKU1556174', '只要￥149.00', 8, 1, 25);
INSERT INTO `tb_content` VALUES (122, '2018-04-11 07:14:42.828364', '2018-04-11 07:14:42.828410', '刻度玻璃瓶', 'http://www.itcast.cn', 'CtM3BVrNteKAZhHCAAAMrIL-ugE2533088', '白菜价', 9, 1, 25);
INSERT INTO `tb_content` VALUES (123, '2018-04-11 07:15:11.019433', '2018-04-11 07:15:11.019475', '韩国进口 密封盒', 'http://www.itcast.cn', 'CtM3BVrNtf-AY0FGAAAZwGscZq42512400', '￥39.00', 10, 1, 25);

-- ----------------------------
-- Table structure for tb_content_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_content_category`;
CREATE TABLE `tb_content_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_content_category
-- ----------------------------
INSERT INTO `tb_content_category` VALUES (1, '2018-04-09 16:04:47.411368', '2018-04-09 16:15:26.439825', '轮播图', 'index_lbt');
INSERT INTO `tb_content_category` VALUES (2, '2018-04-09 16:06:12.495372', '2018-04-09 16:15:32.385060', '快讯', 'index_kx');
INSERT INTO `tb_content_category` VALUES (3, '2018-04-09 16:08:36.725277', '2018-04-09 16:15:39.930440', '页头广告', 'index_ytgg');
INSERT INTO `tb_content_category` VALUES (5, '2018-04-09 16:16:47.531007', '2018-04-09 16:16:47.531082', '1楼Logo', 'index_1f_logo');
INSERT INTO `tb_content_category` VALUES (6, '2018-04-09 16:17:49.114299', '2018-04-09 16:17:49.114342', '1楼频道', 'index_1f_pd');
INSERT INTO `tb_content_category` VALUES (7, '2018-04-09 16:18:04.659549', '2018-04-09 16:18:04.659588', '1楼标签', 'index_1f_bq');
INSERT INTO `tb_content_category` VALUES (8, '2018-04-09 16:18:36.176926', '2018-04-09 16:18:36.176991', '1楼时尚新品', 'index_1f_ssxp');
INSERT INTO `tb_content_category` VALUES (10, '2018-04-09 16:19:24.489532', '2018-04-10 09:49:38.621008', '1楼畅享低价', 'index_1f_cxdj');
INSERT INTO `tb_content_category` VALUES (11, '2018-04-09 16:19:46.992482', '2018-04-09 16:19:46.992525', '1楼手机配件', 'index_1f_sjpj');
INSERT INTO `tb_content_category` VALUES (13, '2018-04-09 16:20:32.331884', '2018-04-09 16:20:32.331927', '2楼Logo', 'index_2f_logo');
INSERT INTO `tb_content_category` VALUES (14, '2018-04-09 16:20:46.334441', '2018-04-09 16:20:46.334481', '2楼频道', 'index_2f_pd');
INSERT INTO `tb_content_category` VALUES (15, '2018-04-09 16:21:04.265294', '2018-04-09 16:21:04.265336', '2楼标签', 'index_2f_bq');
INSERT INTO `tb_content_category` VALUES (16, '2018-04-09 16:21:22.869586', '2018-04-10 09:51:49.310917', '2楼加价换够', 'index_2f_jjhg');
INSERT INTO `tb_content_category` VALUES (18, '2018-04-09 16:21:59.579570', '2018-04-10 09:49:44.891002', '2楼畅享低价', 'index_2f_cxdj');
INSERT INTO `tb_content_category` VALUES (21, '2018-04-09 16:22:43.365608', '2018-04-09 16:22:43.365653', '3楼Logo', 'index_3f_logo');
INSERT INTO `tb_content_category` VALUES (22, '2018-04-09 16:22:55.358798', '2018-04-09 16:22:55.358856', '3楼频道', 'index_3f_pd');
INSERT INTO `tb_content_category` VALUES (23, '2018-04-09 16:23:05.211747', '2018-04-09 16:23:05.211785', '3楼标签', 'index_3f_bq');
INSERT INTO `tb_content_category` VALUES (24, '2018-04-09 16:24:01.858753', '2018-04-09 16:24:01.858803', '3楼生活用品', 'index_3f_shyp');
INSERT INTO `tb_content_category` VALUES (25, '2018-04-09 16:24:17.621898', '2018-04-09 16:24:17.621942', '3楼厨房用品', 'index_3f_cfyp');

-- ----------------------------
-- Table structure for tb_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_category`;
CREATE TABLE `tb_goods_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_goods_category_parent_id_5abc16fa_fk_tb_goods_category_id`(`parent_id` ASC) USING BTREE,
  CONSTRAINT `tb_goods_category_parent_id_5abc16fa_fk_tb_goods_category_id` FOREIGN KEY (`parent_id`) REFERENCES `tb_goods_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 556 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_goods_category
-- ----------------------------
INSERT INTO `tb_goods_category` VALUES (1, '2018-04-09 08:03:18.507741', '2018-04-09 08:03:18.507787', '手机', NULL);
INSERT INTO `tb_goods_category` VALUES (2, '2018-04-09 08:04:06.884304', '2018-04-09 08:04:06.884389', '相机', NULL);
INSERT INTO `tb_goods_category` VALUES (3, '2018-04-09 08:04:10.066446', '2018-04-09 08:04:10.066496', '数码', NULL);
INSERT INTO `tb_goods_category` VALUES (4, '2018-04-09 08:05:08.975211', '2018-04-09 08:05:08.975276', '电脑', NULL);
INSERT INTO `tb_goods_category` VALUES (5, '2018-04-09 08:05:11.678905', '2018-04-09 08:05:11.678946', '办公', NULL);
INSERT INTO `tb_goods_category` VALUES (6, '2018-04-09 08:05:15.661520', '2018-04-09 08:05:15.661563', '家用电器', NULL);
INSERT INTO `tb_goods_category` VALUES (7, '2018-04-09 08:05:31.640302', '2018-04-09 08:05:31.640350', '家居', NULL);
INSERT INTO `tb_goods_category` VALUES (8, '2018-04-09 08:05:36.662490', '2018-04-09 08:05:36.662589', '家具', NULL);
INSERT INTO `tb_goods_category` VALUES (9, '2018-04-09 08:05:48.522108', '2018-04-09 08:05:48.522167', '家装', NULL);
INSERT INTO `tb_goods_category` VALUES (10, '2018-04-09 08:05:51.761687', '2018-04-09 08:05:51.761729', '厨具', NULL);
INSERT INTO `tb_goods_category` VALUES (11, '2018-04-09 08:06:00.668337', '2018-04-09 08:06:00.668376', '男装', NULL);
INSERT INTO `tb_goods_category` VALUES (12, '2018-04-09 08:06:03.390254', '2018-04-09 08:06:03.390309', '女装', NULL);
INSERT INTO `tb_goods_category` VALUES (13, '2018-04-09 08:06:06.366323', '2018-04-09 08:06:06.366365', '童装', NULL);
INSERT INTO `tb_goods_category` VALUES (14, '2018-04-09 08:06:11.022792', '2018-04-09 08:06:11.022872', '内衣', NULL);
INSERT INTO `tb_goods_category` VALUES (15, '2018-04-09 08:06:39.183635', '2018-04-09 08:06:39.183676', '女鞋', NULL);
INSERT INTO `tb_goods_category` VALUES (16, '2018-04-09 08:08:55.929149', '2018-04-09 08:08:55.929221', '箱包', NULL);
INSERT INTO `tb_goods_category` VALUES (17, '2018-04-09 08:09:02.512577', '2018-04-09 08:09:02.512622', '钟表', NULL);
INSERT INTO `tb_goods_category` VALUES (18, '2018-04-09 08:09:32.381612', '2018-04-09 08:09:32.381652', '珠宝', NULL);
INSERT INTO `tb_goods_category` VALUES (19, '2018-04-09 08:09:46.196811', '2018-04-09 08:09:46.196853', '男鞋', NULL);
INSERT INTO `tb_goods_category` VALUES (20, '2018-04-09 08:09:50.331597', '2018-04-09 08:09:50.331661', '运动', NULL);
INSERT INTO `tb_goods_category` VALUES (21, '2018-04-09 08:09:53.161070', '2018-04-09 08:09:53.161115', '户外', NULL);
INSERT INTO `tb_goods_category` VALUES (22, '2018-04-09 08:11:25.870180', '2018-04-09 08:11:25.870221', '房产', NULL);
INSERT INTO `tb_goods_category` VALUES (23, '2018-04-09 08:11:32.357967', '2018-04-09 08:11:32.358008', '汽车', NULL);
INSERT INTO `tb_goods_category` VALUES (24, '2018-04-09 08:11:38.193287', '2018-04-09 08:11:38.193342', '汽车用品', NULL);
INSERT INTO `tb_goods_category` VALUES (25, '2018-04-09 08:11:43.723485', '2018-04-09 08:11:43.723526', '母婴', NULL);
INSERT INTO `tb_goods_category` VALUES (26, '2018-04-09 08:11:53.163455', '2018-04-09 08:11:53.163509', '玩具乐器', NULL);
INSERT INTO `tb_goods_category` VALUES (27, '2018-04-09 08:56:04.627338', '2018-04-09 08:56:04.627400', '食品', NULL);
INSERT INTO `tb_goods_category` VALUES (28, '2018-04-09 08:56:09.781208', '2018-04-09 08:56:09.781251', '酒类', NULL);
INSERT INTO `tb_goods_category` VALUES (29, '2018-04-09 08:56:13.794667', '2018-04-09 08:56:13.794706', '生鲜', NULL);
INSERT INTO `tb_goods_category` VALUES (30, '2018-04-09 08:56:16.944058', '2018-04-09 08:56:16.944197', '特产', NULL);
INSERT INTO `tb_goods_category` VALUES (31, '2018-04-09 08:56:20.053145', '2018-04-09 08:56:20.053183', '图书', NULL);
INSERT INTO `tb_goods_category` VALUES (32, '2018-04-09 08:56:33.399045', '2018-04-09 08:56:33.399100', '音像', NULL);
INSERT INTO `tb_goods_category` VALUES (33, '2018-04-09 08:56:40.072007', '2018-04-09 08:56:40.072045', '电子书', NULL);
INSERT INTO `tb_goods_category` VALUES (34, '2018-04-09 08:56:44.456894', '2018-04-09 08:56:44.456936', '机票', NULL);
INSERT INTO `tb_goods_category` VALUES (35, '2018-04-09 08:56:50.652838', '2018-04-09 08:56:50.652918', '酒店', NULL);
INSERT INTO `tb_goods_category` VALUES (36, '2018-04-09 08:56:59.213818', '2018-04-09 08:56:59.213867', '旅游', NULL);
INSERT INTO `tb_goods_category` VALUES (37, '2018-04-09 08:57:04.589202', '2018-04-09 08:57:04.589251', '生活', NULL);
INSERT INTO `tb_goods_category` VALUES (38, '2018-04-09 09:29:22.371056', '2018-04-09 09:29:22.371100', '手机通讯', 1);
INSERT INTO `tb_goods_category` VALUES (39, '2018-04-09 09:30:48.196806', '2018-04-09 09:30:48.196857', '手机配件', 1);
INSERT INTO `tb_goods_category` VALUES (40, '2018-04-09 09:34:17.533219', '2018-04-09 09:34:17.533261', '摄影摄像', 2);
INSERT INTO `tb_goods_category` VALUES (41, '2018-04-09 09:34:34.235105', '2018-04-09 09:34:34.235143', '数码配件', 3);
INSERT INTO `tb_goods_category` VALUES (42, '2018-04-09 09:35:34.785967', '2018-04-09 09:35:34.786010', '影音娱乐', 3);
INSERT INTO `tb_goods_category` VALUES (43, '2018-04-09 09:35:45.307642', '2018-04-09 09:35:45.307682', '智能设备', 3);
INSERT INTO `tb_goods_category` VALUES (44, '2018-04-09 09:35:52.032395', '2018-04-09 09:35:52.032460', '电子教育', 3);
INSERT INTO `tb_goods_category` VALUES (45, '2018-04-09 09:37:07.280693', '2018-04-09 09:37:07.280744', '电脑整机', 4);
INSERT INTO `tb_goods_category` VALUES (46, '2018-04-09 09:37:18.429870', '2018-04-09 09:37:18.429912', '电脑配件', 4);
INSERT INTO `tb_goods_category` VALUES (47, '2018-04-09 09:37:28.654365', '2018-04-09 09:37:28.654407', '外设产品', 4);
INSERT INTO `tb_goods_category` VALUES (48, '2018-04-09 09:37:40.238157', '2018-04-09 09:37:40.238206', '办公设备', 5);
INSERT INTO `tb_goods_category` VALUES (49, '2018-04-09 09:37:49.104183', '2018-04-09 09:37:49.104222', '文具耗材', 5);
INSERT INTO `tb_goods_category` VALUES (51, '2018-04-09 09:38:02.637781', '2018-04-09 09:38:02.637834', '空调', 6);
INSERT INTO `tb_goods_category` VALUES (52, '2018-04-09 09:38:07.771986', '2018-04-09 09:38:07.772027', '洗衣机', 6);
INSERT INTO `tb_goods_category` VALUES (53, '2018-04-09 09:38:12.913525', '2018-04-09 09:38:12.913568', '冰箱', 6);
INSERT INTO `tb_goods_category` VALUES (55, '2018-04-09 09:38:38.885029', '2018-04-09 09:38:38.885076', '生活电器', 6);
INSERT INTO `tb_goods_category` VALUES (56, '2018-04-09 09:40:41.787484', '2018-04-09 09:40:41.787552', '生活日用', 7);
INSERT INTO `tb_goods_category` VALUES (57, '2018-04-09 09:41:13.610650', '2018-04-09 09:41:13.610693', '家纺', 7);
INSERT INTO `tb_goods_category` VALUES (58, '2018-04-09 09:41:29.602616', '2018-04-09 09:41:29.602671', '灯具', 8);
INSERT INTO `tb_goods_category` VALUES (59, '2018-04-09 09:41:36.701091', '2018-04-09 09:41:36.701133', '家具', 8);
INSERT INTO `tb_goods_category` VALUES (60, '2018-04-09 09:42:05.085107', '2018-04-09 09:42:05.085176', '家装软饰', 9);
INSERT INTO `tb_goods_category` VALUES (61, '2018-04-09 09:42:14.306983', '2018-04-09 09:42:14.307046', '家装主材', 9);
INSERT INTO `tb_goods_category` VALUES (62, '2018-04-09 09:42:27.065822', '2018-04-09 09:42:27.065865', '五金电工', 9);
INSERT INTO `tb_goods_category` VALUES (63, '2018-04-09 09:42:33.681358', '2018-04-09 09:42:33.681419', '厨具', 10);
INSERT INTO `tb_goods_category` VALUES (64, '2018-04-09 09:42:44.381715', '2018-04-09 09:42:44.381761', '厨房卫浴', 10);
INSERT INTO `tb_goods_category` VALUES (65, '2018-04-09 09:43:11.880846', '2018-04-09 09:43:11.880932', '男装', 11);
INSERT INTO `tb_goods_category` VALUES (66, '2018-04-09 09:43:20.531461', '2018-04-09 09:43:20.531505', '女装', 12);
INSERT INTO `tb_goods_category` VALUES (67, '2018-04-09 09:43:32.392066', '2018-04-09 09:43:32.392117', '童装', 13);
INSERT INTO `tb_goods_category` VALUES (68, '2018-04-09 09:43:43.728460', '2018-04-09 09:43:43.728501', '童鞋', 13);
INSERT INTO `tb_goods_category` VALUES (69, '2018-04-09 09:43:52.886429', '2018-04-09 09:43:52.886473', '内衣', 14);
INSERT INTO `tb_goods_category` VALUES (70, '2018-04-09 09:44:48.786459', '2018-04-09 09:44:48.786505', '配饰', 14);
INSERT INTO `tb_goods_category` VALUES (71, '2018-04-09 09:45:52.322960', '2018-04-09 09:45:52.323019', '时尚女鞋', 15);
INSERT INTO `tb_goods_category` VALUES (72, '2018-04-09 09:46:13.344472', '2018-04-09 09:46:13.344512', '潮流女包', 16);
INSERT INTO `tb_goods_category` VALUES (73, '2018-04-09 09:46:26.135392', '2018-04-09 09:46:26.135450', '精品男包', 16);
INSERT INTO `tb_goods_category` VALUES (74, '2018-04-09 09:46:32.838944', '2018-04-09 09:46:32.838985', '功能箱包', 16);
INSERT INTO `tb_goods_category` VALUES (75, '2018-04-09 09:46:46.934480', '2018-04-09 09:46:46.934544', '钟表', 17);
INSERT INTO `tb_goods_category` VALUES (76, '2018-04-09 09:47:06.012737', '2018-04-09 09:47:06.012780', '珠宝首饰', 18);
INSERT INTO `tb_goods_category` VALUES (77, '2018-04-09 09:49:49.168425', '2018-04-09 09:49:49.168465', '流行男鞋', 19);
INSERT INTO `tb_goods_category` VALUES (78, '2018-04-09 09:49:59.855801', '2018-04-09 09:49:59.855840', '运动鞋包', 20);
INSERT INTO `tb_goods_category` VALUES (79, '2018-04-09 09:50:11.153031', '2018-04-09 09:50:11.153072', '运动服饰', 20);
INSERT INTO `tb_goods_category` VALUES (80, '2018-04-09 09:50:25.907804', '2018-04-09 09:50:25.907850', '健身训练', 20);
INSERT INTO `tb_goods_category` VALUES (81, '2018-04-09 09:50:44.505123', '2018-04-09 09:50:44.505169', '骑行运动', 20);
INSERT INTO `tb_goods_category` VALUES (82, '2018-04-09 09:50:52.703445', '2018-04-09 09:50:52.703485', '体育用品', 20);
INSERT INTO `tb_goods_category` VALUES (83, '2018-04-09 09:51:03.497014', '2018-04-09 09:51:03.497061', '户外鞋服', 21);
INSERT INTO `tb_goods_category` VALUES (84, '2018-04-09 09:51:23.359440', '2018-04-09 09:51:23.359483', '户外装备', 21);
INSERT INTO `tb_goods_category` VALUES (85, '2018-04-09 09:51:51.629105', '2018-04-09 09:51:51.629160', '房产', 22);
INSERT INTO `tb_goods_category` VALUES (86, '2018-04-09 09:52:55.706995', '2018-04-09 09:52:55.707037', '汽车车型', 23);
INSERT INTO `tb_goods_category` VALUES (87, '2018-04-09 09:53:17.292113', '2018-04-09 09:53:17.292164', '维修保养', 23);
INSERT INTO `tb_goods_category` VALUES (88, '2018-04-09 09:53:27.099413', '2018-04-09 09:53:27.099455', '汽车装饰', 24);
INSERT INTO `tb_goods_category` VALUES (89, '2018-04-09 09:53:35.047364', '2018-04-09 09:53:35.047410', '车载电器', 24);
INSERT INTO `tb_goods_category` VALUES (90, '2018-04-09 09:53:47.657176', '2018-04-09 09:53:47.657269', '安全自驾', 24);
INSERT INTO `tb_goods_category` VALUES (91, '2018-04-09 09:54:40.431814', '2018-04-09 09:54:40.431856', '奶粉', 25);
INSERT INTO `tb_goods_category` VALUES (92, '2018-04-09 09:55:00.705824', '2018-04-09 09:55:00.705930', '营养辅食', 25);
INSERT INTO `tb_goods_category` VALUES (93, '2018-04-09 09:55:31.822948', '2018-04-09 09:55:31.822990', '尿裤湿斤', 25);
INSERT INTO `tb_goods_category` VALUES (94, '2018-04-09 09:55:53.206682', '2018-04-09 09:55:53.206725', '玩具', 26);
INSERT INTO `tb_goods_category` VALUES (95, '2018-04-09 09:55:59.998048', '2018-04-09 09:55:59.998088', '乐器', 26);
INSERT INTO `tb_goods_category` VALUES (96, '2018-04-09 09:56:37.026947', '2018-04-09 09:56:37.026990', '新鲜水果', 27);
INSERT INTO `tb_goods_category` VALUES (97, '2018-04-09 09:56:47.145970', '2018-04-09 09:56:47.146014', '蔬菜蛋品', 27);
INSERT INTO `tb_goods_category` VALUES (98, '2018-04-09 09:57:06.761066', '2018-04-09 09:57:06.761109', '精选肉类', 27);
INSERT INTO `tb_goods_category` VALUES (99, '2018-04-09 09:57:18.402356', '2018-04-09 09:57:18.402429', '中外名酒', 28);
INSERT INTO `tb_goods_category` VALUES (100, '2018-04-09 09:57:32.278070', '2018-04-09 09:57:32.278132', '海鲜水产', 29);
INSERT INTO `tb_goods_category` VALUES (101, '2018-04-09 09:57:55.205251', '2018-04-09 09:57:55.205317', '冷饮冻食', 29);
INSERT INTO `tb_goods_category` VALUES (102, '2018-04-09 09:58:08.325159', '2018-04-09 09:58:08.325199', '地方特产', 30);
INSERT INTO `tb_goods_category` VALUES (103, '2018-04-09 09:59:23.347674', '2018-04-09 09:59:23.347716', '少儿', 31);
INSERT INTO `tb_goods_category` VALUES (104, '2018-04-09 09:59:41.251268', '2018-04-09 09:59:41.251307', '教育', 31);
INSERT INTO `tb_goods_category` VALUES (105, '2018-04-09 09:59:47.532578', '2018-04-09 09:59:47.532627', '文艺', 31);
INSERT INTO `tb_goods_category` VALUES (106, '2018-04-09 10:00:07.689899', '2018-04-09 10:00:07.689986', '音像', 32);
INSERT INTO `tb_goods_category` VALUES (107, '2018-04-09 10:00:15.146903', '2018-04-09 10:00:15.146943', '电子书', 33);
INSERT INTO `tb_goods_category` VALUES (108, '2018-04-09 10:00:24.463854', '2018-04-09 10:00:24.463893', '科技', 31);
INSERT INTO `tb_goods_category` VALUES (109, '2018-04-09 10:01:04.222035', '2018-04-09 10:01:04.222085', '交通出行', 34);
INSERT INTO `tb_goods_category` VALUES (110, '2018-04-09 10:01:26.371711', '2018-04-09 10:01:26.371761', '酒店预订', 35);
INSERT INTO `tb_goods_category` VALUES (111, '2018-04-09 10:01:38.237549', '2018-04-09 10:01:38.237624', '旅游度假', 36);
INSERT INTO `tb_goods_category` VALUES (112, '2018-04-09 10:01:54.257150', '2018-04-09 10:01:54.257190', '演出票务', 37);
INSERT INTO `tb_goods_category` VALUES (113, '2018-04-09 10:02:04.652269', '2018-04-09 10:02:04.652320', '生活缴费', 37);
INSERT INTO `tb_goods_category` VALUES (114, '2018-04-09 10:02:12.979008', '2018-04-09 10:02:12.979053', '生活服务', 37);
INSERT INTO `tb_goods_category` VALUES (115, '2018-04-09 10:03:27.799903', '2018-04-09 10:03:27.799952', '手机', 38);
INSERT INTO `tb_goods_category` VALUES (116, '2018-04-09 10:03:36.651429', '2018-04-09 10:03:36.651502', '游戏手机', 38);
INSERT INTO `tb_goods_category` VALUES (117, '2018-04-09 10:03:50.946486', '2018-04-09 10:03:50.946530', '老人机', 38);
INSERT INTO `tb_goods_category` VALUES (118, '2018-04-09 10:04:03.363153', '2018-04-09 10:04:03.363464', '对讲机', 38);
INSERT INTO `tb_goods_category` VALUES (119, '2018-04-09 10:04:29.550363', '2018-04-09 10:04:29.550406', '手机壳', 39);
INSERT INTO `tb_goods_category` VALUES (120, '2018-04-09 10:04:40.174739', '2018-04-09 10:04:40.174807', '贴膜', 39);
INSERT INTO `tb_goods_category` VALUES (121, '2018-04-09 10:04:49.015076', '2018-04-09 10:04:49.015119', '手机存储卡', 39);
INSERT INTO `tb_goods_category` VALUES (122, '2018-04-09 10:04:55.274758', '2018-04-09 10:04:55.274991', '数据线', 39);
INSERT INTO `tb_goods_category` VALUES (123, '2018-04-09 10:05:01.247210', '2018-04-09 10:05:01.247253', '充电器', 39);
INSERT INTO `tb_goods_category` VALUES (124, '2018-04-09 10:05:08.572487', '2018-04-09 10:05:08.572568', '无线充电器', 39);
INSERT INTO `tb_goods_category` VALUES (125, '2018-04-09 10:05:15.548216', '2018-04-09 10:05:15.548283', '手机耳机', 39);
INSERT INTO `tb_goods_category` VALUES (126, '2018-04-09 10:05:24.038601', '2018-04-09 10:05:24.038668', '移动电源', 39);
INSERT INTO `tb_goods_category` VALUES (127, '2018-04-09 10:05:33.149296', '2018-04-09 10:05:33.149367', '手机支架', 39);
INSERT INTO `tb_goods_category` VALUES (128, '2018-04-09 10:05:43.691569', '2018-04-09 10:05:43.691625', '数码相机', 40);
INSERT INTO `tb_goods_category` VALUES (129, '2018-04-09 10:06:02.872228', '2018-04-09 10:06:02.872272', '微单相机', 40);
INSERT INTO `tb_goods_category` VALUES (130, '2018-04-09 10:06:12.120240', '2018-04-09 10:06:12.120292', '单反相机', 40);
INSERT INTO `tb_goods_category` VALUES (131, '2018-04-09 10:06:24.655699', '2018-04-09 10:06:24.655738', '拍立得', 40);
INSERT INTO `tb_goods_category` VALUES (132, '2018-04-09 10:06:32.889706', '2018-04-09 10:06:32.889745', '运动相机', 40);
INSERT INTO `tb_goods_category` VALUES (133, '2018-04-09 10:06:40.857296', '2018-04-09 10:06:40.857348', '摄像机', 40);
INSERT INTO `tb_goods_category` VALUES (134, '2018-04-09 10:06:47.823916', '2018-04-09 10:06:47.823964', '镜头', 40);
INSERT INTO `tb_goods_category` VALUES (135, '2018-04-09 10:06:59.148589', '2018-04-09 10:06:59.148671', '数码相框', 40);
INSERT INTO `tb_goods_category` VALUES (136, '2018-04-09 10:07:12.634274', '2018-04-09 10:07:12.634339', '存储卡', 41);
INSERT INTO `tb_goods_category` VALUES (137, '2018-04-09 10:07:21.818264', '2018-04-09 10:07:21.818310', '三脚架', 41);
INSERT INTO `tb_goods_category` VALUES (138, '2018-04-09 10:07:47.797150', '2018-04-09 10:07:47.797241', '闪光灯', 41);
INSERT INTO `tb_goods_category` VALUES (139, '2018-04-09 10:08:05.025411', '2018-04-09 10:08:05.025455', '电池充电器', 41);
INSERT INTO `tb_goods_category` VALUES (140, '2018-04-09 10:08:14.509554', '2018-04-09 10:08:14.509593', '读卡器', 41);
INSERT INTO `tb_goods_category` VALUES (141, '2018-04-09 10:08:27.331909', '2018-04-09 10:08:27.332059', '耳机耳麦', 42);
INSERT INTO `tb_goods_category` VALUES (142, '2018-04-09 10:08:39.528114', '2018-04-09 10:08:39.528322', '音箱音响', 42);
INSERT INTO `tb_goods_category` VALUES (143, '2018-04-09 10:08:55.509999', '2018-04-09 10:08:55.510276', '智能音箱', 42);
INSERT INTO `tb_goods_category` VALUES (144, '2018-04-09 10:09:04.503537', '2018-04-09 10:09:04.503583', '收音机', 42);
INSERT INTO `tb_goods_category` VALUES (145, '2018-04-09 10:09:15.076932', '2018-04-09 10:09:15.077010', '麦克风', 42);
INSERT INTO `tb_goods_category` VALUES (146, '2018-04-09 10:09:29.493302', '2018-04-09 10:09:29.493374', '专业音频', 42);
INSERT INTO `tb_goods_category` VALUES (147, '2018-04-09 10:09:38.404834', '2018-04-09 10:09:38.404878', '智能手环', 43);
INSERT INTO `tb_goods_category` VALUES (148, '2018-04-09 10:09:47.213524', '2018-04-09 10:09:47.213567', '智能手表', 43);
INSERT INTO `tb_goods_category` VALUES (149, '2018-04-09 10:10:04.097229', '2018-04-09 10:10:04.097339', '智能眼镜', 43);
INSERT INTO `tb_goods_category` VALUES (150, '2018-04-09 10:10:10.770129', '2018-04-09 10:10:10.770173', '智能机器人', 43);
INSERT INTO `tb_goods_category` VALUES (151, '2018-04-09 10:10:32.247134', '2018-04-09 10:10:32.247204', '健康监测', 43);
INSERT INTO `tb_goods_category` VALUES (152, '2018-04-09 10:10:47.727920', '2018-04-09 10:10:47.727987', '学生平板', 44);
INSERT INTO `tb_goods_category` VALUES (153, '2018-04-09 10:11:01.757694', '2018-04-09 10:11:01.757734', '点读机', 44);
INSERT INTO `tb_goods_category` VALUES (154, '2018-04-09 10:11:46.678814', '2018-04-09 10:11:46.678857', '早教益智', 44);
INSERT INTO `tb_goods_category` VALUES (155, '2018-04-09 10:12:00.019422', '2018-04-09 10:12:00.019466', '电纸书', 44);
INSERT INTO `tb_goods_category` VALUES (156, '2018-04-09 10:12:08.762703', '2018-04-09 10:12:08.762746', '电子词典', 44);
INSERT INTO `tb_goods_category` VALUES (157, '2018-04-09 10:12:54.929293', '2018-04-09 10:12:54.929354', '笔记本', 45);
INSERT INTO `tb_goods_category` VALUES (158, '2018-04-09 10:13:12.992620', '2018-04-09 10:13:12.992705', '游戏本', 45);
INSERT INTO `tb_goods_category` VALUES (159, '2018-04-09 10:13:21.687276', '2018-04-09 10:13:21.687320', '平板电脑', 45);
INSERT INTO `tb_goods_category` VALUES (160, '2018-04-09 10:13:41.221773', '2018-04-09 10:13:41.221816', '台式机', 45);
INSERT INTO `tb_goods_category` VALUES (161, '2018-04-09 10:13:51.268043', '2018-04-09 10:13:51.268533', '一体机', 45);
INSERT INTO `tb_goods_category` VALUES (162, '2018-04-09 10:14:07.305384', '2018-04-09 10:14:07.305465', '工作站', 45);
INSERT INTO `tb_goods_category` VALUES (163, '2018-04-09 10:16:57.458227', '2018-04-09 10:16:57.458275', '显示器', 46);
INSERT INTO `tb_goods_category` VALUES (164, '2018-04-09 10:17:08.245240', '2018-04-09 10:17:08.245285', 'CPU', 46);
INSERT INTO `tb_goods_category` VALUES (165, '2018-04-09 10:17:15.241497', '2018-04-09 10:17:15.241614', '主板', 46);
INSERT INTO `tb_goods_category` VALUES (166, '2018-04-09 10:17:25.695159', '2018-04-09 10:17:25.695207', '显卡', 46);
INSERT INTO `tb_goods_category` VALUES (167, '2018-04-09 10:17:35.032649', '2018-04-09 10:17:35.032696', '硬盘', 46);
INSERT INTO `tb_goods_category` VALUES (168, '2018-04-09 10:17:42.230729', '2018-04-09 10:17:42.230770', '内存', 46);
INSERT INTO `tb_goods_category` VALUES (169, '2018-04-09 10:17:50.016675', '2018-04-09 10:17:50.016722', '机箱', 46);
INSERT INTO `tb_goods_category` VALUES (170, '2018-04-09 10:17:55.578428', '2018-04-09 10:17:55.578482', '电源', 46);
INSERT INTO `tb_goods_category` VALUES (171, '2018-04-09 10:18:05.104997', '2018-04-09 10:18:05.105038', '散热器', 46);
INSERT INTO `tb_goods_category` VALUES (172, '2018-04-09 10:18:18.113135', '2018-04-09 10:18:18.113185', '鼠标', 47);
INSERT INTO `tb_goods_category` VALUES (173, '2018-04-09 10:18:26.352592', '2018-04-09 10:18:26.352654', '键盘', 47);
INSERT INTO `tb_goods_category` VALUES (174, '2018-04-09 10:18:45.584707', '2018-04-09 10:18:45.584746', '键鼠套装', 47);
INSERT INTO `tb_goods_category` VALUES (175, '2018-04-09 10:18:54.592085', '2018-04-09 10:18:54.592146', 'U盘', 47);
INSERT INTO `tb_goods_category` VALUES (176, '2018-04-09 10:19:02.774592', '2018-04-09 10:19:02.774644', '移动硬盘', 47);
INSERT INTO `tb_goods_category` VALUES (177, '2018-04-09 10:19:29.344648', '2018-04-09 10:19:29.344688', '鼠标垫', 47);
INSERT INTO `tb_goods_category` VALUES (178, '2018-04-09 10:20:01.647599', '2018-04-09 10:20:01.647652', '摄像头', 47);
INSERT INTO `tb_goods_category` VALUES (179, '2018-04-09 10:20:10.633329', '2018-04-09 10:20:10.633371', '线缆', 47);
INSERT INTO `tb_goods_category` VALUES (180, '2018-04-09 10:20:29.108708', '2018-04-09 10:20:29.108750', '手写板', 47);
INSERT INTO `tb_goods_category` VALUES (181, '2018-04-09 10:20:50.965054', '2018-04-09 10:20:50.965110', '投影机', 48);
INSERT INTO `tb_goods_category` VALUES (182, '2018-04-09 10:21:11.973042', '2018-04-09 10:21:11.973085', '投影配件', 48);
INSERT INTO `tb_goods_category` VALUES (183, '2018-04-09 10:28:38.875264', '2018-04-09 10:28:38.875323', '多功能一体机', 48);
INSERT INTO `tb_goods_category` VALUES (184, '2018-04-09 10:28:58.044119', '2018-04-09 10:28:58.044161', '打印机', 48);
INSERT INTO `tb_goods_category` VALUES (185, '2018-04-09 10:29:24.286741', '2018-04-09 10:29:24.286786', '硒鼓墨粉', 49);
INSERT INTO `tb_goods_category` VALUES (186, '2018-04-09 10:29:32.433762', '2018-04-09 10:29:32.433832', '墨盒', 49);
INSERT INTO `tb_goods_category` VALUES (187, '2018-04-09 10:29:40.185494', '2018-04-09 10:29:40.185535', '色带', 49);
INSERT INTO `tb_goods_category` VALUES (188, '2018-04-09 10:29:51.285563', '2018-04-09 10:29:51.285630', '纸类', 49);
INSERT INTO `tb_goods_category` VALUES (189, '2018-04-09 10:30:02.125287', '2018-04-09 10:30:02.125326', '办公文具', 49);
INSERT INTO `tb_goods_category` VALUES (190, '2018-04-09 10:30:13.747314', '2018-04-09 10:30:13.747366', '文件收纳', 49);
INSERT INTO `tb_goods_category` VALUES (191, '2018-04-09 10:30:25.486463', '2018-04-09 10:30:25.486503', '计算器', 49);
INSERT INTO `tb_goods_category` VALUES (192, '2018-04-09 10:30:33.569198', '2018-04-09 10:30:33.569262', '笔类', 49);
INSERT INTO `tb_goods_category` VALUES (197, '2018-04-09 10:31:30.282436', '2018-04-09 10:31:30.282480', '壁挂式空调', 51);
INSERT INTO `tb_goods_category` VALUES (198, '2018-04-09 10:31:46.070209', '2018-04-09 10:31:46.070256', '柜式空调', 51);
INSERT INTO `tb_goods_category` VALUES (199, '2018-04-09 10:31:53.705108', '2018-04-09 10:31:53.705152', '中央空调', 51);
INSERT INTO `tb_goods_category` VALUES (200, '2018-04-09 10:32:02.828470', '2018-04-09 10:32:02.828512', '节能空调', 51);
INSERT INTO `tb_goods_category` VALUES (201, '2018-04-09 10:32:10.699372', '2018-04-09 10:32:10.699438', '智能空调', 51);
INSERT INTO `tb_goods_category` VALUES (202, '2018-04-09 10:32:21.537627', '2018-04-09 10:32:21.537671', '滚筒洗衣机', 52);
INSERT INTO `tb_goods_category` VALUES (203, '2018-04-09 10:32:40.271821', '2018-04-09 10:32:40.271865', '洗烘一体机', 52);
INSERT INTO `tb_goods_category` VALUES (204, '2018-04-09 10:33:07.290966', '2018-04-09 10:33:07.291127', '波轮洗衣机', 52);
INSERT INTO `tb_goods_category` VALUES (205, '2018-04-09 10:33:17.913196', '2018-04-09 10:33:17.913237', '迷你洗衣机', 52);
INSERT INTO `tb_goods_category` VALUES (206, '2018-04-09 10:33:30.617336', '2018-04-09 10:33:30.617428', '多门', 53);
INSERT INTO `tb_goods_category` VALUES (207, '2018-04-09 10:35:16.138738', '2018-04-09 10:35:16.138781', '对开门', 53);
INSERT INTO `tb_goods_category` VALUES (208, '2018-04-09 10:35:27.196414', '2018-04-09 10:35:27.196483', '三门', 53);
INSERT INTO `tb_goods_category` VALUES (209, '2018-04-09 10:35:35.870793', '2018-04-09 10:35:35.870876', '双门', 53);
INSERT INTO `tb_goods_category` VALUES (215, '2018-04-09 10:44:09.292409', '2018-04-09 10:44:09.292481', '空气净化器', 55);
INSERT INTO `tb_goods_category` VALUES (216, '2018-04-09 10:44:21.773107', '2018-04-09 10:44:21.773185', '电风扇', 55);
INSERT INTO `tb_goods_category` VALUES (217, '2018-04-09 10:44:30.623621', '2018-04-09 10:44:30.623668', '扫地机器人', 55);
INSERT INTO `tb_goods_category` VALUES (218, '2018-04-09 10:44:47.127513', '2018-04-09 10:44:47.127554', '拖地机', 55);
INSERT INTO `tb_goods_category` VALUES (219, '2018-04-09 10:44:57.367766', '2018-04-09 10:44:57.367812', '干衣机', 55);
INSERT INTO `tb_goods_category` VALUES (220, '2018-04-09 10:45:05.140806', '2018-04-09 10:45:05.140845', '电话机', 55);
INSERT INTO `tb_goods_category` VALUES (221, '2018-04-09 10:45:43.383869', '2018-04-09 10:45:43.383911', '收纳用品', 56);
INSERT INTO `tb_goods_category` VALUES (222, '2018-04-09 10:45:55.997898', '2018-04-09 10:45:55.997945', '雨伞雨具', 56);
INSERT INTO `tb_goods_category` VALUES (223, '2018-04-09 10:46:11.700313', '2018-04-09 10:46:11.700382', '净化除味', 56);
INSERT INTO `tb_goods_category` VALUES (224, '2018-04-09 10:46:21.798864', '2018-04-09 10:46:21.798963', '浴室用品', 56);
INSERT INTO `tb_goods_category` VALUES (225, '2018-04-09 10:46:38.851705', '2018-04-09 10:46:38.851744', '缝纫针织', 56);
INSERT INTO `tb_goods_category` VALUES (226, '2018-04-09 10:47:29.768792', '2018-04-09 10:47:29.768851', '床品套件', 57);
INSERT INTO `tb_goods_category` VALUES (227, '2018-04-09 10:47:43.068195', '2018-04-09 10:47:43.068238', '被子', 57);
INSERT INTO `tb_goods_category` VALUES (228, '2018-04-09 10:47:55.954652', '2018-04-09 10:47:55.954704', '枕芯', 57);
INSERT INTO `tb_goods_category` VALUES (229, '2018-04-09 10:48:07.054248', '2018-04-09 10:48:07.054299', '蚊帐', 57);
INSERT INTO `tb_goods_category` VALUES (230, '2018-04-09 10:48:13.148110', '2018-04-09 10:48:13.148207', '凉席', 57);
INSERT INTO `tb_goods_category` VALUES (231, '2018-04-09 10:48:22.983566', '2018-04-09 10:48:22.983608', '毛巾浴巾', 57);
INSERT INTO `tb_goods_category` VALUES (232, '2018-04-09 10:48:40.536740', '2018-04-09 10:48:40.537102', '吸顶灯', 58);
INSERT INTO `tb_goods_category` VALUES (233, '2018-04-09 10:48:49.011808', '2018-04-09 10:48:49.011852', '吊灯', 58);
INSERT INTO `tb_goods_category` VALUES (234, '2018-04-09 10:48:57.503376', '2018-04-09 10:48:57.503551', '台灯', 58);
INSERT INTO `tb_goods_category` VALUES (235, '2018-04-09 10:49:09.990632', '2018-04-09 10:49:09.990674', '筒灯射灯', 58);
INSERT INTO `tb_goods_category` VALUES (236, '2018-04-09 10:49:19.476924', '2018-04-09 10:49:19.476970', '装饰灯', 58);
INSERT INTO `tb_goods_category` VALUES (237, '2018-04-09 10:49:34.463529', '2018-04-09 10:49:34.463587', '卧室家具', 59);
INSERT INTO `tb_goods_category` VALUES (238, '2018-04-09 10:49:43.863760', '2018-04-09 10:49:43.863805', '客厅家具', 59);
INSERT INTO `tb_goods_category` VALUES (239, '2018-04-09 10:49:52.890521', '2018-04-09 10:49:52.890566', '餐厅家具', 59);
INSERT INTO `tb_goods_category` VALUES (240, '2018-04-09 10:50:00.371566', '2018-04-09 10:50:00.371818', '书房家具', 59);
INSERT INTO `tb_goods_category` VALUES (241, '2018-04-09 10:50:07.098922', '2018-04-09 10:50:07.098961', '儿童家具', 59);
INSERT INTO `tb_goods_category` VALUES (242, '2018-04-09 10:50:19.143462', '2018-04-09 10:50:19.143527', '装饰字画', 60);
INSERT INTO `tb_goods_category` VALUES (243, '2018-04-09 10:50:26.723524', '2018-04-09 10:50:26.723568', '装饰摆件', 60);
INSERT INTO `tb_goods_category` VALUES (244, '2018-04-09 10:50:37.529642', '2018-04-09 10:50:37.529683', '十字绣', 60);
INSERT INTO `tb_goods_category` VALUES (245, '2018-04-09 10:51:02.366545', '2018-04-09 10:51:02.366585', '墙贴', 60);
INSERT INTO `tb_goods_category` VALUES (246, '2018-04-09 10:51:14.673577', '2018-04-09 10:51:14.673622', '瓷砖', 61);
INSERT INTO `tb_goods_category` VALUES (247, '2018-04-09 10:51:20.529141', '2018-04-09 10:51:20.529261', '地板', 61);
INSERT INTO `tb_goods_category` VALUES (248, '2018-04-09 10:51:31.121585', '2018-04-09 10:51:31.121641', '油漆涂料', 61);
INSERT INTO `tb_goods_category` VALUES (249, '2018-04-09 10:51:39.261015', '2018-04-09 10:51:39.261077', '壁纸', 61);
INSERT INTO `tb_goods_category` VALUES (250, '2018-04-09 10:52:03.520983', '2018-04-09 10:52:03.521024', '锁具', 62);
INSERT INTO `tb_goods_category` VALUES (251, '2018-04-09 10:52:12.470392', '2018-04-09 10:52:12.470482', '电动工具', 62);
INSERT INTO `tb_goods_category` VALUES (252, '2018-04-09 10:52:21.041130', '2018-04-09 10:52:21.041174', '手动工具', 62);
INSERT INTO `tb_goods_category` VALUES (253, '2018-04-09 10:52:31.599209', '2018-04-09 10:52:31.599255', '测量工具', 62);
INSERT INTO `tb_goods_category` VALUES (254, '2018-04-09 10:52:49.673907', '2018-04-09 10:52:49.673945', '劳防用品', 62);
INSERT INTO `tb_goods_category` VALUES (255, '2018-04-09 10:53:22.230127', '2018-04-09 10:53:22.230194', '水具酒具', 63);
INSERT INTO `tb_goods_category` VALUES (256, '2018-04-09 10:53:36.874892', '2018-04-09 10:53:36.874935', '烹饪锅具', 63);
INSERT INTO `tb_goods_category` VALUES (257, '2018-04-09 10:53:46.025047', '2018-04-09 10:53:46.025129', '餐具', 63);
INSERT INTO `tb_goods_category` VALUES (258, '2018-04-09 10:53:59.183741', '2018-04-09 10:53:59.183788', '厨房配件', 63);
INSERT INTO `tb_goods_category` VALUES (259, '2018-04-09 10:54:17.154351', '2018-04-09 10:54:17.154409', '刀剪菜板', 63);
INSERT INTO `tb_goods_category` VALUES (260, '2018-04-09 10:54:28.054467', '2018-04-09 10:54:28.054511', '锅具套装', 63);
INSERT INTO `tb_goods_category` VALUES (261, '2018-04-09 10:54:39.436215', '2018-04-09 10:54:39.436460', '水槽', 64);
INSERT INTO `tb_goods_category` VALUES (262, '2018-04-09 10:54:48.490520', '2018-04-09 10:54:48.490561', '龙头', 64);
INSERT INTO `tb_goods_category` VALUES (263, '2018-04-09 10:54:58.615841', '2018-04-09 10:54:58.616299', '淋浴花洒', 64);
INSERT INTO `tb_goods_category` VALUES (264, '2018-04-09 10:55:07.214304', '2018-04-09 10:55:07.214363', '马桶', 64);
INSERT INTO `tb_goods_category` VALUES (265, '2018-04-09 10:55:24.453550', '2018-04-09 10:55:24.453593', '厨卫挂件', 64);
INSERT INTO `tb_goods_category` VALUES (266, '2018-04-09 10:55:37.042973', '2018-04-09 10:55:37.043014', '浴室柜', 64);
INSERT INTO `tb_goods_category` VALUES (267, '2018-04-09 10:55:58.093400', '2018-04-09 10:55:58.093487', 'T恤', 65);
INSERT INTO `tb_goods_category` VALUES (268, '2018-04-09 10:56:06.167659', '2018-04-09 10:56:06.167702', '牛仔裤', 65);
INSERT INTO `tb_goods_category` VALUES (269, '2018-04-09 10:56:15.579739', '2018-04-09 10:56:15.579781', '衬衫', 65);
INSERT INTO `tb_goods_category` VALUES (270, '2018-04-09 10:56:21.330228', '2018-04-09 10:56:21.330268', '短裤', 65);
INSERT INTO `tb_goods_category` VALUES (271, '2018-04-09 10:56:31.432431', '2018-04-09 10:56:31.432506', '羽绒服', 65);
INSERT INTO `tb_goods_category` VALUES (272, '2018-04-09 10:56:45.065922', '2018-04-09 10:56:45.065962', '卫衣', 65);
INSERT INTO `tb_goods_category` VALUES (273, '2018-04-09 10:57:07.546075', '2018-04-09 10:57:07.546116', '西服套装', 65);
INSERT INTO `tb_goods_category` VALUES (274, '2018-04-09 10:57:18.823678', '2018-04-09 10:57:18.823720', '衬衫', 66);
INSERT INTO `tb_goods_category` VALUES (275, '2018-04-09 10:57:41.556178', '2018-04-09 10:57:41.556225', '雪纺衫', 66);
INSERT INTO `tb_goods_category` VALUES (276, '2018-04-09 10:57:52.929657', '2018-04-09 10:57:52.929697', '短衣套', 66);
INSERT INTO `tb_goods_category` VALUES (277, '2018-04-09 10:57:59.657898', '2018-04-09 10:57:59.657943', '卫衣', 66);
INSERT INTO `tb_goods_category` VALUES (278, '2018-04-09 10:58:07.246701', '2018-04-09 10:58:07.246743', '休闲裤', 66);
INSERT INTO `tb_goods_category` VALUES (279, '2018-04-09 10:58:17.075213', '2018-04-09 10:58:17.075255', '牛仔裤', 66);
INSERT INTO `tb_goods_category` VALUES (280, '2018-04-09 10:58:28.783506', '2018-04-09 10:58:28.783624', '小西装', 66);
INSERT INTO `tb_goods_category` VALUES (281, '2018-04-09 10:58:39.734123', '2018-04-09 10:58:39.734165', '套装', 67);
INSERT INTO `tb_goods_category` VALUES (282, '2018-04-09 10:58:54.035921', '2018-04-09 10:58:54.035999', '卫衣', 67);
INSERT INTO `tb_goods_category` VALUES (283, '2018-04-09 10:59:01.809045', '2018-04-09 10:59:01.809112', '裤子', 67);
INSERT INTO `tb_goods_category` VALUES (284, '2018-04-09 10:59:11.529237', '2018-04-09 10:59:11.529278', '衬衫', 67);
INSERT INTO `tb_goods_category` VALUES (285, '2018-04-09 10:59:19.701142', '2018-04-09 10:59:19.701182', '羽绒服', 67);
INSERT INTO `tb_goods_category` VALUES (286, '2018-04-09 10:59:29.917807', '2018-04-09 10:59:29.917935', '棉服', 67);
INSERT INTO `tb_goods_category` VALUES (287, '2018-04-09 10:59:37.808649', '2018-04-09 10:59:37.808697', '内衣裤', 67);
INSERT INTO `tb_goods_category` VALUES (288, '2018-04-09 10:59:47.335110', '2018-04-09 10:59:47.335153', '运动鞋', 68);
INSERT INTO `tb_goods_category` VALUES (289, '2018-04-09 10:59:55.048010', '2018-04-09 10:59:55.048115', '靴子', 68);
INSERT INTO `tb_goods_category` VALUES (290, '2018-04-09 11:00:01.655226', '2018-04-09 11:00:01.655389', '帆布鞋', 68);
INSERT INTO `tb_goods_category` VALUES (291, '2018-04-09 11:00:10.050759', '2018-04-09 11:00:10.050847', '棉鞋', 68);
INSERT INTO `tb_goods_category` VALUES (292, '2018-04-09 11:00:36.252685', '2018-04-09 11:00:36.252727', '睡衣', 69);
INSERT INTO `tb_goods_category` VALUES (293, '2018-04-09 11:00:51.916631', '2018-04-09 11:00:51.916725', '打底裤', 69);
INSERT INTO `tb_goods_category` VALUES (294, '2018-04-09 11:01:03.507003', '2018-04-09 11:01:03.507082', '保暖内衣', 69);
INSERT INTO `tb_goods_category` VALUES (295, '2018-04-09 11:01:17.165081', '2018-04-09 11:01:17.165123', '背心', 69);
INSERT INTO `tb_goods_category` VALUES (296, '2018-04-09 11:01:27.044001', '2018-04-09 11:01:27.044043', '男士内裤', 69);
INSERT INTO `tb_goods_category` VALUES (297, '2018-04-09 11:01:36.242881', '2018-04-09 11:01:36.242924', '女士内裤', 69);
INSERT INTO `tb_goods_category` VALUES (298, '2018-04-09 11:01:54.834481', '2018-04-09 11:01:54.834524', '披肩', 70);
INSERT INTO `tb_goods_category` VALUES (299, '2018-04-09 11:02:00.645511', '2018-04-09 11:02:00.645551', '围巾', 70);
INSERT INTO `tb_goods_category` VALUES (300, '2018-04-09 11:02:11.482667', '2018-04-09 11:02:11.482721', '镜片', 70);
INSERT INTO `tb_goods_category` VALUES (301, '2018-04-09 11:02:20.022779', '2018-04-09 11:02:20.022826', '太阳镜', 70);
INSERT INTO `tb_goods_category` VALUES (302, '2018-04-09 11:02:34.084449', '2018-04-09 11:02:34.084490', '毛线帽', 70);
INSERT INTO `tb_goods_category` VALUES (303, '2018-04-09 11:02:46.119130', '2018-04-09 11:02:46.119177', '礼貌', 70);
INSERT INTO `tb_goods_category` VALUES (304, '2018-04-09 11:02:58.516680', '2018-04-09 11:02:58.516821', '口罩', 70);
INSERT INTO `tb_goods_category` VALUES (305, '2018-04-09 11:03:18.478719', '2018-04-09 11:03:18.478762', '单鞋', 71);
INSERT INTO `tb_goods_category` VALUES (306, '2018-04-09 11:03:34.487317', '2018-04-09 11:03:34.487363', '休闲鞋', 71);
INSERT INTO `tb_goods_category` VALUES (307, '2018-04-09 11:03:43.157761', '2018-04-09 11:03:43.157841', '帆布鞋', 71);
INSERT INTO `tb_goods_category` VALUES (308, '2018-04-09 11:03:52.414196', '2018-04-09 11:03:52.414241', '妈妈鞋', 71);
INSERT INTO `tb_goods_category` VALUES (309, '2018-04-09 11:04:07.541405', '2018-04-09 11:04:07.541475', '女靴', 71);
INSERT INTO `tb_goods_category` VALUES (310, '2018-04-09 11:04:21.823807', '2018-04-09 11:04:21.823863', '高跟鞋', 71);
INSERT INTO `tb_goods_category` VALUES (311, '2018-04-09 11:04:33.148296', '2018-04-09 11:04:33.148342', '凉鞋', 71);
INSERT INTO `tb_goods_category` VALUES (312, '2018-04-09 11:04:42.712939', '2018-04-09 11:04:42.712979', '真皮包', 72);
INSERT INTO `tb_goods_category` VALUES (313, '2018-04-09 11:05:01.537643', '2018-04-09 11:05:01.537695', '单肩包', 72);
INSERT INTO `tb_goods_category` VALUES (314, '2018-04-09 11:05:10.452996', '2018-04-09 11:05:10.453036', '手提包', 72);
INSERT INTO `tb_goods_category` VALUES (315, '2018-04-09 11:05:21.516678', '2018-04-09 11:05:21.516722', '鞋挎包', 72);
INSERT INTO `tb_goods_category` VALUES (316, '2018-04-09 11:18:13.518247', '2018-04-09 11:18:13.518288', '双肩包', 72);
INSERT INTO `tb_goods_category` VALUES (317, '2018-04-09 11:18:24.704274', '2018-04-09 11:18:24.704314', '钱包', 72);
INSERT INTO `tb_goods_category` VALUES (318, '2018-04-09 11:21:41.102117', '2018-04-09 11:21:41.102167', '男士钱包', 73);
INSERT INTO `tb_goods_category` VALUES (319, '2018-04-09 11:21:51.040168', '2018-04-09 11:21:51.040272', '双肩包', 73);
INSERT INTO `tb_goods_category` VALUES (320, '2018-04-09 11:22:20.721731', '2018-04-09 11:22:20.721812', '单肩包', 73);
INSERT INTO `tb_goods_category` VALUES (321, '2018-04-09 11:22:37.133514', '2018-04-09 11:22:37.133556', '商务公文包', 73);
INSERT INTO `tb_goods_category` VALUES (322, '2018-04-09 11:22:51.040191', '2018-04-09 11:22:51.040233', '男士手包', 73);
INSERT INTO `tb_goods_category` VALUES (323, '2018-04-09 11:24:09.390104', '2018-04-09 11:24:09.390170', '拉杆箱', 74);
INSERT INTO `tb_goods_category` VALUES (324, '2018-04-09 11:24:20.905499', '2018-04-09 11:24:20.905542', '拉杆包', 74);
INSERT INTO `tb_goods_category` VALUES (325, '2018-04-09 11:24:38.908847', '2018-04-09 11:24:38.908888', '旅行包', 74);
INSERT INTO `tb_goods_category` VALUES (326, '2018-04-09 11:24:59.546666', '2018-04-09 11:24:59.546709', '电脑包', 74);
INSERT INTO `tb_goods_category` VALUES (327, '2018-04-09 11:25:09.425172', '2018-04-09 11:25:09.425223', '休闲运动包', 74);
INSERT INTO `tb_goods_category` VALUES (328, '2018-04-09 11:25:17.336990', '2018-04-09 11:25:17.337047', '书包', 74);
INSERT INTO `tb_goods_category` VALUES (329, '2018-04-09 11:25:29.965879', '2018-04-09 11:25:29.965945', '登山包', 74);
INSERT INTO `tb_goods_category` VALUES (330, '2018-04-09 11:25:56.939364', '2018-04-09 11:25:56.939402', '天梭', 75);
INSERT INTO `tb_goods_category` VALUES (331, '2018-04-09 11:26:13.919984', '2018-04-09 11:26:13.920027', '浪琴', 75);
INSERT INTO `tb_goods_category` VALUES (332, '2018-04-09 11:26:51.898328', '2018-04-09 11:26:51.898506', '欧米茄', 75);
INSERT INTO `tb_goods_category` VALUES (333, '2018-04-09 11:27:09.494057', '2018-04-09 11:27:09.494120', '泰格豪雅', 75);
INSERT INTO `tb_goods_category` VALUES (334, '2018-04-09 11:27:15.382732', '2018-04-09 11:27:15.382833', 'DW', 75);
INSERT INTO `tb_goods_category` VALUES (335, '2018-04-09 11:27:24.784177', '2018-04-09 11:27:24.784225', '卡西欧', 75);
INSERT INTO `tb_goods_category` VALUES (336, '2018-04-09 11:27:31.447596', '2018-04-09 11:27:31.447669', '西铁城', 75);
INSERT INTO `tb_goods_category` VALUES (337, '2018-04-09 11:27:42.642805', '2018-04-09 11:27:42.642852', '黄金', 76);
INSERT INTO `tb_goods_category` VALUES (338, '2018-04-09 11:27:49.327614', '2018-04-09 11:27:49.327665', 'K金', 76);
INSERT INTO `tb_goods_category` VALUES (339, '2018-04-09 11:28:01.614654', '2018-04-09 11:28:01.614700', '时尚饰品', 76);
INSERT INTO `tb_goods_category` VALUES (340, '2018-04-09 11:28:09.412255', '2018-04-09 11:28:09.412299', '钻石', 76);
INSERT INTO `tb_goods_category` VALUES (341, '2018-04-09 11:28:22.916617', '2018-04-09 11:28:22.916662', '翡翠玉石', 76);
INSERT INTO `tb_goods_category` VALUES (342, '2018-04-09 11:28:30.345615', '2018-04-09 11:28:30.345663', '银饰', 76);
INSERT INTO `tb_goods_category` VALUES (343, '2018-04-09 11:28:39.321423', '2018-04-09 11:28:39.321477', '水晶玛瑙', 76);
INSERT INTO `tb_goods_category` VALUES (344, '2018-04-09 11:28:57.657591', '2018-04-09 11:28:57.657636', '休闲鞋', 77);
INSERT INTO `tb_goods_category` VALUES (345, '2018-04-09 12:08:16.560944', '2018-04-11 12:37:00.856809', '商务休闲鞋', 77);
INSERT INTO `tb_goods_category` VALUES (346, '2018-04-09 12:09:27.344880', '2018-04-09 12:09:27.344924', '正装鞋', 77);
INSERT INTO `tb_goods_category` VALUES (347, '2018-04-09 12:09:36.131127', '2018-04-09 12:09:36.131175', '帆布鞋', 77);
INSERT INTO `tb_goods_category` VALUES (348, '2018-04-09 12:09:46.733096', '2018-04-09 12:09:46.733135', '凉鞋', 77);
INSERT INTO `tb_goods_category` VALUES (349, '2018-04-09 12:10:12.669806', '2018-04-09 12:10:12.669851', '跑步鞋', 78);
INSERT INTO `tb_goods_category` VALUES (350, '2018-04-09 12:10:24.462717', '2018-04-09 12:10:24.462757', '休闲鞋', 78);
INSERT INTO `tb_goods_category` VALUES (351, '2018-04-09 12:10:33.369187', '2018-04-09 12:10:33.369266', '篮球鞋', 78);
INSERT INTO `tb_goods_category` VALUES (352, '2018-04-09 12:10:41.678099', '2018-04-09 12:10:41.678147', '帆布鞋', 77);
INSERT INTO `tb_goods_category` VALUES (353, '2018-04-09 12:10:52.832621', '2018-04-09 12:10:52.832671', '板鞋', 77);
INSERT INTO `tb_goods_category` VALUES (354, '2018-04-09 12:11:11.611198', '2018-04-09 12:11:11.611250', '拖鞋', 78);
INSERT INTO `tb_goods_category` VALUES (355, '2018-04-09 12:11:20.463957', '2018-04-09 12:11:20.464001', '运动包', 78);
INSERT INTO `tb_goods_category` VALUES (356, '2018-04-09 12:11:37.214241', '2018-04-09 12:11:37.214291', '足球鞋', 78);
INSERT INTO `tb_goods_category` VALUES (357, '2018-04-09 12:13:15.915511', '2018-04-09 12:13:15.915579', 'T恤', 79);
INSERT INTO `tb_goods_category` VALUES (358, '2018-04-09 12:13:38.332607', '2018-04-09 12:13:38.332682', '运动套装', 79);
INSERT INTO `tb_goods_category` VALUES (359, '2018-04-09 12:13:48.314684', '2018-04-09 12:13:48.314757', '运动裤', 79);
INSERT INTO `tb_goods_category` VALUES (360, '2018-04-09 12:13:58.115856', '2018-04-09 12:13:58.115930', '卫衣', 79);
INSERT INTO `tb_goods_category` VALUES (361, '2018-04-09 12:14:05.741448', '2018-04-09 12:14:05.741497', '夹克', 79);
INSERT INTO `tb_goods_category` VALUES (362, '2018-04-09 12:14:13.258943', '2018-04-09 12:14:13.258986', '羽绒服', 79);
INSERT INTO `tb_goods_category` VALUES (363, '2018-04-09 12:14:44.556933', '2018-04-09 12:14:44.556986', '跑步机', 80);
INSERT INTO `tb_goods_category` VALUES (364, '2018-04-09 12:15:14.348396', '2018-04-09 12:15:14.348504', '动感单车', 80);
INSERT INTO `tb_goods_category` VALUES (365, '2018-04-09 12:15:25.182779', '2018-04-09 12:15:25.182818', '健身车', 80);
INSERT INTO `tb_goods_category` VALUES (366, '2018-04-09 12:15:39.011764', '2018-04-09 12:15:39.011803', '椭圆机', 80);
INSERT INTO `tb_goods_category` VALUES (367, '2018-04-09 12:15:52.191090', '2018-04-09 12:15:52.191133', '综合训练器', 80);
INSERT INTO `tb_goods_category` VALUES (368, '2018-04-09 12:16:00.759984', '2018-04-09 12:16:00.760022', '划船机', 80);
INSERT INTO `tb_goods_category` VALUES (369, '2018-04-09 12:16:23.743936', '2018-04-09 12:16:23.743975', '甩脂机', 80);
INSERT INTO `tb_goods_category` VALUES (370, '2018-04-09 12:16:37.158374', '2018-04-09 12:16:37.158419', '山地车', 81);
INSERT INTO `tb_goods_category` VALUES (371, '2018-04-09 12:16:47.227313', '2018-04-09 12:16:47.227353', '公路车', 81);
INSERT INTO `tb_goods_category` VALUES (372, '2018-04-09 12:16:54.949681', '2018-04-09 12:16:54.949725', '折叠车', 81);
INSERT INTO `tb_goods_category` VALUES (373, '2018-04-09 12:17:05.820361', '2018-04-09 12:17:05.820407', '骑行服', 81);
INSERT INTO `tb_goods_category` VALUES (374, '2018-04-09 12:17:13.605959', '2018-04-09 12:17:13.606000', '电动车', 81);
INSERT INTO `tb_goods_category` VALUES (375, '2018-04-09 12:17:33.944309', '2018-04-09 12:17:33.944412', '电动滑板车', 81);
INSERT INTO `tb_goods_category` VALUES (376, '2018-04-09 12:17:50.672612', '2018-04-09 12:17:50.672823', '乒乓球', 82);
INSERT INTO `tb_goods_category` VALUES (377, '2018-04-09 12:18:02.249051', '2018-04-09 12:18:02.249115', '羽毛球', 81);
INSERT INTO `tb_goods_category` VALUES (378, '2018-04-09 12:18:17.658163', '2018-04-09 12:18:32.143808', '篮球', 82);
INSERT INTO `tb_goods_category` VALUES (379, '2018-04-09 12:18:44.169275', '2018-04-09 12:18:44.169314', '足球', 82);
INSERT INTO `tb_goods_category` VALUES (380, '2018-04-09 12:18:59.052389', '2018-04-09 12:18:59.052430', '轮滑滑板', 82);
INSERT INTO `tb_goods_category` VALUES (381, '2018-04-09 12:19:13.369855', '2018-04-09 12:19:13.369895', '网球', 82);
INSERT INTO `tb_goods_category` VALUES (382, '2018-04-09 12:19:20.514040', '2018-04-09 12:19:20.514088', '高尔夫', 82);
INSERT INTO `tb_goods_category` VALUES (383, '2018-04-09 12:19:41.478550', '2018-04-09 12:19:41.478590', '户外风衣', 83);
INSERT INTO `tb_goods_category` VALUES (384, '2018-04-09 12:19:50.948351', '2018-04-09 12:19:50.948402', '徒步鞋', 83);
INSERT INTO `tb_goods_category` VALUES (385, '2018-04-09 12:20:00.773041', '2018-04-09 12:20:00.773107', 'T恤', 83);
INSERT INTO `tb_goods_category` VALUES (386, '2018-04-09 12:20:13.572677', '2018-04-09 12:20:13.572731', '冲锋衣裤', 83);
INSERT INTO `tb_goods_category` VALUES (387, '2018-04-09 12:20:35.830642', '2018-04-09 12:20:35.830691', '速干衣裤', 83);
INSERT INTO `tb_goods_category` VALUES (388, '2018-04-09 12:20:45.236874', '2018-04-09 12:20:45.236916', '越野跑鞋', 83);
INSERT INTO `tb_goods_category` VALUES (389, '2018-04-09 12:20:53.484799', '2018-04-09 12:20:53.484931', '滑雪服', 83);
INSERT INTO `tb_goods_category` VALUES (390, '2018-04-09 12:21:03.664043', '2018-04-09 12:21:03.664087', '背包', 84);
INSERT INTO `tb_goods_category` VALUES (391, '2018-04-09 12:21:13.588552', '2018-04-09 12:21:13.588761', '帐篷', 84);
INSERT INTO `tb_goods_category` VALUES (392, '2018-04-09 12:21:22.627360', '2018-04-09 12:21:22.627441', '望远镜', 84);
INSERT INTO `tb_goods_category` VALUES (393, '2018-04-09 12:21:31.571427', '2018-04-09 12:21:31.571470', '烧烤用具', 84);
INSERT INTO `tb_goods_category` VALUES (394, '2018-04-09 12:21:43.436347', '2018-04-09 12:21:43.436386', '编写桌椅床', 84);
INSERT INTO `tb_goods_category` VALUES (395, '2018-04-09 12:21:51.496392', '2018-04-09 12:21:51.496432', '户外配饰', 84);
INSERT INTO `tb_goods_category` VALUES (396, '2018-04-09 12:22:03.144795', '2018-04-09 12:22:03.144838', '军迷用品', 84);
INSERT INTO `tb_goods_category` VALUES (397, '2018-04-09 12:22:19.174208', '2018-04-09 12:22:19.174256', '最新开盘', 85);
INSERT INTO `tb_goods_category` VALUES (398, '2018-04-09 12:22:32.680341', '2018-04-09 12:22:32.680381', '普通住宅', 85);
INSERT INTO `tb_goods_category` VALUES (399, '2018-04-09 12:23:13.036354', '2018-04-09 12:23:13.036402', '别墅', 85);
INSERT INTO `tb_goods_category` VALUES (400, '2018-04-09 12:23:20.661348', '2018-04-09 12:23:20.661400', '商业办公', 85);
INSERT INTO `tb_goods_category` VALUES (401, '2018-04-09 12:23:32.836788', '2018-04-09 12:23:32.836830', '海外房产', 85);
INSERT INTO `tb_goods_category` VALUES (402, '2018-04-09 12:23:47.819951', '2018-04-09 12:23:47.820002', '微型车', 86);
INSERT INTO `tb_goods_category` VALUES (403, '2018-04-09 12:23:56.486888', '2018-04-09 12:23:56.486929', '小型车', 86);
INSERT INTO `tb_goods_category` VALUES (404, '2018-04-09 12:24:09.346459', '2018-04-09 12:24:09.346508', '紧凑型车', 86);
INSERT INTO `tb_goods_category` VALUES (405, '2018-04-09 12:24:23.609500', '2018-04-09 12:24:23.609542', '中型车', 86);
INSERT INTO `tb_goods_category` VALUES (406, '2018-04-09 12:24:34.464050', '2018-04-09 12:24:34.464093', '中大行车', 86);
INSERT INTO `tb_goods_category` VALUES (407, '2018-04-09 12:24:46.157301', '2018-04-09 12:24:46.157342', '机油', 87);
INSERT INTO `tb_goods_category` VALUES (408, '2018-04-09 12:24:54.173351', '2018-04-09 12:24:54.173391', '轮胎', 87);
INSERT INTO `tb_goods_category` VALUES (409, '2018-04-09 12:25:01.636545', '2018-04-09 12:25:01.636588', '添加剂', 87);
INSERT INTO `tb_goods_category` VALUES (410, '2018-04-09 12:25:13.324702', '2018-04-09 12:25:13.324750', '防冻液', 87);
INSERT INTO `tb_goods_category` VALUES (411, '2018-04-09 12:25:23.875459', '2018-04-09 12:25:23.875500', '滤清器', 87);
INSERT INTO `tb_goods_category` VALUES (412, '2018-04-09 12:25:35.605448', '2018-04-09 12:25:35.605489', '蓄电池', 87);
INSERT INTO `tb_goods_category` VALUES (413, '2018-04-09 12:25:48.272607', '2018-04-09 12:25:48.272647', '雨刷', 87);
INSERT INTO `tb_goods_category` VALUES (414, '2018-04-09 12:26:04.737314', '2018-04-09 12:26:04.737356', '座垫座套', 88);
INSERT INTO `tb_goods_category` VALUES (415, '2018-04-09 12:26:25.466016', '2018-04-09 12:26:25.466060', '脚垫', 88);
INSERT INTO `tb_goods_category` VALUES (416, '2018-04-09 12:26:41.636108', '2018-04-09 12:26:41.636148', '头枕腰靠', 88);
INSERT INTO `tb_goods_category` VALUES (417, '2018-04-09 12:26:50.317697', '2018-04-09 12:26:50.317737', '方向盘套', 88);
INSERT INTO `tb_goods_category` VALUES (418, '2018-04-09 12:27:04.852657', '2018-04-09 12:27:04.852698', '后备箱垫', 88);
INSERT INTO `tb_goods_category` VALUES (419, '2018-04-09 12:27:28.245163', '2018-04-09 12:27:28.245206', '车载支架', 88);
INSERT INTO `tb_goods_category` VALUES (420, '2018-04-09 12:27:42.249996', '2018-04-09 12:27:42.250040', '挂件摆件', 88);
INSERT INTO `tb_goods_category` VALUES (421, '2018-04-09 12:27:56.558508', '2018-04-09 12:27:56.558549', '行车记录仪', 89);
INSERT INTO `tb_goods_category` VALUES (422, '2018-04-09 12:28:07.738113', '2018-04-09 12:28:07.738158', '车载充电器', 89);
INSERT INTO `tb_goods_category` VALUES (423, '2018-04-09 12:28:20.669977', '2018-04-09 12:28:20.670037', '车机导航', 89);
INSERT INTO `tb_goods_category` VALUES (424, '2018-04-09 12:28:30.768756', '2018-04-09 12:28:30.768865', '车载蓝牙', 89);
INSERT INTO `tb_goods_category` VALUES (425, '2018-04-09 12:28:40.911231', '2018-04-09 12:28:40.911300', '智能驾驶', 89);
INSERT INTO `tb_goods_category` VALUES (426, '2018-04-09 12:28:50.264210', '2018-04-09 12:28:50.264251', '车载净化器', 89);
INSERT INTO `tb_goods_category` VALUES (427, '2018-04-09 12:29:05.698627', '2018-04-09 12:29:05.698671', '车载吸尘器', 89);
INSERT INTO `tb_goods_category` VALUES (428, '2018-04-09 12:29:21.396287', '2018-04-09 12:29:21.396347', '胎压监测', 90);
INSERT INTO `tb_goods_category` VALUES (429, '2018-04-09 12:29:29.941158', '2018-04-09 12:29:29.941199', '充气泵', 90);
INSERT INTO `tb_goods_category` VALUES (430, '2018-04-09 12:29:38.039932', '2018-04-09 12:29:38.039976', '灭火器', 90);
INSERT INTO `tb_goods_category` VALUES (431, '2018-04-09 12:29:45.055847', '2018-04-09 12:29:45.055888', '车载床', 90);
INSERT INTO `tb_goods_category` VALUES (432, '2018-04-09 12:29:53.265950', '2018-04-09 12:29:53.265998', '应急救援', 90);
INSERT INTO `tb_goods_category` VALUES (433, '2018-04-09 12:30:04.204188', '2018-04-09 12:30:04.204227', '防盗设备', 90);
INSERT INTO `tb_goods_category` VALUES (434, '2018-04-09 12:30:21.022724', '2018-04-09 12:30:21.022771', '1段', 91);
INSERT INTO `tb_goods_category` VALUES (435, '2018-04-09 12:30:28.705125', '2018-04-09 12:30:28.705297', '2段', 91);
INSERT INTO `tb_goods_category` VALUES (436, '2018-04-09 12:30:41.640737', '2018-04-09 12:30:41.640777', '3段', 91);
INSERT INTO `tb_goods_category` VALUES (437, '2018-04-09 12:30:47.938600', '2018-04-09 12:30:47.938654', '4段', 91);
INSERT INTO `tb_goods_category` VALUES (438, '2018-04-09 12:31:01.503065', '2018-04-09 12:31:01.503251', '孕妈奶粉', 91);
INSERT INTO `tb_goods_category` VALUES (439, '2018-04-09 12:31:10.862232', '2018-04-09 12:31:10.862287', '有机奶粉', 91);
INSERT INTO `tb_goods_category` VALUES (440, '2018-04-09 12:31:20.344400', '2018-04-09 12:31:20.344443', '米粉', 92);
INSERT INTO `tb_goods_category` VALUES (441, '2018-04-09 12:31:30.706523', '2018-04-09 12:31:30.706688', '面条', 92);
INSERT INTO `tb_goods_category` VALUES (442, '2018-04-09 12:31:44.035896', '2018-04-09 12:31:44.035975', '果泥', 92);
INSERT INTO `tb_goods_category` VALUES (443, '2018-04-09 12:31:57.403136', '2018-04-09 12:31:57.403180', '益生菌', 92);
INSERT INTO `tb_goods_category` VALUES (444, '2018-04-09 12:32:10.384580', '2018-04-09 12:32:10.384629', 'DHA', 92);
INSERT INTO `tb_goods_category` VALUES (445, '2018-04-09 12:32:21.916098', '2018-04-09 12:32:21.916144', 'NB', 93);
INSERT INTO `tb_goods_category` VALUES (446, '2018-04-09 12:32:29.287475', '2018-04-09 12:32:29.287523', 'S', 93);
INSERT INTO `tb_goods_category` VALUES (447, '2018-04-09 12:32:36.424841', '2018-04-09 12:32:36.424887', 'M', 93);
INSERT INTO `tb_goods_category` VALUES (448, '2018-04-09 12:32:42.132988', '2018-04-09 12:32:42.133030', 'L', 93);
INSERT INTO `tb_goods_category` VALUES (449, '2018-04-09 12:32:50.778168', '2018-04-09 12:32:50.778233', 'XL', 93);
INSERT INTO `tb_goods_category` VALUES (450, '2018-04-09 12:32:57.068461', '2018-04-09 12:32:57.068502', 'XXL', 93);
INSERT INTO `tb_goods_category` VALUES (451, '2018-04-09 12:33:06.777164', '2018-04-09 12:33:06.777211', '拉拉裤', 93);
INSERT INTO `tb_goods_category` VALUES (452, '2018-04-09 12:33:24.613039', '2018-04-09 12:33:24.613080', '遥控电动', 94);
INSERT INTO `tb_goods_category` VALUES (453, '2018-04-09 12:33:31.652664', '2018-04-09 12:33:31.652732', '益智玩具', 94);
INSERT INTO `tb_goods_category` VALUES (454, '2018-04-09 12:33:45.339728', '2018-04-09 12:33:45.339766', '积木拼插', 94);
INSERT INTO `tb_goods_category` VALUES (455, '2018-04-09 12:33:55.126028', '2018-04-09 12:33:55.126067', '动漫玩具', 94);
INSERT INTO `tb_goods_category` VALUES (456, '2018-04-09 12:34:11.655807', '2018-04-09 12:34:11.655851', '毛绒布艺', 94);
INSERT INTO `tb_goods_category` VALUES (457, '2018-04-09 12:34:20.900620', '2018-04-09 12:34:20.900691', '钢琴', 95);
INSERT INTO `tb_goods_category` VALUES (458, '2018-04-09 12:34:28.181696', '2018-04-09 12:34:28.181746', '电钢琴', 95);
INSERT INTO `tb_goods_category` VALUES (459, '2018-04-09 12:34:39.033787', '2018-04-09 12:34:39.033837', '电子琴', 95);
INSERT INTO `tb_goods_category` VALUES (460, '2018-04-09 12:34:44.586005', '2018-04-09 12:34:44.586048', '吉他', 95);
INSERT INTO `tb_goods_category` VALUES (461, '2018-04-09 12:35:00.803528', '2018-04-09 12:35:00.803568', '尤克里里', 95);
INSERT INTO `tb_goods_category` VALUES (462, '2018-04-09 12:35:17.639608', '2018-04-09 12:35:17.639654', '苹果', 96);
INSERT INTO `tb_goods_category` VALUES (463, '2018-04-09 12:35:24.396253', '2018-04-09 12:35:24.396333', '香蕉', 96);
INSERT INTO `tb_goods_category` VALUES (464, '2018-04-09 12:35:38.853589', '2018-04-09 12:35:38.853630', '梨', 96);
INSERT INTO `tb_goods_category` VALUES (465, '2018-04-09 12:35:44.700034', '2018-04-09 12:35:44.700076', '橙子', 96);
INSERT INTO `tb_goods_category` VALUES (466, '2018-04-09 12:35:54.523749', '2018-04-09 12:35:54.523791', '奇异果', 96);
INSERT INTO `tb_goods_category` VALUES (467, '2018-04-09 12:36:04.893146', '2018-04-09 12:36:04.893199', '火龙果', 96);
INSERT INTO `tb_goods_category` VALUES (468, '2018-04-09 12:36:14.484152', '2018-04-09 12:36:14.485197', '蛋品', 97);
INSERT INTO `tb_goods_category` VALUES (469, '2018-04-09 12:36:28.415979', '2018-04-09 12:36:28.416033', '叶菜类', 97);
INSERT INTO `tb_goods_category` VALUES (470, '2018-04-09 12:36:37.316846', '2018-04-09 12:36:37.316905', '根茎类', 97);
INSERT INTO `tb_goods_category` VALUES (471, '2018-04-09 12:36:56.682895', '2018-04-09 12:36:56.682936', '葱姜蒜椒', 97);
INSERT INTO `tb_goods_category` VALUES (472, '2018-04-09 12:37:09.086730', '2018-04-09 12:37:09.086801', '猪肉', 98);
INSERT INTO `tb_goods_category` VALUES (473, '2018-04-09 12:37:14.763994', '2018-04-09 12:37:14.764035', '牛肉', 98);
INSERT INTO `tb_goods_category` VALUES (474, '2018-04-09 12:37:23.722896', '2018-04-09 12:37:23.722937', '羊肉', 98);
INSERT INTO `tb_goods_category` VALUES (475, '2018-04-09 12:37:31.952876', '2018-04-09 12:37:31.952917', '鸡肉', 98);
INSERT INTO `tb_goods_category` VALUES (476, '2018-04-09 12:37:40.185669', '2018-04-09 12:37:40.185708', '鸭肉', 98);
INSERT INTO `tb_goods_category` VALUES (477, '2018-04-09 12:37:54.541087', '2018-04-09 12:37:54.541206', '白酒', 99);
INSERT INTO `tb_goods_category` VALUES (478, '2018-04-09 12:38:00.476058', '2018-04-09 12:38:00.476103', '葡萄酒', 99);
INSERT INTO `tb_goods_category` VALUES (479, '2018-04-09 12:38:07.401633', '2018-04-09 12:38:07.401673', '洋酒', 99);
INSERT INTO `tb_goods_category` VALUES (480, '2018-04-09 12:38:15.374182', '2018-04-09 12:38:15.374237', '啤酒', 99);
INSERT INTO `tb_goods_category` VALUES (481, '2018-04-09 12:38:22.161741', '2018-04-09 12:38:22.162162', '黄酒', 99);
INSERT INTO `tb_goods_category` VALUES (482, '2018-04-09 12:38:34.069996', '2018-04-09 12:38:34.070069', '鱼类', 100);
INSERT INTO `tb_goods_category` VALUES (483, '2018-04-09 12:38:40.454694', '2018-04-09 12:38:40.454748', '虾类', 100);
INSERT INTO `tb_goods_category` VALUES (484, '2018-04-09 12:38:50.430100', '2018-04-09 12:38:50.430144', '蟹类', 100);
INSERT INTO `tb_goods_category` VALUES (485, '2018-04-09 12:38:59.664340', '2018-04-09 12:38:59.664378', '贝类', 100);
INSERT INTO `tb_goods_category` VALUES (486, '2018-04-09 12:39:07.324234', '2018-04-09 12:39:07.324272', '海参', 100);
INSERT INTO `tb_goods_category` VALUES (487, '2018-04-09 12:39:17.066508', '2018-04-09 12:39:17.066561', '鱿鱼', 100);
INSERT INTO `tb_goods_category` VALUES (488, '2018-04-09 12:39:24.459066', '2018-04-09 12:39:24.459109', '水饺', 101);
INSERT INTO `tb_goods_category` VALUES (489, '2018-04-09 12:39:34.604818', '2018-04-09 12:39:34.604873', '汤圆', 101);
INSERT INTO `tb_goods_category` VALUES (490, '2018-04-09 12:39:41.951256', '2018-04-09 12:39:41.951389', '面点', 101);
INSERT INTO `tb_goods_category` VALUES (491, '2018-04-09 12:39:56.644602', '2018-04-09 12:39:56.644666', '烘培半成品', 101);
INSERT INTO `tb_goods_category` VALUES (492, '2018-04-09 12:40:06.995033', '2018-04-09 12:40:06.995079', '方便速食', 101);
INSERT INTO `tb_goods_category` VALUES (493, '2018-04-09 12:40:18.989451', '2018-04-09 12:40:18.989491', '华北', 102);
INSERT INTO `tb_goods_category` VALUES (494, '2018-04-09 12:40:24.498405', '2018-04-09 12:40:24.498446', '华东', 102);
INSERT INTO `tb_goods_category` VALUES (495, '2018-04-09 12:40:35.291572', '2018-04-09 12:40:35.291613', '华南', 102);
INSERT INTO `tb_goods_category` VALUES (496, '2018-04-09 12:40:44.577503', '2018-04-09 12:40:44.577596', '华中', 102);
INSERT INTO `tb_goods_category` VALUES (497, '2018-04-09 12:40:50.353640', '2018-04-09 12:40:50.353719', '东北', 102);
INSERT INTO `tb_goods_category` VALUES (498, '2018-04-09 12:40:59.948664', '2018-04-09 12:40:59.948705', '西北', 102);
INSERT INTO `tb_goods_category` VALUES (499, '2018-04-09 12:41:04.991165', '2018-04-09 12:41:04.991210', '西南', 102);
INSERT INTO `tb_goods_category` VALUES (500, '2018-04-09 12:41:20.415788', '2018-04-09 12:41:33.490500', '0-2岁', 103);
INSERT INTO `tb_goods_category` VALUES (501, '2018-04-09 12:41:51.393210', '2018-04-09 12:41:51.393266', '3-6岁', 103);
INSERT INTO `tb_goods_category` VALUES (502, '2018-04-09 12:42:00.521776', '2018-04-09 12:42:00.521834', '7-10岁', 103);
INSERT INTO `tb_goods_category` VALUES (503, '2018-04-09 12:42:06.853828', '2018-04-09 12:42:06.853879', '11-14岁', 103);
INSERT INTO `tb_goods_category` VALUES (504, '2018-04-09 12:42:15.217304', '2018-04-09 12:42:15.217346', '儿童文艺', 103);
INSERT INTO `tb_goods_category` VALUES (505, '2018-04-09 12:42:21.085464', '2018-04-09 12:42:21.085572', '绘本', 103);
INSERT INTO `tb_goods_category` VALUES (506, '2018-04-09 12:42:26.635396', '2018-04-09 12:42:26.635436', '科普', 103);
INSERT INTO `tb_goods_category` VALUES (507, '2018-04-09 12:42:35.299418', '2018-04-09 12:42:35.299457', '教材', 104);
INSERT INTO `tb_goods_category` VALUES (508, '2018-04-09 12:42:44.941114', '2018-04-09 12:42:44.941153', '中小学教辅', 104);
INSERT INTO `tb_goods_category` VALUES (509, '2018-04-09 12:42:51.391709', '2018-04-09 12:42:51.391751', '考试', 104);
INSERT INTO `tb_goods_category` VALUES (510, '2018-04-09 12:43:03.953751', '2018-04-09 12:43:03.953795', '外语学习', 104);
INSERT INTO `tb_goods_category` VALUES (511, '2018-04-09 12:43:13.404857', '2018-04-09 12:43:13.404902', '字典词典', 104);
INSERT INTO `tb_goods_category` VALUES (512, '2018-04-09 12:43:22.635176', '2018-04-09 12:43:22.635220', '小说', 105);
INSERT INTO `tb_goods_category` VALUES (513, '2018-04-09 12:43:29.185733', '2018-04-09 12:43:29.185956', '文学', 105);
INSERT INTO `tb_goods_category` VALUES (514, '2018-04-09 12:43:36.123019', '2018-04-09 12:43:36.123619', '青春文学', 105);
INSERT INTO `tb_goods_category` VALUES (515, '2018-04-09 12:43:57.373715', '2018-04-09 12:43:57.373760', '传记', 105);
INSERT INTO `tb_goods_category` VALUES (516, '2018-04-09 12:44:02.905921', '2018-04-09 12:44:02.905961', '动漫', 105);
INSERT INTO `tb_goods_category` VALUES (517, '2018-04-09 12:44:10.930632', '2018-04-09 12:44:10.930677', '艺术', 105);
INSERT INTO `tb_goods_category` VALUES (518, '2018-04-09 12:44:22.797355', '2018-04-09 12:44:22.797407', '音乐', 106);
INSERT INTO `tb_goods_category` VALUES (519, '2018-04-09 12:44:29.689156', '2018-04-09 12:44:29.689196', '影视', 106);
INSERT INTO `tb_goods_category` VALUES (520, '2018-04-09 12:44:41.896114', '2018-04-09 12:44:41.896156', '教育音像', 106);
INSERT INTO `tb_goods_category` VALUES (521, '2018-04-09 12:44:52.139493', '2018-04-09 12:44:52.139567', '游戏', 106);
INSERT INTO `tb_goods_category` VALUES (522, '2018-04-09 12:45:04.183430', '2018-04-09 12:45:04.183788', '小说', 107);
INSERT INTO `tb_goods_category` VALUES (523, '2018-04-09 12:45:12.853989', '2018-04-09 12:45:12.854064', '励志与成功', 107);
INSERT INTO `tb_goods_category` VALUES (524, '2018-04-09 12:45:20.095013', '2018-04-09 12:45:20.095176', '经济金融', 107);
INSERT INTO `tb_goods_category` VALUES (525, '2018-04-09 12:45:29.048014', '2018-04-09 12:45:29.048060', '文学', 107);
INSERT INTO `tb_goods_category` VALUES (526, '2018-04-09 12:45:45.137162', '2018-04-09 12:45:45.137200', '计算机与互联网', 108);
INSERT INTO `tb_goods_category` VALUES (527, '2018-04-09 12:45:55.864096', '2018-04-09 12:45:55.864135', '科普', 108);
INSERT INTO `tb_goods_category` VALUES (528, '2018-04-09 12:46:02.495930', '2018-04-09 12:46:02.495974', '建筑', 108);
INSERT INTO `tb_goods_category` VALUES (529, '2018-04-09 12:46:12.225136', '2018-04-09 12:46:12.225451', '工业技术', 108);
INSERT INTO `tb_goods_category` VALUES (530, '2018-04-09 12:46:22.281103', '2018-04-09 12:46:22.281142', '电子通信', 108);
INSERT INTO `tb_goods_category` VALUES (531, '2018-04-09 12:46:28.058464', '2018-04-09 12:46:28.058510', '医学', 108);
INSERT INTO `tb_goods_category` VALUES (532, '2018-04-09 12:46:34.969122', '2018-04-09 12:46:34.969166', '农林', 108);
INSERT INTO `tb_goods_category` VALUES (533, '2018-04-09 12:46:50.460306', '2018-04-09 12:46:50.460367', '国内机票', 109);
INSERT INTO `tb_goods_category` VALUES (534, '2018-04-09 12:47:03.136221', '2018-04-09 12:47:03.136285', '国际机票', 109);
INSERT INTO `tb_goods_category` VALUES (535, '2018-04-09 12:47:08.441450', '2018-04-09 12:47:08.441508', '火车票', 109);
INSERT INTO `tb_goods_category` VALUES (536, '2018-04-09 12:47:15.969474', '2018-04-09 12:47:15.969514', '机场服务', 109);
INSERT INTO `tb_goods_category` VALUES (537, '2018-04-09 12:47:27.075057', '2018-04-09 12:47:27.075338', '国内酒店', 110);
INSERT INTO `tb_goods_category` VALUES (538, '2018-04-09 12:47:37.048895', '2018-04-09 12:47:37.048936', '国际酒店', 110);
INSERT INTO `tb_goods_category` VALUES (539, '2018-04-09 12:47:49.230938', '2018-04-09 12:47:49.230980', '超值精选酒店', 110);
INSERT INTO `tb_goods_category` VALUES (540, '2018-04-09 12:47:59.488914', '2018-04-09 12:47:59.488958', '国内旅游', 111);
INSERT INTO `tb_goods_category` VALUES (541, '2018-04-09 12:48:13.464137', '2018-04-09 12:48:13.464184', '出境旅游', 111);
INSERT INTO `tb_goods_category` VALUES (542, '2018-04-09 12:48:25.847481', '2018-04-09 12:48:25.847528', '景点门票', 111);
INSERT INTO `tb_goods_category` VALUES (543, '2018-04-09 12:48:43.599292', '2018-04-09 12:48:43.599333', '电影选座', 112);
INSERT INTO `tb_goods_category` VALUES (544, '2018-04-09 12:49:00.580843', '2018-04-09 12:49:00.580886', '演唱会', 112);
INSERT INTO `tb_goods_category` VALUES (545, '2018-04-09 12:49:09.886332', '2018-04-09 12:49:09.886374', '音乐会', 112);
INSERT INTO `tb_goods_category` VALUES (546, '2018-04-09 12:49:24.549168', '2018-04-09 12:49:24.549214', '话剧歌剧', 112);
INSERT INTO `tb_goods_category` VALUES (547, '2018-04-09 12:49:31.673625', '2018-04-09 12:49:31.673733', '体育赛事', 112);
INSERT INTO `tb_goods_category` VALUES (548, '2018-04-09 12:49:40.124527', '2018-04-09 12:49:40.124722', '水费', 113);
INSERT INTO `tb_goods_category` VALUES (549, '2018-04-09 12:49:47.944100', '2018-04-09 12:49:47.944139', '电费', 113);
INSERT INTO `tb_goods_category` VALUES (550, '2018-04-09 12:49:55.874111', '2018-04-09 12:49:55.874156', '煤气费', 113);
INSERT INTO `tb_goods_category` VALUES (551, '2018-04-09 12:50:05.470708', '2018-04-09 12:50:05.470749', '城市通', 113);
INSERT INTO `tb_goods_category` VALUES (552, '2018-04-09 12:50:21.772953', '2018-04-09 12:50:21.773025', '家政保洁', 114);
INSERT INTO `tb_goods_category` VALUES (553, '2018-04-09 12:50:36.536493', '2018-04-09 12:50:36.536542', '摄影写真', 114);
INSERT INTO `tb_goods_category` VALUES (554, '2018-04-09 12:50:50.325220', '2018-04-09 12:50:50.325264', '养生', 114);
INSERT INTO `tb_goods_category` VALUES (555, '2018-04-09 12:51:01.075371', '2018-04-26 14:51:12.471116', '代理代办', 114);

-- ----------------------------
-- Table structure for tb_goods_channel
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_channel`;
CREATE TABLE `tb_goods_channel`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `group_id` int NOT NULL,
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sequence` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `group_id`(`group_id` ASC) USING BTREE,
  INDEX `tb_goods_channel_category_id_8e1b1d82_fk_tb_goods_category_id`(`category_id` ASC) USING BTREE,
  CONSTRAINT `tb_goods_channel_category_id_8e1b1d82_fk_tb_goods_category_id` FOREIGN KEY (`category_id`) REFERENCES `tb_goods_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_goods_channel_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `tb_channel_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_goods_channel
-- ----------------------------
INSERT INTO `tb_goods_channel` VALUES (1, '2018-04-09 09:15:38.057078', '2018-04-09 09:15:38.057150', 1, 'http://shouji.jd.com', 1, 1);
INSERT INTO `tb_goods_channel` VALUES (2, '2018-04-09 09:17:29.097657', '2018-04-09 09:17:29.097706', 1, 'http://www.itcast.cn', 2, 2);
INSERT INTO `tb_goods_channel` VALUES (3, '2018-04-09 09:17:45.065222', '2018-04-09 09:17:45.065264', 1, 'http://www.itcast.cn', 3, 3);
INSERT INTO `tb_goods_channel` VALUES (4, '2018-04-09 09:18:10.865628', '2018-04-09 09:18:10.865669', 2, 'http://www.itcast.cn', 1, 4);
INSERT INTO `tb_goods_channel` VALUES (5, '2018-04-09 09:18:26.508512', '2018-04-09 09:18:26.508581', 2, 'http://www.itcast.cn', 2, 5);
INSERT INTO `tb_goods_channel` VALUES (6, '2018-04-09 09:18:44.054270', '2018-04-09 09:18:44.054322', 2, 'http://www.itcast.cn', 3, 6);
INSERT INTO `tb_goods_channel` VALUES (7, '2018-04-09 09:19:17.539464', '2018-04-09 09:19:17.539538', 3, 'http://www.itcast.cn', 1, 7);
INSERT INTO `tb_goods_channel` VALUES (8, '2018-04-09 09:19:27.460701', '2018-04-09 09:19:27.460744', 3, 'http://www.itcast.cn', 2, 8);
INSERT INTO `tb_goods_channel` VALUES (9, '2018-04-09 09:19:40.863343', '2018-04-09 09:19:40.863387', 3, 'http://www.itcast.cn', 3, 9);
INSERT INTO `tb_goods_channel` VALUES (10, '2018-04-09 09:19:50.561302', '2018-04-09 09:19:50.561364', 3, 'http://www.itcast.cn', 4, 10);
INSERT INTO `tb_goods_channel` VALUES (11, '2018-04-09 09:20:01.493344', '2018-04-09 09:20:01.493495', 4, 'http://www.itcast.cn', 1, 11);
INSERT INTO `tb_goods_channel` VALUES (12, '2018-04-09 09:20:34.086724', '2018-04-09 09:20:34.086785', 4, 'http://www.itcast.cn', 2, 12);
INSERT INTO `tb_goods_channel` VALUES (13, '2018-04-09 09:20:42.379403', '2018-04-09 09:20:42.379451', 4, 'http://www.itcast.cn', 4, 13);
INSERT INTO `tb_goods_channel` VALUES (14, '2018-04-09 09:21:28.958754', '2018-04-09 09:21:28.958795', 4, 'http://www.itcast.cn', 4, 14);
INSERT INTO `tb_goods_channel` VALUES (15, '2018-04-09 09:21:40.106887', '2018-04-09 09:21:40.106969', 5, 'http://www.itcast.cn', 1, 15);
INSERT INTO `tb_goods_channel` VALUES (16, '2018-04-09 09:21:53.353755', '2018-04-09 09:21:53.353799', 5, 'http://www.itcast.cn', 2, 16);
INSERT INTO `tb_goods_channel` VALUES (17, '2018-04-09 09:22:00.609357', '2018-04-09 09:22:00.609399', 5, 'http://www.itcast.cn', 3, 17);
INSERT INTO `tb_goods_channel` VALUES (18, '2018-04-09 09:22:22.954795', '2018-04-09 09:22:22.954840', 5, 'http://www.itcast.cn', 4, 18);
INSERT INTO `tb_goods_channel` VALUES (19, '2018-04-09 09:22:36.104435', '2018-04-09 09:22:36.104479', 6, 'http://www.itcast.cn', 1, 19);
INSERT INTO `tb_goods_channel` VALUES (20, '2018-04-09 09:22:45.332578', '2018-04-09 09:22:45.332620', 6, 'http://www.itcast.cn', 2, 20);
INSERT INTO `tb_goods_channel` VALUES (21, '2018-04-09 09:22:54.175772', '2018-04-09 09:22:54.176014', 6, 'http://www.itcast.cn', 3, 21);
INSERT INTO `tb_goods_channel` VALUES (22, '2018-04-09 09:23:05.485045', '2018-04-09 09:23:05.485122', 7, 'http://www.itcast.cn', 1, 22);
INSERT INTO `tb_goods_channel` VALUES (23, '2018-04-09 09:23:15.810944', '2018-04-09 09:23:15.810994', 7, 'http://www.itcast.cn', 2, 23);
INSERT INTO `tb_goods_channel` VALUES (24, '2018-04-09 09:23:23.689513', '2018-04-09 09:23:23.689560', 7, 'http://www.itcast.cn', 3, 24);
INSERT INTO `tb_goods_channel` VALUES (25, '2018-04-09 09:23:35.724733', '2018-04-09 09:23:35.724773', 8, 'http://www.itcast.cn', 1, 25);
INSERT INTO `tb_goods_channel` VALUES (26, '2018-04-09 09:23:48.261767', '2018-04-09 09:23:48.261814', 8, 'http://www.itcast.cn', 2, 26);
INSERT INTO `tb_goods_channel` VALUES (27, '2018-04-09 09:24:03.645182', '2018-04-09 09:24:03.645227', 9, 'http://www.itcast.cn', 1, 27);
INSERT INTO `tb_goods_channel` VALUES (28, '2018-04-09 09:24:23.379561', '2018-04-09 09:24:23.379603', 9, 'http://www.itcast.cn', 2, 28);
INSERT INTO `tb_goods_channel` VALUES (29, '2018-04-09 09:24:35.402469', '2018-04-09 09:24:35.402513', 9, 'http://www.itcast.cn', 3, 29);
INSERT INTO `tb_goods_channel` VALUES (30, '2018-04-09 09:24:52.890507', '2018-04-09 09:24:52.890549', 9, 'http://www.itcast.cn', 4, 30);
INSERT INTO `tb_goods_channel` VALUES (31, '2018-04-09 09:25:00.005576', '2018-04-09 09:25:00.005658', 10, 'http://www.itcast.cn', 1, 31);
INSERT INTO `tb_goods_channel` VALUES (32, '2018-04-09 09:25:06.989099', '2018-04-09 09:25:06.989139', 10, 'http://www.itcast.cn', 2, 32);
INSERT INTO `tb_goods_channel` VALUES (33, '2018-04-09 09:25:13.785850', '2018-04-09 09:25:13.785911', 10, 'http://www.itcast.cn', 3, 33);
INSERT INTO `tb_goods_channel` VALUES (34, '2018-04-09 09:25:21.231690', '2018-04-09 09:25:21.231772', 11, 'http://www.itcast.cn', 1, 34);
INSERT INTO `tb_goods_channel` VALUES (35, '2018-04-09 09:25:30.766132', '2018-04-09 09:25:30.766177', 11, 'http://www.itcast.cn', 2, 35);
INSERT INTO `tb_goods_channel` VALUES (36, '2018-04-09 09:25:43.574584', '2018-04-09 09:25:43.574629', 11, 'http://www.itcast.cn', 3, 36);
INSERT INTO `tb_goods_channel` VALUES (37, '2018-04-09 09:26:00.332843', '2018-04-26 13:13:00.959857', 11, 'http://www.itcast.cn', 4, 37);

-- ----------------------------
-- Table structure for tb_sku
-- ----------------------------
DROP TABLE IF EXISTS `tb_sku`;
CREATE TABLE `tb_sku`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `caption` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `cost_price` decimal(10, 2) NOT NULL,
  `market_price` decimal(10, 2) NOT NULL,
  `stock` int NOT NULL,
  `sales` int NOT NULL,
  `comments` int NOT NULL,
  `is_launched` tinyint(1) NOT NULL,
  `default_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` int NOT NULL,
  `spu_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_sku_category_id_23dd76b7_fk_tb_goods_category_id`(`category_id` ASC) USING BTREE,
  INDEX `tb_sku_spu_id_120b25f6_fk_tb_spu_id`(`spu_id` ASC) USING BTREE,
  CONSTRAINT `tb_sku_category_id_23dd76b7_fk_tb_goods_category_id` FOREIGN KEY (`category_id`) REFERENCES `tb_goods_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_sku_spu_id_120b25f6_fk_tb_spu_id` FOREIGN KEY (`spu_id`) REFERENCES `tb_spu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_sku
-- ----------------------------
INSERT INTO `tb_sku` VALUES (1, '2018-04-11 17:28:21.804713', '2019-11-08 09:42:38.404263', 'Apple MacBook Pro 13.3英寸笔记本 银色', '【全新2017款】MacBook Pro,一身才华，一触，即发 了解【黑五返场特惠】 更多产品请点击【美多官方Apple旗舰店】', 11388.00, 10350.00, 13388.00, 93, 13, 2, 1, 'CtM3BVrPB4GAWkTlAAGuN6wB9fU4220429', 157, 1);
INSERT INTO `tb_sku` VALUES (2, '2018-04-12 06:53:54.575306', '2018-04-23 11:44:03.825103', 'Apple MacBook Pro 13.3英寸笔记本 深灰色', '【全新2017款】MacBook Pro,一身才华，一触，即发 了解【黑五返场特惠】 更多产品请点击【美多官方Apple旗舰店】', 11398.00, 10388.00, 13398.00, 97, 11, 0, 1, 'CtM3BVrPCAOAIKRBAAGvaeRBMfc0463515', 157, 1);
INSERT INTO `tb_sku` VALUES (3, '2018-04-14 02:14:04.599169', '2019-11-08 09:28:21.231236', 'Apple iPhone 8 Plus (A1864) 64GB 金色 移动联通电信4G手机', '选【移动优惠购】新机配新卡，198优质靓号，流量不限量！', 6499.00, 6300.00, 6598.00, 79, 21, 1, 1, 'CtM3BVrRZCqAUxp9AAFti6upbx41220032', 115, 2);
INSERT INTO `tb_sku` VALUES (4, '2018-04-14 02:20:33.355996', '2018-04-14 17:27:12.736139', 'Apple iPhone 8 Plus (A1864) 256GB 金色 移动联通电信4G手机', '选【移动优惠购】新机配新卡，198优质靓号，流量不限量！', 7988.00, 7888.00, 8088.00, 84, 25, 0, 1, 'CtM3BVrRZa6ANO_sAAFti6upbx40753757', 115, 2);
INSERT INTO `tb_sku` VALUES (5, '2018-04-14 02:45:23.341909', '2019-11-11 07:06:18.406427', 'Apple iPhone 8 Plus (A1864) 64GB 深空灰色 移动联通电信4G手机', '选【移动优惠购】新机配新卡，198优质靓号，流量不限量！', 6688.00, 6588.00, 6788.00, 78, 41, 2, 1, 'CtM3BVrRa8iAZdz1AAFZsBqChgk2188464', 115, 2);
INSERT INTO `tb_sku` VALUES (6, '2018-04-14 02:49:40.912682', '2018-04-25 11:09:35.936530', 'Apple iPhone 8 Plus (A1864) 256GB 深空灰色 移动联通电信4G手机', '选【移动优惠购】新机配新卡，198优质靓号，流量不限量！', 7988.00, 7888.00, 7988.00, 94, 12, 1, 1, 'CtM3BVrRbI2ARekNAAFZsBqChgk3141998', 115, 2);
INSERT INTO `tb_sku` VALUES (7, '2018-04-14 02:55:11.172604', '2018-04-14 17:27:28.772353', 'Apple iPhone 8 Plus (A1864) 64GB 银色 移动联通电信4G手机', '选【移动优惠购】新机配新卡，198优质靓号，流量不限量！', 6688.00, 6588.00, 6788.00, 94, 6, 0, 1, 'CtM3BVrRbh2AX3JVAAFvJD02RWs4638828', 115, 2);
INSERT INTO `tb_sku` VALUES (8, '2018-04-14 02:56:17.331169', '2018-04-14 17:27:34.536772', 'Apple iPhone 8 Plus (A1864) 256GB 银色 移动联通电信4G手机', '选【移动优惠购】新机配新卡，198优质靓号，流量不限量！', 7988.00, 7888.00, 7988.00, 100, 1, 0, 1, 'CtM3BVrRbjSAazeSAAFvJD02RWs2636429', 115, 2);
INSERT INTO `tb_sku` VALUES (9, '2018-04-14 03:09:00.909709', '2018-04-14 17:27:40.624770', '华为 HUAWEI P10 Plus 6GB+64GB 钻雕金 移动联通电信4G手机 双卡双待', 'wifi双天线设计！徕卡人像摄影！P10徕卡双摄拍照，低至2988元！', 3388.00, 3288.00, 3388.00, 100, 0, 0, 1, 'CtM3BVrRcUeAHp9pAARfIK95am88523545', 115, 3);
INSERT INTO `tb_sku` VALUES (10, '2018-04-14 03:13:40.226704', '2018-04-25 11:06:55.087206', '华为 HUAWEI P10 Plus 6GB+128GB 钻雕金 移动联通电信4G手机 双卡双待', 'wifi双天线设计！徕卡人像摄影！P10徕卡双摄拍照，低至2988元！', 3788.00, 3588.00, 3888.00, 100, 0, 5, 1, 'CtM3BVrRchWAMc8rAARfIK95am88158618', 115, 3);
INSERT INTO `tb_sku` VALUES (11, '2018-04-14 03:16:27.620102', '2018-04-25 10:56:51.267674', '华为 HUAWEI P10 Plus 6GB+128GB 钻雕蓝 移动联通电信4G手机 双卡双待', 'wifi双天线设计！徕卡人像摄影！P10徕卡双摄拍照，低至2988元！', 3788.00, 3588.00, 3888.00, 100, 0, 2, 1, 'CtM3BVrRdG6AYdapAAcPaeOqMpA1594598', 115, 3);
INSERT INTO `tb_sku` VALUES (12, '2018-04-14 03:17:25.671905', '2018-04-14 17:28:06.649098', '华为 HUAWEI P10 Plus 6GB+64GB 钻雕蓝 移动联通电信4G手机 双卡双待', 'wifi双天线设计！徕卡人像摄影！P10徕卡双摄拍照，低至2988元！', 3388.00, 3288.00, 3488.00, 100, 0, 0, 1, 'CtM3BVrRdICAO_CRAAcPaeOqMpA2024091', 115, 3);
INSERT INTO `tb_sku` VALUES (13, '2018-04-14 03:18:04.588296', '2019-11-08 09:56:46.635779', '华为 HUAWEI P10 Plus 6GB+64GB 玫瑰金 移动联通电信4G手机 双卡双待', 'wifi双天线设计！徕卡人像摄影！P10徕卡双摄拍照，低至2988元！', 3388.00, 3288.00, 3488.00, 50, 1, 1, 1, 'CtM3BVrRdLGARgBAAAVslh9vkK00474545', 115, 3);
INSERT INTO `tb_sku` VALUES (14, '2018-04-14 03:19:03.691772', '2019-11-08 09:56:48.758901', '华为 HUAWEI P10 Plus 6GB+128GB 玫瑰金 移动联通电信4G手机 双卡双待', 'wifi双天线设计！徕卡人像摄影！P10徕卡双摄拍照，低至2988元！', 3788.00, 3588.00, 3888.00, 99, 5, 2, 1, 'CtM3BVrRdMSAaDUtAAVslh9vkK04466364', 115, 3);
INSERT INTO `tb_sku` VALUES (15, '2018-04-14 03:20:00.777150', '2018-04-14 17:28:16.738212', '华为 HUAWEI P10 Plus 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待', 'wifi双天线设计！徕卡人像摄影！P10徕卡双摄拍照，低至2988元！', 3388.00, 3288.00, 3488.00, 296, 6, 0, 1, 'CtM3BVrRdOiAUBFXAAYJrpessGQ2842711', 115, 3);
INSERT INTO `tb_sku` VALUES (16, '2018-04-14 03:20:36.855901', '2018-04-26 10:47:07.236432', '华为 HUAWEI P10 Plus 6GB+128GB 曜石黑 移动联通电信4G手机 双卡双待', '666 wifi双天线设计！徕卡人像摄影！P10徕卡双摄拍照，低至2988元！', 3788.00, 3588.00, 3888.00, 499, 1, 0, 1, 'CtM3BVrRdPeAXNDMAAYJrpessGQ9777651', 115, 3);

-- ----------------------------
-- Table structure for tb_sku_image
-- ----------------------------
DROP TABLE IF EXISTS `tb_sku_image`;
CREATE TABLE `tb_sku_image`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sku_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_sku_image_sku_id_8c6d7195_fk_tb_sku_id`(`sku_id` ASC) USING BTREE,
  CONSTRAINT `tb_sku_image_sku_id_8c6d7195_fk_tb_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `tb_sku` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_sku_image
-- ----------------------------
INSERT INTO `tb_sku_image` VALUES (4, '2018-04-12 07:15:13.873180', '2018-04-14 17:26:14.513939', 'CtM3BVrPB4GAWkTlAAGuN6wB9fU4220429', 1);
INSERT INTO `tb_sku_image` VALUES (5, '2018-04-12 07:15:21.029143', '2018-04-12 07:15:21.029186', 'CtM3BVrPB4mAEq_WAADhmMQLkZM2624277', 1);
INSERT INTO `tb_sku_image` VALUES (6, '2018-04-12 07:15:28.362779', '2018-04-12 07:15:28.362824', 'CtM3BVrPB5CALKn6AADq-Afr0eE1672090', 1);
INSERT INTO `tb_sku_image` VALUES (7, '2018-04-12 07:17:23.935313', '2018-04-14 17:26:49.549376', 'CtM3BVrPCAOAIKRBAAGvaeRBMfc0463515', 2);
INSERT INTO `tb_sku_image` VALUES (8, '2018-04-12 07:17:31.408278', '2018-04-12 07:17:31.408320', 'CtM3BVrPCAuAYqIcAAD_zetbIJ84926354', 2);
INSERT INTO `tb_sku_image` VALUES (9, '2018-04-12 07:17:39.201787', '2018-04-12 07:17:39.201830', 'CtM3BVrPCBOADuuvAADq-Afr0eE9666965', 2);
INSERT INTO `tb_sku_image` VALUES (10, '2018-04-14 02:15:06.992811', '2018-04-14 17:26:54.035453', 'CtM3BVrRZCqAUxp9AAFti6upbx41220032', 3);
INSERT INTO `tb_sku_image` VALUES (11, '2018-04-14 02:15:14.933468', '2018-04-14 02:15:14.933510', 'CtM3BVrRZDKAXCsoAANy-gDBsak1396581', 3);
INSERT INTO `tb_sku_image` VALUES (12, '2018-04-14 02:15:23.533360', '2018-04-14 02:15:23.533402', 'CtM3BVrRZDuAHu9qAAEoJ7X2Zrk9446545', 3);
INSERT INTO `tb_sku_image` VALUES (13, '2018-04-14 02:21:34.330147', '2018-04-14 17:27:12.729883', 'CtM3BVrRZa6ANO_sAAFti6upbx40753757', 4);
INSERT INTO `tb_sku_image` VALUES (14, '2018-04-14 02:21:42.216194', '2018-04-14 02:21:42.216237', 'CtM3BVrRZbaATwU2AANy-gDBsak6195744', 4);
INSERT INTO `tb_sku_image` VALUES (15, '2018-04-14 02:21:50.087699', '2018-04-14 02:21:50.087747', 'CtM3BVrRZb6Ac6FFAAEoJ7X2Zrk5720374', 4);
INSERT INTO `tb_sku_image` VALUES (16, '2018-04-14 02:47:36.030339', '2018-04-14 17:27:17.174392', 'CtM3BVrRa8iAZdz1AAFZsBqChgk2188464', 5);
INSERT INTO `tb_sku_image` VALUES (17, '2018-04-14 02:47:44.351127', '2018-04-14 02:47:44.351183', 'CtM3BVrRa9CARC7lAAMO0cff_1g7347921', 5);
INSERT INTO `tb_sku_image` VALUES (18, '2018-04-14 02:47:54.952219', '2018-04-14 02:47:54.952277', 'CtM3BVrRa9qAbCXWAAEovaKouDU2764892', 5);
INSERT INTO `tb_sku_image` VALUES (19, '2018-04-14 02:50:53.037181', '2018-04-14 17:27:23.920025', 'CtM3BVrRbI2ARekNAAFZsBqChgk3141998', 6);
INSERT INTO `tb_sku_image` VALUES (20, '2018-04-14 02:51:01.518195', '2018-04-14 02:51:01.518241', 'CtM3BVrRbJWAEllkAAMO0cff_1g6980672', 6);
INSERT INTO `tb_sku_image` VALUES (21, '2018-04-14 02:51:11.648093', '2018-04-14 02:51:11.648139', 'CtM3BVrRbJ-AIjVcAAEovaKouDU7324803', 6);
INSERT INTO `tb_sku_image` VALUES (22, '2018-04-14 02:57:33.556398', '2018-04-14 17:27:28.765339', 'CtM3BVrRbh2AX3JVAAFvJD02RWs4638828', 7);
INSERT INTO `tb_sku_image` VALUES (23, '2018-04-14 02:57:41.405287', '2018-04-14 02:57:41.405329', 'CtM3BVrRbiWAYvb5AAM7qusgQKA1299367', 7);
INSERT INTO `tb_sku_image` VALUES (24, '2018-04-14 02:57:49.310718', '2018-04-14 02:57:49.310778', 'CtM3BVrRbi2AIt2gAAEtG6xmEQk0223613', 7);
INSERT INTO `tb_sku_image` VALUES (25, '2018-04-14 02:57:56.642831', '2018-04-14 17:27:34.529926', 'CtM3BVrRbjSAazeSAAFvJD02RWs2636429', 8);
INSERT INTO `tb_sku_image` VALUES (26, '2018-04-14 02:58:04.268608', '2018-04-14 02:58:04.268654', 'CtM3BVrRbjyAQQWfAAM7qusgQKA3083019', 8);
INSERT INTO `tb_sku_image` VALUES (27, '2018-04-14 02:58:15.478936', '2018-04-14 02:58:15.478988', 'CtM3BVrRbkeAOtIYAAEtG6xmEQk7850211', 8);
INSERT INTO `tb_sku_image` VALUES (28, '2018-04-14 03:11:03.449568', '2018-04-14 17:27:40.618166', 'CtM3BVrRcUeAHp9pAARfIK95am88523545', 9);
INSERT INTO `tb_sku_image` VALUES (29, '2018-04-14 03:11:12.819881', '2018-04-14 03:11:12.819935', 'CtM3BVrRcVCASV6vAALt1TiUHbQ0320035', 9);
INSERT INTO `tb_sku_image` VALUES (30, '2018-04-14 03:14:29.035188', '2018-04-14 17:27:54.908811', 'CtM3BVrRchWAMc8rAARfIK95am88158618', 10);
INSERT INTO `tb_sku_image` VALUES (31, '2018-04-14 03:14:38.491138', '2018-04-14 03:14:38.491185', 'CtM3BVrRch6AO_L1AALt1TiUHbQ6329774', 10);
INSERT INTO `tb_sku_image` VALUES (32, '2018-04-14 03:24:30.185682', '2018-04-14 17:28:01.108758', 'CtM3BVrRdG6AYdapAAcPaeOqMpA1594598', 11);
INSERT INTO `tb_sku_image` VALUES (33, '2018-04-14 03:24:38.335784', '2018-04-14 03:24:38.335829', 'CtM3BVrRdHaAO6nxAARV14yhum85841702', 11);
INSERT INTO `tb_sku_image` VALUES (34, '2018-04-14 03:24:48.608311', '2018-04-14 17:28:38.713367', 'CtM3BVrRdICAO_CRAAcPaeOqMpA2024091', 12);
INSERT INTO `tb_sku_image` VALUES (35, '2018-04-14 03:25:03.588442', '2018-04-14 03:25:03.588487', 'CtM3BVrRdI-ACDCRAARV14yhum80519978', 12);
INSERT INTO `tb_sku_image` VALUES (36, '2018-04-14 03:25:38.029709', '2018-04-14 17:28:23.878317', 'CtM3BVrRdLGARgBAAAVslh9vkK00474545', 13);
INSERT INTO `tb_sku_image` VALUES (37, '2018-04-14 03:25:46.628907', '2018-04-14 03:25:46.628954', 'CtM3BVrRdLqAD5leAAMdyS99nTA6298698', 13);
INSERT INTO `tb_sku_image` VALUES (38, '2018-04-14 03:25:56.073002', '2018-04-14 17:28:20.655513', 'CtM3BVrRdMSAaDUtAAVslh9vkK04466364', 14);
INSERT INTO `tb_sku_image` VALUES (39, '2018-04-14 03:26:04.263619', '2018-04-14 03:26:04.263668', 'CtM3BVrRdMyAPoryAAMdyS99nTA1388842', 14);
INSERT INTO `tb_sku_image` VALUES (40, '2018-04-14 03:26:32.774444', '2018-04-14 17:28:16.733407', 'CtM3BVrRdOiAUBFXAAYJrpessGQ2842711', 15);
INSERT INTO `tb_sku_image` VALUES (41, '2018-04-14 03:26:40.033032', '2018-04-14 03:26:40.033091', 'CtM3BVrRdPCAed9FAAQ3kdJbqeQ7404140', 15);
INSERT INTO `tb_sku_image` VALUES (42, '2018-04-14 03:26:47.275669', '2018-04-14 17:28:13.652820', 'CtM3BVrRdPeAXNDMAAYJrpessGQ9777651', 16);
INSERT INTO `tb_sku_image` VALUES (43, '2018-04-14 03:27:00.359589', '2018-04-14 03:27:00.359636', 'CtM3BVrRdQSAHxqbAAQ3kdJbqeQ1136308', 16);

-- ----------------------------
-- Table structure for tb_sku_specification
-- ----------------------------
DROP TABLE IF EXISTS `tb_sku_specification`;
CREATE TABLE `tb_sku_specification`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `option_id` int NOT NULL,
  `sku_id` int NOT NULL,
  `spec_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_sku_specification_option_id_80a17a3d_fk_tb_specifi`(`option_id` ASC) USING BTREE,
  INDEX `tb_sku_specification_sku_id_10aee5ae_fk_tb_sku_id`(`sku_id` ASC) USING BTREE,
  INDEX `tb_sku_specification_spec_id_5aa6db0c_fk_tb_spu_specification_id`(`spec_id` ASC) USING BTREE,
  CONSTRAINT `tb_sku_specification_option_id_80a17a3d_fk_tb_specifi` FOREIGN KEY (`option_id`) REFERENCES `tb_specification_option` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_sku_specification_sku_id_10aee5ae_fk_tb_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `tb_sku` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_sku_specification_spec_id_5aa6db0c_fk_tb_spu_specification_id` FOREIGN KEY (`spec_id`) REFERENCES `tb_spu_specification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_sku_specification
-- ----------------------------
INSERT INTO `tb_sku_specification` VALUES (1, '2018-04-11 17:53:37.178101', '2018-04-11 17:53:37.178148', 1, 1, 1);
INSERT INTO `tb_sku_specification` VALUES (2, '2018-04-11 17:56:00.141036', '2018-04-11 17:56:00.141078', 4, 1, 2);
INSERT INTO `tb_sku_specification` VALUES (3, '2018-04-11 17:56:17.907973', '2018-04-11 17:56:17.908017', 7, 1, 3);
INSERT INTO `tb_sku_specification` VALUES (4, '2018-04-12 07:11:20.138634', '2018-04-12 07:11:20.138677', 1, 2, 1);
INSERT INTO `tb_sku_specification` VALUES (5, '2018-04-12 07:11:28.227056', '2018-04-12 07:11:28.227099', 3, 2, 2);
INSERT INTO `tb_sku_specification` VALUES (6, '2018-04-12 07:11:48.046789', '2018-04-12 07:11:48.046885', 7, 2, 3);
INSERT INTO `tb_sku_specification` VALUES (7, '2018-04-14 02:16:36.204410', '2018-04-14 02:16:36.204453', 8, 3, 4);
INSERT INTO `tb_sku_specification` VALUES (8, '2018-04-14 02:16:44.309888', '2018-04-14 02:16:44.309972', 11, 3, 5);
INSERT INTO `tb_sku_specification` VALUES (9, '2018-04-14 02:20:55.765324', '2018-04-14 02:20:55.765377', 8, 4, 4);
INSERT INTO `tb_sku_specification` VALUES (10, '2018-04-14 02:21:04.971106', '2018-04-14 02:21:04.971155', 12, 4, 5);
INSERT INTO `tb_sku_specification` VALUES (11, '2018-04-14 02:45:41.913322', '2018-04-14 02:45:41.913372', 9, 5, 4);
INSERT INTO `tb_sku_specification` VALUES (12, '2018-04-14 02:45:50.801926', '2018-04-14 02:45:50.802005', 11, 5, 5);
INSERT INTO `tb_sku_specification` VALUES (13, '2018-04-14 02:50:00.232648', '2018-04-14 02:50:00.232694', 9, 6, 4);
INSERT INTO `tb_sku_specification` VALUES (14, '2018-04-14 02:50:08.715882', '2018-04-14 02:50:08.715927', 12, 6, 5);
INSERT INTO `tb_sku_specification` VALUES (15, '2018-04-14 02:56:48.320934', '2018-04-14 02:56:48.320980', 10, 7, 4);
INSERT INTO `tb_sku_specification` VALUES (16, '2018-04-14 02:56:55.879794', '2018-04-14 02:56:55.879839', 11, 7, 5);
INSERT INTO `tb_sku_specification` VALUES (17, '2018-04-14 02:57:04.305406', '2018-04-14 02:57:04.305462', 10, 8, 4);
INSERT INTO `tb_sku_specification` VALUES (18, '2018-04-14 02:57:12.212999', '2018-04-14 02:57:12.213047', 12, 8, 5);
INSERT INTO `tb_sku_specification` VALUES (19, '2018-04-14 03:10:09.203601', '2018-04-14 03:10:09.203646', 13, 9, 6);
INSERT INTO `tb_sku_specification` VALUES (20, '2018-04-14 03:10:19.242994', '2018-04-14 03:10:19.243421', 20, 9, 7);
INSERT INTO `tb_sku_specification` VALUES (21, '2018-04-14 03:14:02.319574', '2018-04-14 03:14:02.319621', 13, 10, 6);
INSERT INTO `tb_sku_specification` VALUES (22, '2018-04-14 03:14:14.554189', '2018-04-14 03:14:14.554237', 21, 10, 7);
INSERT INTO `tb_sku_specification` VALUES (23, '2018-04-14 03:21:25.602470', '2018-04-14 03:21:25.602519', 14, 11, 6);
INSERT INTO `tb_sku_specification` VALUES (24, '2018-04-14 03:21:38.123239', '2018-04-14 03:21:38.123285', 21, 11, 7);
INSERT INTO `tb_sku_specification` VALUES (25, '2018-04-14 03:21:48.843531', '2018-04-14 03:21:48.843577', 14, 12, 6);
INSERT INTO `tb_sku_specification` VALUES (26, '2018-04-14 03:22:01.324252', '2018-04-14 03:22:01.324321', 20, 12, 7);
INSERT INTO `tb_sku_specification` VALUES (27, '2018-04-14 03:22:11.921568', '2018-04-14 03:22:11.921613', 15, 13, 6);
INSERT INTO `tb_sku_specification` VALUES (28, '2018-04-14 03:22:23.702276', '2018-04-14 03:22:23.702323', 20, 13, 7);
INSERT INTO `tb_sku_specification` VALUES (29, '2018-04-14 03:22:45.382268', '2018-04-14 03:22:45.382313', 15, 14, 6);
INSERT INTO `tb_sku_specification` VALUES (30, '2018-04-14 03:22:53.418091', '2018-04-14 03:22:53.418147', 21, 14, 7);
INSERT INTO `tb_sku_specification` VALUES (31, '2018-04-14 03:23:02.508118', '2018-04-14 03:23:02.508186', 16, 15, 6);
INSERT INTO `tb_sku_specification` VALUES (32, '2018-04-14 03:23:12.294204', '2018-04-14 03:23:12.294255', 20, 15, 7);
INSERT INTO `tb_sku_specification` VALUES (33, '2018-04-14 03:23:20.134049', '2018-04-14 03:23:20.134095', 16, 16, 6);
INSERT INTO `tb_sku_specification` VALUES (34, '2018-04-14 03:23:36.250798', '2018-04-14 03:23:36.250844', 21, 16, 7);

-- ----------------------------
-- Table structure for tb_specification_option
-- ----------------------------
DROP TABLE IF EXISTS `tb_specification_option`;
CREATE TABLE `tb_specification_option`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `value` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `spec_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_specification_opt_spec_id_3f11adee_fk_tb_spu_specification`(`spec_id` ASC) USING BTREE,
  CONSTRAINT `tb_specification_opt_spec_id_3f11adee_fk_tb_spu_specification` FOREIGN KEY (`spec_id`) REFERENCES `tb_spu_specification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_specification_option
-- ----------------------------
INSERT INTO `tb_specification_option` VALUES (1, '2018-04-11 17:22:55.126053', '2018-04-11 17:22:55.126095', '13.3英寸', 1);
INSERT INTO `tb_specification_option` VALUES (2, '2018-04-11 17:24:04.841221', '2018-04-11 17:24:04.841265', '15.4英寸', 1);
INSERT INTO `tb_specification_option` VALUES (3, '2018-04-11 17:24:23.862341', '2018-04-11 17:24:23.862385', '深灰色', 2);
INSERT INTO `tb_specification_option` VALUES (4, '2018-04-11 17:24:35.256820', '2018-04-11 17:24:35.256868', '银色', 2);
INSERT INTO `tb_specification_option` VALUES (5, '2018-04-11 17:25:04.607535', '2018-04-11 17:25:04.607604', 'core i5/8G内存/256G存储', 3);
INSERT INTO `tb_specification_option` VALUES (6, '2018-04-11 17:25:15.969671', '2018-04-11 17:25:15.969714', 'core i5/8G内存/128G存储', 3);
INSERT INTO `tb_specification_option` VALUES (7, '2018-04-11 17:25:35.025857', '2018-04-12 07:12:08.090494', 'core i5/8G内存/512G存储', 3);
INSERT INTO `tb_specification_option` VALUES (8, '2018-04-14 02:11:12.231649', '2018-04-14 02:11:12.231700', '金色', 4);
INSERT INTO `tb_specification_option` VALUES (9, '2018-04-14 02:11:21.073811', '2018-04-14 02:11:21.073917', '深空灰', 4);
INSERT INTO `tb_specification_option` VALUES (10, '2018-04-14 02:11:27.692284', '2018-04-14 02:11:27.692329', '银色', 4);
INSERT INTO `tb_specification_option` VALUES (11, '2018-04-14 02:11:35.967113', '2018-04-14 02:11:35.967163', '64GB', 5);
INSERT INTO `tb_specification_option` VALUES (12, '2018-04-14 02:11:42.557263', '2018-04-14 02:11:42.557354', '256GB', 5);
INSERT INTO `tb_specification_option` VALUES (13, '2018-04-14 03:05:48.316724', '2018-04-14 03:05:48.316835', '钻雕金', 6);
INSERT INTO `tb_specification_option` VALUES (14, '2018-04-14 03:05:58.478640', '2018-04-14 03:05:58.478689', '钻雕蓝', 6);
INSERT INTO `tb_specification_option` VALUES (15, '2018-04-14 03:06:05.995609', '2018-04-14 03:06:05.995652', '玫瑰金', 6);
INSERT INTO `tb_specification_option` VALUES (16, '2018-04-14 03:06:37.587555', '2018-04-14 03:06:37.587603', '曜石黑', 6);
INSERT INTO `tb_specification_option` VALUES (20, '2018-04-14 03:07:15.727628', '2018-04-14 03:07:15.727670', '64GB', 7);
INSERT INTO `tb_specification_option` VALUES (21, '2018-04-14 03:07:23.480154', '2018-04-14 03:07:23.480237', '128GB', 7);

-- ----------------------------
-- Table structure for tb_spu
-- ----------------------------
DROP TABLE IF EXISTS `tb_spu`;
CREATE TABLE `tb_spu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sales` int NOT NULL,
  `comments` int NOT NULL,
  `desc_detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc_pack` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc_service` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `brand_id` int NOT NULL,
  `category1_id` int NOT NULL,
  `category2_id` int NOT NULL,
  `category3_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_spu_brand_id_0f4497ef_fk_tb_brand_id`(`brand_id` ASC) USING BTREE,
  INDEX `tb_spu_category1_id_565be624_fk_tb_goods_category_id`(`category1_id` ASC) USING BTREE,
  INDEX `tb_spu_category2_id_9c977d45_fk_tb_goods_category_id`(`category2_id` ASC) USING BTREE,
  INDEX `tb_spu_category3_id_7000f183_fk_tb_goods_category_id`(`category3_id` ASC) USING BTREE,
  CONSTRAINT `tb_spu_brand_id_0f4497ef_fk_tb_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `tb_brand` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_spu_category1_id_565be624_fk_tb_goods_category_id` FOREIGN KEY (`category1_id`) REFERENCES `tb_goods_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_spu_category2_id_9c977d45_fk_tb_goods_category_id` FOREIGN KEY (`category2_id`) REFERENCES `tb_goods_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_spu_category3_id_7000f183_fk_tb_goods_category_id` FOREIGN KEY (`category3_id`) REFERENCES `tb_goods_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_spu
-- ----------------------------
INSERT INTO `tb_spu` VALUES (1, '2018-04-11 16:01:28.547507', '2019-11-08 09:42:38.508269', 'Apple MacBook Pro 笔记本', 19, 2, '<p style= \"text-align:center\\\">MacBook Pro 您最得力的助手</p>\r\n<p>它纤薄如刃，轻盈如羽，却又比以往速度更快、性能更强大。它为你展现的，是迄今最明亮、最多彩的 Mac 笔记本显示屏。它更配备了触控栏，一个内置于键盘的玻璃面多点触控条，让你能在需要时快速取用各种工具。MacBook Pro 是对我们突破性理念的一场出色演绎，而它，也正期待着演绎你的奇思妙想。</p><p><img src=\"/static/images/goods/CtM3BVrOQMiAGvPHAADtqTciKRc8279519.jpg\"></p>\r\n<p><img src=\"/static/images/goods/CtM3BVrOQXSAbLx2AAJCgscYhy88216086.jpg\"></p>\r\n<p><img src=\"/static/images/goods/CtM3BVrOQcCAap-CAALlB0nCsAk3157451.jpg\"></p>\r\n<p><img src=\"/static/images/goods/CtM3BVrOQhiAVgwfAALNvpwId4s8236297.jpg\"></p>\r\n<p><img src=\"/static/images/goods/CtM3BVrOQimACGAXAAJKAmr2-qQ2403102.jpg\"></p>\r\n<p><img src=\"/static/images/goods/CtM3BVrOQjeAYApsAAJDtceKEm87833689.jpg\"></p>\r\n<p>&nbsp;</p>', '<h2>包装清单</h2>\r\n\r\n<p>MacBook Air 电源适配器 交流电源插头 电源线</p>', '<p>&nbsp;<strong>厂家服务</strong></p>\r\n\r\n<p>1、Mac 电脑整机及所含附件自原始购买之日起享有 1 年保修期。主要部件享有自购买之日起 2 年保修期。Mac 台式电脑所有主要部件包括：主板 (MLB)、处理器 (CPU)、内存、硬盘 (HDD/SSD)、电源和显卡。Mac 笔记本电脑所有主要部件范围包括主板 (MLB)、处理器 (CPU)、内存、硬盘 (HDD/SSD)、电源适配器、键盘和显示屏 (LCD)。可另外购买 AppleCare Protection Plan 全方位服务计划。2、Mac电脑不支持7天无理由退换货，请您再三确认需求后再下单购买。如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务。3、Apple官方售后服务电话：4006668800，您可以查询本品牌在各地售后服务中心的联系方式及地址。<br />\r\n如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！<br />\r\n(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，<a href=\"http://www.apple.com.cn/\" target=\"_blank\">请点击这儿查询......</a><br />\r\n<br />\r\n品牌官方网站：<a href=\"http://www.apple.com.cn/\" target=\"_blank\">http://www.apple.com.cn/</a><br />\r\n售后服务电话：4006668800</p>\r\n\r\n<p><strong>正品行货</strong></p>\r\n\r\n<p>京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。</p>\r\n\r\n<p><strong>全国联保</strong></p>\r\n\r\n<p>凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和<a href=\"https://help.jd.com/help/question-892.html\" target=\"_blank\">运费政策</a>，请您放心购买！&nbsp;<br />\r\n<br />\r\n注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！</p>', 1, 4, 45, 157);
INSERT INTO `tb_spu` VALUES (2, '2018-04-14 02:09:40.437769', '2019-11-15 09:23:39.663982', 'Apple iPhone 8 Plus', 96, 4, '<p><img src=\"/static/images/goods/CtM3BVrRYoGAC2KAAADDtplWV_04901262.jpg\" ></p>\r\n<p><img src=\"/static/images/goods/CtM3BVrRYpCAS9FFAADxmVbf5qw4487023.jpg\" ></p>\r\n<p><img src=\"/static/images/goods/CtM3BVrRYp6ACUuEAAWXt1XYzNg5251947.jpg\" ></p>\r\n<p><img src=\"/static/images/goods/CtM3BVrRYqmANdXMAAXn26rWyDY0861997.jpg\" ></p>', '<h3>包装清单</h3>\r\n\r\n<p>采用 Lightning 接头的 EarPods *1，iPhone *1，Lightning 至 USB 连接线*1，5W USB 电源适配器*1，Lightning 至3.5毫米耳机插孔转换器*1</p>', '<p>&nbsp;<strong>厂家服务</strong></p>\r\n\r\n<p>本产品全国联保，享受三包服务，质保期为：一年质保<br />\r\n如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！<br />\r\n(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，<a href=\"http://www.apple.com/cn/\" target=\"_blank\">请点击这儿查询......</a><br />\r\n<br />\r\n品牌官方网站：<a href=\"http://www.apple.com/cn/\" target=\"_blank\">http://www.apple.com/cn/</a><br />\r\n售后服务电话：400-666-8800</p>\r\n\r\n<p>&nbsp;美多<strong>承诺</strong></p>\r\n\r\n<p>美多平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！<br />\r\n注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！</p>\r\n\r\n<p><strong>正品行货</strong></p>\r\n\r\n<p>京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。</p>\r\n\r\n<p><strong>全国联保</strong></p>\r\n\r\n<p>凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和<a href=\"https://help.jd.com/help/question-892.html\" target=\"_blank\">运费政策</a>，请您放心购买！&nbsp;<br />\r\n<br />\r\n注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！</p>', 1, 1, 38, 115);
INSERT INTO `tb_spu` VALUES (3, '2018-04-14 03:03:53.059061', '2019-11-15 02:38:51.772794', '华为 HUAWEI P10 Plus', 8, 10, '<p><img src=\"/static/images/goods/CtM3BVrRb2yAJ0cWADV9oDHhgG06294506.jpg\"></p>', '<h3>包装清单</h3>\r\n\r\n<p>手机（含内置电池） x 1、大电流华为SuperCharge充电器 x 1、 USB数据线 x 1、半入耳式线控耳机 x 1、快速指南 x 1、三包凭证 x 1、取卡针 x 1、保护壳 x 1</p>', '<p>&nbsp;<strong>厂家服务</strong></p>\r\n\r\n<p>本产品全国联保，享受三包服务，质保期为：一年质保<br />\r\n如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！<br />\r\n(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，<a href=\"http://www.huawei.com/cn/\" target=\"_blank\">请点击这儿查询......</a><br />\r\n<br />\r\n品牌官方网站：<a href=\"http://www.huawei.com/cn/\" target=\"_blank\">http://www.huawei.com/cn/</a><br />\r\n售后服务电话：400-830-8300</p>\r\n\r\n<p>&nbsp;<strong>京东承诺</strong></p>\r\n\r\n<p>京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！<br />\r\n注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！</p>\r\n\r\n<p><strong>正品行货</strong></p>\r\n\r\n<p>京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。</p>\r\n\r\n<p><strong>全国联保</strong></p>\r\n\r\n<p>凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和<a href=\"https://help.jd.com/help/question-892.html\" target=\"_blank\">运费政策</a>，请您放心购买！&nbsp;<br />\r\n<br />\r\n注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解</p>', 2, 1, 38, 115);

-- ----------------------------
-- Table structure for tb_spu_specification
-- ----------------------------
DROP TABLE IF EXISTS `tb_spu_specification`;
CREATE TABLE `tb_spu_specification`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `spu_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_spu_specification_spu_id_41f4eda6_fk_tb_spu_id`(`spu_id` ASC) USING BTREE,
  CONSTRAINT `tb_spu_specification_spu_id_41f4eda6_fk_tb_spu_id` FOREIGN KEY (`spu_id`) REFERENCES `tb_spu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_spu_specification
-- ----------------------------
INSERT INTO `tb_spu_specification` VALUES (1, '2018-04-11 17:20:30.142577', '2018-04-11 17:20:30.142657', '屏幕尺寸', 1);
INSERT INTO `tb_spu_specification` VALUES (2, '2018-04-11 17:21:57.862419', '2018-04-11 17:21:57.862464', '颜色', 1);
INSERT INTO `tb_spu_specification` VALUES (3, '2018-04-11 17:22:04.687913', '2018-04-11 17:22:04.687956', '版本', 1);
INSERT INTO `tb_spu_specification` VALUES (4, '2018-04-14 02:10:32.810681', '2018-04-14 02:10:32.810728', '颜色', 2);
INSERT INTO `tb_spu_specification` VALUES (5, '2018-04-14 02:10:39.748266', '2018-04-14 02:10:39.748314', '内存', 2);
INSERT INTO `tb_spu_specification` VALUES (6, '2018-04-14 03:04:39.450373', '2018-04-14 03:04:39.450418', '颜色', 3);
INSERT INTO `tb_spu_specification` VALUES (7, '2018-04-14 03:04:50.182073', '2018-04-14 03:04:50.182118', '版本', 3);

SET FOREIGN_KEY_CHECKS = 1;
