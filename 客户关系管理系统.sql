/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : 客户关系管理系统

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 12/10/2019 16:52:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_customer
-- ----------------------------
DROP TABLE IF EXISTS `tb_customer`;
CREATE TABLE `tb_customer`  (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `cus_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tele` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uid`, `cus_name`, `gender`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_customer
-- ----------------------------
INSERT INTO `tb_customer` VALUES (1, 'yxg', '男', '2018-11-28', '13006323', '1926', '5552sad');
INSERT INTO `tb_customer` VALUES (2, '1111', '111', '111', '111', '111', '111');
INSERT INTO `tb_customer` VALUES (3, '333', '333', '333', '333', '333', '222');
INSERT INTO `tb_customer` VALUES (4, '4444', '444', '444', '444', '444', '444');
INSERT INTO `tb_customer` VALUES (5, '2131', '3213', '2323', '43564657', '658', '8768768');
INSERT INTO `tb_customer` VALUES (6, '2131', '3213', '2323', '43564657', '658', '8768768');
INSERT INTO `tb_customer` VALUES (7, '卜晨', '男', '的撒', 'da\'s\'da', 'dsada', 'g\'f\'h\'f\'g');
INSERT INTO `tb_customer` VALUES (8, 'da', '123', 'sd', 'h', 'h', 'f');
INSERT INTO `tb_customer` VALUES (9, '', '', '', '', '', '');
INSERT INTO `tb_customer` VALUES (10, '大苏打', 'dsada', '', '', '', '');

-- ----------------------------
-- Table structure for tb_major
-- ----------------------------
DROP TABLE IF EXISTS `tb_major`;
CREATE TABLE `tb_major`  (
  `sid` int(5) NOT NULL,
  `mid` int(5) NOT NULL,
  `mname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sid`, `mid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_major
-- ----------------------------
INSERT INTO `tb_major` VALUES (12314, 11111, '信息管理', '管理学院');
INSERT INTO `tb_major` VALUES (12314, 11112, '电子商务', '管理学院');
INSERT INTO `tb_major` VALUES (12314, 11113, '物流管理', '管理学院');
INSERT INTO `tb_major` VALUES (12314, 11114, '工商管理', '管理学院');
INSERT INTO `tb_major` VALUES (12315, 10001, '金融', '经济学院');
INSERT INTO `tb_major` VALUES (12315, 10002, '国际金融与贸易', '经济学院');
INSERT INTO `tb_major` VALUES (12315, 10003, '财政学', '经济学院');
INSERT INTO `tb_major` VALUES (12316, 20001, '商务英语', '外国语学院');
INSERT INTO `tb_major` VALUES (12316, 20002, '英语', '外国语学院');
INSERT INTO `tb_major` VALUES (12316, 20003, '俄语', '外国语学院');
INSERT INTO `tb_major` VALUES (12316, 20004, '日语', '外国语学院');
INSERT INTO `tb_major` VALUES (12317, 30001, '会计学', '会计学院');
INSERT INTO `tb_major` VALUES (12317, 30002, '财务管理', '会计学院');
INSERT INTO `tb_major` VALUES (12317, 30003, 'ACCA', '会计学院');
INSERT INTO `tb_major` VALUES (12317, 30004, 'CFA', '会计学院');

-- ----------------------------
-- Table structure for tb_school
-- ----------------------------
DROP TABLE IF EXISTS `tb_school`;
CREATE TABLE `tb_school`  (
  `sid` int(5) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12318 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_school
-- ----------------------------
INSERT INTO `tb_school` VALUES (12314, '管理学院');
INSERT INTO `tb_school` VALUES (12315, '经济学院');
INSERT INTO `tb_school` VALUES (12316, '外国语学院');
INSERT INTO `tb_school` VALUES (12317, '会计学院');

-- ----------------------------
-- Table structure for tb_studentinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_studentinfo`;
CREATE TABLE `tb_studentinfo`  (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `sno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hobby` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uid`, `sno`, `password`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_studentinfo
-- ----------------------------
INSERT INTO `tb_studentinfo` VALUES (1, '1707270101', '123', '余先刚', '男', '20', '750', '750');
INSERT INTO `tb_studentinfo` VALUES (2, 'aaa', '123', 'sda', '女', 'dsad', 'da', 'da');
INSERT INTO `tb_studentinfo` VALUES (3, 'yxg', 'yxg', '哈哈哈', 's', 'sssd', '456', '89');
INSERT INTO `tb_studentinfo` VALUES (4, '1', '2', '1', '1', '1', '1', '1');
INSERT INTO `tb_studentinfo` VALUES (5, '1', '2', '3', '3', '4', '4', '4');
INSERT INTO `tb_studentinfo` VALUES (6, 'da', 'fasf', 'hjgj', 'h', 'lk', 'fgh', 'fgd');
INSERT INTO `tb_studentinfo` VALUES (7, 'da', 'fasf', 'hjgj', 'h', 'lk', 'fgh', 'fgd');
INSERT INTO `tb_studentinfo` VALUES (8, 'da', 'fasf', 'hjgj', 'h', 'lk', 'fgh', 'fgd');
INSERT INTO `tb_studentinfo` VALUES (9, 'da', 'fasf', 'hjgj', 'h', 'lk', 'fgh', 'fgd');
INSERT INTO `tb_studentinfo` VALUES (10, 'das', 'd', 'sd', 'd', 'dasd', 'd', 'as');
INSERT INTO `tb_studentinfo` VALUES (11, 'das', 'd', 'sd', 'd', 'dasd', 'd', 'as');
INSERT INTO `tb_studentinfo` VALUES (12, '1', '1', '4', '2', '3', '4', '5');
INSERT INTO `tb_studentinfo` VALUES (13, '啊', '是', 's', 's', 'ss', 's', 's');
INSERT INTO `tb_studentinfo` VALUES (14, '', '', '', '', '', '', '');
INSERT INTO `tb_studentinfo` VALUES (15, '1', '2', '3', '4', '4', '5', '6');
INSERT INTO `tb_studentinfo` VALUES (16, 'w', 'ewq', 'dsa', 's', 'da', 'da', 'd');
INSERT INTO `tb_studentinfo` VALUES (17, '1', '232', '43', '25', '43', '7', '7');
INSERT INTO `tb_studentinfo` VALUES (18, '11', '2', '2', '3', '2', '1', '1');
INSERT INTO `tb_studentinfo` VALUES (19, '1', '1', '2', '1', '1', '1', '1');
INSERT INTO `tb_studentinfo` VALUES (20, '1', '2', '1', '1', '1', '1', '1');
INSERT INTO `tb_studentinfo` VALUES (21, '1', '2', '1', '1', '1', '1', '1');
INSERT INTO `tb_studentinfo` VALUES (22, '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tb_studentinfo` VALUES (23, '32', '2', '3', '2', '3', '4', '4');
INSERT INTO `tb_studentinfo` VALUES (24, '32', '2', '3', '2', '3', '4', '4');
INSERT INTO `tb_studentinfo` VALUES (25, 'æ', 'da', '1', '1', '2', '1', '1');
INSERT INTO `tb_studentinfo` VALUES (26, '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tb_studentinfo` VALUES (27, '', '', '', '', '', '', '');
INSERT INTO `tb_studentinfo` VALUES (28, '', '', '', '', '', '', '');
INSERT INTO `tb_studentinfo` VALUES (29, '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tb_studentinfo` VALUES (30, '17072701011', '1', '1', '1', '1', '1', '1');
INSERT INTO `tb_studentinfo` VALUES (31, '', '', '', '', '', '', '');
INSERT INTO `tb_studentinfo` VALUES (32, '', '', '', '', '', '', '');
INSERT INTO `tb_studentinfo` VALUES (33, '', '', '', '', '', '', '');
INSERT INTO `tb_studentinfo` VALUES (34, '1', '12', '2', '3', '3', '3', '4');
INSERT INTO `tb_studentinfo` VALUES (35, '', '', '', '', '', '', '');
INSERT INTO `tb_studentinfo` VALUES (36, '1', '2', '2', '3', '34', '4', '43');
INSERT INTO `tb_studentinfo` VALUES (37, '1', '2', '2', '3', '34', '4', '43');
INSERT INTO `tb_studentinfo` VALUES (38, '1', '2', '2', '3', '34', '4', '43');
INSERT INTO `tb_studentinfo` VALUES (39, 'da', 'da', 'a', 'da', 'd', 'dda', 'da');
INSERT INTO `tb_studentinfo` VALUES (40, 'da', 'da', 'da', 'a', 'a', 'a', 'a');
INSERT INTO `tb_studentinfo` VALUES (41, 'a', 'a', 'a', 'a', 'a', 'a', 'a');
INSERT INTO `tb_studentinfo` VALUES (42, 'a', 'a', 'a', 'a', 'a', 'a', '');
INSERT INTO `tb_studentinfo` VALUES (43, 'a', 'a', 'a', 'a', 'a', 'a', 'a');
INSERT INTO `tb_studentinfo` VALUES (44, '', '', '', '', '', '', '');
INSERT INTO `tb_studentinfo` VALUES (45, '123', '22', '2', '2', '2', '2', '2');
INSERT INTO `tb_studentinfo` VALUES (46, '', '', '', '', '', '', '');
INSERT INTO `tb_studentinfo` VALUES (47, '', '', '', '', '', '', '');
INSERT INTO `tb_studentinfo` VALUES (48, '', '', '', '', '', '', '');
INSERT INTO `tb_studentinfo` VALUES (49, '', '', '', '', '', '', '');
INSERT INTO `tb_studentinfo` VALUES (50, '123', '423234', '324', '2', 'q', '`safs', 'dsadasd');
INSERT INTO `tb_studentinfo` VALUES (51, '123', '423234', '324', '2', 'q', '`safs', 'dsadasd');
INSERT INTO `tb_studentinfo` VALUES (52, '124', '123', '123', 'q', 's', 's', 'a');
INSERT INTO `tb_studentinfo` VALUES (53, '12', '2', '2', '2', '2', '2', '2');

-- ----------------------------
-- Table structure for tb_third
-- ----------------------------
DROP TABLE IF EXISTS `tb_third`;
CREATE TABLE `tb_third`  (
  `username` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `career` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tele` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `postcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_third
-- ----------------------------
INSERT INTO `tb_third` VALUES ('123', 'asda', '男', 'asd', 'asd', 'dsa', 'asdas');

-- ----------------------------
-- Table structure for tb_users
-- ----------------------------
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users`  (
  `username` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO `tb_users` VALUES ('卜晨', '153426');
INSERT INTO `tb_users` VALUES ('赵微', '990304');

-- ----------------------------
-- Table structure for y_user
-- ----------------------------
DROP TABLE IF EXISTS `y_user`;
CREATE TABLE `y_user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of y_user
-- ----------------------------
INSERT INTO `y_user` VALUES (1, '1871896574@qq.com', '123');
INSERT INTO `y_user` VALUES (2, '1238968899@qq.com', '123');
INSERT INTO `y_user` VALUES (3, '1922669677@qq.com', '123');
INSERT INTO `y_user` VALUES (5, '1922859677@qq.com', '123456');
INSERT INTO `y_user` VALUES (6, '2567151447@qq.com', '0000');

SET FOREIGN_KEY_CHECKS = 1;
