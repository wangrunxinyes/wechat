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
-- Table structure for table oauth_consumer_registry
--

DROP TABLE IF EXISTS `oauth_consumer_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `oauth_consumer_registry` (
  `ocr_id` int(11) NOT NULL AUTO_INCREMENT,
  `ocr_usa_id_ref` int(11) DEFAULT NULL,
  `ocr_consumer_key` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ocr_consumer_secret` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ocr_signature_methods` varchar(255) NOT NULL DEFAULT 'HMAC-SHA1,PLAINTEXT',
  `ocr_server_uri` varchar(255) NOT NULL,
  `ocr_server_uri_host` varchar(128) NOT NULL,
  `ocr_server_uri_path` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ocr_request_token_uri` varchar(255) NOT NULL,
  `ocr_authorize_uri` varchar(255) NOT NULL,
  `ocr_access_token_uri` varchar(255) NOT NULL,
  `ocr_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ocr_id`),
  UNIQUE KEY `ocr_consumer_key` (`ocr_consumer_key`,`ocr_usa_id_ref`,`ocr_server_uri`),
  KEY `ocr_server_uri` (`ocr_server_uri`),
  KEY `ocr_server_uri_host` (`ocr_server_uri_host`,`ocr_server_uri_path`),
  KEY `ocr_usa_id_ref` (`ocr_usa_id_ref`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table oauth_consumer_registry
--

INSERT INTO `oauth_consumer_registry` VALUES ( 1, 1, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '8cd9b5d9281532728ad4970d3e102dc2', 'HMAC-SHA1,PLAINTEXT', 'http://www.wangrunxin.com/', 'www.wangrunxin.com', '王润心的个人网站', 'http://www.tongchengchina.com/interface/Requesttoken', 'http://www.wangrunxin.com/oauth_sdk/example.php', 'http://www.wangrunxin.com/oauth_sdk/example.php', '2015-08-04 12:29:15' );

--
-- Table structure for table oauth_consumer_token
--

DROP TABLE IF EXISTS `oauth_consumer_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `oauth_consumer_token` (
  `oct_id` int(11) NOT NULL AUTO_INCREMENT,
  `oct_ocr_id_ref` int(11) NOT NULL,
  `oct_usa_id_ref` int(11) NOT NULL,
  `oct_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `oct_token` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `oct_token_secret` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `oct_token_type` enum('request','authorized','access') DEFAULT NULL,
  `oct_token_ttl` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `oct_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`oct_id`),
  UNIQUE KEY `oct_ocr_id_ref` (`oct_ocr_id_ref`,`oct_token`),
  UNIQUE KEY `oct_usa_id_ref` (`oct_usa_id_ref`,`oct_ocr_id_ref`,`oct_token_type`,`oct_name`),
  KEY `oct_token_ttl` (`oct_token_ttl`),
  CONSTRAINT `oauth_consumer_token_ibfk_1` FOREIGN KEY (`oct_ocr_id_ref`) REFERENCES `oauth_consumer_registry` (`ocr_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table oauth_consumer_token
--

INSERT INTO `oauth_consumer_token` VALUES ( 116, 1, 1, '', 'b8a5da1f016a755be14b168f52e493ef055cd4d0e', 'b2c9b704f715fe9c70f1bc6b4b028324', 'request', '2015-08-14 11:06:06', '2015-08-14 10:06:06' );

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
-- Table structure for table oauth_server_nonce
--

DROP TABLE IF EXISTS `oauth_server_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `oauth_server_nonce` (
  `osn_id` int(11) NOT NULL AUTO_INCREMENT,
  `osn_consumer_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `osn_token` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `osn_timestamp` bigint(20) NOT NULL,
  `osn_nonce` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`osn_id`),
  UNIQUE KEY `osn_consumer_key` (`osn_consumer_key`,`osn_token`,`osn_timestamp`,`osn_nonce`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table oauth_server_nonce
--

INSERT INTO `oauth_server_nonce` VALUES ( 211, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '', 1439517964, '55cd4d0c79135' );
INSERT INTO `oauth_server_nonce` VALUES ( 24, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '011e1ee2d6dcb61f7a2dfde50cef177d055c06e7d', 1438674557, '0V80uC3MJpYbAfuXpCHi2ucWOk55z6Wt' );
INSERT INTO `oauth_server_nonce` VALUES ( 61, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '0744512d65478a294be4deaa00995993055c1c6c4', 1438762692, 'tFYU3zJET4ZwQ8mggeU4ZjfGlStjcRaF' );
INSERT INTO `oauth_server_nonce` VALUES ( 162, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '0c147d3d30f65c643fd9a38bbb15c714055c43585', 1438922145, 'iGkshpb5BOtlPExG37c6TXQ2pmhsd4RR' );
INSERT INTO `oauth_server_nonce` VALUES ( 91, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '0dae8edbdcaef1dcba279415af6b6b8b055c1ce4e', 1438764622, 'UnVACM8i8xsJVJ6IYXMBJkJdbqFVMkNy' );
INSERT INTO `oauth_server_nonce` VALUES ( 73, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '0dbc1b2c75dfb3c415923d52e350c17b055c1c7eb', 1438762987, 'cYPOdC2zJfbivdK6ImFy52rMR40lKOSl' );
INSERT INTO `oauth_server_nonce` VALUES ( 105, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '1132c9d32bf717664aebf3aecb09e4ee055c1e0a5', 1438769317, 'TgMGtezcZkLDL1scEhgC0yf7FP2pYzGJ' );
INSERT INTO `oauth_server_nonce` VALUES ( 26, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '127187af88f101d8c13fb514314cca7c055c06eba', 1438674618, 'jWPrjJeMITqtdLUB3bDMVv543yd6bHvW' );
INSERT INTO `oauth_server_nonce` VALUES ( 115, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '1625dec1cfdfd9af489af1c6ceadd517055c1e1a1', 1438769570, 'Q9a9WKZLRnzTkqmFzHkFhyYYHQdcwUzq' );
INSERT INTO `oauth_server_nonce` VALUES ( 167, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '19d21fecc7a6ea5a79a7ed46b2841387055c4399c', 1438923352, 'yGJYlhMMCstTB3MW0qcY2pFCqmFXo69A' );
INSERT INTO `oauth_server_nonce` VALUES ( 16, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '1a35012bb8763cf6386bfff3dad0b953055c06c49', 1438673993, 'WSX9ZFJngEJ57h2vpxgltSuO9hkEMdQ3' );
INSERT INTO `oauth_server_nonce` VALUES ( 43, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '1bd1a2794ddf4e6e5f45d6c5eb06b679055c1c2ff', 1438761727, '60OZv2QYYGfVY1dFtEtzVEfskDgF8GJ4' );
INSERT INTO `oauth_server_nonce` VALUES ( 30, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '269543231e7da62af8a434410e20cb64055c08995', 1438681493, 'aLQgJXseSmQ9SOYBoEkGHKSZtq4CWwS9' );
INSERT INTO `oauth_server_nonce` VALUES ( 148, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '2926d33a0a243a8b21a2e6d6b587d2b7055c42cd0', 1438920560, 'ixxbuBWVNwNIhwWuykKJI82pmFaZyaYs' );
INSERT INTO `oauth_server_nonce` VALUES ( 113, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '2a00bd476543a26c01927ebb9546443e055c1e148', 1438769481, '1yWz6eqVEX6muFzBYQVQXtKPMZ8LgnGm' );
INSERT INTO `oauth_server_nonce` VALUES ( 97, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '2bd40f82587969fbc8b457cc310b7a1b055c1ce8b', 1438764683, 'e0wxb5TaruqK4oVhFwMcl6NvFRlEL0fB' );
INSERT INTO `oauth_server_nonce` VALUES ( 123, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '2d77330e175b28bbdae1ca29581b99d6055c1e29e', 1438769822, '1V8oboy5PrC5bVjZXa5Un2Wq8QjDutb8' );
INSERT INTO `oauth_server_nonce` VALUES ( 125, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '2fd3c54cb37a75ab80310b52df0cb06e055c1e2c9', 1438769865, '1h0NSF6YNvnwnvaUIUk7ppcBxeCkI6WM' );
INSERT INTO `oauth_server_nonce` VALUES ( 57, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '32245e3bd136bcb8ed50d9e1a41b2831055c1c69a', 1438762650, 'upewFyM5apLhAGvy0ASU1RcMJHj9JQAu' );
INSERT INTO `oauth_server_nonce` VALUES ( 156, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '324ec0392f586e0a7f78f682e4ea61ab055c43416', 1438921757, 'Dy7sCGSQAbaeuFFXNdDQspLgZnh3jHUy' );
INSERT INTO `oauth_server_nonce` VALUES ( 139, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '38071627418fa7eabc7833d00257d6cd055c1eb52', 1438772050, 'VRLL77lY7ReugztwpdHMSh0uwHXnHYGE' );
INSERT INTO `oauth_server_nonce` VALUES ( 119, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '391a0b2a828a52f103186467bd1fdd18055c1e269', 1438769769, 'HbuiZFqqZhCiHCOfxMb8wluh5qWycAeh' );
INSERT INTO `oauth_server_nonce` VALUES ( 10, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '3bcc6bf2eecb0caea127fb815d37f562055c04785', 1438664581, 'bQ4DQyMzDHoN0k97W4KUUZr0SIVKjjqY' );
INSERT INTO `oauth_server_nonce` VALUES ( 117, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '3becdd782d97b65835f8e4af47bf9a4f055c1e1f5', 1438769653, 'gPdUMeElBWeKM9O4XBIObvNV5zpSJ2nE' );
INSERT INTO `oauth_server_nonce` VALUES ( 75, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '3ff54188127cb24c571cd8372e56509d055c1c891', 1438763153, 'ocjNzHejtcfYbTcKjvp8XgK4HSx2CzD0' );
INSERT INTO `oauth_server_nonce` VALUES ( 53, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '4094d413ab2ba83b04868a96f397eb37055c1c529', 1438762281, '8Xg9LtnQ8FdwA0SpYuWdDyw9oabXDP3P' );
INSERT INTO `oauth_server_nonce` VALUES ( 181, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '44efcef84c6783745a40aaf69c21b68f055c46afe', 1438936575, '1OmoVFL020Kfu2a8Pvl6bB9893UHN5tK' );
INSERT INTO `oauth_server_nonce` VALUES ( 152, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '483d13c97027cec98a48485561e93e98055c4324c', 1438921297, 'jhoSKDGSfiXExAHjQoSsT0X9TjV1yDd8' );
INSERT INTO `oauth_server_nonce` VALUES ( 32, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '4e008f0a0f63fcda2ce4098b8f0a0f7c055c08fec', 1438683117, 'e2PMZxs2SZsOLorPZcuinncVioFWAdt4' );
INSERT INTO `oauth_server_nonce` VALUES ( 150, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '56b04686dc136729440899c40c666ed5055c4311a', 1438920992, 'vXpp6Q16p167hqdb1zrvwopO6mbkBsnK' );
INSERT INTO `oauth_server_nonce` VALUES ( 209, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '5ca332a1f348bfa4ffae26c0012e5f64055cb0bbe', 1439370222, '2qgVERmRmsgZZbA2TvpeUnkhohrpablk' );
INSERT INTO `oauth_server_nonce` VALUES ( 18, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '633ad267be35b3ff0129dc4ea5635b4c055c06c81', 1438674049, 'KN3QYno1qh8fjmf9oYcNQWXNpC0fiRiJ' );
INSERT INTO `oauth_server_nonce` VALUES ( 107, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '63ab571f6c457bddc96f1ec1380c097b055c1e0b4', 1438769332, 'LoQwLGNoq15wYcHu8B5p73eREUAWWZ7f' );
INSERT INTO `oauth_server_nonce` VALUES ( 193, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '6a09c1d11c8dfd213ae4b0cd6a04f6db055c489a6', 1438943663, 'WeKM9O4XBIObvNV5zpSJ2nEKB3HbuiZF' );
INSERT INTO `oauth_server_nonce` VALUES ( 65, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '6b0e74850100b2b3cc27cf275429cbef055c1c6ee', 1438762734, 'n7M5uXkSbaPbAX9Zh1BLlC3tnrPAuIN4' );
INSERT INTO `oauth_server_nonce` VALUES ( 83, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '6c8f4d22885848fa16283b1290ed1d76055c1c999', 1438763418, 'iohQ7WGErDc2RbartOsQSenHaFN0VQ3d' );
INSERT INTO `oauth_server_nonce` VALUES ( 99, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '6f4f783edf3bbb10bfe17f3a701c9652055c1d032', 1438765106, 'YFq1iv8ZAAamW6n5YN6FKSc4S40JrAmE' );
INSERT INTO `oauth_server_nonce` VALUES ( 45, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '6f93f9456d06e563b3908b76430cfe5f055c1c30d', 1438761742, 'ZkQnh9FvggVXOCdsgGEdrrNYImLUUo9M' );
INSERT INTO `oauth_server_nonce` VALUES ( 95, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '7863ed3faf9a2e5173389b00d4222064055c1ce6d', 1438764653, 'P17CBy8Fd8Ten6Srij2SH7QCNliijlPX' );
INSERT INTO `oauth_server_nonce` VALUES ( 85, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '7cf7152050381f6ff7f54f65c1c09e33055c1c9ba', 1438763450, 'iKKVJuqKs5HLYDOQeHtkIpT2nlNkHBo3' );
INSERT INTO `oauth_server_nonce` VALUES ( 20, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '7d9acb39128dd4eb8a2ace17c78ee607055c06ccb', 1438674123, 'lrR0GCORQ0HPpjQouK7wE3QF1qSPbByr' );
INSERT INTO `oauth_server_nonce` VALUES ( 135, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '7fa29d1893ec27d53816a93fd2f82dc6055c1e4c9', 1438770377, '8nGs8VRyaF6Xbc91GCdyCv0WrXKZ9z94' );
INSERT INTO `oauth_server_nonce` VALUES ( 77, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '8333c03c1f2b360482fb6dbbe4088487055c1c90d', 1438763277, 'qWyBi0MF4EXpIsOaHvyNZqTD4h4wTFMO' );
INSERT INTO `oauth_server_nonce` VALUES ( 171, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '894039df996fb2861c7ad6e2761dc32c055c43b3f', 1438923598, 'NlcxOdCESXKScszQv2yD0yEPrklw0dAk' );
INSERT INTO `oauth_server_nonce` VALUES ( 63, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '8a926ad7c08ceab99b857fe935949e04055c1c6e6', 1438762726, 'YgxRWEEyOT45hmgzzSdzqMnd1WJ57FJh' );
INSERT INTO `oauth_server_nonce` VALUES ( 121, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '8cb110ae29c79eef084511a1c003aa1b055c1e296', 1438769814, 'jv7MZ89Y9bFSa8KKQYYix9tI6DPKST7C' );
INSERT INTO `oauth_server_nonce` VALUES ( 89, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '8fc8ef4b602cff2da866aab80c0bbba8055c1cdc5', 1438764485, 'wigcuT4it6vs3GT8kQ4kTiptPgJyKso3' );
INSERT INTO `oauth_server_nonce` VALUES ( 37, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '91efc7430ae85371d868d9dddb23fc4a055c09d94', 1438686612, 'JwPk4SYEV5Sm968a4oPjyWyvWcqX390o' );
INSERT INTO `oauth_server_nonce` VALUES ( 154, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '927cb43152bd38dc0f6da462eaf39832055c432db', 1438921472, '7ged1fGmtMxHy4CfRQirukof2dgazKL8' );
INSERT INTO `oauth_server_nonce` VALUES ( 127, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '9442e437c328a6d8140cf7717ac4e1d8055c1e2e0', 1438769888, 'U2m8cSGcB8VyBTj0aLxVLOR8lFY0pn5m' );
INSERT INTO `oauth_server_nonce` VALUES ( 69, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '973e042312b40fceaab3981fde4d0435055c1c74d', 1438762830, 'i6wzTDLkO9NRm9HqoA5IhU2XP7aSpFxG' );
INSERT INTO `oauth_server_nonce` VALUES ( 59, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '97d6e43745a5c05103683dd858c6991b055c1c6b4', 1438762676, 'LsnrrTIduYewnO7a507x4DssijPhf6sQ' );
INSERT INTO `oauth_server_nonce` VALUES ( 93, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '97d8e61c8b0659a91b5746dd6cb18b4b055c1ce6b', 1438764651, 'sOt2tGo6XAvdJup8aRc45FsKPnhmgXhE' );
INSERT INTO `oauth_server_nonce` VALUES ( 168, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'a4a6da13c05a310d994c0cd507b7a394055c437f3', 1438923389, 'ArT1zs7OCUvZkxq0NzIQBHHWR9fi9EHn' );
INSERT INTO `oauth_server_nonce` VALUES ( 12, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'a58f885ec20d3cc11a560e02d443b753055c047a1', 1438664609, '2W1PMAPGxzTqaSNL0WEWTL2FbO38I2i6' );
INSERT INTO `oauth_server_nonce` VALUES ( 129, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'ab0089338facae2802b4ad131c4bf200055c1e2ee', 1438769902, 'yilKpzheibsA36uy1Ntm2fZHrU8O6Luo' );
INSERT INTO `oauth_server_nonce` VALUES ( 67, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'ae76affb735c27aba36f6f7ca6ee7c3e055c1c748', 1438762824, 'pNZ7yFVGYZcMDlvN1Q5x53Dmj5p7Fw59' );
INSERT INTO `oauth_server_nonce` VALUES ( 41, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'b1d0c4d0795133922bafe0fb8a411c98055c1c2ab', 1438761643, 'CYxLZ8myCc3F5QXyulUcrmf32aQ5Qr1M' );
INSERT INTO `oauth_server_nonce` VALUES ( 101, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'bb180f8388153a351fe59f23807b9426055c1d03e', 1438765118, 'hNYCBfMH5xNHGeIZRqMnCJIeodInavvb' );
INSERT INTO `oauth_server_nonce` VALUES ( 111, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'bcd227f7b97ff8db17f53b0357ba5317055c1e0cb', 1438769355, 'lNDERLaqb4MVNPKYECKUdy0BtcfmTFH3' );
INSERT INTO `oauth_server_nonce` VALUES ( 133, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'c0c20e7011f246690765e6fe0e6526cb055c1e4a4', 1438770340, 'FrVWHMhA4dkvTYWFKNryKRH7sV1QZbhH' );
INSERT INTO `oauth_server_nonce` VALUES ( 22, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'c690bcd5131781f8406d55cd640ba1e3055c06d4a', 1438674250, 'uJHIsNzph266sxwFWTzrdbqgd0PursZX' );
INSERT INTO `oauth_server_nonce` VALUES ( 79, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'd01392943d40959efe384bab707026f8055c1c975', 1438763381, 'laVer2uTZyXYi9rHdNwM6ZirNFmoCjNR' );
INSERT INTO `oauth_server_nonce` VALUES ( 51, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'd17b51ceffbbcd03cc7e93f9647e47ed055c1c49d', 1438762142, 'nSsujbFAdSnE2yk3hhIETGiKmPfeCkjp' );
INSERT INTO `oauth_server_nonce` VALUES ( 158, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'd3ff5841377a4567414b1d7ab8c21695055c434ad', 1438921906, 'BMfRxlb8dBPnZ1iOGybbEGzGJm33g5Ju' );
INSERT INTO `oauth_server_nonce` VALUES ( 131, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'd53e4ba030bb61bda17c9a7a163f2326055c1e47a', 1438770298, 'GZoMoqCoKtTBruIuJi1GjgifocvNIu7o' );
INSERT INTO `oauth_server_nonce` VALUES ( 47, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'd7069e1a42e17aa1c697e7e55b8df7aa055c1c3c2', 1438761922, 'MXd1EZqcAkDajkk14Nrlx7seY6mh47AA' );
INSERT INTO `oauth_server_nonce` VALUES ( 103, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'd76d08b5980a1a2da593a9df03783a5f055c1e065', 1438769254, 'bkUpE7uWvYvEKvHTPMiuIpYNTtZEjA3p' );
INSERT INTO `oauth_server_nonce` VALUES ( 179, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'da2913b838d6256332ec7393c1f32ffa055c44415', 1438925854, 'MVv543yd6bHvWvLUcK7VX7ztPmu4SFHF' );
INSERT INTO `oauth_server_nonce` VALUES ( 14, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'dd2199bf977af44c2003b4a9832ba628055c069d5', 1438673365, 'HC6ZdGhx951k8wEQfd125TtoKMQROAvV' );
INSERT INTO `oauth_server_nonce` VALUES ( 71, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'ded266ad3495e2b90a625d990b1f764b055c1c7dd', 1438762973, 'uaVkcyC6iaXEDWvFyonoUsay2CXkMPmt' );
INSERT INTO `oauth_server_nonce` VALUES ( 174, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'e082fd886e5ff330f358c5016ba240f7055c43b53', 1438923905, 'jVe85exTKxk4TAW9Azf6seApAML1yWap' );
INSERT INTO `oauth_server_nonce` VALUES ( 49, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'e6a419910cc67f4cfae93401942b20fb055c1c458', 1438762072, 'KF5sQ5exu3LPLMxifZUr4UGbNff2wdqW' );
INSERT INTO `oauth_server_nonce` VALUES ( 141, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'e8b3afa18c22cc6f689615b6c2e7d4b8055c30e31', 1438846514, 'CSAgH9aRBMRaLQS1bXVMjcgh8azQ7W4m' );
INSERT INTO `oauth_server_nonce` VALUES ( 205, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'e98671b9f64a50998b3e91bfef66bf80055c848f7', 1439189248, 'OR3B9QN5L6HyMSAXKTNLNlcWvZ7XY0oM' );
INSERT INTO `oauth_server_nonce` VALUES ( 28, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'e9aade7ff259f2eb7149bf40cf4dc867055c06edc', 1438674652, 'cK7VX7ztPmu4SFHFIMzIrTVdDK6BpyYS' );
INSERT INTO `oauth_server_nonce` VALUES ( 109, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'e9c89361950d7a6b5bf4f6028658e59d055c1e0b7', 1438769335, 'ScL8p5E2XD805wzvVZPv3Ldsy2Bm2ykF' );
INSERT INTO `oauth_server_nonce` VALUES ( 137, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'e9e040ac2ae0fe59c71092d560642b13055c1e9a7', 1438771623, 'lBxxYiQH2jI79nsfnHX4l0x38v39kWPQ' );
INSERT INTO `oauth_server_nonce` VALUES ( 201, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'eb12a7ed0b5d457cfc097b3b63d9f5a2055c7252c', 1439114650, '0xKMyUydp8XS2iczqZYF2kw0PSyWgLhh' );
INSERT INTO `oauth_server_nonce` VALUES ( 87, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'ec2fc5ed397bbee1debf810107b7336e055c1cc35', 1438764085, '21Yseh3CEaU1fif0vJipn5KBmrQpooja' );
INSERT INTO `oauth_server_nonce` VALUES ( 39, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'f1c6338de4e008b8dc508acdccea09f4055c1c284', 1438761605, 'pPHFqPiml6uypvfQlm1llvNC8j2MWBIq' );
INSERT INTO `oauth_server_nonce` VALUES ( 191, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'f33340665297a71c1bb2069909a510e9055c48991', 1438943639, 'nzTkqmFzHkFhyYYHQdcwUzq0AYgPdUMe' );
INSERT INTO `oauth_server_nonce` VALUES ( 81, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'f547d8e606f205a311fe3ee02d4c4183055c1c985', 1438763397, 'yBTHHWgQ1NsKJ1t0yXMHGrjrSOzikWwT' );
INSERT INTO `oauth_server_nonce` VALUES ( 55, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'f9ff98fed834b38c8d7ad9ca8056ce1b055c1c67d', 1438762621, 'vkBfb09gBvCPYGWz0SCzWWBqtemcPySx' );
INSERT INTO `oauth_server_nonce` VALUES ( 160, '3256e785485f8c52d516ea3e77500bdf055c03f9a', 'fe90a09d925d640747e824a160266ce6055c434e3', 1438921966, 'JBYyYAAnXo7LSTvjtpf7YMiM4m7nZ0Hw' );

--
-- Table structure for table oauth_server_registry
--

DROP TABLE IF EXISTS `oauth_server_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `oauth_server_registry` (
  `osr_id` int(11) NOT NULL AUTO_INCREMENT,
  `osr_usa_id_ref` int(11) DEFAULT NULL,
  `osr_consumer_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `osr_consumer_secret` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `osr_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `osr_status` varchar(16) NOT NULL,
  `osr_requester_name` varchar(64) NOT NULL,
  `osr_requester_email` varchar(64) NOT NULL,
  `osr_callback_uri` varchar(255) NOT NULL,
  `osr_application_uri` varchar(255) NOT NULL,
  `osr_application_title` varchar(80) NOT NULL,
  `osr_application_descr` text NOT NULL,
  `osr_application_notes` text NOT NULL,
  `osr_application_type` varchar(20) NOT NULL,
  `osr_application_commercial` tinyint(1) NOT NULL DEFAULT '0',
  `osr_issue_date` datetime NOT NULL,
  `osr_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`osr_id`),
  UNIQUE KEY `osr_consumer_key` (`osr_consumer_key`),
  KEY `osr_usa_id_ref` (`osr_usa_id_ref`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table oauth_server_registry
--

INSERT INTO `oauth_server_registry` VALUES ( 24, 1, '3256e785485f8c52d516ea3e77500bdf055c03f9a', '8cd9b5d9281532728ad4970d3e102dc2', 1, 'active', 'wangrunxin.com', 'wangrunxin.com', '', '', '', '', '', '', 0, '2015-08-04 12:29:15', '2015-08-04 12:29:15' );

--
-- Table structure for table oauth_server_token
--

DROP TABLE IF EXISTS `oauth_server_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = 'utf8' */;
CREATE TABLE `oauth_server_token` (
  `ost_id` int(11) NOT NULL AUTO_INCREMENT,
  `ost_osr_id_ref` int(11) NOT NULL,
  `ost_usa_id_ref` int(11) NOT NULL,
  `ost_token` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ost_token_secret` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ost_token_type` enum('request','access') DEFAULT NULL,
  `ost_authorized` tinyint(1) NOT NULL DEFAULT '0',
  `ost_referrer_host` varchar(128) NOT NULL DEFAULT '0',
  `ost_token_ttl` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `ost_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ost_verifier` char(10) DEFAULT NULL,
  `ost_callback_url` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`ost_id`),
  UNIQUE KEY `ost_token` (`ost_token`),
  KEY `ost_osr_id_ref` (`ost_osr_id_ref`),
  KEY `ost_token_ttl` (`ost_token_ttl`),
  CONSTRAINT `oauth_server_token_ibfk_1` FOREIGN KEY (`ost_osr_id_ref`) REFERENCES `oauth_server_registry` (`osr_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table oauth_server_token
--

INSERT INTO `oauth_server_token` VALUES ( 1, 24, 1, 'c2089f78023d1e7f21ae064ed4108124055c04785', 'e887af9d1b1aa9d838918c8b3a866a49', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-04 13:03:01', 'c6036a69be', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 2, 24, 1, '3162a7899c2a7c8fc69e5ba8e4326b24055c047a1', 'c4420ecd7199eaeed6a8b2dc9aff4e80', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-04 13:03:29', '1843e35d41', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 3, 24, 1, '0226ed5bdf26b804e19cdd0214bfcf08055c069d5', 'b2393e31633a9c0095b98c097dda0d9c', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-04 15:29:25', '457ded6f20', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 4, 24, 1, 'd20700b978b4dce68391258d742eb148055c06c49', 'a6d54fdc5810832eaf4a8c19fbf62a80', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-04 15:39:53', '38811c5285', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 5, 24, 1, '3be8bdce4ee16f3adf36a19d54277421055c06c81', '4c561650e828bd5b7b42cfd484431088', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-04 15:40:49', '4ebccfb3e3', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 6, 24, 1, 'c4a584ad896af179f54629e8b018f5c2055c06ccb', '85fd70d0b375e11c1cab517433cb84e6', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-04 15:42:03', '99c2132379', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 7, 24, 1, 'fd40250966c488cffd6dc932545b5192055c06d4a', '815b600b9550192bf1237a019ce57f64', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-04 15:44:10', '85203ae86f', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 8, 24, 1, 'fd8b82e8c2bfef9a2a2603b006d0e129055c06e7d', '3f6efaa5f5c3aeb36feacf83a83baf03', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-04 15:49:17', 'd827f12e35', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 9, 24, 1, '34de647072dd1371df2612bc4ee79fc8055c06eba', 'c92b57a824c458051de6b9933e5437a1', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-04 15:50:18', '9f03268e82', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 10, 24, 1, '4ad244545717b70d36de7afec767acf5055c06edc', '8789e4257823c14e34bf2522fd29995e', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-04 15:50:52', '087bc75523', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 11, 24, 1, '5da441d36baf07ab8a144a7e1a2f748e055c08995', '35c218989736416f3af98f7838fbbf10', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-04 17:44:53', 'dbe2ec22ce', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 12, 24, 1, '1304f5434318060ac24686ed7874c637055c08fed', 'f15b307b0ccf2fb0b6b9b1c3b75149df', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-04 18:11:57', '99a401435d', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 13, 24, 1, '1db5fa311125f62c6f9bc94dd6c5b79f055c09a7c', 'a32782e57b3bdc132b675f45d45a548b', 'request', 0, 0, '2015-08-04 19:57:00', '2015-08-04 18:57:00', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 14, 24, 1, 'e64e06e849bb95629195fc195037fd53055c09ad6', '15f9d6f69fbea82c70bf814ddb135115', 'request', 0, 0, '2015-08-04 19:58:31', '2015-08-04 18:58:31', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 15, 24, 1, '8e4e1680754524cdd5aabbd94ec27d9d055c09c9b', 'e69b6e75210cfed7edf147e609c2b989', 'request', 0, 0, '2015-08-04 20:06:03', '2015-08-04 19:06:03', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 16, 24, 1, '62363eabc47be45c54ff4748d6627751055c09d94', '2ab982dee7f51afdb035558f95cf1801', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-04 19:10:12', 'ad59725c28', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 17, 24, 1, '764a44126afac3391458796c015914e5055c1c285', '5056f593d12e5c44ba2b28d66f805293', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:00:05', '412af43c2e', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 18, 24, 1, '91beb4971a0971b61e77b4f23e8f8c85055c1c2ab', '1b09a51c6fa69e03ffed2c57403ce846', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:00:43', '031a2f22d6', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 19, 24, 1, '20f2ca1f2ab238142063c88b517b0637055c1c2ff', 'db1989f16c708e42a6d55aa519bb7850', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:02:07', 'a58149d355', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 20, 24, 1, 'f7c84c4a3a9c037da7a999529fc636e4055c1c30e', 'b1f6e04ac90825f09d2c2df24656aba0', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:02:22', 'a6eab55606', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 21, 24, 1, '157ccb7d621340d6e2e344572dad17e0055c1c3c2', '6f5205c178cf764588cf17819e840936', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:05:22', 'd41b5422b4', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 22, 24, 1, '7560a1d91e7d71156c1e16e3295c742b055c1c458', '230e12da2e6f984588c6357c290ea7c3', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:07:52', '54c68c4d1d', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 23, 24, 1, 'cc491beed99d13ac4b673e3cb92e91f5055c1c49e', '53f2a4a50c6ca2415283d516672d43b8', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:09:02', '8f2a580cb0', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 24, 24, 1, '4931a934bf474be1dba7da9e091f170b055c1c529', 'b65d8f8807db304ee10345075bd60a0f', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:11:21', '7e05295a46', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 25, 24, 1, 'cb8944a48ce20aed14006e34b27dd9a4055c1c67d', 'a3cd36819420fe4332bdc016da49d07a', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:17:01', '903356ae8f', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 26, 24, 1, '54b04cb013b88aa4c87fa3bcdb768edf055c1c69a', '7c44c6223c58741e3a07f1423a22ee71', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:17:30', 'f9a40a4780', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 27, 24, 1, '8565a66db1c6c8cfe96be1a666767054055c1c6b4', 'd870b3e9d5d2c8219ddc622189a4567a', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:17:56', '4fdbe57fbc', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 28, 24, 1, 'ae792c4d524e1e89d361ad1acaa56427055c1c6c4', 'a217a094ddea66e301013705554fd7a4', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:18:12', '05b0f710bc', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 29, 24, 1, 'a2d7aac897e8f85c84cd3f8bbbf066dc055c1c6e6', 'd02f5b6b9e957af9831db3123a36e343', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:18:46', 'b110ae3636', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 30, 24, 1, '0d763b2b6223fb53845106f5b8c82cb4055c1c6ee', 'e695ccac5b737d2914fa687eb962188f', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:18:54', '37192c741d', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 31, 24, 1, 'cfc82d246e61bbd37fa365829eee92cd055c1c748', '157820c2e38b409ac2f0f23e0e8068e8', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:20:24', 'd8e6d68a88', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 32, 24, 1, 'ea3aaf4c4587d84289046e2f986a5210055c1c74e', '19655b81fe7a302456a4e97f979d1e28', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:20:30', '4b730bb369', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 33, 24, 1, '252bd4a3cdc8ab5bc53932fcd0111237055c1c7dd', '8d2a669903deafa6c3391ff33bb291b2', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:22:53', '791427014a', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 34, 24, 1, '633aa23ac3df60b3bb5b5d090b9ee256055c1c7eb', 'a77b93abafe79bbde2ebfdea29a41ed5', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:23:07', 'daf94f1c25', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 35, 24, 1, '9c94dc25bf3b9c59617924a59226de64055c1c891', 'fcab19bf66f44e0233f7f0016e7995e9', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:25:53', '58426cf937', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 36, 24, 1, 'f8a74d6bbfd87d6a67785d858a5b391a055c1c90d', '22d39c65351d8fb51bff40c1373b28a6', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:27:57', '170d889b45', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 37, 24, 1, 'd5103e5d0a27b1dcea6d6aa9ff2c561f055c1c975', 'cb7ec243b7898c076d06412005f75d88', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:29:41', '8548f76db3', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 38, 24, 1, '2bf4e48847226f84eb5992df3f8d8006055c1c985', 'dd4794559dc205dba3b64cd1fb9d2734', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:29:57', '67b7b196a1', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 39, 24, 1, '2fd317337fd925d6875d6f4e2b7ed15a055c1c99a', '43e2f74f375e663f8c1bcd094154af30', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:30:18', 'cf1f78fe92', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 40, 24, 1, 'c90ae26bb9476a63729753ac1216a959055c1c9ba', '0f11b111b9070b94d56bea486f3ca826', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:30:50', '1572ed6002', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 41, 24, 1, '418460e8468e481e7cc81fbad4810cd5055c1cc35', 'a829592c42f312ea122be4c97fef490f', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:41:25', 'd87ca511e2', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 42, 24, 1, '89d9df5b047f9886cdf787a8475cd8bc055c1cdc6', '2810f5cdc9f2f4122785ebe577b786a6', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:48:06', 'aa37c29c86', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 43, 24, 1, '4ee6e6c11d5e2242478a19be7cf623f5055c1ce4e', '83d1aa7ddeaef80b0ec5d00ca5060dd5', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:50:22', '1a042e38b6', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 44, 24, 1, 'f365f2be049ff3565e5107b4fef1e599055c1ce6b', '4808e70ca9a7c978230ef926804d58fc', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:50:51', '9c509b71f2', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 45, 24, 1, 'e6d35143b12a37dd187b0b425f924398055c1ce6d', 'b3cacff0472c11458a5b0f88037fb840', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:50:53', '4d5392d91f', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 46, 24, 1, '283b44d5a51b422a52ab817c26f00259055c1ce8b', 'f53dac4b25ed5a5cb5510052b3a412d3', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:51:23', 'd0eb61f266', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 47, 24, 1, '3a60e8af3ef916eec355e61e2c11477c055c1d032', '21624c0a64bb3762e0792202751f17aa', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:58:26', '4cf06252cc', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 48, 24, 1, '2f0e4fca4c8846209cb839db40e8bbba055c1d03e', '124af467cd2b8022454ba5f3d29cd2b6', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 16:58:38', 0966289037, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 49, 24, 1, 'aa6db02e4ad5c7961ea89bf6d575f602055c1e066', 'db73f8a0756f1947604e0ad16dd31ccf', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:07:34', '437e145bbb', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 50, 24, 1, 'd0c87f9b9bb0df02729aed3c98f7d78f055c1e0a5', '848c764c604eb11c9cc52bc262e9e4a3', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:08:37', '6b73e3e68e', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 51, 24, 1, '4a4d89eaefc422fd182bc40b3ba62744055c1e0b4', 'd4380ade7846b418afdd94836a5748d2', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:08:52', '4fc66104f8', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 52, 24, 1, 'dd937a5fe0ae44e77ed6331b63597212055c1e0b7', '4a55c7b0044a2af66610e4b3cd33b668', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:08:55', '623073121b', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 53, 24, 1, 'ca403d0982a335c3d4ddcf8a0ed3d678055c1e0cb', '7421c7c43eeb3834773535dfe7dee969', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:09:15', 'f12de38876', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 54, 24, 1, '670e0674c08f7627f10fb12f559aa25b055c1e149', 'a2a51976771934313ec8507bfceac567', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:11:21', 'ada9e980b2', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 55, 24, 1, 'ec6c10142c59cecf6dbd000a9710a5bd055c1e1a2', '641aa31ef1894b977fa304189a7c0a88', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:12:50', '6be5225238', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 56, 24, 1, 'e4421c592b5d9c8878bbfe211a86db98055c1e1f5', '2635374fb79f0a6bfcfa75b5b46db901', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:14:13', '08b90c2ebc', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 57, 24, 1, 'b7f407791b6e931c1e34cc407e4425ef055c1e269', '58b6b49140d1f0e4bbcc8082d5d19d20', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:16:09', '652ea064e0', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 58, 24, 1, 'ea5890d0fd9c4002ac6f77b1b4fa74ad055c1e296', '893321eb3fa6093a797202bb1e312c7e', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:16:54', 'a016070970', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 59, 24, 1, '574514e7d64bbccbfad8cfb342d93c4f055c1e29e', 'd31fbf4eb31568aed0571b31c03dde6b', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:17:02', 'b33eccca5b', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 60, 24, 1, 'fde4ab07eebeb3eb376532fe6bef8a0b055c1e2c9', '070613a3cbe5b8395a1b22cae1375884', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:17:45', '246e28f163', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 61, 24, 1, 'cf4a16b179e6a17552fa1e1d4cb35ba2055c1e2e0', '11dcbb4fca34de35629d0fcaa069a8ce', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:18:08', '84a2f99497', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 62, 24, 1, '83d28a1d853a00bf8963220ff0b1c18a055c1e2ee', '2a110e96f3d88cf8e6fbe684d33a41bf', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:18:22', '1a59ef90d1', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 63, 24, 1, '7223102e554926998e9d27daef50260f055c1e47a', '99566259c104a86a4c8a3b27f34f7001', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:24:58', '09ff1a75bb', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 64, 24, 1, 'be356d177c491421b0707f8580c1eb51055c1e4a4', '91667f5299c34ea2b7ee7337b1086c3c', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:25:40', '15a676c885', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 65, 24, 1, 'e9e69c38367d3ed3391926c91d30e484055c1e4c9', '74f2d681d837d7bda0178b9e1a82b1e6', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:26:17', '7576182d0a', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 66, 24, 1, 'c452a30be6142d2c5985e6daf06ea57a055c1e9a7', '100fc4db8777f3b0fb704afbc915cbf5', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:47:03', 'b2ab001909', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 67, 24, 1, '35917fc8068a38c54c2e41029554fba1055c1eb52', '320f4672dd06ef0de193654b6f956c15', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-05 18:54:10', '9b20ac4d9a', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 68, 24, 1, '1b42fd04c70e35627c050abbfa7663a8055c30e32', '7df61fb398648ac57245d835b0f84ad8', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-06 15:35:14', '729db3e07a', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 69, 24, 1, 'b5a92f89654b4d4d6e23973de739af91055c42515', '3d33480546905f1e8e229b365293ff13', 'request', 0, 0, '2015-08-07 12:25:09', '2015-08-07 11:25:09', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 70, 24, 1, '573dbe66f93d864953ad6f1173ba1abd055c428ab', 'ce0c05a589864530c5b24e5c8de6c6b7', 'request', 0, 0, '2015-08-07 12:40:27', '2015-08-07 11:40:27', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 71, 24, 1, 'efef76d01f8d8fdb46b4f91179ac44a9055c428fd', 'a4994ae814bd0fa7a0cc870e76a0e33d', 'request', 0, 0, '2015-08-07 12:41:49', '2015-08-07 11:41:49', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 72, 24, 1, 'a1bb3687a17e431b37763fd11e55527a055c42a51', '85d469e70660d0f99b636a55199a86fd', 'request', 0, 0, '2015-08-07 12:47:29', '2015-08-07 11:47:29', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 73, 24, 1, '1915944ea0e4183aec2ff3c55387516c055c42c3a', 'd585ca5277b4f3f2275f38629867fa45', 'request', 0, 0, '2015-08-07 12:55:38', '2015-08-07 11:55:38', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 74, 24, 1, '7fa0ed43aa7b0bce5af109ea4681461f055c42f70', '1b5ec2dc50472452005a17b13510fa40', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-07 12:09:20', 'f2a58d530f', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 75, 24, 1, 'db90b082d933a4c2e6d69888ad142f6d055c43120', '647a026454fe252f96bf00eed2b8def7', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-07 12:16:32', '01ce84968c', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 76, 24, 1, '3481f88b4adc990304705f87f7876bd9055c43251', '7bf09364222b1e572f9f152c04c0dd3a', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-07 12:21:37', '0c38ecb0ae', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 77, 24, 1, '4b7613e1a072c1ccd980963a277da96d055c43301', 'd3b555c2d99c27ef972c2dc12500076e', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-07 12:24:33', '1a32df83ac', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 78, 24, 1, '147557a10672162d3ae958270c0bbf95055c4341d', '0ae4cca92427227c8659fce9c808b5f5', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-07 12:29:17', '0f65e949ea', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 79, 24, 1, 'e0de65cb4610870707eaa295bec9d532055c434b2', 'e74dcbb4f65cec99d7455cca94bc81f2', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-07 12:31:46', 'bd5b4f9a59', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 80, 24, 1, '6621de77ab111c667ad243906d4b9efa055c434ee', '6873f5e03c2f3e7a117b06e7eb1678f7', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-07 12:32:46', 'bdaccd7781', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 81, 24, 2, '9f3685254ec9d7561fd48f239eda369f055c435a2', 'e94e25a3f3a615e125b391de3fabcb80', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-07 12:35:46', '87ac1c6834', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 82, 24, 1, '0c20bef3a474c91f2a5531049afc0615055c437e7', '14d7f86a0dd64d709529324e65900c4f', 'request', 0, 0, '2015-08-07 13:45:27', '2015-08-07 12:45:27', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 83, 24, 2, 'fbe52440e6b0ebed68f36029293e9195055c43a7d', 'b42bf955862c22e7ba9a8fdd4dff583e', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-07 12:56:29', '33ebd5b07d', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 84, 24, 1, 'ab90390b0eb6bd4c2e4157c8e6aad055055c437f8', '951c0f313a9d885313a0c281ad547c58', 'request', 0, 0, '2015-08-07 13:45:44', '2015-08-07 12:45:44', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 85, 24, 1, '2b47749249b87d92e915973a1ff9be4c055c43a58', 'ec314fd79f15e9a751b932f2071f6ca5', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-07 12:55:52', '9cdef155fb', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 86, 24, 1, 'b3d8b6f452fc898365a91a52c89652b7055c43b16', '263bca5b33cd120f7da8caa362c8b365', 'request', 0, 0, '2015-08-07 13:59:02', '2015-08-07 12:59:02', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 87, 24, 2, 'ae15637dbe0e9e07a91628b1db97c566055c43b4e', '9d65afc13d08a802fa759bec89f75c27', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-07 12:59:58', 'd1f6b0f22f', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 88, 24, 1, 'b5f9788ffe49096141032ccedbd50cc1055c43b50', '7907257ba9dbffb11f701da5e646a62f', 'request', 0, 0, '2015-08-07 14:00:00', '2015-08-07 13:00:00', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 89, 24, 2, 'dc4729ac27226ec0d1d7cb4c709bccee055c43c81', 'fc6da1bc98bc4e8c58be8c2d119ec33e', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-07 13:05:05', '7de6cd3598', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 90, 24, 1, '9b0f0776e00a5e96de09d1b98b6c3085055c43dae', '60cd2e9c6785736a413a181560b70d67', 'request', 0, 0, '2015-08-07 14:10:06', '2015-08-07 13:10:06', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 91, 24, 1, '8c50f6bd8db03c59d6868a1900f41d98055c43daf', 'a7c03b14f11f9fff0bc999d243ba22dd', 'request', 0, 0, '2015-08-07 14:10:07', '2015-08-07 13:10:07', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 92, 24, 1, '6f6f4dd5cab279e44fb7b5ce52f17862055c442d9', 'b0f7e62959b8f102e9e5f3205138c734', 'request', 0, 0, '2015-08-07 14:32:09', '2015-08-07 13:32:09', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 93, 24, 1, '58eb55dbb5a073a4fcfc027656eec121055c4441e', '367b26f9d6a351c75d4f3a96c0023085', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-07 13:37:34', '8d8818c8e1', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 94, 24, 2, '68a8fa9575f96eca7222334e1c463629055c46dff', '939279d6e29a82673ea9e254eb06b83a', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-07 16:36:15', '9dc6864f20', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 95, 24, 1, '0eed0ab21aa15b749fc4ff9ea371d9b1055c47986', '3179acba3f8d5779f2cff762af247c49', 'request', 0, 0, '2015-08-07 18:25:26', '2015-08-07 17:25:26', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 96, 24, 1, 'a4d2a104a1866e4a267039973bb8ae68055c479a1', 'cbaeea17b3ea9ec60658ce3d43763b78', 'request', 0, 0, '2015-08-07 18:25:53', '2015-08-07 17:25:53', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 97, 24, 1, '50d703d7a07c7663e27209201d9438ac055c479f9', 'b1f56baf2d823359612b7f846678ec9c', 'request', 0, 0, '2015-08-07 18:27:21', '2015-08-07 17:27:21', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 98, 24, 1, '1193943dfa84a1b0dc454fb989b54692055c47c3e', '4dfb7eda0a18db02b9c8e8e0ed37c0ea', 'request', 0, 0, '2015-08-07 18:37:02', '2015-08-07 17:37:02', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 99, 24, 1, '5f00223f72f9d36cf137396ee7756546055c47c85', '4f5e92348bb2c40453c88e23f9b2dc58', 'request', 0, 0, '2015-08-07 18:38:13', '2015-08-07 17:38:13', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 100, 24, 1, 'edbf06d4ff47b34f173e5337863beed9055c47c85', '0b941f9d7e78543c98d7ea7d66cd0d34', 'request', 0, 0, '2015-08-07 18:38:13', '2015-08-07 17:38:13', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 101, 24, 1, 'ec548aead73218b584b15d03da15dc4c055c48985', '095c5dc679ec3c60d560a5801414898f', 'request', 0, 0, '2015-08-07 19:33:41', '2015-08-07 18:33:41', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 102, 24, 1, 'b4d759aa2aa669d7a280b9b6c5b112c9055c48986', 'f886515d5612ca517fd6966f77b2807f', 'request', 0, 0, '2015-08-07 19:33:42', '2015-08-07 18:33:42', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 103, 24, 1, '783eb7106818bdcca90efeca637b38da055c48997', '1a83077c9cf69ed7f2cb3315192a4ec5', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-07 18:33:59', '6f5216f8d8', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 104, 24, 1, '26c687a428026d62772cc1fd2096a3f0055c489af', '580232e19b3b3c655e52f145d4bb40f2', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-07 18:34:23', '01f78be6f7', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 105, 24, 1, '25c789dba723b640f379ce36a73d74eb055c489bc', '0c33f1a0ecd84cc010f057ce2545a115', 'request', 0, 0, '2015-08-07 19:34:36', '2015-08-07 18:34:36', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 106, 24, 1, '96ebac22ffc20ff446c2620c6ac9f8e6055c489c7', '210c2898d34911b8a021674a7dcf47c8', 'request', 0, 0, '2015-08-07 19:34:47', '2015-08-07 18:34:47', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 107, 24, 1, 'ea9ee982aa5fc936afa92f7277bb1762055c489e1', '81bdef2b3fe86858906e7e0ac9c6ba9b', 'request', 0, 0, '2015-08-07 19:35:13', '2015-08-07 18:35:13', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 108, 24, 1, 'fb4c72f0b27c75331c1ca09df1d4e1bb055c48ab2', 'bee5fcc985fa49a8e30e84c6cc6d8c51', 'request', 0, 0, '2015-08-07 19:38:42', '2015-08-07 18:38:42', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 109, 24, 1, 'be8772be2a5e9380eb332464f09e6c39055c7252b', '66cd3e3a7d66c23f154c47a71de88939', 'request', 0, 0, '2015-08-09 19:02:19', '2015-08-09 18:02:19', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 110, 24, 1, '66cc3ffb5ffe55a1539ba21349d11a6d055c7252c', 'b950888cf1cf8d60118b508b8e78e3d6', 'request', 0, 0, '2015-08-09 19:02:20', '2015-08-09 18:02:20', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 111, 24, 1, '64cbcafe132387a42ddac09a2bae8935055c7259a', 'a3eab542ebf3a3ebd06372980340b38d', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-09 18:04:10', '338c070809', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 112, 24, 1, '856521bcca289e529924b7640831d323055c832df', '102774d6ad98899876321d349915b81a', 'request', 0, 0, '2015-08-10 14:13:03', '2015-08-10 13:13:03', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 113, 24, 1, '6cdc770cb40c04559856f72ed02aa2b4055c848b6', '67329a1732a2b621bc27245b087703a8', 'request', 0, 0, '2015-08-10 15:46:14', '2015-08-10 14:46:14', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 114, 24, 1, 'ac8254c4db104f300097e74a1d0989dd055c84900', 'e588d7cb3c6073244ae3c2922add3a11', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-10 14:47:28', '07c5807d0d', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 115, 24, 1, '96d4bb33cd0ecaac42a69662d58a3fb3055c84909', '216d5948298d939f1d7e890e8425da61', 'request', 0, 0, '2015-08-10 15:47:37', '2015-08-10 14:47:37', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 116, 24, 1, 'e880eb3816116932d1fa374b7e6ff8bd055c8495b', '47a7469ed52663ad257d86be42be00ea', 'request', 0, 0, '2015-08-10 15:48:59', '2015-08-10 14:48:59', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 117, 24, 1, '2a1d0d51af4c3847fd65ed07200098a4055cb0bee', '70bbb2a15416d437a77890c5c6da9e4d', 'access', 1, '', '9999-12-31 00:00:00', '2015-08-12 17:03:42', 'f1b9528d5f', 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 118, 24, 1, '9e8a2a2ea7a26c7497109999213052f8055cc5111', 'f9d9493bfab4596e9d8d49c4f885369b', 'request', 0, 0, '2015-08-13 17:10:57', '2015-08-13 16:10:57', NULL, 'oob' );
INSERT INTO `oauth_server_token` VALUES ( 119, 24, 1, 'b8a5da1f016a755be14b168f52e493ef055cd4d0e', 'b2c9b704f715fe9c70f1bc6b4b028324', 'request', 0, 0, '2015-08-14 11:06:06', '2015-08-14 10:06:06', NULL, 'oob' );

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
