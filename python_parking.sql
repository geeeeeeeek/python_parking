/*
 Navicat Premium Data Transfer

 Source Server         : localhost连接
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : python_parking

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 23/01/2024 14:56:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add classification', 7, 'add_classification');
INSERT INTO `auth_permission` VALUES (26, 'Can change classification', 7, 'change_classification');
INSERT INTO `auth_permission` VALUES (27, 'Can delete classification', 7, 'delete_classification');
INSERT INTO `auth_permission` VALUES (28, 'Can view classification', 7, 'view_classification');
INSERT INTO `auth_permission` VALUES (29, 'Can add error log', 8, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (30, 'Can change error log', 8, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (31, 'Can delete error log', 8, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (32, 'Can view error log', 8, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (33, 'Can add login log', 9, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change login log', 9, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete login log', 9, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view login log', 9, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add op log', 10, 'add_oplog');
INSERT INTO `auth_permission` VALUES (38, 'Can change op log', 10, 'change_oplog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete op log', 10, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (40, 'Can view op log', 10, 'view_oplog');
INSERT INTO `auth_permission` VALUES (41, 'Can add tag', 11, 'add_tag');
INSERT INTO `auth_permission` VALUES (42, 'Can change tag', 11, 'change_tag');
INSERT INTO `auth_permission` VALUES (43, 'Can delete tag', 11, 'delete_tag');
INSERT INTO `auth_permission` VALUES (44, 'Can view tag', 11, 'view_tag');
INSERT INTO `auth_permission` VALUES (45, 'Can add user', 12, 'add_user');
INSERT INTO `auth_permission` VALUES (46, 'Can change user', 12, 'change_user');
INSERT INTO `auth_permission` VALUES (47, 'Can delete user', 12, 'delete_user');
INSERT INTO `auth_permission` VALUES (48, 'Can view user', 12, 'view_user');
INSERT INTO `auth_permission` VALUES (49, 'Can add thing', 13, 'add_thing');
INSERT INTO `auth_permission` VALUES (50, 'Can change thing', 13, 'change_thing');
INSERT INTO `auth_permission` VALUES (51, 'Can delete thing', 13, 'delete_thing');
INSERT INTO `auth_permission` VALUES (52, 'Can view thing', 13, 'view_thing');
INSERT INTO `auth_permission` VALUES (53, 'Can add member', 14, 'add_member');
INSERT INTO `auth_permission` VALUES (54, 'Can change member', 14, 'change_member');
INSERT INTO `auth_permission` VALUES (55, 'Can delete member', 14, 'delete_member');
INSERT INTO `auth_permission` VALUES (56, 'Can view member', 14, 'view_member');
INSERT INTO `auth_permission` VALUES (57, 'Can add wg', 15, 'add_wg');
INSERT INTO `auth_permission` VALUES (58, 'Can change wg', 15, 'change_wg');
INSERT INTO `auth_permission` VALUES (59, 'Can delete wg', 15, 'delete_wg');
INSERT INTO `auth_permission` VALUES (60, 'Can view wg', 15, 'view_wg');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '花园小区A区地下停车场', '2024-01-22 18:52:57.955756');
INSERT INTO `b_classification` VALUES (2, '花园小区B区地下停车场', '2024-01-22 18:53:09.103337');
INSERT INTO `b_classification` VALUES (3, '南京大学教学楼停车场', '2024-01-22 18:53:29.689816');

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-22 18:50:54.270012');
INSERT INTO `b_login_log` VALUES (2, 'test', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-22 19:15:23.165488');
INSERT INTO `b_login_log` VALUES (3, 'test', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-22 19:15:27.630963');
INSERT INTO `b_login_log` VALUES (4, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-22 19:15:42.230532');

-- ----------------------------
-- Table structure for b_member
-- ----------------------------
DROP TABLE IF EXISTS `b_member`;
CREATE TABLE `b_member`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_member
-- ----------------------------
INSERT INTO `b_member` VALUES (1, '刘德华', '18977776666', '33', '90', '2024-01-22 19:08:09.395706');
INSERT INTO `b_member` VALUES (2, '周杰伦', '18977776666', '55', '65', '2024-01-22 19:08:19.456379');
INSERT INTO `b_member` VALUES (3, '王静', '18977776611', '22', '80', '2024-01-22 19:08:29.296811');
INSERT INTO `b_member` VALUES (4, '刘小明', '18977776666', '21', '66', '2024-01-22 19:08:41.040110');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 162 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-01-22 16:19:56.928711', '/', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-01-22 16:20:02.611429', '/myapp/admin/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-01-22 16:20:05.043303', '/myapp/admin/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-01-22 18:49:57.806680', '/myapp/admin/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-01-22 18:49:57.811666', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-01-22 18:49:57.825163', '/myapp/admin/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-01-22 18:50:18.258403', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-01-22 18:50:18.259395', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-01-22 18:50:18.260392', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-01-22 18:50:20.162102', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-01-22 18:50:25.998491', '/myapp/admin/user/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-01-22 18:50:47.493762', '/myapp/admin/user/create', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-01-22 18:50:47.535054', '/myapp/admin/user/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-01-22 18:50:54.270012', '/myapp/admin/adminLogin', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-01-22 18:50:54.387378', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-01-22 18:50:54.387378', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-01-22 18:50:54.387378', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-01-22 18:50:55.519030', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-01-22 18:51:02.273097', '/myapp/admin/user/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-01-22 18:51:02.309522', '/myapp/admin/user/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-01-22 18:51:08.608118', '/myapp/admin/user/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-01-22 18:51:14.784458', '/myapp/admin/user/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-01-22 18:51:14.819784', '/myapp/admin/user/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-01-22 18:51:28.058240', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-01-22 18:52:33.317236', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-01-22 18:52:57.973035', '/myapp/admin/classification/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-01-22 18:52:57.989405', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-01-22 18:53:09.116704', '/myapp/admin/classification/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-01-22 18:53:09.134639', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-01-22 18:53:29.705353', '/myapp/admin/classification/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-01-22 18:53:29.739723', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-01-22 18:55:45.588840', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-01-22 18:55:45.590313', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-01-22 18:55:45.592825', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-01-22 18:59:12.504251', '/myapp/admin/tag/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-01-22 18:59:12.504251', '/myapp/admin/tag/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-01-22 18:59:12.520130', '/myapp/admin/tag/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-01-22 18:59:43.921030', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-01-22 18:59:43.922973', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-01-22 18:59:43.923993', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-01-22 18:59:49.806575', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-01-22 18:59:49.807634', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-01-22 18:59:49.809202', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-01-22 18:59:54.134351', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-01-22 18:59:54.136320', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-01-22 18:59:54.140286', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-01-22 19:00:00.303813', '/myapp/admin/tag/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-01-22 19:00:00.303813', '/myapp/admin/tag/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-01-22 19:00:00.303813', '/myapp/admin/tag/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-01-22 19:00:07.072866', '/myapp/admin/tag/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-01-22 19:00:07.073539', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-01-22 19:00:07.073539', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-01-22 19:00:16.342100', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-01-22 19:00:16.343096', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-01-22 19:00:16.355056', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-01-22 19:00:17.277016', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-01-22 19:00:17.861895', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-01-22 19:00:17.863897', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-01-22 19:00:17.865892', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-01-22 19:01:06.022506', '/myapp/admin/thing/create', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-01-22 19:01:06.074184', '/myapp/admin/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-01-22 19:01:25.575745', '/myapp/admin/thing/create', 'POST', NULL, '6');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-01-22 19:01:25.610186', '/myapp/admin/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-01-22 19:01:42.837308', '/myapp/admin/thing/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-01-22 19:01:42.875937', '/myapp/admin/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-01-22 19:01:53.626021', '/myapp/admin/thing/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-01-22 19:01:53.641098', '/myapp/admin/thing/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-01-22 19:02:03.579111', '/myapp/admin/thing/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-01-22 19:02:03.613652', '/myapp/admin/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-01-22 19:02:08.791324', '/myapp/admin/thing/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-01-22 19:02:08.840335', '/myapp/admin/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-01-22 19:02:11.018463', '/myapp/admin/thing/delete', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-01-22 19:02:11.041513', '/myapp/admin/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-01-22 19:02:19.327078', '/myapp/admin/thing/list', 'GET', NULL, '2233');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-01-22 19:02:26.032695', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-01-22 19:02:36.293381', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-01-22 19:03:55.518294', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-01-22 19:06:38.846662', '/myapp/admin/member/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-01-22 19:06:38.847662', '/myapp/admin/member/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-01-22 19:06:38.852243', '/myapp/admin/member/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-01-22 19:06:39.910056', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-01-22 19:06:40.434073', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-01-22 19:06:40.437062', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-01-22 19:06:40.438059', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-01-22 19:06:47.887680', '/myapp/admin/member/create', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-01-22 19:08:09.395706', '/myapp/admin/member/create', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-01-22 19:08:09.420378', '/myapp/admin/member/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-01-22 19:08:19.473924', '/myapp/admin/member/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-01-22 19:08:19.492603', '/myapp/admin/member/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-01-22 19:08:29.314304', '/myapp/admin/member/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-01-22 19:08:29.337930', '/myapp/admin/member/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-01-22 19:08:41.053663', '/myapp/admin/member/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-01-22 19:08:41.090343', '/myapp/admin/member/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-01-22 19:08:46.623489', '/myapp/admin/member/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-01-22 19:08:46.642811', '/myapp/admin/member/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-01-22 19:08:49.462275', '/myapp/admin/member/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-01-22 19:08:49.491033', '/myapp/admin/member/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-01-22 19:08:51.492047', '/myapp/admin/member/delete', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-01-22 19:08:51.507168', '/myapp/admin/member/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-01-22 19:08:53.222642', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-01-22 19:08:53.838625', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-01-22 19:08:53.838625', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-01-22 19:08:53.838625', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-01-22 19:09:37.979029', '/myapp/admin/classification/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-01-22 19:09:37.979029', '/myapp/admin/classification/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-01-22 19:09:37.994561', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-01-22 19:12:04.384455', '/myapp/admin/stay/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-01-22 19:12:04.386459', '/myapp/admin/stay/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-01-22 19:12:04.402571', '/myapp/admin/stay/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-01-22 19:12:29.915832', '/myapp/admin/stay/create', 'POST', NULL, '4');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-01-22 19:12:50.759410', '/myapp/admin/stay/create', 'POST', NULL, '5');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-01-22 19:12:52.370080', '/myapp/admin/stay/create', 'POST', NULL, '4');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-01-22 19:13:10.405531', '/myapp/admin/stay/create', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-01-22 19:13:50.211368', '/myapp/admin/tag/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-01-22 19:13:50.216355', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-01-22 19:13:50.221945', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-01-22 19:14:02.304240', '/myapp/admin/wg/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-01-22 19:14:02.321867', '/myapp/admin/wg/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-01-22 19:14:33.143963', '/myapp/admin/wg/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-01-22 19:14:33.161213', '/myapp/admin/wg/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-01-22 19:14:44.817032', '/myapp/admin/wg/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-01-22 19:14:44.841948', '/myapp/admin/wg/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-01-22 19:15:03.552885', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-01-22 19:15:03.555551', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-01-22 19:15:03.555551', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-01-22 19:15:04.453824', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-01-22 19:15:04.455951', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-01-22 19:15:04.457699', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-01-22 19:15:07.643278', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-01-22 19:15:07.644420', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-01-22 19:15:07.652207', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-01-22 19:15:08.322205', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-01-22 19:15:08.323842', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-01-22 19:15:08.324618', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-01-22 19:15:09.060876', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-01-22 19:15:09.058948', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-01-22 19:15:09.070565', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-01-22 19:15:18.997821', '/myapp/admin/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-01-22 19:15:18.997821', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-01-22 19:15:19.017269', '/myapp/admin/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-01-22 19:15:19.645489', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-01-22 19:15:20.421639', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-01-22 19:15:20.421639', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-01-22 19:15:20.433515', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-01-22 19:15:23.171147', '/myapp/admin/adminLogin', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-01-22 19:15:23.233983', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-01-22 19:15:23.233983', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-01-22 19:15:23.237892', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-01-22 19:15:27.636048', '/myapp/admin/adminLogin', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-01-22 19:15:27.695962', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-01-22 19:15:27.697521', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-01-22 19:15:27.703949', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-01-22 19:15:29.801758', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-01-22 19:15:30.285213', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-01-22 19:15:30.301078', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-01-22 19:15:30.301078', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-01-22 19:15:37.958388', '/myapp/admin/thing/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-01-22 19:15:42.230532', '/myapp/admin/adminLogin', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-01-22 19:15:42.308256', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-01-22 19:15:42.309621', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-01-22 19:15:42.309621', '/myapp/admin/tag/list', 'GET', NULL, '6');

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `park_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `park_number` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `park_price` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `park_status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '2024-01-22 19:01:06.022506', 3, '货车', 'A201801', '20元/天', '1');
INSERT INTO `b_thing` VALUES (2, '2024-01-22 19:01:25.575197', 2, '小型车', 'A201802', '50元/天', '0');
INSERT INTO `b_thing` VALUES (3, '2024-01-22 19:01:42.822717', 1, '货车', 'A201203', '90元/天', '0');
INSERT INTO `b_thing` VALUES (4, '2024-01-22 19:01:53.615367', 2, '货车', 'A201404', '50元/天', '0');
INSERT INTO `b_thing` VALUES (5, '2024-01-22 19:02:03.579111', 3, '货车', 'A201207', '50元/天', '0');

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-01-22 18:50:47.492402', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-01-22 18:51:02.254124', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (3, 'test', '098f6bcd4621d373cade4e832627b4f6', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-01-22 18:51:14.767637', 0, NULL, 0, '098f6bcd4621d373cade4e832627b4f6', NULL);

-- ----------------------------
-- Table structure for b_wg
-- ----------------------------
DROP TABLE IF EXISTS `b_wg`;
CREATE TABLE `b_wg`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `car_number` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `park_number` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_wg
-- ----------------------------
INSERT INTO `b_wg` VALUES (1, '京B10111', 'A201801', '违规停放', '2024-01-22 19:14:02.288068');
INSERT INTO `b_wg` VALUES (2, '鲁A29801', 'A201804', '车辆停放在指示线以外', '2024-01-22 19:14:33.127211');
INSERT INTO `b_wg` VALUES (3, '京B10888', 'A201805', '车辆违规', '2024-01-22 19:14:44.812878');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'member');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'wg');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-01-22 16:13:44.844220');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-01-22 16:13:45.399258');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-01-22 16:13:45.491052');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-01-22 16:13:45.506682');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-22 16:13:45.506682');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-01-22 16:13:45.623987');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-01-22 16:13:45.683778');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-01-22 16:13:45.755494');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-01-22 16:13:45.761009');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-01-22 16:13:45.807935');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-01-22 16:13:45.824161');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-01-22 16:13:45.824161');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-01-22 16:13:45.902476');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-01-22 16:13:45.966087');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-01-22 16:13:46.029125');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-01-22 16:13:46.044756');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-01-22 16:13:46.107730');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-01-22 16:13:47.506049');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_auto_20230526_2255', '2024-01-22 16:13:47.741455');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20230527_1411', '2024-01-22 16:13:47.993077');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_thing_raw', '2024-01-22 16:13:48.063138');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20230808_1739', '2024-01-22 16:13:49.268159');
INSERT INTO `django_migrations` VALUES (23, 'myapp', '0006_thing_remark', '2024-01-22 16:13:49.377998');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0007_auto_20230809_1840', '2024-01-22 16:13:50.446358');
INSERT INTO `django_migrations` VALUES (25, 'myapp', '0008_auto_20230810_1836', '2024-01-22 16:13:50.697879');
INSERT INTO `django_migrations` VALUES (26, 'myapp', '0009_auto_20240115_1002', '2024-01-22 16:13:51.689344');
INSERT INTO `django_migrations` VALUES (27, 'myapp', '0010_park_create_time', '2024-01-22 16:13:51.784052');
INSERT INTO `django_migrations` VALUES (28, 'myapp', '0011_auto_20240116_1859', '2024-01-22 16:13:52.429303');
INSERT INTO `django_migrations` VALUES (29, 'myapp', '0012_auto_20240118_1714', '2024-01-22 16:13:53.054080');
INSERT INTO `django_migrations` VALUES (30, 'myapp', '0013_auto_20240119_1713', '2024-01-22 16:13:53.500891');
INSERT INTO `django_migrations` VALUES (31, 'myapp', '0014_auto_20240122_1613', '2024-01-22 16:13:54.132096');
INSERT INTO `django_migrations` VALUES (32, 'sessions', '0001_initial', '2024-01-22 16:13:54.210192');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
