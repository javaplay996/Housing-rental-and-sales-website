/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jspm7xcvq
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jspm7xcvq` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jspm7xcvq`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspm7xcvq/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm7xcvq/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm7xcvq/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `fangdong` */

DROP TABLE IF EXISTS `fangdong`;

CREATE TABLE `fangdong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangdonghao` varchar(200) NOT NULL COMMENT '房东号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `fangdongshouji` varchar(200) DEFAULT NULL COMMENT '房东手机',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangdonghao` (`fangdonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614046621984 DEFAULT CHARSET=utf8 COMMENT='房东';

/*Data for the table `fangdong` */

insert  into `fangdong`(`id`,`addtime`,`fangdonghao`,`mima`,`fangdongxingming`,`fangdongshouji`,`xingbie`,`nianling`,`touxiang`) values (41,'2021-02-22 15:21:41','房东1','123456','房东姓名1','13823888881','男',1,'http://localhost:8080/jspm7xcvq/upload/fangdong_touxiang1.jpg'),(42,'2021-02-22 15:21:41','房东2','123456','房东姓名2','13823888882','男',2,'http://localhost:8080/jspm7xcvq/upload/fangdong_touxiang2.jpg'),(43,'2021-02-22 15:21:41','房东3','123456','房东姓名3','13823888883','男',3,'http://localhost:8080/jspm7xcvq/upload/fangdong_touxiang3.jpg'),(44,'2021-02-22 15:21:41','房东4','123456','房东姓名4','13823888884','男',4,'http://localhost:8080/jspm7xcvq/upload/fangdong_touxiang4.jpg'),(45,'2021-02-22 15:21:41','房东5','123456','房东姓名5','13823888885','男',5,'http://localhost:8080/jspm7xcvq/upload/fangdong_touxiang5.jpg'),(46,'2021-02-22 15:21:41','房东6','123456','房东姓名6','13823888886','男',6,'http://localhost:8080/jspm7xcvq/upload/fangdong_touxiang6.jpg'),(1614046621983,'2021-02-23 10:17:01','1','1','xxx房东','13823888881','男',40,'http://localhost:8080/jspm7xcvq/upload/1614046648452.jpg');

/*Table structure for table `fangwuchushou` */

DROP TABLE IF EXISTS `fangwuchushou`;

CREATE TABLE `fangwuchushou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chengshi` varchar(200) NOT NULL COMMENT '城市',
  `mianji` varchar(200) NOT NULL COMMENT '面积',
  `dizhi` varchar(200) NOT NULL COMMENT '地址',
  `chaoxiang` varchar(200) DEFAULT NULL COMMENT '朝向',
  `louceng` varchar(200) DEFAULT NULL COMMENT '楼层',
  `louhao` varchar(200) DEFAULT NULL COMMENT '楼号',
  `fangwusheshi` longtext COMMENT '房屋设施',
  `fangwujieshao` longtext COMMENT '房屋介绍',
  `chushoujiage` int(11) NOT NULL COMMENT '出售价格',
  `fangdonghao` varchar(200) DEFAULT NULL COMMENT '房东号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `fangdongshouji` varchar(200) DEFAULT NULL COMMENT '房东手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614046745553 DEFAULT CHARSET=utf8 COMMENT='房屋出售';

/*Data for the table `fangwuchushou` */

insert  into `fangwuchushou`(`id`,`addtime`,`fangwumingcheng`,`fangwuleixing`,`tupian`,`chengshi`,`mianji`,`dizhi`,`chaoxiang`,`louceng`,`louhao`,`fangwusheshi`,`fangwujieshao`,`chushoujiage`,`fangdonghao`,`fangdongxingming`,`fangdongshouji`) values (61,'2021-02-22 15:21:41','房屋名称1','房屋类型1','http://localhost:8080/jspm7xcvq/upload/fangwuchushou_tupian1.jpg','城市1','面积1','地址1','朝向1','楼层1','楼号1','房屋设施1','房屋介绍1',1,'房东号1','房东姓名1','13823888881'),(62,'2021-02-22 15:21:41','房屋名称2','房屋类型2','http://localhost:8080/jspm7xcvq/upload/fangwuchushou_tupian2.jpg','城市2','面积2','地址2','朝向2','楼层2','楼号2','房屋设施2','房屋介绍2',2,'房东号2','房东姓名2','13823888882'),(63,'2021-02-22 15:21:41','房屋名称3','房屋类型3','http://localhost:8080/jspm7xcvq/upload/fangwuchushou_tupian3.jpg','城市3','面积3','地址3','朝向3','楼层3','楼号3','房屋设施3','房屋介绍3',3,'房东号3','房东姓名3','13823888883'),(64,'2021-02-22 15:21:41','房屋名称4','房屋类型4','http://localhost:8080/jspm7xcvq/upload/fangwuchushou_tupian4.jpg','城市4','面积4','地址4','朝向4','楼层4','楼号4','房屋设施4','房屋介绍4',4,'房东号4','房东姓名4','13823888884'),(65,'2021-02-22 15:21:41','房屋名称5','房屋类型5','http://localhost:8080/jspm7xcvq/upload/fangwuchushou_tupian5.jpg','城市5','面积5','地址5','朝向5','楼层5','楼号5','房屋设施5','房屋介绍5',5,'房东号5','房东姓名5','13823888885'),(66,'2021-02-22 15:21:41','房屋名称6','房屋类型6','http://localhost:8080/jspm7xcvq/upload/fangwuchushou_tupian6.jpg','城市6','面积6','地址6','朝向6','楼层6','楼号6','房屋设施6','房屋介绍6',6,'房东号6','房东姓名6','13823888886'),(1614046745552,'2021-02-23 10:19:05','xxx房屋','房屋类型4','http://localhost:8080/jspm7xcvq/upload/1614046672017.jpg','xxxx城市','100平方米','xxxx路','南','2','202','xxxxxx','xxxxx\r\n',5000,'1','xxx房东','13823888881');

/*Table structure for table `fangwuchuzu` */

DROP TABLE IF EXISTS `fangwuchuzu`;

CREATE TABLE `fangwuchuzu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chengshi` varchar(200) DEFAULT NULL COMMENT '城市',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `chaoxiang` varchar(200) DEFAULT NULL COMMENT '朝向',
  `louceng` varchar(200) DEFAULT NULL COMMENT '楼层',
  `louhao` varchar(200) DEFAULT NULL COMMENT '楼号',
  `fangwusheshi` varchar(200) DEFAULT NULL COMMENT '房屋设施',
  `fangwujieshao` longtext COMMENT '房屋介绍',
  `chuzujiage` int(11) NOT NULL COMMENT '出租价格',
  `fangdonghao` varchar(200) DEFAULT NULL COMMENT '房东号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `fangdongshouji` varchar(200) DEFAULT NULL COMMENT '房东手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614046728531 DEFAULT CHARSET=utf8 COMMENT='房屋出租';

/*Data for the table `fangwuchuzu` */

insert  into `fangwuchuzu`(`id`,`addtime`,`fangwumingcheng`,`fangwuleixing`,`tupian`,`chengshi`,`mianji`,`dizhi`,`chaoxiang`,`louceng`,`louhao`,`fangwusheshi`,`fangwujieshao`,`chuzujiage`,`fangdonghao`,`fangdongxingming`,`fangdongshouji`) values (51,'2021-02-22 15:21:41','房屋名称1','房屋类型1','http://localhost:8080/jspm7xcvq/upload/fangwuchuzu_tupian1.jpg','城市1','面积1','地址1','朝向1','楼层1','楼号1','房屋设施1','房屋介绍1',1,'房东号1','房东姓名1','房东手机1'),(52,'2021-02-22 15:21:41','房屋名称2','房屋类型2','http://localhost:8080/jspm7xcvq/upload/fangwuchuzu_tupian2.jpg','城市2','面积2','地址2','朝向2','楼层2','楼号2','房屋设施2','房屋介绍2',2,'房东号2','房东姓名2','房东手机2'),(53,'2021-02-22 15:21:41','房屋名称3','房屋类型3','http://localhost:8080/jspm7xcvq/upload/fangwuchuzu_tupian3.jpg','城市3','面积3','地址3','朝向3','楼层3','楼号3','房屋设施3','房屋介绍3',3,'房东号3','房东姓名3','房东手机3'),(54,'2021-02-22 15:21:41','房屋名称4','房屋类型4','http://localhost:8080/jspm7xcvq/upload/fangwuchuzu_tupian4.jpg','城市4','面积4','地址4','朝向4','楼层4','楼号4','房屋设施4','房屋介绍4',4,'房东号4','房东姓名4','房东手机4'),(55,'2021-02-22 15:21:41','房屋名称5','房屋类型5','http://localhost:8080/jspm7xcvq/upload/fangwuchuzu_tupian5.jpg','城市5','面积5','地址5','朝向5','楼层5','楼号5','房屋设施5','房屋介绍5',5,'房东号5','房东姓名5','房东手机5'),(56,'2021-02-22 15:21:41','房屋名称6','房屋类型6','http://localhost:8080/jspm7xcvq/upload/fangwuchuzu_tupian6.jpg','城市6','面积6','地址6','朝向6','楼层6','楼号6','房屋设施6','房屋介绍6',6,'房东号6','房东姓名6','房东手机6'),(1614046728530,'2021-02-23 10:18:47','xxx房屋','房屋类型4','http://localhost:8080/jspm7xcvq/upload/1614046672017.jpg','xxxx城市','100平方米','xxxx路','南','2','202','xxxxxx','xxxxxxxx\r\nxxxx\r\n',100,'1','xxx房东','13823888881');

/*Table structure for table `fangwuleixing` */

DROP TABLE IF EXISTS `fangwuleixing`;

CREATE TABLE `fangwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='房屋类型';

/*Data for the table `fangwuleixing` */

insert  into `fangwuleixing`(`id`,`addtime`,`fangwuleixing`) values (21,'2021-02-22 15:21:41','xxxx房屋'),(22,'2021-02-22 15:21:41','房屋类型2'),(23,'2021-02-22 15:21:41','房屋类型3'),(24,'2021-02-22 15:21:41','房屋类型4'),(25,'2021-02-22 15:21:41','房屋类型5'),(26,'2021-02-22 15:21:41','房屋类型6');

/*Table structure for table `fangwuxinxi` */

DROP TABLE IF EXISTS `fangwuxinxi`;

CREATE TABLE `fangwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chengshi` varchar(200) NOT NULL COMMENT '城市',
  `dizhi` varchar(200) NOT NULL COMMENT '地址',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积',
  `chaoxiang` varchar(200) DEFAULT NULL COMMENT '朝向',
  `louceng` varchar(200) DEFAULT NULL COMMENT '楼层',
  `louhao` varchar(200) DEFAULT NULL COMMENT '楼号',
  `fangwusheshi` varchar(200) DEFAULT NULL COMMENT '房屋设施',
  `fangdonghao` varchar(200) DEFAULT NULL COMMENT '房东号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `fangdongshouji` varchar(200) DEFAULT NULL COMMENT '房东手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614046700521 DEFAULT CHARSET=utf8 COMMENT='房屋信息';

/*Data for the table `fangwuxinxi` */

insert  into `fangwuxinxi`(`id`,`addtime`,`fangwumingcheng`,`fangwuleixing`,`tupian`,`chengshi`,`dizhi`,`mianji`,`chaoxiang`,`louceng`,`louhao`,`fangwusheshi`,`fangdonghao`,`fangdongxingming`,`fangdongshouji`) values (31,'2021-02-22 15:21:41','房屋名称1','房屋类型1','http://localhost:8080/jspm7xcvq/upload/fangwuxinxi_tupian1.jpg','城市1','地址1','面积1','朝向1','楼层1','楼号1','房屋设施1','房东号1','房东姓名1','房东手机1'),(32,'2021-02-22 15:21:41','房屋名称2','房屋类型2','http://localhost:8080/jspm7xcvq/upload/fangwuxinxi_tupian2.jpg','城市2','地址2','面积2','朝向2','楼层2','楼号2','房屋设施2','房东号2','房东姓名2','房东手机2'),(33,'2021-02-22 15:21:41','房屋名称3','房屋类型3','http://localhost:8080/jspm7xcvq/upload/fangwuxinxi_tupian3.jpg','城市3','地址3','面积3','朝向3','楼层3','楼号3','房屋设施3','房东号3','房东姓名3','房东手机3'),(34,'2021-02-22 15:21:41','房屋名称4','房屋类型4','http://localhost:8080/jspm7xcvq/upload/fangwuxinxi_tupian4.jpg','城市4','地址4','面积4','朝向4','楼层4','楼号4','房屋设施4','房东号4','房东姓名4','房东手机4'),(35,'2021-02-22 15:21:41','房屋名称5','房屋类型5','http://localhost:8080/jspm7xcvq/upload/fangwuxinxi_tupian5.jpg','城市5','地址5','面积5','朝向5','楼层5','楼号5','房屋设施5','房东号5','房东姓名5','房东手机5'),(36,'2021-02-22 15:21:41','房屋名称6','房屋类型6','http://localhost:8080/jspm7xcvq/upload/fangwuxinxi_tupian6.jpg','城市6','地址6','面积6','朝向6','楼层6','楼号6','房屋设施6','房东号6','房东姓名6','房东手机6'),(1614046700520,'2021-02-23 10:18:19','xxx房屋','房屋类型4','http://localhost:8080/jspm7xcvq/upload/1614046672017.jpg','xxxx城市','xxxx路','100平方米','南','2','202','xxxxxx','1','xxx房东','13823888881');

/*Table structure for table `fangwuzixun` */

DROP TABLE IF EXISTS `fangwuzixun`;

CREATE TABLE `fangwuzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunbiaoti` varchar(200) DEFAULT NULL COMMENT '资讯标题',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `zixunneirong` longtext COMMENT '资讯内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `wenzhanglaiyuan` varchar(200) DEFAULT NULL COMMENT '文章来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='房屋资讯';

/*Data for the table `fangwuzixun` */

insert  into `fangwuzixun`(`id`,`addtime`,`zixunbiaoti`,`fengmiantupian`,`zixunneirong`,`fabushijian`,`faburen`,`wenzhanglaiyuan`) values (91,'2021-02-22 15:21:41','资讯标题1','http://localhost:8080/jspm7xcvq/upload/fangwuzixun_fengmiantupian1.jpg','资讯内容1xxxx\r\n','2021-02-22','发布人1','文章来源1'),(92,'2021-02-22 15:21:41','资讯标题2','http://localhost:8080/jspm7xcvq/upload/fangwuzixun_fengmiantupian2.jpg','资讯内容2','2021-02-22','发布人2','文章来源2'),(93,'2021-02-22 15:21:41','资讯标题3','http://localhost:8080/jspm7xcvq/upload/fangwuzixun_fengmiantupian3.jpg','资讯内容3','2021-02-22','发布人3','文章来源3'),(94,'2021-02-22 15:21:41','资讯标题4','http://localhost:8080/jspm7xcvq/upload/fangwuzixun_fengmiantupian4.jpg','资讯内容4','2021-02-22','发布人4','文章来源4'),(95,'2021-02-22 15:21:41','资讯标题5','http://localhost:8080/jspm7xcvq/upload/fangwuzixun_fengmiantupian5.jpg','资讯内容5','2021-02-22','发布人5','文章来源5'),(96,'2021-02-22 15:21:41','资讯标题6','http://localhost:8080/jspm7xcvq/upload/fangwuzixun_fengmiantupian6.jpg','资讯内容6','2021-02-22','发布人6','文章来源6');

/*Table structure for table `goumaidingdan` */

DROP TABLE IF EXISTS `goumaidingdan`;

CREATE TABLE `goumaidingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chengshi` varchar(200) DEFAULT NULL COMMENT '城市',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `chushoujiage` varchar(200) DEFAULT NULL COMMENT '出售价格',
  `fangdonghao` varchar(200) DEFAULT NULL COMMENT '房东号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `fangdongshouji` varchar(200) DEFAULT NULL COMMENT '房东手机',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `goumaishijian` date DEFAULT NULL COMMENT '购买时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614046944349 DEFAULT CHARSET=utf8 COMMENT='购买订单';

/*Data for the table `goumaidingdan` */

insert  into `goumaidingdan`(`id`,`addtime`,`dingdanbianhao`,`fangwumingcheng`,`fangwuleixing`,`tupian`,`chengshi`,`mianji`,`dizhi`,`chushoujiage`,`fangdonghao`,`fangdongxingming`,`fangdongshouji`,`yonghuming`,`yonghuxingming`,`yonghushouji`,`goumaishijian`,`beizhu`,`sfsh`,`shhf`,`ispay`) values (81,'2021-02-22 15:21:41','订单编号1','房屋名称1','房屋类型1','http://localhost:8080/jspm7xcvq/upload/goumaidingdan_tupian1.jpg','城市1','面积1','地址1','出售价格1','房东号1','房东姓名1','房东手机1','用户名1','用户姓名1','用户手机1','2021-02-22','备注1','是','','未支付'),(82,'2021-02-22 15:21:41','订单编号2','房屋名称2','房屋类型2','http://localhost:8080/jspm7xcvq/upload/goumaidingdan_tupian2.jpg','城市2','面积2','地址2','出售价格2','房东号2','房东姓名2','房东手机2','用户名2','用户姓名2','用户手机2','2021-02-22','备注2','是','','未支付'),(83,'2021-02-22 15:21:41','订单编号3','房屋名称3','房屋类型3','http://localhost:8080/jspm7xcvq/upload/goumaidingdan_tupian3.jpg','城市3','面积3','地址3','出售价格3','房东号3','房东姓名3','房东手机3','用户名3','用户姓名3','用户手机3','2021-02-22','备注3','是','','未支付'),(84,'2021-02-22 15:21:41','订单编号4','房屋名称4','房屋类型4','http://localhost:8080/jspm7xcvq/upload/goumaidingdan_tupian4.jpg','城市4','面积4','地址4','出售价格4','房东号4','房东姓名4','房东手机4','用户名4','用户姓名4','用户手机4','2021-02-22','备注4','是','','未支付'),(85,'2021-02-22 15:21:41','订单编号5','房屋名称5','房屋类型5','http://localhost:8080/jspm7xcvq/upload/goumaidingdan_tupian5.jpg','城市5','面积5','地址5','出售价格5','房东号5','房东姓名5','房东手机5','用户名5','用户姓名5','用户手机5','2021-02-22','备注5','是','','未支付'),(86,'2021-02-22 15:21:41','订单编号6','房屋名称6','房屋类型6','http://localhost:8080/jspm7xcvq/upload/goumaidingdan_tupian6.jpg','城市6','面积6','地址6','出售价格6','房东号6','房东姓名6','房东手机6','用户名6','用户姓名6','用户手机6','2021-02-22','备注6','是','','未支付'),(1614046944348,'2021-02-23 10:22:23','202122310221884116892','xxx房屋','房屋类型4','http://localhost:8080/jspm7xcvq/upload/1614046672017.jpg','xxxx城市','100平方米','xxxx路','5000','1','xxx房东','13823888881','1','xxx用户','13811111111','2021-02-23','xxxx','是','111','已支付');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614046956260 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-02-22 15:21:41',1,'用户名1','留言内容1','回复内容1'),(112,'2021-02-22 15:21:41',2,'用户名2','留言内容2','回复内容2'),(113,'2021-02-22 15:21:41',3,'用户名3','留言内容3','回复内容3'),(114,'2021-02-22 15:21:41',4,'用户名4','留言内容4','回复内容4'),(115,'2021-02-22 15:21:41',5,'用户名5','留言内容5','回复内容5'),(116,'2021-02-22 15:21:41',6,'用户名6','留言内容6','回复内容6'),(1614046956259,'2021-02-23 10:22:35',1614046906373,'1','反馈反馈',NULL);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614046986100 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1614046947826,'2021-02-23 10:22:27',1614046906373,1614046745552,'fangwuchushou','xxx房屋','http://localhost:8080/jspm7xcvq/upload/1614046672017.jpg'),(1614046986099,'2021-02-23 10:23:05',1614046906373,61,'fangwuchushou','房屋名称1','http://localhost:8080/jspm7xcvq/upload/fangwuchushou_tupian1.jpg');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','c4fcfhnl9guc67lt7l9y2lf930mmffvq','2021-02-23 10:09:32','2021-02-23 11:19:29'),(2,1614046621983,'1','fangdong','房东','y4y3oqwn0bk660w46v5eu3z13djh2nk8','2021-02-23 10:17:08','2021-02-23 11:23:33'),(3,1614046906373,'1','yonghu','用户','316ideyjn2r1jjo2sgokjmhpy9wzepp6','2021-02-23 10:21:50','2021-02-23 11:24:02');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-02-22 15:21:41');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1614046906374 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`touxiang`,`yonghuxingming`,`nianling`,`yonghushouji`) values (11,'2021-02-22 15:21:40','用户1','123456','http://localhost:8080/jspm7xcvq/upload/yonghu_touxiang1.jpg','用户姓名1',1,'13823888881'),(12,'2021-02-22 15:21:41','用户2','123456','http://localhost:8080/jspm7xcvq/upload/yonghu_touxiang2.jpg','用户姓名2',2,'13823888882'),(13,'2021-02-22 15:21:41','用户3','123456','http://localhost:8080/jspm7xcvq/upload/yonghu_touxiang3.jpg','用户姓名3',3,'13823888883'),(14,'2021-02-22 15:21:41','用户4','123456','http://localhost:8080/jspm7xcvq/upload/yonghu_touxiang4.jpg','用户姓名4',4,'13823888884'),(15,'2021-02-22 15:21:41','用户5','123456','http://localhost:8080/jspm7xcvq/upload/yonghu_touxiang5.jpg','用户姓名5',5,'13823888885'),(16,'2021-02-22 15:21:41','用户6','123456','http://localhost:8080/jspm7xcvq/upload/yonghu_touxiang6.jpg','用户姓名6',6,'13823888886'),(1614046906373,'2021-02-23 10:21:46','1','1','http://localhost:8080/jspm7xcvq/upload/1614046973532.jpg','xxx用户',20,'13811111111');

/*Table structure for table `zulindingdan` */

DROP TABLE IF EXISTS `zulindingdan`;

CREATE TABLE `zulindingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chuzujiage` varchar(200) DEFAULT NULL COMMENT '出租价格',
  `fangdonghao` varchar(200) DEFAULT NULL COMMENT '房东号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `fangdongshouji` varchar(200) DEFAULT NULL COMMENT '房东手机',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zulinshijianshijian` date DEFAULT NULL COMMENT '租赁时间时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614046930634 DEFAULT CHARSET=utf8 COMMENT='租赁订单';

/*Data for the table `zulindingdan` */

insert  into `zulindingdan`(`id`,`addtime`,`dingdanbianhao`,`fangwumingcheng`,`fangwuleixing`,`tupian`,`chuzujiage`,`fangdonghao`,`fangdongxingming`,`fangdongshouji`,`yonghuming`,`yonghuxingming`,`yonghushouji`,`beizhu`,`zulinshijianshijian`,`sfsh`,`shhf`,`ispay`) values (71,'2021-02-22 15:21:41','订单编号1','房屋名称1','房屋类型1','http://localhost:8080/jspm7xcvq/upload/zulindingdan_tupian1.jpg','出租价格1','房东号1','房东姓名1','房东手机1','用户名1','用户姓名1','用户手机1','备注1','2021-02-22','是','','未支付'),(72,'2021-02-22 15:21:41','订单编号2','房屋名称2','房屋类型2','http://localhost:8080/jspm7xcvq/upload/zulindingdan_tupian2.jpg','出租价格2','房东号2','房东姓名2','房东手机2','用户名2','用户姓名2','用户手机2','备注2','2021-02-22','是','','未支付'),(73,'2021-02-22 15:21:41','订单编号3','房屋名称3','房屋类型3','http://localhost:8080/jspm7xcvq/upload/zulindingdan_tupian3.jpg','出租价格3','房东号3','房东姓名3','房东手机3','用户名3','用户姓名3','用户手机3','备注3','2021-02-22','是','','未支付'),(74,'2021-02-22 15:21:41','订单编号4','房屋名称4','房屋类型4','http://localhost:8080/jspm7xcvq/upload/zulindingdan_tupian4.jpg','出租价格4','房东号4','房东姓名4','房东手机4','用户名4','用户姓名4','用户手机4','备注4','2021-02-22','是','','未支付'),(75,'2021-02-22 15:21:41','订单编号5','房屋名称5','房屋类型5','http://localhost:8080/jspm7xcvq/upload/zulindingdan_tupian5.jpg','出租价格5','房东号5','房东姓名5','房东手机5','用户名5','用户姓名5','用户手机5','备注5','2021-02-22','是','','未支付'),(76,'2021-02-22 15:21:41','订单编号6','房屋名称6','房屋类型6','http://localhost:8080/jspm7xcvq/upload/zulindingdan_tupian6.jpg','出租价格6','房东号6','房东姓名6','房东手机6','用户名6','用户姓名6','用户手机6','备注6','2021-02-22','是','','未支付'),(1614046930633,'2021-02-23 10:22:09','20212231022335602117','xxx房屋','房屋类型4','http://localhost:8080/jspm7xcvq/upload/1614046672017.jpg','100','1','xxx房东','13823888881','1','xxx用户','13811111111','xxx','2021-02-23','是','ok','已支付');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
