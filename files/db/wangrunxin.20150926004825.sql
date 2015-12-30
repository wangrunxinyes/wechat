-- ---------------------------------------------------------
-- Database Name: wangrunxin
CREATE DATABASE IF NOT EXISTS `u452035567_cms` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `u452035567_cms`;
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
-- Table structure for table main_greneral_parmeters
--

DROP TABLE IF EXISTS `main_greneral_parmeters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `main_greneral_parmeters` (
  `main_greneral_parmeters_id` int(11) NOT NULL,
  `main_greneral_parmeters_name` varchar(128) NOT NULL,
  `main_greneral_parmeters_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table main_greneral_parmeters
--


--
-- Table structure for table main_user_general
--

DROP TABLE IF EXISTS `main_user_general`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `main_user_general` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_user_general_uname` varchar(128) CHARACTER SET utf8 NOT NULL,
  `main_user_general_psw` varchar(128) CHARACTER SET utf8 NOT NULL,
  `main_user_general_type` int(11) NOT NULL,
  `main_user_general_level` int(11) NOT NULL,
  `main_user_general_state` int(11) NOT NULL,
  `main_user_general_last` int(11) NOT NULL,
  `main_user_general_app_keys` tinyint(3) unsigned DEFAULT NULL,
  `main_user_general_ps` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table main_user_general
--

INSERT INTO `main_user_general` VALUES ( 1, 'wangrunxin.com', '57910fac9b0270812ff3c56028e6f4c2', 1, 1, 0, 1437631771, 1, '' );
INSERT INTO `main_user_general` VALUES ( 2, 'shibingyan', '7974c5ec6303ba2fe15062ac92601a4a', 1, 1, 0, 123133, 0, '亲爱的，我爱你' );

--
-- Table structure for table main_web_general_settings
--

DROP TABLE IF EXISTS `main_web_general_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `main_web_general_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identify` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table main_web_general_settings
--

INSERT INTO `main_web_general_settings` VALUES ( 1, 'main_web_im_ad_1', 'http://i3.tietuku.com/cada1485466e5a6d.jpg' );
INSERT INTO `main_web_general_settings` VALUES ( 2, 'main_web_im_ad_2', 'http://i3.tietuku.com/7072ead33325d672.jpg' );
INSERT INTO `main_web_general_settings` VALUES ( 3, 'main_web_im_ad_3', 'http://i3.tietuku.com/91c65e9fadb782d3.jpg' );
INSERT INTO `main_web_general_settings` VALUES ( 4, 'main_web_im_ad_4', 'video-replace-mobile.jpg' );
INSERT INTO `main_web_general_settings` VALUES ( 5, 'main_web_im_ad_5', 'http://i3.tietuku.com/327a8f39cebc4b00.jpg' );

--
-- Table structure for table oauth_log
--

DROP TABLE IF EXISTS `oauth_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `oauth_log` (
  `olg_id` int(11) NOT NULL AUTO_INCREMENT,
  `olg_osr_consumer_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `olg_ost_token` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `olg_ocr_consumer_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `olg_oct_token` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `olg_usa_id_ref` int(11) DEFAULT NULL,
  `olg_received` text NOT NULL,
  `olg_sent` text NOT NULL,
  `olg_base_string` text NOT NULL,
  `olg_notes` text NOT NULL,
  `olg_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `olg_remote_ip` bigint(20) NOT NULL,
  PRIMARY KEY (`olg_id`),
  KEY `olg_osr_consumer_key` (`olg_osr_consumer_key`,`olg_id`),
  KEY `olg_ost_token` (`olg_ost_token`,`olg_id`),
  KEY `olg_ocr_consumer_key` (`olg_ocr_consumer_key`,`olg_id`),
  KEY `olg_oct_token` (`olg_oct_token`,`olg_id`),
  KEY `olg_usa_id_ref` (`olg_usa_id_ref`,`olg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table oauth_log
--

--
-- Table structure for table weixin_basic_db
--

DROP TABLE IF EXISTS `weixin_basic_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `weixin_basic_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weixin_app_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weixin_app_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weixin_open_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weixin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weixin_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weixin_accesstoken` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weixin_experid_time` int(11) unsigned DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table weixin_basic_db
--

INSERT INTO `weixin_basic_db` VALUES ( 1, 'wxeca0dc64dd540f5b', 'fdc6f0cbb93555b68873d3fe05d70c56', 'gh_0ee0f56d87c9', 'wangrunxinyes的接口测试号', 'unknown', 'HEuEIvIvg7xtLh1UJbv8R_cHN7S7eGfYnWCl3PIAYjFsRBBvju9EnPlHK5eynmRGqOp8pjiUuiNRD975L6pwGPMjZxdl8lNzM_0yuTGKtiY', 1443206811, 'wxeca0dc64dd540f5b' );

--
-- Table structure for table weixin_event_db
--

DROP TABLE IF EXISTS `weixin_event_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `weixin_event_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fromusername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tousername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eventkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  `reply` tinyint(1) unsigned DEFAULT NULL,
  `attributes` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table weixin_event_db
--

INSERT INTO `weixin_event_db` VALUES ( 1, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441359648, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 2, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441361293, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 3, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441361312, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 4, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441364228, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 5, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441450289, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 6, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'OnlineAsk', 'CLICK', 1441450330, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 7, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441450335, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 8, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '', 'subscribe', 1441467329, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 9, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441467331, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 10, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441467411, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 11, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441467868, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 12, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441468098, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 13, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441469440, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 14, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441469448, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 15, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441470030, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 16, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441471138, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 17, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441471231, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 18, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441472308, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 19, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441472404, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 20, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441472826, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 21, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441529217, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 22, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441529317, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 23, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441529823, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 24, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441530319, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 25, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441530613, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 26, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441530625, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 27, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441530737, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 28, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441530994, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 29, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441531114, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 30, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441531141, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 31, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441531468, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 32, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441532526, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 33, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441533855, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 34, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441534285, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 35, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441548477, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 36, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441551347, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 37, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441551734, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 38, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441551776, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 39, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441551921, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 40, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441552139, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 41, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441552262, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 42, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441552406, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 43, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441552663, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 44, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441553284, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 45, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'BackUp', 'CLICK', 1441553319, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 46, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441595661, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 47, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', '瑞古乐', 'CLICK', 1441595668, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 48, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441601242, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 49, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441601426, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 50, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441602818, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 51, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441608143, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 52, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441608147, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 53, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441608179, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 54, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441609746, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 55, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'BackUp', 'CLICK', 1441623231, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 56, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441623428, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 57, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441623500, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 58, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441623749, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 59, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441623931, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 60, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'BackUp', 'CLICK', 1441624021, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 61, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'BackUp', 'CLICK', 1441624035, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 62, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', '健康贴士', 'CLICK', 1441624097, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 63, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'OnlineAsk', 'CLICK', 1441624103, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 64, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'OnlineAsk', 'CLICK', 1441624113, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 65, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441624117, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 66, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441624462, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 67, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441624496, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 68, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'enzeman', 'CLICK', 1441624498, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 69, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441624501, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 70, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441624558, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 71, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441638327, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 72, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441638381, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 73, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441639221, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 74, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'BackUp', 'CLICK', 1441639257, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 75, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441639266, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 76, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441642876, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 77, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441642876, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 78, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441642876, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 79, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441642876, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 80, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441642876, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 81, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441642877, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 82, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441642876, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 83, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441642876, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 84, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441642876, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 85, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441642876, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 86, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441642877, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 87, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441642876, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 88, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441642877, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 89, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441643265, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 90, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441643265, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 91, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441644654, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 92, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441644707, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 93, 'o7HySv3cHrB_EnZpIzSeqpYLSgzc', 'gh_5df9d4970346', '', 'subscribe', 1441875117, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 94, 'oXSVywxboKZGjPjePXGM1LkFdOFs', 'gh_0ee0f56d87c9', '', 'subscribe', 1441875286, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 95, 'oXSVywxboKZGjPjePXGM1LkFdOFs', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1441875290, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 96, 'oXSVywxboKZGjPjePXGM1LkFdOFs', 'gh_0ee0f56d87c9', 'bailingyou', 'CLICK', 1441875294, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 97, 'oXSVywxboKZGjPjePXGM1LkFdOFs', 'gh_0ee0f56d87c9', '机构介绍', 'CLICK', 1441875300, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 98, 'oXSVywxboKZGjPjePXGM1LkFdOFs', 'gh_0ee0f56d87c9', 'OnlineAsk', 'CLICK', 1441875307, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 99, 'oXSVywxboKZGjPjePXGM1LkFdOFs', 'gh_0ee0f56d87c9', 'qita', 'CLICK', 1441875311, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 100, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441964758, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 101, 'oXSVywxboKZGjPjePXGM1LkFdOFs', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1441965444, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 102, 'oXSVywxboKZGjPjePXGM1LkFdOFs', 'gh_0ee0f56d87c9', 'BackUp', 'CLICK', 1441965757, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 103, 'oXSVywxboKZGjPjePXGM1LkFdOFs', 'gh_0ee0f56d87c9', 'bailingyou', 'CLICK', 1441965779, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 104, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'ruigule', 'CLICK', 1442196830, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 105, 'o7HySv7hlJIamlUo1az4NlKwgKe0', 'gh_5df9d4970346', '', 'unsubscribe', 1442214599, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 106, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1442385046, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 107, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1442385331, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 108, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'defeng', 'CLICK', 1442460075, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 109, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1442462100, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 110, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'personal', 'CLICK', 1442816667, NULL, NULL );
INSERT INTO `weixin_event_db` VALUES ( 111, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'MedicalRecordBook', 'CLICK', 1442816693, NULL, NULL );

--
-- Table structure for table weixin_group_db
--

DROP TABLE IF EXISTS `weixin_group_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `weixin_group_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weixin_app_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` tinyint(3) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num` tinyint(3) unsigned DEFAULT NULL,
  `create_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` int(11) unsigned DEFAULT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table weixin_group_db
--

INSERT INTO `weixin_group_db` VALUES ( 1, 'wxeca0dc64dd540f5b', 0, '默认组', 0, 'user_id', 1443004341, 0, 'none' );

--
-- Table structure for table weixin_membercard_db
--

DROP TABLE IF EXISTS `weixin_membercard_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `weixin_membercard_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_card_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` int(11) unsigned DEFAULT NULL,
  `start_time` int(11) unsigned DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score` tinyint(3) unsigned DEFAULT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table weixin_membercard_db
--

INSERT INTO `weixin_membercard_db` VALUES ( 16, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'M48825683', 1, 1441638368, 1441638368, 'unset', 0, 1, 'unset' );
INSERT INTO `weixin_membercard_db` VALUES ( 17, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'M45076599', 1, 1441964775, 1441964775, 'unset', 0, 1, 'unset' );
INSERT INTO `weixin_membercard_db` VALUES ( 18, 'oXSVywxboKZGjPjePXGM1LkFdOFs', 'M49580993', 1, 1441965482, 1441965482, 'unset', 0, 1, 'unset' );
INSERT INTO `weixin_membercard_db` VALUES ( 19, 'test_123456789', 'test_123456789', 'init_user', 1442458929, 1442458929, 1442458929, 0, 0, NULL );
INSERT INTO `weixin_membercard_db` VALUES ( 20, 'test_123456789', 'test_123456789', 'init_user', 1442458942, 1442458942, 1442458942, 0, 0, NULL );
INSERT INTO `weixin_membercard_db` VALUES ( 21, 'test_123456789', 'test_123456789', 'init_user', 1442458960, 1442458960, 1442458960, 0, 0, NULL );
INSERT INTO `weixin_membercard_db` VALUES ( 22, 'test_123456789', 'test_123456789', 'init_user', 1442459145, 1442459145, 1442459145, 0, 0, NULL );
INSERT INTO `weixin_membercard_db` VALUES ( 23, 'test_123456789', 'test_123456789', 'init_user', 1442459182, 1442459182, 1442459182, 0, 0, NULL );
INSERT INTO `weixin_membercard_db` VALUES ( 24, 'test_123456789', 'test_123456789', 'init_user', 1442459321, 1442459321, 1442459321, 0, 0, NULL );
INSERT INTO `weixin_membercard_db` VALUES ( 25, 'test_123456789', 'test_123456789', 'init_user', 1442460807, 1442460807, 1442460807, 0, 0, NULL );
INSERT INTO `weixin_membercard_db` VALUES ( 26, 'test_123456789', 'test_123456789', 'init_user', 1442816585, 1442816585, 1442816585, 0, 0, NULL );
INSERT INTO `weixin_membercard_db` VALUES ( 27, 'test_123456789', 'test_123456789', 'init_user', 1443004340, 1443004340, 1443004340, 0, 0, NULL );

--
-- Table structure for table weixin_message_db
--

DROP TABLE IF EXISTS `weixin_message_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `weixin_message_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fromusername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tousername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `reply` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table weixin_message_db
--

INSERT INTO `weixin_message_db` VALUES ( 1, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'qwqwwqe', 1441795086, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 2, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 121323, 1441795694, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 3, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', '1231dd', 1441796214, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 4, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'wqeqwe', 1441796446, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 5, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', '会员卡', 1441796966, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 6, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', '信息测试', 1441867000, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 7, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 12313, 1441874359, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 8, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'asdasdas', 1441874800, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 9, NULL, NULL, NULL, NULL, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 10, 'o7HySv3cHrB_EnZpIzSeqpYLSgzc', 'gh_5df9d4970346', '。。', 1441875124, NULL, NULL );
INSERT INTO `weixin_message_db` VALUES ( 11, NULL, NULL, NULL, NULL, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 12, NULL, NULL, NULL, NULL, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 13, NULL, NULL, NULL, NULL, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 14, NULL, NULL, NULL, NULL, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 15, 'oXSVywxboKZGjPjePXGM1LkFdOFs', 'gh_0ee0f56d87c9', '？', 1441875333, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 16, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'hi', 1441875395, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 17, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '没反应', 1441875417, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 18, 'o7HySv4_qf2bjN9N0t1Y5Tdmf4b4', 'gh_5df9d4970346', '。。', 1441875425, NULL, NULL );
INSERT INTO `weixin_message_db` VALUES ( 19, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '这么久', 1441875436, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 20, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '不错嘛', 1441875582, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 21, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '再接再厉', 1441875585, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 22, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '么么哒', 1441875586, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 23, 'oXSVywxboKZGjPjePXGM1LkFdOFs', 'gh_0ee0f56d87c9', 125, 1441875709, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 24, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '呵呵呵', 1441875768, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 25, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '你觉得那个兼职怎么样', 1441875782, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 26, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '我周一到周五就周二晚上没空', 1441875796, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 27, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '其他4点到7点半的时间都可以', 1441875808, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 28, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '就是辅导作业', 1441875817, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 29, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '没有粤语要求', 1441876051, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 30, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '英语好就可以沟通吧', 1441876056, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 31, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '有些职位是这样的', 1441876638, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 32, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '你怎么呵呵', 1441876643, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 33, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '', 1441876649, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 34, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '表情', 1441877763, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 35, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', '…', 1441877766, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 36, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', 'like the picture above', 1441877785, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 37, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '好吧', 1441878087, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 38, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '我去游了', 1441878094, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 39, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '借了本书，没地方放', 1441878161, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 40, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '醉了', 1441878171, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 41, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '在找人托放', 1441878181, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 42, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '老师上课要求的读本', 1441878246, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 43, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '人呢', 1441879602, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 44, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '帅哥你不见了', 1441879610, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 45, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '有看到微信吗', 1441879617, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 46, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '么么哒', 1441879620, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 47, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', '，', 1441882599, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 48, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'qweqe', 1441944777, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 49, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 1231, 1441944810, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 50, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', '1231dd', 1441944853, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 51, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'sadd', 1441944880, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 52, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '收到了', 1441946337, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 53, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '学校的地板上哪儿都能看到钱', 1441959112, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 54, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'gh_0ee0f56d87c9', '每次都擦肩而过', 1441959138, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 55, NULL, NULL, NULL, NULL, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 56, NULL, NULL, NULL, NULL, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 57, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', '。。。。', 1441965535, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 58, NULL, NULL, NULL, NULL, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 59, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', '，', 1441989560, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 60, NULL, NULL, NULL, NULL, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 61, NULL, NULL, NULL, NULL, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 62, NULL, NULL, NULL, NULL, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 63, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 1111, 1442459380, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 64, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', '111sd', 1442459615, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 65, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'asdd', 1442459728, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 66, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 12313, 1442459854, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 67, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'asad', 1442459979, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 68, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'aaa', 1442460049, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 69, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', '你好', 1442462087, NULL, NULL );
INSERT INTO `weixin_message_db` VALUES ( 70, NULL, NULL, NULL, NULL, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 71, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'test', 1442816669, NULL, NULL );
INSERT INTO `weixin_message_db` VALUES ( 72, NULL, NULL, NULL, NULL, 'yes', NULL );
INSERT INTO `weixin_message_db` VALUES ( 73, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'test', 1442826902, NULL, NULL );
INSERT INTO `weixin_message_db` VALUES ( 74, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'test', 1442826903, NULL, NULL );
INSERT INTO `weixin_message_db` VALUES ( 75, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'test', 1442826903, NULL, NULL );
INSERT INTO `weixin_message_db` VALUES ( 76, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'test', 1442826903, NULL, NULL );
INSERT INTO `weixin_message_db` VALUES ( 77, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'test', 1442826904, NULL, NULL );
INSERT INTO `weixin_message_db` VALUES ( 78, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'test', 1442826904, NULL, NULL );
INSERT INTO `weixin_message_db` VALUES ( 79, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'test', 1442826904, NULL, NULL );
INSERT INTO `weixin_message_db` VALUES ( 80, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'aaaa', 1442833414, NULL, NULL );
INSERT INTO `weixin_message_db` VALUES ( 81, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 12313, 1442833569, NULL, NULL );
INSERT INTO `weixin_message_db` VALUES ( 82, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'aaa', 1442833637, NULL, NULL );
INSERT INTO `weixin_message_db` VALUES ( 83, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 'qqq', 1442892297, NULL, NULL );
INSERT INTO `weixin_message_db` VALUES ( 84, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'gh_0ee0f56d87c9', 123, 1443004817, NULL, NULL );

--
-- Table structure for table weixin_post_msg_db
--

DROP TABLE IF EXISTS `weixin_post_msg_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `weixin_post_msg_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `belong_to_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` int(11) unsigned DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table weixin_post_msg_db
--

INSERT INTO `weixin_post_msg_db` VALUES ( 1, 'none', 'test post msg', 'http://www.tongchengchina.com/files/wxeca0dc64dd540f5b/thumbnail/4a43510a0830d4d1c60cdf72abc2a193.jpg', 'www.baidu.com', 'user_id', 1442816585, 'edit', 'none' );

--
-- Table structure for table weixin_post_msg_record_db
--

DROP TABLE IF EXISTS `weixin_post_msg_record_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `weixin_post_msg_record_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_user_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_msg_id` tinyint(1) unsigned DEFAULT NULL,
  `post_by` tinyint(1) unsigned DEFAULT NULL,
  `post_time` int(11) unsigned DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table weixin_post_msg_record_db
--

INSERT INTO `weixin_post_msg_record_db` VALUES ( 1, 'all', 1, 1, 1442816586, 'finish', 'data from tencent.', 'none' );

--
-- Table structure for table weixin_reply_db
--

DROP TABLE IF EXISTS `weixin_reply_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `weixin_reply_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fromusername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tousername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `time` int(11) unsigned DEFAULT NULL,
  `messageid` tinyint(3) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idenitfyid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributes` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table weixin_reply_db
--

INSERT INTO `weixin_reply_db` VALUES ( 1, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '您还不是我们的会员，赶快回复【加入会员】，享受会员优惠吧。', 1441359648, 1, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 2, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '您还不是我们的会员，赶快回复【加入会员】，享受会员优惠吧。', 1441359682, 2, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 3, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '感谢您加入我们的会员，您的会员卡号为： M84028625', 1441359724, 3, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 4, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '您的会员卡号为： M84028625', 1441359732, 4, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 5, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M84028625][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.baidu.com]', 1441361293, 2, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 6, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M84028625][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441361312, 3, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 7, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M84028625][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441364228, 4, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 8, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M84028625][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441450289, 5, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 9, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '', 1441450330, 6, 'custom_service', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 10, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '您好，请问有什么可以帮你？', 1441450330, 6, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 11, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M84028625][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441450335, 7, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 12, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '您的会员卡号为： M84028625', 1441450447, 8, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 13, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '感谢您加入我们的会员，您的会员卡号为： M84028625', 1441450464, 9, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 14, 'gh_5df9d4970346', 'o7HySv7bBmE9uaVnsUdSsDzfUZiI', '您还不是我们的会员，赶快回复【加入会员】，享受会员优惠吧。', 1441450480, 10, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 15, 'gh_5df9d4970346', 'o7HySv7bBmE9uaVnsUdSsDzfUZiI', '感谢您加入我们的会员，您的会员卡号为： M47639160', 1441450509, 11, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 16, 'gh_5df9d4970346', 'o7HySv7bBmE9uaVnsUdSsDzfUZiI', '您的会员卡号为： M47639160', 1441450520, 12, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 17, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', NULL, 1441467329, 8, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 18, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/]', 1441467331, 9, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 19, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '您还不是我们的会员，赶快回复【加入会员】，享受会员优惠吧。', 1441467401, 13, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 20, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '感谢您加入我们的会员，您的会员卡号为： M65239257', 1441467406, 14, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 21, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '[病历本][会员卡卡号： M65239257][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw68KGbpxgLM90_mOIJFenz0]', 1441467411, 10, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 22, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '[病历本][会员卡卡号： M65239257][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw68KGbpxgLM90_mOIJFenz0]', 1441467868, 11, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 23, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/]', 1441468098, 12, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 24, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M84028625][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441469440, 13, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 25, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/]', 1441469448, 14, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 26, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441470030, 15, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 27, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441471139, 16, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 28, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw68KGbpxgLM90_mOIJFenz0]', 1441471231, 17, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 29, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M23323669][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441472308, 18, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 30, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw68KGbpxgLM90_mOIJFenz0]', 1441472404, 19, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 31, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '[病历本][会员卡卡号： M43793945][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw68KGbpxgLM90_mOIJFenz0]', 1441472826, 20, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 32, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441529219, 21, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 33, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441529318, 22, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 34, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441529823, 23, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 35, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441530319, 24, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 36, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M50113830][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441530614, 25, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 37, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441530625, 26, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 38, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441530738, 27, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 39, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw68KGbpxgLM90_mOIJFenz0]', 1441530994, 28, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 40, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '[病历本][会员卡卡号： M80419616][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw68KGbpxgLM90_mOIJFenz0]', 1441531115, 29, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 41, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw68KGbpxgLM90_mOIJFenz0]', 1441531141, 30, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 42, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441531469, 31, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 43, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M93438415][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441532526, 32, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 44, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw68KGbpxgLM90_mOIJFenz0]', 1441533857, 33, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 45, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M93438415][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441534286, 34, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 46, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441548479, 35, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 47, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441551349, 36, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 48, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441551736, 37, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 49, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441552406, 42, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 50, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441552664, 43, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 51, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M59581298][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441553285, 44, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 52, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M59581298][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441595661, 46, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 53, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/product/type/ruigule', 1441601427, 49, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 54, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M59581298][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441602819, 50, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 55, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/product/type/ruigule', 1441608144, 51, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 56, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M59581298][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441608148, 52, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 57, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M59581298][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441609747, 54, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 58, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '欢迎使用备忘提示：http://www.tongchengchina.com/support/notebook', 1441623232, 55, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 59, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/product/type/ruigule', 1441623428, 56, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 60, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/productlist/type/ruigule', 1441623500, 57, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 61, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M59581298][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441623749, 58, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 62, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/productlist/type/ruigule', 1441623931, 59, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 63, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '欢迎使用备忘提示：http://www.tongchengchina.com/support/notebook', 1441624021, 60, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 64, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '欢迎使用备忘提示：http://www.tongchengchina.com/support/notebook', 1441624035, 61, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 65, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '', 1441624103, 63, 'custom_service', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 66, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '您好，请问有什么可以帮你？', 1441624103, 63, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 67, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '', 1441624113, 64, 'custom_service', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 68, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '您好，请问有什么可以帮你？', 1441624113, 64, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 69, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/productlist/type/ruigule', 1441624117, 65, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 70, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M59581298][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441624463, 66, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 71, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M59581298][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441624496, 67, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 72, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/productlist/type/ruigule', 1441624501, 69, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 73, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M59581298][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441624558, 70, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 74, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw68KGbpxgLM90_mOIJFenz0]', 1441638328, 71, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 75, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '[病历本][会员卡卡号： M48825683][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw68KGbpxgLM90_mOIJFenz0]', 1441638382, 72, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 76, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/productlist/type/ruigule', 1441639221, 73, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 77, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '欢迎使用备忘提示：http://www.tongchengchina.com/support/notebook', 1441639257, 74, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 78, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '[病历本][会员卡卡号： M48825683][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw68KGbpxgLM90_mOIJFenz0]', 1441639266, 75, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 79, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/productlist/type/ruigule', 1441642881, 80, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 80, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/productlist/type/ruigule', 1441642882, 79, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 81, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/productlist/type/ruigule', 1441642882, 83, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 82, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/productlist/type/ruigule', 1441642882, 81, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 83, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/productlist/type/ruigule', 1441642882, 84, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 84, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/productlist/type/ruigule', 1441642883, 86, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 85, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/productlist/type/ruigule', 1441642882, 85, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 86, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/productlist/type/ruigule', 1441642882, 82, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 87, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M59581298][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441642888, 76, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 88, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M59581298][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441642887, 78, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 89, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M59581298][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441642888, 77, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 90, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M59581298][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441642888, 87, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 91, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M59581298][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441642888, 88, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 92, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/productlist/type/ruigule', 1441643265, 90, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 93, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M59581298][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441643265, 89, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 94, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M59581298][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441644655, 91, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 95, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/productlist/type/ruigule', 1441644707, 92, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 96, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '绑定定aaa失败', 1441767144, 86, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 97, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '绑定aaa失败', 1441767239, 89, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 98, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '绑定wxeca0dc64dd540f5b成功', 1441767262, 90, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 99, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '绑定wxeca0dc64dd540f5b成功', 1441767370, 91, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 100, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '绑定wxeca0dc64dd540f5b成功', 1441770078, 92, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 101, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '绑定wxeca0dc64dd540f5b成功失败', 1441770103, 93, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 102, 'gh_0ee0f56d87c9', 123313, '绑定wxeca0dc64dd540f5b成功', 1441770376, 98, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 103, 'gh_0ee0f56d87c9', 123313, '绑定wxeca0dc64dd540f5b成功', 1441770503, 99, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 104, 'gh_0ee0f56d87c9', 123313, '绑定wxeca0dc64dd540f5b成功', 1441770836, 100, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 105, 'gh_0ee0f56d87c9', 123313, '绑定wxeca0dc64dd540f5b成功', 1441770895, 101, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 106, 'gh_0ee0f56d87c9', 123313, '绑定wxeca0dc64dd540f5b成功', 1441770997, 102, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 107, 'gh_0ee0f56d87c9', 123313, '绑定wxeca0dc64dd540f5b成功', 1441771052, 103, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 108, 'gh_0ee0f56d87c9', 123313, '绑定wxeca0dc64dd540f5b成功', 1441771120, 104, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 109, 'gh_0ee0f56d87c9', 123313, '绑定wxeca0dc64dd540f5b成功', 1441771231, 105, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 110, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '您的会员卡号为： M59581298', 1441796966, 5, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 111, 'gh_5df9d4970346', 'o7HySv3cHrB_EnZpIzSeqpYLSgzc', '欢迎关注', 1441875117, 93, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 112, 'gh_0ee0f56d87c9', 'oXSVywxboKZGjPjePXGM1LkFdOFs', '欢迎关注', 1441875286, 94, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 113, 'gh_0ee0f56d87c9', 'oXSVywxboKZGjPjePXGM1LkFdOFs', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/productlist/type/ruigule', 1441875290, 95, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 114, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '收到', 1441875306, 1, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 115, 'gh_0ee0f56d87c9', 'oXSVywxboKZGjPjePXGM1LkFdOFs', '', 1441875307, 98, 'custom_service', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 116, 'gh_0ee0f56d87c9', 'oXSVywxboKZGjPjePXGM1LkFdOFs', '您好，请问有什么可以帮你？', 1441875307, 98, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 117, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '收到', 1441875313, 2, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 118, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '收到', 1441875319, 3, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 119, 'gh_0ee0f56d87c9', 'oXSVywxboKZGjPjePXGM1LkFdOFs', '2015-09-10 16:55:33', 1441875333, 15, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 120, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '收到', 1441875339, 4, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 121, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'asdad', 1441875383, 6, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 122, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'assacc', 1441875393, 7, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 123, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'casca', 1441875399, 8, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 124, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'Hi, 你好，我是帅气的王润心', 1441875430, 16, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 125, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '这个是我人工回复的好不好', 1441875493, 17, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 126, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '嘿嘿，我这边已经可以处理消息了\n', 1441875522, 19, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 127, 'gh_0ee0f56d87c9', 'oXSVywxboKZGjPjePXGM1LkFdOFs', '收到', 1441875732, 23, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 128, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '哈哈，一下子来了这么多', 1441875747, 22, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 129, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '要忙不过来了', 1441875766, 20, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 130, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '呵呵你妹，游泳没有', 1441875785, 24, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 131, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '问题是粤语，你搞的定么？', 1441876008, 28, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 132, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '呵呵', 1441876618, 30, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 133, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '你发了个空的吗？\n', 1441877748, 33, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 134, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '好吧，看来这个不能处理表情', 1441877795, 34, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 135, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '收不到，只能收到文字\n', 1441877978, 36, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 136, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '好吧，去吧，么么哒', 1441878153, 38, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 137, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '无语，你借了什么', 1441878206, 41, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 138, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '无语\n', 1441878275, 42, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 139, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '我也是醉了', 1441878337, 40, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 140, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '看到微信啦', 1441881706, 44, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 141, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '么么哒', 1441881730, 46, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 142, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '猪猪注意安全', 1441881766, 32, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 143, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 12313, 1441881906, 35, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 144, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', 10, 1441881923, 29, 'text', NULL, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 145, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '你好', 1441884457, 47, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 146, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '您的新信息已收到', 1441944905, 48, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 147, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '您的新信息已收到', 1441944924, 49, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 148, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '您的新信息已收到', 1441944928, 50, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 149, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '您的新信息已收到', 1441944932, 51, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 150, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'WRX_WEIXIN_READ', 1441945292, 21, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 151, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'WRX_WEIXIN_READ', 1441945295, 25, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 152, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'WRX_WEIXIN_READ', 1441945298, 26, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 153, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'WRX_WEIXIN_READ', 1441945300, 27, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 154, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'WRX_WEIXIN_READ', 1441945333, 31, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 155, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'WRX_WEIXIN_READ', 1441945335, 37, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 156, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'WRX_WEIXIN_READ', 1441945337, 39, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 157, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'WRX_WEIXIN_READ', 1441945339, 43, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 158, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'WRX_WEIXIN_READ', 1441945341, 45, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 159, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '晕，收到什么了', 1441958833, 52, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 160, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1441964758, 100, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 161, 'gh_0ee0f56d87c9', 'oXSVywxboKZGjPjePXGM1LkFdOFs', '[病历本][您还不是会员，点击注册][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/user_name/oXSVywxboKZGjPjePXGM1LkFdOFs]', 1441965444, 101, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 162, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'test', 1441965551, 57, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 163, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '哈哈，你们学校的人太有钱了', 1441965661, 53, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 164, 'gh_0ee0f56d87c9', 'oXSVywxboKZGjPjePXGM1LkFdOFs', '欢迎使用备忘提示：http://www.tongchengchina.com/support/notebook', 1441965757, 102, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 165, 'gh_0ee0f56d87c9', 'oXSVyw68KGbpxgLM90_mOIJFenz0', '啊哈哈', 1441967356, 54, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 166, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '我爱石冰艳', 1441989595, 59, 'text', 1, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 167, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '瑞古乐是一种.......详细介绍：http://www.tongchengchina.com/support/productlist/type/ruigule', 1442196831, 104, 'text', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 168, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[病历本][会员卡卡号： M45076599][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/member_id/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1442385047, 106, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 169, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[在线病历本][欢迎使用在线病历本，您可以把病例拍照上传到这里，方便日后查看使用，您的会员编号为： M45076599][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/openid/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1442385332, 107, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 170, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'WRX_WEIXIN_READ', 1442462010, 63, 'text', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', NULL );
INSERT INTO `weixin_reply_db` VALUES ( 171, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'WRX_WEIXIN_READ', 1442462012, 64, 'text', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', NULL );
INSERT INTO `weixin_reply_db` VALUES ( 172, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'WRX_WEIXIN_READ', 1442462015, 65, 'text', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', NULL );
INSERT INTO `weixin_reply_db` VALUES ( 173, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'WRX_WEIXIN_READ', 1442462017, 66, 'text', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', NULL );
INSERT INTO `weixin_reply_db` VALUES ( 174, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'WRX_WEIXIN_READ', 1442462019, 67, 'text', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', NULL );
INSERT INTO `weixin_reply_db` VALUES ( 175, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '你好', 1442462026, 68, 'text', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', NULL );
INSERT INTO `weixin_reply_db` VALUES ( 176, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[在线病历本][欢迎使用在线病历本，您可以把病例拍照上传到这里，方便日后查看使用，您的会员编号为： M45076599][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/openid/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1442462101, 109, 'news', 0, NULL );
INSERT INTO `weixin_reply_db` VALUES ( 177, 'gh_0ee0f56d87c9', 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', '[在线病历本][欢迎使用在线病历本，您可以把病例拍照上传到这里，方便日后查看使用，您的会员编号为： M45076599][http://i1.tietuku.com/769c2b3156959377s.jpg][http://www.tongchengchina.com/support/medicalbook/openid/oXSVyw2oToSVSWWKMfxvKdDsz8sU]', 1442816693, 111, 'news', 0, NULL );

--
-- Table structure for table weixin_user_db
--

DROP TABLE IF EXISTS `weixin_user_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `weixin_user_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `belong_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `real_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weixin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weixin_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weixin_group` tinyint(3) unsigned DEFAULT NULL,
  `create_time` int(11) unsigned DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` tinyint(3) unsigned DEFAULT NULL,
  `weixin_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table weixin_user_db
--

INSERT INTO `weixin_user_db` VALUES ( 1, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'wxeca0dc64dd540f5b', 'unknown', 'unknown', 'wangrunxinyes', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJKawKEtTuyDOtFiaREhPPoMUq3GlCPdDIJZSt5DIiatlibMrAeS4dZ62lN0r8INJnkaW8ohESNKvNMw/', 0, 1441347780, '中国香港', '九龙城区', '', 1, 'okNlYwAj_AIWKCelFZSPwMZLhoFI', 'unknown' );
INSERT INTO `weixin_user_db` VALUES ( 2, 'oXSVyw68KGbpxgLM90_mOIJFenz0', 'wxeca0dc64dd540f5b', 'unknown', 'unknown', 'Shibingyan', 'http://wx.qlogo.cn/mmopen/UdIorOKF3RSsn3UW53bhS9Oj5ymzDIqzSzwBE2KnGyFaf5BhvUIJ7WPibDhDAibFcvPIoPpKh4WlZsUBFOA4RZZA/', 0, 1441467327, '中国', '上海', '金山', 2, 'okNlYwFr4r0tPH1Ot1bvOPbEqLvI', 'unknown' );
INSERT INTO `weixin_user_db` VALUES ( 3, 'oXSVywxboKZGjPjePXGM1LkFdOFs', 'wxeca0dc64dd540f5b', 'unknown', 'unknown', '零丶感', 'http://wx.qlogo.cn/mmopen/x2picuKmNXNibrszm1GpHTkS3N7nl5zVaguRTxsRgNdqPd2mhFs7YkJEDPmJ0NicYqibLraneMmiaXISZvebrGHsx46DYAiaU1YRog/', 0, 1441875286, '中国香港', '九龙城区', '', 1, 'okNlYwGbKRdmvlX0IV_v5wM25vdU', 'unknown' );

--
-- Table structure for table wrx_image_db
--

DROP TABLE IF EXISTS `wrx_image_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wrx_image_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identify` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` int(11) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table wrx_image_db
--

INSERT INTO `wrx_image_db` VALUES ( 2, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 1442312578, 'img', 'init', 'null', 'cac6533602a9f9743fe4b551b8e7ea5f.png', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 3, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 1442314842, 'img', 'init', 'null', 'a5ee9a2f0c79e231471d821d6ff16268.jpg', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 4, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 1442317853, 'img', 'init', 'null', 'b3d59a390b79ca1aed669664de03bd95.jpg', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 5, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 1442317854, 'img', 'init', 'null', 'a6160110c4a2efba0d4148949a5768be.jpg', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 6, 'wxeca0dc64dd540f5b', 1442401840, 'img', 'init', 'null', '4a43510a0830d4d1c60cdf72abc2a193.jpg', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 7, 'HJFHA18asFDF', 1442458929, 'img', 'init', 'icon.png', 'icon.png', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 8, 'HJFHA18asFDF', 1442458942, 'img', 'init', 'icon.png', 'icon.png', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 9, 'HJFHA18asFDF', 1442458960, 'img', 'init', 'icon.png', 'icon.png', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 10, 'HJFHA18asFDF', 1442459145, 'img', 'init', 'icon.png', 'icon.png', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 11, 'HJFHA18asFDF', 1442459182, 'img', 'init', 'icon.png', 'icon.png', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 12, 'HJFHA18asFDF', 1442459321, 'img', 'init', 'icon.png', 'icon.png', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 13, 'HJFHA18asFDF', 1442460807, 'img', 'init', 'icon.png', 'icon.png', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 14, 'wxeca0dc64dd540f5b', 1442587429, 'img', 'init', 'null', 'e1b256c11bcc29b6de47cf2320935e54.png', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 15, 'wxeca0dc64dd540f5b', 1442587442, 'img', 'init', 'null', '2c7b8446fbec896a8281ff975bfc6213.png', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 16, 'wxeca0dc64dd540f5b', 1442761372, 'img', 'init', 'null', 'bcf84c96ed42ca4529c2cfbfcddec9d7.png', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 17, 'HJFHA18asFDF', 1442816585, 'img', 'init', 'icon.png', 'icon.png', 'init', 'init' );
INSERT INTO `wrx_image_db` VALUES ( 18, 'HJFHA18asFDF', 1443004340, 'img', 'init', 'icon.png', 'icon.png', 'init', 'init' );

--
-- Table structure for table wrx_model_behavior
--

DROP TABLE IF EXISTS `wrx_model_behavior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wrx_model_behavior` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `behavior_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
INSERT INTO `wrx_model_behavior` VALUES ( 18, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'weixin_msg', 79, 1442826904, '103.7.30.104', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 19, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'weixin_msg', 80, 1442833415, '103.7.30.104', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 20, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'weixin_msg', 81, 1442833569, '103.7.30.104', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 21, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'weixin_msg', 82, 1442833637, '103.7.30.104', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 22, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'weixin_msg', 83, 1442892297, '103.7.30.104', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 23, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'weixin_msg', 84, 1443004817, '103.7.30.108', NULL );
INSERT INTO `wrx_model_behavior` VALUES ( 24, 'oXSVyw2oToSVSWWKMfxvKdDsz8sU', 'guest', 'wxeca0dc64dd540f5b', 'website', 'medicalbook', 1443173887, '203.160.68.75', NULL );

--
-- Table structure for table wrx_model_product_db
--

DROP TABLE IF EXISTS `wrx_model_product_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wrx_model_product_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `p_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_des` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_details` tinyint(1) unsigned DEFAULT NULL,
  `p_image` tinyint(1) unsigned DEFAULT NULL,
  `p_activity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_time` int(11) unsigned DEFAULT NULL,
  `p_show_type` tinyint(3) unsigned DEFAULT NULL,
  `p_custom_html` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_attributes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table wrx_model_product_db
--


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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table wrx_model_system_basic
--

INSERT INTO `wrx_model_system_basic` VALUES ( 1, 1, 0, 1443004424, 1, 1442920014 );

--
-- Table structure for table wrx_oauth_store
--

DROP TABLE IF EXISTS `wrx_oauth_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wrx_oauth_store` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identify` tinyint(3) unsigned DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table wrx_oauth_store
--

INSERT INTO `wrx_oauth_store` VALUES ( 1, 0, '\r\n\r\n\r\nMTI4ZGNmZmIyODExYTdkMzc0NGVkMjIwMmU4NzQ0ZmI%3DWRX_OAUTH89d9df5b047f9886cdf787a8475cd8bc055c1cdc6', 1438764486 );
INSERT INTO `wrx_oauth_store` VALUES ( 2, 0, '\r\n\r\n\r\nMTZjNWRkZjgwNmI5YjBjNzNjMzJkZDVlMTkzMDM3NTk%3DWRX_OAUTH4ee6e6c11d5e2242478a19be7cf623f5055c1ce4e', 1438764622 );
INSERT INTO `wrx_oauth_store` VALUES ( 3, 0, '\r\n\r\n\r\nMzhjMmYyYjE0YzQzNGM0ZmEzYjM1ZTA2MWRiMDcxYjA%3DWRX_OAUTHf365f2be049ff3565e5107b4fef1e599055c1ce6b', 1438764651 );
INSERT INTO `wrx_oauth_store` VALUES ( 4, 0, '\r\n\r\n\r\nYmMwMWVjOTA5YzY3YWQzMTI1MWEyMmQ4NzdjYWI4MmI%3DWRX_OAUTHe6d35143b12a37dd187b0b425f924398055c1ce6d', 1438764653 );
INSERT INTO `wrx_oauth_store` VALUES ( 5, 0, '\r\n\r\n\r\nMmUzNTk0MmY4YWI1ZjEwOGM5MjE3NjJjM2MwZTI0MTQ%3DWRX_OAUTH283b44d5a51b422a52ab817c26f00259055c1ce8b', 1438764684 );
INSERT INTO `wrx_oauth_store` VALUES ( 6, 0, 'MzU3NTlmZjgwMDdkYjE3NzNhZGUwYzg0YzcwNTgzZjk%3DWRX_OAUTHc452a30be6142d2c5985e6daf06ea57a055c1e9a7', 1438771623 );

--
-- Table structure for table wrx_user_db
--

DROP TABLE IF EXISTS `wrx_user_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `wrx_user_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wrx_username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wrx_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wrx_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wrx_type` tinyint(3) unsigned DEFAULT NULL,
  `wrx_level` tinyint(3) unsigned DEFAULT NULL,
  `wrx_state` tinyint(3) unsigned DEFAULT NULL,
  `wrx_last` int(11) unsigned DEFAULT NULL,
  `wrx_createtime` int(11) unsigned DEFAULT NULL,
  `wrx_weixin_json` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table wrx_user_db
--

INSERT INTO `wrx_user_db` VALUES ( 1, 'init_database', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJKawKEtTuyDOtFiaREhPPoMUq3GlCPdDIJZSt5DIiatlibMrAeS4dZ62lN0r8INJnkaW8ohESNKvNMw/64', '57910fac9b0270812ff3c56028e6f4c2', 3, 0, 0, 1441764801, 1441764801, '[\"wxeca0dc64dd540f5b\"]', '{\"init\":\"data\"}' );

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
