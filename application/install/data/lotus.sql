/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : lotus_admin

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-12-02 17:10:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lotus_api
-- ----------------------------
DROP TABLE IF EXISTS `lotus_api`;
CREATE TABLE `lotus_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `base_url` varchar(255) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `method` varchar(10) DEFAULT NULL,
  `is_token` varchar(255) DEFAULT '0',
  `app_id` int(11) DEFAULT NULL,
  `param` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lotus_api
-- ----------------------------
INSERT INTO `lotus_api` VALUES ('1', 'test', 'https://www.lotusadmin.top/index/index/testPost.html', 'NGPJPXYFLBFCTASBXYMYJ97R5', 'no_limit', '0', null, 'id:2|name:999', null, null, '1511938273', '1516843876');
INSERT INTO `lotus_api` VALUES ('45', '轮播图', 'https://www.lotusadmin.top/index/index/testPost.html', 'INW2BZIXLBZJXHZ4QD4QGBLQ2', 'post', '0', null, 'id:1|name:活动1|image:http://www.baidu.com|cd:22', null, null, '1516413527', '1541690386');

-- ----------------------------
-- Table structure for lotus_app
-- ----------------------------
DROP TABLE IF EXISTS `lotus_app`;
CREATE TABLE `lotus_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `app_id` int(11) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_id` (`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lotus_app
-- ----------------------------
INSERT INTO `lotus_app` VALUES ('48', '67890', '83315454', 'T5TIKY52PXW92KI8T47YNCPY2', '1512900450', '1514554017');
INSERT INTO `lotus_app` VALUES ('49', 'jjj', '89701605', 'CSOS6G1EX3PBE5QLWVOKJ4S4N', '1513262603', '1516368208');
INSERT INTO `lotus_app` VALUES ('51', '33213213', '36632265', 'SJXMOASBN1F7ZD85V44FPFZD5', '1513749512', '1513749512');
INSERT INTO `lotus_app` VALUES ('52', '66', '41119516', 'VG57ZSSDC1PN66QWHTQ167BXW', '1514170106', '1514170106');
INSERT INTO `lotus_app` VALUES ('54', 'fff', '35381515', 'FW8R3HD2DK7UVSK1UNPWUX3VR', '1514337763', '1514337763');
INSERT INTO `lotus_app` VALUES ('55', 'gggg', '17816116', 'V42T5EVD39Y19PHVQVKAP6AAM', '1514337920', '1514337920');
INSERT INTO `lotus_app` VALUES ('61', '888', '82758191', '2584LUAXGDEF2OFJESDQKPAVC', '1515790384', '1515790384');
INSERT INTO `lotus_app` VALUES ('62', '首页测试数据', '85221630', 'B3IXA9U7PRKQPBIJPJWBI6OVX', '1516412439', '1516412439');
INSERT INTO `lotus_app` VALUES ('63', 'frsfsd', '62661704', 'LZ8UTZOZO6QFB8EY6HIX2UJC2', '1516606772', '1516606772');
INSERT INTO `lotus_app` VALUES ('65', 'test11', '67203101', 'EA3NX4PARMR63RUMATX27A5IY', '1516694560', '1516694560');
INSERT INTO `lotus_app` VALUES ('66', 'test11', '42597693', 'JGBRGA7EXDY8T5INDBJO6PHCE', '1516756425', '1516756425');
INSERT INTO `lotus_app` VALUES ('67', 'ssdfgsdf', '62128950', 'IG4NT2KGVA72E1VRDEDFZBZUL', '1516760748', '1516760748');
INSERT INTO `lotus_app` VALUES ('68', '11111111', '82120651', 'OPYRD3BIOUXV75556X34DAYCR', '1516760764', '1516760764');

-- ----------------------------
-- Table structure for lotus_article
-- ----------------------------
DROP TABLE IF EXISTS `lotus_article`;
CREATE TABLE `lotus_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `cid` smallint(5) unsigned NOT NULL COMMENT '分类ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `introduction` varchar(255) DEFAULT '' COMMENT '简介',
  `content` longtext COMMENT '内容',
  `author` varchar(20) DEFAULT '' COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0 待审核  1 审核',
  `reading` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '阅读量',
  `thumb` varchar(255) DEFAULT '' COMMENT '缩略图',
  `photo` text COMMENT '图集',
  `is_top` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶  0 不置顶  1 置顶',
  `is_recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐  0 不推荐  1 推荐',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `publish_time` datetime NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of lotus_article
-- ----------------------------
INSERT INTO `lotus_article` VALUES ('1', '1', '测试文章一', '', '<p>测试内容</p>', 'admin', '1', '0', '', null, '0', '0', '0', '2017-04-11 14:10:10', '2017-04-11 14:09:45');

-- ----------------------------
-- Table structure for lotus_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `lotus_auth_group`;
CREATE TABLE `lotus_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(255) NOT NULL COMMENT '权限规则ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=194 DEFAULT CHARSET=utf8 COMMENT='权限组表';

-- ----------------------------
-- Records of lotus_auth_group
-- ----------------------------
INSERT INTO `lotus_auth_group` VALUES ('1', '超级管理组', '1', '1,2,3,4,219,5,6,7,8,202,203,209');
INSERT INTO `lotus_auth_group` VALUES ('193', 'asdasd', '0', '');

-- ----------------------------
-- Table structure for lotus_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `lotus_auth_group_access`;
CREATE TABLE `lotus_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限组规则表';



-- ----------------------------
-- Table structure for lotus_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `lotus_auth_rule`;
CREATE TABLE `lotus_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(20) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `pid` smallint(5) unsigned NOT NULL COMMENT '父级ID',
  `icon` varchar(50) DEFAULT '' COMMENT '图标',
  `sort` int(50) unsigned NOT NULL COMMENT '排序',
  `condition` char(100) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=utf8 COMMENT='规则表';

-- ----------------------------
-- Records of lotus_auth_rule
-- ----------------------------
INSERT INTO `lotus_auth_rule` VALUES ('1', 'admin/user/default', '后台管理', '1', '1', '0', 'xe66f', '1', '');
INSERT INTO `lotus_auth_rule` VALUES ('2', 'admin/user/userlist', '用户管理', '1', '1', '1', '', '0', '');
INSERT INTO `lotus_auth_rule` VALUES ('3', 'admin/auth/index', '权限管理', '1', '1', '1', '', '0', '');
INSERT INTO `lotus_auth_rule` VALUES ('4', 'admin/auth/role', '角色管理', '1', '1', '1', '', '0', '');
INSERT INTO `lotus_auth_rule` VALUES ('8', 'admin/api/app_list', '接口仓库', '1', '1', '7', '', '0', '');
INSERT INTO `lotus_auth_rule` VALUES ('5', 'admin/DbManage/default', '数据库', '1', '1', '0', 'xe635', '201', '');
INSERT INTO `lotus_auth_rule` VALUES ('6', 'admin/DbManage/index', '备份', '1', '1', '5', '', '0', '');
INSERT INTO `lotus_auth_rule` VALUES ('7', 'admin/api/default', '接口管理', '1', '1', '0', 'xe857', '3', '');
INSERT INTO `lotus_auth_rule` VALUES ('202', 'admin/file_system/index', '文件管理', '1', '1', '0', 'xe61d', '200', '');
INSERT INTO `lotus_auth_rule` VALUES ('219', 'admin/auth/addRole', '新增角色', '1', '0', '4', '', '0', '');
INSERT INTO `lotus_auth_rule` VALUES ('220', 'admin/auth/add', '新增权限', '1', '0', '3', '', '0', '');
INSERT INTO `lotus_auth_rule` VALUES ('221', 'admin/auth/edit', '编辑权限', '1', '0', '3', '', '0', '');
INSERT INTO `lotus_auth_rule` VALUES ('222', 'admin/auth/delete', '删除权限', '1', '0', '3', '', '0', '');
INSERT INTO `lotus_auth_rule` VALUES ('223', 'admin/user/addUser', '增加用户', '1', '0', '2', '', '0', '');
INSERT INTO `lotus_auth_rule` VALUES ('224', 'admin/user/editUser', '编辑用户', '1', '0', '2', '', '0', '');
INSERT INTO `lotus_auth_rule` VALUES ('225', 'admin/user/deleteUser', '删除用户', '1', '0', '2', '', '0', '');
INSERT INTO `lotus_auth_rule` VALUES ('226', 'admin/auth/updateAuthGroupRule', '角色授权', '1', '0', '4', '', '0', '');
INSERT INTO `lotus_auth_rule` VALUES ('227', 'admin/auth/editRole', '角色编辑', '1', '0', '4', '', '0', '');
INSERT INTO `lotus_auth_rule` VALUES ('228', 'admin/auth/delRole', '删除角色', '1', '0', '4', '', '0', '');
INSERT INTO `lotus_auth_rule` VALUES ('229', 'admin/user_log/index', '系统日志', '1', '1', '0', 'xe60e', '5', '');




-- ----------------------------
-- Table structure for lotus_category
-- ----------------------------
DROP TABLE IF EXISTS `lotus_category`;
CREATE TABLE `lotus_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `alias` varchar(50) DEFAULT '' COMMENT '导航别名',
  `content` longtext COMMENT '分类内容',
  `thumb` varchar(255) DEFAULT '' COMMENT '缩略图',
  `icon` varchar(20) DEFAULT '' COMMENT '分类图标',
  `list_template` varchar(50) DEFAULT '' COMMENT '分类列表模板',
  `detail_template` varchar(50) DEFAULT '' COMMENT '分类详情模板',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '分类类型  1  列表  2 单页',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `path` varchar(255) DEFAULT '' COMMENT '路径',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of lotus_category
-- ----------------------------
INSERT INTO `lotus_category` VALUES ('1', '分类一', '', '', '', '', '', '', '1', '0', '0', '0,', '2016-12-22 18:22:24');

-- ----------------------------
-- Table structure for lotus_file
-- ----------------------------
DROP TABLE IF EXISTS `lotus_file`;
CREATE TABLE `lotus_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lotus_file
-- ----------------------------


-- ----------------------------
-- Table structure for lotus_link
-- ----------------------------
DROP TABLE IF EXISTS `lotus_link`;
CREATE TABLE `lotus_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '链接名称',
  `link` varchar(255) DEFAULT '' COMMENT '链接地址',
  `image` varchar(255) DEFAULT '' COMMENT '链接图片',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1 显示  2 隐藏',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of lotus_link
-- ----------------------------

-- ----------------------------
-- Table structure for lotus_nav
-- ----------------------------
DROP TABLE IF EXISTS `lotus_nav`;
CREATE TABLE `lotus_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL COMMENT '父ID',
  `name` varchar(20) NOT NULL COMMENT '导航名称',
  `alias` varchar(20) DEFAULT '' COMMENT '导航别称',
  `link` varchar(255) DEFAULT '' COMMENT '导航链接',
  `icon` varchar(255) DEFAULT '' COMMENT '导航图标',
  `target` varchar(10) DEFAULT '' COMMENT '打开方式',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态  0 隐藏  1 显示',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='导航表';

-- ----------------------------
-- Records of lotus_nav
-- ----------------------------

-- ----------------------------
-- Table structure for lotus_options
-- ----------------------------
DROP TABLE IF EXISTS `lotus_options`;
CREATE TABLE `lotus_options` (
  `option_value` varchar(255) NOT NULL,
  `option_name` int(255) DEFAULT NULL,
  PRIMARY KEY (`option_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lotus_options
-- ----------------------------

-- ----------------------------
-- Table structure for lotus_slide
-- ----------------------------
DROP TABLE IF EXISTS `lotus_slide`;
CREATE TABLE `lotus_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `name` varchar(50) NOT NULL COMMENT '轮播图名称',
  `description` varchar(255) DEFAULT '' COMMENT '说明',
  `link` varchar(255) DEFAULT '' COMMENT '链接',
  `target` varchar(10) DEFAULT '' COMMENT '打开方式',
  `image` varchar(255) DEFAULT '' COMMENT '轮播图片',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态  1 显示  0  隐藏',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='轮播图表';

-- ----------------------------
-- Records of lotus_slide
-- ----------------------------

-- ----------------------------
-- Table structure for lotus_slide_category
-- ----------------------------
DROP TABLE IF EXISTS `lotus_slide_category`;
CREATE TABLE `lotus_slide_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '轮播图分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='轮播图分类表';

-- ----------------------------
-- Records of lotus_slide_category
-- ----------------------------
INSERT INTO `lotus_slide_category` VALUES ('1', '首页轮播');

-- ----------------------------
-- Table structure for lotus_system
-- ----------------------------
DROP TABLE IF EXISTS `lotus_system`;
CREATE TABLE `lotus_system` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '配置项名称',
  `value` text NOT NULL COMMENT '配置项值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

-- ----------------------------
-- Records of lotus_system
-- ----------------------------
INSERT INTO `lotus_system` VALUES ('1', 'site_config', 'a:7:{s:10:\"site_title\";s:30:\"Think Admin 后台管理系统\";s:9:\"seo_title\";s:0:\"\";s:11:\"seo_keyword\";s:0:\"\";s:15:\"seo_description\";s:0:\"\";s:14:\"site_copyright\";s:0:\"\";s:8:\"site_icp\";s:0:\"\";s:11:\"site_tongji\";s:0:\"\";}');
INSERT INTO `lotus_system` (`id`, `name`, `value`) VALUES ('2', 'view_count', '2');
INSERT INTO `lotus_system` (`id`, `name`, `value`) VALUES ('3', 'download_count', '3');


-- ----------------------------
-- Table structure for lotus_user
-- ----------------------------
DROP TABLE IF EXISTS `lotus_user`;
CREATE TABLE `lotus_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `mobile` varchar(11) DEFAULT '' COMMENT '手机',
  `email` varchar(50) DEFAULT '' COMMENT '邮箱',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态  1 正常  2 禁止',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `last_login_ip` varchar(50) DEFAULT '' COMMENT '最后登录IP',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of lotus_user
-- ----------------------------
INSERT INTO `lotus_user` VALUES ('107', 'demo', 'e10adc3949ba59abbe56e057f20f883e', '', 'whndeweilai@163.com', '1', '2018-12-02 02:14:51', null, '0.0.0.0');


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
