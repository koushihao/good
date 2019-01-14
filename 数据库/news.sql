/*
Navicat MySQL Data Transfer

Source Server         : news
Source Server Version : 50562
Source Host           : 144.34.193.75:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2018-12-25 10:59:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `n_news`
-- ----------------------------
DROP TABLE IF EXISTS `n_news`;
CREATE TABLE `n_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(40) NOT NULL,
  `news_type` varchar(20) NOT NULL,
  `news_keyword` varchar(40) DEFAULT NULL,
  `news_check` int(11) DEFAULT NULL COMMENT '0,未审核  1，审核',
  `news_content` text,
  `news_image` varchar(200) DEFAULT NULL,
  `news_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of n_news
-- ----------------------------
INSERT INTO `n_news` VALUES ('1', '我是新闻标题', '编程', 'javaweb', '1', '<p>添加新闻测试添加新闻测试添加新闻测试添加新闻测试添加新闻测试添加新闻测试添加新闻测试</p>', null, '2018-12-21 00:00:00');
INSERT INTO `n_news` VALUES ('2', '新闻1', '娱乐', 'test', '1', '<p>新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1</p>', null, '2018-12-20 00:00:00');
INSERT INTO `n_news` VALUES ('3', '新闻2', '', 'test', '1', '<p><img src=\"http://47.95.200.155:8080/news/layui/images/face/58.gif\" alt=\"[弱]\">新闻2新闻2新闻2新闻2新闻2新闻2新闻2新闻2新闻2新闻2新闻2</p>', null, '2018-12-23 00:00:00');
INSERT INTO `n_news` VALUES ('4', '猴赛雷因长得太帅背叛无妻徒刑', '撤回也没用', '帅无妻', '1', '如果帅是一种罪，我这种就是只有直接枪毙的份了，我一直在承受我这个年纪不该拥有的帅气与机智，我好累<img src=\"http://47.95.200.155:8080/news/layui/images/face/15.gif\" alt=\"[生病]\">', null, '2018-12-21 00:00:00');
INSERT INTO `n_news` VALUES ('5', '猴赛雷因长得太帅背叛无妻徒刑', '我都看到了', '帅无妻', '1', '如果帅是一种罪，我这种就是只有直接枪毙的份了，我一直在承受我这个年纪不该拥有的帅气与机智，我好累<img src=\"http://47.95.200.155:8080/news/layui/images/face/15.gif\" alt=\"[生病]\">', null, '2018-12-21 00:00:00');

-- ----------------------------
-- Table structure for `n_newstype`
-- ----------------------------
DROP TABLE IF EXISTS `n_newstype`;
CREATE TABLE `n_newstype` (
  `newstype_id` int(11) NOT NULL AUTO_INCREMENT,
  `newstype_type` varchar(40) NOT NULL,
  `newstype_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`newstype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of n_newstype
-- ----------------------------
INSERT INTO `n_newstype` VALUES ('2', '游戏', '2018-12-21 12:29:16');
INSERT INTO `n_newstype` VALUES ('3', '编程', '2018-12-21 12:31:23');
INSERT INTO `n_newstype` VALUES ('7', '娱乐', '2018-12-21 12:38:20');
INSERT INTO `n_newstype` VALUES ('8', '测试编辑11', '2018-12-21 14:26:32');
INSERT INTO `n_newstype` VALUES ('9', '撤回也没用', '2018-12-21 17:55:46');
INSERT INTO `n_newstype` VALUES ('10', '我都看到了', '2018-12-21 17:56:18');
INSERT INTO `n_newstype` VALUES ('13', '类别1', '2018-12-24 14:15:45');
INSERT INTO `n_newstype` VALUES ('14', 'javaweb', '2018-12-25 08:47:58');

-- ----------------------------
-- Table structure for `n_user`
-- ----------------------------
DROP TABLE IF EXISTS `n_user`;
CREATE TABLE `n_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(40) DEFAULT NULL,
  `user_password` varchar(20) DEFAULT NULL,
  `superFlag` int(1) DEFAULT '0',
  `comment` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of n_user
-- ----------------------------
INSERT INTO `n_user` VALUES ('1', 'wxy', 'wxy', '1', '超管');
INSERT INTO `n_user` VALUES ('37', '普通用户', '12212', '0', '普通用户');
INSERT INTO `n_user` VALUES ('39', '测试1', '456456', '1', '测试1测试1测试1测试1');
INSERT INTO `n_user` VALUES ('40', '测试2', '16156151512356', '1', '测试2测试2');
INSERT INTO `n_user` VALUES ('41', '测试3', '4545', '0', '测试3测试3测试3');
INSERT INTO `n_user` VALUES ('42', 'user1', '4545', '0', 'user1user1user1user1');
INSERT INTO `n_user` VALUES ('43', 'user2', '4564568', '0', 'user2user2user2');
INSERT INTO `n_user` VALUES ('44', 'user3', '4574578', '0', 'user3user3user3');
INSERT INTO `n_user` VALUES ('45', 'user4', '1451564', '0', 'user4user4user4');
INSERT INTO `n_user` VALUES ('46', 'user55', '4561456', '0', 'user5user5user5');
INSERT INTO `n_user` VALUES ('47', 'user6', '578', '0', 'user6user6user6');
INSERT INTO `n_user` VALUES ('48', 'user7', '+56', '0', 'user6user6');
INSERT INTO `n_user` VALUES ('49', 'user8', '574', '0', 'user6user6');
INSERT INTO `n_user` VALUES ('50', 'user11', '94789678', '1', 'user11user11');
INSERT INTO `n_user` VALUES ('51', 'test', '1151512351235', '1', '超管\r\n');
INSERT INTO `n_user` VALUES ('52', 'user99', 'user99', '0', 'user99user99');
INSERT INTO `n_user` VALUES ('54', '我为什么辣么帅', '123321', '1', '我是真的帅啊');
INSERT INTO `n_user` VALUES ('55', '112456456', '1456456', '1', '阿瓦发我');
