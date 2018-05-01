/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : mxonline

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-18 14:25:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 用户信息', '7', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 用户信息', '7', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 用户信息', '7', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 邮箱验证码', '8', 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 邮箱验证码', '8', 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 邮箱验证码', '8', 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 轮播图', '9', 'add_banner');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 轮播图', '9', 'change_banner');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 轮播图', '9', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 课程', '10', 'add_course');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 课程', '10', 'change_course');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 课程', '10', 'delete_course');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 章节', '11', 'add_lesson');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 章节', '11', 'change_lesson');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 章节', '11', 'delete_lesson');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 视频', '12', 'add_video');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 视频', '12', 'change_video');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 视频', '12', 'delete_video');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 课程资源', '13', 'add_courseresource');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 课程资源', '13', 'change_courseresource');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 课程资源', '13', 'delete_courseresource');
INSERT INTO `auth_permission` VALUES ('40', 'Can add 城市', '14', 'add_citydict');
INSERT INTO `auth_permission` VALUES ('41', 'Can change 城市', '14', 'change_citydict');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete 城市', '14', 'delete_citydict');
INSERT INTO `auth_permission` VALUES ('43', 'Can add 课程机构', '15', 'add_courseorg');
INSERT INTO `auth_permission` VALUES ('44', 'Can change 课程机构', '15', 'change_courseorg');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete 课程机构', '15', 'delete_courseorg');
INSERT INTO `auth_permission` VALUES ('46', 'Can add 教师', '16', 'add_teacher');
INSERT INTO `auth_permission` VALUES ('47', 'Can change 教师', '16', 'change_teacher');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete 教师', '16', 'delete_teacher');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 用户咨询', '17', 'add_userask');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 用户咨询', '17', 'change_userask');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 用户咨询', '17', 'delete_userask');
INSERT INTO `auth_permission` VALUES ('52', 'Can add 课程评论', '18', 'add_coursecomments');
INSERT INTO `auth_permission` VALUES ('53', 'Can change 课程评论', '18', 'change_coursecomments');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete 课程评论', '18', 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES ('55', 'Can add 用户收藏', '19', 'add_userfavorite');
INSERT INTO `auth_permission` VALUES ('56', 'Can change 用户收藏', '19', 'change_userfavorite');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete 用户收藏', '19', 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES ('58', 'Can add 用户消息', '20', 'add_usermessage');
INSERT INTO `auth_permission` VALUES ('59', 'Can change 用户消息', '20', 'change_usermessage');
INSERT INTO `auth_permission` VALUES ('60', 'Can delete 用户消息', '20', 'delete_usermessage');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 用户课程', '21', 'add_usercourse');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 用户课程', '21', 'change_usercourse');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 用户课程', '21', 'delete_usercourse');
INSERT INTO `auth_permission` VALUES ('64', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('65', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('66', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('67', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 课程', '10', 'view_course');
INSERT INTO `auth_permission` VALUES ('69', 'Can view 课程资源', '13', 'view_courseresource');
INSERT INTO `auth_permission` VALUES ('70', 'Can view 章节', '11', 'view_lesson');
INSERT INTO `auth_permission` VALUES ('71', 'Can view 视频', '12', 'view_video');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 课程评论', '18', 'view_coursecomments');
INSERT INTO `auth_permission` VALUES ('73', 'Can view 用户咨询', '17', 'view_userask');
INSERT INTO `auth_permission` VALUES ('74', 'Can view 用户课程', '21', 'view_usercourse');
INSERT INTO `auth_permission` VALUES ('75', 'Can view 用户收藏', '19', 'view_userfavorite');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 用户消息', '20', 'view_usermessage');
INSERT INTO `auth_permission` VALUES ('77', 'Can view 城市', '14', 'view_citydict');
INSERT INTO `auth_permission` VALUES ('78', 'Can view 课程机构', '15', 'view_courseorg');
INSERT INTO `auth_permission` VALUES ('79', 'Can view 教师', '16', 'view_teacher');
INSERT INTO `auth_permission` VALUES ('80', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('81', 'Can view 轮播图', '9', 'view_banner');
INSERT INTO `auth_permission` VALUES ('82', 'Can view 邮箱验证码', '8', 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('83', 'Can view 用户信息', '7', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('84', 'Can add Bookmark', '22', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('85', 'Can change Bookmark', '22', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('86', 'Can delete Bookmark', '22', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('87', 'Can add User Setting', '23', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('88', 'Can change User Setting', '23', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('89', 'Can delete User Setting', '23', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('90', 'Can add User Widget', '24', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('91', 'Can change User Widget', '24', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('92', 'Can delete User Widget', '24', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('93', 'Can view Bookmark', '22', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('94', 'Can view User Setting', '23', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('95', 'Can view User Widget', '24', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('96', 'Can add log entry', '25', 'add_log');
INSERT INTO `auth_permission` VALUES ('97', 'Can change log entry', '25', 'change_log');
INSERT INTO `auth_permission` VALUES ('98', 'Can delete log entry', '25', 'delete_log');
INSERT INTO `auth_permission` VALUES ('99', 'Can view log entry', '25', 'view_log');
INSERT INTO `auth_permission` VALUES ('100', 'Can add captcha store', '26', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('101', 'Can change captcha store', '26', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('102', 'Can delete captcha store', '26', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('103', 'Can view captcha store', '26', 'view_captchastore');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('63', 'ZQUX', 'zqux', '6e27975aa12c8926fcf1937c413882a17229095e', '2018-04-14 15:13:52.880000');
INSERT INTO `captcha_captchastore` VALUES ('64', 'NFGK', 'nfgk', '27bd301ad644b5a16cb76c4c27e2324b83c8bdff', '2018-04-14 15:16:49.243000');
INSERT INTO `captcha_captchastore` VALUES ('65', 'ZAUK', 'zauk', 'cdfc288d796ee4995400d60bcb8ea50a85344b77', '2018-04-14 15:17:15.399000');

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(2) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11),
  `category` varchar(20) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `teacher_id` int(11),
  `teacher_tell` varchar(300) NOT NULL,
  `youneed_know` varchar(300) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_11456c5a` (`course_org_id`),
  KEY `courses_course_d9614d40` (`teacher_id`),
  CONSTRAINT `courses_cour_course_org_id_4d2c4aab_fk_organization_courseorg_id` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`),
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
INSERT INTO `courses_course` VALUES ('3', '数据结构', '一门计算机专业课程', '数据结构是计算机存储、组织数据的方式。数据结构是指相互之间存在一种或多种特定关系的数据元素的集合。通常情况下，精心选择的数据结构可以带来更高的运行或者存储效率。数据结构往往同高效的检索算法和索引技术有关。', 'zj', '200', '41', '11', 'courses/2018/04/sjjg.jpg', '41', '2018-04-09 15:07:00.000000', '3', '基础课程', '数据结构', '3', '算法、数据结构', 'C语言', '1');
INSERT INTO `courses_course` VALUES ('4', '操作系统', 'OS', '操作系统（Operating System，简称OS）是管理和控制计算机硬件与软件资源的计算机程序，是直接运行在“裸机”上的最基本的系统软件，任何其他软件都必须在操作系统的支持下才能运行。', 'zj', '300', '16', '0', 'courses/2018/04/czxt.jpg', '77', '2018-04-09 18:42:00.000000', '7', '基础课程', 'OS', '5', '操作系统各项基本功能', '计算机基本结构', '1');
INSERT INTO `courses_course` VALUES ('5', '软件工程', '必修课', '软件工程是一门研究用工程化方法构建和维护有效的、实用的和高质量的软件的学科。它涉及程序设计语言、数据库、软件开发工具、系统平台、标准、设计模式等方面。\r\n       在现代社会中，软件应用于多个方面。典型的软件有电子邮件、嵌入式系统、人机界面、办公套件、操作系统、编译器、数据库、游戏等。同时，各个行业几乎都有计算机软件的应用，如工业、农业、银行、航空、政府部门等。这些应用促进了经济和社会的发展，也提高了工作效率和生活效率 。', 'zj', '230', '50', '31', 'courses/2018/04/rjgc.jpg', '53', '2018-04-10 09:21:00.000000', '6', '基础课程', '', null, '', '', '0');
INSERT INTO `courses_course` VALUES ('6', 'python1', 'python1', 'python操作', 'cj', '150', '20', '20', 'courses/2018/04/python1.jpg', '69', '2018-04-10 09:28:00.000000', '3', '专业技能', '入门', null, '', '', '0');
INSERT INTO `courses_course` VALUES ('7', 'python2', 'python2', 'python入门', 'zj', '130', '30', '30', 'courses/2018/04/python2.jpg', '66', '2018-04-10 09:29:00.000000', '3', '专业技能2', '入门', null, '', '', '1');
INSERT INTO `courses_course` VALUES ('8', 'python3', 'python3', 'python3', 'cj', '165', '30', '30', 'courses/2018/04/python3.jpg', '300', '2018-04-10 09:29:00.000000', '3', '专业技能3', '', null, '', '', '0');
INSERT INTO `courses_course` VALUES ('9', 'python4', 'python4', 'python4', 'gj', '140', '43', '40', 'courses/2018/04/python4.jpg', '37', '2018-04-10 09:30:00.000000', '3', '专业技能4', '', null, '', '', '0');
INSERT INTO `courses_course` VALUES ('10', 'python5', 'python5', 'python5文件处理', 'zj', '160', '50', '50', 'courses/2018/04/python5.jpg', '500', '2018-04-10 09:30:00.000000', '3', '专业技能5', '', null, '', '', '0');
INSERT INTO `courses_course` VALUES ('11', 'python6', 'python6', 'python6进阶', 'gj', '180', '60', '60', 'courses/2018/04/python6.jpg', '60', '2018-04-10 09:31:00.000000', '3', '专业技能6', '', null, '', '', '0');
INSERT INTO `courses_course` VALUES ('12', 'python7', 'python7', 'python7装饰器', 'zj', '170', '72', '70', 'courses/2018/04/python7.jpg', '104', '2018-04-10 09:32:00.000000', '3', '专业技能7', '', null, '', '', '0');
INSERT INTO `courses_course` VALUES ('13', '高等数学', '指相对于初等数学而言，数学的对象及方法较为繁杂的一部分。', '通常认为，高等数学是由微积分学，较深入的代数学、几何学以及它们之间的交叉内容所形成的一门基础学科。\r\n主要内容包括：极限、微积分、空间解析几何与线性代数、级数、常微分方程。\r\n工科、理科研究生考试的基础科目。', 'gj', '700', '1', '1', 'courses/2018/04/gdsx.jpg', '1', '2018-04-14 15:46:00.000000', '13', '专业课', '专业基础', '7', '极限、微积分、空间解析几何与线性代数、级数、常微分方程。', '初等数学基础', '0');

-- ----------------------------
-- Table structure for courses_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_course_id_5eba1332_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
INSERT INTO `courses_courseresource` VALUES ('1', '数据结构第一章', 'course/resource/2018/04/第1章数据结构C语言版.ppt', '2018-04-10 17:26:00.000000', '3');
INSERT INTO `courses_courseresource` VALUES ('2', '数据结构第二章', 'course/resource/2018/04/第2章线性表.ppt', '2018-04-10 17:28:00.000000', '3');
INSERT INTO `courses_courseresource` VALUES ('3', '课件', 'course/resource/2018/04/2015考研数学二真题.doc', '2018-04-14 15:50:00.000000', '13');

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
INSERT INTO `courses_lesson` VALUES ('1', '第一章', '2018-04-10 16:39:00.000000', '3');
INSERT INTO `courses_lesson` VALUES ('2', '第二章', '2018-04-10 16:39:00.000000', '3');
INSERT INTO `courses_lesson` VALUES ('3', '第三章', '2018-04-10 16:39:00.000000', '3');
INSERT INTO `courses_lesson` VALUES ('4', '第一章', '2018-04-14 15:49:00.000000', '13');

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
INSERT INTO `courses_video` VALUES ('1', '1.1 helloworld', '2018-04-10 16:44:00.000000', '1', 'https://zmooc.oss-cn-qingdao.aliyuncs.com/12-2.mp4', '33');
INSERT INTO `courses_video` VALUES ('2', '1.2 基本概念', '2018-04-10 16:45:00.000000', '1', 'https://www.baidu.com', '30');
INSERT INTO `courses_video` VALUES ('3', '2.1 test', '2018-04-10 16:46:00.000000', '2', 'https://www.baidu.com', '36');
INSERT INTO `courses_video` VALUES ('4', '2.2 test2', '2018-04-10 16:46:00.000000', '2', 'https://www.baidu.com', '38');
INSERT INTO `courses_video` VALUES ('5', '3.1 test3', '2018-04-10 17:24:00.000000', '3', 'http://baidu.com/', '43');
INSERT INTO `courses_video` VALUES ('6', '高数基础', '2018-04-14 15:50:00.000000', '4', 'https://www.baidu.com', '300');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('2', '2018-04-05 10:09:50.789000', '3', 'admin', '1', 'Added.', '7', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('26', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('10', 'courses', 'course');
INSERT INTO `django_content_type` VALUES ('13', 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES ('11', 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES ('12', 'courses', 'video');
INSERT INTO `django_content_type` VALUES ('18', 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES ('17', 'operation', 'userask');
INSERT INTO `django_content_type` VALUES ('21', 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES ('19', 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES ('20', 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES ('14', 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES ('15', 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES ('16', 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('9', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('8', 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('22', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('25', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('23', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('24', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-04-04 02:44:39.896000');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2018-04-04 02:44:51.473000');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2018-04-04 02:44:54.125000');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2018-04-04 02:44:54.380000');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2018-04-04 02:44:55.843000');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2018-04-04 02:44:56.676000');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2018-04-04 02:44:57.541000');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2018-04-04 02:44:57.599000');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2018-04-04 02:44:58.287000');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2018-04-04 02:44:58.329000');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2018-04-04 02:44:58.392000');
INSERT INTO `django_migrations` VALUES ('12', 'sessions', '0001_initial', '2018-04-04 02:44:59.131000');
INSERT INTO `django_migrations` VALUES ('13', 'users', '0001_initial', '2018-04-04 03:23:27.069000');
INSERT INTO `django_migrations` VALUES ('14', 'courses', '0001_initial', '2018-04-04 12:10:51.299000');
INSERT INTO `django_migrations` VALUES ('15', 'operation', '0001_initial', '2018-04-04 12:10:59.019000');
INSERT INTO `django_migrations` VALUES ('16', 'organization', '0001_initial', '2018-04-04 12:11:02.756000');
INSERT INTO `django_migrations` VALUES ('17', 'users', '0002_banner_emailverifyrecord', '2018-04-04 12:11:03.582000');
INSERT INTO `django_migrations` VALUES ('18', 'users', '0003_auto_20180404_2141', '2018-04-04 13:42:02.040000');
INSERT INTO `django_migrations` VALUES ('19', 'xadmin', '0001_initial', '2018-04-05 10:21:32.950000');
INSERT INTO `django_migrations` VALUES ('20', 'xadmin', '0002_log', '2018-04-05 12:56:08.580000');
INSERT INTO `django_migrations` VALUES ('21', 'xadmin', '0003_auto_20160715_0100', '2018-04-05 12:56:09.642000');
INSERT INTO `django_migrations` VALUES ('22', 'captcha', '0001_initial', '2018-04-07 09:49:32.235000');
INSERT INTO `django_migrations` VALUES ('23', 'courses', '0002_auto_20180407_0949', '2018-04-07 09:49:32.346000');
INSERT INTO `django_migrations` VALUES ('24', 'organization', '0002_auto_20180407_0949', '2018-04-07 09:49:32.473000');
INSERT INTO `django_migrations` VALUES ('25', 'users', '0004_auto_20180407_0949', '2018-04-07 09:49:32.548000');
INSERT INTO `django_migrations` VALUES ('26', 'organization', '0003_auto_20180408_1046', '2018-04-08 10:46:33.347000');
INSERT INTO `django_migrations` VALUES ('27', 'organization', '0004_auto_20180408_2019', '2018-04-08 20:19:43.038000');
INSERT INTO `django_migrations` VALUES ('28', 'courses', '0003_course_course_org', '2018-04-09 15:06:34.854000');
INSERT INTO `django_migrations` VALUES ('29', 'organization', '0005_teacher_image', '2018-04-09 16:35:28.454000');
INSERT INTO `django_migrations` VALUES ('30', 'courses', '0004_course_category', '2018-04-10 11:03:58.203000');
INSERT INTO `django_migrations` VALUES ('31', 'courses', '0005_course_tag', '2018-04-10 15:22:29.260000');
INSERT INTO `django_migrations` VALUES ('32', 'courses', '0006_video_url', '2018-04-10 16:44:21.475000');
INSERT INTO `django_migrations` VALUES ('33', 'courses', '0007_video_learn_times', '2018-04-10 17:21:51.653000');
INSERT INTO `django_migrations` VALUES ('34', 'courses', '0008_course_teacher', '2018-04-10 18:19:44.776000');
INSERT INTO `django_migrations` VALUES ('35', 'courses', '0009_auto_20180410_1828', '2018-04-10 18:28:41.408000');
INSERT INTO `django_migrations` VALUES ('36', 'organization', '0006_teacher_age', '2018-04-11 21:52:01.948000');
INSERT INTO `django_migrations` VALUES ('37', 'users', '0005_auto_20180413_1309', '2018-04-13 13:09:47.188000');
INSERT INTO `django_migrations` VALUES ('38', 'courses', '0010_course_is_banner', '2018-04-14 13:37:21.136000');
INSERT INTO `django_migrations` VALUES ('39', 'organization', '0007_courseorg_tag', '2018-04-14 14:25:47.988000');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('nsneiae9okz618idr7qlssq43o3d77sc', 'N2FjNzhlMzQ4MWMwNzRmY2EzMDc3MjYyOTBjNWQ4MDU0ZGVjYjhkNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImRkM2MwMTg4YmFlNmVhZjMyYTA3NDcyYmI1ZTdiNDZiZmM0MmJjMWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEzIn0=', '2018-04-28 15:52:44.979000');

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` (`course_id`),
  KEY `operation_coursecomment_user_id_f5ff70b3_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_coursecomment_user_id_f5ff70b3_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
INSERT INTO `operation_coursecomments` VALUES ('1', '讲的很不错', '2018-04-11 10:40:21.956000', '3', '1');
INSERT INTO `operation_coursecomments` VALUES ('2', 'good', '2018-04-11 10:50:40.790000', '3', '1');
INSERT INTO `operation_coursecomments` VALUES ('3', '哈哈哈', '2018-04-11 12:25:19.572000', '12', '1');
INSERT INTO `operation_coursecomments` VALUES ('4', 'python4不错', '2018-04-14 15:45:19.292000', '9', '1');
INSERT INTO `operation_coursecomments` VALUES ('5', 'python4不错', '2018-04-14 15:45:56.792000', '9', '13');
INSERT INTO `operation_coursecomments` VALUES ('6', '不错', '2018-04-14 15:53:21.243000', '13', '13');

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
INSERT INTO `operation_userask` VALUES ('1', '赵金龙', '13561522150', '数据结构', '2018-04-14 15:44:31.033000');

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
INSERT INTO `operation_usercourse` VALUES ('1', '2018-04-10 15:01:00.000000', '4', '1');
INSERT INTO `operation_usercourse` VALUES ('2', '2018-04-11 12:24:17.259000', '3', '1');
INSERT INTO `operation_usercourse` VALUES ('3', '2018-04-11 12:24:52.030000', '12', '1');
INSERT INTO `operation_usercourse` VALUES ('4', '2018-04-14 14:36:44.565000', '9', '1');
INSERT INTO `operation_usercourse` VALUES ('5', '2018-04-14 15:16:39.798000', '4', '13');
INSERT INTO `operation_usercourse` VALUES ('6', '2018-04-14 15:17:08.090000', '3', '13');
INSERT INTO `operation_usercourse` VALUES ('7', '2018-04-14 15:45:46.243000', '9', '13');
INSERT INTO `operation_usercourse` VALUES ('8', '2018-04-14 15:52:56.264000', '13', '13');

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
INSERT INTO `operation_userfavorite` VALUES ('50', '5', '1', '2018-04-14 15:16:08.756000', '13');
INSERT INTO `operation_userfavorite` VALUES ('51', '6', '2', '2018-04-14 15:16:13.016000', '13');
INSERT INTO `operation_userfavorite` VALUES ('52', '6', '3', '2018-04-14 15:16:19.944000', '13');
INSERT INTO `operation_userfavorite` VALUES ('53', '3', '1', '2018-04-14 15:17:05.815000', '13');
INSERT INTO `operation_userfavorite` VALUES ('54', '13', '1', '2018-04-14 15:52:54.586000', '13');

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------
INSERT INTO `operation_usermessage` VALUES ('1', '1', '欢迎注册慕课网', '1', '2018-04-05 19:11:00.000000');
INSERT INTO `operation_usermessage` VALUES ('3', '60', 'dasdasdasdasdas', '0', '2018-04-05 20:08:00.000000');
INSERT INTO `operation_usermessage` VALUES ('4', '13', '欢迎注册慕学在线网', '1', '2018-04-14 15:13:32.878000');

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES ('1', '上海市', '上海市', '2018-04-05 15:24:00.000000');
INSERT INTO `organization_citydict` VALUES ('2', '北京市', '北京市', '2018-04-05 15:25:00.000000');
INSERT INTO `organization_citydict` VALUES ('3', '广州市', '广州市', '2018-04-08 10:21:00.000000');
INSERT INTO `organization_citydict` VALUES ('4', '深圳市', '深圳市', '2018-04-08 10:22:00.000000');
INSERT INTO `organization_citydict` VALUES ('5', '天津市', '天津市', '2018-04-08 10:22:00.000000');
INSERT INTO `organization_citydict` VALUES ('6', '枣庄市', '枣庄市', '2018-04-08 13:01:00.000000');
INSERT INTO `organization_citydict` VALUES ('7', '济南市', '济南市', '2018-04-08 13:05:00.000000');
INSERT INTO `organization_citydict` VALUES ('8', '青岛市', '青岛市', '2018-04-08 13:07:00.000000');
INSERT INTO `organization_citydict` VALUES ('9', '重庆市', '重庆市', '2018-04-14 15:40:00.000000');

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_course_city_id_4a842f85_fk_organization_citydict_id` (`city_id`),
  CONSTRAINT `organization_course_city_id_4a842f85_fk_organization_citydict_id` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES ('3', '慕课网', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n       慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。\r\n       4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。', '13', '0', 'org/2018/04/imooc.png', '北京市', '2018-04-08 10:31:00.000000', '2', 'pxjg', '30', '20', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('4', '慕课网2', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n      慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。\r\n      4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。', '0', '0', 'org/2018/04/imooc_iajN2zo.png', '北京市', '2018-04-08 10:35:00.000000', '2', 'pxjg', '20', '15', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('5', '慕课网3', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。 [1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。 [2]', '0', '0', 'org/2018/04/imooc_5bIV8wA.png', '上海市', '2018-04-08 10:36:00.000000', '1', 'pxjg', '10', '12', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('6', '北京大学', '北京大学，简称“北大”，诞生于1898年，初名京师大学堂，是中国近代第一所国立大学，也是最早以“大学”之名创办的学校，其成立标志着中国近代高等教育的开端。北大是中国近代以来唯一以国家最高学府身份创立的学校，最初也是国家最高教育行政机关，行使教育部职能，统管全国教育。北大催生了中国最早的现代学制，开创了中国最早的文科、理科、社科、农科、医科等大学学科，是近代以来中国高等教育的奠基者。', '8', '1', 'org/2018/04/bjdx.jpg', '北京市', '2018-04-08 10:37:00.000000', '2', 'gx', '8', '20', '知名高校');
INSERT INTO `organization_courseorg` VALUES ('7', '清华大学', '清华大学（Tsinghua University），简称“清华”，由中华人民共和国教育部直属，中央直管副部级建制，位列“211工程”、“985工程”、“世界一流大学和一流学科”，入选“基础学科拔尖学生培养试验计划”、“高等学校创新能力提升计划”、“高等学校学科创新引智计划”，为九校联盟、中国大学校长联谊会、东亚研究型大学协会、亚洲大学联盟、环太平洋大学联盟、清华—剑桥—MIT低碳大学联盟成员，被誉为“红色工程师的摇篮”。', '11', '0', 'org/2018/04/qhdx-logo.png', '北京市', '2018-04-08 10:37:00.000000', '2', 'gx', '10', '15', '知名高校');
INSERT INTO `organization_courseorg` VALUES ('8', '慕课网6', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。 [1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。 [2]', '0', '0', 'org/2018/04/imooc_3yGisvQ.png', '深圳市', '2018-04-08 10:37:00.000000', '4', 'pxjg', '6', '7', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('9', '慕课网7', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。 [1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。 [2]', '0', '0', 'org/2018/04/imooc_RM45UYc.png', '广州市', '2018-04-08 10:38:00.000000', '3', 'pxjg', '8', '9', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('10', '慕课网8', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。 [1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。 [2]', '0', '0', 'org/2018/04/imooc_qGQTnm2.png', '广州市', '2018-04-08 10:38:00.000000', '3', 'pxjg', '10', '11', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('11', '慕课网9', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。 [1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。 [2]', '0', '0', 'org/2018/04/imooc_7MStOl0.png', '天津市', '2018-04-08 10:38:00.000000', '5', 'pxjg', '12', '13', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('12', '慕课网10', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。 [1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。 [2]', '0', '0', 'org/2018/04/imooc_bm42NSh.png', '天津市', '2018-04-08 10:39:00.000000', '5', 'pxjg', '14', '15', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('13', '枣庄学院', '枣庄学院（Zaozhuang University）是经教育部批准成立的全日制普通本科院校，实行省市共建、以省为主的管理体制。学校创建于1971年，1984年经山东省人民政府批准成立枣庄师范专科学校，2004年5月升格为枣庄学院，2017年获批硕士学位授予立项建设单位。\r\n       学校现有教职工1099人，专任教师743人，教授59人、副教授223人。省级优秀教学团队3个，曾宪梓教育基金会教师奖获得者9人，省级教学名师5人。学校设有教学院（部）22个，普通本科专业54个，专科专业36个，其中省级特色专业8个、省级重点学科4个；学校建有省级工程技术研究院1个、省级实验教学示范中心2个、省级高校重点实验室1个、国家级社科普及教育基地1个、省级社科普及教育基地2个、省级青少年素质教育重点研究基地2个，获批山东省首批海峡两岸交流示范点，是山东省首批研究生联合培养基地。', '500', '500', 'org/2018/04/uzz.jpg', '枣庄市', '2018-04-14 15:41:00.000000', '6', 'gx', '0', '600', '全国知名');

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id` (`org_id`),
  CONSTRAINT `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES ('3', 'teacher1', '3', '枣庄学院', '初级讲师', 'xxx', '14', '0', '2018-04-09 16:37:00.000000', '3', 'teacher/2018/04/jstx.jpg', '18');
INSERT INTO `organization_teacher` VALUES ('4', 'teacher2', '3', '山东大学', 'xxx', 'xxx', '0', '0', '2018-04-09 19:25:00.000000', '3', 'teacher/2018/04/jstx2.jpg', '18');
INSERT INTO `organization_teacher` VALUES ('5', 'teacher3', '3', '小米', 'CEO', '为发烧而生', '502', '600', '2018-04-11 21:59:00.000000', '6', 'teacher/2018/04/jstx3.jpg', '38');
INSERT INTO `organization_teacher` VALUES ('6', 'teacher4', '0', 'LINUX', '架构师', '高效快速', '301', '201', '2018-04-11 22:16:00.000000', '7', 'teacher/2018/04/jstx4.jpg', '30');
INSERT INTO `organization_teacher` VALUES ('7', '赵金龙', '4', '枣庄学院', '学生', '认真', '0', '0', '2018-04-14 15:42:00.000000', '13', 'teacher/2018/04/z.jpg', '18');

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES ('1', '第一个', 'banner/2018/04/5acecbcd00019e0b09360316.jpg', 'http://www.imooc.com/sale/2?mc_marking=5972b9d99e246e8a7e20e9cdef639597&mc_channel=banner', '1', '2018-04-14 13:50:00.000000');
INSERT INTO `users_banner` VALUES ('2', '第二个', 'banner/2018/04/5ac4a754000113f009360316.jpg', 'http://coding.imooc.com/class/203.html?mc_marking=8d75f0eb3f5a7e6c3ad39bcd48095cb4&mc_channel=banner', '2', '2018-04-14 13:54:00.000000');
INSERT INTO `users_banner` VALUES ('3', '第三个', 'banner/2018/04/5ac4a7940001a9aa09360316.jpg', 'http://coding.imooc.com/class/187.html?mc_marking=32f08dda54c4c19ae908ff62fb57571b&mc_channel=banner', '3', '2018-04-14 13:56:00.000000');
INSERT INTO `users_banner` VALUES ('4', '第四个', 'banner/2018/04/57a801860001c34b12000460.jpg', 'https://www.baidu.com/', '4', '2018-04-14 13:58:00.000000');
INSERT INTO `users_banner` VALUES ('5', '第五个', 'banner/2018/04/57aa86a0000145c512000460.jpg', 'https://www.aliyun.com', '5', '2018-04-14 13:58:00.000000');

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(20) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES ('4', '7894568888', '408162419@qq.com', 'forget', '2018-04-05 13:02:00.000000');
INSERT INTO `users_emailverifyrecord` VALUES ('5', 'root', '456789@qq.com', 'forget', '2018-04-05 14:10:00.000000');
INSERT INTO `users_emailverifyrecord` VALUES ('6', '789456123', 'dsadas@163.com', 'register', '2018-03-14 14:10:00.000000');
INSERT INTO `users_emailverifyrecord` VALUES ('7', 'puXG7FQigwOHvihF', 'zjlcn@live.com', 'register', '2018-04-07 13:57:55.483000');
INSERT INTO `users_emailverifyrecord` VALUES ('8', 'SkYcpId27xipQfyG', 'zjlcn@live.com', 'register', '2018-04-07 13:59:28.927000');
INSERT INTO `users_emailverifyrecord` VALUES ('9', 'pexjjYpkGOzmHBvz', '408162419@qq.com', 'register', '2018-04-07 14:29:21.467000');
INSERT INTO `users_emailverifyrecord` VALUES ('10', 'eNPFEml3A4juJmPA', '1340588703@qq.com', 'register', '2018-04-07 14:31:26.877000');
INSERT INTO `users_emailverifyrecord` VALUES ('11', 'gsgux3nlr0bcQmPU', '1340588703@qq.com', 'register', '2018-04-07 14:53:29.330000');
INSERT INTO `users_emailverifyrecord` VALUES ('12', 'QlfhUYBqjyMRKbDb', '1340588703@qq.com', 'register', '2018-04-07 14:55:00.878000');
INSERT INTO `users_emailverifyrecord` VALUES ('13', '8WwW7OD6IjYinxxq', '1340588703@qq.com', 'register', '2018-04-07 14:57:03.753000');
INSERT INTO `users_emailverifyrecord` VALUES ('14', 'hyQLrZJk0LgXnszU', '1340588703@qq.com', 'forget', '2018-04-07 16:27:17.568000');
INSERT INTO `users_emailverifyrecord` VALUES ('15', 'GtyaiG5dme29SD4o', '1340588703@qq.com', 'forget', '2018-04-07 16:38:17.597000');
INSERT INTO `users_emailverifyrecord` VALUES ('16', 'cuq6oHK7tTGc9KgY', '1340588703@qq.com', 'update_email', '2018-04-13 13:10:10.085000');
INSERT INTO `users_emailverifyrecord` VALUES ('17', '2LcU', '1340588703@qq.com', 'update_email', '2018-04-13 13:13:04.547000');
INSERT INTO `users_emailverifyrecord` VALUES ('18', 'zhPq', '1340588703@qq.com', 'update_email', '2018-04-13 13:36:31.527000');
INSERT INTO `users_emailverifyrecord` VALUES ('19', 'xkFe', '408162419@qq.com', 'update_email', '2018-04-13 13:37:27.002000');
INSERT INTO `users_emailverifyrecord` VALUES ('20', 'jluq', '1340588703@qq.com', 'update_email', '2018-04-13 13:38:32.175000');
INSERT INTO `users_emailverifyrecord` VALUES ('21', 'qNYA', '408162419@qq.com', 'update_email', '2018-04-14 09:32:21.446000');
INSERT INTO `users_emailverifyrecord` VALUES ('22', 'O7cX', '1340588703@qq.com', 'update_email', '2018-04-14 10:55:54.243000');
INSERT INTO `users_emailverifyrecord` VALUES ('23', 'ltrmHl9OOLhiRDsB', '1340588703@qq.com', 'register', '2018-04-14 15:13:32.927000');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$24000$jNUPbFIjUX3T$LxQLcpdvJq8T5SMhOVNSq1xDsOCt216quY1vXp2tC/A=', '2018-04-14 15:46:09.289000', '1', 'root', '', '', '408162419@qq.com', '1', '1', '2018-04-04 13:42:00.000000', '大龙', '1995-10-13', 'male', '中国山东滨州', '17863253045', 'image/2018/04/z_PhPKxxb.jpg');
INSERT INTO `users_userprofile` VALUES ('5', 'pbkdf2_sha256$24000$KMAQ2cnXPJ12$ZotcBpvlhn92pHAtdtAk0/+eIxssQOKJYl56C+S2mhg=', '2018-04-14 15:11:44.270000', '0', 'admin', '', '', '', '0', '1', '2018-04-06 16:43:00.000000', '赵金龙', '2010-02-02', 'male', '山东省滨州市', '', 'image/2018/04/l_cmtnuzq.png');
INSERT INTO `users_userprofile` VALUES ('13', 'pbkdf2_sha256$24000$odbyZj26On6h$tU3nWY5fzysGJ2k3k6ATQGdHKB9V7MlmOR0PUfXC/IA=', '2018-04-14 15:52:44.938000', '0', '1340588703@qq.com', '', '', '1340588703@qq.com', '0', '1', '2018-04-14 15:13:32.790000', '大龙', '2012-12-12', 'male', '中国山东', '17863253045', 'image/2018/04/z1.jpg');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofil_userprofile_id_a4496a80_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_permissions_userprofile_id_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `users_userprofil_userprofile_id_34544737_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2018-04-05 12:56:41.415000', '127.0.0.1', '2', 'EmailVerifyRecord object', 'create', '已添加', '8', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2018-04-05 12:57:15.298000', '127.0.0.1', '3', 'EmailVerifyRecord object', 'create', '已添加', '8', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2018-04-05 13:03:06.840000', '127.0.0.1', '4', '408162419@qq.com', 'create', '已添加', '8', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2018-04-05 13:05:27.903000', '127.0.0.1', null, '', 'delete', '批量删除 1 个 邮箱验证码', null, '1');
INSERT INTO `xadmin_log` VALUES ('5', '2018-04-05 13:06:52.780000', '127.0.0.1', '4', '7894568888(408162419@qq.com)', 'change', '已修改 code 。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2018-04-05 14:06:02.075000', '127.0.0.1', '4', '7894568888(408162419@qq.com)', 'change', '已修改 send_type 。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2018-04-05 14:06:28.932000', '127.0.0.1', null, '', 'delete', '批量删除 1 个 邮箱验证码', null, '1');
INSERT INTO `xadmin_log` VALUES ('8', '2018-04-05 14:10:16.200000', '127.0.0.1', '5', 'root(456789@qq.com)', 'create', '已添加', '8', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2018-04-05 14:10:30.527000', '127.0.0.1', '6', '789456123(dsadas@163.com)', 'create', '已添加', '8', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2018-04-05 14:13:26.217000', '127.0.0.1', '6', '789456123(dsadas@163.com)', 'change', '已修改 send_time 。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2018-04-05 14:44:20.423000', '127.0.0.1', '1', 'Course object', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2018-04-05 14:44:58.386000', '127.0.0.1', '2', 'Course object', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2018-04-05 14:51:19.440000', '127.0.0.1', '1', 'Lesson object', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2018-04-05 14:52:09.399000', '127.0.0.1', '2', 'Lesson object', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2018-04-05 15:24:42.841000', '127.0.0.1', '1', 'CityDict object', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2018-04-05 15:25:42.232000', '127.0.0.1', '2', '济南', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2018-04-05 15:27:46.860000', '127.0.0.1', '1', 'CourseOrg object', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2018-04-05 15:28:31.792000', '127.0.0.1', '2', '暨南大学', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2018-04-05 15:29:26.234000', '127.0.0.1', '1', 'Teacher object', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2018-04-05 15:30:04.649000', '127.0.0.1', '2', '大龙', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2018-04-05 19:07:13.396000', '127.0.0.1', '1', 'UserAsk object', 'create', '已添加', '17', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2018-04-05 19:08:06.942000', '127.0.0.1', '2', '大龙', 'create', '已添加', '17', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2018-04-05 19:08:25.660000', '127.0.0.1', '1', '赵金龙', 'change', '已修改 mobile 。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2018-04-05 19:08:57.763000', '127.0.0.1', '1', 'UserCourse object', 'create', '已添加', '21', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2018-04-05 19:11:03.689000', '127.0.0.1', '3', 'UserCourse object', 'create', '已添加', '21', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2018-04-05 19:11:38.744000', '127.0.0.1', '1', 'UserMessage object', 'create', '已添加', '20', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2018-04-05 19:12:00.268000', '127.0.0.1', '1', 'CourseComments object', 'create', '已添加', '18', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2018-04-05 19:12:19.739000', '127.0.0.1', '1', 'UserFavorite object', 'create', '已添加', '19', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2018-04-05 19:16:26.712000', '127.0.0.1', '4', 'UserCourse object', 'create', '已添加', '21', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2018-04-05 20:00:24.459000', '127.0.0.1', '3', '课程评论', 'create', '已添加', '18', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2018-04-05 20:01:21.634000', '127.0.0.1', '4', '操作系统', 'create', '已添加', '18', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2018-04-05 20:01:41.761000', '127.0.0.1', '5', '数据结构', 'create', '已添加', '18', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2018-04-05 20:02:19.113000', '127.0.0.1', '4', 'zjlong', 'create', '已添加', '7', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2018-04-05 20:02:53.065000', '127.0.0.1', '6', '操作系统', 'create', '已添加', '18', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2018-04-05 20:03:29.304000', '127.0.0.1', '6', '很喜欢', 'change', '已修改 comments 。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('36', '2018-04-05 20:04:41.495000', '127.0.0.1', '5', '操作系统', 'create', '已添加', '21', '1');
INSERT INTO `xadmin_log` VALUES ('37', '2018-04-05 20:07:07.748000', '127.0.0.1', '6', 'zjlong(操作系统)', 'create', '已添加', '21', '1');
INSERT INTO `xadmin_log` VALUES ('38', '2018-04-05 20:09:03.106000', '127.0.0.1', '3', 'dasdasdasdasdas', 'create', '已添加', '20', '1');
INSERT INTO `xadmin_log` VALUES ('39', '2018-04-06 16:43:23.612000', '127.0.0.1', null, '', 'delete', '批量删除 1 个 用户信息', null, '1');
INSERT INTO `xadmin_log` VALUES ('40', '2018-04-06 16:43:55.724000', '127.0.0.1', '5', 'admin', 'create', '已添加', '7', '1');
INSERT INTO `xadmin_log` VALUES ('41', '2018-04-06 16:55:29.385000', '127.0.0.1', '4', 'zjlong', 'change', '已修改 last_login，email，nick_name，birday，gender，address 和 image 。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('42', '2018-04-08 10:21:32.095000', '127.0.0.1', '2', '北京市', 'change', '已修改 name 和 desc 。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('43', '2018-04-08 10:21:50.973000', '127.0.0.1', '1', '上海市', 'change', '已修改 name 和 desc 。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('44', '2018-04-08 10:21:59.877000', '127.0.0.1', '3', '广州市', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('45', '2018-04-08 10:22:06.671000', '127.0.0.1', '4', '深圳市', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('46', '2018-04-08 10:22:16.603000', '127.0.0.1', '5', '天津市', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('47', '2018-04-08 10:23:07.329000', '127.0.0.1', null, '', 'delete', '批量删除 2 个 课程机构', null, '1');
INSERT INTO `xadmin_log` VALUES ('48', '2018-04-08 10:31:47.561000', '127.0.0.1', '3', '慕课网', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('49', '2018-04-08 10:36:26.516000', '127.0.0.1', '4', '慕课网2', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('50', '2018-04-08 10:37:03.939000', '127.0.0.1', '5', '慕课网3', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('51', '2018-04-08 10:37:20.308000', '127.0.0.1', '6', '慕课网4', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('52', '2018-04-08 10:37:38.917000', '127.0.0.1', '7', '慕课网5', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('53', '2018-04-08 10:37:58.932000', '127.0.0.1', '8', '慕课网6', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('54', '2018-04-08 10:38:20.730000', '127.0.0.1', '9', '慕课网7', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('55', '2018-04-08 10:38:41.683000', '127.0.0.1', '10', '慕课网8', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('56', '2018-04-08 10:39:00.486000', '127.0.0.1', '11', '慕课网9', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('57', '2018-04-08 10:39:22.476000', '127.0.0.1', '12', '慕课网10', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('58', '2018-04-08 13:01:52.590000', '127.0.0.1', '6', '枣庄市', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('59', '2018-04-08 13:05:33.738000', '127.0.0.1', '7', '济南市', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('60', '2018-04-08 13:07:33.340000', '127.0.0.1', '8', '青岛市', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('61', '2018-04-08 13:33:13.430000', '127.0.0.1', '6', '北京大学', 'change', '已修改 name，desc，category，image，address 和 city 。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('62', '2018-04-08 13:34:12.843000', '127.0.0.1', '7', '清华大学', 'change', '已修改 name，desc，category，image，address 和 city 。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('63', '2018-04-09 14:58:27.997000', '127.0.0.1', '1', 'zjlong', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('64', '2018-04-09 14:59:24.489000', '127.0.0.1', '2', 'zjlong3', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('65', '2018-04-09 14:59:42.384000', '127.0.0.1', null, '', 'delete', '批量删除 2 个 课程', null, '1');
INSERT INTO `xadmin_log` VALUES ('66', '2018-04-09 15:08:43.906000', '127.0.0.1', '3', '数据结构', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('67', '2018-04-09 16:21:08.797000', '127.0.0.1', '3', '数据结构', 'change', '已修改 learn_times 和 students 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('68', '2018-04-09 16:21:29.447000', '127.0.0.1', '3', '数据结构', 'change', '已修改 fav_nums 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('69', '2018-04-09 16:30:32.792000', '127.0.0.1', null, '', 'delete', '批量删除 2 个 教师', null, '1');
INSERT INTO `xadmin_log` VALUES ('70', '2018-04-09 16:38:45.722000', '127.0.0.1', '3', 'zjlong', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('71', '2018-04-09 18:43:47.812000', '127.0.0.1', '4', '操作系统', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('72', '2018-04-09 19:25:19.135000', '127.0.0.1', '3', 'teacher1', 'change', '已修改 name 。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('73', '2018-04-09 19:25:43.436000', '127.0.0.1', '4', 'teacher2', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('74', '2018-04-09 19:26:01.103000', '127.0.0.1', '4', 'teacher2', 'change', '已修改 work_company 。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('75', '2018-04-10 00:06:19.276000', '127.0.0.1', '1', 'root', 'change', '已修改 last_login，nick_name，birday，gender，address 和 image 。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('76', '2018-04-10 09:23:51.798000', '127.0.0.1', '5', '软件工程', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('77', '2018-04-10 09:28:45.116000', '127.0.0.1', '6', 'python1', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('78', '2018-04-10 09:29:16.864000', '127.0.0.1', '6', 'python1', 'change', '已修改 detail 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('79', '2018-04-10 09:29:44.898000', '127.0.0.1', '7', 'python2', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('80', '2018-04-10 09:30:29.889000', '127.0.0.1', '8', 'python3', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('81', '2018-04-10 09:30:50.887000', '127.0.0.1', '9', 'python4', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('82', '2018-04-10 09:31:30.919000', '127.0.0.1', '10', 'python5', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('83', '2018-04-10 09:32:24.917000', '127.0.0.1', '11', 'python6', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('84', '2018-04-10 09:32:54.521000', '127.0.0.1', '12', 'python7', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('85', '2018-04-10 09:43:55.866000', '127.0.0.1', '4', '操作系统', 'change', '已修改 course_org 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('86', '2018-04-10 09:44:04.843000', '127.0.0.1', '5', '软件工程', 'change', '已修改 course_org 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('87', '2018-04-10 09:44:24.752000', '127.0.0.1', '5', '软件工程', 'change', '已修改 students 和 fav_nums 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('88', '2018-04-10 09:44:34.618000', '127.0.0.1', '6', 'python1', 'change', '已修改 students 和 fav_nums 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('89', '2018-04-10 09:44:43.547000', '127.0.0.1', '7', 'python2', 'change', '已修改 students 和 fav_nums 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('90', '2018-04-10 09:44:59.607000', '127.0.0.1', '8', 'python3', 'change', '已修改 learn_times，students 和 fav_nums 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('91', '2018-04-10 09:45:11.918000', '127.0.0.1', '9', 'python4', 'change', '已修改 learn_times，students 和 fav_nums 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('92', '2018-04-10 09:45:21.516000', '127.0.0.1', '10', 'python5', 'change', '已修改 students 和 fav_nums 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('93', '2018-04-10 09:45:30.367000', '127.0.0.1', '11', 'python6', 'change', '已修改 students 和 fav_nums 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('94', '2018-04-10 09:45:41.402000', '127.0.0.1', '12', 'python7', 'change', '已修改 learn_times，students 和 fav_nums 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('95', '2018-04-10 10:15:26.544000', '127.0.0.1', '10', 'python5', 'change', '已修改 click_nums 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('96', '2018-04-10 10:15:35.972000', '127.0.0.1', '8', 'python3', 'change', '已修改 click_nums 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('97', '2018-04-10 11:04:53.557000', '127.0.0.1', '3', '数据结构', 'change', '已修改 category 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('98', '2018-04-10 11:05:03.284000', '127.0.0.1', '4', '操作系统', 'change', '已修改 click_nums 和 category 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('99', '2018-04-10 11:05:14.122000', '127.0.0.1', '5', '软件工程', 'change', '已修改 click_nums 和 category 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('100', '2018-04-10 11:05:25.139000', '127.0.0.1', '6', 'python1', 'change', '已修改 click_nums 和 category 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('101', '2018-04-10 11:05:37.891000', '127.0.0.1', '7', 'python2', 'change', '已修改 click_nums 和 category 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('102', '2018-04-10 11:05:48.584000', '127.0.0.1', '8', 'python3', 'change', '已修改 category 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('103', '2018-04-10 11:06:00.064000', '127.0.0.1', '9', 'python4', 'change', '已修改 click_nums 和 category 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('104', '2018-04-10 11:06:08.490000', '127.0.0.1', '10', 'python5', 'change', '已修改 category 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('105', '2018-04-10 11:06:18.714000', '127.0.0.1', '11', 'python6', 'change', '已修改 click_nums 和 category 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('106', '2018-04-10 11:06:32.994000', '127.0.0.1', '12', 'python7', 'change', '已修改 click_nums 和 category 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('107', '2018-04-10 15:01:25.956000', '127.0.0.1', '1', 'root(操作系统)', 'create', '已添加', '21', '1');
INSERT INTO `xadmin_log` VALUES ('108', '2018-04-10 15:43:02.828000', '127.0.0.1', '6', 'python1', 'change', '已修改 tag 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('109', '2018-04-10 15:43:10.858000', '127.0.0.1', '7', 'python2', 'change', '已修改 tag 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('110', '2018-04-10 16:39:33.704000', '127.0.0.1', '1', '第一章', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('111', '2018-04-10 16:39:41.368000', '127.0.0.1', '2', '第二章', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('112', '2018-04-10 16:39:47.118000', '127.0.0.1', '3', '第三章', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('113', '2018-04-10 16:45:11.849000', '127.0.0.1', '1', '1.1 helloworld', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('114', '2018-04-10 16:45:46.332000', '127.0.0.1', '2', '1.2 基本概念', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('115', '2018-04-10 16:46:09.949000', '127.0.0.1', '3', '2.1 test', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('116', '2018-04-10 16:46:20.186000', '127.0.0.1', '4', '2.2 test2', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('117', '2018-04-10 17:23:14.163000', '127.0.0.1', '2', '1.2 基本概念', 'change', '已修改 learn_times 。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('118', '2018-04-10 17:23:28.938000', '127.0.0.1', '1', '1.1 helloworld', 'change', '已修改 learn_times 。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('119', '2018-04-10 17:23:34.828000', '127.0.0.1', '3', '2.1 test', 'change', '已修改 learn_times 。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('120', '2018-04-10 17:23:40.112000', '127.0.0.1', '4', '2.2 test2', 'change', '已修改 learn_times 。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('121', '2018-04-10 17:24:32.299000', '127.0.0.1', '5', '3.1', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('122', '2018-04-10 17:26:54.908000', '127.0.0.1', '1', 'CourseResource object', 'create', '已添加', '13', '1');
INSERT INTO `xadmin_log` VALUES ('123', '2018-04-10 17:28:03.150000', '127.0.0.1', '1', '数据结构第一章', 'change', '已修改 name 。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('124', '2018-04-10 17:28:41.882000', '127.0.0.1', '2', '数据结构第二章', 'create', '已添加', '13', '1');
INSERT INTO `xadmin_log` VALUES ('125', '2018-04-10 18:20:20.682000', '127.0.0.1', '3', '数据结构', 'change', '已修改 teacher 和 tag 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('126', '2018-04-10 18:24:28.129000', '127.0.0.1', '3', 'teacher1', 'change', '已修改 work_position 。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('127', '2018-04-10 18:29:47.463000', '127.0.0.1', '3', '数据结构', 'change', '已修改 youneed_know 和 teacher_tell 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('128', '2018-04-11 17:54:44.689000', '127.0.0.1', '1', '1.1 helloworld', 'change', '已修改 url 。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('129', '2018-04-11 17:57:10.224000', '127.0.0.1', '1', '1.1 helloworld', 'change', '没有字段被修改。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('130', '2018-04-11 18:51:13.669000', '127.0.0.1', '1', '1.1 helloworld', 'change', '已修改 url 。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('131', '2018-04-11 19:46:52.982000', '127.0.0.1', '5', '3.1 test3', 'change', '已修改 name 。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('132', '2018-04-11 22:00:22.991000', '127.0.0.1', '5', 'teacher3', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('133', '2018-04-11 22:17:28.381000', '127.0.0.1', '6', 'teacher4', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('134', '2018-04-12 13:34:32.028000', '127.0.0.1', '6', 'teacher4', 'change', '已修改 org 。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('135', '2018-04-12 13:34:41.236000', '127.0.0.1', '5', 'teacher3', 'change', '已修改 org 。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('136', '2018-04-12 14:06:33.938000', '127.0.0.1', '4', '操作系统', 'change', '已修改 teacher，tag，youneed_know 和 teacher_tell 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('137', '2018-04-14 10:38:40.503000', '127.0.0.1', '1', '123456', 'change', '已修改 user 。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('138', '2018-04-14 10:40:29.757000', '127.0.0.1', '1', '欢迎注册慕课网', 'change', '已修改 message 。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('139', '2018-04-14 13:54:07.189000', '127.0.0.1', '1', 'Banner object', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('140', '2018-04-14 13:56:13.975000', '127.0.0.1', '2', 'Banner object', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('141', '2018-04-14 13:57:33.922000', '127.0.0.1', '3', 'Banner object', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('142', '2018-04-14 13:58:44.402000', '127.0.0.1', '4', 'Banner object', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('143', '2018-04-14 13:59:05.931000', '127.0.0.1', '5', 'Banner object', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('144', '2018-04-14 14:26:50.639000', '127.0.0.1', '7', '清华大学', 'change', '已修改 tag 。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('145', '2018-04-14 14:27:02.495000', '127.0.0.1', '6', '北京大学', 'change', '已修改 tag 。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('146', '2018-04-14 15:11:29.679000', '127.0.0.1', '5', 'admin', 'change', '已修改 last_login，address 和 image 。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('147', '2018-04-14 15:27:18.179000', '127.0.0.1', '1', '1.1 helloworld', 'change', '已修改 url 。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('148', '2018-04-14 15:40:57.425000', '127.0.0.1', '9', '重庆市', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('149', '2018-04-14 15:42:38.489000', '127.0.0.1', '13', '枣庄学院', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('150', '2018-04-14 15:43:31.855000', '127.0.0.1', '7', '赵金龙', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('151', '2018-04-14 15:49:44.865000', '127.0.0.1', '13', '高等数学', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('152', '2018-04-14 15:49:57.183000', '127.0.0.1', '4', '第一章', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('153', '2018-04-14 15:50:47.074000', '127.0.0.1', '6', '高数基础', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('154', '2018-04-14 15:52:13.428000', '127.0.0.1', '3', '课件', 'create', '已添加', '13', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
