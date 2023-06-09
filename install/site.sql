/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50728 (5.7.28)
 Source Host           : localhost:3306
 Source Schema         : site-us

 Target Server Type    : MySQL
 Target Server Version : 50728 (5.7.28)
 File Encoding         : 65001

 Date: 03/05/2023 13:15:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` (`id`, `username`, `password`) VALUES (3, 'admin', 'b1a5f73e35932ef9c7d437f7f898a5a3');
COMMIT;

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '拥有者id',
  `friend_uid` int(11) NOT NULL COMMENT '好友id',
  `remark` char(255) NOT NULL DEFAULT '' COMMENT '好友备注',
  `state` enum('chatting','hidden') NOT NULL DEFAULT 'hidden' COMMENT '状态 chatting:在会话列表中 hidden:不在会话列表中',
  `last_read_time` int(11) NOT NULL DEFAULT '0' COMMENT '上次读消息的时间',
  `last_mid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上一条消息的mid',
  `unread_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '未读消息数',
  PRIMARY KEY (`fid`),
  UNIQUE KEY `key` (`uid`,`friend_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------
BEGIN;
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (229, 29, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (230, 1, 29, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (231, 30, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (232, 1, 30, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (233, 30, 29, 'adminaa', 'chatting', 1595507764, 1380, 1);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (234, 29, 30, '', 'chatting', 1595764318, 1380, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (235, 36, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (236, 1, 36, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (237, 37, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (238, 1, 37, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (239, 40, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (240, 1, 40, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (241, 48, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (242, 1, 48, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (243, 49, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (244, 1, 49, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (245, 50, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (246, 1, 50, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (247, 48, 50, '', 'chatting', 1595584301, 1376, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (248, 50, 48, '', 'chatting', 1595588852, 1376, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (249, 53, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (250, 1, 53, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (251, 54, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (252, 1, 54, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (253, 55, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (254, 1, 55, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (255, 54, 55, '', 'chatting', 1595583711, 1378, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (256, 55, 54, '', 'chatting', 1595575037, 1378, 2);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (257, 58, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (258, 1, 58, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (259, 59, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (260, 1, 59, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (261, 60, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (262, 1, 60, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (263, 57, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (264, 1, 57, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (265, 61, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (266, 1, 61, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (267, 62, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (268, 1, 62, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (269, 63, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (270, 1, 63, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (271, 64, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (272, 1, 64, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (273, 65, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (274, 1, 65, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (275, 68, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (276, 1, 68, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (277, 68, 64, '', 'chatting', 1596100080, 1386, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (278, 64, 68, '', 'chatting', 1596099867, 1386, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (279, 70, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (280, 1, 70, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (281, 71, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (282, 1, 71, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (283, 70, 71, '', 'chatting', 1596172410, 1393, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (284, 71, 70, '17773589991', 'chatting', 1596172568, 1393, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (285, 72, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (286, 1, 72, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (287, 73, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (288, 1, 73, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (289, 75, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (290, 1, 75, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (291, 79, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (292, 1, 79, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (293, 84, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (294, 1, 84, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (295, 85, 1, '', 'hidden', 0, 0, 0);
INSERT INTO `friend` (`fid`, `uid`, `friend_uid`, `remark`, `state`, `last_read_time`, `last_mid`, `unread_count`) VALUES (296, 1, 85, '', 'hidden', 0, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for group_member
-- ----------------------------
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL COMMENT '群id',
  `uid` int(11) NOT NULL COMMENT '成员id',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `state` enum('chatting','hidden') NOT NULL DEFAULT 'hidden' COMMENT ' 状态 chatting:在会话列表中 hidden:不在会话列表中',
  `last_read_time` int(11) NOT NULL DEFAULT '0' COMMENT '上次读消息的时间',
  `forbidden` int(11) NOT NULL DEFAULT '0' COMMENT '禁言时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gid-uid` (`gid`,`uid`),
  KEY `uid-state` (`uid`,`state`),
  KEY `gid-state` (`gid`,`state`)
) ENGINE=MyISAM AUTO_INCREMENT=260 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_member
-- ----------------------------
BEGIN;
INSERT INTO `group_member` (`id`, `gid`, `uid`, `remark`, `state`, `last_read_time`, `forbidden`) VALUES (256, 74, 50, '', 'chatting', 1595610178, 0);
INSERT INTO `group_member` (`id`, `gid`, `uid`, `remark`, `state`, `last_read_time`, `forbidden`) VALUES (257, 74, 48, '', 'chatting', 1595578014, 0);
INSERT INTO `group_member` (`id`, `gid`, `uid`, `remark`, `state`, `last_read_time`, `forbidden`) VALUES (258, 75, 54, '', 'chatting', 1595584098, 0);
INSERT INTO `group_member` (`id`, `gid`, `uid`, `remark`, `state`, `last_read_time`, `forbidden`) VALUES (259, 75, 55, '', 'chatting', 1595575446, 0);
COMMIT;

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(60) NOT NULL COMMENT '群名称',
  `uid` int(11) NOT NULL COMMENT '拥有者id',
  `avatar` varchar(100) NOT NULL COMMENT '群头像',
  `state` enum('normal','disabled') DEFAULT 'normal' COMMENT 'normal：表示正常；disabled：表示解散',
  `timestamp` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`gid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groups
-- ----------------------------
BEGIN;
INSERT INTO `groups` (`gid`, `groupname`, `uid`, `avatar`, `state`, `timestamp`) VALUES (75, '交流群', 54, '/avatar.php?uid=54,55', 'normal', 1595575053);
COMMIT;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '消息id',
  `from` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '发起者uid/group_id',
  `to` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '接收者id，根据type不同，可能是用户uid，可能是群组id',
  `content` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '具体的消息数据',
  `type` enum('friend','group') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '消息类型，好友数据或群组数据',
  `sub_type` enum('message','notice') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'message' COMMENT '子类型',
  `timestamp` int(11) unsigned NOT NULL COMMENT '消息时间戳',
  PRIMARY KEY (`mid`),
  KEY `timestamp` (`timestamp`),
  KEY `from-type-subtype` (`from`,`type`,`sub_type`),
  KEY `to-type-subtype` (`to`,`type`,`sub_type`)
) ENGINE=MyISAM AUTO_INCREMENT=1394 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of message
-- ----------------------------
BEGIN;
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1347, '29', '30', '我通过了你的好友请求，我们来聊天吧', 'friend', 'message', 1595482681);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1348, '29', '30', '121212', 'friend', 'message', 1595482688);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1349, '29', '30', '2121', 'friend', 'message', 1595482691);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1350, '29', '30', '21212', 'friend', 'message', 1595482693);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1351, '29', '30', '121212', 'friend', 'message', 1595482696);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1352, '30', '29', '你好', 'friend', 'message', 1595498157);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1353, '30', '29', '此消息已撤回', 'friend', 'notice', 1595498249);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1354, '30', '29', '此消息已撤回', 'friend', 'notice', 1595498274);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1355, '30', '29', 'voice(//uub.zgshiyou.com/upload/files/202007/235f195f49ee50.wav)', 'friend', 'message', 1595498313);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1356, '1', '48', '欢迎登录,有事请直接发消息给我,,如果没有及时回复请加唯一QQ_26333 16644 您本次的访问IP : 183.22.253.225', 'friend', 'message', 0);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1357, '1', '48', '欢迎登录,有事请直接发消息给我,,如果没有及时回复请加唯一QQ_26333 16644 您本次的访问IP : 183.22.253.225', 'friend', 'message', 0);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1358, '1', '30', '欢迎登录,有事请直接发消息给我,,如果没有及时回复请加唯一QQ_26333 16644 您本次的访问IP : 183.22.253.225', 'friend', 'message', 0);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1359, '50', '48', '我通过了你的好友请求，我们来聊天吧', 'friend', 'message', 1595523540);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1360, '48', '50', '121212', 'friend', 'message', 1595523546);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1361, '50', '48', '[表情0]', 'friend', 'message', 1595523548);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1362, '48', '50', 'voice(//uub.zgshiyou.com/upload/files/202007/245f19c1dfbd28.wav)', 'friend', 'message', 1595523551);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1363, '50', '74', '[一桶金]({POPBASEURI}user/detail/50) 邀请 [GOODSSO]({POPBASEURI}user/detail/48) 加入了群聊', 'group', 'notice', 1595523600);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1364, '50', '74', '好给你', 'group', 'message', 1595523608);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1365, '48', '74', '[表情3]', 'group', 'message', 1595523624);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1366, '50', '74', '[表情0]', 'group', 'message', 1595523649);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1367, '48', '74', '![图片](//uub.zgshiyou.com/upload/images/202007/245f19c4281275.png)', 'group', 'message', 1595524136);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1368, '50', '74', 'uu', 'group', 'message', 1595524358);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1369, '50', '74', 'voice(//uub.zgshiyou.com/upload/files/202007/245f19c50eb230.wav)', 'group', 'message', 1595524366);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1370, '55', '54', '我通过了你的好友请求，我们来聊天吧', 'friend', 'message', 1595575037);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1371, '54', '75', '[zjs1989]({POPBASEURI}user/detail/54) 邀请 [aa1212]({POPBASEURI}user/detail/55) 加入了群聊', 'group', 'notice', 1595575053);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1372, '54', '75', '你们好', 'group', 'message', 1595575082);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1373, '48', '50', '3232', 'friend', 'message', 1595577302);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1374, '48', '50', '[表情1][表情2][表情3][表情24]', 'friend', 'message', 1595577309);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1375, '48', '74', 'ppppp', 'group', 'message', 1595577409);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1376, '48', '50', '*湿答答', 'friend', 'message', 1595577815);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1377, '54', '55', '114', 'friend', 'message', 1595581615);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1378, '54', '55', '在吗', 'friend', 'message', 1595583673);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1379, '50', '74', 'voice(//uub.zgshiyou.com/upload/files/202007/255f1b144032c0.wav)', 'group', 'message', 1595610176);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1380, '29', '30', '你好', 'friend', 'message', 1595764314);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1381, '64', '68', '我通过了你的好友请求，我们来聊天吧', 'friend', 'message', 1596099605);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1382, '64', '68', '你好', 'friend', 'message', 1596099688);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1383, '64', '68', '你好', 'friend', 'message', 1596099697);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1384, '68', '64', '1', 'friend', 'message', 1596099710);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1385, '68', '64', '1', 'friend', 'message', 1596099717);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1386, '64', '68', '1', 'friend', 'message', 1596099870);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1387, '71', '70', '我通过了你的好友请求，我们来聊天吧', 'friend', 'message', 1596172246);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1388, '71', '70', '121212', 'friend', 'message', 1596172260);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1389, '71', '70', 'qweqq ', 'friend', 'message', 1596172263);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1390, '71', '70', 'nihao', 'friend', 'message', 1596172268);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1391, '70', '71', 'good', 'friend', 'message', 1596172280);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1392, '71', '70', '[表情1]', 'friend', 'message', 1596172295);
INSERT INTO `message` (`mid`, `from`, `to`, `content`, `type`, `sub_type`, `timestamp`) VALUES (1393, '70', '71', '![图片](//uub.zgshiyou.com/upload/images/202007/315f23a832da62.png)', 'friend', 'message', 1596172338);
COMMIT;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL COMMENT '好友id 或 群主id',
  `type` enum('add_friend','join_group') NOT NULL COMMENT '消息类型加好友或者群组',
  `data` text COMMENT '相关数据',
  `operation` enum('not_operated','refuse','agree') NOT NULL DEFAULT 'not_operated' COMMENT '未操作,拒绝,同意',
  `timestamp` int(13) NOT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `to-from-type` (`to`,`from`,`type`),
  KEY `to-operation` (`to`,`operation`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
BEGIN;
INSERT INTO `notice` (`nid`, `from`, `to`, `type`, `data`, `operation`, `timestamp`) VALUES (144, 30, 29, 'add_friend', '{\"postscript\":\"\\u6211\\u662f123456\"}', 'agree', 1595482370);
INSERT INTO `notice` (`nid`, `from`, `to`, `type`, `data`, `operation`, `timestamp`) VALUES (145, 48, 50, 'add_friend', '{\"postscript\":\"\\u6211\\u662fGOODSSO\"}', 'agree', 1595523535);
INSERT INTO `notice` (`nid`, `from`, `to`, `type`, `data`, `operation`, `timestamp`) VALUES (146, 40, 30, 'add_friend', '{\"postscript\":\"\\u6211\\u662f13333333333\"}', 'not_operated', 1595560241);
INSERT INTO `notice` (`nid`, `from`, `to`, `type`, `data`, `operation`, `timestamp`) VALUES (147, 54, 55, 'add_friend', '{\"postscript\":\"\\u6211\\u662fzjs1989\"}', 'agree', 1595575023);
INSERT INTO `notice` (`nid`, `from`, `to`, `type`, `data`, `operation`, `timestamp`) VALUES (148, 68, 64, 'add_friend', '{\"postscript\":\"\\u6211\\u662fTTtaohua\"}', 'agree', 1596099575);
INSERT INTO `notice` (`nid`, `from`, `to`, `type`, `data`, `operation`, `timestamp`) VALUES (149, 70, 67, 'add_friend', '{\"postscript\":\"\\u6211\\u662f17773589999\"}', 'not_operated', 1596170703);
INSERT INTO `notice` (`nid`, `from`, `to`, `type`, `data`, `operation`, `timestamp`) VALUES (150, 70, 71, 'add_friend', '{\"postscript\":\"\\u6211\\u662f17773589999\"}', 'agree', 1596172242);
INSERT INTO `notice` (`nid`, `from`, `to`, `type`, `data`, `operation`, `timestamp`) VALUES (151, 84, 82, 'add_friend', '{\"postscript\":\"\\u6211\\u662f17773584219\"}', 'not_operated', 1596294234);
COMMIT;

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voice` enum('on','off') DEFAULT 'off' COMMENT '是否开启发送语音',
  `audio` enum('on','off') DEFAULT 'off' COMMENT '是否开启语音实时聊天',
  `video` enum('on','off') DEFAULT 'off' COMMENT '是否开启视频实时聊天',
  `prompt_tone` enum('on','off') DEFAULT 'on' COMMENT '是否开启提示音',
  `group_chat` enum('on','off') DEFAULT 'on' COMMENT '是否开启群聊',
  `private_chat` enum('on','off') DEFAULT 'on' COMMENT '是否开启私聊',
  `add_friend` enum('on','off') DEFAULT 'on' COMMENT '是否允许加好友',
  `create_group` enum('on','off') DEFAULT 'on' COMMENT '是否允许创建群组',
  `upload_file` enum('on','off') DEFAULT 'on' COMMENT '是否允许上传文件',
  `upload_img` enum('on','off') DEFAULT 'on' COMMENT '是否允许上传图片',
  `emoji` enum('on','off') DEFAULT 'on' COMMENT '是否允许发表情',
  `dirty_words` mediumtext COMMENT '过滤这些脏字，逗号分隔',
  `stranger_chat` enum('on','off') DEFAULT 'on' COMMENT '是否允许非好友聊天',
  `appkey` varchar(255) DEFAULT '' COMMENT '与pop-socket通讯的appkey',
  `ws_address` varchar(255) DEFAULT '' COMMENT '与pop-socket通讯的ws地址',
  `appsecret` varchar(255) DEFAULT '' COMMENT '与pop-socket通讯的appsecret',
  `api_address` varchar(255) DEFAULT '' COMMENT '与pop-socket通讯的api地址',
  `gf_url` varchar(255) NOT NULL COMMENT '模块URL',
  `gf_name` varchar(50) NOT NULL COMMENT '模块名称',
  `gf_img` text NOT NULL COMMENT '模块图片地址',
  `gf_text1` varchar(50) NOT NULL COMMENT '描述1',
  `gf_text2` varchar(50) NOT NULL COMMENT '描述2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setting
-- ----------------------------
BEGIN;
INSERT INTO `setting` (`id`, `voice`, `audio`, `video`, `prompt_tone`, `group_chat`, `private_chat`, `add_friend`, `create_group`, `upload_file`, `upload_img`, `emoji`, `dirty_words`, `stranger_chat`, `appkey`, `ws_address`, `appsecret`, `api_address`, `gf_url`, `gf_name`, `gf_img`, `gf_text1`, `gf_text2`) VALUES (3, 'on', 'off', 'off', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '妈\n', 'on', '5f88825c28c56763eb0d8b270646e4b1', 'wss://uub.zgshiyou.com:443', 'a2a906fe997867135886e5c4f62b03d2', 'http://127.0.0.1:2060', 'https://www.baidu.com/img/dong_66cae51456b9983a890610875e89183c.gif', '官方', 'https://uub.zgshiyou.com/icon.png', '系统通知', '企业认证证书');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录名',
  `nickname` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `avatar` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '头像',
  `sign` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '个性签名',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `state` enum('offline','online') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'offline' COMMENT 'offline: 离线 ,online : 在线',
  `logout_timestamp` int(11) NOT NULL COMMENT '离线时间',
  `timestamp` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `account_state` enum('normal','disabled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal' COMMENT '账户状态',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (85, '17773584200', '17773584200', '/static/avatar.jpg', '', '9dac764af5a368638bd37850e7d60938', 'offline', 0, 1596299507, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (84, '17773584219', '17773584219', '/static/avatar.jpg', '12121', '49f01268504efaef12dae66db05a0e49', 'offline', 0, 1596294207, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (83, '17773594218', '17773594218', '/static/avatar.jpg', '', 'b5ac9ac2d86142aab20e9e136d98076f', 'offline', 0, 1596294189, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (82, '17773584218', '17773584218', '/static/avatar.jpg', '', '0bb9fc760216938056c9150f244a9706', 'offline', 0, 1596294167, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (81, '17109376400', '大哥', '/static/avatar.jpg', '', 'dd42a36498cdf070547efe27e14462a2', 'offline', 0, 1596269385, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (80, '17109376401', 'TT', '/static/avatar.jpg', '', '3ff9d88e779c8d123205a2765b266c58', 'offline', 0, 1596269215, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (79, '13139185332', 'kuck', '/static/avatar.jpg', '', '53fedc8ccdd8b0ec8bf492e3e1c80246', 'offline', 0, 1596253774, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (78, '17773594212', '17773594212', '/static/avatar.jpg', '', 'df043175e96b17c0394f2fa67a6328c5', 'offline', 0, 1596182263, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (77, '13334344545', '13334344545', '/static/avatar.jpg', '', 'c8f0cee709476bb420ade164fb4623b0', 'offline', 0, 1596181160, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (76, '17778788787', '17778788787', '/static/avatar.jpg', '', '3436c2b1ffbf2a7d9360090408cff464', 'offline', 0, 1596181087, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (75, '17778988765', 'i i', '/static/avatar.jpg', 'nick', '197da8ced2b4f8a004ef4ca7bcb27508', 'offline', 0, 1596174832, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (74, '16865446785', '16865446785', '/static/avatar.jpg', '', 'cd57d8577de8d7f335a49dfdf6c09e87', 'offline', 0, 1596174799, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (73, '17735689658', '17735689658', '/static/avatar.jpg', '', '9d86763cbbf10f15531cb66484c3ab4c', 'offline', 0, 1596174652, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (72, '17773581111', '17773581111', '//uub.zgshiyou.com/upload/avatars/72/72/315f23a9929d20.png', '', 'b771d7eb730dd2bcc5e93c5a9c31dd02', 'offline', 0, 1596172664, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (71, '18878909877', '18878909877', '/static/avatar.jpg', '', '6b21f0314bb5c030430c1fb2e2da1235', 'offline', 0, 1596172157, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (70, '17773589999', 'lwk', '//uub.zgshiyou.com/upload/avatars/70/70/315f23a8ef206f.png', '1212', 'cffd45d818fbc40465434fc55dc5c0ca', 'offline', 0, 1596169094, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (68, '17109294263', 'TTtaohua', '/static/avatar.jpg', '', '21d49435bbcd054ee6dfdfdc8ef17426', 'offline', 0, 1596012810, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (69, '17773588888', '17773588888', '/static/avatar.jpg', '', '14c57bca984c6232188e7c0bb79855d1', 'offline', 0, 1596169059, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (62, '18276881118', '一桶金', '/static/avatar.jpg', '', 'b23f3e33f792ead276421a821faaf7a8', 'offline', 0, 1595860352, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (67, '17109294482', 'fhnnvvb', '/static/avatar.jpg', '', '0d560a1805f23665ce32fa93a609e74c', 'offline', 0, 1596012373, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (66, '17109294517', '天涯', '/static/avatar.jpg', '', '7f7347d26898cf48cba97c3cfe8e6b03', 'offline', 0, 1596011507, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (65, '13547416516', '摩托佬', '/static/avatar.jpg', '', 'd2bd3ad8caf78e7722448098c32645a9', 'offline', 0, 1595915588, 'normal');
INSERT INTO `user` (`uid`, `username`, `nickname`, `avatar`, `sign`, `password`, `state`, `logout_timestamp`, `timestamp`, `account_state`) VALUES (64, '13509357182', '25888', '/static/avatar.jpg', '', '0ece1ecf403cf9c1a0ea5a112d366289', 'offline', 0, 1595863435, 'normal');
COMMIT;

-- ----------------------------
-- Table structure for wp_allot
-- ----------------------------
DROP TABLE IF EXISTS `wp_allot`;
CREATE TABLE `wp_allot` (
  `id` mediumint(18) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(18) NOT NULL,
  `order_id` mediumint(18) NOT NULL,
  `time` varchar(18) DEFAULT NULL,
  `my_fee` varchar(18) DEFAULT NULL COMMENT '变化的资金',
  `is_win` tinyint(1) DEFAULT NULL COMMENT '是否盈利1盈利2亏损3无效',
  `nowmoney` varchar(255) DEFAULT NULL COMMENT '此刻余额',
  `type` tinyint(1) DEFAULT '1' COMMENT '1红利结算2手续费结算',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_allot
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_area
-- ----------------------------
DROP TABLE IF EXISTS `wp_area`;
CREATE TABLE `wp_area` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) NOT NULL DEFAULT '0',
  `code` char(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='地址表(省/市/县/区)';

-- ----------------------------
-- Records of wp_area
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_balance
-- ----------------------------
DROP TABLE IF EXISTS `wp_balance`;
CREATE TABLE `wp_balance` (
  `bpid` int(11) NOT NULL AUTO_INCREMENT,
  `bptype` varchar(10) DEFAULT NULL COMMENT '1充值 2加款 3正在充值 4取消 5提现 6减款',
  `bptime` int(20) DEFAULT NULL COMMENT '操作时间',
  `bpprice` decimal(16,2) DEFAULT NULL COMMENT '收支金额',
  `realprice` decimal(16,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '实际到账',
  `remarks` text COMMENT '备注',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `isverified` int(11) NOT NULL DEFAULT '0' COMMENT ' 0 待审核 1通过  2是拒绝 3是审核中',
  `cltime` int(20) DEFAULT NULL COMMENT '审核时间',
  `bankid` int(8) DEFAULT NULL COMMENT '银行卡id,对应wp_bankinfo',
  `bpbalance` varchar(28) DEFAULT NULL COMMENT '充值/提现后的余额',
  `btime` varchar(18) DEFAULT NULL COMMENT '提交时间',
  `reg_par` varchar(10) DEFAULT '0' COMMENT '手续费',
  `balance_sn` varchar(32) DEFAULT NULL COMMENT '订单编号',
  `pay_type` varchar(20) DEFAULT NULL COMMENT '支付方式',
  `truename` varchar(255) NOT NULL DEFAULT '' COMMENT '存款人',
  `isshow` int(1) NOT NULL DEFAULT '1' COMMENT '是否显示订单',
  PRIMARY KEY (`bpid`)
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_balance
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_bankcard
-- ----------------------------
DROP TABLE IF EXISTS `wp_bankcard`;
CREATE TABLE `wp_bankcard` (
  `id` mediumint(28) NOT NULL AUTO_INCREMENT,
  `bankno` mediumint(28) DEFAULT NULL COMMENT '总行代码',
  `accntnm` varchar(18) DEFAULT NULL COMMENT '持卡人姓名',
  `cityno` mediumint(18) DEFAULT NULL COMMENT '城市代码',
  `address` varchar(288) DEFAULT NULL COMMENT '地址',
  `uid` mediumint(18) DEFAULT NULL COMMENT '用户id',
  `accntno` varchar(38) DEFAULT NULL COMMENT '账号',
  `isdelete` tinyint(8) DEFAULT '0',
  `content` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(18) DEFAULT NULL,
  `scard` varchar(38) DEFAULT NULL COMMENT '身份证号码',
  `provinceid` mediumint(18) DEFAULT NULL COMMENT '省份id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_bankcard
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_bankinfo
-- ----------------------------
DROP TABLE IF EXISTS `wp_bankinfo`;
CREATE TABLE `wp_bankinfo` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '绑定',
  `name` varchar(20) NOT NULL COMMENT '币种',
  `address` varchar(255) NOT NULL COMMENT '省份',
  `qrcode` varchar(255) NOT NULL COMMENT '城市',
  `isdelete` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_bankinfo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_banks
-- ----------------------------
DROP TABLE IF EXISTS `wp_banks`;
CREATE TABLE `wp_banks` (
  `id` mediumint(18) NOT NULL AUTO_INCREMENT,
  `bank_no` int(18) DEFAULT NULL,
  `bank_nm` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_banks
-- ----------------------------
BEGIN;
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (1, 102, '中国工商银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (2, 103, '中国农业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (3, 104, '中国银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (4, 105, '中国建设银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (5, 301, '交通银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (6, 308, '招商银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (7, 309, '兴业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (8, 305, '中国民生银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (9, 306, '广东发展银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (10, 307, '平安银行股份有限');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (11, 310, '上海浦东发展银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (12, 304, '华夏银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (13, 313, '其他城市商业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (14, 1401, '邯郸市城市信用社');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (15, 314, '其他农村商业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (16, 315, '恒丰银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (17, 403, '中国邮政储蓄银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (18, 303, '中国光大银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (19, 302, '中信银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (20, 316, '浙商银行股份有限');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (21, 318, '渤海银行股份有限');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (22, 423, '杭州市商业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (23, 412, '温州市商业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (24, 424, '南京市商业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (25, 461, '长沙市商业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (26, 409, '济南市商业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (27, 422, '石家庄市商业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (28, 458, '西宁市商业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (29, 404, '烟台市商业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (30, 462, '潍坊市商业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (31, 515, '德州市商业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (32, 431, '临沂市商业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (33, 481, '威海商业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (34, 497, '莱芜市商业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (35, 450, '青岛市商业银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (36, 319, '徽商银行');
INSERT INTO `wp_banks` (`id`, `bank_no`, `bank_nm`) VALUES (37, 322, '上海农村商业银行');
COMMIT;

-- ----------------------------
-- Table structure for wp_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `wp_blacklist`;
CREATE TABLE `wp_blacklist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(32) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wp_blacklist
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_cardinfo
-- ----------------------------
DROP TABLE IF EXISTS `wp_cardinfo`;
CREATE TABLE `wp_cardinfo` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL COMMENT '用户id',
  `id_type` int(1) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL COMMENT '身份证名字',
  `card_id` varchar(28) DEFAULT NULL COMMENT '身份证号',
  `front_pic` varchar(100) DEFAULT NULL COMMENT '身份证照片',
  `reverse_pic` varchar(88) DEFAULT NULL,
  `ctime` varchar(18) DEFAULT NULL,
  `is_check` int(1) DEFAULT '0' COMMENT '初级认证 0未认证1待审核2审核成功',
  `up_check` int(1) DEFAULT '0' COMMENT '高级认证 0未认证1待审核2审核成功',
  `utime` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_cardinfo
-- ----------------------------
BEGIN;
INSERT INTO `wp_cardinfo` (`id`, `uid`, `id_type`, `name`, `card_id`, `front_pic`, `reverse_pic`, `ctime`, `is_check`, `up_check`, `utime`) VALUES (7, 1058738, 0, '李可可', '608839198906123345', '', '', '1681447920', 2, 0, NULL);
INSERT INTO `wp_cardinfo` (`id`, `uid`, `id_type`, `name`, `card_id`, `front_pic`, `reverse_pic`, `ctime`, `is_check`, `up_check`, `utime`) VALUES (8, 1058741, 0, '李思涵', '5167649762199', '', '', '1681472066', 2, 0, NULL);
INSERT INTO `wp_cardinfo` (`id`, `uid`, `id_type`, `name`, `card_id`, `front_pic`, `reverse_pic`, `ctime`, `is_check`, `up_check`, `utime`) VALUES (9, 1058742, 0, '李可可', '604534198906127783', '', '', '1681472173', 2, 0, NULL);
INSERT INTO `wp_cardinfo` (`id`, `uid`, `id_type`, `name`, `card_id`, `front_pic`, `reverse_pic`, `ctime`, `is_check`, `up_check`, `utime`) VALUES (10, 1058744, 0, '李思涵', '142106302151', '', '', '1681538381', 2, 0, NULL);
INSERT INTO `wp_cardinfo` (`id`, `uid`, `id_type`, `name`, `card_id`, `front_pic`, `reverse_pic`, `ctime`, `is_check`, `up_check`, `utime`) VALUES (11, 1058745, 0, '李思很', '11963600852058', '', '', '1681539692', 2, 0, NULL);
INSERT INTO `wp_cardinfo` (`id`, `uid`, `id_type`, `name`, `card_id`, `front_pic`, `reverse_pic`, `ctime`, `is_check`, `up_check`, `utime`) VALUES (12, 1058747, 0, 'Joanna', '525462752454416573', '/public/uploads/20230416/20230416015930808.jpeg', '/public/uploads/20230416/20230416015942277.jpeg', '1681624720', 2, 2, '1681624784');
INSERT INTO `wp_cardinfo` (`id`, `uid`, `id_type`, `name`, `card_id`, `front_pic`, `reverse_pic`, `ctime`, `is_check`, `up_check`, `utime`) VALUES (13, 1058746, 0, '李可可', '763648198906123356', '', '', '1681651619', 2, 0, NULL);
INSERT INTO `wp_cardinfo` (`id`, `uid`, `id_type`, `name`, `card_id`, `front_pic`, `reverse_pic`, `ctime`, `is_check`, `up_check`, `utime`) VALUES (14, 1058753, 0, '乔安娜', '440300 ABCD EF GH IJK L', '/public/uploads/20230417/20230417090558656.jpeg', '/public/uploads/20230417/20230417090603424.jpeg', '1681702489', 2, 2, '1681702565');
COMMIT;

-- ----------------------------
-- Table structure for wp_catproduct
-- ----------------------------
DROP TABLE IF EXISTS `wp_catproduct`;
CREATE TABLE `wp_catproduct` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `myat` double(11,1) DEFAULT '10.0' COMMENT '点差*',
  `myatjia` double(11,2) DEFAULT '0.00' COMMENT '点差+',
  `ask` double(11,2) DEFAULT '0.00' COMMENT '现在的价格',
  `high` double(11,2) DEFAULT '0.00' COMMENT '最高',
  `low` double(11,2) DEFAULT '0.00' COMMENT '最低',
  `open` double(11,2) DEFAULT '0.00' COMMENT '今开',
  `close` double(11,2) DEFAULT '0.00' COMMENT '昨收',
  `eidtime` int(20) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_catproduct
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_conf
-- ----------------------------
DROP TABLE IF EXISTS `wp_conf`;
CREATE TABLE `wp_conf` (
  `id` mediumint(2) NOT NULL AUTO_INCREMENT,
  `webname` varchar(88) NOT NULL DEFAULT '软盟微交易系统' COMMENT '站点名称',
  `onelive` double(3,2) DEFAULT NULL COMMENT '一级分销',
  `twolive` double(3,2) DEFAULT NULL COMMENT '二级分销',
  `threelive` double(3,2) DEFAULT NULL COMMENT '三级分销',
  `pagenum` int(8) NOT NULL DEFAULT '20' COMMENT '后台分页',
  `closswebcon` text COMMENT '关闭网站说明',
  `webisopen` int(1) DEFAULT '1' COMMENT '是否关闭网站',
  `daygiveint` int(20) NOT NULL DEFAULT '0' COMMENT '每日签到赠送积分',
  `inttomoney` varchar(20) NOT NULL DEFAULT '1:1' COMMENT '积分与现金比例',
  `ordermin` decimal(20,2) NOT NULL DEFAULT '20.00' COMMENT '微交易单笔交易金额最小值限制',
  `ordermax` decimal(20,2) NOT NULL DEFAULT '5000.00' COMMENT '微交易单笔交易金额最大值限制',
  `cashmin` decimal(20,2) NOT NULL DEFAULT '100.00' COMMENT '单笔提现限制最小值',
  `cashmax` decimal(20,2) NOT NULL DEFAULT '1000.00' COMMENT '单笔提现限制最大值',
  `rechargemin` decimal(20,2) NOT NULL DEFAULT '20.00' COMMENT '单笔充值限制最小值',
  `rechargemax` decimal(20,2) NOT NULL DEFAULT '1000.00' COMMENT '单笔充值限制最大值',
  `usermaxrecharge` decimal(20,2) NOT NULL DEFAULT '1000.00' COMMENT '用户当天最大提现申请金额',
  `festivalisrec` tinyint(2) NOT NULL DEFAULT '0' COMMENT '非工作日是否支持提现',
  `userallhold` decimal(20,2) NOT NULL DEFAULT '2000.00' COMMENT '用户最大持仓金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_conf
-- ----------------------------
BEGIN;
INSERT INTO `wp_conf` (`id`, `webname`, `onelive`, `twolive`, `threelive`, `pagenum`, `closswebcon`, `webisopen`, `daygiveint`, `inttomoney`, `ordermin`, `ordermax`, `cashmin`, `cashmax`, `rechargemin`, `rechargemax`, `usermaxrecharge`, `festivalisrec`, `userallhold`) VALUES (1, '软盟微交易系统V2.0演示版', 3.00, 2.00, 1.00, 20, '网站升级维护中……', 1, 100, '100:1', 20.00, 1000.00, 100.00, 1000.00, 20.00, 1000.00, 1000.00, 0, 2000.00);
COMMIT;

-- ----------------------------
-- Table structure for wp_config
-- ----------------------------
DROP TABLE IF EXISTS `wp_config`;
CREATE TABLE `wp_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置说明',
  `group` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组',
  `extra` varchar(255) NOT NULL DEFAULT '' COMMENT '配置值',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '配置说明',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `value` text COMMENT '配置值',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `type` (`type`),
  KEY `group` (`group`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_config
-- ----------------------------
BEGIN;
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (1, 'web_name', 1, '网站名称', 1, '', '', 1509027150, 1509027150, 1, 'Hantec', 1);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (2, 'is_close', 1, '网站是否关闭', 1, '0关闭，1开启', '', 1498580751, 1498580751, 0, '1', 9);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (3, 'is_reg', 1, '是否开放用户注册', 2, '1开启注册0关闭注册', '', 1498580857, 1498580857, 1, '1', 1);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (4, 'web_poundage', 1, '每笔平台收取手续费', 2, '如：2%，就填写2即可', '', 1498580887, 1498580887, 1, '0', 2);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (5, 'day_cash', 1, '每日最多提现次数', 2, '', '', 1499137504, 1499137504, 1, '3', 12);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (6, 'live_num', 1, '平台分销级数', 2, '', '', 1498580962, 1498580962, 0, '5', 4);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (7, 'pay_choose', 1, '投资金额', 2, '以 | 符号隔开', '', 1498581030, 1498581030, 1, '100|1000|5000|10000|20000|30000|50000', 5);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (8, 'order_min_price', 1, '单笔最低下单金额', 2, '', '', 1504767331, 1504767331, 1, '50', 6);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (9, 'order_max_price', 1, '单笔最高下单金额', 2, '', '', 1504767338, 1504767338, 1, '100000000', 7);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (10, 'reg_par', 1, '每笔提现手续费', 2, '输入百分比，如2%就输入2', '', 1499132509, 1499132509, 1, '0', 8);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (11, 'cash_min', 1, '最低提现金额', 2, '', '', 1499132653, 1499132653, 1, '10', 9);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (12, 'cash_max', 1, '单笔提现最大金额', 2, '', '', 1499132757, 1499132757, 1, '5000000', 10);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (13, 'cash_day_max', 1, '当日累计最高提现金额', 2, '', '', 1499138112, 1499138112, 1, '100000000', 11);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (14, 'is_cash', 1, '是否开启提现', 2, '1开启0关闭', '', 1499138225, 1499138225, 1, '1', 15);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (15, 'msm_SignName', 1, '短信签名', 1, '', '', 1499259617, 1499259617, 0, '中泰国际', 3);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (16, 'msm_appkey', 1, '短信key', 1, '', '', 1499259639, 1499259639, 0, '短信宝用户名', 4);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (17, 'msm_secretkey', 1, '短信秘钥', 1, '', '', 1499259659, 1499259659, 0, '短信宝密码', 6);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (18, 'msm_TCode', 1, '短信模板', 1, '', '', 1499259682, 1499259682, 0, '', 7);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (19, 'allot_point', 1, '代理红利分配比例', 2, '百分比，80%输入80。平仓后按照下单价格乘以此比例进行对冲 ', '', 1500304738, 1500304738, 0, '100', 16);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (20, 'yongjin_point', 1, '代理佣金分配比例', 2, '百分比，10%输入10。平仓后按照下单价格乘以此比例为手续费奖励给代理团队', '', 1500304746, 1500304746, 0, '10', 17);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (21, 'reg_type', 1, '注册是否需要激活', 2, '1不需激活2需要激活', '', 1502335131, 1502335131, 0, '1', 21);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (22, 'kong_end', 1, '订单受风控时间', 2, '输入10-15，则订单在平仓之前10-15秒开始受到风控影响。', '', 1514738027, 1514738027, 1, '8-12', 28);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (23, 'userpay_max', 1, '单笔最大入金', 2, '', '', 1504678164, 1504678164, 1, '10000000', 28);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (24, 'userpay_min', 1, '单笔最小入金', 2, '', '', 1504678193, 1504678193, 1, '50', 29);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (25, 'max_order_count', 1, '最大持仓单数', 2, '', '', 1504770831, 1504770831, 1, '100', 7);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (26, 'web_logo', 3, 'LOGO，PNG格式', 1, '', '', 1506779011, 1506779011, 1, '/public/uploads/20230413/20230413125509158.png', 10);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (27, 'sys_kefu', 1, '在线客服', 1, '', '', 1506779458, 1506779458, 1, 'https://hantec22.com/kefu/php/app.php?widget-mobile', 8);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (28, 'reg_push', 1, '充值金额', 2, '用|隔开', '', 1506779553, 1506779553, 1, '100|500|1000|5000|10000|12000', 30);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (29, 'can_kong', 1, '可单控用户', 3, '0009598,25,3,130', '', 1535033268, 1535033268, 1, '', 40);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (30, 'role_ks', 1, '开始提现时间', 2, '在指定的时间段可以提现 例：9:00', '', 1553020924, 1553020924, 1, '00:00', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (31, 'role_js', 1, '结束提现时间', 2, '在指定的时间段可以提现 例：22:00', '', 1553021039, 1553021039, 1, '23:59', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (33, 'sys_limit', 1, '超过警戒线是否平仓', 2, '1是0否', '', 0, 0, 0, '0', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (34, 'sys_luhn_card', 1, '银行卡号校验', 2, '1是0否', '', 0, 0, 0, '0', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (35, 'sys_app_url', 1, 'APP链接URL', 2, '', '', 0, 0, 0, '', 41);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (37, 'sys_truename', 1, '姓名注册开关', 2, '1开 0关', '', 0, 0, 0, '1', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (38, 'sys_mobile', 1, '手机注册开关', 2, '1开 0关', '', 0, 0, 0, '0', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (39, 'sys_invit', 1, '推荐码注册开关', 2, '1开 0关', '', 0, 0, 0, '0', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (40, 'sys_rates', 1, '利息宝开关', 2, '1开 0关', '', 0, 0, 0, '1', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (41, 'sys_jifen', 1, '积分开关', 2, '1开 0关', '', 0, 0, 0, '0', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (42, 'sys_pingcang', 1, '手动平仓开关', 2, '1开 0关', '', 0, 0, 1, '0', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (43, 'sys_reg_caijin', 1, '注册送彩金', 2, '放空或0，即不送', '', 0, 0, 1, '0', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (44, 'sys_log_caijin', 1, '每天首登送彩金', 2, '放空或0，即不送', '', 0, 0, 0, '0', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (45, 'sys_homepage', 1, '首页切换', 2, '1或者2', '', 0, 0, 0, '2', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (46, 'sys_kefu_name', 1, '客服名称', 3, '客服名', '', 0, 0, 1, '小美', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (47, 'sys_kefu_img', 3, '客服头像', 3, '客服头像', '', 0, 0, 1, '\\public\\jpg\\kefu_img.png', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (48, 'sys_greeting', 2, '客服问候', 3, '客服问候', '', 0, 0, 1, '您好，请问有什么需要帮助的~~', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (49, 'sys_buy_once', 1, '单一待结算订单', 2, '1开 0关 （仅能一笔待结算订单）', '', 0, 0, 0, '0', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (50, 'sys_hide_yingkui', 1, '隐藏止盈止损', 2, '1开 0关', '', 0, 0, 0, '1', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (51, 'sys_robot', 1, '机器人赢利', 2, '1显示 0隐藏', '', 0, 0, 0, '0', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (52, 'sys_yue_benjin', 1, '利息宝本金', 2, '1不冻结，可下注，不可提现 2本金冻结，不下注不提现', '', 0, 0, 0, '2', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (53, 'register_id', 1, '身份证注册开关', 2, '1开 0关', '', 0, 0, 0, '1', 0);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (54, 'whatsapp_kefu', 1, 'WhatsApp客服', 1, '', '', 1506779458, 1506779458, 1, 'https://wa.me/85290281194', 8);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (57, 'income_hidden', 1, '收益率开关', 2, '1开 0关', '', 1506779458, 1506779458, 1, '0', 8);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (58, 'iosapp', 4, 'IOS App', 1, '', '', 1506779011, 1506779011, 1, '', 10);
INSERT INTO `wp_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES (59, 'androidapp', 4, 'Android App', 1, '', '', 1506779011, 1506779011, 1, '', 10);
COMMIT;

-- ----------------------------
-- Table structure for wp_dt_productag0
-- ----------------------------
DROP TABLE IF EXISTS `wp_dt_productag0`;
CREATE TABLE `wp_dt_productag0` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0为波动数据，1为数据源',
  `pid` varchar(18) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL,
  `price` varchar(18) DEFAULT NULL COMMENT '现价',
  `open` varchar(18) DEFAULT NULL COMMENT '开盘',
  `close` varchar(18) DEFAULT NULL COMMENT '收盘',
  `high` varchar(18) DEFAULT NULL COMMENT '最高',
  `low` varchar(18) DEFAULT NULL COMMENT '最低',
  `diff` varchar(18) DEFAULT NULL COMMENT '振幅',
  `diffrate` varchar(18) DEFAULT NULL COMMENT '波幅',
  `updatetime` varchar(18) DEFAULT NULL,
  `rands` varchar(8) DEFAULT NULL,
  `point` varchar(8) DEFAULT NULL,
  `isdelete` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='白银数据源';

-- ----------------------------
-- Records of wp_dt_productag0
-- ----------------------------
BEGIN;
INSERT INTO `wp_dt_productag0` (`id`, `type`, `pid`, `name`, `price`, `open`, `close`, `high`, `low`, `diff`, `diffrate`, `updatetime`, `rands`, `point`, `isdelete`) VALUES (1, 1, '23', '白银', NULL, '3730.00', '3712.00', '3739.00', '3725.00', NULL, NULL, '1526978686', NULL, NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for wp_gallery
-- ----------------------------
DROP TABLE IF EXISTS `wp_gallery`;
CREATE TABLE `wp_gallery` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '标题',
  `img` varchar(64) NOT NULL DEFAULT '' COMMENT '图片',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1显示 0隐藏',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='轮播图';

-- ----------------------------
-- Records of wp_gallery
-- ----------------------------
BEGIN;
INSERT INTO `wp_gallery` (`id`, `title`, `img`, `state`, `sort`) VALUES (1, '1', '/public/uploads/20230320/d52b3b4d96c3ff3c5ba07db61ec5ae4e.jpg', 1, 1);
INSERT INTO `wp_gallery` (`id`, `title`, `img`, `state`, `sort`) VALUES (2, '2', '/public/uploads/20230320/13dbe414b56938ba1756077d168da765.jpg', 1, 2);
INSERT INTO `wp_gallery` (`id`, `title`, `img`, `state`, `sort`) VALUES (3, '3', '/public/uploads/20230320/66d195c08cb416209f4c32c7824d160c.jpg', 1, 3);
INSERT INTO `wp_gallery` (`id`, `title`, `img`, `state`, `sort`) VALUES (11, '1', '/public/uploads/20230328/66f55dabd04f173ca5e9a3234faa44aa.jpg', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for wp_integral
-- ----------------------------
DROP TABLE IF EXISTS `wp_integral`;
CREATE TABLE `wp_integral` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `type` int(1) DEFAULT '0' COMMENT '0购买1签到2注册',
  `amount` int(8) DEFAULT '0' COMMENT '数量',
  `time` int(18) DEFAULT NULL COMMENT '时间',
  `uid` mediumint(8) DEFAULT NULL COMMENT '用户id',
  `oid` mediumint(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_integral
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_invest
-- ----------------------------
DROP TABLE IF EXISTS `wp_invest`;
CREATE TABLE `wp_invest` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `days` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '期限 天',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1分红  2百分比',
  `rates` decimal(5,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '分红 或 利率',
  `min` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '起投金额',
  `max` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大可投',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1启用',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `proid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8 COMMENT='利息宝';

-- ----------------------------
-- Records of wp_invest
-- ----------------------------
BEGIN;
INSERT INTO `wp_invest` (`pid`, `days`, `type`, `rates`, `min`, `max`, `state`, `sort`, `proid`) VALUES (1002, 7, 2, 14.00, 100, 0, 1, 0, 56);
INSERT INTO `wp_invest` (`pid`, `days`, `type`, `rates`, `min`, `max`, `state`, `sort`, `proid`) VALUES (1003, 14, 2, 42.00, 1000, 0, 1, 0, 56);
INSERT INTO `wp_invest` (`pid`, `days`, `type`, `rates`, `min`, `max`, `state`, `sort`, `proid`) VALUES (1004, 30, 2, 120.00, 5000, 0, 1, 0, 56);
INSERT INTO `wp_invest` (`pid`, `days`, `type`, `rates`, `min`, `max`, `state`, `sort`, `proid`) VALUES (1005, 45, 2, 225.00, 10000, 0, 1, 0, 56);
INSERT INTO `wp_invest` (`pid`, `days`, `type`, `rates`, `min`, `max`, `state`, `sort`, `proid`) VALUES (1006, 60, 2, 360.00, 50000, 0, 1, 0, 56);
INSERT INTO `wp_invest` (`pid`, `days`, `type`, `rates`, `min`, `max`, `state`, `sort`, `proid`) VALUES (1007, 90, 2, 630.00, 100000, 0, 1, 0, 56);
COMMIT;

-- ----------------------------
-- Table structure for wp_klinedata
-- ----------------------------
DROP TABLE IF EXISTS `wp_klinedata`;
CREATE TABLE `wp_klinedata` (
  `id` mediumint(18) NOT NULL AUTO_INCREMENT,
  `ktime` varchar(18) NOT NULL COMMENT 'k线时间',
  `updata` varchar(18) DEFAULT NULL COMMENT '最高值',
  `downdata` varchar(18) DEFAULT NULL COMMENT '最低值',
  `pid` mediumint(18) NOT NULL COMMENT '产品id',
  `opendata` varchar(18) DEFAULT NULL COMMENT '开盘价格',
  `closdata` varchar(18) DEFAULT NULL COMMENT '关盘价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_klinedata
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_log
-- ----------------------------
DROP TABLE IF EXISTS `wp_log`;
CREATE TABLE `wp_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `loguser` varchar(50) DEFAULT NULL COMMENT '登录tel',
  `logname` varchar(50) DEFAULT NULL COMMENT '登录名',
  `otype` int(10) DEFAULT NULL COMMENT '用户类型',
  `geoip` varchar(15) DEFAULT NULL COMMENT 'IP地址',
  `type` int(1) DEFAULT NULL COMMENT '0登录失败 \r\n1登录成功\r\n2异常登录\r\n3修改登录密码\r\n4修改提现密码',
  `action` varchar(255) DEFAULT NULL COMMENT '操作',
  `useragent` varchar(255) DEFAULT NULL COMMENT 'user-agent',
  `content` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_at` int(10) DEFAULT NULL COMMENT '登录时间',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注',
  `online` int(10) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='日志';

-- ----------------------------
-- Records of wp_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_newsclass
-- ----------------------------
DROP TABLE IF EXISTS `wp_newsclass`;
CREATE TABLE `wp_newsclass` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fclass` varchar(255) DEFAULT NULL,
  `isdelete` int(1) DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_newsclass
-- ----------------------------
BEGIN;
INSERT INTO `wp_newsclass` (`fid`, `fclass`, `isdelete`) VALUES (1, '最新资讯', 0);
INSERT INTO `wp_newsclass` (`fid`, `fclass`, `isdelete`) VALUES (2, '财经要闻', 0);
INSERT INTO `wp_newsclass` (`fid`, `fclass`, `isdelete`) VALUES (3, '系统公告', 1);
INSERT INTO `wp_newsclass` (`fid`, `fclass`, `isdelete`) VALUES (4, '时政新闻', 1);
COMMIT;

-- ----------------------------
-- Table structure for wp_newsinfo
-- ----------------------------
DROP TABLE IF EXISTS `wp_newsinfo`;
CREATE TABLE `wp_newsinfo` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `ntitle` varchar(255) DEFAULT NULL COMMENT '标题',
  `ncontent` text COMMENT '内容',
  `ncover` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `fid` int(11) DEFAULT NULL COMMENT '新闻分类id',
  `ntime` int(20) DEFAULT NULL COMMENT '发布时间',
  `nauthor` varchar(18) DEFAULT NULL,
  `isdelete` int(1) DEFAULT '0',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_newsinfo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_notice
-- ----------------------------
DROP TABLE IF EXISTS `wp_notice`;
CREATE TABLE `wp_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1启用 0停用',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='公告';

-- ----------------------------
-- Records of wp_notice
-- ----------------------------
BEGIN;
INSERT INTO `wp_notice` (`id`, `title`, `content`, `state`, `time`) VALUES (6, 'About GFF Platform Update', 'Global Financial Futuers Exchange Abbreviation GFF. GFF is the largest financial exchange in the United Kingdom - the London International Financial Futures Exchange, a company(NYSE-LIFFE), as the world\'s most diversified market leader in the line of raw instruments, handling an average of 1 billion contracts each year, worth about 100 billion U.S. dollars, GFF buyers and sellers to provide a market, linking individuals, companies or institutions that need to manage risk or willing to profit by taking risks.GFF relies on its parent company NYSE-LIFFE\'s rich experience in international trading market management, advanced technology capabilities and a wide range of investment varieties, committed to better serve international customers, mainly operating energy futures trading and foreign exchange transactions, as the latest futures trading and foreign exchange trading custody model, GFF to achieve the decentralization of blockchain technology, customers have a better experience and financial management functions. The exchange covers futures and foreign exchange trading in energy, agricultural products, natural gas and metals, providing innovative management solutions for the market and offering the most complete range of trading products and financial value-added products for customers.The exchange staff is located all over the world, with a team of professional financial analysts, professional traders, and a strong data analysis team provides a scientific approach to each different phase of trading various futures products.Through our GFF electronic trading platform, global users are able to access the most extensive and liquid financial derivatives market in the world, no matter where they are.', 1, 1679070397);
COMMIT;

-- ----------------------------
-- Table structure for wp_opentime
-- ----------------------------
DROP TABLE IF EXISTS `wp_opentime`;
CREATE TABLE `wp_opentime` (
  `id` mediumint(18) NOT NULL AUTO_INCREMENT,
  `pid` mediumint(18) NOT NULL,
  `opentime` varchar(888) DEFAULT NULL COMMENT '开市时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_opentime
-- ----------------------------
BEGIN;
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (49, 56, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00--');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (51, 59, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (52, 14, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (53, 23, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (54, 57, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (55, 58, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (56, 15, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (57, 38, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (58, 11, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (59, 29, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (60, 31, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (61, 35, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (62, 41, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (63, 39, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (64, 12, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (65, 16, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (66, 45, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (67, 34, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (68, 36, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (69, 32, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (70, 42, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (71, 13, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (72, 17, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
INSERT INTO `wp_opentime` (`id`, `pid`, `opentime`) VALUES (73, 22, '00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00-00:00~24:00---');
COMMIT;

-- ----------------------------
-- Table structure for wp_order
-- ----------------------------
DROP TABLE IF EXISTS `wp_order`;
CREATE TABLE `wp_order` (
  `oid` int(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '下单用户uid',
  `pid` int(11) NOT NULL COMMENT '产品ID',
  `ostyle` int(12) NOT NULL DEFAULT '0' COMMENT '0涨 1跌，',
  `buytime` int(20) DEFAULT NULL COMMENT '建仓',
  `onumber` int(20) DEFAULT NULL COMMENT '手数',
  `selltime` int(20) DEFAULT '0' COMMENT '平仓',
  `ostaus` int(11) DEFAULT NULL COMMENT '0交易，1平仓',
  `buyprice` decimal(16,3) NOT NULL COMMENT '入仓价',
  `sellprice` decimal(16,3) NOT NULL DEFAULT '0.000' COMMENT '平仓价',
  `endprofit` varchar(20) DEFAULT '0' COMMENT '点数/分钟数',
  `endloss` varchar(11) DEFAULT '0' COMMENT '盈亏比例',
  `point` decimal(10,5) unsigned NOT NULL DEFAULT '0.00000' COMMENT '指数变化/盈亏1%',
  `fee` decimal(12,1) DEFAULT NULL COMMENT '总费用',
  `eid` decimal(12,2) NOT NULL COMMENT '1点位、2时间',
  `orderno` varchar(32) DEFAULT NULL COMMENT '订单编号',
  `ptitle` varchar(20) DEFAULT NULL COMMENT '商品名称',
  `commission` decimal(12,1) DEFAULT '0.0' COMMENT '佣金',
  `ploss` decimal(16,2) DEFAULT '0.00' COMMENT '盈亏',
  `display` int(11) DEFAULT '0' COMMENT '0,可查询，1不可查询',
  `isshow` int(1) DEFAULT '0',
  `is_win` tinyint(1) DEFAULT NULL COMMENT '是否盈利1盈利2亏损3无效',
  `kong_type` tinyint(1) DEFAULT '0' COMMENT '0不空1盈利2亏损',
  `sx_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '手续费',
  PRIMARY KEY (`oid`),
  KEY `uidd` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1375 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_order
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_order_log
-- ----------------------------
DROP TABLE IF EXISTS `wp_order_log`;
CREATE TABLE `wp_order_log` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) DEFAULT NULL,
  `oid` mediumint(8) DEFAULT NULL,
  `addprice` decimal(10,2) DEFAULT NULL,
  `addpoint` decimal(10,2) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `user_money` decimal(20,2) DEFAULT NULL,
  `is_delete` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1369 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_order_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_payment
-- ----------------------------
DROP TABLE IF EXISTS `wp_payment`;
CREATE TABLE `wp_payment` (
  `id` mediumint(18) NOT NULL AUTO_INCREMENT,
  `pay_name` varchar(288) NOT NULL COMMENT '支付名称',
  `is_use` tinyint(1) NOT NULL COMMENT '是否使用1使用0不使用',
  `pay_point` varchar(8) NOT NULL COMMENT '手续费',
  `pay_conf` text NOT NULL COMMENT '配置信息',
  `isdelete` tinyint(1) DEFAULT NULL COMMENT '是否删除1删除0未删除',
  `dotime` varchar(18) NOT NULL COMMENT '操作时间',
  `pay_order` int(8) DEFAULT NULL COMMENT '排序，数组越大越靠前显示',
  `thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '图片，二维码',
  `account_no` text NOT NULL COMMENT '账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_payment
-- ----------------------------
BEGIN;
INSERT INTO `wp_payment` (`id`, `pay_name`, `is_use`, `pay_point`, `pay_conf`, `isdelete`, `dotime`, `pay_order`, `thumb`, `account_no`) VALUES (1, '支付宝扫码', 0, '0', 'qd_alipay2', 1, '1624425930', 0, '', '');
INSERT INTO `wp_payment` (`id`, `pay_name`, `is_use`, `pay_point`, `pay_conf`, `isdelete`, `dotime`, `pay_order`, `thumb`, `account_no`) VALUES (2, '微信扫码', 0, '0', 'qd_wxpay2', 1, '1624094012', 0, '', '');
INSERT INTO `wp_payment` (`id`, `pay_name`, `is_use`, `pay_point`, `pay_conf`, `isdelete`, `dotime`, `pay_order`, `thumb`, `account_no`) VALUES (3, '支付宝', 0, '0', 'mcb_alipay', 1, '1624093718', 0, '', '');
INSERT INTO `wp_payment` (`id`, `pay_name`, `is_use`, `pay_point`, `pay_conf`, `isdelete`, `dotime`, `pay_order`, `thumb`, `account_no`) VALUES (4, '微信', 0, '0', 'mcb_wxpay', 1, '1513770276', 0, '', '');
INSERT INTO `wp_payment` (`id`, `pay_name`, `is_use`, `pay_point`, `pay_conf`, `isdelete`, `dotime`, `pay_order`, `thumb`, `account_no`) VALUES (5, '银行卡', 0, '0', 'mcb_bankpay', 0, '1681401421', NULL, '', '');
INSERT INTO `wp_payment` (`id`, `pay_name`, `is_use`, `pay_point`, `pay_conf`, `isdelete`, `dotime`, `pay_order`, `thumb`, `account_no`) VALUES (6, 'USDT充值', 1, '0', 'mcb_usdtpay', 0, '1681471493', NULL, '', 'trc20:TLVcMruzUJ4q9QWGK4RWXrKkUsQ8ssw3K5,erc20:0x57D8DCD8B32a10560D1F2E2767998c9E253a330A');
INSERT INTO `wp_payment` (`id`, `pay_name`, `is_use`, `pay_point`, `pay_conf`, `isdelete`, `dotime`, `pay_order`, `thumb`, `account_no`) VALUES (7, '在线充值', 0, '0', 'mcb_visapay', 0, '1681401444', NULL, '', '');
COMMIT;

-- ----------------------------
-- Table structure for wp_payorder
-- ----------------------------
DROP TABLE IF EXISTS `wp_payorder`;
CREATE TABLE `wp_payorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `uuid` int(11) NOT NULL DEFAULT '0' COMMENT '后台所属渠道商id',
  `money` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `cost` decimal(10,2) DEFAULT NULL COMMENT '手续费2%',
  `istype` int(11) DEFAULT NULL COMMENT '10001表示支付宝，20001表示微信',
  `orderid` varchar(255) DEFAULT NULL COMMENT '订单号',
  `goodsname` varchar(255) DEFAULT NULL COMMENT '订单名称',
  `pay_type` tinyint(3) NOT NULL DEFAULT '1' COMMENT '支付状态：1表示未支付，2表示已经支付',
  `opid` tinyint(3) DEFAULT NULL COMMENT '操作员id(1熊，2周，3董，4李)',
  `ctime` varchar(12) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='支付订单';

-- ----------------------------
-- Records of wp_payorder
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_price_log
-- ----------------------------
DROP TABLE IF EXISTS `wp_price_log`;
CREATE TABLE `wp_price_log` (
  `id` mediumint(18) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(18) DEFAULT NULL,
  `oid` mediumint(18) DEFAULT NULL COMMENT '订单id',
  `type` tinyint(1) DEFAULT NULL COMMENT '1增加2减少',
  `account` varchar(18) DEFAULT NULL COMMENT '变动金额',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(255) DEFAULT NULL COMMENT '说明',
  `time` varchar(18) DEFAULT NULL COMMENT '时间',
  `nowmoney` varchar(18) DEFAULT NULL COMMENT '此刻余额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3300 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_price_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_productclass
-- ----------------------------
DROP TABLE IF EXISTS `wp_productclass`;
CREATE TABLE `wp_productclass` (
  `pcid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `pcname` varchar(8) DEFAULT NULL,
  `isdelete` int(1) DEFAULT '0',
  PRIMARY KEY (`pcid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_productclass
-- ----------------------------
BEGIN;
INSERT INTO `wp_productclass` (`pcid`, `pcname`, `isdelete`) VALUES (1, '油', 1);
INSERT INTO `wp_productclass` (`pcid`, `pcname`, `isdelete`) VALUES (2, '金属', 1);
INSERT INTO `wp_productclass` (`pcid`, `pcname`, `isdelete`) VALUES (3, '啥的萨达是123', 1);
INSERT INTO `wp_productclass` (`pcid`, `pcname`, `isdelete`) VALUES (4, '指数', 1);
INSERT INTO `wp_productclass` (`pcid`, `pcname`, `isdelete`) VALUES (5, '外汇', 0);
COMMIT;

-- ----------------------------
-- Table structure for wp_productdata
-- ----------------------------
DROP TABLE IF EXISTS `wp_productdata`;
CREATE TABLE `wp_productdata` (
  `id` int(28) NOT NULL AUTO_INCREMENT,
  `pid` varchar(18) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Price` varchar(18) DEFAULT NULL,
  `Open` varchar(18) DEFAULT NULL,
  `Close` varchar(18) DEFAULT NULL,
  `High` varchar(18) DEFAULT NULL COMMENT '最高',
  `Low` varchar(18) DEFAULT NULL COMMENT '最低',
  `Diff` varchar(18) DEFAULT NULL COMMENT '振幅',
  `DiffRate` varchar(18) DEFAULT NULL COMMENT '波幅',
  `UpdateTime` varchar(18) DEFAULT NULL,
  `rands` varchar(8) DEFAULT NULL,
  `point` varchar(8) DEFAULT NULL,
  `isdelete` int(1) DEFAULT '0',
  `is_deal` tinyint(3) DEFAULT '0' COMMENT '是否交易中',
  `img` varchar(100) DEFAULT NULL COMMENT '图像',
  `procode` varchar(20) DEFAULT NULL COMMENT '请求代码',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序从小到大',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_productdata
-- ----------------------------
BEGIN;
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (9, '11', 'Brazil Index', '3.35848', '3.7199', '3.3579', '3.7783', '3.3049', '0', '0', '1682084360', '', '', 0, 1, NULL, NULL, 5);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (10, '12', 'USD CHF', '0.89071', '0.8925', '0.8951', '0.8953', '0.8906', '0', '0', '1682084360', '', '', 0, 1, '/public/guoqi/1.png', 'fx_saudusd', 11);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (11, '13', 'OMG', '7.84817', '7.8497', '7.8493', '7.8497', '7.8440', '0', '0', '1682084360', '', '', 0, 1, '/public/guoqi/5.png', 'fx_snzdusd', 32);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (12, '14', 'XAU', '1995.316', '2005.15', '2005.06', '2005.86', '1982.28', '0', '0', '1682084360', '', '', 0, 1, '/public/jpg/llg.png', 'hf_GC', 1);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (13, '15', 'Precious metal', '25.328', '25.302', '25.311', '25.370', '24.973', '0', '0', '1682084360', '', '', 0, 1, '/public/jpg/lls.png', NULL, 2);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (14, '16', 'USD KRW', '1.33298', '1.3319', '1.3330', '1.3361', '1.3315', '0', '0', '1682084360', '', '', 0, 1, '/public/guoqi/6.png', 'fx_seurusd', 12);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (15, '17', 'XLM', '30.58296', '30.5010', '30.5797', '30.6410', '30.5010', '0', '0', '1682084360', '', '', 0, 1, '/public/guoqi/7.png', 'fx_susdjpy', 33);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (20, '22', 'BTS', '4032.57', '4114.26', '0', '4114.26', '4031.91', '0', '0', '1682084360', '', '', 0, 1, '/public/pjpg/AU.png', 'sz399300', 35);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (21, '23', 'XAG', '25.3485', '25.2306', '25.2507', '25.3475', '24.9200', '0', '0', '1682084360', NULL, NULL, 0, 1, '/public/jpg/silver.png', NULL, 1);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (27, '29', 'France Index', '1459.29', '1467.750', '0', '1469.500', '1454.750', '0', '0', '1682084360', NULL, NULL, 0, 1, '/public/guoqi/2.png', NULL, 6);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (29, '31', 'Swiss Index', '1918.61', '1970.28', '1918.84', '1983.8', '1890.6', '0', '0', '1682084360', NULL, NULL, 0, 1, '/public/guoqi/4.png', NULL, 7);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (30, '32', 'DOGE', '1.24104', '1.2437', '1.2436', '1.2446', '1.2376', '0', '0', '1682084360', NULL, NULL, 0, 1, '/public/guoqi/7.png', NULL, 18);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (32, '34', 'USDJPY', '133.572', '134.220', '134.506', '134.280', '133.560', '0', '0', '1682084360', NULL, NULL, 0, 1, '/public/guoqi/5.png', NULL, 15);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (33, '35', 'UK Index', '22.23093', '22.9514', '22.2254', '23.1648', '21.5869', '0', '0', '1682084360', NULL, NULL, 0, 1, '/public/jpg/GU.png', NULL, 8);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (34, '36', 'EURUSD', '1.09895', '1.0967', '1.0962', '1.0993', '1.0937', '0', '0', '1682084360', NULL, NULL, 0, 1, '/public/jpg/EU.png', NULL, 17);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (36, '38', 'US Index', '28249.70983', '28800.15', '28251.38', '28877', '27815', '0', '0', '1682084360', NULL, NULL, 0, 1, '/public/guoqi/3.png', NULL, 4);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (37, '39', 'Japan Index', '78.19005', '77.13', '77.37', '78.39', '76.72', '0', '0', '1682084360', NULL, NULL, 0, 1, NULL, NULL, 10);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (39, '41', 'Korea Index', '2.24392', '2.192', '2.249', '2.274', '2.164', '0', '0', '1682084360', NULL, NULL, 0, 1, NULL, NULL, 9);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (40, '42', 'LTC', '89.818', '91.3', '89.84', '91.82', '87.18', '0', '0', '1682084360', NULL, NULL, 0, 1, NULL, NULL, 30);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (43, '45', 'USD Thai Baht', '0.6253', '0.6173', '0.6173', '0.6179', '0.6124', '0', '0', '1682084360', NULL, NULL, 0, 1, NULL, NULL, 13);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (52, '56', 'OilFut', '78.188', '77.13', '77.37', '78.39', '76.72', '0', '0', '1682084360', NULL, NULL, 0, 1, NULL, NULL, 0);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (53, '57', 'SPIF', '101.66994', '101.7800', '101.8576', '102.0700', '101.6200', '0', '0', '1682084360', NULL, NULL, 0, 1, NULL, NULL, 1);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (54, '58', 'NYMEXCNG', '2.244', '2.192', '2.249', '2.274', '2.164', '0', '0', '1682084370', NULL, NULL, 0, 1, NULL, NULL, 1);
INSERT INTO `wp_productdata` (`id`, `pid`, `Name`, `Price`, `Open`, `Close`, `High`, `Low`, `Diff`, `DiffRate`, `UpdateTime`, `rands`, `point`, `isdelete`, `is_deal`, `img`, `procode`, `sort`) VALUES (55, '59', 'USDX', '101.650', '101.780', '101.858', '102.070', '101.620', '0', '0', '1682084370', NULL, NULL, 0, 1, NULL, NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for wp_productinfo
-- ----------------------------
DROP TABLE IF EXISTS `wp_productinfo`;
CREATE TABLE `wp_productinfo` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `ptitle` varchar(255) DEFAULT NULL COMMENT '标题',
  `cid` int(11) DEFAULT NULL COMMENT '产品分类id',
  `otid` int(11) DEFAULT NULL COMMENT '开市方案id',
  `isopen` int(1) DEFAULT '1',
  `point` varchar(255) DEFAULT NULL COMMENT '点数',
  `point_low` varchar(18) DEFAULT '0.00000' COMMENT '波动最小值',
  `point_top` varchar(18) DEFAULT '0.00000' COMMENT '波动最大值',
  `rands` varchar(18) DEFAULT '0.00000' COMMENT '随机波动范围',
  `content` text COMMENT '备注',
  `time` int(11) DEFAULT NULL COMMENT '添加时间',
  `isdelete` int(1) DEFAULT NULL COMMENT '0',
  `procode` varchar(18) DEFAULT NULL COMMENT ' 产品代码',
  `add_data` double(18,4) DEFAULT '0.0000' COMMENT '除汇率以外的算法',
  `protime` varchar(10) DEFAULT NULL COMMENT '时间玩法间隔',
  `propoint` varchar(10) DEFAULT NULL COMMENT '点位玩法间隔',
  `proscale` varchar(20) NOT NULL DEFAULT '0' COMMENT '波动/盈亏1%',
  `proorder` int(18) DEFAULT '0' COMMENT '排序',
  `img` varchar(128) DEFAULT NULL COMMENT '各种货币的图片',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_productinfo
-- ----------------------------
BEGIN;
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (11, 'Brazil Index', 5, 1, 1, '98', '0.00001', '0.00015', '0.008', '', 1681538667, 0, 'ant', 0.0000, '3,5,10,15', '', '0.008', 6, '/public/uploads/20230301/pic_11.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (12, 'USD CHF', 5, 1, 0, '79789', '0.00001', '0.00005', '0.008', '', 1681539026, 0, '29', 0.0000, '3,5,10,15', '', '0.008', 10, '/public/uploads/20230301/pic_12.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (13, 'OMG', 5, 0, 0, '232', '0.00001', '0.00005', '0.008', '', 1681538802, 0, '30', 0.0000, '3,5,10,15', '', '0.008', 10, '/public/uploads/20230301/pic_13.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (14, 'XAU', 5, 0, 1, '6978', '0.001', '0.010', '0.008', '', 1681538589, 0, 'llg', 0.0000, '3,5,10,15', '', '0.008', 4, '/public/uploads/20230203/pic_14.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (15, 'Precious metal', 5, 0, 1, '1234', '0.001', '0.01', '0.004', '', 1681538631, 0, 'lls', 0.0000, '3,5,10,15', NULL, '0.008', 0, '/public/uploads/20230321/pic_15.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (16, 'USD KRW', 5, 0, 0, '37696', '0.00001', '0.00005', '0.00003', '', 1681539002, 0, '33', 0.0000, '3,5,10,15', '', '0.00002', 10, '/public/uploads/20230301/pic_16.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (17, 'XLM', 5, 0, 0, '6876', '0.00001', '0.00005', '0.00003', '', 1681538793, 0, '34', 0.0000, '3,5,10,15', '', '0.00002', 10, '/public/uploads/20230301/pic_17.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (22, 'BTS', 5, 0, 1, '546', '', '', '0.15', '', 1681538784, 0, '43', 0.0000, '3,5,10,15', '', '0.008', 0, '/public/uploads/20230301/pic_22.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (23, 'XAG', 5, NULL, 1, '434', '0.001', '0.010', '0.005', '', 1681538599, 0, '13', 0.0000, '3,5,10,15', NULL, '0.008', 0, '/public/uploads/20230203/pic_23.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (29, 'France Index', 5, 1, 1, NULL, '0.01', '0.10', '0.08', '', 1681622611, 0, '96', 0.0000, '3,5,10,15', NULL, '0.008', 0, '/public/uploads/20230301/pic_29.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (31, 'Swiss Index', 5, 1, 1, NULL, '0.03', '0.18', '0.04', '', 1681538685, 0, 'eth', 0.0000, '3,5,10,15', NULL, '0.008', 0, '/public/uploads/20230301/pic_31.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (32, 'DOGE', 5, 1, 1, NULL, '0.00001', '0.00020', '0.00010', '', 1681538946, 0, '26', 0.0000, '3,5,10,15', NULL, '0.008', 0, '/public/uploads/20230301/pic_32.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (34, 'USDJPY', 5, 1, 1, NULL, '0.005', '0.015', '0.005', '', 1681538965, 0, '31', 0.0000, '3,5,10,15', NULL, '0.008', 0, '/public/uploads/20230301/pic_34.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (35, 'UK Index', 5, 1, 1, NULL, '0.00001', '0.00015', '0.00012', '', 1681538735, 0, 'sol', 0.0000, '3,5,10,15', NULL, '0.008', 0, '/public/uploads/20230301/pic_35.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (36, 'EURUSD', 5, NULL, 1, NULL, '0.00001', '0.00005', '0.00003', '', 1681538955, 0, '24', 0.0000, '3,5,10,15', NULL, '0.008', 0, '/public/uploads/20230301/pic_36.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (38, 'US Index', 5, NULL, 1, NULL, '0.00001', '0.00015', '0.008', '', 1681538652, 0, 'btc', 0.0000, '3,5,10,15', NULL, '0.008', 0, '/public/uploads/20230301/pic_38.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (39, 'Japan Index', 5, NULL, 1, NULL, '0.00001', '0.00015', '0.008', '', 1681538773, 0, '116', 0.0000, '3,5,10,15', NULL, '0.035', 0, '/public/uploads/20230301/pic_39.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (41, 'Korea Index', 5, NULL, 1, NULL, '0.00001', '0.00015', '0.008', '', 1681538747, 0, '15', 0.0000, '3,5,10,15', NULL, '0.008', 0, '/public/uploads/20230301/pic_41.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (42, 'LTC', 5, NULL, 1, NULL, '0.001', '0.015', '0.008', '', 1681538930, 0, 'ltc', 0.0000, '3,5,10,15', NULL, '0.008', 0, '/public/uploads/20230301/pic_42.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (45, 'USD Thai Baht', 5, NULL, 1, NULL, '0.001', '0.015', '0.008', '', 1681538990, 0, '27', 0.0000, '3,5,10,15', NULL, '0.008', 0, '/public/uploads/20230301/pic_45.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (56, 'OilFut', 5, NULL, 1, NULL, '0.001', '0.009', '0.0008', '国际原油', 1681563227, 0, '14', 0.0000, '3,5,10,15', NULL, '0.1', 0, '/public/uploads/20230320/pic_56.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (57, 'SPIF', 5, NULL, 1, NULL, '0.000009', '0.00015', '0.0008', '美指期货', 1681538612, 0, '11', 0.0000, '3,5,10,15', NULL, '0.1', 0, '/public/uploads/20230321/pic_57.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (58, 'NYMEXCNG', 5, NULL, 1, NULL, '0.00009', '0.00015', '0.0008', '', 1681539068, 0, '15', 0.0000, '3,5,10,15', NULL, '0.1', 0, '/public/uploads/20230321/pic_58.png');
INSERT INTO `wp_productinfo` (`pid`, `ptitle`, `cid`, `otid`, `isopen`, `point`, `point_low`, `point_top`, `rands`, `content`, `time`, `isdelete`, `procode`, `add_data`, `protime`, `propoint`, `proscale`, `proorder`, `img`) VALUES (59, 'USDX', 5, NULL, 1, NULL, '0.0009', '0.0015', '0.0008', '', 1681538575, 0, '22', 0.0000, '3,5,10,15', NULL, '0.1', 0, '/public/uploads/20230321/pic_59.png');
COMMIT;

-- ----------------------------
-- Table structure for wp_productprice
-- ----------------------------
DROP TABLE IF EXISTS `wp_productprice`;
CREATE TABLE `wp_productprice` (
  `id` mediumint(18) NOT NULL AUTO_INCREMENT,
  `order_min_price` varchar(50) DEFAULT NULL COMMENT '最小下注额',
  `order_max_price` varchar(50) DEFAULT NULL COMMENT '最大下注额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wp_productprice
-- ----------------------------
BEGIN;
INSERT INTO `wp_productprice` (`id`, `order_min_price`, `order_max_price`) VALUES (1, '20', '50000');
INSERT INTO `wp_productprice` (`id`, `order_min_price`, `order_max_price`) VALUES (2, '100', '100000');
INSERT INTO `wp_productprice` (`id`, `order_min_price`, `order_max_price`) VALUES (3, '20', '1000000');
INSERT INTO `wp_productprice` (`id`, `order_min_price`, `order_max_price`) VALUES (4, '10000', '10000000');
COMMIT;

-- ----------------------------
-- Table structure for wp_refundlog
-- ----------------------------
DROP TABLE IF EXISTS `wp_refundlog`;
CREATE TABLE `wp_refundlog` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `mch_appid` varchar(28) DEFAULT NULL,
  `mchid` varchar(18) DEFAULT NULL,
  `device_info` varchar(288) DEFAULT NULL,
  `nonce_str` varchar(28) DEFAULT NULL,
  `payment_no` varchar(18) DEFAULT NULL,
  `partner_trade_no` varchar(18) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `result_code` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_refundlog
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_reward
-- ----------------------------
DROP TABLE IF EXISTS `wp_reward`;
CREATE TABLE `wp_reward` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `reg_money` decimal(5,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邀请注册奖励',
  `invest_percent` decimal(5,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邀请投注奖励%',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='邀请奖励';

-- ----------------------------
-- Records of wp_reward
-- ----------------------------
BEGIN;
INSERT INTO `wp_reward` (`id`, `reg_money`, `invest_percent`) VALUES (1, 0.00, 0.00);
COMMIT;

-- ----------------------------
-- Table structure for wp_risk
-- ----------------------------
DROP TABLE IF EXISTS `wp_risk`;
CREATE TABLE `wp_risk` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `to_win` text CHARACTER SET utf8 COMMENT '指定客户赢利',
  `to_loss` text CHARACTER SET utf8 COMMENT '指定客户亏损',
  `chance` text CHARACTER SET utf8 COMMENT '风控概率',
  `min_price` varchar(18) CHARACTER SET utf8 DEFAULT NULL COMMENT '最小风控值',
  `min_yk` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '止盈止损下限',
  `max_yk` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '止盈止损上限',
  `min_yk1` varchar(8) NOT NULL DEFAULT '0' COMMENT '时间1止盈',
  `max_yk1` varchar(8) NOT NULL DEFAULT '0' COMMENT '时间1止损',
  `min_yk2` varchar(8) NOT NULL DEFAULT '0' COMMENT '时间2止盈',
  `max_yk2` varchar(8) NOT NULL DEFAULT '0' COMMENT '时间2止损',
  `min_yk3` varchar(8) NOT NULL DEFAULT '0' COMMENT '时间3止盈',
  `max_yk3` varchar(8) NOT NULL DEFAULT '0' COMMENT '时间3止损',
  `min_yk4` varchar(8) NOT NULL DEFAULT '0' COMMENT '时间4止盈',
  `max_yk4` varchar(8) NOT NULL DEFAULT '0' COMMENT '时间4止损',
  `min_gain` decimal(4,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '盈亏下限',
  `max_gain` decimal(4,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '盈亏上限',
  `special_yk` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '强制指定的用户100%输赢',
  `percent` decimal(5,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '盈亏',
  `min_lost` decimal(4,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '未指定，盈亏下限',
  `max_lost` decimal(4,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '未指定，盈亏上限',
  `time1` varchar(5) NOT NULL DEFAULT '' COMMENT '起始时间',
  `time2` varchar(5) NOT NULL DEFAULT '' COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wp_risk
-- ----------------------------
BEGIN;
INSERT INTO `wp_risk` (`id`, `to_win`, `to_loss`, `chance`, `min_price`, `min_yk`, `max_yk`, `min_yk1`, `max_yk1`, `min_yk2`, `max_yk2`, `min_yk3`, `max_yk3`, `min_yk4`, `max_yk4`, `min_gain`, `max_gain`, `special_yk`, `percent`, `min_lost`, `max_lost`, `time1`, `time2`) VALUES (8, '1058655|105865|1058674|1058676|1058677|1058679|1058678|1058681|1058680|1058675|1058685|1058686|1058687|1058668|1058688|1058690|1058676|1058691|1058689|1058692|1058709|1058685|1058685|1058689|', '1058676|1058702|1058712||1058697|1058728|1058727 |1058726|1058723|1058712 |1058711|', '10-1000:80|1000-2000:50|2000-5000:30|5000-10000:20|10000-100000000:10', '10', 20, 50, '10,20', '5,20', '10,20', '5,20', '10,20', '5,20', '10,20', '5,20', 3.0, 8.0, 0, 0.00, 5.0, 8.0, '00:00', '00:01');
COMMIT;

-- ----------------------------
-- Table structure for wp_slide
-- ----------------------------
DROP TABLE IF EXISTS `wp_slide`;
CREATE TABLE `wp_slide` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `img` varchar(64) NOT NULL DEFAULT '' COMMENT '幻灯片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='幻灯片';

-- ----------------------------
-- Records of wp_slide
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_sysbank
-- ----------------------------
DROP TABLE IF EXISTS `wp_sysbank`;
CREATE TABLE `wp_sysbank` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) NOT NULL DEFAULT '' COMMENT '银行名称',
  `bank_addr` varchar(255) NOT NULL DEFAULT '' COMMENT '开户网点',
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '户名',
  `card_no` varchar(255) NOT NULL DEFAULT '' COMMENT '账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='入款银行';

-- ----------------------------
-- Records of wp_sysbank
-- ----------------------------
BEGIN;
INSERT INTO `wp_sysbank` (`id`, `bank_name`, `bank_addr`, `username`, `card_no`) VALUES (1, 'Please contact online customer service to obtain, thank you', 'Please contact online customer service to obtain, thank you', 'Please contact online customer service to obtain, thank you', 'Please contact online customer service to obtain, thank you');
COMMIT;

-- ----------------------------
-- Table structure for wp_userbind
-- ----------------------------
DROP TABLE IF EXISTS `wp_userbind`;
CREATE TABLE `wp_userbind` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `btime` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wp_userbind
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_usercode
-- ----------------------------
DROP TABLE IF EXISTS `wp_usercode`;
CREATE TABLE `wp_usercode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) NOT NULL COMMENT '所属用户id',
  `code` varchar(6) NOT NULL COMMENT '邀请码',
  `type` varchar(11) NOT NULL COMMENT '渠道ID',
  `time` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_usercode
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `wp_userinfo`;
CREATE TABLE `wp_userinfo` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '',
  `upwd` varchar(32) NOT NULL,
  `epwd` varchar(32) DEFAULT NULL COMMENT '交易密码',
  `utel` varchar(32) DEFAULT NULL,
  `utime` int(20) DEFAULT NULL COMMENT '注册时间',
  `agenttype` int(20) DEFAULT '0' COMMENT '0普通客户，1申请经纪人中，2经纪人',
  `otype` int(11) NOT NULL DEFAULT '0' COMMENT '0普通会员，2会员单位，1经纪人,3超级管理员,1和2已废弃，101为代理商',
  `ustatus` int(11) NOT NULL DEFAULT '0' COMMENT '0正常状态，1冻结状态，',
  `oid` varchar(28) DEFAULT NULL COMMENT '上线字段',
  `address` varchar(30) DEFAULT NULL COMMENT '地址',
  `portrait` varchar(100) DEFAULT NULL COMMENT '头像',
  `lastlog` int(20) DEFAULT NULL COMMENT '最后登录时间',
  `lastip` varchar(15) NOT NULL DEFAULT '' COMMENT 'IP',
  `managername` varchar(20) DEFAULT NULL COMMENT '上线用户名',
  `comname` varchar(20) DEFAULT NULL COMMENT '公司名称',
  `comqua` varchar(50) DEFAULT NULL COMMENT '公司资质',
  `rebate` varchar(11) DEFAULT NULL COMMENT '返点',
  `feerebate` varchar(11) DEFAULT '0' COMMENT '手续费返点',
  `usertype` int(11) DEFAULT '0' COMMENT '0不是微信用户。1是微信用户',
  `wxtype` int(11) DEFAULT '0' COMMENT '1表示微信还没注册，0微信已注册成会员。',
  `openid` varchar(50) DEFAULT NULL COMMENT '存微信用户的id',
  `nickname` varchar(32) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `icard` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `logintime` varchar(18) DEFAULT NULL,
  `usermoney` decimal(18,2) DEFAULT '0.00',
  `freeze` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '冻结',
  `userpoint` int(10) DEFAULT '100' COMMENT '积分',
  `minprice` decimal(10,2) DEFAULT NULL,
  `sessionkey` varchar(32) DEFAULT '',
  `domain` varchar(18) NOT NULL DEFAULT '' COMMENT '注册域名',
  `online` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1在线 0不在线',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `log_caijin` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1送彩金 0不送',
  `scard` varchar(32) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `utel` (`utel`)
) ENGINE=InnoDB AUTO_INCREMENT=1058761 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_userinfo
-- ----------------------------
BEGIN;
INSERT INTO `wp_userinfo` (`uid`, `username`, `upwd`, `epwd`, `utel`, `utime`, `agenttype`, `otype`, `ustatus`, `oid`, `address`, `portrait`, `lastlog`, `lastip`, `managername`, `comname`, `comqua`, `rebate`, `feerebate`, `usertype`, `wxtype`, `openid`, `nickname`, `icard`, `logintime`, `usermoney`, `freeze`, `userpoint`, `minprice`, `sessionkey`, `domain`, `online`, `update_time`, `log_caijin`, `scard`) VALUES (1058647, 'admin', '123456', '', '157692725', 1480061674, 2, 3, 0, '', '', '', 1682084796, '210.0.158.206', '', '', '', '', '0', 0, 0, '', 'admin', '', '1526017454', 0.00, 0.00, 100, 0.00, '', '', 0, 0, 1, NULL);
INSERT INTO `wp_userinfo` (`uid`, `username`, `upwd`, `epwd`, `utel`, `utime`, `agenttype`, `otype`, `ustatus`, `oid`, `address`, `portrait`, `lastlog`, `lastip`, `managername`, `comname`, `comqua`, `rebate`, `feerebate`, `usertype`, `wxtype`, `openid`, `nickname`, `icard`, `logintime`, `usermoney`, `freeze`, `userpoint`, `minprice`, `sessionkey`, `domain`, `online`, `update_time`, `log_caijin`, `scard`) VALUES (1058649, 'ggabram', '123456', '123456', 'ggabram', 1674905731, 0, 0, 0, '1058650', NULL, NULL, 1681959585, '84.17.45.179', NULL, NULL, NULL, NULL, '0', 0, 0, NULL, '高高', '211410199608131876', '1681959585', 9103.84, 17200.00, 100, NULL, '73340', '', 0, 1681959585, 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for wp_userinvest
-- ----------------------------
DROP TABLE IF EXISTS `wp_userinvest`;
CREATE TABLE `wp_userinvest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'UID',
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '客户名',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '标ID',
  `days` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '天数',
  `money` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '本金',
  `interest` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '分红 或 利息',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1待分红 2已分红',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投资时间',
  `totime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回款时间',
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COMMENT='客户投资';

-- ----------------------------
-- Records of wp_userinvest
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_webconfig
-- ----------------------------
DROP TABLE IF EXISTS `wp_webconfig`;
CREATE TABLE `wp_webconfig` (
  `id` int(11) NOT NULL,
  `isopen` int(11) NOT NULL DEFAULT '0' COMMENT '0开启，1关闭',
  `webname` varchar(20) DEFAULT NULL COMMENT '网站名称',
  `onelevel` varchar(20) NOT NULL,
  `twolevel` varchar(20) NOT NULL,
  `Pscale` varchar(20) NOT NULL,
  `begintime` int(20) DEFAULT NULL COMMENT '休市开始时间',
  `endtime` int(20) DEFAULT NULL COMMENT '休市结束时间',
  `notice` varchar(100) DEFAULT NULL COMMENT '公告',
  `isnotice` int(10) DEFAULT '0' COMMENT '0开启，1关闭',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_webconfig
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_wechat
-- ----------------------------
DROP TABLE IF EXISTS `wp_wechat`;
CREATE TABLE `wp_wechat` (
  `wcid` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) DEFAULT NULL COMMENT 'AppID(应用ID)',
  `appsecret` varchar(255) DEFAULT NULL COMMENT 'AppSecret(应用密钥)',
  `wxname` varchar(255) DEFAULT NULL COMMENT '公众号名称',
  `wxlogin` varchar(255) DEFAULT NULL COMMENT '微信原始账号',
  `wxurl` varchar(255) DEFAULT NULL COMMENT 'url服务器地址',
  `token` varchar(255) DEFAULT NULL COMMENT '令牌',
  `encodingaeskey` varchar(255) DEFAULT NULL COMMENT '消息加密解密秘钥',
  `parterid` int(11) DEFAULT NULL COMMENT '微信商户账号',
  `parterkey` varchar(255) DEFAULT NULL COMMENT '32位密码',
  PRIMARY KEY (`wcid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_wechat
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wp_words
-- ----------------------------
DROP TABLE IF EXISTS `wp_words`;
CREATE TABLE `wp_words` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` varchar(200) NOT NULL DEFAULT '' COMMENT '常用语',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1正常 -1不正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服常用语';

-- ----------------------------
-- Records of wp_words
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- View structure for wp_view_proinfo
-- ----------------------------
DROP VIEW IF EXISTS `wp_view_proinfo`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY INVOKER VIEW `wp_view_proinfo` AS select `wp_productdata`.`is_deal` AS `is_deal`,`wp_productdata`.`Low` AS `Low`,`wp_productdata`.`High` AS `High`,`wp_productdata`.`Close` AS `Close`,`wp_productdata`.`Open` AS `Open`,`wp_productdata`.`Price` AS `Price`,`wp_productdata`.`isdelete` AS `isdelete`,`wp_productdata`.`Name` AS `Name`,`wp_productdata`.`pid` AS `pid`,`wp_productdata`.`sort` AS `sort`,`wp_productdata`.`UpdateTime` AS `UpdateTime`,`wp_productinfo`.`img` AS `img`,`wp_productdata`.`Diff` AS `Diff`,`wp_productdata`.`DiffRate` AS `DiffRate` from (`wp_productinfo` join `wp_productdata`) where (`wp_productinfo`.`pid` = `wp_productdata`.`pid`);

SET FOREIGN_KEY_CHECKS = 1;
