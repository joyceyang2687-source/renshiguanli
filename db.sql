/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - renshiguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`renshiguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `renshiguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'公司文化','upload/config1.jpg'),(2,'团队风采','upload/config2.jpg'),(3,'办公环境','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-06 10:59:31'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-06 10:59:31'),(3,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-04-06 10:59:31'),(4,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-04-06 10:59:31'),(5,'bumen_types','部门',1,'人力资源部',NULL,NULL,'2023-04-06 10:59:31'),(6,'bumen_types','部门',2,'技术研发部',NULL,NULL,'2023-04-06 10:59:31'),(7,'zhiwei_types','职位',1,'总经理',NULL,NULL,'2023-04-06 10:59:31'),(8,'zhiwei_types','职位',2,'部门经理',NULL,NULL,'2023-04-06 10:59:31'),(9,'xueli_types','学历状态',1,'专科',NULL,NULL,'2023-04-06 10:59:31'),(10,'xueli_types','学历状态',2,'本科',NULL,NULL,'2023-04-06 10:59:31'),(11,'xueli_types','学历状态',3,'硕士',NULL,NULL,'2023-04-06 10:59:31'),(12,'xueli_types','学历状态',4,'博士',NULL,NULL,'2023-04-06 10:59:31'),(13,'yuangong_kaoqin_types','员工考勤类型',1,'日常考勤',NULL,NULL,'2023-04-06 10:59:31'),(14,'yuangong_kaoqin_types','员工考勤类型',2,'加班考勤',NULL,NULL,'2023-04-06 10:59:31'),(15,'yuangong_kaoqin_list_types','打卡状态',1,'未打卡',NULL,NULL,'2023-04-06 10:59:31'),(16,'yuangong_kaoqin_list_types','打卡状态',2,'已打卡',NULL,NULL,'2023-04-06 10:59:31'),(17,'yuangongqingjia_types','请假类型',1,'病假',NULL,NULL,'2023-04-06 10:59:31'),(18,'yuangongqingjia_types','请假类型',2,'事假',NULL,NULL,'2023-04-06 10:59:31'),(19,'yuangongqingjia_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-04-06 10:59:31'),(20,'yuangongqingjia_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-04-06 10:59:31'),(21,'yuangongqingjia_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-04-06 10:59:31'),(22,'gonggao_types','公告类型',1,'人事公告',NULL,NULL,'2023-04-06 10:59:32'),(23,'gonggao_types','公告类型',2,'通知公告',NULL,NULL,'2023-04-06 10:59:32'),(24,'peixun_types','培训类型',1,'新员工培训',NULL,NULL,'2023-04-06 10:59:32'),(25,'peixun_types','培训类型',2,'技能培训',NULL,NULL,'2023-04-06 10:59:32'),(26,'peixun_types','培训类型',3,'管理培训',NULL,NULL,'2023-04-06 10:59:32'),(27,'peixun_types','培训类型',4,'安全培训',NULL,NULL,'2023-04-06 10:59:32'),(28,'zhaopin_types','招聘类型',1,'社会招聘',NULL,NULL,'2023-04-06 10:59:32'),(29,'zhaopin_types','招聘类型',2,'校园招聘',NULL,NULL,'2023-04-06 10:59:32'),(30,'zhaopin_types','招聘类型',3,'内部推荐',NULL,NULL,'2023-04-06 10:59:32'),(31,'zhaopin_types','招聘类型',4,'猎头招聘',NULL,NULL,'2023-04-06 10:59:32'),(32,'renshidiaodong_types','人事调动类型',1,'晋升',NULL,NULL,'2023-04-06 10:59:32'),(33,'renshidiaodong_types','人事调动类型',2,'平调',NULL,NULL,'2023-04-06 10:59:32'),(34,'renshidiaodong_types','人事调动类型',3,'降职',NULL,NULL,'2023-04-06 10:59:32'),(35,'renshidiaodong_types','人事调动类型',4,'部门调动',NULL,NULL,'2023-04-06 10:59:32'),(36,'jixiao_types','绩效类型',1,'月度绩效',NULL,NULL,'2023-04-06 10:59:32'),(37,'jixiao_types','绩效类型',2,'季度绩效',NULL,NULL,'2023-04-06 10:59:32'),(38,'jixiao_types','绩效类型',3,'半年度绩效',NULL,NULL,'2023-04-06 10:59:32'),(39,'jixiao_types','绩效类型',4,'年度绩效',NULL,NULL,'2023-04-06 10:59:32'),(40,'bumen_types','部门',3,'市场营销部',NULL,NULL,'2023-04-06 10:59:31'),(41,'zhiwei_types','职位',3,'技术主管',NULL,NULL,'2023-04-06 10:59:31'),(42,'zhiwei_types','职位',4,'人事专员',NULL,NULL,'2023-04-06 10:59:31');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'关于2023年度绩效考核的通知','upload/gonggao1.jpg',1,'2023-04-06 11:00:19','<p>各部门：</p><p>根据公司年度工作计划，现启动2023年度员工绩效考核工作。请各部门于4月15日前完成本部门员工的绩效评估工作，并将考核结果报送人力资源部。</p><p>人力资源部</p>','2023-04-06 11:00:19'),(2,'五一劳动节放假通知','upload/gonggao2.jpg',2,'2023-04-20 09:00:00','<p>全体员工：</p><p>根据国家法定节假日安排，2023年五一劳动节放假时间为4月29日至5月3日，共5天。请各部门做好假期值班安排，确保工作正常运转。</p><p>行政部</p>','2023-04-20 09:00:00'),(3,'关于开展员工技能培训的通知','upload/gonggao3.jpg',1,'2023-05-10 10:30:00','<p>为提升员工专业技能，公司将于5月20日起开展系列技能培训课程，包括项目管理、沟通技巧、办公软件应用等。请各部门积极组织员工参加。</p><p>人力资源部</p>','2023-05-10 10:30:00'),(4,'端午节放假安排','upload/gonggao4.jpg',2,'2023-06-15 14:00:00','<p>全体员工：</p><p>2023年端午节放假时间为6月22日至24日，共3天。6月25日（周日）正常上班。祝大家节日快乐！</p><p>行政部</p>','2023-06-15 14:00:00'),(5,'关于调整考勤打卡时间的通知','upload/gonggao5.jpg',2,'2023-07-01 08:30:00','<p>为进一步规范考勤管理，自7月10日起，公司调整上班打卡时间为8:30-9:00，下班打卡时间为17:30-18:00。请全体员工按时打卡。</p><p>行政部</p>','2023-07-01 08:30:00'),(6,'关于新员工入职培训的通知','upload/gonggao6.jpg',1,'2023-07-15 09:00:00','<p>2023年第三季度新员工入职培训将于7月25日至27日在公司培训室举行，请相关人员准时参加。培训内容包括企业文化、规章制度、业务知识等。</p><p>人力资源部</p>','2023-07-15 09:00:00');

/*Table structure for table `jixiao` */

DROP TABLE IF EXISTS `jixiao`;

CREATE TABLE `jixiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `jixiao_uuid_number` varchar(200) DEFAULT NULL COMMENT '绩效编号',
  `jixiao_name` varchar(200) DEFAULT NULL COMMENT '绩效标题  Search111 ',
  `jixiao_file` varchar(200) DEFAULT NULL COMMENT '附件  Search111 ',
  `jixiao_types` int(11) DEFAULT NULL COMMENT '绩效类型 Search111',
  `jixiao_dafen` decimal(10,2) DEFAULT NULL COMMENT '绩效打分',
  `pinggu_time` timestamp NULL DEFAULT NULL COMMENT '评估时间',
  `jixiao_content` longtext COMMENT '打分缘由 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='绩效';

/*Data for the table `jixiao` */

insert  into `jixiao`(`id`,`yuangong_id`,`jixiao_uuid_number`,`jixiao_name`,`jixiao_file`,`jixiao_types`,`jixiao_dafen`,`pinggu_time`,`jixiao_content`,`insert_time`,`create_time`) values (1,1,'JX202301001','张伟2023年1月绩效考核','upload/jixiao1.pdf',1,'92.00','2023-01-31 17:00:00','<p>工作态度积极，招聘任务完成率达105%，新员工入职培训组织有序。</p>','2023-01-31 17:00:00','2023-01-31 17:00:00'),(2,2,'JX202301002','刘洋2023年1月绩效考核','upload/jixiao2.pdf',1,'95.00','2023-01-31 17:00:00','<p>完成核心系统重构，代码质量优秀，无重大Bug，技术分享积极。</p>','2023-01-31 17:00:00','2023-01-31 17:00:00'),(3,3,'JX202301003','王芳2023年1月绩效考核','upload/jixiao3.pdf',1,'88.00','2023-01-31 17:00:00','<p>市场推广活动效果良好，品牌曝光度提升15%，需加强数据分析能力。</p>','2023-01-31 17:00:00','2023-01-31 17:00:00'),(4,4,'JX202301004','陈明2023年1月绩效考核','upload/jixiao4.pdf',1,'90.00','2023-01-31 17:00:00','<p>财务报表准确及时，成本控制有效，预算执行率98%。</p>','2023-01-31 17:00:00','2023-01-31 17:00:00'),(5,5,'JX202301005','赵丽2023年1月绩效考核','upload/jixiao5.pdf',1,'85.00','2023-01-31 17:00:00','<p>行政事务处理及时，办公用品采购节省成本8%，服务态度热情。</p>','2023-01-31 17:00:00','2023-01-31 17:00:00'),(6,1,'JX202302001','张伟2023年第一季度绩效','upload/jixiao6.pdf',2,'91.00','2023-03-31 17:00:00','<p>季度招聘目标完成率110%，员工满意度调查组织良好，建议加强绩效管理培训。</p>','2023-03-31 17:00:00','2023-03-31 17:00:00'),(7,2,'JX202302002','刘洋2023年第一季度绩效','upload/jixiao7.pdf',2,'96.00','2023-03-31 17:00:00','<p>主导完成移动端项目开发，按时交付无延期，获得客户高度评价。</p>','2023-03-31 17:00:00','2023-03-31 17:00:00'),(8,3,'JX202302003','王芳2023年第一季度绩效','upload/jixiao8.pdf',2,'89.00','2023-03-31 17:00:00','<p>季度销售额达成率95%，新客户开发12家，团队协作良好。</p>','2023-03-31 17:00:00','2023-03-31 17:00:00');

/*Table structure for table `peixun` */

DROP TABLE IF EXISTS `peixun`;

CREATE TABLE `peixun` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `peixun_uuid_number` varchar(200) DEFAULT NULL COMMENT '培训编号',
  `peixun_name` varchar(200) DEFAULT NULL COMMENT '培训标题  Search111 ',
  `peixun_types` int(11) DEFAULT NULL COMMENT '培训类型 Search111',
  `kaishi_time` date DEFAULT NULL COMMENT '培训开始时间',
  `jieshu_time` date DEFAULT NULL COMMENT '培训结束时间',
  `peixun_content` longtext COMMENT '培训内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='培训';

/*Data for the table `peixun` */

insert  into `peixun`(`id`,`yuangong_id`,`peixun_uuid_number`,`peixun_name`,`peixun_types`,`kaishi_time`,`jieshu_time`,`peixun_content`,`insert_time`,`create_time`) values (1,1,'PX202301001','2023年新员工入职培训',1,'2023-01-10','2023-01-12','<p>培训内容：1.公司发展历程及企业文化 2.规章制度及员工手册 3.考勤及薪酬福利制度 4.信息安全及保密协议</p>','2023-01-08 09:00:00','2023-01-08 09:00:00'),(2,2,'PX202302001','Java高级开发技术培训',2,'2023-02-15','2023-02-17','<p>培训内容：1.Spring Boot微服务架构 2.分布式系统设计 3.高并发解决方案 4.代码优化与性能调优</p>','2023-02-10 10:00:00','2023-02-10 10:00:00'),(3,3,'PX202303001','市场营销策略培训',2,'2023-03-20','2023-03-21','<p>培训内容：1.市场分析与调研方法 2.品牌推广策略 3.数字化营销工具应用 4.客户关系管理</p>','2023-03-15 14:00:00','2023-03-15 14:00:00'),(4,4,'PX202304001','财务管理规范培训',3,'2023-04-10','2023-04-11','<p>培训内容：1.财务报表编制规范 2.税务筹划与合规 3.成本控制方法 4.内部审计要点</p>','2023-04-05 09:30:00','2023-04-05 09:30:00'),(5,5,'PX202305001','消防安全培训',4,'2023-05-08','2023-05-08','<p>培训内容：1.消防安全知识 2.灭火器使用方法 3.火灾逃生演练 4.安全隐患排查</p>','2023-05-05 08:30:00','2023-05-05 08:30:00'),(6,1,'PX202306001','人力资源管理提升培训',3,'2023-06-12','2023-06-14','<p>培训内容：1.人才招聘与甄选技巧 2.绩效考核体系设计 3.员工关系管理 4.劳动法律法规解读</p>','2023-06-08 10:00:00','2023-06-08 10:00:00');

/*Table structure for table `renshidiaodong` */

DROP TABLE IF EXISTS `renshidiaodong`;

CREATE TABLE `renshidiaodong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `renshidiaodong_uuid_number` varchar(200) DEFAULT NULL COMMENT '人事调动编号',
  `renshidiaodong_types` int(11) DEFAULT NULL COMMENT '人事调动类型 Search111',
  `diaodong_time` timestamp NULL DEFAULT NULL COMMENT '调动时间',
  `yuan_bumen` varchar(200) DEFAULT NULL COMMENT '原部门',
  `yuan_zhiwei` varchar(200) DEFAULT NULL COMMENT '原职位',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门 Search111 ',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位 Search111 ',
  `renshidiaodong_content` longtext COMMENT '调动缘由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='人事调动';

/*Data for the table `renshidiaodong` */

insert  into `renshidiaodong`(`id`,`yuangong_id`,`renshidiaodong_uuid_number`,`renshidiaodong_types`,`diaodong_time`,`yuan_bumen`,`yuan_zhiwei`,`bumen_types`,`zhiwei_types`,`renshidiaodong_content`,`insert_time`,`create_time`) values (1,1,'DD202301001',1,'2023-03-15 09:00:00','人力资源部','人事专员',1,4,'工作表现优秀，晋升为人事专员负责招聘板块','2023-03-15 09:00:00','2023-03-15 09:00:00'),(2,2,'DD202302001',1,'2023-06-01 09:00:00','技术研发部','初级工程师',2,5,'技术能力突出，晋升为软件工程师','2023-06-01 09:00:00','2023-06-01 09:00:00'),(3,3,'DD202303001',2,'2023-04-20 09:00:00','销售部','销售专员',3,2,'因业务能力出色，平调至市场营销部担任部门经理','2023-04-20 09:00:00','2023-04-20 09:00:00'),(4,4,'DD202304001',4,'2023-02-10 09:00:00','行政部','行政专员',4,6,'因公司架构调整，调动至财务部担任财务主管','2023-02-10 09:00:00','2023-02-10 09:00:00'),(5,5,'DD202305001',2,'2023-05-15 09:00:00','人力资源部','行政助理',5,7,'因个人发展需求，平调至行政部担任行政专员','2023-05-15 09:00:00','2023-05-15 09:00:00');

/*Table structure for table `single_seach` */

DROP TABLE IF EXISTS `single_seach`;

CREATE TABLE `single_seach` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `single_seach_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `single_seach_content` longtext COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='单页数据';

/*Data for the table `single_seach` */

insert  into `single_seach`(`id`,`single_seach_name`,`single_seach_types`,`single_seach_photo`,`single_seach_content`,`create_time`) values (1,'公司介绍',1,'upload/config1.jpg','<p>华信科技有限公司成立于2010年，是一家专注于企业信息化解决方案的高新技术企业。公司总部位于北京，在上海、深圳、杭州设有分支机构。</p><p>公司秉承"科技创新、服务至上"的经营理念，为客户提供专业的人力资源管理系统、企业ERP系统、办公自动化系统等软件产品和服务。</p><p>目前公司拥有员工200余人，其中研发团队占比60%，具有丰富的行业经验和专业技术能力。</p>','2023-04-11 13:13:45'),(2,'联系我们',2,'upload/config2.jpg','<p><strong>公司地址：</strong>北京市海淀区中关村软件园二期8号楼</p><p><strong>联系电话：</strong>010-12345678</p><p><strong>服务热线：</strong>400-888-9999</p><p><strong>电子邮箱：</strong>contact@huaxintech.com</p><p><strong>工作时间：</strong>周一至周五 9:00-18:00</p>','2023-04-11 13:13:45');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','y0510vmdvuaqjsiviu8s45jzb6orvw9s','2023-04-06 11:04:34','2023-04-11 14:31:18'),(2,2,'a2','yuangong','员工','jbxqtd15nb1n9vbvzgsfk47fhr3vvpsa','2023-04-06 11:21:42','2023-04-06 12:21:42'),(3,1,'a1','yuangong','员工','2alpa723ptsyxm2ta1a10nuvzq2db8pm','2023-04-06 11:30:11','2023-04-06 12:30:11'),(4,1,'a1','yonghu','用户','g0je3qt4uyn54v5rsp6978jwmtpubzk9','2023-04-11 13:19:48','2023-04-11 14:19:48'),(5,6,'a5','yonghu','用户','yhfrqzaqpxu3by6ut7pc9udpq4ps01t1','2023-04-11 13:23:08','2023-04-11 14:23:08');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-06 10:59:31');

/*Table structure for table `xinzi` */

DROP TABLE IF EXISTS `xinzi`;

CREATE TABLE `xinzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `xinzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '薪资编号 Search111 ',
  `xinzi_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111 ',
  `xinzi_month` varchar(200) DEFAULT NULL COMMENT '月份 Search111 ',
  `jiben_jine` decimal(10,2) DEFAULT NULL COMMENT '基本工资',
  `jiangjin_jine` decimal(10,2) DEFAULT NULL COMMENT '奖金',
  `jixiao_jine` decimal(10,2) DEFAULT NULL COMMENT '绩效',
  `butie_jine` decimal(10,2) DEFAULT NULL COMMENT '补贴',
  `shifa_jine` decimal(10,2) DEFAULT NULL COMMENT '实发',
  `xinzi_content` longtext COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='薪资';

/*Data for the table `xinzi` */

insert  into `xinzi`(`id`,`yuangong_id`,`xinzi_uuid_number`,`xinzi_name`,`xinzi_month`,`jiben_jine`,`jiangjin_jine`,`jixiao_jine`,`butie_jine`,`shifa_jine`,`xinzi_content`,`insert_time`,`create_time`) values (1,1,'XZ202301001','张伟2023年1月工资','2023-01','8000.00','500.00','920.00','800.00','8636.00','全勤，绩效考核优秀','2023-02-05 10:00:00','2023-02-05 10:00:00'),(2,2,'XZ202301002','刘洋2023年1月工资','2023-01','15000.00','2000.00','1425.00','1000.00','16491.00','全勤，项目按时交付奖金','2023-02-05 10:00:00','2023-02-05 10:00:00'),(3,3,'XZ202301003','王芳2023年1月工资','2023-01','12000.00','3000.00','1056.00','800.00','14304.00','全勤，销售提成奖励','2023-02-05 10:00:00','2023-02-05 10:00:00'),(4,4,'XZ202301004','陈明2023年1月工资','2023-01','10000.00','800.00','900.00','600.00','10454.00','全勤，年终报表完成奖','2023-02-05 10:00:00','2023-02-05 10:00:00'),(5,5,'XZ202301005','赵丽2023年1月工资','2023-01','6000.00','300.00','510.00','500.00','6207.00','全勤','2023-02-05 10:00:00','2023-02-05 10:00:00'),(6,1,'XZ202302001','张伟2023年2月工资','2023-02','8000.00','600.00','880.00','800.00','8716.00','全勤，招聘任务超额完成','2023-03-05 10:00:00','2023-03-05 10:00:00'),(7,2,'XZ202302002','刘洋2023年2月工资','2023-02','15000.00','1500.00','1380.00','1000.00','16026.00','全勤','2023-03-05 10:00:00','2023-03-05 10:00:00'),(8,3,'XZ202302003','王芳2023年2月工资','2023-02','12000.00','2500.00','1020.00','800.00','13872.00','全勤，季度营销目标达成','2023-03-05 10:00:00','2023-03-05 10:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`jinyong_types`,`create_time`) values (1,'sunqiang','123456','孙强','13911223344','110108199512203456','upload/yuangong1.jpg',1,'sunqiang@163.com',1,'2023-04-11 11:43:12'),(2,'zhouxia','123456','周霞','13822334455','320106199307154567','upload/yuangong2.jpg',2,'zhouxia@qq.com',1,'2023-04-11 11:43:12'),(3,'wujun','123456','吴军','13733445566','440305199108125678','upload/yuangong3.jpg',1,'wujun@126.com',2,'2023-04-11 11:43:12'),(6,'huangying','123456','黄莹','13644556677','510107199409186789','upload/1681190613708.jpg',2,'huangying@gmail.com',1,'2023-04-11 13:23:03');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门 Search111 ',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位 Search111 ',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `xueli_types` int(11) DEFAULT NULL COMMENT '学历状态 Search111 ',
  `yuangong_jiaoyu_content` longtext COMMENT '教育经历',
  `yuangong_gongzuo_content` longtext COMMENT '工作经历',
  `shangpin_shixi_content` longtext COMMENT '实习经历',
  `shangpin_rongu_content` longtext COMMENT '所获荣誉',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`bumen_types`,`zhiwei_types`,`yuangong_email`,`xueli_types`,`yuangong_jiaoyu_content`,`yuangong_gongzuo_content`,`shangpin_shixi_content`,`shangpin_rongu_content`,`jinyong_types`,`create_time`) values (1,'zhangwei','123456','张伟','13812345678','110105199203151234','upload/yuangong1.jpg',1,1,4,'zhangwei@company.com',2,'<p>2010-2014 北京大学 人力资源管理专业 本科</p>','<p>2014-2018 某科技公司 人事专员</p><p>2018-2020 某集团公司 人事主管</p>','<p>2013年暑假 某人力资源公司 实习生</p>','<p>2019年度优秀员工</p><p>2020年人力资源管理师证书</p>',1,'2023-04-06 11:00:19'),(2,'liuyang','123456','刘洋','13987654321','310115199105201567','upload/yuangong2.jpg',1,2,5,'liuyang@company.com',3,'<p>2009-2013 清华大学 计算机科学与技术 本科</p><p>2013-2016 清华大学 软件工程 硕士</p>','<p>2016-2019 某互联网公司 Java开发工程师</p><p>2019-2023 某科技集团 高级软件工程师</p>','<p>2015年 某知名互联网公司 后端开发实习</p>','<p>2018年度技术创新奖</p><p>2021年优秀项目负责人</p>',1,'2023-04-06 11:00:19'),(3,'wangfang','123456','王芳','13666778899','440106199308082345','upload/yuangong3.jpg',2,3,2,'wangfang@company.com',2,'<p>2011-2015 复旦大学 市场营销专业 本科</p>','<p>2015-2018 某广告公司 市场专员</p><p>2018-2023 某集团公司 市场部经理</p>','<p>2014年 某4A广告公司 策划实习生</p>','<p>2020年度销售冠军</p><p>2022年最佳团队管理奖</p>',1,'2023-04-06 11:00:19'),(4,'chenming','123456','陈明','13555667788','320102199001153456','upload/yuangong4.jpg',1,4,6,'chenming@company.com',2,'<p>2008-2012 上海财经大学 会计学专业 本科</p>','<p>2012-2016 某会计师事务所 审计员</p><p>2016-2023 某集团公司 财务主管</p>','<p>2011年 某会计师事务所 审计实习生</p>','<p>注册会计师资格证书</p><p>2021年度财务管理先进个人</p>',1,'2023-04-06 11:00:19'),(5,'zhaoli','123456','赵丽','13888990011','510105199206124567','upload/yuangong5.jpg',2,5,7,'zhaoli@company.com',1,'<p>2011-2014 四川大学 行政管理专业 专科</p>','<p>2014-2018 某物业公司 行政文员</p><p>2018-2023 某集团公司 行政专员</p>','<p>2013年 某企业 行政助理实习</p>','<p>2020年度服务之星</p>',1,'2023-04-06 11:00:19');

/*Table structure for table `yuangong_kaoqin` */

DROP TABLE IF EXISTS `yuangong_kaoqin`;

CREATE TABLE `yuangong_kaoqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_kaoqin_uuid_number` varchar(200) DEFAULT NULL COMMENT '考勤唯一编号 Search111 ',
  `yuangong_kaoqin_name` varchar(200) DEFAULT NULL COMMENT '考勤标题 Search111 ',
  `yuangong_kaoqin_types` int(11) DEFAULT NULL COMMENT '员工考勤类型 Search111',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门 Search111 ',
  `yuangong_kaoqin_content` longtext COMMENT '考勤详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '考勤发起时间',
  `jiezhi_time` timestamp NULL DEFAULT NULL COMMENT '考勤截止时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='员工考勤';

/*Data for the table `yuangong_kaoqin` */

insert  into `yuangong_kaoqin`(`id`,`yuangong_kaoqin_uuid_number`,`yuangong_kaoqin_name`,`yuangong_kaoqin_types`,`bumen_types`,`yuangong_kaoqin_content`,`insert_time`,`jiezhi_time`,`create_time`) values (1,'KQ202301001','2023年1月人力资源部日常考勤',1,1,'请全体人力资源部员工按时完成每日考勤打卡','2023-01-01 08:30:00','2023-01-31 18:00:00','2023-01-01 08:30:00'),(2,'KQ202301002','2023年1月技术研发部日常考勤',1,2,'请全体技术研发部员工按时完成每日考勤打卡','2023-01-01 08:30:00','2023-01-31 18:00:00','2023-01-01 08:30:00'),(3,'KQ202302001','2023年2月人力资源部日常考勤',1,1,'请全体人力资源部员工按时完成每日考勤打卡','2023-02-01 08:30:00','2023-02-28 18:00:00','2023-02-01 08:30:00'),(4,'KQ202302002','2023年2月技术研发部日常考勤',1,2,'请全体技术研发部员工按时完成每日考勤打卡','2023-02-01 08:30:00','2023-02-28 18:00:00','2023-02-01 08:30:00'),(5,'KQ202303001','2023年3月市场营销部日常考勤',1,3,'请全体市场营销部员工按时完成每日考勤打卡','2023-03-01 08:30:00','2023-03-31 18:00:00','2023-03-01 08:30:00'),(6,'KQ202303002','2023年3月项目加班考勤',2,2,'技术研发部春节后项目冲刺加班考勤','2023-03-10 18:00:00','2023-03-20 22:00:00','2023-03-10 18:00:00');

/*Table structure for table `yuangong_kaoqin_list` */

DROP TABLE IF EXISTS `yuangong_kaoqin_list`;

CREATE TABLE `yuangong_kaoqin_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `yuangong_kaoqin_id` int(11) DEFAULT NULL COMMENT '考勤',
  `yuangong_kaoqin_list_types` int(11) DEFAULT NULL COMMENT '打卡状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '打卡时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='员工考勤详情';

/*Data for the table `yuangong_kaoqin_list` */

insert  into `yuangong_kaoqin_list`(`id`,`yuangong_id`,`yuangong_kaoqin_id`,`yuangong_kaoqin_list_types`,`insert_time`,`update_time`,`create_time`) values (1,1,1,2,'2023-01-03 08:28:00','2023-01-03 08:28:00','2023-01-03 08:28:00'),(2,1,1,2,'2023-01-04 08:35:00','2023-01-04 08:35:00','2023-01-04 08:35:00'),(3,2,2,2,'2023-01-03 08:45:00','2023-01-03 08:45:00','2023-01-03 08:45:00'),(4,2,2,2,'2023-01-04 08:50:00','2023-01-04 08:50:00','2023-01-04 08:50:00'),(5,3,5,2,'2023-03-02 08:40:00','2023-03-02 08:40:00','2023-03-02 08:40:00'),(6,2,6,2,'2023-03-10 18:30:00','2023-03-10 21:45:00','2023-03-10 18:30:00'),(7,4,3,2,'2023-02-01 08:25:00','2023-02-01 08:25:00','2023-02-01 08:25:00'),(8,5,3,2,'2023-02-01 08:55:00','2023-02-01 08:55:00','2023-02-01 08:55:00');

/*Table structure for table `yuangongqingjia` */

DROP TABLE IF EXISTS `yuangongqingjia`;

CREATE TABLE `yuangongqingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int(200) DEFAULT NULL COMMENT '员工',
  `yuangongqingjia_name` varchar(200) DEFAULT NULL COMMENT '请假标题 Search111 ',
  `yuangongqingjia_text` longtext COMMENT '请假缘由',
  `yuangongqingjia_types` int(11) DEFAULT NULL COMMENT '请假类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `yuangongqingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `yuangongqingjia_number` int(200) DEFAULT NULL COMMENT '请假天数',
  `yuangongqingjia_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `yuangongqingjia_yesno_text` longtext COMMENT '处理意见',
  `yuangongqingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='员工请假';

/*Data for the table `yuangongqingjia` */

insert  into `yuangongqingjia`(`id`,`yuangong_id`,`yuangongqingjia_name`,`yuangongqingjia_text`,`yuangongqingjia_types`,`insert_time`,`yuangongqingjia_time`,`yuangongqingjia_number`,`yuangongqingjia_yesno_types`,`yuangongqingjia_yesno_text`,`yuangongqingjia_shenhe_time`,`create_time`) values (1,1,'张伟病假申请','因感冒发烧需要休息治疗',1,'2023-02-10 09:00:00','2023-02-11 00:00:00',2,2,'注意休息，早日康复','2023-02-10 10:30:00','2023-02-10 09:00:00'),(2,2,'刘洋事假申请','家中有急事需要回老家处理',2,'2023-03-15 08:30:00','2023-03-16 00:00:00',3,2,'同意，注意安全','2023-03-15 09:00:00','2023-03-15 08:30:00'),(3,3,'王芳年假申请','申请年假外出旅游',3,'2023-04-01 14:00:00','2023-04-05 00:00:00',5,2,'同意休假，做好工作交接','2023-04-01 15:00:00','2023-04-01 14:00:00'),(4,4,'陈明病假申请','身体不适需要看医生',1,'2023-05-08 10:00:00','2023-05-08 00:00:00',1,2,'同意，保重身体','2023-05-08 10:30:00','2023-05-08 10:00:00'),(5,5,'赵丽婚假申请','本人结婚，申请婚假',4,'2023-06-01 09:00:00','2023-06-10 00:00:00',10,2,'恭喜，祝新婚快乐','2023-06-01 09:30:00','2023-06-01 09:00:00'),(6,1,'张伟事假申请','需要陪家人看病',2,'2023-07-20 08:00:00','2023-07-20 00:00:00',1,1,NULL,NULL,'2023-07-20 08:00:00'),(7,2,'刘洋年假申请','年度休假',3,'2023-08-01 09:00:00','2023-08-01 00:00:00',3,2,'同意','2023-08-01 10:00:00','2023-08-01 09:00:00');

/*Table structure for table `zhaopin` */

DROP TABLE IF EXISTS `zhaopin`;

CREATE TABLE `zhaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhaopin_uuid_number` varchar(200) DEFAULT NULL COMMENT '招聘编号',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘标题  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘图片',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '招聘地点',
  `zhaopin_file` varchar(200) DEFAULT NULL COMMENT '招聘附件',
  `zhaopin_types` int(11) DEFAULT NULL COMMENT '招聘类型 Search111',
  `zhaopin_number` int(11) DEFAULT NULL COMMENT '招聘人数',
  `zhaopin_time` timestamp NULL DEFAULT NULL COMMENT '招聘时间',
  `zhaopin_content` longtext COMMENT '招聘详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='招聘';

/*Data for the table `zhaopin` */

insert  into `zhaopin`(`id`,`zhaopin_uuid_number`,`zhaopin_name`,`zhaopin_photo`,`zhaopin_address`,`zhaopin_file`,`zhaopin_types`,`zhaopin_number`,`zhaopin_time`,`zhaopin_content`,`insert_time`,`create_time`) values (1,'ZP202301001','高级Java开发工程师','upload/zhaopin1.jpg','北京市海淀区中关村软件园','upload/jd_java.pdf',1,3,'2023-03-01 09:00:00','<p>岗位职责：1.负责公司核心系统的设计与开发 2.参与系统架构设计和技术选型 3.解决系统性能优化问题</p><p>任职要求：1.本科及以上学历，计算机相关专业 2.5年以上Java开发经验 3.熟悉Spring Boot、MyBatis等主流框架</p>','2023-03-01 09:00:00','2023-03-01 09:00:00'),(2,'ZP202301002','人事专员','upload/zhaopin2.jpg','北京市朝阳区望京SOHO','upload/jd_hr.pdf',1,2,'2023-03-15 09:00:00','<p>岗位职责：1.负责员工招聘、入职、离职管理 2.维护员工档案和人事系统 3.协助制定和执行人事制度</p><p>任职要求：1.本科及以上学历，人力资源管理专业优先 2.2年以上人事工作经验 3.熟悉劳动法律法规</p>','2023-03-15 09:00:00','2023-03-15 09:00:00'),(3,'ZP202302001','应届生-软件开发实习生','upload/zhaopin3.jpg','上海市浦东新区张江高科','upload/jd_intern.pdf',2,5,'2023-04-01 09:00:00','<p>岗位职责：1.参与项目开发，完成导师分配的开发任务 2.学习公司技术栈和开发流程</p><p>任职要求：1.2024届本科或硕士应届毕业生 2.计算机相关专业 3.掌握Java或Python编程语言</p>','2023-04-01 09:00:00','2023-04-01 09:00:00'),(4,'ZP202302002','市场营销经理','upload/zhaopin4.jpg','广州市天河区珠江新城','upload/jd_marketing.pdf',1,1,'2023-04-15 09:00:00','<p>岗位职责：1.制定市场营销策略和推广方案 2.负责品牌建设和宣传工作 3.管理市场团队</p><p>任职要求：1.本科及以上学历，市场营销专业 2.5年以上市场营销经验 3.具备良好的团队管理能力</p>','2023-04-15 09:00:00','2023-04-15 09:00:00'),(5,'ZP202303001','财务主管','upload/zhaopin5.jpg','深圳市南山区科技园','upload/jd_finance.pdf',3,1,'2023-05-01 09:00:00','<p>岗位职责：1.负责公司财务报表编制和分析 2.管理日常财务核算工作 3.参与预算编制和成本控制</p><p>任职要求：1.本科及以上学历，会计或财务专业 2.持有注册会计师证书优先 3.3年以上财务管理经验</p>','2023-05-01 09:00:00','2023-05-01 09:00:00'),(6,'ZP202303002','资深产品经理','upload/zhaopin6.jpg','杭州市西湖区文三路','upload/jd_pm.pdf',4,2,'2023-05-15 09:00:00','<p>岗位职责：1.负责产品规划和需求分析 2.撰写产品需求文档 3.跟进产品开发进度</p><p>任职要求：1.本科及以上学历 2.5年以上互联网产品经验 3.优秀的沟通协调能力</p>','2023-05-15 09:00:00','2023-05-15 09:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
