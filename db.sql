/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootwwiwn
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootwwiwn` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootwwiwn`;

/*Table structure for table `banji` */

DROP TABLE IF EXISTS `banji`;

CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banji` (`banji`)
) ENGINE=InnoDB AUTO_INCREMENT=1614825836036 DEFAULT CHARSET=utf8 COMMENT='班级';

/*Data for the table `banji` */

insert  into `banji`(`id`,`addtime`,`banji`) values (21,'2021-03-04 10:22:30','班级1'),(22,'2021-03-04 10:22:30','班级2'),(23,'2021-03-04 10:22:30','班级3'),(24,'2021-03-04 10:22:30','班级4'),(25,'2021-03-04 10:22:30','班级5'),(26,'2021-03-04 10:22:30','班级6'),(1614825836035,'2021-03-04 10:43:55','高二（3）班');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootwwiwn/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springbootwwiwn/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springbootwwiwn/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `gonggaoxinxi` */

DROP TABLE IF EXISTS `gonggaoxinxi`;

CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614825783183 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggaoxinxi` */

insert  into `gonggaoxinxi`(`id`,`addtime`,`gonggaobiaoti`,`tupian`,`neirong`,`faburiqi`) values (11,'2021-03-04 10:22:30','公告标题1','http://localhost:8080/springbootwwiwn/upload/1614825700425.jpg','<p>内容1</p>','2021-03-03'),(12,'2021-03-04 10:22:30','公告标题2','http://localhost:8080/springbootwwiwn/upload/1614825708138.jpg','<p>内容2</p>','2021-03-03'),(13,'2021-03-04 10:22:30','公告标题3','http://localhost:8080/springbootwwiwn/upload/1614825715382.jpg','<p>内容3</p>','2021-03-03'),(14,'2021-03-04 10:22:30','公告标题4','http://localhost:8080/springbootwwiwn/upload/1614825723534.png','<p>内容4</p>','2021-03-03'),(15,'2021-03-04 10:22:30','公告标题5','http://localhost:8080/springbootwwiwn/upload/1614825732341.jpg','<p>内容5</p>','2021-03-03'),(16,'2021-03-04 10:22:30','公告标题6','http://localhost:8080/springbootwwiwn/upload/1614825739184.jpg','<p>内容6</p>','2021-03-03'),(1614825783182,'2021-03-04 10:43:02','关于课程线上选课通知','http://localhost:8080/springbootwwiwn/upload/1614825773941.jpg','<p>线上选课</p><p><img src=\"http://localhost:8080/springbootwwiwn/upload/1614825781261.jpg\"></p>','2021-03-03');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `renjiaokecheng` varchar(200) DEFAULT NULL COMMENT '任教课程',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614825865111 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`renjiaokecheng`,`lianxidianhua`) values (41,'2021-03-04 10:22:30','教师1','123456','教师姓名1','男','http://localhost:8080/springbootwwiwn/upload/jiaoshi_zhaopian1.jpg','职称1','任教课程1','13823888881'),(42,'2021-03-04 10:22:30','教师2','123456','教师姓名2','男','http://localhost:8080/springbootwwiwn/upload/jiaoshi_zhaopian2.jpg','职称2','任教课程2','13823888882'),(43,'2021-03-04 10:22:30','教师3','123456','教师姓名3','男','http://localhost:8080/springbootwwiwn/upload/jiaoshi_zhaopian3.jpg','职称3','任教课程3','13823888883'),(44,'2021-03-04 10:22:30','教师4','123456','教师姓名4','男','http://localhost:8080/springbootwwiwn/upload/jiaoshi_zhaopian4.jpg','职称4','任教课程4','13823888884'),(45,'2021-03-04 10:22:30','教师5','123456','教师姓名5','男','http://localhost:8080/springbootwwiwn/upload/jiaoshi_zhaopian5.jpg','职称5','任教课程5','13823888885'),(46,'2021-03-04 10:22:30','教师6','123456','教师姓名6','男','http://localhost:8080/springbootwwiwn/upload/jiaoshi_zhaopian6.jpg','职称6','任教课程6','13823888886'),(1614825865110,'2021-03-04 10:44:25','1','1','陈一','女','http://localhost:8080/springbootwwiwn/upload/1614825852326.jpg','中级教师','数学','12312312312');

/*Table structure for table `kechengleixing` */

DROP TABLE IF EXISTS `kechengleixing`;

CREATE TABLE `kechengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengleixing` (`kechengleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1614825878473 DEFAULT CHARSET=utf8 COMMENT='课程类型';

/*Data for the table `kechengleixing` */

insert  into `kechengleixing`(`id`,`addtime`,`kechengleixing`) values (51,'2021-03-04 10:22:30','课程类型1'),(52,'2021-03-04 10:22:30','课程类型2'),(53,'2021-03-04 10:22:30','课程类型3'),(54,'2021-03-04 10:22:30','课程类型4'),(55,'2021-03-04 10:22:30','课程类型5'),(56,'2021-03-04 10:22:30','课程类型6'),(1614825872020,'2021-03-04 10:44:31','专业课'),(1614825878472,'2021-03-04 10:44:37','文化课');

/*Table structure for table `kechengpingjia` */

DROP TABLE IF EXISTS `kechengpingjia`;

CREATE TABLE `kechengpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `kechengpingjia` longtext COMMENT '课程评价',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614826158316 DEFAULT CHARSET=utf8 COMMENT='课程评价';

/*Data for the table `kechengpingjia` */

insert  into `kechengpingjia`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`banji`,`xueqi`,`pingfen`,`kechengpingjia`,`pingjiariqi`,`jiaoshigonghao`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (111,'2021-03-04 10:22:30','课程名称1','课程类型1','班级1','学期1','1','课程评价1','2021-03-04','教师工号1','学号1','学生姓名1','是',''),(112,'2021-03-04 10:22:30','课程名称2','课程类型2','班级2','学期2','1','课程评价2','2021-03-04','教师工号2','学号2','学生姓名2','是',''),(113,'2021-03-04 10:22:30','课程名称3','课程类型3','班级3','学期3','1','课程评价3','2021-03-04','教师工号3','学号3','学生姓名3','是',''),(114,'2021-03-04 10:22:30','课程名称4','课程类型4','班级4','学期4','1','课程评价4','2021-03-04','教师工号4','学号4','学生姓名4','是',''),(115,'2021-03-04 10:22:30','课程名称5','课程类型5','班级5','学期5','1','课程评价5','2021-03-04','教师工号5','学号5','学生姓名5','是',''),(116,'2021-03-04 10:22:30','课程名称6','课程类型6','班级6','学期6','1','课程评价6','2021-03-04','教师工号6','学号6','学生姓名6','是',''),(1614826158315,'2021-03-04 10:49:17','数学','文化课','高二（3）班','上学期','10','很不错 的老师，基础知识扎实','2021-03-02','1','2','陈陈','是','这里可以回复学生的评论');

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  `xueqi` varchar(200) NOT NULL COMMENT '学期',
  `xingqi` varchar(200) NOT NULL COMMENT '星期',
  `shangkeshijian` varchar(200) NOT NULL COMMENT '上课时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614825920112 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`banji`,`xueqi`,`xingqi`,`shangkeshijian`,`jiaoshigonghao`,`jiaoshixingming`) values (61,'2021-03-04 10:22:30','课程名称1','课程类型1','班级1','上学期','星期一','第一节','教师工号1','教师姓名1'),(62,'2021-03-04 10:22:30','课程名称2','课程类型2','班级2','上学期','星期一','第一节','教师工号2','教师姓名2'),(63,'2021-03-04 10:22:30','课程名称3','课程类型3','班级3','上学期','星期一','第一节','教师工号3','教师姓名3'),(64,'2021-03-04 10:22:30','课程名称4','课程类型4','班级4','上学期','星期一','第一节','教师工号4','教师姓名4'),(65,'2021-03-04 10:22:30','课程名称5','课程类型5','班级5','上学期','星期一','第一节','教师工号5','教师姓名5'),(66,'2021-03-04 10:22:30','课程名称6','课程类型6','班级6','上学期','星期一','第一节','教师工号6','教师姓名6'),(1614825920111,'2021-03-04 10:45:19','数学','文化课','高二（3）班','上学期','星期一','第一节','1','陈一');

/*Table structure for table `kechengziyuan` */

DROP TABLE IF EXISTS `kechengziyuan`;

CREATE TABLE `kechengziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `kechengziliao` longtext COMMENT '课程资料',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `shangchuanriqi` date DEFAULT NULL COMMENT '上传日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614826080480 DEFAULT CHARSET=utf8 COMMENT='课程资源';

/*Data for the table `kechengziyuan` */

insert  into `kechengziyuan`(`id`,`addtime`,`kechengmingcheng`,`xueqi`,`kechengziliao`,`fujian`,`shangchuanriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`) values (121,'2021-03-04 10:22:30','课程名称1','学期1','课程资料1','','2021-03-04','教师工号1','教师姓名1','学号1','学生姓名1'),(122,'2021-03-04 10:22:30','课程名称2','学期2','课程资料2','','2021-03-04','教师工号2','教师姓名2','学号2','学生姓名2'),(123,'2021-03-04 10:22:30','课程名称3','学期3','课程资料3','','2021-03-04','教师工号3','教师姓名3','学号3','学生姓名3'),(124,'2021-03-04 10:22:30','课程名称4','学期4','课程资料4','','2021-03-04','教师工号4','教师姓名4','学号4','学生姓名4'),(125,'2021-03-04 10:22:30','课程名称5','学期5','课程资料5','','2021-03-04','教师工号5','教师姓名5','学号5','学生姓名5'),(126,'2021-03-04 10:22:30','课程名称6','学期6','课程资料6','','2021-03-04','教师工号6','教师姓名6','学号6','学生姓名6'),(1614826080479,'2021-03-04 10:48:00','数学','上学期','<p>课程资料内容</p><p>RHUTGRHYGRTY</p>','http://localhost:8080/springbootwwiwn/upload/1614826070243.doc','2021-03-03','1','陈一','2','陈陈');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','uelnnlqmyluxzz0dcjfbtmymcuzrqkgd','2021-03-04 10:40:14','2021-03-04 03:50:51'),(2,1614825942865,'2','xuesheng','学生','hgti5b7254al3jemk55ni5i6iut3g2ew','2021-03-04 10:45:48','2021-03-04 03:48:22'),(3,1614825865110,'1','jiaoshi','教师','zb88q9fj9il7f9rogwrnxxznmnvkgxl3','2021-03-04 10:46:31','2021-03-04 03:49:40');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-04 10:22:30');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614825942866 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`banji`) values (31,'2021-03-04 10:22:30','学生1','123456','学生姓名1','男','http://localhost:8080/springbootwwiwn/upload/xuesheng_touxiang1.jpg','13823888881','773890001@qq.com','班级1'),(32,'2021-03-04 10:22:30','学生2','123456','学生姓名2','男','http://localhost:8080/springbootwwiwn/upload/xuesheng_touxiang2.jpg','13823888882','773890002@qq.com','班级2'),(33,'2021-03-04 10:22:30','学生3','123456','学生姓名3','男','http://localhost:8080/springbootwwiwn/upload/xuesheng_touxiang3.jpg','13823888883','773890003@qq.com','班级3'),(34,'2021-03-04 10:22:30','学生4','123456','学生姓名4','男','http://localhost:8080/springbootwwiwn/upload/xuesheng_touxiang4.jpg','13823888884','773890004@qq.com','班级4'),(35,'2021-03-04 10:22:30','学生5','123456','学生姓名5','男','http://localhost:8080/springbootwwiwn/upload/xuesheng_touxiang5.jpg','13823888885','773890005@qq.com','班级5'),(36,'2021-03-04 10:22:30','学生6','123456','学生姓名6','男','http://localhost:8080/springbootwwiwn/upload/xuesheng_touxiang6.jpg','13823888886','773890006@qq.com','班级6'),(1614825942865,'2021-03-04 10:45:42','2','2','陈陈','女','http://localhost:8080/springbootwwiwn/upload/1614825955155.jpg','12345678978','789@qq.com','高二（3）班');

/*Table structure for table `xueshengxuanke` */

DROP TABLE IF EXISTS `xueshengxuanke`;

CREATE TABLE `xueshengxuanke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xuankeriqi` date DEFAULT NULL COMMENT '选课日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614825983605 DEFAULT CHARSET=utf8 COMMENT='学生选课';

/*Data for the table `xueshengxuanke` */

insert  into `xueshengxuanke`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`xueqi`,`banji`,`xuankeriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`beizhu`) values (71,'2021-03-04 10:22:30','课程名称1','课程类型1','学期1','班级1','2021-03-04','教师工号1','教师姓名1','学号1','学生姓名1','备注1'),(72,'2021-03-04 10:22:30','课程名称2','课程类型2','学期2','班级2','2021-03-04','教师工号2','教师姓名2','学号2','学生姓名2','备注2'),(73,'2021-03-04 10:22:30','课程名称3','课程类型3','学期3','班级3','2021-03-04','教师工号3','教师姓名3','学号3','学生姓名3','备注3'),(74,'2021-03-04 10:22:30','课程名称4','课程类型4','学期4','班级4','2021-03-04','教师工号4','教师姓名4','学号4','学生姓名4','备注4'),(75,'2021-03-04 10:22:30','课程名称5','课程类型5','学期5','班级5','2021-03-04','教师工号5','教师姓名5','学号5','学生姓名5','备注5'),(76,'2021-03-04 10:22:30','课程名称6','课程类型6','学期6','班级6','2021-03-04','教师工号6','教师姓名6','学号6','学生姓名6','备注6'),(1614825983604,'2021-03-04 10:46:23','数学','文化课','上学期','高二（3）班','2021-03-03','1','陈一','2','陈陈',NULL);

/*Table structure for table `zuoyebuzhi` */

DROP TABLE IF EXISTS `zuoyebuzhi`;

CREATE TABLE `zuoyebuzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zuoyeyaoqiu` longtext COMMENT '作业要求',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614826012454 DEFAULT CHARSET=utf8 COMMENT='作业布置';

/*Data for the table `zuoyebuzhi` */

insert  into `zuoyebuzhi`(`id`,`addtime`,`kechengmingcheng`,`xueqi`,`banji`,`zuoyeyaoqiu`,`faburiqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`) values (81,'2021-03-04 10:22:30','课程名称1','学期1','班级1','作业要求1','2021-03-04','教师工号1','教师姓名1','学号1','学生姓名1'),(82,'2021-03-04 10:22:30','课程名称2','学期2','班级2','作业要求2','2021-03-04','教师工号2','教师姓名2','学号2','学生姓名2'),(83,'2021-03-04 10:22:30','课程名称3','学期3','班级3','作业要求3','2021-03-04','教师工号3','教师姓名3','学号3','学生姓名3'),(84,'2021-03-04 10:22:30','课程名称4','学期4','班级4','作业要求4','2021-03-04','教师工号4','教师姓名4','学号4','学生姓名4'),(85,'2021-03-04 10:22:30','课程名称5','学期5','班级5','作业要求5','2021-03-04','教师工号5','教师姓名5','学号5','学生姓名5'),(86,'2021-03-04 10:22:30','课程名称6','学期6','班级6','作业要求6','2021-03-04','教师工号6','教师姓名6','学号6','学生姓名6'),(1614826012453,'2021-03-04 10:46:51','数学','上学期','高二（3）班','完成20道应用题','2021-03-03','1','陈一','2','陈陈');

/*Table structure for table `zuoyepingfen` */

DROP TABLE IF EXISTS `zuoyepingfen`;

CREATE TABLE `zuoyepingfen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zuoye` varchar(200) DEFAULT NULL COMMENT '作业',
  `tijiaoriqi` varchar(200) DEFAULT NULL COMMENT '提交日期',
  `pingfen` int(11) DEFAULT NULL COMMENT '评分',
  `pingyu` varchar(200) DEFAULT NULL COMMENT '评语',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614826226769 DEFAULT CHARSET=utf8 COMMENT='作业评分';

/*Data for the table `zuoyepingfen` */

insert  into `zuoyepingfen`(`id`,`addtime`,`kechengmingcheng`,`xueqi`,`banji`,`zuoye`,`tijiaoriqi`,`pingfen`,`pingyu`,`dengjiriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`) values (101,'2021-03-04 10:22:30','课程名称1','学期1','班级1','','提交日期1',1,'评语1','2021-03-04','教师工号1','教师姓名1','学号1','学生姓名1'),(102,'2021-03-04 10:22:30','课程名称2','学期2','班级2','','提交日期2',2,'评语2','2021-03-04','教师工号2','教师姓名2','学号2','学生姓名2'),(103,'2021-03-04 10:22:30','课程名称3','学期3','班级3','','提交日期3',3,'评语3','2021-03-04','教师工号3','教师姓名3','学号3','学生姓名3'),(104,'2021-03-04 10:22:30','课程名称4','学期4','班级4','','提交日期4',4,'评语4','2021-03-04','教师工号4','教师姓名4','学号4','学生姓名4'),(105,'2021-03-04 10:22:30','课程名称5','学期5','班级5','','提交日期5',5,'评语5','2021-03-04','教师工号5','教师姓名5','学号5','学生姓名5'),(106,'2021-03-04 10:22:30','课程名称6','学期6','班级6','','提交日期6',6,'评语6','2021-03-04','教师工号6','教师姓名6','学号6','学生姓名6'),(1614826226768,'2021-03-04 10:50:26','数学','上学期','高二（3）班','http://localhost:8080/springbootwwiwn/upload/1614826111509.doc','2021-03-02',90,'再接再厉','2021-03-03','1','陈一','2','陈陈');

/*Table structure for table `zuoyetijiao` */

DROP TABLE IF EXISTS `zuoyetijiao`;

CREATE TABLE `zuoyetijiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zuoye` varchar(200) DEFAULT NULL COMMENT '作业',
  `tijiaoriqi` date DEFAULT NULL COMMENT '提交日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614826114619 DEFAULT CHARSET=utf8 COMMENT='作业提交';

/*Data for the table `zuoyetijiao` */

insert  into `zuoyetijiao`(`id`,`addtime`,`kechengmingcheng`,`xueqi`,`banji`,`zuoye`,`tijiaoriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (91,'2021-03-04 10:22:30','课程名称1','学期1','班级1','','2021-03-04','教师工号1','教师姓名1','学号1','学生姓名1','是',''),(92,'2021-03-04 10:22:30','课程名称2','学期2','班级2','','2021-03-04','教师工号2','教师姓名2','学号2','学生姓名2','是',''),(93,'2021-03-04 10:22:30','课程名称3','学期3','班级3','','2021-03-04','教师工号3','教师姓名3','学号3','学生姓名3','是',''),(94,'2021-03-04 10:22:30','课程名称4','学期4','班级4','','2021-03-04','教师工号4','教师姓名4','学号4','学生姓名4','是',''),(95,'2021-03-04 10:22:30','课程名称5','学期5','班级5','','2021-03-04','教师工号5','教师姓名5','学号5','学生姓名5','是',''),(96,'2021-03-04 10:22:30','课程名称6','学期6','班级6','','2021-03-04','教师工号6','教师姓名6','学号6','学生姓名6','是',''),(1614826114618,'2021-03-04 10:48:33','数学','上学期','高二（3）班','http://localhost:8080/springbootwwiwn/upload/1614826111509.doc','2021-03-02','1','陈一','2','陈陈','是',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
