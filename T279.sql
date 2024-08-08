/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t279`;
CREATE DATABASE IF NOT EXISTS `t279` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t279`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, '收货人1', '17703786901', '地址1', 2, '2022-03-12 08:30:28', '2022-03-12 08:52:47', '2022-03-12 08:30:28'),
	(2, 2, '收货人2', '17703786902', '地址2', 1, '2022-03-12 08:30:28', '2022-03-12 08:30:28', '2022-03-12 08:30:28'),
	(3, 1, '收货人3', '17703786903', '地址3', 1, '2022-03-12 08:30:28', '2022-03-12 08:52:42', '2022-03-12 08:30:28'),
	(4, 2, '收货人4', '17703786904', '地址4', 1, '2022-03-12 08:30:28', '2022-03-12 08:30:28', '2022-03-12 08:30:28'),
	(5, 3, '收货人5', '17703786905', '地址5', 1, '2022-03-12 08:30:28', '2022-03-12 08:30:28', '2022-03-12 08:30:28');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `tushu_id` int DEFAULT NULL COMMENT '图书',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/tushushangcheng/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/tushushangcheng/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/tushushangcheng/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-12 08:29:02'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-12 08:29:02'),
	(3, 'huiyuandengji_types', '会员等级类型', 1, '青铜会员', NULL, '0.98', '2022-03-12 08:29:02'),
	(4, 'huiyuandengji_types', '会员等级类型', 2, '白银会员', NULL, '0.96', '2022-03-12 08:29:02'),
	(5, 'huiyuandengji_types', '会员等级类型', 3, '黄金会员', NULL, '0.94', '2022-03-12 08:29:02'),
	(6, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-03-12 08:29:03'),
	(7, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-03-12 08:29:03'),
	(8, 'tushu_types', '图书类型', 1, '图书类型1', NULL, NULL, '2022-03-12 08:29:03'),
	(9, 'tushu_types', '图书类型', 2, '图书类型2', NULL, NULL, '2022-03-12 08:29:03'),
	(10, 'tushu_types', '图书类型', 3, '图书类型3', NULL, NULL, '2022-03-12 08:29:03'),
	(11, 'tushu_types', '图书类型', 4, '图书类型4', NULL, NULL, '2022-03-12 08:29:03'),
	(12, 'tushu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-03-12 08:29:03'),
	(13, 'tushu_order_types', '订单类型', 1, '已评价', NULL, NULL, '2022-03-12 08:29:03'),
	(14, 'tushu_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-03-12 08:29:03'),
	(15, 'tushu_order_types', '订单类型', 3, '已支付', NULL, NULL, '2022-03-12 08:29:03'),
	(16, 'tushu_order_types', '订单类型', 4, '已发货', NULL, NULL, '2022-03-12 08:29:03'),
	(17, 'tushu_order_types', '订单类型', 5, '已收货', NULL, NULL, '2022-03-12 08:29:03'),
	(18, 'tushu_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-03-12 08:29:03'),
	(19, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2022-03-12 08:29:03'),
	(20, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2022-03-12 08:29:03'),
	(21, 'tushu_types', '图书类型', 5, ' 图书类型5', NULL, '', '2022-03-12 08:54:05');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'tm5pwdv8j1as9l4o0qxmtd6aocvd25cq', '2022-03-12 08:32:04', '2024-07-18 09:16:33'),
	(2, 1, 'a1', 'yonghu', '用户', 'vd4lro2hlvlx50j5vsqexc0752133ic6', '2022-03-12 08:43:17', '2024-07-18 09:17:31');

DROP TABLE IF EXISTS `tushu`;
CREATE TABLE IF NOT EXISTS `tushu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tushu_name` varchar(200) DEFAULT NULL COMMENT '图书名称  Search111 ',
  `tushu_photo` varchar(200) DEFAULT NULL COMMENT '图书照片',
  `tushu_types` int DEFAULT NULL COMMENT '图书类型 Search111',
  `tushu_kucun_number` int DEFAULT NULL COMMENT '图书库存',
  `tushu_price` int DEFAULT NULL COMMENT '购买获得积分 ',
  `tushu_old_money` decimal(10,2) DEFAULT NULL COMMENT '图书原价 ',
  `tushu_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `tushu_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `tushu_content` text COMMENT '图书简介 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `tushu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='图书';

DELETE FROM `tushu`;
INSERT INTO `tushu` (`id`, `tushu_name`, `tushu_photo`, `tushu_types`, `tushu_kucun_number`, `tushu_price`, `tushu_old_money`, `tushu_new_money`, `tushu_clicknum`, `tushu_content`, `shangxia_types`, `tushu_delete`, `create_time`) VALUES
	(1, '图书名称1', 'http://localhost:8080/tushushangcheng/upload/tushu1.jpg', 1, 101, 182, 724.25, 35.94, 106, '图书简介1', 1, 1, '2022-03-12 08:30:28'),
	(2, '图书名称2', 'http://localhost:8080/tushushangcheng/upload/tushu2.jpg', 4, 101, 306, 682.60, 175.31, 51, '图书简介2', 1, 1, '2022-03-12 08:30:28'),
	(3, '图书名称3', 'http://localhost:8080/tushushangcheng/upload/tushu3.jpg', 1, 100, 199, 612.97, 159.73, 79, '图书简介3', 1, 1, '2022-03-12 08:30:28'),
	(4, '图书名称4', 'http://localhost:8080/tushushangcheng/upload/tushu4.jpg', 2, 101, 178, 617.08, 466.02, 261, '图书简介4', 1, 1, '2022-03-12 08:30:28'),
	(5, '图书名称5', 'http://localhost:8080/tushushangcheng/upload/tushu5.jpg', 2, 107, 336, 803.38, 480.31, 476, '图书简介5', 1, 1, '2022-03-12 08:30:28');

DROP TABLE IF EXISTS `tushu_collection`;
CREATE TABLE IF NOT EXISTS `tushu_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_id` int DEFAULT NULL COMMENT '图书',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `tushu_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='图书收藏';

DELETE FROM `tushu_collection`;
INSERT INTO `tushu_collection` (`id`, `tushu_id`, `yonghu_id`, `tushu_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2022-03-12 08:30:28', '2022-03-12 08:30:28'),
	(2, 2, 3, 1, '2022-03-12 08:30:28', '2022-03-12 08:30:28'),
	(3, 3, 3, 1, '2022-03-12 08:30:28', '2022-03-12 08:30:28'),
	(4, 4, 3, 1, '2022-03-12 08:30:28', '2022-03-12 08:30:28'),
	(5, 5, 3, 1, '2022-03-12 08:30:28', '2022-03-12 08:30:28'),
	(6, 4, 1, 1, '2022-03-12 08:50:35', '2022-03-12 08:50:35'),
	(7, 5, 1, 1, '2022-03-12 08:52:35', '2022-03-12 08:52:35');

DROP TABLE IF EXISTS `tushu_commentback`;
CREATE TABLE IF NOT EXISTS `tushu_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_id` int DEFAULT NULL COMMENT '图书',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `tushu_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='图书评价';

DELETE FROM `tushu_commentback`;
INSERT INTO `tushu_commentback` (`id`, `tushu_id`, `yonghu_id`, `tushu_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '评价内容1', '2022-03-12 08:30:28', '回复信息1', '2022-03-12 08:30:28', '2022-03-12 08:30:28'),
	(2, 2, 1, '评价内容2', '2022-03-12 08:30:28', '回复信息2', '2022-03-12 08:30:28', '2022-03-12 08:30:28'),
	(3, 3, 3, '评价内容3', '2022-03-12 08:30:28', '回复信息3', '2022-03-12 08:30:28', '2022-03-12 08:30:28'),
	(4, 4, 1, '评价内容4', '2022-03-12 08:30:28', '回复信息4', '2022-03-12 08:30:28', '2022-03-12 08:30:28'),
	(5, 5, 1, '评价内容5', '2022-03-12 08:30:28', '回复信息5', '2022-03-12 08:30:28', '2022-03-12 08:30:28'),
	(6, 4, 1, '好得很', '2022-03-12 08:56:44', NULL, NULL, '2022-03-12 08:56:44');

DROP TABLE IF EXISTS `tushu_order`;
CREATE TABLE IF NOT EXISTS `tushu_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int DEFAULT NULL COMMENT '收获地址 ',
  `tushu_id` int DEFAULT NULL COMMENT '图书',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `tushu_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `tushu_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `tushu_order_courier_number` varchar(200) DEFAULT NULL COMMENT '订单快递单号',
  `tushu_order_types` int DEFAULT NULL COMMENT '订单类型',
  `tushu_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='图书订单';

DELETE FROM `tushu_order`;
INSERT INTO `tushu_order` (`id`, `tushu_order_uuid_number`, `address_id`, `tushu_id`, `yonghu_id`, `buy_number`, `tushu_order_true_price`, `tushu_order_courier_name`, `tushu_order_courier_number`, `tushu_order_types`, `tushu_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1647075085960', 3, 2, 1, 1, 171.80, NULL, NULL, 2, 1, '2022-03-12 08:51:26', '2022-03-12 08:51:26'),
	(2, '1647075111994', 1, 2, 1, 1, 171.80, NULL, NULL, 3, 1, '2022-03-12 08:51:52', '2022-03-12 08:51:52'),
	(3, '1647075111994', 1, 3, 1, 3, 469.61, NULL, NULL, 3, 1, '2022-03-12 08:51:52', '2022-03-12 08:51:52'),
	(4, '1647075111994', 1, 4, 1, 2, 913.40, '顺丰快递', 'sf5674561', 1, 1, '2022-03-12 08:51:52', '2022-03-12 08:51:52'),
	(5, '1721290679290', 1, 4, 1, 1, 456.70, NULL, NULL, 3, 1, '2024-07-18 08:17:59', '2024-07-18 08:17:59');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `yonghu_sum_jifen`, `yonghu_new_jifen`, `huiyuandengji_types`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/tushushangcheng/upload/yonghu1.jpg', 2, '1@qq.com', 10277.51, 1944.42, 1868.55, 1, '2022-03-12 08:30:28'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/tushushangcheng/upload/yonghu2.jpg', 2, '2@qq.com', 192.94, 919.53, 187.07, 1, '2022-03-12 08:30:28'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/tushushangcheng/upload/yonghu3.jpg', 2, '3@qq.com', 600.24, 835.99, 428.92, 1, '2022-03-12 08:30:28');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
