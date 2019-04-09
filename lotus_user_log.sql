/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : lotus_admin_v3

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-09 08:25:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lotus_user_log
-- ----------------------------
DROP TABLE IF EXISTS `lotus_user_log`;
CREATE TABLE `lotus_user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `way` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `ip` varchar(150) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lotus_user_log
-- ----------------------------
INSERT INTO `lotus_user_log` VALUES ('13', '成功登陆', 'Login/login', 'admin', null, '2017', '127.0.0.1', null, null);
INSERT INTO `lotus_user_log` VALUES ('14', '成功登陆', 'Login/login', 'admin', null, '2017', '127.0.0.1', null, null);
INSERT INTO `lotus_user_log` VALUES ('15', '成功登陆', 'Login/login', 'admin', null, '2017', '127.0.0.1', null, null);
INSERT INTO `lotus_user_log` VALUES ('16', '登陆', 'POST/login', 'admin', null, '1554737327', '127.0.0.1', null, '1554737327');
INSERT INTO `lotus_user_log` VALUES ('17', '登陆成功', 'POST/login', 'admin', null, '1554737967', '127.0.0.1', null, '1554737967');
INSERT INTO `lotus_user_log` VALUES ('18', '登陆成功', 'admin/user/login', 'admin', null, '1554738097', '127.0.0.1', null, '1554738097');
INSERT INTO `lotus_user_log` VALUES ('19', '登陆成功', 'admin/user/login', 'admin', null, '1554738193', '127.0.0.1', null, '1554738193');
INSERT INTO `lotus_user_log` VALUES ('20', '登陆成功', 'admin/user/login', 'admin', null, '1554738552', '127.0.0.1', null, '1554738552');
INSERT INTO `lotus_user_log` VALUES ('21', '登陆成功', 'admin/user/login', 'admin', null, '1554738581', '127.0.0.1', null, '1554738581');
INSERT INTO `lotus_user_log` VALUES ('22', '登陆成功', 'admin/user/login', 'admin', null, '1554738613', '127.0.0.1', null, '1554738613');
INSERT INTO `lotus_user_log` VALUES ('23', '登陆成功', 'admin/user/login', 'admin', null, '1554738623', '127.0.0.1', null, '1554738623');
