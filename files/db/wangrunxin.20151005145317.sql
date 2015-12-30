-- ---------------------------------------------------------
-- Database Name: wangrunxin
CREATE DATABASE IF NOT EXISTS `wangrunxin` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `wangrunxin`;
-- ---------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES 'utf8' */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='SYSTEM' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


--
-- Table structure for table weixin_basic_db
--

DROP TABLE IF EXISTS `weixin_basic_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `weixin_basic_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weixin_app_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weixin_app_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weixin_open_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weixin_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weixin_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weixin_accesstoken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weixin_experid_time` int(11) unsigned DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table weixin_basic_db
--

INSERT INTO `weixin_basic_db` VALUES ( 1, 'wxeca0dc64dd540f5b', 'fdc6f0cbb93555b68873d3fe05d70c56', 'gh_0ee0f56d87c9', '测试号', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJKawKEtTuyDOtFiaREhPPoMUq3GlCPdDIJZSt5DIiatlibMrAeS4dZ62lN0r8INJnkaW8ohESNKvNMw/64', 'bnHj47qKcEFKkL3-XBPthTQf4GoQvlnT88w8qyN_yz3i42bALvjmqWvQszbmVmh_xkLRRFoM-MxSQwUThmtN0vtC6MgPjixbayu52_HkGt4', 1444035190, 'wxeca0dc64dd540f5b' );

--
-- Table structure for table weixin_group_db
--

DROP TABLE IF EXISTS `weixin_group_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `weixin_group_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weixin_app_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` tinyint(3) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num` tinyint(3) unsigned DEFAULT NULL,
  `create_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` int(11) unsigned DEFAULT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table weixin_group_db
--

INSERT INTO `weixin_group_db` VALUES ( 33, 'wxeca0dc64dd540f5b', 0, '未分组', 3, 1, 1442999136, 0, 'none' );
INSERT INTO `weixin_group_db` VALUES ( 34, 'wxeca0dc64dd540f5b', 1, '黑名单', 0, 1, 1442999136, 0, 'none' );
INSERT INTO `weixin_group_db` VALUES ( 35, 'wxeca0dc64dd540f5b', 2, '星标组', 0, 1, 1442999136, 0, 'none' );
INSERT INTO `weixin_group_db` VALUES ( 36, 'wxeca0dc64dd540f5b', 100, '测试组', 0, 1, 1442999136, 0, 'none' );
INSERT INTO `weixin_group_db` VALUES ( 37, 'wxeca0dc64dd540f5b', 101, '运营组', 0, 1, 1442999136, 0, 'none' );
INSERT INTO `weixin_group_db` VALUES ( 38, 'wxeca0dc64dd540f5b', 0, '默认组', 0, 'user_id', 1443509775, 0, 'none' );
INSERT INTO `weixin_group_db` VALUES ( 39, 'wxeca0dc64dd540f5b', 0, '默认组', 0, 'user_id', 1443509782, 0, 'none' );

--
-- Table structure for table weixin_membercard_db
--

DROP TABLE IF EXISTS `weixin_membercard_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `weixin_membercard_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_card_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` int(11) unsigned DEFAULT NULL,
  `start_time` int(11) unsigned DEFAULT NULL,
  `end_time` int(11) unsigned DEFAULT NULL,
  `score` tinyint(3) unsigned DEFAULT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `attributes` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table weixin_membercard_db
--

INSERT INTO `weixin_membercard_db` VALUES ( 1, 'test_123456789', 'test_123456789', 'init_user', 1442369509, 1442369509, 1442369509, 0, 0, NULL );

--
-- Table structure for table weixin_message_db
--

DROP TABLE IF EXISTS `weixin_message_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `weixin_message_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fromusername` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tousername` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  `reply` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table weixin_message_db
--

INSERT INTO `weixin_message_db` VALUES ( 1, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'init_message', 1442457393, 'yes', 0 );

--
-- Table structure for table weixin_post_msg_db
--

DROP TABLE IF EXISTS `weixin_post_msg_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `weixin_post_msg_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `belong_to_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` int(11) unsigned DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table weixin_post_msg_db
--

INSERT INTO `weixin_post_msg_db` VALUES ( 1, 'none', 'test post msg', 'http://www.tongchengchina.com/files/wxeca0dc64dd540f5b/thumbnail/4a43510a0830d4d1c60cdf72abc2a193.jpg', 'www.baidu.com', 'user_id', 1442474991, 'edit', 'none' );
INSERT INTO `weixin_post_msg_db` VALUES ( 2, 'none', '新微信', 'http://www.tongchengchina.com/files/wxeca0dc64dd540f5b/thumbnail/4a43510a0830d4d1c60cdf72abc2a193.jpg', 'www.baidu.com', 1, 1443086261, 'new', 'none' );
INSERT INTO `weixin_post_msg_db` VALUES ( 3, 'none', '测试', 'http://localhost/cms/files/wxeca0dc64dd540f5b/caaaed77a71f620bc70a3e2346dc27e1.jpg', 'http://baidu.com', 1, 1442476738, 'new', 'none' );
INSERT INTO `weixin_post_msg_db` VALUES ( 4, 3, '新子菜单1', 'http://localhost/cms/files/wxeca0dc64dd540f5b/06c2620466b8e40fd93ca76918d2f5d2.png', 'http://baidu.com', 1, 1442476700, 'new', 'none' );
INSERT INTO `weixin_post_msg_db` VALUES ( 9, 'none', '微信推送测试-标题', 'http://localhost/cms/files/wxeca0dc64dd540f5b/49527034782822df61ecd58bb4dcde5e.jpg', 'http://', 1, 1443173123, 'new', 'none' );
INSERT INTO `weixin_post_msg_db` VALUES ( 10, 9, '子菜单-1', 'http://localhost/cms/files/wxeca0dc64dd540f5b/49527034782822df61ecd58bb4dcde5e.jpg', 'http://aaa', 1, 1443173123, 'new', 'none' );
INSERT INTO `weixin_post_msg_db` VALUES ( 11, 9, '子菜单-2', 'http://localhost/cms/files/wxeca0dc64dd540f5b/194497969c24e8811ed3f4b7ddb0f8a5.png', 'http://bbbb', 1, 1443173123, 'new', 'none' );
INSERT INTO `weixin_post_msg_db` VALUES ( 12, 2, '微信测试1', 'http://localhost/cms/files/wxeca0dc64dd540f5b/0ef673cca9a4e9c7136682e778ec4af9.jpg', 'http://www.baidu.com', 1, 1443086261, 'new', 'none' );

--
-- Table structure for table weixin_post_msg_record_db
--

DROP TABLE IF EXISTS `weixin_post_msg_record_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `weixin_post_msg_record_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_user_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_msg_id` tinyint(1) unsigned DEFAULT NULL,
  `post_by` tinyint(1) unsigned DEFAULT NULL,
  `post_time` int(11) unsigned DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table weixin_post_msg_record_db
--

INSERT INTO `weixin_post_msg_record_db` VALUES ( 1, 'all', 1, 1, 1442474671, 'finish', 'data from tencent.', 'none' );

--
-- Table structure for table weixin_reply_db
--

DROP TABLE IF EXISTS `weixin_reply_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `weixin_reply_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fromusername` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tousername` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  `messageid` tinyint(1) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idenitfyid` tinyint(1) unsigned DEFAULT NULL,
  `attributes` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table weixin_reply_db
--

INSERT INTO `weixin_reply_db` VALUES ( 1, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'WRX_WEIXIN_READ', 1442477958, 1, 'text', 1, NULL );

--
-- Table structure for table weixin_user_db
--

DROP TABLE IF EXISTS `weixin_user_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `weixin_user_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `belong_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `real_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weixin_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weixin_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weixin_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` int(11) unsigned DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weixin_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table weixin_user_db
--

INSERT INTO `weixin_user_db` VALUES ( 1, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'wxeca0dc64dd540f5b', 'unknown', 'unknown', 'wangrunxinyes', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJKawKEtTuyDOtFiaREhPPoMUq3GlCPdDIJZSt5DIiatlibMrAeS4dZ62lN0r8INJnkaW8ohESNKvNMw/', 0, 1441347780, '中国香港', '九龙城区', '', 1, 'okNlYwAj_AIWKCelFZSPwMZLhoFI', 'unknown' );
INSERT INTO `weixin_user_db` VALUES ( 2, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'wxeca0dc64dd540f5b', 'unknown', 'unknown', 'Shibingyan', 'http://wx.qlogo.cn/mmopen/UdIorOKF3RSsn3UW53bhS9Oj5ymzDIqzSzwBE2KnGyFaf5BhvUIJ7WPibDhDAibFcvPIoPpKh4WlZsUBFOA4RZZA/', 0, 1441467327, '中国', '上海', '金山', 2, 'okNlYwFr4r0tPH1Ot1bvOPbEqLvI', 'unknown' );
INSERT INTO `weixin_user_db` VALUES ( 3, 'oXSVywxboKZGjPjePXGM1LkFdOFs', 'wxeca0dc64dd540f5b', 'unknown', 'unknown', '零丶感', 'http://wx.qlogo.cn/mmopen/x2picuKmNXNibrszm1GpHTkS3N7nl5zVaguRTxsRgNdqPd2mhFs7YkJEDPmJ0NicYqibLraneMmiaXISZvebrGHsx46DYAiaU1YRog/', 0, 1441875286, '中国香港', '九龙城区', '', 1, 'okNlYwGbKRdmvlX0IV_v5wM25vdU', 'unknown' );
INSERT INTO `weixin_user_db` VALUES ( 4, NULL, 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 1443780879, 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown' );

--
-- Table structure for table wrx_image_db
--

DROP TABLE IF EXISTS `wrx_image_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wrx_image_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identify` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` int(11) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table wrx_image_db
--

INSERT INTO `wrx_image_db` VALUES ( 1, 'wxeca0dc64dd540f5b', 1442390475, 'img', 'init', 'null', '49527034782822df61ecd58bb4dcde5e.jpg', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 2, 'wxeca0dc64dd540f5b', 1442390646, 'img', 'init', 'null', '194497969c24e8811ed3f4b7ddb0f8a5.png', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 3, 'wxeca0dc64dd540f5b', 1442390846, 'img', 'init', 'null', '06c2620466b8e40fd93ca76918d2f5d2.png', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 4, 'wxeca0dc64dd540f5b', 1442394730, 'img', 'init', 'null', '5eaa8c9bbe8c59c33f3647a3bf4ec481.jpg', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 5, 'wxeca0dc64dd540f5b', 1442395598, 'img', 'init', 'null', '0ef673cca9a4e9c7136682e778ec4af9.jpg', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 6, 'wxeca0dc64dd540f5b', 1442395763, 'img', 'init', 'null', '2f0b0f314292ee04472f4eb3a8c58848.png', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 7, 'wxeca0dc64dd540f5b', 1442476669, 'img', 'init', 'null', 'caaaed77a71f620bc70a3e2346dc27e1.jpg', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 8, 'wxeca0dc64dd540f5b', 1443511272, 'img', 'init', 'null', '12b3a9a6b5f54ade51f10808fa82ba46.jpg', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 9, 'wxeca0dc64dd540f5b', 1443596417, 'img', 'init', 'null', '29fbcca432db47a331f84fc6959f0440.png', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 10, 'wxeca0dc64dd540f5b', 1443767181, 'img', 'init', 'null', 'c56679e9793d317a63744b36d3b46178.jpg', 'init', 'init' );

--
-- Table structure for table wrx_model_behavior
--

DROP TABLE IF EXISTS `wrx_model_behavior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wrx_model_behavior` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `behavior_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table wrx_model_behavior
--

INSERT INTO `wrx_model_behavior` VALUES ( 1, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'init', 'weixin', 1442816586, '218.255.228.166', 'null' );
INSERT INTO `wrx_model_behavior` VALUES ( 2, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'weixin_event', 110, 1442816667, '103.7.30.104', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 3, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'weixin_msg', 71, 1442816670, '103.7.30.104', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 4, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'weixin_event', 111, 1442816693, '103.7.30.104', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 7, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'website', 'upload', 1442817503, '218.255.228.166', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 8, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'website', 'upload', 1442819204, '218.255.228.166', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 9, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'website', 'notebook', 1442819209, '218.255.228.166', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 10, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'website', 'upload', 1442819297, '218.255.228.166', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 11, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'website', 'medicalbook', 1442819315, '218.255.228.166', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 12, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'weixin_msg', 73, 1442826902, '103.7.30.104', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 13, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'weixin_msg', 74, 1442826903, '103.7.30.104', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 14, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'weixin_msg', 75, 1442826903, '103.7.30.104', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 15, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'weixin_msg', 76, 1442826903, '103.7.30.104', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 16, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'weixin_msg', 77, 1442826904, '103.7.30.104', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 17, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'weixin_msg', 78, 1442826904, '103.7.30.104', NULL );

--
-- Table structure for table wrx_model_product_db
--

DROP TABLE IF EXISTS `wrx_model_product_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wrx_model_product_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `p_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_des` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_activity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_off_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_trigger_off_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_time` int(11) unsigned DEFAULT NULL,
  `p_show_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_custom_html` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_attributes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table wrx_model_product_db
--

INSERT INTO `wrx_model_product_db` VALUES ( 1, 'c4ca4238a0b923820dcc509a6f75849b', 'd', '百灵油', 'simple des', 'details description', 'image', '现在买一送一', 682, 682, 0, 1443509776, 0, '<html><body><p>this is custom html</p></body></html>', 'none' );
INSERT INTO `wrx_model_product_db` VALUES ( 21, NULL, 1, 'aaaaaaaaa', 'aaaaaaaaa', 'aaaaaaaa', '', 'aaaaa', 'aaaa', 'aa', 'd', 1443511123, 'd', '', 'wrx_none_data' );
INSERT INTO `wrx_model_product_db` VALUES ( 22, NULL, 1, 'asd', 'adas', 'caca', 'on', 'acsac', 'ascac', 'asca', 'd', 1443512355, 'd', NULL, 'wrx_none_data' );
INSERT INTO `wrx_model_product_db` VALUES ( 23, NULL, 1, 'asda', 'caa', 'cacac', NULL, NULL, NULL, NULL, NULL, 1443512619, 'c', 'aaa', 'wrx_none_data' );
INSERT INTO `wrx_model_product_db` VALUES ( 24, NULL, 1, 'acac', 'acac', 'acaca', NULL, NULL, NULL, NULL, NULL, 1443580976, 'c', '欢迎使用自定义HTML编辑器\n	\n	\n		<img src=\"http://localhost/cms/assets/extensions/editor/plugins/emoticons/images/13.gif\" alt=\"\" border=\"0\" />', 'wrx_none_data' );
INSERT INTO `wrx_model_product_db` VALUES ( 25, NULL, 1, 'acccccccccccc', 'aaaaaaaaa', 'aaaaaaaaaaaa', NULL, NULL, NULL, NULL, NULL, 1443581087, 'c', '<div align=\"center\">\n	<p>\n		欢迎使用自定义HTML编辑器\n	</p>\n	<p>\n		<img src=\"http://localhost/cms/assets/extensions/editor/plugins/emoticons/images/0.gif\" alt=\"\" border=\"0\" />\n	</p>\n</div>', 'wrx_none_data' );
INSERT INTO `wrx_model_product_db` VALUES ( 26, NULL, 1, 'casac', 'asdad', 123131, NULL, NULL, NULL, NULL, NULL, 1443581583, 'c', '<div align=\"center\">\n	欢迎使用自定义HTML编辑器\n</div>', 'wrx_none_data' );
INSERT INTO `wrx_model_product_db` VALUES ( 27, NULL, 1, 'acasc', 'ccc', 'cc', NULL, NULL, NULL, NULL, NULL, 1443581625, 'c', '<div align=\"center\">\n	<strong>欢迎使用自定义HTML编辑器</strong>\n</div>', 'wrx_none_data' );
INSERT INTO `wrx_model_product_db` VALUES ( 28, NULL, 1, 'asasd', 'acaca', 'asc', NULL, NULL, NULL, NULL, NULL, 1443581727, 'c', '<div align=\"center\">\n	欢迎使用自定义HTML编辑器\n</div>', 'wrx_none_data' );
INSERT INTO `wrx_model_product_db` VALUES ( 29, NULL, 1, 'asc', 'caac', 'caca', NULL, NULL, NULL, NULL, NULL, 1443581900, 'c', '<div align=\"center\">\n	<strong>欢迎使用自定义HTML编辑器</strong>\n</div>', 'wrx_none_data' );
INSERT INTO `wrx_model_product_db` VALUES ( 30, NULL, 1, 'a', 'a', 'a', NULL, NULL, NULL, NULL, NULL, 1443581987, 'c', '欢迎使用自定义HTML编辑器', 'wrx_none_data' );
INSERT INTO `wrx_model_product_db` VALUES ( 31, NULL, 1, 'asda', 'ca', 'acac', 'on', 123, 13, 123, 'on', 1443583651, 'd', NULL, 'wrx_none_data' );
INSERT INTO `wrx_model_product_db` VALUES ( 32, NULL, 1, 'sacs', 'ac', 'acac', NULL, '123dqwdq', 213, 123, 'on', 1443772108, 'd', NULL, 'wrx_none_data' );
INSERT INTO `wrx_model_product_db` VALUES ( 33, NULL, 1, 'c11111', 'asasda', 'qweqe', '[{\"title\":\"新介绍qwqwd段落\",\"img\":\"\",\"des\":\"123\"},{\"title\":\"新介绍qwd段落\",\"img\":\"\",\"des\":\"qwdqd\"}]', 'qwdqd', 123, 123, 'on', 1443772253, 'd', NULL, 'wrx_none_data' );
INSERT INTO `wrx_model_product_db` VALUES ( 34, NULL, 1, '产品展示测试', '这是产品的简单介绍', '此产品1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '[{\"title\":\"顶级产品\",\"img\":\"\",\"des\":\"进口产品，顶级质量，品质保证！！！！！！!！！！！！！!！！！！！！!！！！！！！!！！！！！！!！！！！！！!！！！！！！!！！！！！！!！！！！！！!\"}]', '厂家大促销，只要998！！！！！！!！！！！！！!！！！！！！!！！！！！！!！！！！！！!！！！！！！!！！！！！！!！！！！！！!！！！！！！!！！！！！！!！！！！！！!', 20000, 998, 'on', 1443773927, 'd', NULL, 'wrx_none_data' );

--
-- Table structure for table wrx_model_system_basic
--

DROP TABLE IF EXISTS `wrx_model_system_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wrx_model_system_basic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `s_state` tinyint(1) unsigned DEFAULT NULL,
  `s_reload_all_user_data` tinyint(3) unsigned DEFAULT NULL,
  `s_last_reload_all_user_data` int(11) unsigned DEFAULT NULL,
  `s_back_up_db` tinyint(3) unsigned DEFAULT NULL,
  `s_last_back_up_db` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table wrx_model_system_basic
--

INSERT INTO `wrx_model_system_basic` VALUES ( 1, 1, 0, 1443173732, 1, 1443173594 );

--
-- Table structure for table wrx_user_db
--

DROP TABLE IF EXISTS `wrx_user_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wrx_user_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wrx_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wrx_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wrx_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wrx_type` tinyint(3) unsigned DEFAULT NULL,
  `wrx_level` tinyint(3) unsigned DEFAULT NULL,
  `wrx_state` tinyint(3) unsigned DEFAULT NULL,
  `wrx_last` int(11) unsigned DEFAULT NULL,
  `wrx_createtime` int(11) unsigned DEFAULT NULL,
  `wrx_weixin_json` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table wrx_user_db
--

INSERT INTO `wrx_user_db` VALUES ( 1, 'init_database', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJKawKEtTuyDOtFiaREhPPoMUq3GlCPdDIJZSt5DIiatlibMrAeS4dZ62lN0r8INJnkaW8ohESNKvNMw/64', '57910fac9b0270812ff3c56028e6f4c2', 3, 0, 0, 1442369503, 1442369503, '[\"wxeca0dc64dd540f5b\"]', '{\"init\":\"data\"}' );
INSERT INTO `wrx_user_db` VALUES ( 2, 'test', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJKawKEtTuyDOtFiaREhPPoMUq3GlCPdDIJZSt5DIiatlibMrAeS4dZ62lN0r8INJnkaW8ohESNKvNMw/64', '57910fac9b0270812ff3c56028e6f4c2', 3, 2, 0, 1442369503, 1442369503, '[\"wxeca0dc64dd540f5b\"]', '{\"init\":\"data\"}' );

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
