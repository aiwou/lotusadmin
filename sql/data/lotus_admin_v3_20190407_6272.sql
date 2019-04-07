/* This file is created by MySQLReback 2019-04-07 23:16:40 */
 SET FOREIGN_KEY_CHECKS=0;
 /* 创建表结构 `lotus_api`  */
 DROP TABLE IF EXISTS `lotus_api`;/* MySQLReback Separation */ 
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lotus_api` */
 INSERT INTO `lotus_api` VALUES ('1','test','https://www.lotusadmin.top/index/index/testPost.html','NGPJPXYFLBFCTASBXYMYJ97R5','no_limit','0',null,'id:2|name:999',null,null,'1511938273','1516843876'),('45','轮播图','https://www.lotusadmin.top/index/index/testPost.html','INW2BZIXLBZJXHZ4QD4QGBLQ2','post','0',null,'id:1|name:活动1|image:http://www.baidu.com|cd:22',null,null,'1516413527','1541690386');/* MySQLReback Separation */
 /* 创建表结构 `lotus_app`  */
 DROP TABLE IF EXISTS `lotus_app`;/* MySQLReback Separation */ 
 CREATE TABLE `lotus_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `app_id` int(11) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_id` (`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lotus_app` */
 INSERT INTO `lotus_app` VALUES ('48','67890','83315454','T5TIKY52PXW92KI8T47YNCPY2','1512900450','1552706872'),('49','jjj','89701605','CSOS6G1EX3PBE5QLWVOKJ4S4N','1513262603','1516368208'),('51','33213213','36632265','SJXMOASBN1F7ZD85V44FPFZD5','1513749512','1513749512'),('52','66','41119516','VG57ZSSDC1PN66QWHTQ167BXW','1514170106','1514170106'),('54','fff','35381515','FW8R3HD2DK7UVSK1UNPWUX3VR','1514337763','1514337763'),('55','gggg','17816116','V42T5EVD39Y19PHVQVKAP6AAM','1514337920','1514337920'),('61','888','82758191','2584LUAXGDEF2OFJESDQKPAVC','1515790384','1515790384'),('62','首页测试数据','85221630','B3IXA9U7PRKQPBIJPJWBI6OVX','1516412439','1516412439'),('63','frsfsd','62661704','LZ8UTZOZO6QFB8EY6HIX2UJC2','1516606772','1516606772'),('65','test11','67203101','EA3NX4PARMR63RUMATX27A5IY','1516694560','1516694560'),('66','test11','42597693','JGBRGA7EXDY8T5INDBJO6PHCE','1516756425','1516756425'),('67','ssdfgsdf','62128950','IG4NT2KGVA72E1VRDEDFZBZUL','1516760748','1516760748'),('68','11111111','82120651','OPYRD3BIOUXV75556X34DAYCR','1516760764','1516760764');/* MySQLReback Separation */
 /* 创建表结构 `lotus_article`  */
 DROP TABLE IF EXISTS `lotus_article`;/* MySQLReback Separation */ 
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='文章表';/* MySQLReback Separation */
 /* 插入数据 `lotus_article` */
 INSERT INTO `lotus_article` VALUES ('1','1','测试文章一',null,'<p>测试内容</p>','admin','1',null,null,null,null,null,null,'2017-04-11 14:10:10','2017-04-11 14:09:45');/* MySQLReback Separation */
 /* 创建表结构 `lotus_auth_group`  */
 DROP TABLE IF EXISTS `lotus_auth_group`;/* MySQLReback Separation */ 
 CREATE TABLE `lotus_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(255) NOT NULL COMMENT '权限规则ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=194 DEFAULT CHARSET=utf8 COMMENT='权限组表';/* MySQLReback Separation */
 /* 插入数据 `lotus_auth_group` */
 INSERT INTO `lotus_auth_group` VALUES ('1','超级管理组','1','1,2,3,4,219,5,6,7,8,202,203,209'),('193','asdasd',null,null);/* MySQLReback Separation */
 /* 创建表结构 `lotus_auth_group_access`  */
 DROP TABLE IF EXISTS `lotus_auth_group_access`;/* MySQLReback Separation */ 
 CREATE TABLE `lotus_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限组规则表';/* MySQLReback Separation */
 /* 插入数据 `lotus_auth_group_access` */
 INSERT INTO `lotus_auth_group_access` VALUES ('1','1'),('27','2'),('28','2'),('29','50'),('30','52'),('31','54'),('32','2'),('33','64'),('34','1'),('35','52'),('36','35'),('37','52'),('38','65'),('39','59'),('40','69'),('41','69'),('42','69'),('43','61'),('44','62'),('45','64'),('46','69'),('47','70'),('48','70'),('49','70'),('50','69'),('51','70'),('52','70'),('53','70'),('54','70'),('55','1'),('56','1'),('57','72'),('58','72'),('59','72'),('60','72'),('61','1'),('62','78'),('63','78'),('64','1'),('65','117'),('66','90'),('67','90'),('68','102'),('69','102'),('70','102'),('71','106'),('72','106'),('73','112'),('74','111'),('75','78'),('76','126'),('77','1'),('78','123'),('79','1'),('80','123'),('81','129'),('82','135'),('83','129'),('84','138'),('85','137'),('86','1'),('87','138'),('88','138'),('89','138'),('90','138'),('91','117'),('92','156'),('93','156'),('94','163'),('95','164'),('96','145'),('97','172'),('98','175'),('99','1'),('100','173'),('101','180'),('102','181'),('103','185'),('104','187'),('105','187'),('106','187'),('107','1');/* MySQLReback Separation */
 /* 创建表结构 `lotus_auth_rule`  */
 DROP TABLE IF EXISTS `lotus_auth_rule`;/* MySQLReback Separation */ 
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
) ENGINE=MyISAM AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 COMMENT='规则表';/* MySQLReback Separation */
 /* 插入数据 `lotus_auth_rule` */
 INSERT INTO `lotus_auth_rule` VALUES ('1','admin/user/default','后台管理','1','1',null,'xe66f','1',null),('2','admin/user/userlist','用户管理','1','1','1',null,null,null),('3','admin/auth/index','权限管理','1','1','1',null,null,null),('4','admin/auth/role','角色管理','1','1','1',null,null,null),('8','admin/api/app_list','接口仓库','1','1','7',null,null,null),('5','admin/DbManage/default','数据库','1','1',null,'xe631','201',null),('6','admin/DbManage/index','备份','1','1','5',null,null,null),('7','admin/api/default','接口管理','1','1',null,'xe857','3',null),('202','admin/file_system/index','文件管理','1','1',null,'xe61d','200',null),('203','sadasd','一级菜单','1','1',null,'xe609','5',null),('209','jhgjhghj','二级','1','1','203','xe660',null,null),('219','admin/auth/addRole','新增角色','1',null,'4',null,null,null),('220','admin/auth/add','新增权限','1',null,'3',null,null,null),('221','admin/auth/edit','编辑权限','1',null,'3',null,null,null),('222','admin/auth/delete','删除权限','1',null,'3',null,null,null),('223','admin/user/addUser','增加用户','1',null,'2',null,null,null),('224','admin/user/editUser','编辑用户','1',null,'2',null,null,null),('225','admin/user/deleteUser','删除用户','1',null,'2',null,null,null),('226','admin/auth/updateAuthGroupRule','角色授权','1',null,'4',null,null,null),('227','admin/auth/editRole','角色编辑','1',null,'4',null,null,null),('228','admin/auth/delRole','删除角色','1',null,'4',null,null,null),('230','sadasdsad','cc','1','1','209',null,null,null);/* MySQLReback Separation */
 /* 创建表结构 `lotus_category`  */
 DROP TABLE IF EXISTS `lotus_category`;/* MySQLReback Separation */ 
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='分类表';/* MySQLReback Separation */
 /* 插入数据 `lotus_category` */
 INSERT INTO `lotus_category` VALUES ('1','分类一',null,null,null,null,null,null,'1',null,null,'0,','2016-12-22 18:22:24');/* MySQLReback Separation */
 /* 创建表结构 `lotus_file`  */
 DROP TABLE IF EXISTS `lotus_file`;/* MySQLReback Separation */ 
 CREATE TABLE `lotus_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lotus_file` */
 INSERT INTO `lotus_file` VALUES ('1','\public\uploads\20190405\167e0f40f74cf8c245e9494d7de85aa7.jpg','1k');/* MySQLReback Separation */
 /* 创建表结构 `lotus_link`  */
 DROP TABLE IF EXISTS `lotus_link`;/* MySQLReback Separation */ 
 CREATE TABLE `lotus_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '链接名称',
  `link` varchar(255) DEFAULT '' COMMENT '链接地址',
  `image` varchar(255) DEFAULT '' COMMENT '链接图片',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1 显示  2 隐藏',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='友情链接表';/* MySQLReback Separation */
 /* 创建表结构 `lotus_nav`  */
 DROP TABLE IF EXISTS `lotus_nav`;/* MySQLReback Separation */ 
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='导航表';/* MySQLReback Separation */
 /* 创建表结构 `lotus_options`  */
 DROP TABLE IF EXISTS `lotus_options`;/* MySQLReback Separation */ 
 CREATE TABLE `lotus_options` (
  `option_value` varchar(255) NOT NULL,
  `option_name` int(255) DEFAULT NULL,
  PRIMARY KEY (`option_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `lotus_slide`  */
 DROP TABLE IF EXISTS `lotus_slide`;/* MySQLReback Separation */ 
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='轮播图表';/* MySQLReback Separation */
 /* 创建表结构 `lotus_slide_category`  */
 DROP TABLE IF EXISTS `lotus_slide_category`;/* MySQLReback Separation */ 
 CREATE TABLE `lotus_slide_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '轮播图分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='轮播图分类表';/* MySQLReback Separation */
 /* 插入数据 `lotus_slide_category` */
 INSERT INTO `lotus_slide_category` VALUES ('1','首页轮播');/* MySQLReback Separation */
 /* 创建表结构 `lotus_system`  */
 DROP TABLE IF EXISTS `lotus_system`;/* MySQLReback Separation */ 
 CREATE TABLE `lotus_system` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '配置项名称',
  `value` text NOT NULL COMMENT '配置项值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置表';/* MySQLReback Separation */
 /* 插入数据 `lotus_system` */
 INSERT INTO `lotus_system` VALUES ('1','site_config','a:7:{s:10:"site_title";s:30:"Think Admin 后台管理系统";s:9:"seo_title";s:0:"";s:11:"seo_keyword";s:0:"";s:15:"seo_description";s:0:"";s:14:"site_copyright";s:0:"";s:8:"site_icp";s:0:"";s:11:"site_tongji";s:0:"";}');/* MySQLReback Separation */
 /* 创建表结构 `lotus_user`  */
 DROP TABLE IF EXISTS `lotus_user`;/* MySQLReback Separation */ 
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
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='用户表';/* MySQLReback Separation */
 /* 插入数据 `lotus_user` */
 INSERT INTO `lotus_user` VALUES ('107','demo','121144d6c3114c583415f06860ad3710',null,'whndeweilai@163.com','1','2018-12-02 02:14:51',null,'0.0.0.0'),('1','admin','e10adc3949ba59abbe56e057f20f883e',null,'whnde@qq.com','1','2019-03-16 08:44:42','2019-04-07 03:02:33','127.0.0.1');/* MySQLReback Separation */