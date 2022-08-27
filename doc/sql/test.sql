/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : 127.0.0.1:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 26/08/2022 16:43:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `auther` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `love` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `blog` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `body` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `outputHTML` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `operate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forwarded` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `watched` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`bid`, `auther`, `love`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, '', '', '111', '', ' ', '<p>你好，<strong>世界!</strong></p><p><strong>asfdadsgfffffffffffffffffffffffffffffffffffffffffffffffffff</strong></p>', 'qq', '', '', '', '', '', '', '', NULL);
INSERT INTO `article` VALUES (2, '', '', '111', '', '', '<p><a href=\"https://www.jianshu.com/\" class=\"hM7XFL _1OhGeD\">首页</a><a href=\"https://www.jianshu.com/apps?utm_medium=desktop&amp;utm_source=navbar-apps\" class=\"hM7XFL _1OhGeD\">下载APP</a><a href=\"https://www.jianshu.com/vips\" class=\"hM7XFL _1OhGeD\">会员</a><a href=\"https://www.jianshu.com/techareas\" class=\"hM7XFL _1OhGeD\">IT技术</a><br/>抽奖<br/></p><div class=\"media-wrap image-wrap\"><img src=\"data:image/png;base64,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\" alt=\"reward\" class=\"_1YyGPQ\" width=\"97px\" style=\"width:97px\"/></div><p><br/>Mybatis报错 Result Maps collection already contains value for 原因汇总<br/></p><div class=\"media-wrap image-wrap\"><a style=\"display:inline-block\" href=\"https://www.jianshu.com/u/39552389321a\"><img src=\"https://upload.jianshu.io/users/upload_avatars/3344221/5c2996f92bbe.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/80/h/80/format/webp\" alt=\"\" class=\"_2JlnTn\" width=\"40px\" height=\"40px\" style=\"width:40px;height:40px\"/></a></div><p><span style=\"color:#7d7d7d\">兜兜说</span>关注赞赏支持</p><p></p><p><br/>Mybatis报错 Result Maps collection already contains value for 原因汇总<br/></p><div class=\"media-wrap image-wrap\"><a style=\"display:inline-block\" href=\"https://www.jianshu.com/u/39552389321a\" target=\"_blank\"><img src=\"https://upload.jianshu.io/users/upload_avatars/3344221/5c2996f92bbe.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp\" alt=\"\" class=\"_13D2Eh\" width=\"50px\" height=\"50px\" style=\"width:50px;height:50px\"/></a></div><p><span style=\"font-size:16px\"><a href=\"https://www.jianshu.com/u/39552389321a\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"_1OhGeD\">兜兜说</a></span>关注<br/>2020.05.18 16:38:38字数 441阅读 5,124<br/>当Mybatis报错 Result Maps collection already contains value for的时候，有哪些原因呢？<br/>一、Mybatis-Generator根据配置文件生成XML的锅<br/>Mybatis-Generator生成xml等又快有方便，但是如果同名xml之前已经存在，那么生成的时候会在xml里面在之前的代码后面继续追加，而不会覆盖同名的语句。因此有可能报这个错误<br/><strong>解决方案</strong><br/>如果是再次生成代码，必须先将已经生成的代码删除，仔细检查一下xml文件看是否存在两个id为BaseResultMap的resultMap，删除多余的，只保留一个就可以解决问题。<br/>二、同一个mapper.xml文件中没有id相同的resultMap，但是存在多个相同名称的xml文件，这些xml文件都能被扫描到，而且不同的xml文件中包含相同id的resultMap<br/><strong>解决方案</strong><br/>删除测试文件夹下的resources目录下的与mapper.xml同名的xml文件，或是修改测试文件夹中xml文件中的resultMap的id，确保同名的xml中没有相同id的resultMap。<br/>三、spring boot + mybatis<br/>在spring boot的application.properties中，配置了mybatis.config-location=classpath:mybatis-config.xml mybatis.mapper-locations=classpath*:mapper/*.xml。这样相当于mapper的配置被配置了两遍。<br/><strong>解决方案</strong><br/>把mybatis-config.xml中的mappers部分删除<br/>四、应该用resultMap来接收返回值，却用了resultType<br/><strong>解决方案</strong><br/>1.当返回值为List&lt;XXX&gt;泛型时，使用resultType = &quot;XXX&quot; 的类型<br/>2.当XXX 是PO类，且映射不完全，即表中operate_time,po中对应的映射字段为operateTime<br/>  使用resultMap<br/><br/>0人点赞<br/><br/><a href=\"https://www.jianshu.com/nb/6927700\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"_3BUZPB _1x1ok9 _1OhGeD\">日记本</a><br/><br/>更多精彩内容，就在简书APP<br/><br/><br/>&quot;小礼物走一走，来简书关注我&quot;<br/>赞赏支持<span style=\"color:#666666\">还没有人赞赏，支持一下</span><br/></p><div class=\"media-wrap image-wrap\"><a style=\"display:inline-block\" href=\"https://www.jianshu.com/u/39552389321a\" target=\"_blank\"><img src=\"https://upload.jianshu.io/users/upload_avatars/3344221/5c2996f92bbe.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/100/h/100/format/webp\" alt=\"  \" class=\"_27NmgV\" width=\"50px\" height=\"50px\" style=\"width:50px;height:50px\"/></a></div><p><a href=\"https://www.jianshu.com/u/39552389321a\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"HC3FFO _1OhGeD\">兜兜说</a><span style=\"font-size:14px\"><span style=\"color:#666666\">说说一些不同的，说说一些特别的，说说一些常识的</span></span><br/>总资产1共写了7.4W字获得57个赞共18个粉丝<br/>关注<br/><br/><br/></p><div class=\"media-wrap image-wrap\"><a style=\"display:inline-block\" href=\"https://www.jianshu.com/u/39552389321a\" target=\"_blank\"><img src=\"https://upload.jianshu.io/users/upload_avatars/3344221/5c2996f92bbe.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/90/h/90/format/webp\" alt=\"\" class=\"_3T9iJQ\" width=\"45px\" height=\"45px\" style=\"width:45px;height:45px\"/></a></div><p><span style=\"color:#2d2d2d\"><span style=\"font-size:14px\"><a href=\"https://www.jianshu.com/u/39552389321a\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"_1OhGeD\">兜兜说</a></span></span><br/>关注<br/>总资产1<br/><br/><a href=\"https://www.jianshu.com/p/e575df9d1797\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"_2ER8Tt _1OhGeD\">都市原创短篇小说《上瘾》</a><br/>阅读 54<br/><a href=\"https://www.jianshu.com/p/86363fcda242\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"_2ER8Tt _1OhGeD\">外蒙古的独立，中华民族的痛</a><br/>阅读 103热门故事<br/><a href=\"https://www.jianshu.com/p/7658350828f5\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"_3SxgBd _1OhGeD\">超A女霸总在线撩夫</a><br/><a href=\"https://www.jianshu.com/p/0602f56492e1\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"_3SxgBd _1OhGeD\">我把老板当金库，老板把我当老婆</a><br/><a href=\"https://www.jianshu.com/p/df453b1aa670\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"_3SxgBd _1OhGeD\">男神学长求放过，你的节操掉了</a><br/><a href=\"https://www.jianshu.com/p/9fd77d55a21f\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"_3SxgBd _1OhGeD\">情深见于微</a>推荐阅读<br/><a href=\"https://www.jianshu.com/p/065e64c37975\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"_1-HJSV _1OhGeD\">mybatis-generator-gui魔改，改完之后更方便了呢</a><br/>阅读 130<br/><a href=\"https://www.jianshu.com/p/346ae5283869\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"_1-HJSV _1OhGeD\">MyBatis--注解、缓存配置、其他工具</a><br/>阅读 729<br/><a href=\"https://www.jianshu.com/p/caca5abfc87d\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"_1-HJSV _1OhGeD\">【15.8】boot学习 mybatis collection 用法</a><br/>阅读 337<br/><a href=\"https://www.jianshu.com/p/94fd0f21fd7c\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"_1-HJSV _1OhGeD\">Mybatis学习总结</a><br/>阅读 156<br/><a href=\"https://www.jianshu.com/p/479331e2c2d0\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"_1-HJSV _1OhGeD\">SpringBoot知识 day03</a><br/>阅读 254<br/></p><p><br/><span style=\"line-height:20\">评论0</span><br/><span style=\"line-height:20\">赞</span><br/></p><p></p>', 'qq', '', '', '', '', '', '', '', NULL);
INSERT INTO `article` VALUES (3, '', '', '111', '', '', '<p>Hello <strong>World!  11111</strong></p>', 'qq', '', '', '', '', '', '', NULL, NULL);
INSERT INTO `article` VALUES (4, '', '', '111', '', '', '<p>你好，<strong>世界!</strong></p><p></p>', 'qq', '', '', '', '', '', '', NULL, NULL);
INSERT INTO `article` VALUES (5, '', '', '111', '', '', '<p>你好，<strong>世界!</strong></p><p></p>', 'qq', '', '', '', '', '', '', NULL, NULL);

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car
-- ----------------------------

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp`  (
  `empno` int(11) UNSIGNED ZEROFILL NOT NULL,
  `ename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hiredate` datetime(0) NULL DEFAULT NULL,
  `sal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deptno` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`empno`, `ename`) USING BTREE,
  INDEX `EMPNO`(`empno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES (00000000001, '1', '1', '2022-05-25 09:54:45', '1', '1', 1);
INSERT INTO `emp` VALUES (00000000002, '2', '2', '2022-05-19 09:55:03', '2', '2', 2);
INSERT INTO `emp` VALUES (00000000003, '4', '4', '2022-05-19 10:18:52', '4', '4', 4);
INSERT INTO `emp` VALUES (00000000004, '4', '4', '2022-05-05 10:18:57', '4', '4', 4);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 'q', 'q');
INSERT INTO `goods` VALUES (2, '3', '4');

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of person
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------

-- ----------------------------
-- Table structure for rule_enable_employee
-- ----------------------------
DROP TABLE IF EXISTS `rule_enable_employee`;
CREATE TABLE `rule_enable_employee`  (
  `index` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `no` int(11) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createDate` datetime(0) NULL DEFAULT NULL,
  `updateDate` datetime(0) NULL DEFAULT NULL,
  `updateRole` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rule_enable_employee
-- ----------------------------
INSERT INTO `rule_enable_employee` VALUES ('1', 1, 'common', '爱是一道光', '1', '1', '2022-08-25 10:25:14', NULL, NULL);

-- ----------------------------
-- Table structure for rule_str
-- ----------------------------
DROP TABLE IF EXISTS `rule_str`;
CREATE TABLE `rule_str`  (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `str` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rule_str
-- ----------------------------

-- ----------------------------
-- Table structure for ruleconfig
-- ----------------------------
DROP TABLE IF EXISTS `ruleconfig`;
CREATE TABLE `ruleconfig`  (
  `index` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updateDate` datetime(0) NULL DEFAULT NULL,
  `createDate` datetime(0) NULL DEFAULT NULL,
  `updateRole` datetime(0) NULL DEFAULT NULL,
  `origin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pathOne` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pathTwo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pathThree` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pathFour` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pathFive` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruleconfig
-- ----------------------------
INSERT INTO `ruleconfig` VALUES ('1', 'rule_config_employee', '员工规则配置表', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_adm
-- ----------------------------
DROP TABLE IF EXISTS `sys_adm`;
CREATE TABLE `sys_adm`  (
  `sys_adm_id` int(11) NOT NULL,
  `sys_adm_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sys_adm_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_adm
-- ----------------------------

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog`  (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `auther` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `body` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forwarded` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `love` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `watched` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_blog
-- ----------------------------

-- ----------------------------
-- Table structure for t_car
-- ----------------------------
DROP TABLE IF EXISTS `t_car`;
CREATE TABLE `t_car`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_car
-- ----------------------------

-- ----------------------------
-- Table structure for t_person
-- ----------------------------
DROP TABLE IF EXISTS `t_person`;
CREATE TABLE `t_person`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_person
-- ----------------------------

-- ----------------------------
-- Table structure for t_roles
-- ----------------------------
DROP TABLE IF EXISTS `t_roles`;
CREATE TABLE `t_roles`  (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_roles
-- ----------------------------

-- ----------------------------
-- Table structure for t_rule_str
-- ----------------------------
DROP TABLE IF EXISTS `t_rule_str`;
CREATE TABLE `t_rule_str`  (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `str` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_rule_str
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imageherf` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `backgroud` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `redisflag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `confirm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `residence` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `donation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `captcha` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `agreement` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`, `username`, `email`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE COMMENT '设置唯一使用此作为登录账号 btree 索引',
  INDEX `phone`(`phone`) USING BTREE COMMENT '每个人一个手机，可以用多个账号，作为索引 不唯一',
  INDEX `email`(`email`) USING BTREE COMMENT '必须唯一'
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (4, NULL, NULL, 'naem', '1332854729@qq.com', NULL, NULL, NULL, NULL, NULL, '1332854729@qq.com', '1332854729@qq.com', '1332854729@qq.com', NULL, '1332854729', '1', '1332854729@qq.com', '1332854729@qq.com', '男', '1', 'true');
INSERT INTO `user` VALUES (5, NULL, NULL, '1332854729@qq.com', '1332854729@qq.com', NULL, NULL, NULL, NULL, NULL, '1332854729@qq.com', '1332854729@qq.com', '1332854729@qq.com', NULL, '1332854729@qq.com', '1', '1332854729@qq.com.org', '1332854729@qq.com', '男', '1332854729@qq.com', 'true');
INSERT INTO `user` VALUES (6, NULL, NULL, 'root', 'root', NULL, NULL, NULL, NULL, NULL, '1332854729@qq.com', 'root', 'root', NULL, '18211111111', '1', '1.com', 'root', '男', '111', 'true');
INSERT INTO `user` VALUES (7, NULL, NULL, 'zhansan', 'root', NULL, NULL, NULL, NULL, NULL, '1332854729@qq.com', 'root', 'root', NULL, '18211111111', '1', '1.com', 'root', '男', '111', 'true');
INSERT INTO `user` VALUES (8, NULL, NULL, 'lisi', '1332854729@qq.com', NULL, NULL, NULL, NULL, NULL, '1', 'root', 'haha', NULL, '18211111111', '1', '1.com', 'root', '男', '11', 'true');
INSERT INTO `user` VALUES (9, NULL, NULL, 'haha', '1332854729@qq.com', NULL, NULL, NULL, NULL, NULL, '1332854729@qq.com', '1332854729@qq.com', '1332854729@qq.com', NULL, '1332854729', '1', '1332854729@qq.com', '1332854729@qq.com', '男', '1', 'true');

SET FOREIGN_KEY_CHECKS = 1;
