-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: joomla
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `diyk8_assets`
--

DROP TABLE IF EXISTS `diyk8_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_assets`
--

LOCK TABLES `diyk8_assets` WRITE;
/*!40000 ALTER TABLE `diyk8_assets` DISABLE KEYS */;
INSERT INTO `diyk8_assets` VALUES (1,0,1,107,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,10,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,11,12,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,13,14,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,15,16,1,'com_config','com_config','{}'),(7,1,17,20,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,21,58,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,59,60,1,'com_cpanel','com_cpanel','{}'),(10,1,61,62,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,63,64,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,65,66,1,'com_login','com_login','{}'),(13,1,67,68,1,'com_mailto','com_mailto','{}'),(14,1,69,70,1,'com_massmail','com_massmail','{}'),(15,1,71,72,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,73,74,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,75,76,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,77,78,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,79,82,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,83,84,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,85,86,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,87,88,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,89,90,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,91,94,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,95,98,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,99,100,1,'com_wrapper','com_wrapper','{}'),(27,8,22,25,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,18,19,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,80,81,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,96,97,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,92,93,1,'com_users.notes.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,101,102,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,27,23,24,3,'com_content.article.1','Джумла.алмужД','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(35,8,26,35,2,'com_content.category.8','Програмирование','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(36,8,36,45,2,'com_content.category.9','Крым. Бухта Ласпи.','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(37,8,46,57,2,'com_content.category.10','Туризм','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(38,35,29,30,3,'com_content.article.2','Курс Advanced PHP','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(39,35,27,28,3,'com_content.article.3','Курс Advanced CMS','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(40,35,31,32,3,'com_content.article.4','Курс Frontend CMS','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(41,36,43,44,3,'com_content.article.5','Что такое бухта Ласпи.','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(42,36,41,42,3,'com_content.article.6','Как добраться в бухту Ласпи.               ','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(43,36,37,38,3,'com_content.article.7','Достопримечательности Крыма, Форосская церковь.','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(44,37,47,48,3,'com_content.article.8','Если вы упали в холодную воду.','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(45,37,55,56,3,'com_content.article.9','Хлеб из желудей','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(46,37,53,54,3,'com_content.article.10','Самодельная горелка из алюминиевых банок из под пива.','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(47,37,49,50,3,'com_content.article.11','Как выбрать спальный мешок.','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(48,37,51,52,3,'com_content.article.12','Как не промокнуть в походе.','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(49,36,39,40,3,'com_content.article.13','Достопримечательности Крыма, Херсонес.','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(50,35,33,34,3,'com_content.article.14','Курс Ruby on Rails.','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(51,3,6,7,2,'com_banners.category.11','Ссылка туризм','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(52,3,8,9,2,'com_banners.category.12','Ссылка ласпи.','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(53,1,103,104,1,'com_blog_calendar','blog_calendar','{}'),(54,1,105,106,1,'com_djmediatools','com_djmediatools','{\"core.admin\":[],\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
/*!40000 ALTER TABLE `diyk8_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_associations`
--

DROP TABLE IF EXISTS `diyk8_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_associations`
--

LOCK TABLES `diyk8_associations` WRITE;
/*!40000 ALTER TABLE `diyk8_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_banner_clients`
--

DROP TABLE IF EXISTS `diyk8_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_banner_clients`
--

LOCK TABLES `diyk8_banner_clients` WRITE;
/*!40000 ALTER TABLE `diyk8_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_banner_tracks`
--

DROP TABLE IF EXISTS `diyk8_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_banner_tracks`
--

LOCK TABLES `diyk8_banner_tracks` WRITE;
/*!40000 ALTER TABLE `diyk8_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_banners`
--

DROP TABLE IF EXISTS `diyk8_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_banners`
--

LOCK TABLES `diyk8_banners` WRITE;
/*!40000 ALTER TABLE `diyk8_banners` DISABLE KEYS */;
INSERT INTO `diyk8_banners` VALUES (1,0,0,'Более подробно о туризме.','bolee-podrobno-o-turizme',0,98,2,'http://ekstrimtur.com/',1,11,'Более подробно о туризме.','',1,1,'','{\"imageurl\":\"images\\/ekstrimtur.jpg\",\"width\":125,\"height\":125,\"alt\":\"\\u0411\\u043e\\u043b\\u0435\\u0435 \\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u043e \\u043e \\u0442\\u0443\\u0440\\u0438\\u0437\\u043c\\u0435.\"}',0,'',-1,0,0,0,'0000-00-00 00:00:00','2013-10-17 20:05:00','2013-11-30 20:05:14','0000-00-00 00:00:00','2013-10-18 16:49:54','*'),(2,0,0,'Более подробно о бухте Ласпи.','bolee-podrobno-o-bukhte-laspi',0,56,2,'http://crimea.vgorode.ua/news/117753/',1,12,'Более подробно о бухте Ласпи.','',1,2,'','{\"imageurl\":\"images\\/laspi.jpg\",\"width\":125,\"height\":125,\"alt\":\"\\u0411\\u043e\\u043b\\u0435\\u0435 \\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u043e \\u043e \\u0431\\u0443\\u0445\\u0442\\u0435 \\u041b\\u0430\\u0441\\u043f\\u0438.\"}',0,'',-1,0,0,0,'0000-00-00 00:00:00','2013-10-17 20:17:23','2013-11-30 20:17:26','0000-00-00 00:00:00','2013-10-18 17:15:50','*');
/*!40000 ALTER TABLE `diyk8_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_categories`
--

DROP TABLE IF EXISTS `diyk8_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_categories`
--

LOCK TABLES `diyk8_categories` WRITE;
/*!40000 ALTER TABLE `diyk8_categories` DISABLE KEYS */;
INSERT INTO `diyk8_categories` VALUES (1,0,0,0,23,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*'),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',-2,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:26:37',0,'0000-00-00 00:00:00',0,'*'),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',-2,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*'),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*'),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*'),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',-2,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(7,32,1,11,12,1,'uncategorised','com_users.notes','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(8,35,1,13,14,1,'programirovanie','com_content','Програмирование','programirovanie','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"_:blog\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2013-10-18 13:57:05',42,'2013-10-18 16:29:49',0,'*'),(9,36,1,15,16,1,'krym-bukhta-laspi','com_content','Крым. Бухта Ласпи.','krym-bukhta-laspi','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"_:blog\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2013-10-18 14:01:09',42,'2013-10-19 13:39:13',0,'*'),(10,37,1,17,18,1,'turizm','com_content','Туризм','turizm','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"_:blog\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2013-10-18 14:05:11',42,'2013-10-19 13:37:34',0,'*'),(11,51,1,19,20,1,'ssylki','com_banners','Ссылка туризм','ssylki','','<h1 style=\"text-align: center;\"><strong>Более подробно о туризме.</strong></h1>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"images\\/ekstrimtur.jpg\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2013-10-18 16:55:11',42,'2013-10-19 14:01:31',0,'*'),(12,52,1,21,22,1,'ssylka2','com_banners','Ссылка ласпи.','ssylka2','','<h1 style=\"text-align: center;\"><strong>Более подробно о бухте Ласпи.</strong></h1>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"images\\/laspi.jpg\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2013-10-18 17:19:53',42,'2013-10-19 14:02:41',0,'*');
/*!40000 ALTER TABLE `diyk8_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_contact_details`
--

DROP TABLE IF EXISTS `diyk8_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_contact_details`
--

LOCK TABLES `diyk8_contact_details` WRITE;
/*!40000 ALTER TABLE `diyk8_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_content`
--

DROP TABLE IF EXISTS `diyk8_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_content`
--

LOCK TABLES `diyk8_content` WRITE;
/*!40000 ALTER TABLE `diyk8_content` DISABLE KEYS */;
INSERT INTO `diyk8_content` VALUES (1,34,'Джумла.алмужД','dzhumla-almuzhd','','<p>Джумла.алмужД Джумла.алмужД Джумла.алмужД</p>','',-2,0,0,2,'2013-10-13 16:47:27',42,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-10-13 16:47:27','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,3,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,38,'Курс Advanced PHP','kurs-advanced-php','','<p>AdvancedPHP для тих хто хоче розвивати свої базові навички в PHP. Курс заглиблюється у вивчення ООП, MVC та паттернiв проектування на базі найпопулярнішого php фреймворку Symfony2. Курс буде корисний тим, хто вже спробував себе у написанні простих сайтів/web-додаткiв за допомогою популярних платформ, таких як Joomla, WP ect. AdvancedPHP для тих хто хоче прокачати свої знання та навички для виходу на новий рівень, де вiдсутнi обмеження платформ чи мов програмування.</p>\r\n','\r\n<h3 style=\"padding: 0px 0px 8px; margin: 0px; outline: none; list-style: none; clear: both; text-align: center; font-family: \'Trebuchet MS\'; font-weight: normal; font-size: 14px; line-height: 18px; color: #4c7687; text-transform: uppercase; letter-spacing: 4px; position: relative; z-index: 2; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #d2dce1;\"> </h3>\r\n<h3 style=\"padding: 0px 0px 8px; margin: 0px; outline: none; list-style: none; clear: both; text-align: center; font-family: \'Trebuchet MS\'; font-weight: normal; font-size: 14px; line-height: 18px; color: #4c7687; text-transform: uppercase; letter-spacing: 4px; position: relative; z-index: 2; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #d2dce1;\">ТЕМИ ПИТАНЬ НА ЕКЗАМЕНI</h3>\r\n<ul class=\"questions\" style=\"padding: 25px 0px 0px; margin: 0px; outline: none; list-style: none; overflow: hidden; color: #4c7689; font-family: Arial, sans-serif; line-height: normal;\">\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Базові знання HTML / CSS (HTML: структура сторiнки, теги, посилання, зображення, форми, таблицi; CSS: селектори, наслiдування, псевдокласи, iдентифiкатори i класи, iнтеграцiя css-файлiв у HTML)</li>\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Базові знання PHP - ситаксис, змінні, оператори та конструкції (if, for, foreach etc.)</li>\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Базовий рівень англійської в IT (розумiння технiчної літератури і документації, вміння називати змінні англійською);</li>\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Загальне розуміння роботи web (протоколи (http, ...), методи (POST, GET, ...), заголовки (cookies, …), коди відповідей (404, 302, ...), сервери, домени, браузери, кукі);</li>\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Базові UNIX команди (ls, cp, mv, rm, chmod (в т.ч. опції), mkdir, ssh);</li>\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Встановлена UNIX система на ноутбуці й вміння з нею управлятися (Ubuntu, Mac OS X і т.д.);</li>\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Велике бажання й мотивація :)</li>\r\n</ul>',1,0,0,8,'2013-10-18 14:08:13',42,'','2013-10-18 15:49:34',42,0,'0000-00-00 00:00:00','2013-10-18 14:08:13','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,0,12,'','',1,4,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,39,'Курс Advanced CMS','kurs-advanced-cms','','<p>Курс для тих хто хоче навчитися створювати сайти різного рівня складності за допомогою популярних CMS Joomla та Drupal. Якщо ви хочете робити вебсайти як професіонал, цей курс для вас. Особливості різних CMS, використання та написання плагінів та компонентів, інтеграція із соціальними мережами та третьосторонніми сервісами.</p>\r\n','\r\n<h3 style=\"padding: 0px 0px 8px; margin: 0px; outline: none; list-style: none; clear: both; text-align: center; font-family: \'Trebuchet MS\'; font-weight: normal; font-size: 14px; line-height: 18px; color: #4c7687; text-transform: uppercase; letter-spacing: 4px; position: relative; z-index: 2; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #d2dce1;\"> </h3>\r\n<h3 style=\"padding: 0px 0px 8px; margin: 0px; outline: none; list-style: none; clear: both; text-align: center; font-family: \'Trebuchet MS\'; font-weight: normal; font-size: 14px; line-height: 18px; color: #4c7687; text-transform: uppercase; letter-spacing: 4px; position: relative; z-index: 2; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #d2dce1;\">ТЕМИ ПИТАНЬ НА ЕКЗАМЕНI</h3>\r\n<ul class=\"questions\" style=\"padding: 25px 0px 0px; margin: 0px; outline: none; list-style: none; overflow: hidden; color: #4c7689; font-family: Arial, sans-serif; line-height: normal;\">\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Базові знання HTML / CSS (HTML: структура сторінки, теги, посилання, зображення, форми, талиці; CSS: селектори, наслідування, псевдокласи, ідентифікатори і класи, інтеграція css-файлів з HTML)</li>\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Базові знання PHP (синтаксис мови, основи ООП)</li>\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Базові знання JavaScript (синтаксис, основи работи з JQuery)</li>\r\n</ul>',1,0,0,8,'2013-10-18 14:09:49',42,'','2013-10-18 15:49:21',42,0,'0000-00-00 00:00:00','2013-10-18 14:09:49','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,0,11,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,40,'Курс Frontend CMS','kurs-frontend-cms','','<p>Цей курс допоможе вам навчитися створювати веб сайти на основі системи керування контентом. Все, від скінування дизайну до підключення CMS. Цей курс дасть вам чудовий старт для фріланса або роботи в компанії.</p>\r\n','\r\n<h3 style=\"padding: 0px 0px 8px; margin: 0px; outline: none; list-style: none; clear: both; text-align: center; font-family: \'Trebuchet MS\'; font-weight: normal; font-size: 14px; line-height: 18px; color: #4c7687; text-transform: uppercase; letter-spacing: 4px; position: relative; z-index: 2; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #d2dce1;\"> </h3>\r\n<h3 style=\"padding: 0px 0px 8px; margin: 0px; outline: none; list-style: none; clear: both; text-align: center; font-family: \'Trebuchet MS\'; font-weight: normal; font-size: 14px; line-height: 18px; color: #4c7687; text-transform: uppercase; letter-spacing: 4px; position: relative; z-index: 2; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #d2dce1;\">ТЕМИ ПИТАНЬ НА ЕКЗАМЕНI</h3>\r\n<ul class=\"questions\" style=\"padding: 25px 0px 0px; margin: 0px; outline: none; list-style: none; overflow: hidden; color: #4c7689; font-family: Arial, sans-serif; line-height: normal;\">\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Що таке HTML (Wikipedia)</li>\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Що таке CSS (Wikipedia)</li>\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Основи роботи інтернету (сервер, браузер, домен і т.п.)</li>\r\n</ul>',1,0,0,8,'2013-10-18 14:10:42',42,'','2013-10-18 15:49:03',42,0,'0000-00-00 00:00:00','2013-10-18 14:10:42','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,10,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(5,41,'Что такое бухта Ласпи.','chto-takoe-bukhta-laspi','','<p>Бухта Ласпи защищена от западных и северных ветров горою Куш-Кая (663 м), а от восточных-горным хребтом Каланых-Кая (625 м) и горой Ильи, или Атанаса (739 м).</p>\r\n<p> </p>\r\n','\r\n<p> </p>\r\n<p>В прежние времена долина, заключенная между горой Ильи с востока и мысом Айя — с запада, отличалась обилием источников. Они “грязнили” землю. Эта особенность местности отразилась в ее названии — Ласпи, что в переводе с греческого значит “грязь”. После землетрясения 1790 г. образовались трещины, в которые ушла вода многих источников. Из-за этого со временем долина Ласпи, густо заселенная раньше, стала безлюдной.</p>\r\n<p> </p>\r\n<p>Из-за отсутствия удобных дорог долина Ласпи долго оставалась укромным, уединенным уголком, пока не была в 1972 г. построена дорога Севастополь — Ялта.</p>\r\n<p> </p>\r\n<p>Вода здесь настолько чистая, что в Ласпинской бухте устроены экспериментальные мидиевые “плантации” для выращивания деликатесных моллюсков.</p>\r\n<p> </p>\r\n<p>Главной особенностью Ласпипской долины является ее своеобразная природа. В уникальном горном убежище, каким является долина, от климатических “невзгод” и перемен укрылось немало реликтовых растений. Некоторые из них представляют собой “осколки” доледниковой эпохи. В Ласпи произрастают одно из красивейших деревьев с розово-красным стволом и блестящей изумрудной листвой земляничник мелкоплодный, можжевельник высокий, сосна Станкевича, занесенные в Красную книгу СССР, редкий обитатель крымских лесов пираканта ярко-красная, иглица понтийская. жасмин, ладанник, около двух десятков орхидей, из которых Комперия Компера — редчайшая. Небольшая рощица сосны Станкевича — около 200 стволов— приютилась у Батилимана, являющегося продолжением ласпинского горного амфитеатра.</p>\r\n<p> </p>\r\n<p>Чистый прозрачный воздух напоен ароматом столетних вечнозеленых деревьев. Чарующая красота Крымских гор... Здесь самый настоящий рай. Уединиться, отдохнуть от земных проблем, отправляйтесь сюда.</p>',1,0,0,9,'2013-10-18 14:12:27',42,'','2013-10-18 16:26:02',42,0,'0000-00-00 00:00:00','2013-10-18 14:12:27','0000-00-00 00:00:00','{\"image_intro\":\"images\\/laspi4.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/laspi3.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,0,9,'','',1,65,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,42,'Как добраться в бухту Ласпи.               ','kak-dobratsya-v-bukhtu-laspi','','<p>Итак, здесь мы подробно расскажем о том, как лучше всего добраться до чудесного уголка под названием Ласпи. Первый вариант если в Крым мы отправились поездом.1. Маршрут будет лежать с железнодорожного вокзала Симферополя. По прибытии в столицу Крыма мы выходим на площадь у вокзала, слева увидим здание «McDonalds» и тут же неподалеку автостанция «Курортная».</p>\r\n','\r\n<p>Отсюда можно сесть на маршрутку до Севастополя, чуть ниже я опишу подробный маршрут до Ласпи оттуда. Или же можно взять такси, оно нас быстро домчит до нужного места, но и цена за комфорт обойдется в среднем около трехсот пятидесяти гривен. 2. Отправление из Севастополя, на мой взгляд, наиболее оптимально и удобно, в первую очередь, это связано с тем, что город-герой является одним из ведущих пунктов соединения в Крыму с иными городами Украины. В Севастополь прибывают поезда из разных уголков нашей родины, а так же ближнего зарубежья, таких как Москва и Санкт-Петербург. Так же, расстояние от Севастополя до Ласпи составит всего около тридцати трех километров, в то время как если добираться из Симферополя, дорога окажется почти в четыре раза длиннее. Но мы рассматриваем разные вариации, чтобы каждый для себя мог выбрать, то, что для него больше всего подходит. Так вот, если изначально, билет взят до этого города, значит, прибываем мы на железнодорожный вокзал, а нам нужен авто, находится он совсем недалеко, на соседней улице именуемой Вокзальная 11. Там садимся на автобус «Севастополь - Ялта», «Севастополь - Форос» и едем до тридцатого километра по трассе, здесь мы увидим остановку \"Ласпи\"- наш пункт назначения. Отсюда мы спускаемся вниз к самой бухте. Хочется заметить, что путь предстоит не близкий приблизительно километров пять, и если мы приехали с каким-то багажом добраться до места будет сложновато. Можно попытаться словить такси не отходя от остановки, но так как дорога, ведущая к морю, весьма узкая на ней в высокий сезон часто бывают заторы, да и такси придется ждать минут пятнадцать не меньше. Но на этом наш выбор не ограничивается. Самый недорогой, из более удобных - это заказ трансфера прямо к поезду. Обойдется это нам около двухсот гривен, приблизительно вполовину меньше, нежели брать такси на вокзале. Второй вариант, если под нами свой «железный конь»Маршрутов тут существует несколько и каждый из них по-своему великолепен и удивителен. Рассмотрим первый из них - это выезд из Симферополя через Ангарский перевал, проезжая Алушту. Кстати трасса Алушта – Ялта – Севастополь считается одной из самых живописных дорог в Крыму. Путь наш лежит сначала к Партениту, здесь можно полюбоваться видом Медведь-горы, дальше проезжаем над Гурзуфом по направлению Ялты, но в нее не заезжаем, огибая по объездной, движемся в сторону Севастополя. Немногим не доезжая до поселка Мисхор вдали мы увидим одну из самых популярных в Крыму гор- Ай-Петри. Дальше мы проезжаем такие населенные пункты как: Алупку, Симеиз, Кацивели и Кастрополь и где то через десять минут оказываемся возле горы Дракон, проезжаем ее туннелем, еще через пять минут будет перекресток указывающий дорогу до Фороса. Проезжаем этот указатель, и справа нас ждет заправка, стоит тут подзарядиться, так как поблизости от Ласпи мы нигде больше заправиться не сможем, ближайшая АЗС как минимум в десяти километрах. Немногим далее проезжаем мыс Сарыч, слева маяк и через минут пять мы выедем к указателю на Ласпи. Вся дорога займет около двух - трех часов. Из Симферополя так же можно добраться до Ласпи немного другой дорогой. Не через Алушту, а через Севастополь. Трасса эта менее привлекательна, но если мы хотим поскорее попасть к пункту назначение, этот путь позволит нам сэкономить немного времени, тридцать- сорок минут.Второй маршрут начинается из Севастополя и идет по трассе к Форосу. Сначала местность будет горная, а во второй половине пути дорога ляжет над морем. На мой взгляд, это самый короткий путь, займет он в среднем минут сорок. Выезжаем с Севастополя и едем через Сапун-гору в сторону Ялты, проезжаете Торопову дачу, Гончарное, смотровую площадку, на последней рекомендовала бы остановится и полюбоваться прекрасным пейзажем, который открывается на бухту Ласпи. Проезжаем еще три километра и вот наш поворот к морю Ласпи.</p>',1,0,0,9,'2013-10-18 14:18:49',42,'','2013-10-18 15:52:05',42,0,'0000-00-00 00:00:00','2013-10-18 14:18:49','0000-00-00 00:00:00','{\"image_intro\":\"images\\/laspimap1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/laspimap.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,0,8,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(7,43,'Достопримечательности Крыма, Форосская церковь.','dostoprimechatelnosti-kryma','','<p style=\"text-align: justify; font-family: Arial, Helvetica, sans-serif; font-size: 11pt; color: #000000; padding-left: 20px; line-height: normal;\">В двух километрах от Байдарских ворот на спуске в поселок обращает на себя внимание форосская церковь Воскресения Христова — памятник русской архитектуры XIX в.</p>\r\n<p style=\"text-align: justify; font-family: Arial, Helvetica, sans-serif; font-size: 11pt; color: #000000; padding-left: 20px; line-height: normal;\">Сооружена церковь в 1892 году на живописном обрывистом утесе — Красной скале на высоте 400 метров над уровнем моря.</p>\r\n','\r\n<p style=\"text-align: justify; font-family: Arial, Helvetica, sans-serif; font-size: 11pt; color: #000000; padding-left: 20px; line-height: normal;\"> </p>\r\n<p style=\"text-align: justify; font-family: Arial, Helvetica, sans-serif; font-size: 11pt; color: #000000; padding-left: 20px; line-height: normal;\">Церковь возведена на средства владельца имения Форос, чаепромышленника А. Г. Кузнецова по проекту академика Н. М. Чагина в память о «чудесном» спасении императора Александра III и его семьи при крушении поезда 17 октября 1888 года на станции Борки Курско-Харьковской железной дороги.</p>\r\n<p style=\"text-align: justify; font-family: Arial, Helvetica, sans-serif; font-size: 11pt; color: #000000; padding-left: 20px; line-height: normal;\"><img src=\"http://palatka-ubk.com.ua/images/foros_zerk_1.jpg\" border=\"0\" alt=\"Форосская церковь\" title=\"Форосская церковь\" hspace=\"10\" width=\"220\" height=\"220\" align=\"right\" />Церковь построена в византийском храмовом стиле, с системой внутренних опор-столбов и с применением многочисленных куполов по типу русских деревянных храмов. Своим силуэтом, нарядностью форосская церковь напоминала московские церкви конца XVIII века.</p>\r\n<p style=\"text-align: justify; font-family: Arial, Helvetica, sans-serif; font-size: 11pt; color: #000000; padding-left: 20px; line-height: normal;\">Мозаичные работы выполнены знаменитой мастерской итальянца Антонио Сальвиати, а внутренний интерьер расписан известными художниками А. К. Корзухиным, В. Е. Маковским, академиком Н. Е. Сверчковым.</p>\r\n<p style=\"text-align: justify; font-family: Arial, Helvetica, sans-serif; font-size: 11pt; color: #000000; padding-left: 20px; line-height: normal;\">В 1924 году церковь была закрыта, кресты сброшены, роспись закрашена, а ее настоятель отправлен в Сибирь. До 1969 года здесь была закусочная для приезжающих туристов, а после церковь вообще оказалась заброшенной.</p>\r\n<p style=\"text-align: justify; font-family: Arial, Helvetica, sans-serif; font-size: 11pt; color: #000000; padding-left: 20px; line-height: normal;\">Передана общине в 1992 г. и после реставрационных работ в храме снова возобновлена служба.</p>',1,0,0,9,'2013-10-18 14:21:12',42,'','2013-10-18 15:27:11',42,42,'2013-11-11 18:45:45','2013-10-18 14:21:12','0000-00-00 00:00:00','{\"image_intro\":\"images\\/foros_zerk.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/foros_zerk.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',7,0,7,'','',1,7,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(8,44,'Если вы упали в холодную воду.','esli-vy-upali-v-kholodnuyu-vodu','','<p>Попадание в холодную воду прежде всего опасно тем что человеческое тело сразу же начинает отдавать тепло и через некоторое время наступает переохлаждение. При понижении температуры тела организм включает защитную систему начиная непроизвольно сокращать мышцы от чего появляется дрожь.</p>\r\n','\r\n<p> </p>\r\n<p>И так, что же делать если вы попали в холодную воду?</p>\r\n<p>В первую очередь нужно в активно плыть к ближайшему берегу или плавучему средству, при этом находясь на плаву голову нужно держать как можно выше над водой, так как основная теплоотдача организма проходит через нее. Не следует избавлятся от верхней одежды и обуви попав в воду. Даже намокнув в воде одежда является хорошим теплоизолятором и продлит время до наступления переохлаждения. К примеру в воде температура которой около 10 градусов незакаленный человек может провести около 15-20 минут до наступления переохлаждения, в случае если он будет в одежде время до переохлаждения может увеличиться до 40 минут.</p>\r\n<p>Выбравшись из воду в первую очередь нужно раздаётся, если нет возможности одеть сухую сменную одежду то нужно хорошенько выкрутить намокшую и снова одеть её от себя. Если неподалеку есть люди или жилище нужно бегом направится к ним. Для того что бы согреться нужно выполнять различные физические упражнения, бегать, наклоняться, разминать руки. Если есть возможность развести костер эти действия можно совместить. При этом нужно быть при возможности хорошо укрытым от ветра. Ветер значительно усиливает тепло потерю организма. Немного согревшись нужно хорошо укутаться и выпить горячего чаю или кофе. При возможности, для согрева, очень полезны греки – теплые, нагретые на костру, камни, теплая вода в бутылках. Грелки можно прикладывать к груди, голове класть подмышки.</p>',1,0,0,10,'2013-10-18 14:22:20',42,'','2013-10-18 16:21:35',42,0,'0000-00-00 00:00:00','2013-10-18 14:22:20','0000-00-00 00:00:00','{\"image_intro\":\"images\\/turizm5.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,0,6,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(9,45,'Хлеб из желудей','khleb-iz-zheludej','','<p>Помимо всего прочего желуди содержат дубительные вещества которые придают им горьковатый, не очень приятный вкус. И для приготовления хлеба нам необходимо избавиться от этого горьковатого привкуса. Для этого нам нужно, для начала, очистить жёлуди от скорлупы. Проще всего это делается так- жёлудь разрезается вдоль после чего можно от края разреза можно легко снимать скорлупу пластами.</p>\r\n','\r\n<p> </p>\r\n<p>Очистив жёлуди их нужно каждый жёлудь нужно разрезать на четыре части и залить водой для вымачиванья.   Вымачивать жёлуди нужно в течении двух-трёх дней, при этом меняя воду в день про три-четыре раза. Во время вымачиванья жёлуди избавляться от большей части дубительных веществ и смягчают свой вкус.</p>\r\n<p>Для того что бы сделать муку для хлеба из желудей, необходимо сделать их мягкими. Этого можно добиться отварив жёлуди. Также проварка желудей окончательно избавит их от горьковатого привкуса. Варить жёлуди нужно до того момента пока они не станут мягкими.</p>\r\n<p>После того как желуди дойдут до нужной кондиции, станут довольно мягкими, нужно слить воду и истолочь жёлуди в однородную массу. Проще всего толочь жёлуди высыпав их на какую-то твердую поверхность и бить по ним чем то увесистым и прочным. Толочь нужно до образования однородной массы, но в принципе, чем мельче тем лучше.</p>\r\n<p>После этого нужно добавить в желудёвую массу немного воды что бы получить тесто. Из получившегося теста лепятся небольшие лепешки толщиной в один сантиметров и шириной сантиметров шесть-семь и жариться на сковороде, лучше на подсолнечном масле иначе очень сильно пригорит. Готовность лепешки определяется на глаз.</p>\r\n<p>Подобная лепешка выглядит не очень аппетитно но будет вполне съедобной. В тесто можно добавлять соль или сахар чтобы сделать лепешку менее пресной.</p>\r\n<p> </p>\r\n<p>Помимо хлеба из желудей можно делать различные блюда: их можно жарить нарезав кусочками, делать желудёвую кашу, или делать из хорошо прожаренных желудей заменитель заварного кофе.</p>',1,0,0,10,'2013-10-18 14:23:53',42,'','2013-10-18 16:21:58',42,0,'0000-00-00 00:00:00','2013-10-18 14:23:53','0000-00-00 00:00:00','{\"image_intro\":\"images\\/turizm2.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,5,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(10,46,'Самодельная горелка из алюминиевых банок из под пива.','samodelnaya-gorelka-iz-alyuminievykh-banok-iz-pod-piva','','<p>Изготовить подобную горелку не тяжело, для этого нам нужны две алюминиевые банки из под пива. Для начала желательно мелкой наждачной очистить нижнюю часть поверхности от краски. Это не обязательное условие но всё-таки лучше очистить что бы потом при горении краска от температуры не подгорала и не коптила.</p>\r\n','\r\n<p> </p>\r\n<p>И так после очищение от краски нам нужно отрезать дно у банок с высотой бортиков 2-3 сантиметра. Тут есть нюанс – отрезав дно одной банки желательно его немного надеть на дно неотрезанной банки после чего снять. Это делается для того что бы немного деформировать одну часть нашей горелке что нам поможет позже.</p>\r\n<p>i (1)</p>\r\n<p>Отрез дно с двух банок мы получили две части нашей горелки, теперь нам нужно их соединить. Прежде чем соединять горелку в целое нам необходимо положить внутрь одного отрезанного дна баки кусок стекловаты.</p>\r\n<p>Желательного чтобы стекловаты было столько что бы она полностью заполняла нашу будущую горелку. После этого нужно соединить две части нашей горелки, таким образом, что бы одно банки смотрело вверх а другое вниз. Сделать это не очень просто так как размеры банки одинаковы, для этого мы и надевали ранее одно дно на другое что бы деформировать одну часть горелки что немного облегчит нам их соединение.</p>\r\n<p>x5</p>\r\n<p>Соединив две части будущей горелки нам нужно проделать в ней отверстия по периметру банки и в несколько отверстии по центру дна. Отверстия можно проделать к примеру циркулем либо обычными канцелярскими кнопками.</p>\r\n<p>0_506de_d2b91483_L</p>\r\n<p>И вот у нас готовая горелка.</p>\r\n<p>Непосредственно перед использованием в горелку, через отверстия по центру дна, заливается горючая жидкость. Лучше всего для этого подходить медицинский спирт, либо жидкость для разжигания костров, но в принципе подходит любая горящая спиртосодержащая (96 процентная) жидкость. Зажигается горелка с помощью зажжённой спички которую нужно поднести к отверстию проделанную по периметру горелки.</p>\r\n<p>Конечно подобна горелка не годиться для приготовления пищи но для того что бы вскипятить 0,5-1 литра воды, и приготовить для пары человек чай вполне сойдет.)</p>\r\n<p>Примечание: от количества отверстии по периметру горелки и их размера зависит время горения горелки. Чем больше отверстие тем сильнее будет пламя, соответвенно топливо в горелке выгорит быстрее.</p>',1,0,0,10,'2013-10-18 14:24:45',42,'','2013-10-18 16:22:14',42,0,'0000-00-00 00:00:00','2013-10-18 14:24:45','0000-00-00 00:00:00','{\"image_intro\":\"images\\/turizm4.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,4,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(11,47,'Как выбрать спальный мешок.','kak-vybrat-spalnyj-meshok','','<p>Один из животрепещущий вопросов и у начинающих (да и у опытных) туристов — «Какой нужно взять спальник в поход?». Учитывая что на рынке спальников превеликое множество, вопрос о выборе спальника становится еще сложней. Попробуем разобраться, в основных разновидностях спальниках и их предназначениях.</p>\r\n','\r\n<p> </p>\r\n<p>Спальный мешок   в основном используется  туристами,альпинистами,спелеологами для ночёвок в  походных условиях .  По форме  спальные мешки можно разделить на несколько  видов:</p>\r\n<p> </p>\r\n<p>1. Спальный мешок — одеяло. Простое одеяло с длинной разъемной молнией. Как дополнительная  возможность подстегивать спальные мешки друг с другом.</p>\r\n<p> </p>\r\n<p> </p>\r\n<p>2.Спальный мешок — кокон.Представляет собой зауженную книзу и расширенную кверху модель с капюшоном. Наиболее комфортная модель, позволяющая максимально сохранять тепло внутри спальника благодаря своей конструкции.</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p>3.Спальный мешок-комбинезон — представляет собой спальный мешок с отделениями для каждой части тела (руки ноги ). Такой спальный мешок позволяет выйти из палатки, не снимая мешка. Требует более тщательного подбора по размеру и температурных характеристикам.</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p>При выборе спального мешка необходимо обращать внимание на  технический паспорт, в котором должны быть указаны материалы из который изготовлен спальник: ткань внутренняя, ткань внешняя, наполнитель, его плотность и предельные температуры использования. Выбирая спальник, в первую очередь, необходимо учесть условия, в которых он будет эксплуатироваться. Для летних походов подойдут менее теплые (от +5°С до +25°С) и облегченные спальники, а для горных походов, межсезонья и зимы — более объемные и тяжелые, но зато и более теплые ( до -35°С) модели. Тем, кто ходит в туристические походы круглый год, лучше иметь два вида спальников — на лето и на межсезонье-зиму.</p>\r\n<p>Материал наполнитель</p>\r\n<p> </p>\r\n<p>Материал наполнитель во основном  бывает трех типов — пух, синтетик, хлопок .Синтетик-спальники более лёгкие, более защищены от намокания,  что касается минусов  то через некоторое время эксплуатации  слеживаются и становятся почти в два раза тоньше и, следовательно, холоднее. Есть большое количество разнообразных синтетических материалов которые используются как наполнители. Тип материла указывается в техническом паспорте, информацию о них можно найти в интернете. В данный момент такие спальники являются самые распространенными  и универсальными.</p>\r\n<p>Пух-В настоящее время самым теплым наполнителем является пух, Пух не сбивается  по этому при эксплуатации  такие спальные мешки не теряют свою амортизацию ( холодо устойчивость ) из минусов,  пух очень хорошо впитывает влагу и долго сохнет. такой тип мешков больше предназначен для высокогорных восхождений .</p>\r\n<p>Хлопок -подходят для недальних походов,или  базовых лагерей . Недостатком их является больший вес, довольно высокая способность впитывать влагу.</p>\r\n<p>Температурный режим</p>\r\n<p> </p>\r\n<p>t° Maximum — максимальная температура, при которой можно комфортно спать без повышения потоотделения и ощущения избыточного тепла (это довольно относительное значение, потому что при высокой температуре можно открыть спальник).</p>\r\n<p>t° Comfort — минимальная температура окружающего  воздуха, при котором спальник обеспечивает 8 часов комфортного и непрерывного сна. То есть, это та минимальная температура, при которой спальник идеально выполняет свою функцию.</p>\r\n<p>t° Extreme — экстремальная температура — минимальная температура окружающей среды или воздуха в палатке, при которой спальный мешок обеспечит 6-8 часов не комфортного сна без большого риска гипотермии (переохлаждения).</p>\r\n<p>Подробней о температурных режимах можно прочитать здесь</p>\r\n<p> </p>\r\n<p>Стирка в стиральной машине не допускается ,после стирки не отжимайте.  Храните спальный мешок в сухом месте и в расправленном состоянии .</p>\r\n<p> </p>\r\n<p>Размер спальника</p>\r\n<p> </p>\r\n<p>При покупке обязательно  знать  размеры  нужного вам спального мешка .</p>\r\n<p>стандартные — 73 х 190 см — спальные мешки для людей среднего роста.</p>\r\n<p>подростковые — 73 х 167 см — это более узкие или более короткие спальники для  невысоких людей.</p>\r\n<p>увеличенные — от 84 х 198 см до 96 х 205 см — более длинные, чем стандарт, — для высоких людей.</p>\r\n<p>Размер спальника очень важный момент. Как показывает опыт, если человек невысокого роста,  лучше взять спальник подросткового размера. В спальнике будет меньше свободного пространства следовательно шанс замерзнуть(в случае холодной погоды) значительно меньше.</p>\r\n<p> </p>\r\n<p>Так же спальники бывают разного веса и размера, эти параметры зависят от материалов из которых изготовлены. И естественно чем легче и меньше спальник с хорошими температурными данными тем он дороже :) .</p>\r\n<p> </p>\r\n<p>Подытожив все выше сказанное при выборе спальника нужно в первую очередь для чего вы берете спальник. Если это летний выезд на несколько дней в месте где умеренный климат и теплая погода то хватит и спальника одеяла. В случае если  вы планируете ходить в походы в горы (где даже летом может быть прохладно) весной и осенью к выбору спальника нужно подойти более основательно, в первую очередь учесть минимальную предполагаемую температуру которая может случится во время похода. Так же не забываем о размере спальника (не стоит брать стандартный спальник если вам  подходит подростковый).</p>\r\n<p> Если учесть все эти вышеупомянутые нюансы то ночью вы будете чествовать себя комфортно и спать как младенец)</p>',1,0,0,10,'2013-10-18 14:28:01',42,'','2013-10-18 16:23:38',42,42,'2013-11-03 16:07:38','2013-10-18 14:28:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/turixm6.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,0,3,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(12,48,'Как не промокнуть в походе.','kak-ne-promoknut-v-pokhode','','<p> Очень часто задаваемый вопрос в – как не промокнуть в походе во время дождя? Ответ – ни как). Точнее идеально сухим перемещаясь по мокрому лесу под дождем остаться практически не возможно. В идеале можно обзавестись хорошей трекинговой одеждой – штормовочными штанами и курткой с хорошей мембраной, хорошей трекинговой обувью, и термобельем.</p>\r\n','\r\n<p>Подобный комплект довольно долго может обеспечить комфорт даже во время дождя, но стоимость всего выше перечисленного довольно высока и не всем по карману приобрести все эти замечательные вещи. Поэтому мы не пока будем рассматривать подобный вариант, а поговорим о дешевых ухищрениях проверенных опытом и годами.</p>\r\n<p>И так начнем, что же делать что бы как можно меньше промокнуть во время дождя и сохранить остальные вещи сухими.</p>\r\n<p>Первое конечно это – дождевик. Дождевик самый простой и довольно дешевый способ переждать дождь при этом оставшись относительно сухим. При покупке дождевика не желательно экономить и покупать самый дешевый, лучше выбрать дождевик с более плотным полиэтиленом, они более устойчивы к разрывам. Как показывает опыт лучше и удобней для похода купить дождевик «рыбацкого» типа (либо накидку пончо), то есть большой дождевик одеть который можно на себя еще и поверх рюкзака (что поможет сохранит рюкзак в сухости). Но дождевик имеет свои недостатки. Во-первых он не «дышит», то есть передвигаясь в нормальном темпе можно спариться и промокнуть уже изнутри, так что если дождь предполагается не долгий то его лучше переждать где то остановившись. Во-вторых дождевики рвутся, при передвижении через лес даже дождевик с плотным полиэтиленом может порваться зацепившись за кусты или ветку, если дождевик застёгивается на кнопки он часто рвётся при попытке отстегнуть кнопку, так что будьте осторожны расстёгивая дождевик.</p>\r\n<p>Чтобы не промок рюкзак можно купить специальный водонепроницаемые чехлы для рюкзаков. Более дешевый и упрощенный вариант это – большой, плотный мусорный пакет. В продаже есть пакеты от 40 литров и больше, они прочные и плотные и его довольно просто одеть на рюкзак. Так же можно упаковывать вещи в полиэтиленовые пакеты в рюкзаке на случай если рюкзак все таки промокнет вещи останутся сухими.</p>\r\n<p>Обувь. Если нет возможности приобрести специальную трекинговую обувь, есть более дешевый неплохой вариант. Неплохо себя показали кожаные берци. Они не дороги, и если хорошо прошиты и проклеены промокают не очень быстро. Но что бы берци дольше не промокали их нужно подготовить. Для увеличения влагоотталкивающих свойств кожаной обуви её можно пропитать жиром. Лучше всего для этого подходит глицерин (продаться в аптеках). Для начала нужно протереть поверхность обуви убрав с нее гуталин, после чего смочив кусочек глицерином поролона смазываем обувь как снаружи так и внутри (не забываем про швы на стыке подошвы и верхней части берц). После того как глицерин впитается (30-40 минут) повторить эту процедуру еще пару раз. Помимо глицерина можно использовать другие жиры либо вазелин. Также в продаже есть специальная смазка для походной обуви.</p>\r\n<p>Что бы остаться сухим в палатке. Тут нам снова пригодиться плотный полиэтилен. Если вас дешевая палатка которая промокает от сильно дождя можно сделать наклонный тент из полиэтиленовой пленки над палаткой, таким образом основная часть воды будет стекать по нему в сторону а не на палатку. Другой случай когда вода накапливается на поверхности почвы накапливается вода и палатка может оказаться в луже. Если палатка начинает подтекать сохранить сухими вещи также поможет полиэтиленовая пленка размером чуть больше дна палатке. Пленку нужно загодя положить на палатки и завернуть края вверх.  А сверху положить вещи. Если пленка не повреждена она не будет пропускать воду. Что бы под палаткой не появилось лужи можно обкопать палатку небольшой канавкой где будет собираться вода.</p>',1,0,0,10,'2013-10-18 14:29:03',42,'','2013-10-19 16:56:41',42,0,'0000-00-00 00:00:00','2013-10-18 14:29:03','0000-00-00 00:00:00','{\"image_intro\":\"images\\/shapka.gif\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/turizm7.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',7,0,2,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(13,49,'Достопримечательности Крыма, Херсонес.','khersones','','<p>Историко-археологический заповедник Херсонес Таврический известен не только в нашей стране, но и далеко за ее пределами. В 1996 г. решением ЮНЕСКО он занесен в сто самых выдающихся памятников мировой культуры.</p>\r\n','\r\n<p> </p>\r\n<p> </p>\r\n<p>Раскопки открыли миру город, который на протяжении многих веков являлся крупным политическим, экономическим и культурным центром Северного Причерноморья.</p>\r\n<p> </p>\r\n<p>Херсонес был греческой колонией, основанной в 422-421 гг. до н. э. выходцами из Гераклеи Понтийской. Он расположен в юго-западной части Крыма, у бухты, которая в настоящее время называется Карантинной. В переводе с греческого \"Херсонес\" и означает полуостров. Здесь жили земледельцы и ремесленники, врачи и скульпторы, архитекторы и художники, историки и поэты. Это была рабовладельческая республика с демократической формой правления; высшим органом государственной власти было народное собрание.</p>\r\n<p> </p>\r\n<p>Херсонес в СевастополеВсе годы существования государства херсонеситам приходилось вести войны. Во II в. до н. э. шла кровопролитная, длительная война со скифами. Херсонес вынужден был обратиться за помощью к понтийскому царю Митридату VI Евпатору, который направил в Крым большой отряд во главе с полководцем Диофантом. Скифы были разгромлены, однако и Херсонесу не удалось сохранить свою самостоятельность: он вошел в состав державы Митридата. С тех пор город находился в постоянной зависимости от своих более сильных соседей.</p>\r\n<p> </p>\r\n<p>В 1 в. до н.э. Херсонес утратил демократическую форму правления, попал в зависимость от Римской империи и долго служил основным форпостом ее захватнической политики в Северном Причерноморье.</p>\r\n<p> </p>\r\n<p>С началом новой эры в Херсонес проникает христианство, в IV в. оно становится официальной религией. Безжалостно разрушаются памятники античного искусства, театр, храмы, их заменяют христианские церкви, часовни. В этот период от нашествия гуннов погибают многие города. Херсонес, защищенный мощными оборонительными стенами, продолжает жить еще тысячелетие, но уже в условиях нового, феодального строя.</p>\r\n<p> <img src=\"images/hersones_5.jpg\" border=\"0\" alt=\"\" /></p>\r\n<p>Херсонес в СевастополеВ V в. Херсонес вошел в состав Византийской империи, а в IX в. стал одной из ее военно-административных областей. К этому времени изменился не только внешний облик средневекового города, но и его имя: византийцы называли его Херсоном, славяне - Корсунем.</p>\r\n<p> </p>\r\n<p>Русь в эту пору становится силой, с которой вынуждены были считаться не только ближайшие соседи, но и такое крупное государство, как Византия. Когда Византия не выполнила обязательств договора с киевским князем Владимиром, он в 988 г. выступил против Корсуня и взял его после девятимесячной осады.</p>\r\n<p> </p>\r\n<p>Византия заключила с Русью равноправный союз. Херсонесу, служившему посредником в их торговле, этот союз был очень выгоден. Отсюда в Малую Азию и Византию отправлялись продукты сельского хозяйства и животноводства; из южных стран в Херсонес и далее, на север, везли оружие, ткани, масло.</p>\r\n<p> </p>\r\n<p>Херсонес в СевастополеСо временем могущество Византии ослабело, и в XIII в. торговля на Черном море оказалась в руках итальянских (венецианских, а затем генуэзских) купцов, которые основали в Крыму свои фактории. Торговые пути переместились в Восточный Крым, и это стало одной из причин упадка экономики Херсонеса.</p>\r\n<p> </p>\r\n<p>Трагедию города довершили набеги кочевников, которые в конце XIII в., а затем через сто лет нанесли ему непоправимый урон. Разрушенный и сожженный Херсонес больше не смог возродиться.</p>\r\n<p> </p>\r\n<p>К середине XV в. жизнь в нем окончательно угасла. Прошло время и земля погребла под собой руины некогда большого, прекрасного города.</p>\r\n<p> </p>\r\n<p>Лишь 400 лет спустя, в 1827 г., офицер Черноморского флота Крузе произвел первые раскопки на месте погибшего Херсонеса. Впоследствии они проводились отдельными лицами и организациями. Наиболее систематические раскопки начались в конце 80-х годов прошлого века. Двадцать лет жизни отдал им большой энтузиаст и организатор будущего музея К. К. Косцюшко-Валюжинич.</p>\r\n<p> </p>\r\n<p>Херсонес в СевастополеЗа годы Советской власти Херсонесский историко-археологический заповедник превратился в один из крупнейших научно-исследовательских центров, стал базой, где ведут исследовательскую работу ученые-археологи всего мира и проходят практику студенты университетов. Систематические раскопки помогли восстановить историю древнего города-государства.</p>\r\n<p> </p>\r\n<p>Музей-заповедник очень популярен, ежегодно его посещают десятки тысяч экскурсантов. Их привлекают коллекции эпиграфических памятников (в том числе всемирно известная присяга граждан Херсонеса III в. до н. э.), произведения искусства, ремесленные изделия и орудия труда, предметы быта, которыми пользовались жители Херсонеса.</p>\r\n<p> </p>\r\n<p>Экскурсанты могут ознакомиться с территорией древнего города: пройти по его главной улице, побродить по некогда оживленным жилым кварталам и площадям, осмотреть руины античного театра, беломраморные колонны средневековых храмов, остатки величественных оборонительных сооружений - стен и башен. Из оборонительных башен наибольший интерес представляет башня Зенона, которая занимала важное место в системе городской обороны и поэтому постоянно достраивалась и совершенствовалась херсонеситами. Не случайно это самая большая башня Херсонеса. В ней были найдены расписные надгробия, архитектурные детали, которые и сегодня восхищают своей красотой.<img src=\"images/hersones_1.jpg\" border=\"0\" alt=\"\" /></p>',1,0,0,9,'2013-10-18 14:33:48',42,'','2013-10-18 15:29:46',42,0,'0000-00-00 00:00:00','2013-10-18 14:33:48','0000-00-00 00:00:00','{\"image_intro\":\"images\\/hersones_4.jpg\",\"float_intro\":\"right\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/hersones_2.jpg\",\"float_fulltext\":\"right\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,0,1,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(14,50,'Курс Ruby on Rails.','kurs-ruby-on-rails','','<p>Ruby on Rails (RoR) є популярним та затребуваним фреймворком для написання веб-сервісів на мові програмування Ruby. Використовуючи основні переваги Ruby (динамічна мова для об\'єктно-орієнтовного програмування, що відрізняється лаконічністю і інтуітивністю) та еталонної MVC архітектури — RoR дозволяє розробляти якісні веб-сервіси швидкими темпами. Серед веб-проектiв, що написані на Ruby on Rails можна виділити — GitHub, Twitter, Basecamp, Groupon, YP, Shopify та інші.</p>\r\n<h3 style=\"padding: 0px 0px 8px; margin: 0px; outline: none; list-style: none; clear: both; text-align: center; font-family: \'Trebuchet MS\'; font-weight: normal; font-size: 14px; line-height: 18px; color: #4c7687; text-transform: uppercase; letter-spacing: 4px; position: relative; z-index: 2; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #d2dce1;\"> </h3>\r\n','\r\n<h3 style=\"padding: 0px 0px 8px; margin: 0px; outline: none; list-style: none; clear: both; text-align: center; font-family: \'Trebuchet MS\'; font-weight: normal; font-size: 14px; line-height: 18px; color: #4c7687; text-transform: uppercase; letter-spacing: 4px; position: relative; z-index: 2; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #d2dce1;\">ТЕМИ ПИТАНЬ НА ЕКЗАМЕНI</h3>\r\n<ul class=\"questions\" style=\"padding: 25px 0px 0px; margin: 0px; outline: none; list-style: none; overflow: hidden; color: #4c7689; font-family: Arial, sans-serif; line-height: normal;\">\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Базові знання HTML / CSS (HTML: структура сторiнки, теги, посилання, зображення, форми, таблицi; CSS: селектори, наслiдування, псевдокласи, iдентифiкатори i класи, iнтеграцiя css-файлiв у HTML)</li>\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Базовий рівень англійської в IT (розумiння технiчної літератури і документації, вміння називати змінні англійською);</li>\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Загальне розуміння роботи web (протоколи (http, ...), методи (POST, GET, ...), заголовки (cookies, …), коди відповідей (404, 302, ...), сервери, домени, браузери, кукі);</li>\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Базові UNIX команди (ls, cp, mv, rm, chmod (в т.ч. опції), mkdir, ssh);</li>\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Встановлена UNIX система на ноутбуці й вміння з нею управлятися (Ubuntu, Mac OS X і т.д.);</li>\r\n<li style=\"padding: 0px 0px 20px 30px; margin: 0px; outline: none; list-style: none; overflow: hidden; background-image: url(\'http://geekhub.ck.ua/images/question-li.png\'); background-position: 0% 0%; background-repeat: no-repeat no-repeat;\">Велике бажання й мотивація :)</li>\r\n</ul>',1,0,0,8,'2013-10-18 14:37:48',42,'','2013-10-18 15:48:49',42,0,'0000-00-00 00:00:00','2013-10-18 14:37:48','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,0,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `diyk8_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_content_frontpage`
--

DROP TABLE IF EXISTS `diyk8_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_content_frontpage`
--

LOCK TABLES `diyk8_content_frontpage` WRITE;
/*!40000 ALTER TABLE `diyk8_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_content_rating`
--

DROP TABLE IF EXISTS `diyk8_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_content_rating`
--

LOCK TABLES `diyk8_content_rating` WRITE;
/*!40000 ALTER TABLE `diyk8_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_core_log_searches`
--

DROP TABLE IF EXISTS `diyk8_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_core_log_searches`
--

LOCK TABLES `diyk8_core_log_searches` WRITE;
/*!40000 ALTER TABLE `diyk8_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_djmediatools`
--

DROP TABLE IF EXISTS `diyk8_djmediatools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_djmediatools` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_djmediatools`
--

LOCK TABLES `diyk8_djmediatools` WRITE;
/*!40000 ALTER TABLE `diyk8_djmediatools` DISABLE KEYS */;
INSERT INTO `diyk8_djmediatools` VALUES (1,1,'фото1','albom1','images/sampledata/parks/landscape/800px_cradle_mountain_seen_from_barn_bluff.jpg','',1,'2013-10-18 18:51:02','2014-01-17 18:51:04',0,'0000-00-00 00:00:00',1,'{\"link_type\":\"\",\"link_menu\":\"101\",\"link_url\":\"\",\"link_article\":\"\",\"video_link\":\"\"}'),(2,1,'фото2','foto2','images/sampledata/parks/landscape/800px_ormiston_pound.jpg','',1,'2013-10-18 18:52:00','2014-02-21 18:52:16',0,'0000-00-00 00:00:00',2,'{\"link_type\":\"\",\"link_menu\":\"101\",\"link_url\":\"\",\"link_article\":\"\",\"video_link\":\"\"}'),(3,1,'фото3','foto3','images/sampledata/parks/animals/180px_koala_ag1.jpg','',1,'2013-10-18 18:52:49','2014-01-24 18:52:51',0,'0000-00-00 00:00:00',3,'{\"link_type\":\"\",\"link_menu\":\"101\",\"link_url\":\"\",\"link_article\":\"\",\"video_link\":\"\"}'),(4,1,'фото4','foto4','images/priroda/pr1.jpg','',1,'2013-10-18 19:08:00','2013-12-27 19:08:02',0,'0000-00-00 00:00:00',4,'{\"link_type\":\"\",\"link_menu\":\"101\",\"link_url\":\"\",\"link_article\":\"\",\"video_link\":\"\"}'),(5,1,'фото5','foto5','images/priroda/pr2.jpg','',1,'2013-10-18 19:08:38','2013-12-20 19:08:40',0,'0000-00-00 00:00:00',5,'{\"link_type\":\"\",\"link_menu\":\"101\",\"link_url\":\"\",\"link_article\":\"\",\"video_link\":\"\"}'),(6,1,'фото6','foto6','images/priroda/pr3.jpg','',1,'2013-10-18 19:09:18','2013-12-20 19:09:21',0,'0000-00-00 00:00:00',6,'{\"link_type\":\"\",\"link_menu\":\"101\",\"link_url\":\"\",\"link_article\":\"\",\"video_link\":\"\"}'),(7,1,'фото7','foto7','images/priroda/pr4.jpg','',1,'2013-10-19 19:09:45','2013-12-20 19:09:47',0,'0000-00-00 00:00:00',7,'{\"link_type\":\"\",\"link_menu\":\"101\",\"link_url\":\"\",\"link_article\":\"\",\"video_link\":\"\"}'),(8,1,'фото8','foto8','images/priroda/pr5.jpg','',1,'2013-10-18 19:10:14','2014-01-31 19:10:17',0,'0000-00-00 00:00:00',8,'{\"link_type\":\"\",\"link_menu\":\"101\",\"link_url\":\"\",\"link_article\":\"\",\"video_link\":\"\"}'),(9,1,'фото9','foto9','images/priroda/pr6.jpg','',1,'2013-10-18 19:10:40','2014-01-25 19:10:44',0,'0000-00-00 00:00:00',9,'{\"link_type\":\"\",\"link_menu\":\"101\",\"link_url\":\"\",\"link_article\":\"\",\"video_link\":\"\"}');
/*!40000 ALTER TABLE `diyk8_djmediatools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_djmediatools_categories`
--

DROP TABLE IF EXISTS `diyk8_djmediatools_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_djmediatools_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`,`published`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_djmediatools_categories`
--

LOCK TABLES `diyk8_djmediatools_categories` WRITE;
/*!40000 ALTER TABLE `diyk8_djmediatools_categories` DISABLE KEYS */;
INSERT INTO `diyk8_djmediatools_categories` VALUES (1,0,'component','альбом','albom','','',1,0,'0000-00-00 00:00:00',1,'{\"plg_content_type\":\"featured\",\"plg_content_id\":\"0\",\"plg_content_maxlevel\":\"0\",\"plg_content_image\":\"\",\"plg_folder_path\":\"\",\"plg_folder_link\":\"\",\"layout\":\"\",\"slider_type\":\"\",\"desc_effect\":\"\",\"sort_by\":\"\",\"link_image\":\"\",\"lightbox\":\"picbox\",\"image_width\":\"\",\"image_height\":\"\",\"resizing\":\"\",\"thumb_width\":\"\",\"thumb_height\":\"\",\"visible_images\":\"\",\"space_between_images\":\"\",\"max_images\":\"\",\"show_thumbs\":\"\",\"tab_indicator\":\"\",\"tab_width\":\"\",\"tab_height\":\"\",\"tab_position\":\"\",\"show_title\":\"\",\"show_desc\":\"\",\"show_readmore\":\"\",\"readmore_text\":\"\",\"link_title\":\"\",\"link_desc\":\"\",\"limit_desc\":\"\",\"autoplay\":\"\",\"pause_autoplay\":\"\",\"show_buttons\":\"\",\"show_arrows\":\"\",\"show_custom_nav\":\"\",\"effect\":\"\",\"effect_type\":\"\",\"duration\":\"\",\"delay\":\"\",\"preload\":\"\",\"desc_position\":\"\",\"desc_width\":\"\",\"desc_bottom\":\"\",\"desc_horizontal\":\"\",\"left_arrow\":\"\",\"right_arrow\":\"\",\"play_button\":\"\",\"pause_button\":\"\",\"arrows_top\":\"\",\"arrows_horizontal\":\"\",\"custom_nav_pos\":\"\",\"custom_nav_align\":\"\",\"loader_position\":\"\"}');
/*!40000 ALTER TABLE `diyk8_djmediatools_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_extensions`
--

DROP TABLE IF EXISTS `diyk8_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_extensions`
--

LOCK TABLES `diyk8_extensions` WRITE;
/*!40000 ALTER TABLE `diyk8_extensions` DISABLE KEYS */;
INSERT INTO `diyk8_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"ru-RU\",\"site\":\"ru-RU\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\",\"enable_flash\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"0\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:default\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"1\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"useractivation\":\"1\",\"frontend_userparams\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(500,'atomic','template','atomic','',0,1,1,0,'{\"legacy\":false,\"name\":\"atomic\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"2.5.0\",\"description\":\"TPL_ATOMIC_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(502,'bluestork','template','bluestork','',1,1,1,0,'{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez_20','template','beez_20','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(505,'beez5','template','beez5','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.14\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(800,'PKG_JOOMLA','package','pkg_joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'Russian','language','ru-RU','',0,1,0,0,'{\"legacy\":true,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2013-07-26\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.13.1\",\"description\":\"Russian language pack (site) for Joomla! 2.5\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10001,'Russian','language','ru-RU','',1,1,0,0,'{\"legacy\":true,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2013-07-26\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.13.1\",\"description\":\"Russian language pack (administrator) for Joomla! 2.5\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10002,'TinyMCE ru-RU','file','tinymce_ru-ru','',0,1,0,0,'{\"legacy\":false,\"name\":\"TinyMCE ru-RU\",\"type\":\"file\",\"creationDate\":\"2012-06-19\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.5.2.1\",\"description\":\"Russian Language Package for TinyMCE 3.5.2.1 in Joomla 2.5\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10003,'ru-RU','package','pkg_ru-RU','',0,1,1,0,'{\"legacy\":false,\"name\":\"Russian Language Pack\",\"type\":\"package\",\"creationDate\":\"Unknown\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.5.13.1\",\"description\":\"Joomla 2.5 Russian Language Package\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10004,'Календарь','module','mod_blog_calendar','',0,1,0,0,'{\"legacy\":false,\"name\":\"\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c\",\"type\":\"module\",\"creationDate\":\"2012\",\"author\":\"Juan Padial\",\"copyright\":\"\",\"authorEmail\":\"joomlacalendar@ya.ru\",\"authorUrl\":\"http:\\/\\/joomlacalendar.ru\\/\",\"version\":\"1.6.5a\",\"description\":\"\\n\\t<p>\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0430\\u0435\\u0442 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438 \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e \\u043e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u0435\\u043d\\u043d\\u044b\\u043c \\u0434\\u043d\\u044f\\u043c. \\n\\t<\\/p>\",\"group\":\"\"}','{\"show_what\":\"0\",\"show_list_years\":\"1\",\"show_list_months\":\"1\",\"show_list_articles\":\"1\",\"show_list_sublevels\":\"1\",\"cal_start_date\":\"\",\"cal_start_day\":\"1\",\"cal_length_days\":\"2\",\"use_article_date\":\"yes\",\"associatedItemid\":\"\",\"cbintegration\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10005,'blog_calendar','component','com_blog_calendar','',1,1,0,0,'{\"legacy\":false,\"name\":\"Blog_Calendar\",\"type\":\"component\",\"creationDate\":\"2012\",\"author\":\"Juan Padial\",\"copyright\":\"joomlacalendar.ru\",\"authorEmail\":\"joomlacalendar@ya.ru\",\"authorUrl\":\"http:\\/\\/joomlacalendar.ru\\/\",\"version\":\"1.6.5a\",\"description\":\"<p>\\n  \\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0430\\u0435\\u0442 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438 \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u043e \\u043e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u0435\\u043d\\u043d\\u044b\\u043c \\u0434\\u043d\\u044f\\u043c. \\n\\t\\t\\t\\t<\\/p>\\n  \",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10006,'DJ-MediaTools Album','module','mod_djmediatools','',0,1,0,0,'{\"legacy\":false,\"name\":\"DJ-MediaTools Album\",\"type\":\"module\",\"creationDate\":\"June 2012\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.1.0\",\"description\":\"Displays DJ-MediaTools Album in module position.\",\"group\":\"\"}','{\"catid\":\"\",\"layout\":\"\",\"slider_type\":\"\",\"desc_effect\":\"\",\"sort_by\":\"\",\"link_image\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"resizing\":\"\",\"thumb_width\":\"\",\"thumb_height\":\"\",\"visible_images\":\"\",\"space_between_images\":\"\",\"max_images\":\"\",\"show_thumbs\":\"\",\"tab_indicator\":\"\",\"tab_width\":\"\",\"tab_height\":\"\",\"tab_position\":\"\",\"show_title\":\"\",\"show_desc\":\"\",\"show_readmore\":\"\",\"readmore_text\":\"\",\"link_title\":\"\",\"link_desc\":\"\",\"limit_desc\":\"\",\"autoplay\":\"\",\"pause_autoplay\":\"\",\"show_buttons\":\"\",\"show_arrows\":\"\",\"show_custom_nav\":\"\",\"effect\":\"\",\"effect_type\":\"\",\"duration\":\"\",\"delay\":\"\",\"preload\":\"\",\"desc_position\":\"\",\"desc_width\":\"\",\"desc_bottom\":\"\",\"desc_horizontal\":\"\",\"left_arrow\":\"\",\"right_arrow\":\"\",\"play_button\":\"\",\"pause_button\":\"\",\"arrows_top\":\"\",\"arrows_horizontal\":\"\",\"custom_nav_pos\":\"\",\"custom_nav_align\":\"\",\"loader_position\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),(10007,'plg_content_djmediatools','plugin','djmediatools','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_djmediatools\",\"type\":\"plugin\",\"creationDate\":\"June 2012\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.1.0\",\"description\":\"PLG_CONTENT_DJMEDIATOOLS_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10008,'plg_editors-xtd_djmediatools','plugin','djmediatools','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_djmediatools\",\"type\":\"plugin\",\"creationDate\":\"June 2012\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.1.0\",\"description\":\"plg_editors-xtd_djmediatools\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10009,'plg_djmediatools_content','plugin','content','djmediatools',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_djmediatools_content\",\"type\":\"plugin\",\"creationDate\":\"September 2012\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.1.0\",\"description\":\"plg_djmediatools_content\",\"group\":\"\"}','{\"plg_content_type\":\"featured\",\"plg_content_maxlevel\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10010,'plg_djmediatools_folder','plugin','folder','djmediatools',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_djmediatools_folder\",\"type\":\"plugin\",\"creationDate\":\"September 2012\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.1.0\",\"description\":\"plg_djmediatools_folder\",\"group\":\"\"}','{\"plg_folder_path\":\"\",\"plg_folder_link\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10011,'plg_djmediatools_djcatalog2','plugin','djcatalog2','djmediatools',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_djmediatools_djcatalog2\",\"type\":\"plugin\",\"creationDate\":\"September 2012\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.1.0\",\"description\":\"plg_djmediatools_djcatalog2\",\"group\":\"\"}','{\"plg_catalog2_catid\":\"0\",\"plg_catalog2_featured_only\":\"0\",\"plg_catalog2_featured_first\":\"0\",\"plg_catalog2_orderby\":\"0\",\"plg_catalog2_orderdir\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10012,'plg_djmediatools_djclassifieds','plugin','djclassifieds','djmediatools',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_djmediatools_djclassifieds\",\"type\":\"plugin\",\"creationDate\":\"September 2012\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.1.0\",\"description\":\"plg_djmediatools_djclassifieds\",\"group\":\"\"}','{\"plg_classifieds_catid\":\"0\",\"plg_classifieds_items_ord\":\"0\",\"plg_classifieds_only_promoted\":\"0\",\"plg_classifieds_items_ids\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10013,'com_djmediatools','component','com_djmediatools','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_djmediatools\",\"type\":\"component\",\"creationDate\":\"September 2012\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.1.1\",\"description\":\"DJ-MediaTools component\",\"group\":\"\"}','{\"show_cat_titles\":\"2\",\"cwidth\":\"200\",\"cheight\":\"200\",\"cresizing\":\"crop\",\"cquality\":\"80\",\"show_subcategories\":\"after\",\"layout\":\"_:slideshow\",\"slider_type\":\"left\",\"desc_effect\":\"fade\",\"sort_by\":\"1\",\"link_image\":\"1\",\"lightbox\":\"picbox\",\"image_width\":\"700\",\"image_height\":\"450\",\"resizing\":\"crop\",\"quality\":\"90\",\"thumb_width\":\"\",\"thumb_height\":\"\",\"visible_images\":\"3\",\"space_between_images\":\"1\",\"max_images\":\"50\",\"show_thumbs\":\"1\",\"tab_indicator\":\"2\",\"tab_width\":\"200\",\"tab_height\":\"50\",\"tab_position\":\"right\",\"show_title\":\"1\",\"show_desc\":\"1\",\"show_readmore\":\"0\",\"readmore_text\":\"\",\"link_title\":\"1\",\"link_desc\":\"0\",\"limit_desc\":\"\",\"autoplay\":\"1\",\"pause_autoplay\":\"1\",\"show_buttons\":\"2\",\"show_arrows\":\"2\",\"show_custom_nav\":\"1\",\"effect\":\"Expo\",\"effect_type\":\"0\",\"duration\":\"\",\"delay\":\"\",\"preload\":\"\",\"desc_position\":\"over\",\"desc_width\":\"\",\"desc_bottom\":\"0\",\"desc_horizontal\":\"0\",\"left_arrow\":\"\",\"right_arrow\":\"\",\"play_button\":\"\",\"pause_button\":\"\",\"arrows_top\":\"50\",\"arrows_horizontal\":\"10\",\"custom_nav_pos\":\"below\",\"custom_nav_align\":\"center\",\"loader_position\":\"tl\"}','','',0,'0000-00-00 00:00:00',0,0),(10014,'dj-mediatools','package','pkg_dj-mediatools','',0,1,1,0,'{\"legacy\":false,\"name\":\"DJ-MediaTools Package\",\"type\":\"package\",\"creationDate\":\"November 2012\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.1.1\",\"description\":\"\\n\\t\\t<style> #right-text {font-family:Arial, Helvetica, sans-serif;\\tfont-size:11px;\\t} #right-text a:link, #right-text a:visited {color:#4991c1;font-weight:bold; font-size: 13px;} #right-text a:hover {text-decoration:underline;}\\t#right-text h2 {color:#fa9539;text-transform:uppercase;\\tfont-size:16px;\\tpadding:0;\\tmargin:2px 0;}\\t#right-text p {padding:0;margin:4px 0;}\\t#left-logo {float:left;width:270px;height:120px;display:block;} #left-logo img {margin: 40px 20px;} #right-text {float:left;width:400px;}<\\/style>\\n\\t\\n\\t\\t<div id=\\\"left-logo\\\">\\n\\t\\t\\t<a target=\\\"_blank\\\" href=\\\"http:\\/\\/dj-extensions.com\\\"><img src=\\\"http:\\/\\/new.dj-extensions.com\\/templates\\/dj-extensions\\/images\\/logo.png\\\" alt=\\\"DJ-Extensions.com\\\" \\/><\\/a>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\\t<div id=\\\"right-text\\\">\\n\\t\\t\\t<h2>Thank you for installing DJ-MediaTools!<\\/h2>\\n\\t\\t\\t<p>The DJ-MediaTools extension allows you to display albums containing custom items or any different content from other 3rd party extensions on different layouts including gallery grid, slideshow based on our new script or slider based on DJ-ImageSlider and more up to 7 different layouts.<\\/p>\\n\\t\\t\\t<p>If you want to learn how to use DJ-MediaTools please read <a target=\\\"_blank\\\" href=\\\"http:\\/\\/dj-extensions.com\\/documentation\\\">Documentation<\\/a> and search our <a target=\\\"_blank\\\" href=\\\"http:\\/\\/dj-extensions.com\\/forum\\\">Support Forum<\\/a><br \\/><br \\/>Check out our other extensions at <a target=\\\"_blank\\\" href=\\\"http:\\/\\/dj-extensions.com\\\">DJ-Extensions.com<\\/a><\\/p>\\n\\t\\t<\\/div>\\n\\t\\n\\t\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10022,'bevzatemplate','template','bevzatemplate','',0,1,1,0,'{\"legacy\":false,\"name\":\"bevzatemplate\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Bevza Sergey\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,-1),(10023,'bevzatest2','template','bevzatest2','',0,1,1,0,'{\"legacy\":false,\"name\":\"bevzatest2\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,-1),(10024,'bevzatest3','template','bevzatest3','',0,1,1,0,'{\"legacy\":false,\"name\":\"bevzatest3\",\"type\":\"template\",\"creationDate\":\"26 october 2013\",\"author\":\"Bevza Sergey\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"bevza_s@ukr.net\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,-1),(10026,'geekhub1','template','geekhub1','',0,1,1,0,'{\"legacy\":false,\"name\":\"geekhub1\",\"type\":\"template\",\"creationDate\":\"29 october 2013\",\"author\":\"bevza sergey\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,-1),(10028,'mod_helloworld','module','mod_helloworld','',0,1,0,0,'false','[]','','',0,'0000-00-00 00:00:00',0,0),(10029,'mod_homework4','module','mod_homework4','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_homework4\",\"type\":\"module\",\"creationDate\":\"November 2010\",\"author\":\"SomeBody\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"email@example.org\",\"authorUrl\":\"http:\\/\\/www.joomla-code.ru\",\"version\":\"0.0.1\",\"description\":\"MOD_HOMEWORK4_XML_DESCRIPTION\",\"group\":\"\"}','[]','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `diyk8_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_filters`
--

DROP TABLE IF EXISTS `diyk8_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_filters`
--

LOCK TABLES `diyk8_finder_filters` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_links`
--

DROP TABLE IF EXISTS `diyk8_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_links`
--

LOCK TABLES `diyk8_finder_links` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_links_terms0`
--

DROP TABLE IF EXISTS `diyk8_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_links_terms0`
--

LOCK TABLES `diyk8_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_links_terms1`
--

DROP TABLE IF EXISTS `diyk8_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_links_terms1`
--

LOCK TABLES `diyk8_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_links_terms2`
--

DROP TABLE IF EXISTS `diyk8_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_links_terms2`
--

LOCK TABLES `diyk8_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_links_terms3`
--

DROP TABLE IF EXISTS `diyk8_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_links_terms3`
--

LOCK TABLES `diyk8_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_links_terms4`
--

DROP TABLE IF EXISTS `diyk8_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_links_terms4`
--

LOCK TABLES `diyk8_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_links_terms5`
--

DROP TABLE IF EXISTS `diyk8_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_links_terms5`
--

LOCK TABLES `diyk8_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_links_terms6`
--

DROP TABLE IF EXISTS `diyk8_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_links_terms6`
--

LOCK TABLES `diyk8_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_links_terms7`
--

DROP TABLE IF EXISTS `diyk8_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_links_terms7`
--

LOCK TABLES `diyk8_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_links_terms8`
--

DROP TABLE IF EXISTS `diyk8_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_links_terms8`
--

LOCK TABLES `diyk8_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_links_terms9`
--

DROP TABLE IF EXISTS `diyk8_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_links_terms9`
--

LOCK TABLES `diyk8_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_links_termsa`
--

DROP TABLE IF EXISTS `diyk8_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_links_termsa`
--

LOCK TABLES `diyk8_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_links_termsb`
--

DROP TABLE IF EXISTS `diyk8_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_links_termsb`
--

LOCK TABLES `diyk8_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_links_termsc`
--

DROP TABLE IF EXISTS `diyk8_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_links_termsc`
--

LOCK TABLES `diyk8_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_links_termsd`
--

DROP TABLE IF EXISTS `diyk8_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_links_termsd`
--

LOCK TABLES `diyk8_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_links_termse`
--

DROP TABLE IF EXISTS `diyk8_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_links_termse`
--

LOCK TABLES `diyk8_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_links_termsf`
--

DROP TABLE IF EXISTS `diyk8_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_links_termsf`
--

LOCK TABLES `diyk8_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_taxonomy`
--

DROP TABLE IF EXISTS `diyk8_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_taxonomy`
--

LOCK TABLES `diyk8_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `diyk8_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `diyk8_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `diyk8_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_taxonomy_map`
--

LOCK TABLES `diyk8_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_terms`
--

DROP TABLE IF EXISTS `diyk8_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_terms`
--

LOCK TABLES `diyk8_finder_terms` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_terms_common`
--

DROP TABLE IF EXISTS `diyk8_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_terms_common`
--

LOCK TABLES `diyk8_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_terms_common` DISABLE KEYS */;
INSERT INTO `diyk8_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `diyk8_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_tokens`
--

DROP TABLE IF EXISTS `diyk8_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_tokens`
--

LOCK TABLES `diyk8_finder_tokens` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `diyk8_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_tokens_aggregate`
--

LOCK TABLES `diyk8_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_finder_types`
--

DROP TABLE IF EXISTS `diyk8_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_finder_types`
--

LOCK TABLES `diyk8_finder_types` WRITE;
/*!40000 ALTER TABLE `diyk8_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_languages`
--

DROP TABLE IF EXISTS `diyk8_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_ordering` (`ordering`),
  KEY `idx_access` (`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_languages`
--

LOCK TABLES `diyk8_languages` WRITE;
/*!40000 ALTER TABLE `diyk8_languages` DISABLE KEYS */;
INSERT INTO `diyk8_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,0,1);
/*!40000 ALTER TABLE `diyk8_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_menu`
--

DROP TABLE IF EXISTS `diyk8_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_menu`
--

LOCK TABLES `diyk8_menu` WRITE;
/*!40000 ALTER TABLE `diyk8_menu` DISABLE KEYS */;
INSERT INTO `diyk8_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,57,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',41,42,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',33,34,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',35,40,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',36,37,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',38,39,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',31,32,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',41,42,0,'*',1),(101,'menyu','Статьи по интересам.','home','','home','index.php?option=com_content&view=categories&id=0','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_base_description\":\"0\",\"categories_description\":\"\",\"maxLevelcat\":\"\",\"show_empty_categories_cat\":\"\",\"show_subcat_desc_cat\":\"\",\"show_cat_num_articles_cat\":\"\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"1\",\"num_links\":\"0\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"1\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"display_num\":\"10\",\"show_title\":\"1\",\"link_titles\":\"0\",\"show_intro\":\"1\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"1\",\"link_parent_category\":\"1\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',29,30,1,'*',0),(102,'menyu','Бухта Ласпи.','katalog-statej','','katalog-statej','index.php?option=com_content&view=article&id=5','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',45,46,0,'*',0),(103,'menyu','Туризм.','turizm','','turizm','index.php?option=com_content&view=category&layout=blog&id=10','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',43,44,0,'*',0),(104,'main','Календарь','kalendar','','kalendar','index.php?option=com_blog_calendar','component',0,1,1,10005,0,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',47,50,0,'',1),(105,'main','Редактировать CSS','redaktirovat-css','','kalendar/redaktirovat-css','index.php?option=com_blog_calendar&task=edit_css','component',0,104,2,10005,0,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',48,49,0,'',1),(106,'main','COM_DJMEDIATOOLS','com-djmediatools','','com-djmediatools','index.php?option=com_djmediatools','component',0,1,1,10013,0,0,'0000-00-00 00:00:00',0,1,'components/com_djmediatools/assets/icon-16-djmediatools.png',0,'',51,56,0,'',1),(107,'main','COM_DJMEDIATOOLS_SLIDES','com-djmediatools-slides','','com-djmediatools/com-djmediatools-slides','index.php?option=com_djmediatools&view=items','component',0,106,2,10013,0,0,'0000-00-00 00:00:00',0,1,'components/com_djmediatools/assets/icon-16-menu-slides.png',0,'',52,53,0,'',1),(108,'main','COM_DJMEDIATOOLS_CATEGORIES','com-djmediatools-categories','','com-djmediatools/com-djmediatools-categories','index.php?option=com_djmediatools&view=categories','component',0,106,2,10013,0,0,'0000-00-00 00:00:00',0,1,'class:category',0,'',54,55,0,'',1);
/*!40000 ALTER TABLE `diyk8_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_menu_types`
--

DROP TABLE IF EXISTS `diyk8_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_menu_types`
--

LOCK TABLES `diyk8_menu_types` WRITE;
/*!40000 ALTER TABLE `diyk8_menu_types` DISABLE KEYS */;
INSERT INTO `diyk8_menu_types` VALUES (1,'menyu','Меню.','The main menu for the site');
/*!40000 ALTER TABLE `diyk8_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_messages`
--

DROP TABLE IF EXISTS `diyk8_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_messages`
--

LOCK TABLES `diyk8_messages` WRITE;
/*!40000 ALTER TABLE `diyk8_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_messages_cfg`
--

DROP TABLE IF EXISTS `diyk8_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_messages_cfg`
--

LOCK TABLES `diyk8_messages_cfg` WRITE;
/*!40000 ALTER TABLE `diyk8_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_modules`
--

DROP TABLE IF EXISTS `diyk8_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_modules`
--

LOCK TABLES `diyk8_modules` WRITE;
/*!40000 ALTER TABLE `diyk8_modules` DISABLE KEYS */;
INSERT INTO `diyk8_modules` VALUES (1,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"menyu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,'Баннер туризм.','','',1,'position-5',0,'0000-00-00 00:00:00','2013-10-17 20:09:59','2013-11-30 20:10:01',1,'mod_banners',1,0,'{\"target\":\"1\",\"count\":\"5\",\"cid\":\"0\",\"catid\":[\"11\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\\u0411\\u043e\\u043b\\u0435\\u0435 \\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u043e \\u043e \\u0442\\u0443\\u0440\\u0438\\u0437\\u043c\\u0435.\",\"footer_text\":\"\\u043d\\u0430\\u0436\\u043c\\u0438 \\u0437\\u0434\\u0435\\u0441\\u044c.\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(88,'Баннер ласпи.','','',2,'position-3',0,'0000-00-00 00:00:00','2013-10-17 20:14:57','2013-11-30 20:15:00',1,'mod_banners',1,0,'{\"target\":\"1\",\"count\":\"5\",\"cid\":\"0\",\"catid\":[\"12\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\\u0411\\u043e\\u043b\\u0435\\u0435 \\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u043e \\u043e \\u041b\\u0430\\u0441\\u043f\\u0438.\",\"footer_text\":\"\\u043d\\u0430\\u0436\\u043c\\u0438 \\u0437\\u0434\\u0435\\u0441\\u044c.\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(89,'Улыбнитесь.','','',1,'position-3',0,'0000-00-00 00:00:00','2013-10-17 20:26:16','2013-11-30 20:26:18',1,'mod_random_image',1,1,'{\"type\":\"jpg\",\"folder\":\"\\/var\\/www\\/joomla\\/images\\/smex\",\"link\":\"\",\"width\":\"225\",\"height\":\"225\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),(90,'Программирование','','',1,'position-14',0,'0000-00-00 00:00:00','2013-10-18 17:24:33','2013-12-31 17:24:36',0,'mod_wrapper',1,1,'{\"url\":\"http:\\/\\/geekhub.ck.ua\\/\",\"add\":\"1\",\"scrolling\":\"auto\",\"width\":\"98%\",\"height\":\"300\",\"height_auto\":\"1\",\"frameborder\":\"1\",\"target\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(91,'Календарь','','',1,'position-6',0,'0000-00-00 00:00:00','2013-10-18 18:17:58','2014-02-20 18:18:00',1,'mod_blog_calendar',1,1,'{\"show_what\":\"0\",\"show_list_years\":\"1\",\"show_list_months\":\"1\",\"show_list_articles\":\"1\",\"show_list_sublevels\":\"1\",\"cal_start_date\":\"\",\"cal_start_day\":\"1\",\"cal_length_days\":\"3\",\"use_article_date\":\"yes\",\"associatedItemid\":\"\",\"cbintegration\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"moduleclass_sfx\":\"\"}',0,'*'),(92,'FOOTER','','',0,'position-10',0,'0000-00-00 00:00:00','2013-10-18 18:28:17','2013-12-20 18:28:19',1,'mod_footer',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(93,'DJ-MediaTools Album','','',1,'position-4',0,'0000-00-00 00:00:00','2013-10-18 18:40:08','2014-02-14 18:40:10',1,'mod_djmediatools',1,1,'{\"catid\":\"1\",\"layout\":\"_:slideshow\",\"slider_type\":\"\",\"desc_effect\":\"\",\"sort_by\":\"\",\"link_image\":\"\",\"lightbox\":\"picbox\",\"image_width\":\"200\",\"image_height\":\"200\",\"resizing\":\"\",\"thumb_width\":\"200\",\"thumb_height\":\"200\",\"visible_images\":\"\",\"space_between_images\":\"\",\"max_images\":\"\",\"show_thumbs\":\"\",\"tab_indicator\":\"\",\"tab_width\":\"\",\"tab_height\":\"\",\"tab_position\":\"\",\"show_title\":\"\",\"show_desc\":\"\",\"show_readmore\":\"\",\"readmore_text\":\"\",\"link_title\":\"\",\"link_desc\":\"\",\"limit_desc\":\"\",\"autoplay\":\"\",\"pause_autoplay\":\"\",\"show_buttons\":\"\",\"show_arrows\":\"\",\"show_custom_nav\":\"\",\"effect\":\"\",\"effect_type\":\"\",\"duration\":\"\",\"delay\":\"\",\"preload\":\"\",\"desc_position\":\"over\",\"desc_width\":\"\",\"desc_bottom\":\"\",\"desc_horizontal\":\"\",\"left_arrow\":\"images\\/sampledata\\/parks\\/landscape\\/120px_pinnacles_western_australia.jpg\",\"right_arrow\":\"images\\/sampledata\\/parks\\/landscape\\/120px_rainforest_bluemountainsnsw.jpg\",\"play_button\":\"images\\/sampledata\\/parks\\/landscape\\/180px_ormiston_pound.jpg\",\"pause_button\":\"images\\/sampledata\\/parks\\/landscape\\/250px_cradle_mountain_seen_from_barn_bluff.jpg\",\"arrows_top\":\"\",\"arrows_horizontal\":\"\",\"custom_nav_pos\":\"\",\"custom_nav_align\":\"\",\"loader_position\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(96,'homework4','','',1,'position-5',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_homework4',1,1,'{\"text\":\"\",\"layout\":\"_:default\"}',0,'*'),(97,'всплывающее окно','','<p>Привет, как дела?</p>',1,'pop_up',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*');
/*!40000 ALTER TABLE `diyk8_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_modules_menu`
--

DROP TABLE IF EXISTS `diyk8_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_modules_menu`
--

LOCK TABLES `diyk8_modules_menu` WRITE;
/*!40000 ALTER TABLE `diyk8_modules_menu` DISABLE KEYS */;
INSERT INTO `diyk8_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(87,103),(88,102),(89,0),(90,0),(91,0),(92,0),(93,0),(96,0),(97,101);
/*!40000 ALTER TABLE `diyk8_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_newsfeeds`
--

DROP TABLE IF EXISTS `diyk8_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_newsfeeds`
--

LOCK TABLES `diyk8_newsfeeds` WRITE;
/*!40000 ALTER TABLE `diyk8_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_overrider`
--

DROP TABLE IF EXISTS `diyk8_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_overrider`
--

LOCK TABLES `diyk8_overrider` WRITE;
/*!40000 ALTER TABLE `diyk8_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_redirect_links`
--

DROP TABLE IF EXISTS `diyk8_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_redirect_links`
--

LOCK TABLES `diyk8_redirect_links` WRITE;
/*!40000 ALTER TABLE `diyk8_redirect_links` DISABLE KEYS */;
INSERT INTO `diyk8_redirect_links` VALUES (1,'http://127.0.0.1/joomla/index.php/turizm','http://ekstrimtur.com/','','Более подробно о туризме.',0,-2,'2013-10-18 16:46:02','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `diyk8_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_schemas`
--

DROP TABLE IF EXISTS `diyk8_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_schemas`
--

LOCK TABLES `diyk8_schemas` WRITE;
/*!40000 ALTER TABLE `diyk8_schemas` DISABLE KEYS */;
INSERT INTO `diyk8_schemas` VALUES (700,'2.5.14'),(10013,'1.0');
/*!40000 ALTER TABLE `diyk8_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_session`
--

DROP TABLE IF EXISTS `diyk8_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_session`
--

LOCK TABLES `diyk8_session` WRITE;
/*!40000 ALTER TABLE `diyk8_session` DISABLE KEYS */;
INSERT INTO `diyk8_session` VALUES ('3a20317984b26425bf55ffc85d3e7988',0,1,'1384282028','__default|a:7:{s:22:\"session.client.browser\";s:103:\"Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.114 Safari/537.36\";s:15:\"session.counter\";i:2;s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";N;s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:19:\"session.timer.start\";i:1384282028;s:18:\"session.timer.last\";i:1384282028;s:17:\"session.timer.now\";i:1384282028;}',0,'',''),('h3a6hbsr724ar6tqkuounj5614',1,0,'1384273080','__default|a:8:{s:15:\"session.counter\";i:3;s:19:\"session.timer.start\";i:1384273076;s:18:\"session.timer.last\";i:1384273079;s:17:\"session.timer.now\";i:1384273079;s:22:\"session.client.browser\";s:103:\"Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.114 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":2:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:13:\"com_installer\";O:8:\"stdClass\":2:{s:7:\"message\";s:0:\"\";s:17:\"extension_message\";s:0:\"\";}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:1;s:2:\"id\";s:2:\"42\";s:4:\"name\";s:10:\"Super User\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:15:\"bevza_s@ukr.net\";s:8:\"password\";s:65:\"09ff532ffe3c53504203f415bd2cccfb:qdXkYwF2N7gGS4uawNDeeDwVhJmpQ6PO\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"deprecated\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-10-12 15:08:52\";s:13:\"lastvisitDate\";s:19:\"2013-11-12 15:42:51\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:92:\"{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":6:{s:11:\"admin_style\";s:0:\"\";s:14:\"admin_language\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"editor\";s:0:\"\";s:8:\"helpsite\";s:0:\"\";s:8:\"timezone\";s:0:\"\";}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\0*\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"1fd8223797d0e199e8386b2aefd41c35\";}',42,'admin','');
/*!40000 ALTER TABLE `diyk8_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_template_styles`
--

DROP TABLE IF EXISTS `diyk8_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_template_styles`
--

LOCK TABLES `diyk8_template_styles` WRITE;
/*!40000 ALTER TABLE `diyk8_template_styles` DISABLE KEYS */;
INSERT INTO `diyk8_template_styles` VALUES (2,'bluestork',1,'1','Bluestork - Default','{\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}'),(3,'atomic',0,'0','Atomic - Default','{}'),(4,'beez_20',0,'1','Beez2 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"1\",\"colourChoice\":\"highcontrast\",\"boldText\":\"0\"}'),(6,'beez5',0,'0','Beez5 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"html5\":\"0\"}'),(7,'GeekBevza',0,'0','GeekBevza - По умолчанию','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}'),(8,'geek_teleport',0,'0','beez_20 - По умолчанию','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}');
/*!40000 ALTER TABLE `diyk8_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_update_categories`
--

DROP TABLE IF EXISTS `diyk8_update_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_update_categories`
--

LOCK TABLES `diyk8_update_categories` WRITE;
/*!40000 ALTER TABLE `diyk8_update_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_update_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_update_sites`
--

DROP TABLE IF EXISTS `diyk8_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_update_sites`
--

LOCK TABLES `diyk8_update_sites` WRITE;
/*!40000 ALTER TABLE `diyk8_update_sites` DISABLE KEYS */;
INSERT INTO `diyk8_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,1384270975),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1384270975),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist.xml',1,1384270977),(4,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist.xml',1,1384270977),(5,'BlogCalendar Updates','extension','/',0,1382197142);
/*!40000 ALTER TABLE `diyk8_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_update_sites_extensions`
--

DROP TABLE IF EXISTS `diyk8_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_update_sites_extensions`
--

LOCK TABLES `diyk8_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `diyk8_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `diyk8_update_sites_extensions` VALUES (1,700),(2,700),(3,10003),(4,600),(5,10005);
/*!40000 ALTER TABLE `diyk8_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_updates`
--

DROP TABLE IF EXISTS `diyk8_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_updates`
--

LOCK TABLES `diyk8_updates` WRITE;
/*!40000 ALTER TABLE `diyk8_updates` DISABLE KEYS */;
INSERT INTO `diyk8_updates` VALUES (1,3,0,0,'Armenian','','pkg_hy-AM','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/hy-AM_details.xml',''),(2,3,0,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/id-ID_details.xml',''),(3,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(4,3,0,0,'Khmer','','pkg_km-KH','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/km-KH_details.xml',''),(5,3,0,0,'Swedish','','pkg_sv-SE','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sv-SE_details.xml',''),(6,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(7,3,0,0,'Bulgarian','','pkg_bg-BG','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/bg-BG_details.xml',''),(8,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(9,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(10,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(11,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(12,3,0,0,'Turkish','','pkg_tr-TR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/tr-TR_details.xml',''),(13,3,0,0,'Ukrainian','','pkg_uk-UA','package','',0,'2.5.13.11','','http://update.joomla.org/language/details/uk-UA_details.xml',''),(14,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.2','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(15,3,0,0,'Belarusian','','pkg_be-BY','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/be-BY_details.xml',''),(16,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(17,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(18,3,0,0,'Romanian','','pkg_ro-RO','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ro-RO_details.xml',''),(19,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(20,3,0,0,'Macedonian','','pkg_mk-MK','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/mk-MK_details.xml',''),(21,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(22,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(23,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(24,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(25,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(26,3,0,0,'English AU','','pkg_en-AU','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/en-AU_details.xml',''),(27,3,0,0,'English US','','pkg_en-US','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/en-US_details.xml',''),(28,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(29,3,0,0,'Lithuanian','','pkg_lt-LT','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/lt-LT_details.xml',''),(30,3,0,0,'Albanian','','pkg_sq-AL','package','',0,'2.5.1.5','','http://update.joomla.org/language/details/sq-AL_details.xml',''),(31,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(32,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(33,3,0,0,'Galician','','pkg_gl-ES','package','',0,'2.5.7.4','','http://update.joomla.org/language/details/gl-ES_details.xml',''),(34,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(35,3,0,0,'Syriac','','pkg_sy-IQ','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sy-IQ_details.xml',''),(36,3,0,0,'Portuguese','','pkg_pt-PT','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/pt-PT_details.xml',''),(38,3,0,0,'Hebrew','','pkg_he-IL','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/he-IL_details.xml',''),(39,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(40,3,0,0,'Laotian','','pkg_lo-LA','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/lo-LA_details.xml',''),(41,3,0,0,'Afrikaans','','pkg_af-ZA','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/af-ZA_details.xml',''),(42,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(43,3,0,0,'Greek','','pkg_el-GR','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/el-GR_details.xml',''),(44,3,0,0,'Esperanto','','pkg_eo-XX','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/eo-XX_details.xml',''),(45,3,0,0,'Finnish','','pkg_fi-FI','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/fi-FI_details.xml',''),(46,3,0,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/pt-BR_details.xml',''),(47,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(48,3,0,0,'Vietnamese','','pkg_vi-VN','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/vi-VN_details.xml',''),(49,3,0,0,'Kurdish Sorani','','pkg_ckb-IQ','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/ckb-IQ_details.xml',''),(50,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(51,3,0,0,'Croatian','','pkg_hr-HR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/hr-HR_details.xml',''),(52,3,0,0,'Azeri','','pkg_az-AZ','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/az-AZ_details.xml',''),(53,3,0,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/nn-NO_details.xml',''),(54,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.14.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(55,3,0,0,'Scottish Gaelic','','pkg_gd-GB','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/gd-GB_details.xml',''),(56,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(57,3,0,0,'Basque','','pkg_eu-ES','package','',0,'1.7.0.1','','http://update.joomla.org/language/details/eu-ES_details.xml',''),(58,3,0,0,'Uyghur','','pkg_ug-CN','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/ug-CN_details.xml',''),(59,3,0,0,'Korean','','pkg_ko-KR','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ko-KR_details.xml',''),(60,3,0,0,'Hindi','','pkg_hi-IN','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/hi-IN_details.xml',''),(61,3,0,0,'Welsh','','pkg_cy-GB','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/cy-GB_details.xml',''),(62,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(63,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(64,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(65,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(66,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(67,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(68,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(69,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(70,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(71,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(72,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(73,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(74,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(75,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(76,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(77,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(78,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(79,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(80,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(81,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(82,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(83,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(84,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(85,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(86,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(87,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(88,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(89,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(90,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(91,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(92,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(93,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(94,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(95,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(96,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(97,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(98,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(99,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(100,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(101,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(102,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(103,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(104,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(105,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(106,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(107,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(108,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(109,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(110,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(111,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(112,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(113,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(114,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(115,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(116,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(117,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(118,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(119,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(120,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(121,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(122,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(123,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(124,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(125,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(126,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(127,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(128,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(129,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(130,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(131,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(132,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(133,1,700,0,'Joomla','','joomla','file','',0,'2.5.16','','http://update.joomla.org/core/extension.xml',''),(134,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(135,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(136,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(137,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(138,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(139,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(140,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(141,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(142,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(143,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(144,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(145,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.16.2','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(146,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(147,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(148,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(149,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(150,4,0,0,'French','','pkg_fr-FR','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(151,4,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(152,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(153,4,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(154,4,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(155,4,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(156,4,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(157,4,0,0,'German','','pkg_de-DE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(158,4,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(159,4,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(160,4,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.16.2','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(161,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(162,4,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(163,4,0,0,'French','','pkg_fr-FR','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(164,4,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(165,4,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(166,4,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(167,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(168,4,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(169,4,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(170,4,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(171,4,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(172,4,0,0,'German','','pkg_de-DE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(173,4,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(174,4,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(175,4,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.16.2','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(176,4,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(177,4,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(178,4,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(179,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(180,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(181,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(182,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(183,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(184,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(185,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(186,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(187,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(188,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(189,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(190,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.16.2','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(191,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(192,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(193,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(194,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(195,4,0,0,'French','','pkg_fr-FR','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(196,4,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(197,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(198,4,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(199,4,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(200,4,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(201,4,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(202,4,0,0,'German','','pkg_de-DE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(203,4,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(204,4,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(205,4,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.16.2','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(206,4,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(207,4,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(208,4,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(209,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(210,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(211,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(212,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(213,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(214,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(215,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(216,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(217,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(218,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(219,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(220,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.16.2','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(221,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(222,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(223,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(224,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(225,4,0,0,'French','','pkg_fr-FR','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(226,4,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(227,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(228,4,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(229,4,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(230,4,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(231,4,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(232,4,0,0,'German','','pkg_de-DE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(233,4,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(234,4,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(235,4,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.16.2','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(236,4,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(237,4,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(238,4,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(239,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(240,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(241,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(242,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(243,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(244,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(245,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(246,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(247,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(248,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(249,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(250,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.16.2','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(251,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(252,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(253,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(254,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(255,4,0,0,'French','','pkg_fr-FR','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(256,4,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(257,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(258,4,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(259,4,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(260,4,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(261,4,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(262,4,0,0,'German','','pkg_de-DE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(263,4,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(264,4,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(265,4,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.16.2','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(266,4,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(267,4,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(268,4,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(269,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(270,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(271,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(272,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(273,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(274,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(275,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(276,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(277,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(278,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(279,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(280,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.16.2','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(281,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(282,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(283,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(284,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(285,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(286,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(287,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(288,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(289,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(290,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(291,4,0,0,'French','','pkg_fr-FR','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(292,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(293,4,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(294,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(295,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(296,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(297,4,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(298,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(299,4,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(300,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(301,4,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(302,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.16.2','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(303,4,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(304,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(305,4,0,0,'German','','pkg_de-DE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(306,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(307,4,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(308,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(309,4,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(310,4,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.16.2','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(311,4,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(312,4,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(313,4,0,0,'French','','pkg_fr-FR','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(314,4,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(315,4,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(316,4,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(317,4,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(318,4,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(319,4,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(320,4,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(321,4,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(322,4,0,0,'German','','pkg_de-DE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(323,4,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(324,4,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(325,4,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.16.2','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(326,4,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(327,4,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(328,4,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');
/*!40000 ALTER TABLE `diyk8_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_user_notes`
--

DROP TABLE IF EXISTS `diyk8_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_user_notes`
--

LOCK TABLES `diyk8_user_notes` WRITE;
/*!40000 ALTER TABLE `diyk8_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_user_profiles`
--

DROP TABLE IF EXISTS `diyk8_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_user_profiles`
--

LOCK TABLES `diyk8_user_profiles` WRITE;
/*!40000 ALTER TABLE `diyk8_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_user_usergroup_map`
--

DROP TABLE IF EXISTS `diyk8_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_user_usergroup_map`
--

LOCK TABLES `diyk8_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `diyk8_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `diyk8_user_usergroup_map` VALUES (42,8);
/*!40000 ALTER TABLE `diyk8_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_usergroups`
--

DROP TABLE IF EXISTS `diyk8_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_usergroups`
--

LOCK TABLES `diyk8_usergroups` WRITE;
/*!40000 ALTER TABLE `diyk8_usergroups` DISABLE KEYS */;
INSERT INTO `diyk8_usergroups` VALUES (1,0,1,20,'Public'),(2,1,6,17,'Registered'),(3,2,7,14,'Author'),(4,3,8,11,'Editor'),(5,4,9,10,'Publisher'),(6,1,2,5,'Manager'),(7,6,3,4,'Administrator'),(8,1,18,19,'Super Users');
/*!40000 ALTER TABLE `diyk8_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_users`
--

DROP TABLE IF EXISTS `diyk8_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_users`
--

LOCK TABLES `diyk8_users` WRITE;
/*!40000 ALTER TABLE `diyk8_users` DISABLE KEYS */;
INSERT INTO `diyk8_users` VALUES (42,'Super User','admin','bevza_s@ukr.net','09ff532ffe3c53504203f415bd2cccfb:qdXkYwF2N7gGS4uawNDeeDwVhJmpQ6PO','deprecated',0,1,'2013-10-12 15:08:52','2013-11-12 16:17:59','0','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `diyk8_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_viewlevels`
--

DROP TABLE IF EXISTS `diyk8_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_viewlevels`
--

LOCK TABLES `diyk8_viewlevels` WRITE;
/*!40000 ALTER TABLE `diyk8_viewlevels` DISABLE KEYS */;
INSERT INTO `diyk8_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]');
/*!40000 ALTER TABLE `diyk8_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diyk8_weblinks`
--

DROP TABLE IF EXISTS `diyk8_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diyk8_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diyk8_weblinks`
--

LOCK TABLES `diyk8_weblinks` WRITE;
/*!40000 ALTER TABLE `diyk8_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `diyk8_weblinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-11-12 20:57:31
