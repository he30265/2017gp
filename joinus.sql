/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : joinus

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2017-04-12 17:46:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ADMIN
-- ----------------------------
DROP TABLE IF EXISTS `ADMIN`;
CREATE TABLE `ADMIN` (
  `ADMIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ADMIN_NAME` varchar(255) DEFAULT NULL,
  `ADMIN_PWD` varchar(255) DEFAULT NULL,
  `ADMIN_PHONE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ADMIN_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ADMIN
-- ----------------------------

-- ----------------------------
-- Table structure for CALLTOSEE
-- ----------------------------
DROP TABLE IF EXISTS `CALLTOSEE`;
CREATE TABLE `CALLTOSEE` (
  `CALL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CALLUSER_ID` int(11) DEFAULT NULL,
  `CALLCOMPANY_NAME` varchar(255) DEFAULT NULL,
  `CALLUSER_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CALL_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of CALLTOSEE
-- ----------------------------

-- ----------------------------
-- Table structure for COLLECTS
-- ----------------------------
DROP TABLE IF EXISTS `COLLECTS`;
CREATE TABLE `COLLECTS` (
  `COLLECT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COLLECT_NAME` varchar(255) DEFAULT NULL,
  `CNEED_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`COLLECT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of COLLECTS
-- ----------------------------
INSERT INTO `COLLECTS` VALUES ('1', '王宏宇', '16');
INSERT INTO `COLLECTS` VALUES ('4', '王宏宇', '16');
INSERT INTO `COLLECTS` VALUES ('5', '王宏宇', '16');
INSERT INTO `COLLECTS` VALUES ('6', '王宏宇', '16');
INSERT INTO `COLLECTS` VALUES ('7', '王宏宇', '18');
INSERT INTO `COLLECTS` VALUES ('8', '王宏宇', '18');
INSERT INTO `COLLECTS` VALUES ('9', '王宏宇', '16');
INSERT INTO `COLLECTS` VALUES ('10', '王宏宇', '18');
INSERT INTO `COLLECTS` VALUES ('11', 'lzh', '16');

-- ----------------------------
-- Table structure for COMPANY
-- ----------------------------
DROP TABLE IF EXISTS `COMPANY`;
CREATE TABLE `COMPANY` (
  `company_id` int(255) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `company_phone` varchar(255) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `company_pwd` varchar(255) DEFAULT NULL,
  `company_emailcode` varchar(255) DEFAULT NULL,
  `company_url` varchar(255) DEFAULT NULL,
  `company_city` varchar(255) DEFAULT NULL,
  `company_lingyu` varchar(255) DEFAULT NULL,
  `company_jieduan` varchar(255) DEFAULT NULL,
  `company_guimo` varchar(255) DEFAULT NULL,
  `need_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`company_id`),
  KEY `FK_q1me0ev81i04teuo4e8jccy1s` (`need_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of COMPANY
-- ----------------------------
INSERT INTO `COMPANY` VALUES ('5', '阿西吧有限公司', '13611066094', 'deathguidao@163.com', '521000', '9597', 'www.baidu.com', '北京', '移动广告', '天使轮', '少于15人', '16');
INSERT INTO `COMPANY` VALUES ('6', '哈公司', '18104860443', 'deathguidao@163.com', '521000', '5795', 'www.sougou.com', '山东', '招聘', '上市公司', '15-50人', '18');
INSERT INTO `COMPANY` VALUES ('7', '234', '234', 'deathguidao@163.com', '123', '5403', 'www.hahha.com', 'beijing', '社交', 'A轮', '50-150人', null);

-- ----------------------------
-- Table structure for COMPANYNEED
-- ----------------------------
DROP TABLE IF EXISTS `COMPANYNEED`;
CREATE TABLE `COMPANYNEED` (
  `need_id` int(11) NOT NULL AUTO_INCREMENT,
  `need_name` varchar(255) DEFAULT NULL,
  `need_city` varchar(255) DEFAULT NULL,
  `need_money` varchar(255) DEFAULT NULL,
  `need_jingyan` varchar(255) DEFAULT NULL,
  `need_xueli` varchar(255) DEFAULT NULL,
  `need_youhuo` varchar(255) DEFAULT NULL,
  `need_miaoshu` varchar(255) DEFAULT NULL,
  `need_xingzhi` varchar(255) DEFAULT NULL,
  `need_time` datetime DEFAULT NULL,
  `need_address` varchar(255) DEFAULT NULL,
  `need_comname` varchar(11) DEFAULT NULL,
  `CNEED_ID` int(11) DEFAULT NULL,
  `idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`need_id`),
  KEY `zhihegong` (`need_comname`),
  KEY `FK_h7ikeylp6taahbpvb1fwbbyp4` (`CNEED_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of COMPANYNEED
-- ----------------------------
INSERT INTO `COMPANYNEED` VALUES ('16', '啥职位呢', '广州', '50k以上', '3-5年', '博士', '哈哈', '职位描述', '兼职', '2017-04-06 18:48:22', 'asd', '阿西吧有限公司', null, null);
INSERT INTO `COMPANYNEED` VALUES ('18', 'web前端开发', '山东', '2k-5k', '应届毕业生', '大专', '诱惑？', '1.哈\r\n2.哈哈\r\n3.哈哈哈', '实习', '2017-04-05 00:00:00', '山东省滨州市', '哈公司', null, null);

-- ----------------------------
-- Table structure for PASSRESUME
-- ----------------------------
DROP TABLE IF EXISTS `PASSRESUME`;
CREATE TABLE `PASSRESUME` (
  `PASSRESUME_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PASS_ID` int(11) DEFAULT NULL,
  `PASSUSER_ID` int(11) DEFAULT NULL,
  `PASSUSER_NAME` int(11) DEFAULT NULL,
  `PASSCOMPANY_ID` int(11) DEFAULT NULL,
  `PASSCOMPANY_NAME` varchar(255) DEFAULT NULL,
  `PASSORNO` int(11) DEFAULT NULL,
  PRIMARY KEY (`PASSRESUME_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of PASSRESUME
-- ----------------------------

-- ----------------------------
-- Table structure for RESUME
-- ----------------------------
DROP TABLE IF EXISTS `RESUME`;
CREATE TABLE `RESUME` (
  `resume_id` int(11) NOT NULL AUTO_INCREMENT,
  `resume_image` varchar(255) DEFAULT NULL,
  `resume_address` varchar(255) DEFAULT NULL,
  `resume_offeryear` varchar(255) DEFAULT NULL,
  `resume_sex` varchar(255) DEFAULT NULL,
  `resume_status` varchar(255) DEFAULT NULL,
  `resume_email` varchar(255) DEFAULT NULL,
  `resume_money` varchar(255) DEFAULT NULL,
  `resume_wantadd` varchar(255) DEFAULT NULL,
  `resume_zhineng` varchar(255) DEFAULT NULL,
  `resume_type` varchar(255) DEFAULT NULL,
  `resume_finshtime` varchar(255) DEFAULT NULL,
  `resume_schoolname` varchar(255) DEFAULT NULL,
  `resume_zhuanye` varchar(255) DEFAULT NULL,
  `resume_xueli` varchar(255) DEFAULT NULL,
  `resume_lianjie` varchar(255) DEFAULT NULL,
  `resume_miaoshu` varchar(255) DEFAULT NULL,
  `resume_myself` varchar(255) DEFAULT NULL,
  `resume_oktime` date DEFAULT NULL,
  `resume_alook` varchar(255) DEFAULT NULL,
  `resume_name` varchar(255) DEFAULT NULL,
  `resume_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resume_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of RESUME
-- ----------------------------
INSERT INTO `RESUME` VALUES ('1', 'image/1.jpg', '北京', '10', '男', '正在找工作', 'deathguidao@163.com', '', '上海', '', '兼职', '2013', '内师大呗', '你猜', '硕士', 'http://www.sougou.com', '我的都够', '哈哈哈还好', '2017-03-28', '1', '王宏宇', '13611066094');
INSERT INTO `RESUME` VALUES ('2', 'image/2.jpg', 'WuHai', '10', '男', '正在找工作', '1169216507@qq.com', '1000', '深圳', 'web后台', '全职', '2017年', '内蒙古师范大学', '网络编程', '本科', 'www.baidu.com', '我的百度', '良好良好良好良好良好良好良好良好良好良好良好良好良好良好', '2017-04-01', '1', 'lzh', '18247331810');
INSERT INTO `RESUME` VALUES ('3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for USER
-- ----------------------------
DROP TABLE IF EXISTS `USER`;
CREATE TABLE `USER` (
  `user_id` int(255) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_pwd` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `resume_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_j5je3y9f21bjfkrp99xmiyx7o` (`resume_id`),
  CONSTRAINT `FK_j5je3y9f21bjfkrp99xmiyx7o` FOREIGN KEY (`resume_id`) REFERENCES `RESUME` (`resume_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of USER
-- ----------------------------
INSERT INTO `USER` VALUES ('5', '王宏宇', '1', '13611066094', '1');
INSERT INTO `USER` VALUES ('8', 'lzh', 'lzh', '1822247331810', '2');
INSERT INTO `USER` VALUES ('14', 'lzh2', 'lzh2', '13234710615', '3');
SET FOREIGN_KEY_CHECKS=1;
