/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50646
 Source Host           : localhost:3306
 Source Schema         : wmsdb

 Target Server Type    : MySQL
 Target Server Version : 50646
 File Encoding         : 65001

 Date: 29/05/2021 18:28:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for approve_log
-- ----------------------------
DROP TABLE IF EXISTS `approve_log`;
CREATE TABLE `approve_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NULL DEFAULT NULL,
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '审批日志类型：\n1：出入库审批；\n2：移位审批；\n',
  `status` tinyint(3) UNSIGNED NULL DEFAULT NULL COMMENT '100：修改数据\n101：删除数据',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求信息',
  `create_uid` int(10) UNSIGNED NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of approve_log
-- ----------------------------
INSERT INTO `approve_log` VALUES (55, 25, 1, 1, NULL, NULL, 1, '2019-07-02 10:24:54');
INSERT INTO `approve_log` VALUES (56, 26, 1, 1, NULL, NULL, 1, '2019-07-02 10:32:05');
INSERT INTO `approve_log` VALUES (57, 26, 1, 2, NULL, NULL, 1, '2019-07-02 10:32:38');
INSERT INTO `approve_log` VALUES (58, 26, 1, 3, NULL, NULL, 1, '2019-07-02 10:32:40');
INSERT INTO `approve_log` VALUES (59, 26, 1, 5, NULL, NULL, 1, '2019-07-02 10:32:43');
INSERT INTO `approve_log` VALUES (60, 27, 1, 1, NULL, NULL, 15, '2021-03-23 10:34:40');
INSERT INTO `approve_log` VALUES (61, 27, 1, 2, NULL, NULL, 19, '2021-03-23 10:43:08');
INSERT INTO `approve_log` VALUES (62, 27, 1, 3, NULL, NULL, 19, '2021-03-23 10:43:11');
INSERT INTO `approve_log` VALUES (63, 27, 1, 5, NULL, NULL, 19, '2021-03-23 10:43:21');
INSERT INTO `approve_log` VALUES (64, 1, 2, 0, NULL, NULL, 19, '2021-03-23 10:44:08');
INSERT INTO `approve_log` VALUES (65, 1, 2, 2, NULL, NULL, 19, '2021-03-23 10:44:27');
INSERT INTO `approve_log` VALUES (66, 1, 2, 4, NULL, NULL, 19, '2021-03-23 10:44:36');
INSERT INTO `approve_log` VALUES (67, 1, 2, 2, NULL, NULL, 19, '2021-03-23 10:44:41');
INSERT INTO `approve_log` VALUES (68, 1, 2, 4, NULL, NULL, 19, '2021-03-23 10:44:47');
INSERT INTO `approve_log` VALUES (69, 1, 2, 2, NULL, NULL, 19, '2021-03-23 10:45:40');
INSERT INTO `approve_log` VALUES (70, 1, 2, 3, NULL, NULL, 19, '2021-03-23 10:45:42');
INSERT INTO `approve_log` VALUES (71, 1, 2, 5, NULL, NULL, 19, '2021-03-23 10:45:46');

-- ----------------------------
-- Table structure for auth
-- ----------------------------
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth`  (
  `pid` int(10) UNSIGNED NULL DEFAULT 0,
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth
-- ----------------------------
INSERT INTO `auth` VALUES (2, 7, '添加合作伙伴', '/company/insert');
INSERT INTO `auth` VALUES (0, 17, '分类字典', '/category');
INSERT INTO `auth` VALUES (17, 18, '删除字典', '/category/delete');
INSERT INTO `auth` VALUES (17, 19, '添加字典', '/category/insert');
INSERT INTO `auth` VALUES (17, 20, '修改字典', '/category/update');
INSERT INTO `auth` VALUES (0, 21, '合作方公司', '/company');
INSERT INTO `auth` VALUES (21, 22, '添加公司', '/company/add');
INSERT INTO `auth` VALUES (21, 23, '删除公司', '/company/delete');
INSERT INTO `auth` VALUES (21, 24, '编辑公司', '/company/edit');
INSERT INTO `auth` VALUES (0, 25, '部门管理', '/depart');
INSERT INTO `auth` VALUES (25, 26, '删除部门', '/depart/delete');
INSERT INTO `auth` VALUES (25, 27, '添加部门', '/depart/insert');
INSERT INTO `auth` VALUES (25, 28, '编辑部门', '/depart/update');
INSERT INTO `auth` VALUES (29, 30, '物料管理', '/material');
INSERT INTO `auth` VALUES (0, 31, '物料管理', '/material');
INSERT INTO `auth` VALUES (31, 32, '删除物料', '/material/delete');
INSERT INTO `auth` VALUES (31, 33, '添加物料', '/material/insert');
INSERT INTO `auth` VALUES (31, 34, '编辑物料', '/material/update');
INSERT INTO `auth` VALUES (0, 35, '角色权限', '/role_auth');
INSERT INTO `auth` VALUES (35, 36, '角色删除', '/role_auth/role_delete');
INSERT INTO `auth` VALUES (35, 37, '角色新增', '/role_auth/insert');
INSERT INTO `auth` VALUES (35, 38, '角色编辑', '/role_auth/update');
INSERT INTO `auth` VALUES (0, 39, '出入库操作', '/stock_entry');
INSERT INTO `auth` VALUES (39, 40, '出入库审批', '/stock_entry/approve');
INSERT INTO `auth` VALUES (39, 41, '删除出入库单', '/stock_entry/delete');
INSERT INTO `auth` VALUES (39, 42, '入库完成', '/stock_entry/finish');
INSERT INTO `auth` VALUES (39, 43, '出库发货完成', '/stock_entry/delivery_finish');
INSERT INTO `auth` VALUES (39, 44, '添加出入库单', '/stock_entry/insert');
INSERT INTO `auth` VALUES (39, 45, '提交出入库单', '/stock_entry/submit');
INSERT INTO `auth` VALUES (39, 46, '修改车入库单', '/stock_entry/update');
INSERT INTO `auth` VALUES (0, 47, '库存移位操作', '/stock_trans');
INSERT INTO `auth` VALUES (47, 48, '移位单审批', '/stock_trans/approve');
INSERT INTO `auth` VALUES (47, 49, '删除移位单', '/stock_trans/delete');
INSERT INTO `auth` VALUES (47, 50, '完成移位', '/stock_trans/finish');
INSERT INTO `auth` VALUES (47, 51, '添加移位单', '/stock_trans/insert');
INSERT INTO `auth` VALUES (47, 52, '提交移位单', '/stock_trans/submit');
INSERT INTO `auth` VALUES (47, 53, '修改移位单', '/stock_trans/update');
INSERT INTO `auth` VALUES (0, 54, '用户管理', '/user');
INSERT INTO `auth` VALUES (54, 55, '添加用户', '/user/add');
INSERT INTO `auth` VALUES (54, 56, '删除用户', '/user/delete');
INSERT INTO `auth` VALUES (54, 57, '编辑用户', '/user/edit');
INSERT INTO `auth` VALUES (0, 58, '仓库管理', '/warehouse');
INSERT INTO `auth` VALUES (58, 59, '删除库位', '/warehouse/res_delete');
INSERT INTO `auth` VALUES (58, 60, '添加库位', '/warehouse/res_insert');
INSERT INTO `auth` VALUES (58, 61, '编辑库位', '/warehouse/res_update');
INSERT INTO `auth` VALUES (58, 62, '删除货架', '/warehouse/stock_delete');
INSERT INTO `auth` VALUES (58, 63, '添加货架', '/warehouse/stock_insert');
INSERT INTO `auth` VALUES (58, 64, '编辑货架', '/warehouse/stock_update');
INSERT INTO `auth` VALUES (58, 66, '删除仓库', '/warehouse/war_delete');
INSERT INTO `auth` VALUES (58, 67, '添加仓库', '/warehouse/war_insert');
INSERT INTO `auth` VALUES (58, 68, '编辑仓库', '/warehouse/war_update');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '1： 单位类别；\n2：物料分类；\n3：入库单；\n4：出库单；\n5：设备分类；\n6：设备产权；',
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_del` datetime NULL DEFAULT NULL,
  `create_uid` int(11) NULL DEFAULT NULL,
  `update_uid` int(11) NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (15, 1, '千克', '', '2021-03-23 08:36:12', 1, NULL, '2019-07-02 09:35:37', NULL);
INSERT INTO `category` VALUES (16, 1, '米', '', '2021-03-23 08:36:12', 1, NULL, '2019-07-02 09:35:49', NULL);
INSERT INTO `category` VALUES (17, 1, '平方米', '', '2021-03-23 08:36:12', 1, NULL, '2019-07-02 09:35:54', NULL);
INSERT INTO `category` VALUES (18, 1, '立方米', '', '2021-03-23 08:36:12', 1, NULL, '2019-07-02 09:36:08', NULL);
INSERT INTO `category` VALUES (19, 1, '件', '', '2021-03-23 08:36:12', 1, NULL, '2019-07-02 09:36:13', NULL);
INSERT INTO `category` VALUES (20, 1, '套', '', '2021-03-23 08:36:12', 1, NULL, '2019-07-02 09:36:25', NULL);
INSERT INTO `category` VALUES (21, 2, '耗材', '', '2021-03-23 08:36:12', 1, NULL, '2019-07-02 09:38:48', NULL);
INSERT INTO `category` VALUES (22, 2, '普通材料', '', '2021-03-23 08:36:12', 1, NULL, '2019-07-02 09:39:02', NULL);
INSERT INTO `category` VALUES (23, 2, '包装材料', '', '2021-03-23 08:36:12', 1, 1, '2019-07-02 09:39:16', '2019-07-02 10:14:46');
INSERT INTO `category` VALUES (24, 2, '危险品材料', '', '2021-03-23 08:36:12', 1, NULL, '2019-07-02 09:39:29', NULL);
INSERT INTO `category` VALUES (25, 2, '成品类', '', '2021-03-23 08:36:12', 1, NULL, '2019-07-02 09:39:49', NULL);
INSERT INTO `category` VALUES (26, 2, '工具', '', '2021-03-23 08:36:12', 1, NULL, '2019-07-02 09:40:04', NULL);
INSERT INTO `category` VALUES (27, 2, '成品', '', '2021-03-23 08:36:12', 1, NULL, '2019-07-02 09:40:11', NULL);
INSERT INTO `category` VALUES (28, 3, '采购入库', '', '2021-03-23 08:36:12', 1, 1, '2019-07-02 09:41:06', '2019-07-02 09:41:32');
INSERT INTO `category` VALUES (29, 3, '退货入库', '', '2021-03-23 09:15:06', 1, NULL, '2019-07-02 09:41:26', NULL);
INSERT INTO `category` VALUES (30, 3, '试用入库', '', '2021-03-23 09:15:06', 1, NULL, '2019-07-02 09:41:42', NULL);
INSERT INTO `category` VALUES (31, 4, '成品出库', '', '2021-03-23 09:15:06', 1, NULL, '2019-07-02 09:42:04', NULL);
INSERT INTO `category` VALUES (32, 7, '吸尘器', '', '2021-03-23 09:15:06', 1, NULL, '2019-07-02 09:42:48', NULL);
INSERT INTO `category` VALUES (33, 7, '电动牙刷', '', '2021-03-23 09:15:06', 1, NULL, '2019-07-02 09:42:56', NULL);
INSERT INTO `category` VALUES (34, 7, '扫地机器人', '', '2021-03-23 09:15:06', 1, NULL, '2019-07-02 09:43:10', NULL);
INSERT INTO `category` VALUES (35, 1, '台', '', NULL, 15, NULL, '2021-03-23 10:17:25', NULL);
INSERT INTO `category` VALUES (36, 2, '成品', '', NULL, 15, NULL, '2021-03-23 10:17:41', NULL);
INSERT INTO `category` VALUES (37, 3, '初始入库', '', NULL, 15, 15, '2021-03-23 10:18:10', '2021-03-23 10:18:57');
INSERT INTO `category` VALUES (38, 4, '销售出库', '', NULL, 15, NULL, '2021-03-23 10:18:52', NULL);
INSERT INTO `category` VALUES (39, 7, '成品', '', NULL, 15, NULL, '2021-03-23 10:19:07', NULL);
INSERT INTO `category` VALUES (40, 7, '危险品', '', NULL, 15, NULL, '2021-03-23 10:19:14', NULL);
INSERT INTO `category` VALUES (41, 2, '危险物料', '', NULL, 15, NULL, '2021-03-23 10:21:53', NULL);
INSERT INTO `category` VALUES (42, 1, '个', '', NULL, 15, NULL, '2021-03-23 10:33:51', NULL);
INSERT INTO `category` VALUES (43, 2, '半成品', '', NULL, 15, NULL, '2021-03-23 10:34:14', NULL);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商编码',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商全称\n',
  `category` tinyint(4) NULL DEFAULT NULL COMMENT '企业属性：\n1：供应商\n2：客户\n3：承运商',
  `is_del` datetime NULL DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `contact_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人姓名',
  `phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mobile` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_uid` int(10) UNSIGNED NULL DEFAULT 0,
  `update_uid` int(10) UNSIGNED NULL DEFAULT 0,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '合作公司管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (9, '001', '长沙供货商', 1, NULL, '湖南长沙', '张三', '2312312', '17723456789', '283131@qq.com', '', 15, 0, '2021-03-23 09:12:52', NULL);
INSERT INTO `company` VALUES (10, '002', '佳慧超市', 2, NULL, '长沙市岳麓区', '李小姐', '2223112', '13523457123', '', '', 15, 0, '2021-03-23 09:14:02', NULL);
INSERT INTO `company` VALUES (11, '003', '顺丰速递', 3, NULL, '长沙市岳麓区', '唐先生', '2312312', '17767892341', '', '', 15, 0, '2021-03-23 09:14:46', NULL);

-- ----------------------------
-- Table structure for delivery
-- ----------------------------
DROP TABLE IF EXISTS `delivery`;
CREATE TABLE `delivery`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `stock_entry_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `company_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `number` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递单号',
  `happen_time` datetime NULL DEFAULT NULL,
  `create_uid` int(10) UNSIGNED NULL DEFAULT NULL,
  `update_uid` int(10) UNSIGNED NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `is_del` datetime NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of delivery
-- ----------------------------

-- ----------------------------
-- Table structure for depart
-- ----------------------------
DROP TABLE IF EXISTS `depart`;
CREATE TABLE `depart`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_del` datetime NULL DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_uid` int(11) NULL DEFAULT NULL,
  `update_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of depart
-- ----------------------------
INSERT INTO `depart` VALUES (15, '001', NULL, '董事局', 15, '0', '2021-03-23 08:34:06', NULL);
INSERT INTO `depart` VALUES (16, '002', NULL, '仓管部', 15, '15', '2021-03-23 10:30:55', '2021-03-23 10:31:12');

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `material_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `quantity` decimal(12, 2) NULL DEFAULT 0.00,
  `is_del` datetime NULL DEFAULT NULL,
  `last_in_time` datetime NULL DEFAULT NULL,
  `last_out_time` datetime NULL DEFAULT NULL,
  `last_in_quantity` decimal(12, 2) NULL DEFAULT NULL,
  `last_out_quantity` decimal(12, 2) NULL DEFAULT NULL,
  `create_uid` int(10) UNSIGNED NULL DEFAULT NULL,
  `update_uid` int(10) UNSIGNED NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `warehouse_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `reservoir_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `stock_id` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '库存清单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES (30, 8, 1000.00, NULL, '2019-07-02 10:32:43', NULL, 1000.00, NULL, 1, 1, '2019-07-02 10:25:13', '2019-07-02 10:32:20', 12, 10, 8);
INSERT INTO `inventory` VALUES (31, 10, 20.00, NULL, '2021-03-23 10:43:21', '2021-03-23 10:45:46', 80.00, 10.00, 19, 19, '2021-03-23 10:42:57', '2021-03-23 10:45:32', 15, 13, 10);
INSERT INTO `inventory` VALUES (32, 10, 60.00, NULL, '2021-03-23 10:45:46', NULL, 10.00, NULL, 19, 19, '2021-03-23 10:44:25', '2021-03-23 10:45:32', 16, 14, 11);

-- ----------------------------
-- Table structure for login_record
-- ----------------------------
DROP TABLE IF EXISTS `login_record`;
CREATE TABLE `login_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uid` int(10) UNSIGNED NULL DEFAULT NULL,
  `type` tinyint(4) NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL COMMENT '1： 登录；\n2：登出；',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of login_record
-- ----------------------------
INSERT INTO `login_record` VALUES (1, '127.0.0.1', 14, 1, '2021-03-22 22:32:21');
INSERT INTO `login_record` VALUES (2, '127.0.0.1', 14, 1, '2021-03-22 22:32:21');
INSERT INTO `login_record` VALUES (3, '127.0.0.1', 14, 1, '2021-03-22 22:32:59');
INSERT INTO `login_record` VALUES (4, '127.0.0.1', 14, 1, '2021-03-23 08:30:29');
INSERT INTO `login_record` VALUES (5, '127.0.0.1', 14, 2, '2021-03-23 08:31:54');
INSERT INTO `login_record` VALUES (6, '127.0.0.1', 15, 1, '2021-03-23 08:31:59');
INSERT INTO `login_record` VALUES (7, '127.0.0.1', 15, 2, '2021-03-23 08:46:02');
INSERT INTO `login_record` VALUES (8, '127.0.0.1', 15, 1, '2021-03-23 09:05:47');
INSERT INTO `login_record` VALUES (9, '127.0.0.1', 15, 2, '2021-03-23 09:09:52');
INSERT INTO `login_record` VALUES (10, '127.0.0.1', 15, 1, '2021-03-23 09:09:57');
INSERT INTO `login_record` VALUES (11, '127.0.0.1', 15, 2, '2021-03-23 10:42:29');
INSERT INTO `login_record` VALUES (12, '127.0.0.1', 19, 1, '2021-03-23 10:42:30');
INSERT INTO `login_record` VALUES (13, '127.0.0.1', 19, 2, '2021-03-23 10:56:21');
INSERT INTO `login_record` VALUES (14, '127.0.0.1', 15, 1, '2021-03-23 10:56:25');
INSERT INTO `login_record` VALUES (15, '127.0.0.1', 15, 2, '2021-03-23 10:56:37');
INSERT INTO `login_record` VALUES (16, '127.0.0.1', 15, 1, '2021-03-23 11:02:22');
INSERT INTO `login_record` VALUES (17, '127.0.0.1', 15, 1, '2021-05-29 18:20:09');

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` tinyint(4) NULL DEFAULT 1 COMMENT '物料类型：\n1：采购物料;\n2：生产产品;\n3：物料和产品；',
  `category_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `unit_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `safe_num` int(11) NULL DEFAULT NULL COMMENT '安全库存',
  `valid_day` int(11) NULL DEFAULT NULL COMMENT '有效天',
  `quantity` decimal(12, 2) NULL DEFAULT 0.00 COMMENT '库存数量',
  `is_del` datetime NULL DEFAULT NULL,
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_uid` int(10) UNSIGNED NULL DEFAULT NULL,
  `update_uid` int(10) UNSIGNED NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '物料管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of material
-- ----------------------------
INSERT INTO `material` VALUES (6, 'XCQ0001', '手持吸尘器 T700', 2, 32, 19, 100, 0, 0.00, '2021-03-23 08:36:05', '', 1, NULL, '2019-07-02 10:12:27', NULL);
INSERT INTO `material` VALUES (7, 'XCQ0002', '吸尘器 T100', 2, 32, 19, 100, 0, 0.00, '2021-03-23 08:36:05', '', 1, NULL, '2019-07-02 10:12:53', NULL);
INSERT INTO `material` VALUES (8, 'BZ0001', 'T700包装盒', 1, 23, 19, 100, 0, 0.00, '2021-03-23 08:36:16', '', 1, NULL, '2019-07-02 10:13:57', NULL);
INSERT INTO `material` VALUES (9, 'LS0001', '螺丝 5mm', 1, 21, 19, 1000, 0, 0.00, '2021-03-22 22:47:29', '', 1, NULL, '2019-07-02 10:16:09', NULL);
INSERT INTO `material` VALUES (10, 'tt001', '小米计算机', 2, 39, 35, 100, 0, 0.00, NULL, '', 15, NULL, '2021-03-23 10:33:07', NULL);
INSERT INTO `material` VALUES (11, '001', 'cpu', 1, 43, 42, 222, 100, 0.00, NULL, '', 15, NULL, '2021-03-23 10:35:33', NULL);

-- ----------------------------
-- Table structure for move
-- ----------------------------
DROP TABLE IF EXISTS `move`;
CREATE TABLE `move`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '移动单编号',
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '出入库类型\n1：入库\n2：出库\n3：移位',
  `material_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `inventory_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `inventory_tid` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '移位情况有效：\n表示移往库存点',
  `company_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `plan_quantity` decimal(12, 2) NULL DEFAULT NULL,
  `quantity` decimal(12, 2) NULL DEFAULT NULL,
  `is_del` datetime NULL DEFAULT NULL,
  `stock_entry_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `stock_trans_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `delivery_id` int(10) UNSIGNED NULL DEFAULT 0,
  `happen_date` datetime NULL DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NULL DEFAULT 1 COMMENT '状态：\n1：初始提交；\n2：审核中；\n3：审核通过；\n4：审核未通过；\n5：已完成；',
  `create_uid` int(11) NULL DEFAULT NULL,
  `update_uid` int(11) NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `approve_uid` int(10) UNSIGNED NULL DEFAULT NULL,
  `approve_time` datetime NULL DEFAULT NULL,
  `reject_remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of move
-- ----------------------------
INSERT INTO `move` VALUES (49, NULL, 1, 10, 31, NULL, 9, 100.00, 80.00, NULL, 27, NULL, 0, NULL, 5, 19, NULL, '2021-03-23 10:42:57', NULL, 19, '2021-03-23 10:43:11', '', NULL);
INSERT INTO `move` VALUES (50, NULL, 3, 10, 31, 32, NULL, 50.00, 50.00, NULL, NULL, 1, 0, NULL, 5, 19, NULL, '2021-03-23 10:44:25', NULL, NULL, '2021-03-23 10:45:42', '', NULL);
INSERT INTO `move` VALUES (51, NULL, 3, 10, 31, 32, NULL, 10.00, 10.00, NULL, NULL, 1, 0, NULL, 5, 19, NULL, '2021-03-23 10:45:32', NULL, NULL, '2021-03-23 10:45:42', '', NULL);

-- ----------------------------
-- Table structure for number_create
-- ----------------------------
DROP TABLE IF EXISTS `number_create`;
CREATE TABLE `number_create`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `prefix` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_date` date NULL DEFAULT NULL,
  `index` int(11) NULL DEFAULT 1,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of number_create
-- ----------------------------
INSERT INTO `number_create` VALUES (4, 'stock_in', 'SI', '入库订单自动生成', '2021-03-23', 1, '2021-03-23 10:34:40');
INSERT INTO `number_create` VALUES (5, 'stock_out', 'SO', '出库订单自动生成', '2019-07-02', 1, NULL);
INSERT INTO `number_create` VALUES (6, 'stock_trans', 'ST', '库存移位单号', '2021-03-23', 1, '2021-03-23 10:44:08');

-- ----------------------------
-- Table structure for operate_log
-- ----------------------------
DROP TABLE IF EXISTS `operate_log`;
CREATE TABLE `operate_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NULL DEFAULT NULL,
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '日志类型：\n1：用户登录登出日志；\n2：出入库单审批日志；',
  `info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_uid` int(10) UNSIGNED NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operate_log
-- ----------------------------

-- ----------------------------
-- Table structure for reservoir
-- ----------------------------
DROP TABLE IF EXISTS `reservoir`;
CREATE TABLE `reservoir`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warehouse_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `is_del` datetime NULL DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_uid` int(11) NULL DEFAULT NULL,
  `update_uid` int(11) NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reservoir
-- ----------------------------
INSERT INTO `reservoir` VALUES (7, 'KQ001', 11, '2021-03-23 08:36:28', '液体危险品区', '', 1, NULL, '2020-07-02 10:18:01', NULL);
INSERT INTO `reservoir` VALUES (8, 'KQ002', 11, '2021-03-23 08:36:28', '固体危险品', '', 1, NULL, '2019-07-02 10:18:17', NULL);
INSERT INTO `reservoir` VALUES (9, 'KQ003', 12, '2021-03-23 08:36:28', '耗材区', '', 1, NULL, '2019-07-02 10:18:59', NULL);
INSERT INTO `reservoir` VALUES (10, 'KQ004', 12, '2021-03-23 08:36:28', '大件存放去', '', 1, NULL, '2019-07-02 10:19:32', NULL);
INSERT INTO `reservoir` VALUES (11, 'KQ005', 13, '2021-03-23 08:36:28', '吸尘器区', '', 1, NULL, '2019-07-02 10:19:59', NULL);
INSERT INTO `reservoir` VALUES (12, '001', 14, NULL, '危险品', '', 15, NULL, '2021-03-23 10:23:59', NULL);
INSERT INTO `reservoir` VALUES (13, '002', 15, NULL, '成品区', '', 15, NULL, '2021-03-23 10:24:14', NULL);
INSERT INTO `reservoir` VALUES (14, '003', 16, NULL, '物料区', '', 15, NULL, '2021-03-23 10:24:30', NULL);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_uid` int(10) UNSIGNED NULL DEFAULT NULL,
  `update_uid` int(10) UNSIGNED NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (12, '超级管理员', '', 15, NULL, '2021-03-23 08:33:19', NULL);
INSERT INTO `role` VALUES (13, '测试', '', 15, NULL, '2021-03-23 10:40:16', NULL);

-- ----------------------------
-- Table structure for role_auth
-- ----------------------------
DROP TABLE IF EXISTS `role_auth`;
CREATE TABLE `role_auth`  (
  `role_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `auth_id` int(10) UNSIGNED NULL DEFAULT NULL,
  INDEX `fk_role_auth_role_idx`(`role_id`) USING BTREE,
  INDEX `fk_role_auth_auth1_idx`(`auth_id`) USING BTREE,
  CONSTRAINT `fk_role_auth_auth1` FOREIGN KEY (`auth_id`) REFERENCES `auth` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_role_auth_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role_auth
-- ----------------------------
INSERT INTO `role_auth` VALUES (12, 17);
INSERT INTO `role_auth` VALUES (12, 18);
INSERT INTO `role_auth` VALUES (12, 19);
INSERT INTO `role_auth` VALUES (12, 20);
INSERT INTO `role_auth` VALUES (12, 21);
INSERT INTO `role_auth` VALUES (12, 22);
INSERT INTO `role_auth` VALUES (12, 23);
INSERT INTO `role_auth` VALUES (12, 24);
INSERT INTO `role_auth` VALUES (12, 25);
INSERT INTO `role_auth` VALUES (12, 26);
INSERT INTO `role_auth` VALUES (12, 27);
INSERT INTO `role_auth` VALUES (12, 28);
INSERT INTO `role_auth` VALUES (12, 31);
INSERT INTO `role_auth` VALUES (12, 32);
INSERT INTO `role_auth` VALUES (12, 33);
INSERT INTO `role_auth` VALUES (12, 34);
INSERT INTO `role_auth` VALUES (12, 35);
INSERT INTO `role_auth` VALUES (12, 36);
INSERT INTO `role_auth` VALUES (12, 37);
INSERT INTO `role_auth` VALUES (12, 38);
INSERT INTO `role_auth` VALUES (12, 39);
INSERT INTO `role_auth` VALUES (12, 40);
INSERT INTO `role_auth` VALUES (12, 41);
INSERT INTO `role_auth` VALUES (12, 42);
INSERT INTO `role_auth` VALUES (12, 43);
INSERT INTO `role_auth` VALUES (12, 44);
INSERT INTO `role_auth` VALUES (12, 45);
INSERT INTO `role_auth` VALUES (12, 46);
INSERT INTO `role_auth` VALUES (12, 47);
INSERT INTO `role_auth` VALUES (12, 48);
INSERT INTO `role_auth` VALUES (12, 49);
INSERT INTO `role_auth` VALUES (12, 50);
INSERT INTO `role_auth` VALUES (12, 51);
INSERT INTO `role_auth` VALUES (12, 52);
INSERT INTO `role_auth` VALUES (12, 53);
INSERT INTO `role_auth` VALUES (12, 54);
INSERT INTO `role_auth` VALUES (12, 55);
INSERT INTO `role_auth` VALUES (12, 56);
INSERT INTO `role_auth` VALUES (12, 57);
INSERT INTO `role_auth` VALUES (12, 58);
INSERT INTO `role_auth` VALUES (12, 59);
INSERT INTO `role_auth` VALUES (12, 60);
INSERT INTO `role_auth` VALUES (12, 61);
INSERT INTO `role_auth` VALUES (12, 62);
INSERT INTO `role_auth` VALUES (12, 63);
INSERT INTO `role_auth` VALUES (12, 64);
INSERT INTO `role_auth` VALUES (12, 66);
INSERT INTO `role_auth` VALUES (12, 67);
INSERT INTO `role_auth` VALUES (12, 68);
INSERT INTO `role_auth` VALUES (13, 31);
INSERT INTO `role_auth` VALUES (13, 32);
INSERT INTO `role_auth` VALUES (13, 33);
INSERT INTO `role_auth` VALUES (13, 34);
INSERT INTO `role_auth` VALUES (13, 35);
INSERT INTO `role_auth` VALUES (13, 36);
INSERT INTO `role_auth` VALUES (13, 37);
INSERT INTO `role_auth` VALUES (13, 38);
INSERT INTO `role_auth` VALUES (13, 39);
INSERT INTO `role_auth` VALUES (13, 40);
INSERT INTO `role_auth` VALUES (13, 41);
INSERT INTO `role_auth` VALUES (13, 42);
INSERT INTO `role_auth` VALUES (13, 43);
INSERT INTO `role_auth` VALUES (13, 44);
INSERT INTO `role_auth` VALUES (13, 45);
INSERT INTO `role_auth` VALUES (13, 46);

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_del` datetime NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warehouse_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `reservoir_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `create_uid` int(11) NULL DEFAULT NULL,
  `update_uid` int(11) NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES (4, 'HJ001', 'HJ001', '2021-03-23 08:36:33', '', 11, 8, 1, NULL, '2019-07-02 10:21:15', NULL);
INSERT INTO `stock` VALUES (5, 'HJ002', 'HJ002', '2021-03-23 08:36:33', '', 11, 8, 1, NULL, '2019-07-02 10:21:28', NULL);
INSERT INTO `stock` VALUES (6, 'HJ003', 'HJ003', '2021-03-23 08:36:33', '', 11, 7, 1, NULL, '2019-07-02 10:21:39', NULL);
INSERT INTO `stock` VALUES (7, 'HJ004', 'HJ004', '2021-03-23 08:36:33', '', 12, 9, 1, NULL, '2019-07-02 10:21:49', NULL);
INSERT INTO `stock` VALUES (8, 'HJ005', 'HJ005', '2021-03-23 08:36:33', '', 12, 10, 1, NULL, '2019-07-02 10:21:57', NULL);
INSERT INTO `stock` VALUES (9, 'HJ006', 'HJ006', '2021-03-23 08:36:33', '', 13, 11, 1, NULL, '2019-07-02 10:22:07', NULL);
INSERT INTO `stock` VALUES (10, '001', '计算机区', NULL, 'aaa', 15, 13, 15, NULL, '2021-03-23 10:28:15', NULL);
INSERT INTO `stock` VALUES (11, '002', '半成品区', NULL, '', 16, 14, 15, 15, '2021-03-23 10:28:45', '2021-03-23 10:36:08');

-- ----------------------------
-- Table structure for stock_entry
-- ----------------------------
DROP TABLE IF EXISTS `stock_entry`;
CREATE TABLE `stock_entry`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `number` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '入库或出库单号',
  `order_number` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `category_id` int(11) NULL DEFAULT NULL,
  `company_id` int(11) NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态：\n1：初始提交；\n2：审核中；\n3：审核通过；\n4：审核未通过；\n5：已完成；',
  `delivery_id` int(10) UNSIGNED NULL DEFAULT 0,
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '1：入库\n2：出库',
  `is_del` datetime NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_uid` int(11) NULL DEFAULT NULL,
  `update_uid` int(11) NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `approve_uid` int(10) UNSIGNED NULL DEFAULT NULL,
  `approve_time` datetime NULL DEFAULT NULL,
  `reject_remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '驳回理由',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of stock_entry
-- ----------------------------
INSERT INTO `stock_entry` VALUES (26, 'SI201907020001', '30125789551266', 28, 4, 5, 0, 1, NULL, '', 1, 1, '2019-07-02 10:32:05', '2019-07-02 11:04:22', 1, '2019-07-02 10:32:40', '');
INSERT INTO `stock_entry` VALUES (27, 'SI202103230001', '00001', 37, 9, 5, 0, 1, NULL, '', 15, NULL, '2021-03-23 10:34:40', NULL, 19, '2021-03-23 10:43:11', '');

-- ----------------------------
-- Table structure for stock_trans
-- ----------------------------
DROP TABLE IF EXISTS `stock_trans`;
CREATE TABLE `stock_trans`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `number` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warehouse_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `reservoir_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `stock_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warehouse_tid` int(10) UNSIGNED NULL DEFAULT NULL,
  `reservoir_tid` int(10) UNSIGNED NULL DEFAULT NULL,
  `stock_tid` int(10) UNSIGNED NULL DEFAULT NULL,
  `create_uid` int(10) UNSIGNED NULL DEFAULT NULL,
  `update_uid` int(10) UNSIGNED NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `is_del` datetime NULL DEFAULT NULL,
  `approve_uid` int(11) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `approve_time` datetime NULL DEFAULT NULL,
  `reject_remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of stock_trans
-- ----------------------------
INSERT INTO `stock_trans` VALUES (1, 'ST202103230001', 15, 13, 10, 5, '', 16, 14, 11, 0, NULL, '2021-03-23 10:44:08', NULL, NULL, NULL, '2021-03-23 10:45:46', 'taiduo');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `real_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '常用邮箱',
  `is_del` datetime NULL DEFAULT NULL,
  `password` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `activated` tinyint(4) NULL DEFAULT 1 COMMENT '状态：\n1：未激活\n2：激活',
  `mobile` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '固定电话',
  `token` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `gender` tinyint(4) NULL DEFAULT 1 COMMENT '1：女\n2：男',
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `role_id` int(10) UNSIGNED NULL DEFAULT 0,
  `depart_id` int(10) UNSIGNED NULL DEFAULT 0,
  `is_root` tinyint(4) NULL DEFAULT 0 COMMENT '是否为超级管理员',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_name_UNIQUE`(`user_name`) USING BTREE,
  INDEX `fk_user_role1_idx`(`role_id`) USING BTREE,
  CONSTRAINT `fk_user_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'ytl', 'admin@qq.com', '2021-03-23 08:31:48', '5c801d2534e9464adc1f712c2fa5e4f9', 2, '15322547812', '68745147', 'VYcDU67ldIeQBA4QeRRHVPgdloA8XSC0prX3xcaZbBAh78l9XqltBoYiUnQQr/Pprpf9jforMTrkpGCf45dSkzcnAzAlkS1DHe4xzSMG7ts3MpcomEOt7TG/irlTLLBy', '2019-05-27 14:24:53', 1, '', NULL, 14, 1);
INSERT INTO `user` VALUES (15, 'ytl', '易铁林', '2937112901@qq.com', NULL, 'bcbfacabae00b238a2e1b4db63dd7d70', 2, '17769280122', '7732888', '+Zj8rL1umNrlOQj3kDyFh30SW1D0EUOEPEpbxgmzBP6aaHZ0HYt8igahwyV2nRRH1HWEJFL9HMSramv0fjEoFyJfwsL4d2+0YfbZu2wKLtpp1g8UCBiaZlJc+Y0qNf6W', '2021-03-23 08:31:38', 1, '', 12, 15, 0);
INSERT INTO `user` VALUES (19, 'test', '测试员', '', NULL, 'bcbfacabae00b238a2e1b4db63dd7d70', 1, '18837212324', '', NULL, '2021-03-23 10:42:16', 1, '', 13, 16, 0);

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_del` datetime NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_uid` int(11) NULL DEFAULT NULL,
  `update_uid` int(11) NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of warehouse
-- ----------------------------
INSERT INTO `warehouse` VALUES (11, 'CK001', '危险品仓库', '2021-03-23 08:36:24', '存放危险品耗材和产品', 1, NULL, '2019-07-02 10:16:45', NULL);
INSERT INTO `warehouse` VALUES (12, 'CK002', '物料仓库', '2021-03-23 08:36:24', '存放物料仓库', 1, NULL, '2019-07-02 10:17:16', NULL);
INSERT INTO `warehouse` VALUES (13, 'CK003', '成品仓库', '2021-03-23 08:36:24', '存放生产完成成品', 1, NULL, '2019-07-02 10:17:33', NULL);
INSERT INTO `warehouse` VALUES (14, '001', '长沙仓库', NULL, '', 15, NULL, '2021-03-23 10:22:14', NULL);
INSERT INTO `warehouse` VALUES (15, '002', '长沙二号仓库', NULL, '', 15, NULL, '2021-03-23 10:22:29', NULL);
INSERT INTO `warehouse` VALUES (16, '003', '怀化仓库', NULL, '', 15, NULL, '2021-03-23 10:22:38', NULL);

SET FOREIGN_KEY_CHECKS = 1;
