-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: fazparaiso_j25
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Current Database: `fazparaiso_j25`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fazparaiso_j25` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fazparaiso_j25`;

--
-- Table structure for table `par_assets`
--

DROP TABLE IF EXISTS `par_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_assets` (
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
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_assets`
--

LOCK TABLES `par_assets` WRITE;
/*!40000 ALTER TABLE `par_assets` DISABLE KEYS */;
INSERT INTO `par_assets` VALUES (1,0,1,466,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":[],\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,66,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,67,68,1,'com_cpanel','com_cpanel','{}'),(10,1,69,70,1,'com_installer','com_installer','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1},\"core.delete\":[],\"core.edit.state\":[]}'),(11,1,71,72,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,73,74,1,'com_login','com_login','{}'),(13,1,75,76,1,'com_mailto','com_mailto','{}'),(14,1,77,78,1,'com_massmail','com_massmail','{}'),(15,1,79,80,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,81,82,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,83,84,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,85,86,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,87,90,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,91,92,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,93,94,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,95,96,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,97,98,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,99,100,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.own\":{\"6\":1},\"core.edit.state\":[]}'),(25,1,101,104,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,105,106,1,'com_wrapper','com_wrapper','{}'),(27,8,18,25,2,'com_content.category.2','Fazenda Paraíso - Topo','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,88,89,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,102,103,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,27,19,20,3,'com_content.article.1','Fazendas Paraíso - Seja bem vindo!','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(35,27,21,22,3,'com_content.article.3','Fazendas Paraíso - Contato','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(36,8,26,37,2,'com_content.category.7','Fazenda Paraíso I - Marajó','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(37,8,38,49,2,'com_content.category.8','Fazenda Paraíso II - Abaetetuba','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(38,36,27,28,3,'com_content.article.4','Fazenda Paraíso I - Sobre a fazenda','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(40,1,460,461,1,'com_phocagallery','com_phocagallery','{\"core.admin\":[],\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,27,23,24,3,'com_content.article.2','Fazendas Paraíso - Parceiros','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,36,29,30,3,'com_content.article.5','Fazenda Paraíso I - Búfalos','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(43,36,31,32,3,'com_content.article.6','Fazenda Paraíso I - Premiações','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,36,35,36,3,'com_content.article.7','Fazenda Paraíso I - Produtos','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,36,33,34,3,'com_content.article.8','Fazenda Paraíso I - Tecnologias','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,37,39,40,3,'com_content.article.9','Fazenda Paraíso II - Sobre a fazenda','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,37,41,42,3,'com_content.article.10','Fazenda Paraíso II - Búfalos','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,37,43,44,3,'com_content.article.11','Fazenda Paraíso II - Premiações','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,37,45,46,3,'com_content.article.12','Fazenda Paraíso II - Produtos','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(50,37,47,48,3,'com_content.article.13','Fazenda Paraíso II - Tecnologias','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(54,1,462,463,1,'com_tmp','com_tmp','{}'),(61,8,62,65,2,'com_content.category.10','Fazenda Paraíso - Artigos','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(55,8,50,61,2,'com_content.category.9','Fazenda Paraíso III - Salvaterra','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(56,55,51,52,3,'com_content.article.14','Fazenda Paraíso III - Sobre a fazenda','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(57,55,53,54,3,'com_content.article.15','Fazenda Paraíso III - Búfalos','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(58,55,55,56,3,'com_content.article.16','Fazenda Paraíso III - Premiações','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(59,55,57,58,3,'com_content.article.17','Fazenda Paraíso III - Produtos','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(60,55,59,60,3,'com_content.article.18','Fazenda Paraíso III - Tecnologias','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(62,61,63,64,3,'com_content.article.19','Dedicatória à Joana Rocha','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(63,1,464,465,1,'com_niceajaxpoll','com_niceajaxpoll','{}');
/*!40000 ALTER TABLE `par_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_associations`
--

DROP TABLE IF EXISTS `par_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_associations`
--

LOCK TABLES `par_associations` WRITE;
/*!40000 ALTER TABLE `par_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_banner_clients`
--

DROP TABLE IF EXISTS `par_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_banner_clients` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_banner_clients`
--

LOCK TABLES `par_banner_clients` WRITE;
/*!40000 ALTER TABLE `par_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_banner_tracks`
--

DROP TABLE IF EXISTS `par_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_banner_tracks`
--

LOCK TABLES `par_banner_tracks` WRITE;
/*!40000 ALTER TABLE `par_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_banners`
--

DROP TABLE IF EXISTS `par_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_banners` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_banners`
--

LOCK TABLES `par_banners` WRITE;
/*!40000 ALTER TABLE `par_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_categories`
--

DROP TABLE IF EXISTS `par_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_categories` (
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
  `description` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_categories`
--

LOCK TABLES `par_categories` WRITE;
/*!40000 ALTER TABLE `par_categories` DISABLE KEYS */;
INSERT INTO `par_categories` VALUES (1,0,0,0,19,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*'),(2,27,1,1,2,1,'topo','com_content','Fazenda Paraíso - Topo','topo','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',1,'2010-06-28 13:26:37',1,'2011-07-27 19:25:53',0,'*'),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',1,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*'),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',1,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*'),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',1,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*'),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',1,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(7,36,1,11,12,1,'marajo','com_content','Fazenda Paraíso I - Marajó','marajo','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',1,'2011-07-27 19:28:42',0,'0000-00-00 00:00:00',0,'*'),(8,37,1,13,14,1,'abaetetuba','com_content','Fazenda Paraíso II - Abaetetuba','abaetetuba','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',1,'2011-07-27 19:28:55',0,'0000-00-00 00:00:00',0,'*'),(9,55,1,15,16,1,'salvaterra','com_content','Fazenda Paraíso III - Salvaterra','salvaterra','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',1,'2011-08-15 02:40:59',0,'0000-00-00 00:00:00',0,'*'),(10,61,1,17,18,1,'artigos','com_content','Fazenda Paraíso - Artigos','artigos','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',1,'2011-08-16 09:08:48',0,'0000-00-00 00:00:00',0,'*');
/*!40000 ALTER TABLE `par_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_contact_details`
--

DROP TABLE IF EXISTS `par_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_contact_details` (
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
  `access` int(10) unsigned DEFAULT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_contact_details`
--

LOCK TABLES `par_contact_details` WRITE;
/*!40000 ALTER TABLE `par_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_content`
--

DROP TABLE IF EXISTS `par_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_content` (
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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_content`
--

LOCK TABLES `par_content` WRITE;
/*!40000 ALTER TABLE `par_content` DISABLE KEYS */;
INSERT INTO `par_content` VALUES (1,32,'Fazendas Paraíso - Seja bem vindo!','seja-bem-vindo','','<p style=\"text-align: justify;\">As Fazendas Paraíso se caracterizam por uma exploração racional entre a bubalinocultura e a silvicultura. Na <a href=\"sobre-a-fazenda-marajo.html\" target=\"_self\">Paraíso I (Marajó)</a>, a fazenda é constituída de campos naturais, cuja preocupação dos proprietários foi garantir a permanência de água abundante durante o ano inteiro, de forma a proporcionar aos animais o conforto necessário, aliado a conservação das pequenas \"ilhas\" de mata, que permitem o refúgio no momento de maior incidência dos raios solares.<br /><br />A alimentação básica dos animais é constituída de capins naturais da região, acrescida de quicuio da Amazônia e de produção de capineiras.</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/abertura.jpg\" border=\"0\" alt=\"Manada de búfalos da Paraíso I\" /><br />Manada de búfalos da Paraíso I.</p>\r\n<p style=\"text-align: justify;\"> No que diz respeito a <a href=\"sobre-a-fazenda-abaetetuba.html\" target=\"_self\">Paraíso II (Abaetetuba)</a>, a exploração bubalina está bastante consorciada com a presença de áreas de matas virgens ao lado do cultivo de plantas frutíferas, entre as quais de coqueiros, cupuaçuzeiros, pupunheiras e mangueiras, totalizando mais de 10.000 árvores produtoras de frutas que proporcionam uma fonte de renda diferenciada para o sustento da Fazenda.<br /><br />A alimentação do rebanho é garantida por capinzais constituídos de piquetes de brachiarão, mombaça, quicuio da Amazônia, além de capineiras. Estamos fazendo uma experiência com o \"Limpo Grass\". Por fim, o rebanho inteiro é servido com sal mineral.<br /><br />Recentemente, as Fazendas Paraíso ganharam mais um reforço com a aquisição da nova propriedade, coincidentemente chamada de Paraíso, que era um retiro da Fazenda São Miguel, no Município de Salvaterra, na Ilha de Marajó, e agora denominada de <a href=\"sobre-a-fazenda-salvaterra.html\" target=\"_self\">Fazenda Paraíso III (Salvaterra)</a>.</p>','',1,0,0,2,'2011-07-19 01:58:51',1,'','2011-12-29 21:27:21',1,1,'2016-06-10 11:54:48','2011-07-19 01:58:51','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',13,0,1,'','',1,6564,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,41,'Fazendas Paraíso - Parceiros','parceiros','','<p style=\"text-align: justify;\"><a href=\"#\" target=\"_self\" title=\"APCB\"><strong>APCB</strong></a> - Associação Paraense de Criadores de Búfalos.<br /><br /><a href=\"http://www.embrapa.br/\" target=\"_blank\" title=\"EMBRAPA\"><strong>EMBRAPA</strong></a> - Empresa Brasileira de Pesquisa Agropecuária:<br />Projeto de Melhoramento Genético em Búfalos no Estado do Pará.<br />Projeto de Avaliação de Pastagens na Ilha do Marajó.<br /><br /><a href=\"http://www.ufra.edu.br/\" target=\"_blank\" title=\"UFRA\"><strong>UFRA</strong></a> - Universidade Federal Rural da Amazônia:<br />Projeto de Ordenha Mecânica em Búfalas sem Bezerros ao Pé.<br />Projeto de Melhoramento Genético em Búfalos no Estado do Pará.<br /><br /><a href=\"http://www.ufpa.br/\" target=\"_blank\" title=\"UFPA\"><strong>UFPA</strong></a> - Universidade Federal do Pará.<br /><br /><a href=\"http://www.ufpa.br/cebran/\" target=\"_blank\" title=\"CEBRAN\"><strong>CEBRAN</strong></a> - Central de Biotecnologia de Reprodução Animal.<br /><br /><a href=\"#\" target=\"_self\" title=\"CEDIVET\"><strong>CEDIVET</strong></a> (Campus de Castanhal) - Central de Diagnóstico Veterinário.</p>','',1,0,0,2,'2011-07-27 19:22:34',1,'','2011-12-29 21:26:57',1,1,'2016-06-10 11:57:15','2011-07-27 19:22:34','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',6,0,2,'','',1,606,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,35,'Fazendas Paraíso - Contato','contato','','<p style=\"text-align: justify;\"><strong>João Rocha – Sócio / Proprietário:</strong><br /><img src=\"images/celular.png\" border=\"0\" title=\"Celular\" width=\"16\" height=\"16\" /> Celular: (91) 99144-7930 e 98063-9145<br /><img src=\"images/email.png\" border=\"0\" title=\"E-mail\" width=\"16\" height=\"16\" /> E-mail: <a href=\"maito:joao@fazparaiso.com.br?subject=Contato\" title=\"Envie um e-mail para João Rocha\">joao@fazparaiso.com.br</a><br /><br /><strong>José Rocha </strong><strong>–</strong><strong> Sócio / Proprietário:</strong><br /><img src=\"images/celular.png\" border=\"0\" title=\"Celular\" width=\"16\" height=\"16\" /> Celular: (91) 99166-0037<br /><img src=\"images/email.png\" border=\"0\" title=\"E-mail\" width=\"16\" height=\"16\" /> E-mail: <a href=\"maito:jose@fazparaiso.com.br?subject=Contato\" title=\"Envie um e-mail para José Rocha\">jose@fazparaiso.com.br</a><br /><br /><strong>João Alfredo Rocha </strong><strong>–</strong><strong> Sócio / Proprietário:</strong><br /><img src=\"images/celular.png\" border=\"0\" title=\"Celular\" width=\"16\" height=\"16\" /> Celular: (91) 99166-0081<br /><img src=\"images/email.png\" border=\"0\" title=\"E-mail\" width=\"16\" height=\"16\" /> E-mail: <a href=\"#\">indisponível</a></p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/contato.jpg\" border=\"0\" title=\"João Alfredo, João Paulo e José, os proprietários das Fazendas\" /><br />João Alfredo, João e José Rocha, os proprietários das Fazendas.</p>','',1,0,0,2,'2011-07-28 03:55:55',1,'','2016-06-09 18:05:15',1,0,'0000-00-00 00:00:00','2011-07-28 03:55:55','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',13,0,3,'','',1,719,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,38,'Fazenda Paraíso I - Sobre a fazenda','sobre-a-fazenda','','<p style=\"text-align: justify;\">Localizada na Ilha do Marajó, Distrito do Retiro Grande, integrante da \"Sesmaria dos Ferreiras\", foi uma grande e arrojada empreitada capitaneada por <strong>Joana Melo Castelo Branco Rocha</strong> e seus filhos <strong>José</strong> e <strong>João Alfredo</strong>. \"O amor à terra do seu Retiro Grande e o exemplo de como fazer gerações para dar continuidade ao seu trabalho\", conforme bem proclamou José Ribamar Felipe Marques em sua obra intitulada como \"Produção Animal na Ilha do Marajó\", fez com que a Paraíso I fosse alcançando degraus, de forma a chegar ao patamar em que se encontra, selecionando animais, procedendo registros, cuidando do controle sanitário, o que lhe proporcionou por exportar animais tanto para a Venezuela como para Líbano. Aos pioneiros se juntou um apaixonado e estudioso do assunto búfalo, <strong>João Paulo Rocha</strong>, filho de José, e hoje a mola mestra do empreendimento.<br /><br />A paixão pela pecuária tem origem em mais de 70 anos quando o patriarca da família, senhor <strong>Antonio Castelo Branco Rocha</strong>, resolveu procurar o Marajó com esse objetivo. Ali formou a Fazenda Santo Antônio, mais tarde fundou a Fazenda Santa Judith, ambas nas margens do Rio Ararí, e Município de Ponta de Pedras. Com a venda de tais propriedades à Família Maroja, resolveu o entusiasta piauiense, comprar as terras da \"Fazenda Madre de Deus\", igualmente localizada na margem do Rio Ararí, porém em lado oposto, em terras do Município de Cachoeira, denominado depois por Arariuna e posteriormente por Cachoeira do Ararí uma vez que o Rio Ararí é o limite natural entre os dois Municípios.</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/marajo.jpg\" border=\"0\" title=\"Vista da entrada da Fazenda Paraíso I (Marajó)\" style=\"display: block; margin-left: auto; margin-right: auto;\" />Vista da entrada da Fazenda Paraíso I (Marajó).</p>\r\n<p style=\"text-align: justify;\">Além da pecuária, o referido senhor exerceu, naquele Município, outras atividades no setor público sendo, inclusive, por três vezes intendente Municipal, ocasião em que teve oportunidade, de entre outras coisas, dotar Cachoeira do Ararí de luz elétrica gerada por grupo gerador de propulsão a diesel, sendo este o primeiro a vir dos Estados Unidos da América o que se deu com o restabelecimento da travessia marítima do Atlântico, após o término da 2ª Guerra Mundial.</p>\r\n<p style=\"text-align: justify;\"><br />Após um breve intervalo na atividade pecuária e em consequência do falecimento de Antônio Castelo Branco Rocha, em 1955 e de sua filha Ana Maria, resolveu a família sob o comando da matriarca, <strong>Joana Melo Castelo Branco Rocha</strong>, funcionária pública aposentada, e contando com a participação efetiva de seus filhos <strong>José Melo da Rocha</strong> e<strong> João Alfredo de Melo Rocha</strong>, retornar ao Marajó, e adquirir a Fazenda Paraíso, localizada no Distrito do Retiro Grande, em Cachoeira do Ararí, no ano de 1973 (04/09/1973) e daí para frente dedicar-se <strong>única</strong> e <strong>exclusivamente</strong> à criação de búfalos.</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/proprietarios.jpg\" border=\"0\" title=\"Em pé, José, João Paulo e João Alfredo, sentada, a matriarca Joana Rocha\" style=\"display: block; margin-left: auto; margin-right: auto;\" />Em pé, José, João Paulo e João Alfredo, sentada, a matriarca Joana Rocha.</p>\r\n<p style=\"text-align: justify;\">Ao longo de 43 (quarenta e três ) anos de trabalho voltados à recuperação de pastos, elaboração de cercas divisórias, melhoramento genético, controle de peso e de produção leiteira, contamos com apoio financeiro do BASA enquanto que a orientação técnica foi prestada pela EMBRAPA, FCAP (hoje UFRA), UFPA e CEBRAM, a cujas instituições temos sempre uma palavra de agradecimento. Além desses organismos oficiais, contamos com a eficiente colaboração de mestres e apaixonados pela bubalinocultura, como Diomedes Barboza, Marivaldo Figueiró, José Ribamar, Norton e tantos outros.<br /><br />A partir de 2006, José e João Alfredo, se tornaram titulares do empreendimento, ocasião em que a matriarca resolveu doar a propriedade aos mesmos. A administração da fazenda é feita com a presença permanente e eficaz de <strong>João Paulo Mota Melo da Rocha</strong> (filho de José), grande incentivador e apaixonado pela bubalinocultura.<br /><br />A Paraíso I possui uma área de 1.200 (hum mil e duzentos) hectares e atualmente, abriga cerca de 750 (setecentos e cinquenta) animais bubalinos das raças <strong>Murrah</strong> e <strong>Mediterrâneo</strong>. Tem sido a grande preocupação dos proprietários e administradores da fazenda, dedicados à criação da espécie, a melhoria genética do rebanho, por via do uso de inseminação artificial, monta controlada e aquisição de novos reprodutores, oriundos dos mais diversos criatórios do País, alimentação saudável de forma a apresentar animais que atendam ao binômio <strong>bife + leite</strong>.</p>','',1,0,0,7,'2011-08-02 03:00:12',1,'','2016-06-10 11:35:23',1,1,'2016-06-10 11:35:23','2011-08-02 03:00:12','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',10,0,1,'','',1,757,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(5,42,'Fazenda Paraíso I - Búfalos','bufalos','','<p style=\"text-align: justify;\">A reprodução na Fazenda Paraíso I se dá em percentual entre 63% e 75%, e na proporção de 50% entre machos e fêmeas. Após os 10 meses de idade, os machos são transladados para o Paraíso III, com o objetivo de se obter engorda e terminá-los para o abate. As fêmeas são incorporadas ao rebanho, substituindo os animais velhos, a fim de proporcionar cada vez mais uma genética melhor.</p>','',1,0,0,7,'2011-08-02 03:00:49',1,'','2016-06-10 11:14:48',1,1,'2016-06-10 11:16:09','2011-08-02 03:00:49','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,0,2,'','',1,630,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,43,'Fazenda Paraíso I - Premiações','premiacoes','','<p style=\"text-align: justify;\">A partir do ano de 2005, os proprietários das Fazendas resolveram a se fazer presente nas exposições Agropecuárias e nos leilões realizados. Em consequência dessa nova atividade, foram obtidos os seguintes resultados:</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/premiacao_2005.gif\" border=\"0\" title=\"Resultados obtidos na EXPOPARÁ no ano de 2005\" width=\"338\" height=\"203\" /><br />Resultados obtidos na EXPOPARÁ no ano de 2005.</p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: center;\"> <img src=\"images/paraiso/premiacao_2006.gif\" border=\"0\" title=\"Resultados obtidos na EXPOPARÁ no ano de 2006\" width=\"338\" height=\"163\" /><br />Resultados obtidos na EXPOPARÁ no ano de 2006.</p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/premiacao_2007.gif\" border=\"0\" title=\"Resultados obtidos na EXPOPARÁ no ano de 2007\" width=\"338\" height=\"283\" /><br />Resultados obtidos na EXPOPARÁ no ano de 2007.</p>\r\n<p style=\"text-align: justify;\"> Premiação do <strong>JRO-101 Crioulo da Paraíso</strong> ao ensejo da 39º EXPOPARÁ, ocasião em que foi escolhido como campeão da categoria \"Junior Menor\" (18 a 21 meses), disposto a seguir:</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/premiacao_crioulo.jpg\" border=\"0\" title=\"JRO 101: Crioulo da Paraíso\" /><br />JRO-101: Crioulo da Paraíso.</p>\r\n<p style=\"text-align: justify;\">O prêmio mais recente conquistado pela Fazenda Paraíso foi em 2010, na 44º EXPOPARÁ, ao ganhar o título na categoria \"Campeão Junior Menor\", com o animal <strong>Rampur POI da Paraíso</strong>.</p>','',1,0,0,7,'2011-08-02 03:01:27',1,'','2011-08-15 20:51:40',1,1,'2016-06-10 11:38:18','2011-08-02 03:01:27','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',7,0,3,'','',1,683,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(7,44,'Fazenda Paraíso I - Produtos','produtos','','<p style=\"text-align: justify;\">Comercialização de sêmen do touro <strong>Importante da JR</strong>, filho de <strong>Dubak</strong> e da Hegemonia, esta, Campeã das Américas do concurso leiteiro ocorrido no <strong>\"1º Simpósio Internacional de Búfalos das Américas\"</strong>, no ano de 2002, em Belém-PA.</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/importante.jpg\" border=\"0\" title=\"JR-146: Importante da JR\" /><br />JR-146: Importante da JR.</p>\r\n<p style=\"text-align: justify;\">Considerado por técnicos da CEBRAN-UFPA, como sêmen de excelente qualidade, animal dócil e de fácil coleta de sêmen.<br /><br />Pai: <strong>Dubak</strong> um dos maiores ganhadores de peso em provas ou experimento na EMBRAPA. E com uma docilidade incrível.<br /><br />Mãe: <strong>Hegemonia</strong>, búfala tranquila, boa conformação racial e com pico de leite de 18kg, campeã do concurso leiteiro das Américas realizado no \"1º Simpósio Internacional de Búfalos das Américas\", no ano de 2002, em Belém do Pará, com 13,8kg.<br /><br />Obs.: sua meia irmã Baixela produziu 22kg de pico de leite em janeiro de 2003, pesando 890kg em um dia de campo da Embrapa realizado no presídio de Americano Castanhal-PA.<br /><br />Seu avô, <strong>Napoli</strong>, era o 9º melhor reprodutor de leite de todos os tempos na Itália na edição 10 de março de 2006 do índice Genético de touros.</p>','',1,0,0,7,'2011-08-02 03:01:47',1,'','2011-08-10 09:22:20',1,0,'0000-00-00 00:00:00','2011-08-02 03:01:47','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',3,0,4,'','',1,647,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(8,45,'Fazenda Paraíso I - Tecnologias','tecnologias','','<p style=\"text-align: justify;\">Inseminação Artificial é uma tecnologia que só abrange 1% do rebanho bubalino brasileiro e é aplicada nas fazendas Paraíso I e II, Marajó-PA e Abaetetuba–PA, respectivamente.</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/inseminacao.jpg\" border=\"0\" title=\"Funcionário procedendo a Inseminação de matriz pertencente à Fazenda\" /><br />Funcionário procedendo a Inseminação de matriz pertencente à Fazenda.</p>','',1,0,0,7,'2011-08-02 03:02:23',1,'','2011-08-10 09:42:08',1,1,'2016-06-10 11:18:24','2011-08-02 03:02:23','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',4,0,5,'','',1,530,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(9,46,'Fazenda Paraíso II - Sobre a fazenda','sobre-a-fazenda','','<p style=\"text-align: justify;\"><span class=\"apple-style-span\"><span style=\"text-align: justify;\">Sua aquisição e implantação foi uma grande conquista para o empreendimento. </span></span>Localizada em Abaetetuba, no Pará, na estrada de Igarapé Miri km 60, no ramal do Curupere-miri. A Fazenda, de propriedade dos irmãos José Melo da Rocha, João Alfredo de Melo Rocha e do filho e sobrinho, respectivamente, João Paulo Mota Melo da Rocha, possui aproximadamente 400 (quatrocentos) hectares, atualmente, abriga búfalos da raça <strong>Murrrah</strong>. Seus proprietários resolveram construir uma bela sede que lhes permita conforto quando ali chegam com seus convidados, dividir a terra em piquetes para se trabalhar de forma rotacional, objetivando assim o maior rendimento da pastagem. Os BÚFALOS ali existentes na sua grande maioria, <strong>registrados como PO, POI e alguns LA</strong>. Foram comprados reprodutores de criadores localizados em diversos Estados do País, procurando desta forma, fugir à consanguinidade e ter uma genética das melhores. O trabalho deu certo e as fotos demonstram a qualidade dos animais, muitos voltados pata a dupla aptidão \"Carne x Leite\".</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/abaetetuba.jpg\" border=\"0\" title=\"Fachada da frente da Fazenda Paraíso II (Abaetetuba)\" /><br />Fachada da frente da Fazenda Paraíso II (Abaetetuba).</p>\r\n<p style=\"text-align: justify;\">Tem sido a grande preocupação dos proprietários da Fazenda, no decurso de seus 06 (seis) anos, dedicados à criação da espécie, a melhoria genética do rebanho, por via do uso de inseminação artificial, monta controlada e alimentação saudável de forma a apresentar animais que atendam ao binômio <strong>bife + leite</strong>.<br /><br />Na recuperação das pastagens realizadas em 2009, outra preocupação foi com o meio ambiente com utilização de tecnologia na preservação do Meio Ambiente, utilizando sistema integrado de côco + cupuaçu + pupunha + manga + pastagem sem derrubar uma única árvore.</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/pasto.jpg\" border=\"0\" title=\"O belo pasto da Fazenda\" /><br />O belo pasto da Fazenda.</p>\r\n<p style=\"text-align: justify;\">Além da preservação do meio ambiente a preocupação com o conforto térmico dos búfalos, propiciado pelo sombreamento das árvores frutíferas e espécies nativas da região, todos no sistema rotacionado.<br /><br /><br /></p>\r\n<h3><strong>SANIDADE</strong></h3>\r\n<p style=\"text-align: justify;\">O respeito aos programas de combate as enfermidades como a Febre Aftosa, programa de erradicação da Brucelose e tuberculose são rigorosamente observados, o que leva os proprietários e efetivarem a vacinação exames semestralmente, em conformidade com o cronograma estabelecido pelo Governo Federal e do Estado do Pará.<br /><br />Os animais Fêmeas na idade entre 3 e 8 meses, são todos vacinados contra a BRUCELOSE o que garante a ausência total da doença no rebanho.<br /><br />A vermifugação é procedida aos 5, 30, 60,120 dias de nascido e repetida aos seis meses e um ano de idade, reduzindo e impedindo desta forma a infestação dos animais de tal seqüela tão danosa ao desenvolvimento dos bezerros.</p>','',1,0,0,8,'2011-08-02 03:04:38',1,'','2016-06-10 11:51:21',1,1,'2016-06-10 11:51:21','2011-08-02 03:04:38','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',7,0,1,'','',1,560,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(10,47,'Fazenda Paraíso II - Búfalos','bufalos','','<p style=\"text-align: justify;\">A Paraíso II abriga, no momento, um plantel constituído, aproximadamente de 500 animais, sendo 210 da raça  Murrah, 105 da raça Mediterrânea e 80 FM (destinadas ao aumento da produção leiteira), os demais selecionados e distribuídos nas seguintes categorias:</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/tabela_rebanho.gif\" border=\"0\" title=\"Tabela com o rebanho da Fazenda\" width=\"548\" height=\"185\" style=\"display: block; margin-left: auto; margin-right: auto;\" />Tabela com o rebanho da Fazenda.</p>\r\n<p style=\"text-align: justify;\">Além destes mencionados acima, a Fazenda tem 87 animais com idade entre 12 e 18 meses, com peso variando entre 260kg e 420kg, os quais estão sendo terminados para envio ao abatedouro.<br /><br />O animal <strong>JRO-101 Crioulo da Paraíso</strong>, que conquistou no ano de 2005 o 1º lugar na categoria \"Junior Menor\", e foi Campeão na mesma categoria no 39º EXPOPARÁ. Atualmente, é um belo reprodutor, com peso de 800kg e com um progênie invejável, conforme demonstrado adiante:</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/crias_crioulo.gif\" border=\"0\" title=\"Tabela com as crias do JRO-101 Crioulo da Paraíso\" width=\"301\" height=\"105\" /> <br />Tabela com as crias do JRO-101 Crioulo da Paraíso.</p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/crioulo.jpg\" border=\"0\" title=\"JRO-101: Crioulo da Paraíso\" /><br />JRO-101: Crioulo da Paraíso.</p>\r\n<p style=\"text-align: justify;\">A seguir são apresentadas as principais produções, nos anos de 2009 e 2010, da Paraíso II:</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/producoes_2009.gif\" border=\"0\" title=\"Tabela com as principais produções de 2009\" width=\"229\" height=\"184\" /> <br />Tabela com as principais produções de 2009.<br /><br /><img src=\"images/paraiso/producoes_2010.gif\" border=\"0\" title=\"Tabela com as principais produções de 2010\" width=\"229\" height=\"144\" /> <br />Tabela com as principais produções de 2010.</p>\r\n<p style=\"text-align: justify;\">Em seguida, são expostas belas fotos da Paraíso II:</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/bufalos_abaetetuba.jpg\" border=\"0\" title=\"Búfalos pastando, enquanto que outros bebem água e comem sal\" /><br />Búfalos pastando, enquanto que outros bebem água e comem sal.</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/bufalos_abaetetuba2.jpg\" border=\"0\" title=\"A beleza do conjunto: coqueiral, pasto e sombreamnto\" /><br />A beleza do conjunto: coqueiral, pasto e sombreamnto.</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/bufalos_abaetetuba3.jpg\" border=\"0\" title=\"Tratar bem os animais rende peso e saúde\" /><br />Tratar bem os animais rende peso e saúde.</p>','',1,0,0,8,'2011-08-02 03:05:09',1,'','2011-08-21 01:58:43',1,0,'0000-00-00 00:00:00','2011-08-02 03:05:09','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',7,0,2,'','',1,528,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(11,48,'Fazenda Paraíso II - Premiações','premiacoes','','<p style=\"text-align: justify;\">A partir do ano de 2005, os proprietários das Fazendas resolveram a se fazer presente nas exposições Agropecuárias e nos leilões realizados. Em consequência dessa nova atividade, foram obtidos os seguintes resultados:</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/premiacao_2005.gif\" border=\"0\" title=\"Resultados obtidos na EXPOPARÁ no ano de 2005\" width=\"338\" height=\"203\" /><br />Resultados obtidos na EXPOPARÁ no ano de 2005.</p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: center;\"> <img src=\"images/paraiso/premiacao_2006.gif\" border=\"0\" title=\"Resultados obtidos na EXPOPARÁ no ano de 2006\" width=\"338\" height=\"163\" /><br />Resultados obtidos na EXPOPARÁ no ano de 2006.</p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/premiacao_2007.gif\" border=\"0\" title=\"Resultados obtidos na EXPOPARÁ no ano de 2007\" width=\"338\" height=\"283\" /><br />Resultados obtidos na EXPOPARÁ no ano de 2007.</p>\r\n<p style=\"text-align: justify;\"> Premiação do <strong>JRO-101 Crioulo da Paraíso</strong> ao ensejo da 39º EXPOPARÁ, ocasião em que foi escolhido como campeão da categoria \"Junior Menor\" (18 a 21 meses), disposto a seguir:</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/premiacao_crioulo.jpg\" border=\"0\" title=\"JRO 101: Crioulo da Paraíso\" /><br />JRO-101: Crioulo da Paraíso.</p>\r\n<p style=\"text-align: justify;\">O prêmio mais recente conquistado pela Fazenda Paraíso foi em 2010, na 44º EXPOPARÁ, ao ganhar o título na categoria \"Campeão Junior Menor\", com o animal <strong>Rampur POI da Paraíso</strong>.</p>','',1,0,0,8,'2011-08-02 03:05:35',1,'','2011-08-15 20:52:24',1,0,'0000-00-00 00:00:00','2011-08-02 03:05:35','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',6,0,3,'','',1,525,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(12,49,'Fazenda Paraíso II - Produtos','produtos','','<p style=\"text-align: justify;\">Comercialização de sêmen do touro <strong>Importante da JR</strong>, filho de <strong>Dubak</strong> e da Hegemonia, esta, Campeã das Américas do concurso leiteiro ocorrido no <strong>\"1º Simpósio Internacional de Búfalos das Américas\"</strong>, no ano de 2002, em Belém-PA.</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/importante.jpg\" border=\"0\" title=\"JR-146: Importante da JR\" /><br />JR-146: Importante da JR.</p>\r\n<p style=\"text-align: justify;\">Considerado por técnicos da CEBRAN-UFPA, como sêmen de excelente qualidade, animal dócil e de fácil coleta de sêmen.<br /><br />Pai: <strong>Dubak</strong> um dos maiores ganhadores de peso em provas ou experimento na EMBRAPA. E com uma docilidade incrível.<br /><br />Mãe: <strong>Hegemonia</strong>, búfala tranquila, boa conformação racial e com pico de leite de 18kg, campeã do concurso leiteiro das Américas realizado no \"1º Simpósio Internacional de Búfalos das Américas\", no ano de 2002, em Belém do Pará, com 13,8kg.<br /><br />Obs.: sua meia irmã Baixela produziu 22kg de pico de leite em janeiro de 2003, pesando 890kg em um dia de campo da Embrapa realizado no presídio de Americano Castanhal-PA.<br /><br />Seu avô, <strong>Napoli</strong>, era o 9º melhor reprodutor de leite de todos os tempos na Itália na edição 10 de março de 2006 do índice Genético de touros.</p>','',1,0,0,8,'2011-08-02 03:05:58',1,'','2011-08-10 10:32:34',1,0,'0000-00-00 00:00:00','2011-08-02 03:05:58','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',2,0,4,'','',1,664,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(13,50,'Fazenda Paraíso II - Tecnologias','tecnologias','','<p style=\"text-align: justify;\">Inseminação Artificial é uma tecnologia que só abrange 1% do rebanho bubalino brasileiro e é aplicada nas fazendas Paraíso I e II, Marajó-PA e Abaetetuba–PA, respectivamente.</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/inseminacao.jpg\" border=\"0\" title=\"Funcionário procedendo a Inseminação de matriz pertencente à Fazenda\" /><br />Funcionário procedendo a Inseminação de matriz pertencente à Fazenda.</p>','',1,0,0,8,'2011-08-02 03:06:22',1,'','2011-08-10 10:34:00',1,0,'0000-00-00 00:00:00','2011-08-02 03:06:22','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',2,0,5,'','',1,457,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(14,56,'Fazenda Paraíso III - Sobre a fazenda','sobre-a-fazenda','','<p style=\"text-align: justify;\">As Fazendas Paraíso ganharam mais um reforço com a aquisição da nova propriedade, que era um retiro da Fazenda São Miguel, de propriedade do Engenheiro Agrônomo Ronaldo Baena, localizada no município de Salvaterra, em consequência da aquisição passou a denominar-se de Paraíso III (Salvaterra).<br /><br />A propriedade que tem área de 758,63 ha de pastagens nativas, na qual será destinada exclusivamente para engorda de búfalos, fato que viabilizará o aproveitamento de todos os búfalos machos desmamados das demais Fazendas (Paraíso I e Paraíso II).</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/salvaterra.jpg\" border=\"0\" title=\"Demonstração da rusticidade dos cavalos Marajoaras ao atravessar um igarapé\" /><br />Demonstração da rusticidade dos cavalos Marajoaras ao atravessar um igarapé.</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/salvaterra2.jpg\" border=\"0\" title=\"Bela pastagem natural e a formação de um \'CB\'\" /><br />Bela pastagem natural e a formação de um \"CB\".</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/salvaterra3.jpg\" border=\"0\" title=\"Revoada de garças e búfalos pastando\" /><br />Revoada de garças e búfalos pastando.</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/salvaterra4.jpg\" border=\"0\" title=\"Terra e céu se \'encontram\' nos campos da Paraíso III\" /><br />Terra e céu se \"encontram\" nos campos da Paraíso III.</p>','',1,0,0,9,'2011-08-15 17:52:32',1,'','2016-06-10 11:53:41',1,1,'2016-06-10 11:53:41','2011-08-15 17:52:32','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',12,0,1,'','',1,594,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(17,59,'Fazenda Paraíso III - Produtos','produtos','','<p style=\"text-align: justify;\">Comercialização de sêmen do touro <strong>Importante da JR</strong>, filho de <strong>Dubak</strong> e da Hegemonia, esta, Campeã das Américas do concurso leiteiro ocorrido no <strong>\"1º Simpósio Internacional de Búfalos das Américas\"</strong>, no ano de 2002, em Belém-PA.</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/importante.jpg\" border=\"0\" title=\"JR-146: Importante da JR\" /><br />JR-146: Importante da JR.</p>\r\n<p style=\"text-align: justify;\">Considerado por técnicos da CEBRAN-UFPA, como sêmen de excelente qualidade, animal dócil e de fácil coleta de sêmen.<br /><br />Pai: <strong>Dubak</strong> um dos maiores ganhadores de peso em provas ou experimento na EMBRAPA. E com uma docilidade incrível.<br /><br />Mãe: <strong>Hegemonia</strong>, búfala tranquila, boa conformação racial e com pico de leite de 18kg, campeã do concurso leiteiro das Américas realizado no \"1º Simpósio Internacional de Búfalos das Américas\", no ano de 2002, em Belém do Pará, com 13,8kg.<br /><br />Obs.: sua meia irmã Baixela produziu 22kg de pico de leite em janeiro de 2003, pesando 890kg em um dia de campo da Embrapa realizado no presídio de Americano Castanhal-PA.<br /><br />Seu avô, <strong>Napoli</strong>, era o 9º melhor reprodutor de leite de todos os tempos na Itália na edição 10 de março de 2006 do índice Genético de touros.</p>','',1,0,0,9,'2011-08-15 17:55:12',1,'','2011-08-15 17:56:30',1,0,'0000-00-00 00:00:00','2011-08-15 17:55:12','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',1,0,4,'','',1,511,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(15,57,'Fazenda Paraíso III - Búfalos','bufalos','','<p style=\"text-align: justify;\">O suporte da Fazenda Paraíso III (Salvaterra), vem com intuito de fazer a engorda dos machos produzidos nas Fazendas Paraíso I e II. Com previsão de abate dos animais com aproximadamente 20 a 26 meses.<br /><br />Além de algumas experiências com a engorda de búfalos das raças Murrah, Mediterrânea e Jafarabad e mestiços.</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/bufalos_salvaterra.jpg\" border=\"0\" title=\"Os bufálos pastando nas terras da Fazenda Paraíso III\" /><br />Os bufálos pastando nas terras da Fazenda Paraíso III.</p>','',1,0,0,9,'2011-08-15 17:53:52',1,'','2011-08-30 22:31:25',1,0,'0000-00-00 00:00:00','2011-08-15 17:53:52','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',3,0,2,'','',1,442,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(16,58,'Fazenda Paraíso III - Premiações','premiacoes','','<p style=\"text-align: justify;\">A partir do ano de 2005, os proprietários das Fazendas resolveram a se fazer presente nas exposições Agropecuárias e nos leilões realizados. Em consequência dessa nova atividade, foram obtidos os seguintes resultados:</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/premiacao_2005.gif\" border=\"0\" title=\"Resultados obtidos na EXPOPARÁ no ano de 2005\" width=\"338\" height=\"203\" /><br />Resultados obtidos na EXPOPARÁ no ano de 2005.</p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: center;\"> <img src=\"images/paraiso/premiacao_2006.gif\" border=\"0\" title=\"Resultados obtidos na EXPOPARÁ no ano de 2006\" width=\"338\" height=\"163\" /><br />Resultados obtidos na EXPOPARÁ no ano de 2006.</p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/premiacao_2007.gif\" border=\"0\" title=\"Resultados obtidos na EXPOPARÁ no ano de 2007\" width=\"338\" height=\"283\" /><br />Resultados obtidos na EXPOPARÁ no ano de 2007.</p>\r\n<p style=\"text-align: justify;\"> Premiação do <strong>JRO-101 Crioulo da Paraíso</strong> ao ensejo da 39º EXPOPARÁ, ocasião em que foi escolhido como campeão da categoria \"Junior Menor\" (18 a 21 meses), disposto a seguir:</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/premiacao_crioulo.jpg\" border=\"0\" title=\"JRO 101: Crioulo da Paraíso\" /><br />JRO-101: Crioulo da Paraíso.</p>\r\n<p style=\"text-align: justify;\">O prêmio mais recente conquistado pela Fazenda Paraíso foi em 2010, na 44º EXPOPARÁ, ao ganhar o título na categoria \"Campeão Junior Menor\", com o animal <strong>Rampur POI da Paraíso</strong>.</p>','',1,0,0,9,'2011-08-15 17:54:34',1,'','2011-08-15 20:53:29',1,0,'0000-00-00 00:00:00','2011-08-15 17:54:34','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',2,0,3,'','',1,392,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(18,60,'Fazenda Paraíso III - Tecnologias','tecnologias','','<p style=\"text-align: justify;\">Inseminação Artificial é uma tecnologia que só abrange 1% do rebanho bubalino brasileiro e é aplicada nas fazendas Paraíso I e II, Marajó-PA e Abaetetuba–PA, respectivamente.</p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/inseminacao.jpg\" border=\"0\" title=\"Funcionário procedendo a Inseminação de matriz pertencente à Fazenda\" /><br />Funcionário procedendo a Inseminação de matriz pertencente à Fazenda.</p>','',1,0,0,9,'2011-08-15 17:55:49',1,'','2011-08-15 17:56:30',1,0,'0000-00-00 00:00:00','2011-08-15 17:55:49','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',1,0,5,'','',1,405,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(19,62,'Dedicatória à Joana Rocha','dedicatoria-a-joana-rocha','','<p style=\"text-align: justify;\">No dia 11 de agosto de 2011, o pesquisador da EMBRAPA, <strong>José Ribamar Felipe Marques</strong>, procurou <strong>José Melo da Rocha</strong> para realizar a entrega de um exemplar  de seu último lançamento. Ele queria entregar direto à matriarca da família, <strong>Joana Melo Castelo Branco Rocha</strong>, mas houve um desencontro, devido à falha na comunicação e assim não conseguiu contatá-la no momento aprazado. Desta forma, o pesquisador entregou o livro ao senhor José Rocha, filho de dona Joana, e nele consta:<br /> <br /> <strong>Este trabalho é dedicado:</strong><br />\"Aos vaqueiros do Marajó, pela tenacidade que se iguala à dos cavalos da raça Marajoara e Puruca e pela força que se assemelha à dos búfalos, que fazem e destroem as terroadas, dão vida à seca e canto à solidão da cheia, nessa imensidão de ilha. Aos criadores que reúnem todas as vertentes positivas dos marajoaras: Eduardo Ribeiro, representando a simpatia, o conhecimento da história e o exemplo de como realmente viver e participar da sua fazenda e região; Rodolfo Engelhard (<em>in memoriam</em>), o exemplo do empreendedor, do técnico e visionário, em tempos tão difíceis e idos; Francisco Pinheiro, pela confiança na região, arrojo e modernidade, dando exemplos de como fazer e obter resultados em esperar ou alardear e Joana Melo Castelo Branco Rocha, pelo amor à terra de seu Retiro Grande e exemplo de como fazer gerações para dar continuidade ao seu trabalho\".</p>','',1,0,0,10,'2011-08-16 09:10:54',1,'','2011-08-17 02:06:35',1,1,'2016-06-10 11:16:59','2011-08-16 09:10:54','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',3,0,1,'','',1,441,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `par_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_content_frontpage`
--

DROP TABLE IF EXISTS `par_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_content_frontpage`
--

LOCK TABLES `par_content_frontpage` WRITE;
/*!40000 ALTER TABLE `par_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_content_rating`
--

DROP TABLE IF EXISTS `par_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_content_rating`
--

LOCK TABLES `par_content_rating` WRITE;
/*!40000 ALTER TABLE `par_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_core_log_searches`
--

DROP TABLE IF EXISTS `par_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_core_log_searches`
--

LOCK TABLES `par_core_log_searches` WRITE;
/*!40000 ALTER TABLE `par_core_log_searches` DISABLE KEYS */;
INSERT INTO `par_core_log_searches` VALUES ('alfafa',2),('gold little step',1),('jafarabad',8),('',24),('marajo bufalos',1);
/*!40000 ALTER TABLE `par_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_extensions`
--

DROP TABLE IF EXISTS `par_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=10081 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_extensions`
--

LOCK TABLES `par_extensions` WRITE;
/*!40000 ALTER TABLE `par_extensions` DISABLE KEYS */;
INSERT INTO `par_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"pt-BR\",\"site\":\"pt-BR\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,php,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\",\"enable_flash\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"1\",\"search_areas\":\"1\",\"show_date\":\"0\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"filters\":{\"1\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"useractivation\":\"1\",\"frontend_userparams\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"PHPMailer\",\"copyright\":\"Copyright (C) PHPMailer.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/phpmailer.codeworxtech.com\\/\",\"version\":\"1.7.0\",\"description\":\"Classes for sending email\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (C) 2008 SimplePie\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.0.1\",\"description\":\"A PHP-Based RSS and Atom Feed Framework.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"1.7.0\",\"description\":\"Classes for UTF8\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Web Application Framework','library','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Web Application Framework\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"The Joomla! Web Application Framework is the Core of the Joomla! Content Management System\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\\n\\t\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(306,'mod_online','module','mod_online','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.1\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"1.7.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"none\"}','','',0,'0000-00-00 00:00:00',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.7.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2011\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.4.3.2\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"compressed\":\"0\",\"cleanup_startup\":\"0\",\"cleanup_save\":\"2\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"safari\":\"0\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(502,'bluestork','template','bluestork','',1,1,1,0,'{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"1.7.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"June 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.6\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10065,'ZT Tools','plugin','plg_ztools','system',0,1,1,0,'{\"legacy\":false,\"name\":\"ZT Tools\",\"type\":\"plugin\",\"creationDate\":\"7\\/27\\/2011\",\"author\":\"ZooTemplate.Com\",\"copyright\":\"Copyright (C) 2008 - 2011 http:\\/\\/www.ZooTemplate.Com. All rights reserved.\",\"authorEmail\":\"webmaster@ZooTemplate.com\",\"authorUrl\":\"www.ZooTemplate.com\",\"version\":\"1.7.9\",\"description\":\"Plugin ZooTools support for ZooTemplate.\",\"group\":\"\"}','{\"gzip_browsercache\":\"1\",\"gzip_lifetime\":\"15\",\"components\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10066,'com_tmp','component','com_tmp','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_tmp\",\"type\":\"component\",\"creationDate\":\"8\\/2\\/2011\",\"author\":\"ZooTemplate.com\",\"copyright\":\"ZooTemplate\",\"authorEmail\":\"support@zootemplate.com\",\"authorUrl\":\"www.zootemplate.com\",\"version\":\"1.7.0\",\"description\":\"<h1>ZT Hemi17 - The cool template for Education <\\/h1><strong>Thank you very much for using our services.<br \\/>Please visit <a href=\\\"http:\\/\\/www.zootemplate.com\\\" title=\\\"Joomla Templates\\\">Joomla Templates<\\/a> Club for any further support.<\\/strong>\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10002,'Joomla! Content Management System','package','pkg_joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Content Management System\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla!\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"The Joomla! Content Management System is one of the most popular content management system\'s available today.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10075,'Pacote de Idiomas em Português Brasileiro para TinyMCE','file','TinyMCE_pt-BR','',0,1,0,0,'','','','',0,'0000-00-00 00:00:00',0,0),(10076,'pt-BR','package','pkg_pt-BR','',0,1,1,0,'{\"legacy\":false,\"name\":\"Pacote do Idioma Portugu\\u00eas do Brasil (pt-BR)\",\"type\":\"package\",\"creationDate\":\"2016-04-07\",\"author\":\"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas do Brasil\",\"copyright\":\"\",\"authorEmail\":\"pt-br@joomlacarioca.com.br\",\"authorUrl\":\"http:\\/\\/brasil.joomla.com\",\"version\":\"3.5.1.1\",\"description\":\"\\n      <div style=\\\"text-align:left;\\\">\\n  <h2>Pacote de Idioma Portugu\\u00eas Brasileiro (pt-BR) completo para Joomla! 3.5.1 instalado com sucesso!<\\/h2>\\n  <h3>Vers\\u00e3o 3.5.1v1 <\\/h3>\\n  <p>Por favor, informe qualquer problema ou assunto relacionado encontrado na p\\u00e1gina <a href=\\\"https:\\/\\/www.facebook.com\\/groups\\/traduzjoomla\\/\\\" target=\\\"_blank\\\">Grupo Tradu\\u00e7\\u00f5es Joomla pt-BR<\\/a> no Facebook.<\\/p>\\n  <p>Traduzido pela <a href=\\\"http:\\/\\/brasil.joomla.com\\/como-participar\\/9-traducao-no-projeto\\\" target=\\\"_blank\\\">Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas Brasileiro<\\/a>.<\\/p>\\n  <h2>Successfully installed the Full Brazilian Portugues (pt-BR) Language Pack for Joomla! 3.5.1<\\/h2>\\n  <h3>Version 3.5.1v1<\\/h3>\\n  <p>Please report any bugs or issues at the <a href=\\\"https:\\/\\/www.facebook.com\\/groups\\/traduzjoomla\\/\\\" target=\\\"_blank\\\">pt-BR Translation Group<\\/a> Facebook page.<\\/p>\\n  <p>Translated by the <a href=\\\"http:\\/\\/brasil.joomla.com\\/como-participar\\/9-traducao-no-projeto\\\" target=\\\"_blank\\\">Brazilian Portuguese Translation Team<\\/a>.<\\/p>\\n  <\\/div>\\n      \",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10072,'ZT SlideShow','module','mod_zt_slideshow','',0,1,0,0,'{\"legacy\":false,\"name\":\"ZT SlideShow\",\"type\":\"module\",\"creationDate\":\"Jan 05 2011\",\"author\":\"ZooTemplate\",\"copyright\":\"ZooTemplate.Com\",\"authorEmail\":\"support@zootemplate.com\",\"authorUrl\":\"www.zootemplate.com\",\"version\":\"1.6.0\",\"description\":\"ZT Slideshow allows you to quickly and easily display a selection of images and transition between them.\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"folder\":\"images\\/stories\\/food\\/\",\"order\":\"0\",\"autorun\":\"1\",\"transition\":\"fade\",\"width\":\"180\",\"height\":\"82\",\"duration\":\"500\",\"delay\":\"5000\",\"@spacer\":\"\",\"background\":\"FFFFFF\",\"arrows\":\"0\",\"showtitle\":\"0\",\"showdescription\":\"0\",\"linkable\":\"1\",\"newwindow\":\"0\",\"intro_lenght\":\"200\",\"title\":\"\",\"link\":\"\",\"description\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10073,'PortugusBrasil','language','pt-BR','',0,1,0,0,'{\"legacy\":true,\"name\":\"Portugu\\u00eas (Brasil)\",\"type\":\"language\",\"creationDate\":\"2011-11-19\",\"author\":\"Joomleiros\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved. Copyright (C) Translation 2005 - 2011 Joomla! Brasil. All rights reserved.\",\"authorEmail\":\"traducao@joomleiros.com\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/portuguesebr\\/\",\"version\":\"1.7.3\",\"description\":\"Arquivos de Idioma em Portugu\\u00eas Brasileiro para Joomla! 1.7 - Site.<br\\/>\\n\\t\\t\\t\\t Copyrights: 2005 - 2011 Joomla! Brasil.<br\\/>\\n\\t\\t\\t\\t Todos os direitos reservados.<br\\/>\\n\\t\\t\\t\\t <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/project\\/portuguesebr\\/\\\" target=\\\"_blank\\\">Joomla! Brasil<\\/a> \\u00e9 o \\u00fanico detentor dos copyrights desta tradu\\u00e7\\u00e3o.<br\\/>\\n\\t\\t\\t\\t De acordo com termo de licenciamento de <a href=\\\"http:\\/\\/www.opensourcematters.org\\\" target=\\\"_blank\\\">OpenSourceMatters<\\/a> e <a href=\\\"http:\\/\\/www.joomla.org\\\" target=\\\"_blank\\\">Joomla!<\\/a> todos os arquivos de idioma devem ser licenciados sob a <a href=\\\"http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html\\\" target=\\\"_blank\\\"> licen\\u00e7a GNU\\/GPL (v.2.0)<\\/a>.\\n\\t\\t\\t\\t Esta tradu\\u00e7\\u00e3o est\\u00e1 licenciada sob esta licen\\u00e7a. Se voc\\u00ea encontrar algum erro de digita\\u00e7\\u00e3o, tradu\\u00e7\\u00f5es incorretas ou se deseja sugerir melhorias, entre em contato com o <a href=\\\"mailto:traducao@joomla.com.br\\\">coordenador<\\/a> da tradu\\u00e7\\u00e3o.<br\\/><br\\/>\\n\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10074,'PortugusBrasil','language','pt-BR','',1,1,0,0,'{\"legacy\":true,\"name\":\"Portugu\\u00eas(Brasil)\",\"type\":\"language\",\"creationDate\":\"2011-11-19\",\"author\":\"Joomleiros\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved. Copyright (C) Translation 2005 - 2011 Joomla! Brasil. All rights reserved.\",\"authorEmail\":\"traducao@joomleiros.com\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/portuguesebr\\/\",\"version\":\"1.7.3\",\"description\":\"Arquivos de Idioma em Portugu\\u00eas Brasileiro para Joomla! 1.7 - Administra\\u00e7\\u00e3o.<br\\/>\\n\\t\\t\\t\\t Copyrights: 2005 - 2011 Joomla! Brasil.<br\\/>\\n\\t\\t\\t\\t Todos os direitos reservados.<br\\/>\\n\\t\\t\\t\\t <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/project\\/portuguesebr\\/\\\" target=\\\"_blank\\\">Joomla! Brasil<\\/a> \\u00e9 o \\u00fanico detentor dos copyrights desta tradu\\u00e7\\u00e3o.<br\\/>\\n\\t\\t\\t\\t De acordo com termo de licenciamento de <a href=\\\"http:\\/\\/www.opensourcematters.org\\\" target=\\\"_blank\\\">OpenSourceMatters<\\/a> e <a href=\\\"http:\\/\\/www.joomla.org\\\" target=\\\"_blank\\\">Joomla!<\\/a> todos os arquivos de idioma devem ser licenciados sob a <a href=\\\"http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html\\\" target=\\\"_blank\\\"> licen\\u00e7a GNU\\/GPL (v.2.0)<\\/a>.\\n\\t\\t\\t\\t Esta tradu\\u00e7\\u00e3o est\\u00e1 licenciada sob esta licen\\u00e7a. Se voc\\u00ea encontrar algum erro de digita\\u00e7\\u00e3o, tradu\\u00e7\\u00f5es incorretas ou se deseja sugerir melhorias, entre em contato com o <a href=\\\"mailto:traducao@joomleiros.com\\\">coordenador<\\/a> da tradu\\u00e7\\u00e3o.<br\\/><br\\/>\\n\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10024,'com_phocagallery','component','com_phocagallery','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_phocagallery\",\"type\":\"component\",\"creationDate\":\"18\\/06\\/2014\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"www.phoca.cz\",\"version\":\"3.2.8\",\"description\":\"Phoca Gallery\",\"group\":\"\"}','{\"categories_description\":\"\",\"categories_columns\":\"1\",\"equal_percentage_width\":\"1\",\"display_image_categories\":\"1\",\"categories_box_width\":\"33%\",\"image_categories_size\":\"4\",\"categories_image_ordering\":\"9\",\"categories_display_avatar\":\"0\",\"display_subcategories\":\"1\",\"display_empty_categories\":\"0\",\"hide_categories\":\"\",\"show_categories\":\"\",\"display_access_category\":\"0\",\"default_pagination_categories\":\"0\",\"pagination_categories\":\"5,10,15,20,50\",\"font_color\":\"#b36b00\",\"background_color\":\"#fcfcfc\",\"background_color_hover\":\"#f5f5f5\",\"image_background_color\":\"#f5f5f5\",\"image_background_shadow\":\"shadow1\",\"border_color\":\"#e8e8e8\",\"border_color_hover\":\"#b36b00\",\"margin_box\":\"5\",\"padding_box\":\"5\",\"display_new\":\"0\",\"display_hot\":\"0\",\"display_name\":\"1\",\"display_icon_detail\":\"1\",\"display_icon_download\":\"2\",\"display_icon_folder\":\"0\",\"font_size_name\":\"12\",\"char_length_name\":\"15\",\"category_box_space\":\"0\",\"display_categories_sub\":\"0\",\"display_subcat_page\":\"0\",\"display_category_icon_image\":\"0\",\"category_image_ordering\":\"9\",\"display_back_button\":\"1\",\"display_categories_back_button\":\"1\",\"default_pagination_category\":\"20\",\"pagination_category\":\"5,10,15,20,50\",\"display_img_desc_box\":\"0\",\"font_size_img_desc\":\"10\",\"img_desc_box_height\":\"30\",\"char_length_img_desc\":\"300\",\"display_categories_cv\":\"0\",\"display_subcat_page_cv\":\"0\",\"display_category_icon_image_cv\":\"0\",\"category_image_ordering_cv\":\"9\",\"display_back_button_cv\":\"1\",\"display_categories_back_button_cv\":\"1\",\"categories_columns_cv\":\"1\",\"display_image_categories_cv\":\"1\",\"image_categories_size_cv\":\"4\",\"detail_window\":\"0\",\"detail_window_background_color\":\"#ffffff\",\"modal_box_overlay_color\":\"#000000\",\"modal_box_overlay_opacity\":\"0.3\",\"modal_box_border_color\":\"#6b6b6b\",\"modal_box_border_width\":\"2\",\"sb_slideshow_delay\":\"5\",\"sb_lang\":\"en\",\"highslide_class\":\"rounded-white\",\"highslide_opacity\":\"0\",\"highslide_outline_type\":\"rounded-white\",\"highslide_fullimg\":\"0\",\"highslide_close_button\":\"0\",\"highslide_slideshow\":\"1\",\"jak_slideshow_delay\":\"5\",\"jak_orientation\":\"none\",\"jak_description\":\"1\",\"jak_description_height\":\"10\",\"boxplus_theme\":\"lightsquare\",\"boxplus_bautocenter\":\"1\",\"boxplus_autofit\":\"1\",\"boxplus_slideshow\":\"0\",\"boxplus_loop\":\"0\",\"boxplus_captions\":\"bottom\",\"boxplus_thumbs\":\"inside\",\"boxplus_duration\":\"250\",\"boxplus_transition\":\"linear\",\"boxplus_contextmenu\":\"1\",\"display_description_detail\":\"0\",\"display_title_description\":\"0\",\"font_size_desc\":\"11\",\"font_color_desc\":\"#333333\",\"description_detail_height\":\"16\",\"description_lightbox_font_size\":\"12\",\"description_lightbox_font_color\":\"#ffffff\",\"description_lightbox_bg_color\":\"#000000\",\"slideshow_delay\":\"3000\",\"slideshow_pause\":\"2000\",\"slideshow_random\":\"0\",\"slideshow_description\":\"peekaboo\",\"detail_buttons\":\"1\",\"phocagallery_width\":\"\",\"phocagallery_center\":\"0\",\"category_ordering\":\"1\",\"image_ordering\":\"1\",\"gallery_metadesc\":\"\",\"gallery_metakey\":\"\",\"alt_value\":\"1\",\"enable_cooliris\":\"0\",\"start_cooliris\":\"0\",\"piclens_image\":\"1\",\"switch_image\":\"0\",\"switch_width\":\"640\",\"switch_height\":\"480\",\"switch_fixed_size\":\"0\",\"enable_overlib\":\"0\",\"ol_bg_color\":\"#666666\",\"ol_fg_color\":\"#f6f6f6\",\"ol_tf_color\":\"#000000\",\"ol_cf_color\":\"#ffffff\",\"overlib_overlay_opacity\":\"0.7\",\"overlib_image_rate\":\"\",\"create_watermark\":\"0\",\"watermark_position_x\":\"center\",\"watermark_position_y\":\"middle\",\"display_category_statistics\":\"0\",\"display_main_cat_stat\":\"1\",\"display_lastadded_cat_stat\":\"1\",\"count_lastadded_cat_stat\":\"3\",\"display_mostviewed_cat_stat\":\"1\",\"count_mostviewed_cat_stat\":\"3\",\"display_feed\":\"0\",\"feed_cat_ids\":\"\",\"feed_img_ordering\":\"6\",\"feed_img_count\":\"5\",\"feed_title\":\"\",\"enable_user_cp\":\"0\",\"enable_upload_avatar\":\"1\",\"enable_avatar_approve\":\"0\",\"enable_usercat_approve\":\"0\",\"enable_usersubcat_approve\":\"0\",\"user_subcat_count\":\"5\",\"max_create_cat_char\":\"1000\",\"user_ucp_lang\":\"1\",\"enable_userimage_approve\":\"0\",\"max_upload_char\":\"1000\",\"upload_maxsize\":\"3145728\",\"upload_maxres_width\":\"3072\",\"upload_maxres_height\":\"2304\",\"user_images_max_size\":\"20971520\",\"enable_multiple\":\"0\",\"multiple_upload_method\":\"1\",\"multiple_upload_chunk\":\"0\",\"multiple_resize_width\":\"-1\",\"multiple_resize_height\":\"-1\",\"enable_java\":\"0\",\"java_box_width\":\"480\",\"java_box_height\":\"480\",\"display_rating\":\"0\",\"display_rating_img\":\"0\",\"display_comment\":\"0\",\"display_comment_img\":\"0\",\"comment_width\":\"500\",\"max_comment_char\":\"1000\",\"display_comment_nopup\":\"0\",\"external_comment_system\":\"0\",\"fb_comment_user_id\":\"\",\"display_camera_info\":\"0\",\"exif_information\":\"FILE.FileName,FILE.FileDateTime,FILE.FileSize,FILE.MimeType,COMPUTED.Height,COMPUTED.Width,COMPUTED.IsColor,COMPUTED.ApertureFNumber,IFD0.Make,IFD0.Model,IFD0.Orientation,IFD0.XResolution,IFD0.YResolution,IFD0.ResolutionUnit,IFD0.Software,IFD0.DateTime,IFD0.Exif_IFD_Pointer,IFD0.GPS_IFD_Pointer,EXIF.ExposureTime,EXIF.FNumber,EXIF.ExposureProgram,EXIF.ISOSpeedRatings,EXIF.ExifVersion,EXIF.DateTimeOriginal,EXIF.DateTimeDigitized,EXIF.ShutterSpeedValue,EXIF.ApertureValue,EXIF.ExposureBiasValue,EXIF.MaxApertureValue,EXIF.MeteringMode,EXIF.LightSource,EXIF.Flash,EXIF.FocalLength,EXIF.SubSecTimeOriginal,EXIF.SubSecTimeDigitized,EXIF.ColorSpace,EXIF.ExifImageWidth,EXIF.ExifImageLength,EXIF.SensingMethod,EXIF.CustomRendered,EXIF.ExposureMode,EXIF.WhiteBalance,EXIF.DigitalZoomRatio,EXIF.FocalLengthIn35mmFilm,EXIF.SceneCaptureType,EXIF.GainControl,EXIF.Contrast,EXIF.Saturation,EXIF.Sharpness,EXIF.SubjectDistanceRange,GPS.GPSLatitudeRef,GPS.GPSLatitude,GPS.GPSLongitudeRef,GPS.GPSLongitude,GPS.GPSAltitudeRef,GPS.GPSAltitude,GPS.GPSTimeStamp,GPS.GPSStatus,GPS.GPSMapDatum,GPS.GPSDateStamp\",\"display_categories_geotagging\":\"0\",\"categories_lng\":\"\",\"categories_lat\":\"\",\"categories_zoom\":\"2\",\"categories_map_width\":\"\",\"categories_map_height\":\"500\",\"display_icon_geotagging\":\"0\",\"display_category_geotagging\":\"0\",\"category_map_width\":\"\",\"category_map_height\":\"400\",\"display_icon_vm\":\"0\",\"pagination_thumbnail_creation\":\"0\",\"clean_thumbnails\":\"0\",\"enable_thumb_creation\":\"1\",\"crop_thumbnail\":\"5\",\"jpeg_quality\":\"85\",\"enable_picasa_loading\":\"1\",\"picasa_load_pagination\":\"20\",\"enable_facebook_loading\":\"1\",\"icon_format\":\"png\",\"large_image_width\":\"640\",\"large_image_height\":\"480\",\"medium_image_width\":\"100\",\"medium_image_height\":\"100\",\"small_image_width\":\"50\",\"small_image_height\":\"50\",\"front_modal_box_width\":\"680\",\"front_modal_box_height\":\"560\",\"folder_permissions\":\"0755\",\"jfile_thumbs\":\"1\",\"alias_iconv\":\"0\",\"enable_cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10061,'pt-PT','package','pkg_pt-PT','',0,1,1,0,'{\"legacy\":false,\"name\":\"Portugu\\u00eas Europeu\",\"type\":\"package\",\"creationDate\":\"Unknown\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.7.0\",\"description\":\"Pacote completo de Idioma Joomla 1.7 para Portugu\\u00eas Europeu com acordo ortogr\\u00e1fico - Comunidade Portuguesa JoomlaPT!\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10064,'zt_hemi17','template','zt_hemi17','',0,1,1,0,'{\"legacy\":false,\"name\":\"zt_hemi17\",\"type\":\"template\",\"creationDate\":\"8\\/2\\/2011\",\"author\":\"ZooTemplate.com\",\"copyright\":\"ZooTemplate\",\"authorEmail\":\"support@zootemplate.com\",\"authorUrl\":\"www.zootemplate.com\",\"version\":\"1.7.0\",\"description\":\"<h1>ZT Hemi17 - The cool template for Education <\\/h1><strong>Thank you very much for using our services.<br \\/>Please visit <a href=\\\"http:\\/\\/www.zootemplate.com\\\" title=\\\"Joomla Templates\\\">Joomla Templates<\\/a> Club for any further support.<\\/strong>\",\"group\":\"\"}','{\"zt_font\":\"3\",\"zt_footer\":\"0\",\"zt_footer_text\":\"Copyright (c) 2008 - 2011 Joomla Templates by ZooTemplate.Com\",\"zt_fontfeature\":\"1\",\"zt_rtl\":\"0\",\"zt_mobile\":\"1\",\"menutype\":\"mainmenu\",\"zt_menustyle\":\"mega\",\"xdelay\":\"350\",\"xduration\":\"350\",\"xtransition\":\"Fx.Transitions.Bounce.easeOut\",\"fancy\":\"0\",\"transition\":\"Fx.Transitions.linear\",\"duration\":\"350\",\"gzip_folder\":\"zt-assets\",\"gzip_merge\":\"1\",\"gzip_optimize_css\":\"0\",\"css-exclude\":\"\",\"gzip_optimize_js\":\"0\",\"js-exclude\":\"\",\"gzip_optimize_html\":\"1\",\"zt_change_color\":\"1\",\"color_bd\":\"#efefec\",\"image_zt-maintop\":\"pattern10\",\"color_zt-maintop\":\"#1c1c1c\",\"text_zt-maintop\":\"#f5f5f5\",\"link_zt-maintop\":\"#2383B0\",\"color_zt-bottom\":\"#1B1B1B\",\"text_zt-bottom\":\"#FFFFFF\",\"link_zt-bottom\":\"#045cb4\"}','','',0,'0000-00-00 00:00:00',0,0),(10068,'Nice Ajax Poll','module','mod_nicepoll','',0,1,0,0,'{\"legacy\":false,\"name\":\"Nice Ajax Poll\",\"type\":\"module\",\"creationDate\":\"Junuary 2010\",\"author\":\"Ageent\",\"copyright\":\"Copyright (C) 2010. All rights reserved.\",\"authorEmail\":\"ageent.ua@gmail.com\",\"authorUrl\":\"www.ageent.ru\",\"version\":\"1.3.0\",\"description\":\"NICEPOLL_SUCCESSFULLY_INSTALLED\",\"group\":\"\"}','{\"id\":\"rand\",\"template_list\":\"1\",\"template_list_def\":\"default\",\"template_nice_list\":\"1\",\"width_percent\":\"200\",\"display_link\":\"1\",\"ag_fast_refrash\":\"1\",\"ag_real_back\":\"1\",\"ag_show_result\":\"1\",\"ag_disabled_or_del\":\"1\",\"show_resultat\":\"1\",\"already_voted\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(10069,'com_niceajaxpoll','component','com_niceajaxpoll','',1,1,0,0,'{\"legacy\":false,\"name\":\"COM_NICEAJAXPOLL\",\"type\":\"component\",\"creationDate\":\"2011\",\"author\":\"Dmitriy Kupriynov\",\"copyright\":\"open\",\"authorEmail\":\"ageent.ua@gmail.com\",\"authorUrl\":\"http:\\/\\/www.ageent.ru\",\"version\":\"1.0\",\"description\":\"COM_NICEAJAXPOLL_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'','{}','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'','{}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"porter_en\"}','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,1,1,0,'{}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'','{}','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.7.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'','{}','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'','{}','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'','{}','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'','{}','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'','{}','','',0,'0000-00-00 00:00:00',5,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'','','','',0,'0000-00-00 00:00:00',0,0),(10077,'paraiso','template','paraiso','',0,1,1,0,'{\"legacy\":false,\"name\":\"paraiso\",\"type\":\"template\",\"creationDate\":\"8\\/8\\/2012\",\"author\":\"Poob Info\",\"copyright\":\"Poob Info\",\"authorEmail\":\"contato@poob.com.br\",\"authorUrl\":\"www.poob.com.br\",\"version\":\"2.5.6\",\"description\":\"<h1>Fazenda Para\\u00edso <\\/h1><br \\/>Template oficial das Fazendas Para\\u00edso.\",\"group\":\"\"}','{\"zt_font\":\"3\",\"zt_footer\":\"0\",\"zt_footer_text\":\"Copyright (c) 2008 - 2011 Joomla Templates by ZooTemplate.Com\",\"zt_fontfeature\":\"1\",\"zt_rtl\":\"0\",\"zt_mobile\":\"1\",\"menutype\":\"mainmenu\",\"zt_menustyle\":\"mega\",\"xdelay\":\"350\",\"xduration\":\"350\",\"xtransition\":\"Fx.Transitions.Bounce.easeOut\",\"fancy\":\"0\",\"transition\":\"Fx.Transitions.linear\",\"duration\":\"350\",\"gzip_folder\":\"zt-assets\",\"gzip_merge\":\"1\",\"gzip_optimize_css\":\"0\",\"css-exclude\":\"\",\"gzip_optimize_js\":\"0\",\"js-exclude\":\"\",\"gzip_optimize_html\":\"1\",\"zt_change_color\":\"1\",\"color_bd\":\"#efefec\",\"image_zt-maintop\":\"pattern10\",\"color_zt-maintop\":\"#1c1c1c\",\"text_zt-maintop\":\"#f5f5f5\",\"link_zt-maintop\":\"#2383B0\",\"color_zt-bottom\":\"#1B1B1B\",\"text_zt-bottom\":\"#FFFFFF\",\"link_zt-bottom\":\"#045cb4\"}','','',0,'0000-00-00 00:00:00',0,0),(10078,'PortugusdoBrasilpt-BR','language','pt-BR','',0,1,0,0,'{\"legacy\":false,\"name\":\"Portugu\\u00eas do Brasil (pt-BR)\",\"type\":\"language\",\"creationDate\":\"2016-04-07\",\"author\":\"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas Brasileiro\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.1.1\",\"description\":\"pt-BR site language\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10079,'PortugusdoBrasilpt-BR','language','pt-BR','',1,1,0,0,'{\"legacy\":false,\"name\":\"Portugu\\u00eas do Brasil (pt-BR)\",\"type\":\"language\",\"creationDate\":\"2016-04-07\",\"author\":\"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas do Brasil\",\"copyright\":\"Copyright (C) 2005-2016 Open Source Matters. Todos os direitos reservados.\",\"authorEmail\":\"pt-br@joomlacarioca.com.br\",\"authorUrl\":\"http:\\/\\/brasil.joomla.com\",\"version\":\"3.5.1.1\",\"description\":\"Brazilian Portuguese Site language for Joomla 3. 5. 0\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10080,'Idioma Português do Brasil para o Componente Phoca Gallery,seus módulos e plugins','file','install','',0,1,0,0,'{\"legacy\":false,\"name\":\"Idioma Portugu\\u00eas do Brasil para o Componente Phoca Gallery,seus m\\u00f3dulos e plugins\",\"type\":\"file\",\"creationDate\":\"11 de Junho de 2012\",\"author\":\"Uriel dos Santos Souza, Claudeir Ribeiro e Usiel Almeida Oliveira\",\"copyright\":\"Copyright \\u00a9 2012 - All rights reserved.\",\"authorEmail\":\"contato@pontomega.com.br\",\"authorUrl\":\"http:\\/\\/pontomega.com.br\",\"version\":\"4\",\"description\":\"\\n    Tradu\\u00e7\\u00e3o para o componente Phoca Gallery,seus m\\u00f3dulos e plugins para o idioma portugu\\u00eas brasileiro.\\n  \",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `par_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_links_terms0`
--

DROP TABLE IF EXISTS `par_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_links_terms0`
--

LOCK TABLES `par_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `par_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_links_terms1`
--

DROP TABLE IF EXISTS `par_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_links_terms1`
--

LOCK TABLES `par_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `par_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_links_terms2`
--

DROP TABLE IF EXISTS `par_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_links_terms2`
--

LOCK TABLES `par_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `par_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_links_terms3`
--

DROP TABLE IF EXISTS `par_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_links_terms3`
--

LOCK TABLES `par_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `par_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_links_terms4`
--

DROP TABLE IF EXISTS `par_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_links_terms4`
--

LOCK TABLES `par_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `par_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_links_terms5`
--

DROP TABLE IF EXISTS `par_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_links_terms5`
--

LOCK TABLES `par_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `par_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_links_terms6`
--

DROP TABLE IF EXISTS `par_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_links_terms6`
--

LOCK TABLES `par_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `par_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_links_terms7`
--

DROP TABLE IF EXISTS `par_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_links_terms7`
--

LOCK TABLES `par_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `par_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_links_terms8`
--

DROP TABLE IF EXISTS `par_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_links_terms8`
--

LOCK TABLES `par_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `par_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_links_terms9`
--

DROP TABLE IF EXISTS `par_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_links_terms9`
--

LOCK TABLES `par_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `par_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_links_termsa`
--

DROP TABLE IF EXISTS `par_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_links_termsa`
--

LOCK TABLES `par_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `par_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_links_termsb`
--

DROP TABLE IF EXISTS `par_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_links_termsb`
--

LOCK TABLES `par_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `par_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_links_termsc`
--

DROP TABLE IF EXISTS `par_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_links_termsc`
--

LOCK TABLES `par_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `par_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_links_termsd`
--

DROP TABLE IF EXISTS `par_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_links_termsd`
--

LOCK TABLES `par_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `par_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_links_termse`
--

DROP TABLE IF EXISTS `par_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_links_termse`
--

LOCK TABLES `par_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `par_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_links_termsf`
--

DROP TABLE IF EXISTS `par_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_links_termsf`
--

LOCK TABLES `par_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `par_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_taxonomy`
--

DROP TABLE IF EXISTS `par_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_taxonomy` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_taxonomy`
--

LOCK TABLES `par_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `par_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `par_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `par_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `par_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_taxonomy_map`
--

LOCK TABLES `par_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `par_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_terms`
--

DROP TABLE IF EXISTS `par_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_terms` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_terms`
--

LOCK TABLES `par_finder_terms` WRITE;
/*!40000 ALTER TABLE `par_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_terms_common`
--

DROP TABLE IF EXISTS `par_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_terms_common`
--

LOCK TABLES `par_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `par_finder_terms_common` DISABLE KEYS */;
INSERT INTO `par_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `par_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_tokens`
--

DROP TABLE IF EXISTS `par_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_tokens` (
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
-- Dumping data for table `par_finder_tokens`
--

LOCK TABLES `par_finder_tokens` WRITE;
/*!40000 ALTER TABLE `par_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `par_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_tokens_aggregate` (
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
-- Dumping data for table `par_finder_tokens_aggregate`
--

LOCK TABLES `par_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `par_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_finder_types`
--

DROP TABLE IF EXISTS `par_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_finder_types`
--

LOCK TABLES `par_finder_types` WRITE;
/*!40000 ALTER TABLE `par_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_languages`
--

DROP TABLE IF EXISTS `par_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_languages`
--

LOCK TABLES `par_languages` WRITE;
/*!40000 ALTER TABLE `par_languages` DISABLE KEYS */;
INSERT INTO `par_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,0);
/*!40000 ALTER TABLE `par_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_menu`
--

DROP TABLE IF EXISTS `par_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_menu` (
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
  `access` int(10) unsigned DEFAULT NULL,
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias` (`client_id`,`parent_id`,`alias`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(333)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_menu`
--

LOCK TABLES `par_menu` WRITE;
/*!40000 ALTER TABLE `par_menu` DISABLE KEYS */;
INSERT INTO `par_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,107,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',37,38,0,'*',1),(17,'menu','com_search','Search','','Search','index.php?option=com_search','component',0,1,1,19,0,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',29,30,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',31,36,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',32,33,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',34,35,0,'*',1),(21,'topo','Página Inicial','pagina-inicial','','pagina-inicial','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Seja bem vindo!\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',39,40,1,'*',0),(161,'artigos','Dedicatória à Joana Rocha','dedicatoria-a-joana-rocha','','dedicatoria-a-joana-rocha','index.php?option=com_content&view=article&id=19','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"mega_showtitle\":\"1\",\"mega_desc\":\"\",\"mega_cols\":\"1\",\"mega_group\":\"0\",\"mega_width\":\"\",\"mega_colw\":\"\",\"mega_colxw\":\"\",\"mega_class\":\"\",\"mega_subcontent\":\"0\",\"mega_module_style\":\"xhtml\"}',77,78,0,'*',0),(22,'topo','Galeria de Fotos','galeria-de-fotos','','galeria-de-fotos','index.php?option=com_phocagallery&view=categories','component',1,1,1,10024,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_pagination_categories\":\"0\",\"show_pagination_category\":\"1\",\"show_pagination_limit_categories\":\"0\",\"show_pagination_limit_category\":\"1\",\"show_ordering_categories\":\"0\",\"show_ordering_images\":\"1\",\"display_cat_name_title\":\"1\",\"display_cat_name_breadcrumbs\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',41,42,0,'*',0),(24,'topo','Contato','contato','','contato','index.php?option=com_content&view=article&id=3','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"mega_showtitle\":\"1\",\"mega_desc\":\"\",\"mega_cols\":\"1\",\"mega_group\":\"0\",\"mega_width\":\"\",\"mega_colw\":\"\",\"mega_colxw\":\"\",\"mega_class\":\"\",\"mega_subcontent\":\"0\",\"mega_module_style\":\"xhtml\"}',45,46,0,'*',0),(23,'topo','Parceiros','parceiros','','parceiros','index.php?option=com_content&view=article&id=2','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',43,44,0,'*',0),(25,'marajo','Sobre a fazenda','sobre-a-fazenda-marajo','','sobre-a-fazenda-marajo','index.php?option=com_content&view=article&id=4','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',47,48,0,'*',0),(26,'marajo','Búfalos','bufalos-marajo','','bufalos-marajo','index.php?option=com_content&view=article&id=5','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',49,50,0,'*',0),(27,'marajo','Premiações','premiacoes-marajo','','premiacoes-marajo','index.php?option=com_content&view=article&id=6','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',51,52,0,'*',0),(28,'marajo','Produtos','produtos-marajo','','produtos-marajo','index.php?option=com_content&view=article&id=7','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',53,54,0,'*',0),(29,'marajo','Tecnologias','tecnologias-marajo','','tecnologias-marajo','index.php?option=com_content&view=article&id=8','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',55,56,0,'*',0),(30,'abaetetuba','Sobre a fazenda','sobre-a-fazenda-abaetetuba','','sobre-a-fazenda-abaetetuba','index.php?option=com_content&view=article&id=9','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',57,58,0,'*',0),(31,'abaetetuba','Búfalos','bufalos-abaetetuba','','bufalos-abaetetuba','index.php?option=com_content&view=article&id=10','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',59,60,0,'*',0),(32,'abaetetuba','Premiações','premiacoes-abaetetuba','','premiacoes-abaetetuba','index.php?option=com_content&view=article&id=11','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',61,62,0,'*',0),(33,'abaetetuba','Produtos','produtos-abaetetuba','','produtos-abaetetuba','index.php?option=com_content&view=article&id=12','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',63,64,0,'*',0),(34,'abaetetuba','Tecnologias','tecnologias-abaetetuba','','tecnologias-abaetetuba','index.php?option=com_content&view=article&id=13','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',65,66,0,'*',0),(162,'main','COM_NICEAJAXPOLL_MENU','comniceajaxpollmenu','','comniceajaxpollmenu','index.php?option=com_niceajaxpoll','component',0,1,1,10069,0,0,'0000-00-00 00:00:00',0,1,'../media/com_niceajaxpoll/images/tux-16x16.png',0,'',79,80,0,'',1),(188,'main','COM_PHOCAGALLERY_INFO','comphocagalleryinfo','','comphocagallery/comphocagalleryinfo','index.php?option=com_phocagallery&view=phocagalleryin','component',0,176,2,10024,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-info.png',0,'',104,105,0,'',1),(187,'main','COM_PHOCAGALLERY_TAGS','comphocagallerytags','','comphocagallery/comphocagallerytags','index.php?option=com_phocagallery&view=phocagallerytags','component',0,176,2,10024,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-tags.png',0,'',102,103,0,'',1),(186,'main','COM_PHOCAGALLERY_FB','comphocagalleryfb','','comphocagallery/comphocagalleryfb','index.php?option=com_phocagallery&view=phocagalleryfbs','component',0,176,2,10024,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-fb.png',0,'',100,101,0,'',1),(185,'main','COM_PHOCAGALLERY_USERS','comphocagalleryusers','','comphocagallery/comphocagalleryusers','index.php?option=com_phocagallery&view=phocagalleryusers','component',0,176,2,10024,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-users.png',0,'',98,99,0,'',1),(184,'main','COM_PHOCAGALLERY_IMAGECOMMENTS','comphocagalleryimagecomments','','comphocagallery/comphocagalleryimagecomments','index.php?option=com_phocagallery&view=phocagallerycoimgs','component',0,176,2,10024,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-comment-img.png',0,'',96,97,0,'',1),(183,'main','COM_PHOCAGALLERY_CATEGORYCOMMENTS','comphocagallerycategorycomments','','comphocagallery/comphocagallerycategorycomments','index.php?option=com_phocagallery&view=phocagallerycos','component',0,176,2,10024,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-comment.png',0,'',94,95,0,'',1),(182,'main','COM_PHOCAGALLERY_IMAGERATING','comphocagalleryimagerating','','comphocagallery/comphocagalleryimagerating','index.php?option=com_phocagallery&view=phocagalleryraimg','component',0,176,2,10024,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-vote-img.png',0,'',92,93,0,'',1),(180,'main','COM_PHOCAGALLERY_THEMES','comphocagallerythemes','','comphocagallery/comphocagallerythemes','index.php?option=com_phocagallery&view=phocagalleryt','component',0,176,2,10024,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-theme.png',0,'',88,89,0,'',1),(181,'main','COM_PHOCAGALLERY_CATEGORYRATING','comphocagallerycategoryrating','','comphocagallery/comphocagallerycategoryrating','index.php?option=com_phocagallery&view=phocagalleryra','component',0,176,2,10024,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-vote.png',0,'',90,91,0,'',1),(179,'main','COM_PHOCAGALLERY_CATEGORIES','comphocagallerycategories','','comphocagallery/comphocagallerycategories','index.php?option=com_phocagallery&view=phocagallerycs','component',0,176,2,10024,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-cat.png',0,'',86,87,0,'',1),(35,'salvaterra','Sobre a fazenda','sobre-a-fazenda-salvaterra','','sobre-a-fazenda-salvaterra','index.php?option=com_content&view=article&id=14','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"mega_showtitle\":\"1\",\"mega_desc\":\"\",\"mega_cols\":\"1\",\"mega_group\":\"0\",\"mega_width\":\"\",\"mega_colw\":\"\",\"mega_colxw\":\"\",\"mega_class\":\"\",\"mega_subcontent\":\"0\",\"mega_module_style\":\"xhtml\",\"mega_subcontent_mod_modules\":\"17\"}',67,68,0,'*',0),(36,'salvaterra','Búfalos','bufalos-salvaterra','','bufalos-salvaterra','index.php?option=com_content&view=article&id=15','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"mega_showtitle\":\"1\",\"mega_desc\":\"\",\"mega_cols\":\"1\",\"mega_group\":\"0\",\"mega_width\":\"\",\"mega_colw\":\"\",\"mega_colxw\":\"\",\"mega_class\":\"\",\"mega_subcontent\":\"0\",\"mega_module_style\":\"xhtml\",\"mega_subcontent_mod_modules\":\"17\"}',69,70,0,'*',0),(37,'salvaterra','Premiações','premiacoes-salvaterra','','premiacoes-salvaterra','index.php?option=com_content&view=article&id=16','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"mega_showtitle\":\"1\",\"mega_desc\":\"\",\"mega_cols\":\"1\",\"mega_group\":\"0\",\"mega_width\":\"\",\"mega_colw\":\"\",\"mega_colxw\":\"\",\"mega_class\":\"\",\"mega_subcontent\":\"0\",\"mega_module_style\":\"xhtml\",\"mega_subcontent_mod_modules\":\"17\"}',71,72,0,'*',0),(38,'salvaterra','Produtos','produtos-salvaterra','','produtos-salvaterra','index.php?option=com_content&view=article&id=17','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"mega_showtitle\":\"1\",\"mega_desc\":\"\",\"mega_cols\":\"1\",\"mega_group\":\"0\",\"mega_width\":\"\",\"mega_colw\":\"\",\"mega_colxw\":\"\",\"mega_class\":\"\",\"mega_subcontent\":\"0\",\"mega_module_style\":\"xhtml\",\"mega_subcontent_mod_modules\":\"17\"}',73,74,0,'*',0),(39,'salvaterra','Tecnologias','tecnologias-salvaterra','','tecnologias-salvaterra','index.php?option=com_content&view=article&id=18','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"mega_showtitle\":\"1\",\"mega_desc\":\"\",\"mega_cols\":\"1\",\"mega_group\":\"0\",\"mega_width\":\"\",\"mega_colw\":\"\",\"mega_colxw\":\"\",\"mega_class\":\"\",\"mega_subcontent\":\"0\",\"mega_module_style\":\"xhtml\",\"mega_subcontent_mod_modules\":\"17\"}',75,76,0,'*',0),(178,'main','COM_PHOCAGALLERY_IMAGES','comphocagalleryimages','','comphocagallery/comphocagalleryimages','index.php?option=com_phocagallery&view=phocagalleryimgs','component',0,176,2,10024,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu-gal.png',0,'',84,85,0,'',1),(176,'main','COM_PHOCAGALLERY','comphocagallery','','comphocagallery','index.php?option=com_phocagallery','component',0,1,1,10024,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-menu.png',0,'',81,106,0,'',1),(177,'main','COM_PHOCAGALLERY_CONTROLPANEL','comphocagallerycontrolpanel','','comphocagallery/comphocagallerycontrolpanel','index.php?option=com_phocagallery','component',0,176,2,10024,0,0,'0000-00-00 00:00:00',0,1,'components/com_phocagallery/assets/images/icon-16-pg-control-panel.png',0,'',82,83,0,'',1);
/*!40000 ALTER TABLE `par_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_menu_types`
--

DROP TABLE IF EXISTS `par_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_menu_types`
--

LOCK TABLES `par_menu_types` WRITE;
/*!40000 ALTER TABLE `par_menu_types` DISABLE KEYS */;
INSERT INTO `par_menu_types` VALUES (1,'topo','Topo','Topo do site'),(2,'marajo','Marajó','Marajó'),(3,'abaetetuba','Abaetetuba','Abaetetuba'),(4,'salvaterra','Salvaterra','Salvaterra'),(5,'artigos','Artigos','Artigos');
/*!40000 ALTER TABLE `par_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_messages`
--

DROP TABLE IF EXISTS `par_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_messages` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_messages`
--

LOCK TABLES `par_messages` WRITE;
/*!40000 ALTER TABLE `par_messages` DISABLE KEYS */;
INSERT INTO `par_messages` VALUES (1,1,1,0,'2016-06-12 23:16:28',0,0,'Erro ao enviar email','Ocorreu um erro no envio do email de ativação. O erro foi: Não foi possível instanciar a função mail. O usuário que tentou se registrar foi: AlisaStill76');
/*!40000 ALTER TABLE `par_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_messages_cfg`
--

DROP TABLE IF EXISTS `par_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_messages_cfg`
--

LOCK TABLES `par_messages_cfg` WRITE;
/*!40000 ALTER TABLE `par_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_modules`
--

DROP TABLE IF EXISTS `par_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_modules` (
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
  `access` int(10) unsigned DEFAULT NULL,
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_modules`
--

LOCK TABLES `par_modules` WRITE;
/*!40000 ALTER TABLE `par_modules` DISABLE KEYS */;
INSERT INTO `par_modules` VALUES (1,'Topo','','',1,'top',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"topo\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(6,'Unread Messages','','',1,'header',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_unread',3,1,'',1,'*'),(7,'Online Users','','',2,'header',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_online',3,1,'',1,'*'),(8,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,'Área Restrita','','',5,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),(17,'Caminho do Usuário','','',1,'col1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,0,'{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(18,'Banners','','',1,'highlight',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_banners',1,1,'{\"target\":\"1\",\"count\":\"1\",\"cid\":\"0\",\"catid\":[\"\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\",\"footer_text\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(19,'Paraíso I: Marajó','','',2,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"marajo\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(20,'Paraíso II: Abaetetuba','','',3,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"abaetetuba\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(21,'Enquete #1','','',1,'user9',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_nicepoll',1,1,'{\"id\":\"1\",\"template_list\":\"1\",\"template_list_def\":\"default\",\"template_nice_list\":\"1\",\"width_percent\":\"200\",\"display_link\":\"0\",\"ag_fast_refrash\":\"1\",\"ag_real_back\":\"0\",\"ag_show_result\":\"1\",\"ag_disabled_or_del\":\"1\",\"show_resultat\":\"1\",\"already_voted\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(22,'Usuários On-line','','',6,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_whosonline',1,1,'{\"showmode\":\"0\",\"linknames\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),(24,'Busca','','',1,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,0,'{\"label\":\"Busca\",\"width\":\"20\",\"text\":\"Sua busca aqui...\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"\",\"button_text\":\"Buscar\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(26,'Rodapé','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"topo\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(29,'Paraíso III: Salvaterra','','',4,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"salvaterra\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(30,'Enquete #2','','',1,'user10',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_nicepoll',1,1,'{\"id\":\"2\",\"template_list\":\"1\",\"template_list_def\":\"default\",\"template_nice_list\":\"1\",\"width_percent\":\"200\",\"display_link\":\"0\",\"ag_fast_refrash\":\"1\",\"ag_real_back\":\"0\",\"ag_show_result\":\"1\",\"ag_disabled_or_del\":\"1\",\"show_resultat\":\"1\",\"already_voted\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(31,'Enquete #3','','',1,'user11',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_nicepoll',1,1,'{\"id\":\"3\",\"template_list\":\"1\",\"template_list_def\":\"default\",\"template_nice_list\":\"1\",\"width_percent\":\"200\",\"display_link\":\"0\",\"ag_fast_refrash\":\"1\",\"ag_real_back\":\"0\",\"ag_show_result\":\"1\",\"ag_disabled_or_del\":\"1\",\"show_resultat\":\"1\",\"already_voted\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(32,'Notícias em Destaque','','<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td align=\"center\" width=\"10%\"><img src=\"images/paraiso/destaque.png\" border=\"0\" title=\"\" /></td>\r\n<td align=\"justify\" width=\"90%\">No dia 11 de agosto de 2011, o pesquisador da EMBRAPA, <strong>José Ribamar Felipe Marques</strong>, procurou <strong>José Melo da Rocha</strong> para realizar a entrega de um exemplar de seu último lançamento. <a class=\"leiamais\" href=\"dedicatoria-a-joana-rocha.html\" target=\"_self\">Leia Mais »</a></td>\r\n</tr>\r\n</tbody>\r\n</table>',1,'user1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(33,'Últimas Atualizações','','<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td align=\"center\" width=\"12%\"><img src=\"images/paraiso/atualizacoes.png\" border=\"0\" title=\"\" /></td>\r\n<td align=\"justify\" width=\"88%\">As Fazendas Paraíso ganharam mais um reforço com a aquisição da nova propriedade, que era um retiro da Fazenda São Miguel, de propriedade do Engenheiro Agrônomo Ronaldo Baena... <a class=\"leiamais\" href=\"sobre-a-fazenda-salvaterra.html\" target=\"_self\">Leia Mais »</a></td>\r\n</tr>\r\n</tbody>\r\n</table>',1,'user3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(39,'SlideShow','','',1,'slideshow',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_zt_slideshow',1,0,'{\"moduleclass_sfx\":\"\",\"folder\":\"images\\/paraiso\\/slideshow\",\"order\":\"0\",\"autorun\":\"1\",\"transition\":\"fade\",\"width\":\"960\",\"height\":\"280\",\"duration\":\"800\",\"delay\":\"5000\",\"background\":\"6f9a50\",\"arrows\":\"0\",\"showtitle\":\"0\",\"showdescription\":\"0\",\"linkable\":\"0\",\"newwindow\":\"0\",\"intro_lenght\":\"200\",\"title\":\"\",\"link\":\"\",\"description\":\"\"}',0,'*'),(40,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*');
/*!40000 ALTER TABLE `par_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_modules_menu`
--

DROP TABLE IF EXISTS `par_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_modules_menu`
--

LOCK TABLES `par_modules_menu` WRITE;
/*!40000 ALTER TABLE `par_modules_menu` DISABLE KEYS */;
INSERT INTO `par_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(18,0),(19,0),(20,0),(21,0),(22,0),(24,0),(26,0),(29,0),(30,0),(31,0),(32,0),(33,0),(34,0),(35,0),(36,0),(39,0),(40,0);
/*!40000 ALTER TABLE `par_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_newsfeeds`
--

DROP TABLE IF EXISTS `par_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_newsfeeds` (
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
  `access` int(10) unsigned DEFAULT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_newsfeeds`
--

LOCK TABLES `par_newsfeeds` WRITE;
/*!40000 ALTER TABLE `par_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_overrider`
--

DROP TABLE IF EXISTS `par_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_overrider`
--

LOCK TABLES `par_overrider` WRITE;
/*!40000 ALTER TABLE `par_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_phocagallery`
--

DROP TABLE IF EXISTS `par_phocagallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_phocagallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `videocode` text,
  `vmproductid` int(11) NOT NULL DEFAULT '0',
  `imgorigsize` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `extlink1` text,
  `extlink2` text,
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exttype` tinyint(1) NOT NULL DEFAULT '0',
  `extl` varchar(255) NOT NULL DEFAULT '',
  `extm` varchar(255) NOT NULL DEFAULT '',
  `exts` varchar(255) NOT NULL DEFAULT '',
  `exto` varchar(255) NOT NULL DEFAULT '',
  `extw` varchar(255) NOT NULL DEFAULT '',
  `exth` varchar(255) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_phocagallery`
--

LOCK TABLES `par_phocagallery` WRITE;
/*!40000 ALTER TABLE `par_phocagallery` DISABLE KEYS */;
INSERT INTO `par_phocagallery` VALUES (1,1,0,'img001','img001','galeria-de-fotos-marajo/img001.jpg',NULL,'2011-08-11 18:30:35',176,'0','0',0,'',0,NULL,0,340478,1,1,0,'0000-00-00 00:00:00',1,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(2,1,0,'img002','img002','galeria-de-fotos-marajo/img002.jpg',NULL,'2011-08-11 18:30:36',170,'0','0',0,'',0,NULL,0,329424,1,1,0,'0000-00-00 00:00:00',2,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(3,1,0,'img003','img003','galeria-de-fotos-marajo/img003.jpg',NULL,'2011-08-11 18:30:36',156,'0','0',0,'',0,NULL,0,267563,1,1,0,'0000-00-00 00:00:00',3,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(4,1,0,'img004','img004','galeria-de-fotos-marajo/img004.jpg',NULL,'2011-08-11 18:30:36',167,'0','0',0,'',0,NULL,0,262092,1,1,0,'0000-00-00 00:00:00',4,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(5,1,0,'img005','img005','galeria-de-fotos-marajo/img005.jpg',NULL,'2011-08-11 18:30:36',162,'0','0',0,'',0,NULL,0,405454,1,1,0,'0000-00-00 00:00:00',5,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(6,1,0,'img006','img006','galeria-de-fotos-marajo/img006.jpg',NULL,'2011-08-11 18:30:36',195,'0','0',0,'',0,NULL,0,312355,1,1,0,'0000-00-00 00:00:00',6,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(7,1,0,'img007','img007','galeria-de-fotos-marajo/img007.jpg',NULL,'2011-08-11 18:30:36',171,'0','0',0,'',0,NULL,0,219034,1,1,0,'0000-00-00 00:00:00',7,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(8,1,0,'img008','img008','galeria-de-fotos-marajo/img008.jpg',NULL,'2011-08-11 18:30:37',159,'0','0',0,'',0,NULL,0,174091,1,1,0,'0000-00-00 00:00:00',8,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(9,1,0,'img009','img009','galeria-de-fotos-marajo/img009.jpg',NULL,'2011-08-11 18:30:38',149,'0','0',0,'',0,NULL,0,206925,1,1,0,'0000-00-00 00:00:00',9,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(10,1,0,'img010','img010','galeria-de-fotos-marajo/img010.jpg',NULL,'2011-08-11 18:30:41',160,'0','0',0,'',0,NULL,0,241201,1,1,0,'0000-00-00 00:00:00',10,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(11,1,0,'img011','img011','galeria-de-fotos-marajo/img011.jpg',NULL,'2011-08-11 18:30:41',149,'0','0',0,'',0,NULL,0,301778,1,1,0,'0000-00-00 00:00:00',11,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(12,1,0,'img012','img012','galeria-de-fotos-marajo/img012.jpg',NULL,'2011-08-11 18:30:41',159,'0','0',0,'',0,NULL,0,222393,1,1,0,'0000-00-00 00:00:00',12,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(13,1,0,'img013','img013','galeria-de-fotos-marajo/img013.jpg',NULL,'2011-08-11 18:30:43',163,'0','0',0,'',0,NULL,0,205470,1,1,0,'0000-00-00 00:00:00',13,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(14,1,0,'img014','img014','galeria-de-fotos-marajo/img014.jpg',NULL,'2011-08-11 18:30:44',161,'0','0',0,'',0,NULL,0,133644,1,1,0,'0000-00-00 00:00:00',14,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(15,1,0,'img015','img015','galeria-de-fotos-marajo/img015.jpg',NULL,'2011-08-11 18:30:44',165,'0','0',0,'',0,NULL,0,312349,1,1,0,'0000-00-00 00:00:00',15,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(16,2,0,'img001','img001','galeria-de-fotos-abaetetuba/img001.jpg',NULL,'2011-08-11 18:42:08',128,'0','0',0,'',0,NULL,0,300901,1,1,0,'0000-00-00 00:00:00',1,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(17,2,0,'img002','img002','galeria-de-fotos-abaetetuba/img002.jpg',NULL,'2011-08-11 18:42:09',129,'0','0',0,'',0,NULL,0,341378,1,1,0,'0000-00-00 00:00:00',2,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(18,2,0,'img003','img003','galeria-de-fotos-abaetetuba/img003.jpg',NULL,'2011-08-11 18:42:09',138,'0','0',0,'',0,NULL,0,476504,1,1,0,'0000-00-00 00:00:00',3,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(19,2,0,'img004','img004','galeria-de-fotos-abaetetuba/img004.jpg',NULL,'2011-08-11 18:42:09',120,'0','0',0,'',0,NULL,0,354839,1,1,0,'0000-00-00 00:00:00',4,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(20,2,0,'img005','img005','galeria-de-fotos-abaetetuba/img005.jpg',NULL,'2011-08-11 18:42:10',122,'0','0',0,'',0,NULL,0,510996,1,1,0,'0000-00-00 00:00:00',5,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(21,2,0,'img006','img006','galeria-de-fotos-abaetetuba/img006.jpg',NULL,'2011-08-11 18:42:10',117,'0','0',0,'',0,NULL,0,629023,1,1,0,'0000-00-00 00:00:00',6,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(22,2,0,'img007','img007','galeria-de-fotos-abaetetuba/img007.jpg',NULL,'2011-08-11 18:42:10',133,'0','0',0,'',0,NULL,0,466823,1,1,0,'0000-00-00 00:00:00',7,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(23,2,0,'img008','img008','galeria-de-fotos-abaetetuba/img008.jpg',NULL,'2011-08-11 18:42:10',124,'0','0',0,'',0,NULL,0,337532,1,1,0,'0000-00-00 00:00:00',8,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(24,2,0,'img009','img009','galeria-de-fotos-abaetetuba/img009.jpg',NULL,'2011-08-11 18:42:10',120,'0','0',0,'',0,NULL,0,352969,1,1,0,'0000-00-00 00:00:00',9,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(25,2,0,'img010','img010','galeria-de-fotos-abaetetuba/img010.jpg',NULL,'2011-08-11 18:42:11',133,'0','0',0,'',0,NULL,0,319540,1,1,0,'0000-00-00 00:00:00',10,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(26,2,0,'img011','img011','galeria-de-fotos-abaetetuba/img011.jpg',NULL,'2011-08-11 18:42:11',130,'0','0',0,'',0,NULL,0,360958,1,1,0,'0000-00-00 00:00:00',11,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(27,2,0,'img012','img012','galeria-de-fotos-abaetetuba/img012.jpg',NULL,'2011-08-11 18:42:11',143,'0','0',0,'',0,NULL,0,369232,1,1,0,'0000-00-00 00:00:00',12,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(28,2,0,'img013','img013','galeria-de-fotos-abaetetuba/img013.jpg',NULL,'2011-08-11 18:42:11',143,'0','0',0,'',0,NULL,0,326810,1,1,0,'0000-00-00 00:00:00',13,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(29,2,0,'img014','img014','galeria-de-fotos-abaetetuba/img014.jpg',NULL,'2011-08-11 18:42:11',133,'0','0',0,'',0,NULL,0,404540,1,1,0,'0000-00-00 00:00:00',14,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(30,2,0,'img015','img015','galeria-de-fotos-abaetetuba/img015.jpg',NULL,'2011-08-11 18:42:11',152,'0','0',0,'',0,NULL,0,398666,1,1,0,'0000-00-00 00:00:00',15,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(31,2,0,'img016','img016','galeria-de-fotos-abaetetuba/img016.jpg',NULL,'2011-08-11 18:42:12',146,'0','0',0,'',0,NULL,0,289094,1,1,0,'0000-00-00 00:00:00',16,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(32,2,0,'img017','img017','galeria-de-fotos-abaetetuba/img017.jpg',NULL,'2011-08-11 18:42:12',139,'0','0',0,'',0,NULL,0,421717,1,1,0,'0000-00-00 00:00:00',17,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(33,2,0,'img018','img018','galeria-de-fotos-abaetetuba/img018.jpg',NULL,'2011-08-11 18:42:13',154,'0','0',0,'',0,NULL,0,482432,1,1,0,'0000-00-00 00:00:00',18,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(34,2,0,'img019','img019','galeria-de-fotos-abaetetuba/img019.jpg',NULL,'2011-08-11 18:42:14',140,'0','0',0,'',0,NULL,0,481026,1,1,0,'0000-00-00 00:00:00',19,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(35,2,0,'img020','img020','galeria-de-fotos-abaetetuba/img020.jpg',NULL,'2011-08-11 18:42:15',166,'0','0',0,'',0,NULL,0,412588,1,1,0,'0000-00-00 00:00:00',20,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(36,2,0,'img021','img021','galeria-de-fotos-abaetetuba/img021.jpg',NULL,'2011-08-11 18:42:16',138,'0','0',0,'',0,NULL,0,241946,1,1,0,'0000-00-00 00:00:00',21,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(37,2,0,'img022','img022','galeria-de-fotos-abaetetuba/img022.jpg',NULL,'2011-08-11 18:42:16',140,'0','0',0,'',0,NULL,0,260584,1,1,0,'0000-00-00 00:00:00',22,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(38,2,0,'img023','img023','galeria-de-fotos-abaetetuba/img023.jpg',NULL,'2011-08-11 18:42:17',123,'0','0',0,'',0,NULL,0,240409,1,1,0,'0000-00-00 00:00:00',23,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(39,3,0,'img001','img001','exportacao-de-bufalos-para-venezuela/img001.jpg',NULL,'2011-08-11 19:01:57',167,'0','0',0,'',0,NULL,0,548878,1,1,0,'0000-00-00 00:00:00',1,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(40,3,0,'img002','img002','exportacao-de-bufalos-para-venezuela/img002.jpg',NULL,'2011-08-11 19:01:57',158,'0','0',0,'',0,NULL,0,472905,1,1,0,'0000-00-00 00:00:00',2,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(41,3,0,'img003','img003','exportacao-de-bufalos-para-venezuela/img003.jpg',NULL,'2011-08-11 19:01:57',143,'0','0',0,'',0,NULL,0,481307,1,1,0,'0000-00-00 00:00:00',3,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(42,3,0,'img004','img004','exportacao-de-bufalos-para-venezuela/img004.jpg',NULL,'2011-08-11 19:01:57',181,'0','0',0,'',0,NULL,0,538830,1,1,0,'0000-00-00 00:00:00',4,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(43,3,0,'img005','img005','exportacao-de-bufalos-para-venezuela/img005.jpg',NULL,'2011-08-11 19:01:57',160,'0','0',0,'',0,NULL,0,479920,1,1,0,'0000-00-00 00:00:00',5,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(44,3,0,'img006','img006','exportacao-de-bufalos-para-venezuela/img006.jpg',NULL,'2011-08-11 19:01:57',142,'0','0',0,'',0,NULL,0,539317,1,1,0,'0000-00-00 00:00:00',6,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(45,3,0,'img007','img007','exportacao-de-bufalos-para-venezuela/img007.jpg',NULL,'2011-08-11 19:01:57',135,'0','0',0,'',0,NULL,0,571700,1,1,0,'0000-00-00 00:00:00',7,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(46,3,0,'img008','img008','exportacao-de-bufalos-para-venezuela/img008.jpg',NULL,'2011-08-11 19:01:57',138,'0','0',0,'',0,NULL,0,589787,1,1,0,'0000-00-00 00:00:00',8,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(47,3,0,'img009','img009','exportacao-de-bufalos-para-venezuela/img009.jpg',NULL,'2011-08-11 19:01:57',142,'0','0',0,'',0,NULL,0,589279,1,1,0,'0000-00-00 00:00:00',9,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(48,3,0,'img010','img010','exportacao-de-bufalos-para-venezuela/img010.jpg',NULL,'2011-08-11 19:01:57',142,'0','0',0,'',0,NULL,0,426299,1,1,0,'0000-00-00 00:00:00',10,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(49,3,0,'img011','img011','exportacao-de-bufalos-para-venezuela/img011.jpg',NULL,'2011-08-11 19:01:57',160,'0','0',0,'',0,NULL,0,515929,1,1,0,'0000-00-00 00:00:00',11,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(50,4,0,'img001','img001','galeria-de-fotos-abaetetuba-parte-2/img001.jpg',NULL,'2011-08-11 19:24:41',124,'0','0',0,'',0,NULL,0,196663,1,1,0,'0000-00-00 00:00:00',1,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(51,4,0,'img002','img002','galeria-de-fotos-abaetetuba-parte-2/img002.jpg',NULL,'2011-08-11 19:24:41',126,'0','0',0,'',0,NULL,0,360158,1,1,0,'0000-00-00 00:00:00',2,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(52,4,0,'img003','img003','galeria-de-fotos-abaetetuba-parte-2/img003.jpg',NULL,'2011-08-11 19:24:41',113,'0','0',0,'',0,NULL,0,299509,1,1,0,'0000-00-00 00:00:00',3,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(53,4,0,'img004','img004','galeria-de-fotos-abaetetuba-parte-2/img004.jpg',NULL,'2011-08-11 19:24:41',129,'0','0',0,'',0,NULL,0,258420,1,1,0,'0000-00-00 00:00:00',4,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(54,4,0,'img005','img005','galeria-de-fotos-abaetetuba-parte-2/img005.jpg',NULL,'2011-08-11 19:24:41',122,'0','0',0,'',0,NULL,0,272271,1,1,0,'0000-00-00 00:00:00',5,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(55,4,0,'img006','img006','galeria-de-fotos-abaetetuba-parte-2/img006.jpg',NULL,'2011-08-11 19:24:41',128,'0','0',0,'',0,NULL,0,254187,1,1,0,'0000-00-00 00:00:00',6,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(56,4,0,'img007','img007','galeria-de-fotos-abaetetuba-parte-2/img007.jpg',NULL,'2011-08-11 19:24:41',123,'0','0',0,'',0,NULL,0,261107,1,1,0,'0000-00-00 00:00:00',7,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(57,4,0,'img008','img008','galeria-de-fotos-abaetetuba-parte-2/img008.jpg',NULL,'2011-08-11 19:24:41',124,'0','0',0,'',0,NULL,0,350154,1,1,0,'0000-00-00 00:00:00',8,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(58,4,0,'img009','img009','galeria-de-fotos-abaetetuba-parte-2/img009.jpg','','2011-08-11 19:24:41',130,'0','0',0,'',0,'',0,579352,1,1,0,'0000-00-00 00:00:00',9,NULL,'','',NULL,NULL,NULL,'',0,'','','','','','','*'),(59,4,0,'img010','img010','galeria-de-fotos-abaetetuba-parte-2/img010.jpg',NULL,'2011-08-11 19:24:41',132,'0','0',0,'',0,NULL,0,314019,1,1,0,'0000-00-00 00:00:00',10,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(60,4,0,'img011','img011','galeria-de-fotos-abaetetuba-parte-2/img011.jpg',NULL,'2011-08-11 19:24:41',121,'0','0',0,'',0,NULL,0,243465,1,1,0,'0000-00-00 00:00:00',11,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(61,4,0,'img012','img012','galeria-de-fotos-abaetetuba-parte-2/img012.jpg',NULL,'2011-08-11 19:24:41',120,'0','0',0,'',0,NULL,0,274245,1,1,0,'0000-00-00 00:00:00',12,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(62,4,0,'img013','img013','galeria-de-fotos-abaetetuba-parte-2/img013.jpg',NULL,'2011-08-11 19:24:41',120,'0','0',0,'',0,NULL,0,250201,1,1,0,'0000-00-00 00:00:00',13,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(63,4,0,'img014','img014','galeria-de-fotos-abaetetuba-parte-2/img014.jpg',NULL,'2011-08-11 19:24:41',119,'0','0',0,'',0,NULL,0,204989,1,1,0,'0000-00-00 00:00:00',14,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(64,4,0,'img015','img015','galeria-de-fotos-abaetetuba-parte-2/img015.jpg',NULL,'2011-08-11 19:24:41',121,'0','0',0,'',0,NULL,0,461449,1,1,0,'0000-00-00 00:00:00',15,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(65,4,0,'img016','img016','galeria-de-fotos-abaetetuba-parte-2/img016.jpg',NULL,'2011-08-11 19:24:41',115,'0','0',0,'',0,NULL,0,263376,1,1,0,'0000-00-00 00:00:00',16,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(66,4,0,'img017','img017','galeria-de-fotos-abaetetuba-parte-2/img017.jpg',NULL,'2011-08-11 19:24:41',126,'0','0',0,'',0,NULL,0,303353,1,1,0,'0000-00-00 00:00:00',17,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(67,4,0,'img018','img018','galeria-de-fotos-abaetetuba-parte-2/img018.jpg',NULL,'2011-08-11 19:24:41',123,'0','0',0,'',0,NULL,0,345686,1,1,0,'0000-00-00 00:00:00',18,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(68,4,0,'img019','img019','galeria-de-fotos-abaetetuba-parte-2/img019.jpg',NULL,'2011-08-11 19:24:41',120,'0','0',0,'',0,NULL,0,250299,1,1,0,'0000-00-00 00:00:00',19,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(69,4,0,'img020','img020','galeria-de-fotos-abaetetuba-parte-2/img020.jpg',NULL,'2011-08-11 19:24:41',120,'0','0',0,'',0,NULL,0,301249,1,1,0,'0000-00-00 00:00:00',20,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(70,4,0,'img021','img021','galeria-de-fotos-abaetetuba-parte-2/img021.jpg',NULL,'2011-08-11 19:24:41',96,'0','0',0,'',0,NULL,0,283422,1,1,0,'0000-00-00 00:00:00',21,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(71,4,0,'img022','img022','galeria-de-fotos-abaetetuba-parte-2/img022.jpg',NULL,'2011-08-11 19:24:41',96,'0','0',0,'',0,NULL,0,496255,1,1,0,'0000-00-00 00:00:00',22,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(72,4,0,'img023','img023','galeria-de-fotos-abaetetuba-parte-2/img023.jpg',NULL,'2011-08-11 19:24:41',93,'0','0',0,'',0,NULL,0,339561,1,1,0,'0000-00-00 00:00:00',23,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(73,4,0,'img024','img024','galeria-de-fotos-abaetetuba-parte-2/img024.jpg',NULL,'2011-08-11 19:24:41',87,'0','0',0,'',0,NULL,0,329906,1,1,0,'0000-00-00 00:00:00',24,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(74,4,0,'img025','img025','galeria-de-fotos-abaetetuba-parte-2/img025.jpg',NULL,'2011-08-11 19:24:41',93,'0','0',0,'',0,NULL,0,476960,1,1,0,'0000-00-00 00:00:00',25,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(75,4,0,'img026','img026','galeria-de-fotos-abaetetuba-parte-2/img026.jpg',NULL,'2011-08-11 19:24:41',96,'0','0',0,'',0,NULL,0,208537,1,1,0,'0000-00-00 00:00:00',26,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(76,4,0,'img027','img027','galeria-de-fotos-abaetetuba-parte-2/img027.jpg',NULL,'2011-08-11 19:24:41',89,'0','0',0,'',0,NULL,0,345673,1,1,0,'0000-00-00 00:00:00',27,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(77,4,0,'img028','img028','galeria-de-fotos-abaetetuba-parte-2/img028.jpg',NULL,'2011-08-11 19:24:41',89,'0','0',0,'',0,NULL,0,322549,1,1,0,'0000-00-00 00:00:00',28,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(78,4,0,'img029','img029','galeria-de-fotos-abaetetuba-parte-2/img029.jpg',NULL,'2011-08-11 19:24:41',86,'0','0',0,'',0,NULL,0,325306,1,1,0,'0000-00-00 00:00:00',29,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(79,4,0,'img030','img030','galeria-de-fotos-abaetetuba-parte-2/img030.jpg',NULL,'2011-08-11 19:24:41',94,'0','0',0,'',0,NULL,0,370827,1,1,0,'0000-00-00 00:00:00',30,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(80,4,0,'img031','img031','galeria-de-fotos-abaetetuba-parte-2/img031.jpg',NULL,'2011-08-11 19:24:41',85,'0','0',0,'',0,NULL,0,339412,1,1,0,'0000-00-00 00:00:00',31,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(81,4,0,'img032','img032','galeria-de-fotos-abaetetuba-parte-2/img032.jpg',NULL,'2011-08-11 19:24:41',83,'0','0',0,'',0,NULL,0,316953,1,1,0,'0000-00-00 00:00:00',32,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(82,4,0,'img033','img033','galeria-de-fotos-abaetetuba-parte-2/img033.jpg',NULL,'2011-08-11 19:24:41',94,'0','0',0,'',0,NULL,0,261367,1,1,0,'0000-00-00 00:00:00',33,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(83,4,0,'img034','img034','galeria-de-fotos-abaetetuba-parte-2/img034.jpg',NULL,'2011-08-11 19:24:41',93,'0','0',0,'',0,NULL,0,337668,1,1,0,'0000-00-00 00:00:00',34,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(84,4,0,'img035','img035','galeria-de-fotos-abaetetuba-parte-2/img035.jpg',NULL,'2011-08-11 19:24:41',93,'0','0',0,'',0,NULL,0,254220,1,1,0,'0000-00-00 00:00:00',35,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(85,4,0,'img036','img036','galeria-de-fotos-abaetetuba-parte-2/img036.jpg',NULL,'2011-08-11 19:24:41',90,'0','0',0,'',0,NULL,0,221599,1,1,0,'0000-00-00 00:00:00',36,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(86,4,0,'img037','img037','galeria-de-fotos-abaetetuba-parte-2/img037.jpg',NULL,'2011-08-11 19:24:41',90,'0','0',0,'',0,NULL,0,673548,1,1,0,'0000-00-00 00:00:00',37,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(87,4,0,'img038','img038','galeria-de-fotos-abaetetuba-parte-2/img038.jpg',NULL,'2011-08-11 19:24:41',96,'0','0',0,'',0,NULL,0,561778,1,1,0,'0000-00-00 00:00:00',38,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(88,4,0,'img039','img039','galeria-de-fotos-abaetetuba-parte-2/img039.jpg',NULL,'2011-08-11 19:24:41',94,'0','0',0,'',0,NULL,0,569086,1,1,0,'0000-00-00 00:00:00',39,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(89,4,0,'img040','img040','galeria-de-fotos-abaetetuba-parte-2/img040.jpg',NULL,'2011-08-11 19:24:41',95,'0','0',0,'',0,NULL,0,566822,1,1,0,'0000-00-00 00:00:00',40,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(90,4,0,'img041','img041','galeria-de-fotos-abaetetuba-parte-2/img041.jpg',NULL,'2011-08-11 19:24:41',110,'0','0',0,'',0,NULL,0,404233,1,1,0,'0000-00-00 00:00:00',41,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(91,4,0,'img042','img042','galeria-de-fotos-abaetetuba-parte-2/img042.jpg',NULL,'2011-08-11 19:24:41',87,'0','0',0,'',0,NULL,0,233284,1,1,0,'0000-00-00 00:00:00',42,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(92,4,0,'img043','img043','galeria-de-fotos-abaetetuba-parte-2/img043.jpg',NULL,'2011-08-11 19:24:41',89,'0','0',0,'',0,NULL,0,278167,1,1,0,'0000-00-00 00:00:00',43,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(94,5,0,'img001','img001','vacinacao-contra-febre-aftosa/img001.jpg',NULL,'2011-08-21 00:58:47',116,'0','0',0,'',0,NULL,0,516748,1,1,0,'0000-00-00 00:00:00',1,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(95,5,0,'img002','img002','vacinacao-contra-febre-aftosa/img002.jpg',NULL,'2011-08-21 00:58:47',98,'0','0',0,'',0,NULL,0,511930,1,1,0,'0000-00-00 00:00:00',2,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(96,5,0,'img003','img003','vacinacao-contra-febre-aftosa/img003.jpg',NULL,'2011-08-21 00:58:47',92,'0','0',0,'',0,NULL,0,307693,1,1,0,'0000-00-00 00:00:00',3,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(97,5,0,'img004','img004','vacinacao-contra-febre-aftosa/img004.jpg',NULL,'2011-08-21 00:58:47',100,'0','0',0,'',0,NULL,0,378233,1,1,0,'0000-00-00 00:00:00',4,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(98,5,0,'img005','img005','vacinacao-contra-febre-aftosa/img005.jpg',NULL,'2011-08-21 00:58:47',94,'0','0',0,'',0,NULL,0,379541,1,1,0,'0000-00-00 00:00:00',5,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(99,5,0,'img006','img006','vacinacao-contra-febre-aftosa/img006.jpg',NULL,'2011-08-21 00:58:47',115,'0','0',0,'',0,NULL,0,376308,1,1,0,'0000-00-00 00:00:00',6,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(100,5,0,'img007','img007','vacinacao-contra-febre-aftosa/img007.jpg',NULL,'2011-08-21 00:58:47',99,'0','0',0,'',0,NULL,0,351504,1,1,0,'0000-00-00 00:00:00',7,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(101,5,0,'img008','img008','vacinacao-contra-febre-aftosa/img008.jpg','','2011-08-22 19:39:31',101,'0','0',0,'',0,'',0,374204,1,1,0,'0000-00-00 00:00:00',8,NULL,'','',NULL,NULL,NULL,'',0,'','','','','','','*'),(102,5,0,'img009','img009','vacinacao-contra-febre-aftosa/img009.jpg','','2011-08-22 19:39:31',95,'0','0',0,'',0,'',0,368999,1,1,0,'0000-00-00 00:00:00',9,NULL,'','',NULL,NULL,NULL,'',0,'','','','','','','*'),(103,5,0,'img010','img010','vacinacao-contra-febre-aftosa/img010.jpg','','2011-08-22 19:39:32',94,'0','0',0,'',0,'',0,367660,1,1,0,'0000-00-00 00:00:00',10,NULL,'','',NULL,NULL,NULL,'',0,'','','','','','','*'),(104,5,0,'img011','img011','vacinacao-contra-febre-aftosa/img011.jpg','','2011-08-22 19:39:32',103,'0','0',0,'',0,'',0,351504,1,1,0,'0000-00-00 00:00:00',11,NULL,'','',NULL,NULL,NULL,'',0,'','','','','','','*'),(105,6,0,'img001','img001','galeria-de-fotos-marajo-parte-2/img001.jpg',NULL,'2011-08-23 22:58:29',98,'0','0',0,'',0,NULL,0,255892,1,1,0,'0000-00-00 00:00:00',1,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(106,6,0,'img002','img002','galeria-de-fotos-marajo-parte-2/img002.jpg',NULL,'2011-08-23 22:58:29',105,'0','0',0,'',0,NULL,0,253373,1,1,0,'0000-00-00 00:00:00',2,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(107,6,0,'img003','img003','galeria-de-fotos-marajo-parte-2/img003.jpg',NULL,'2011-08-23 22:58:29',103,'0','0',0,'',0,NULL,0,391241,1,1,0,'0000-00-00 00:00:00',3,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(108,6,0,'img004','img004','galeria-de-fotos-marajo-parte-2/img004.jpg',NULL,'2011-08-23 22:58:29',103,'0','0',0,'',0,NULL,0,294232,1,1,0,'0000-00-00 00:00:00',4,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(109,6,0,'img005','img005','galeria-de-fotos-marajo-parte-2/img005.jpg',NULL,'2011-08-23 22:58:29',111,'0','0',0,'',0,NULL,0,248347,1,1,0,'0000-00-00 00:00:00',5,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(110,6,0,'img006','img006','galeria-de-fotos-marajo-parte-2/img006.jpg',NULL,'2011-08-23 22:58:29',107,'0','0',0,'',0,NULL,0,307112,1,1,0,'0000-00-00 00:00:00',6,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(111,6,0,'img007','img007','galeria-de-fotos-marajo-parte-2/img007.jpg',NULL,'2011-08-23 22:58:29',101,'0','0',0,'',0,NULL,0,211491,1,1,0,'0000-00-00 00:00:00',7,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(112,6,0,'img008','img008','galeria-de-fotos-marajo-parte-2/img008.jpg',NULL,'2011-08-23 22:58:29',99,'0','0',0,'',0,NULL,0,165960,1,1,0,'0000-00-00 00:00:00',8,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(113,6,0,'img009','img009','galeria-de-fotos-marajo-parte-2/img009.jpg',NULL,'2011-08-23 22:58:29',102,'0','0',0,'',0,NULL,0,232744,1,1,0,'0000-00-00 00:00:00',9,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(114,6,0,'img010','img010','galeria-de-fotos-marajo-parte-2/img010.jpg',NULL,'2011-08-23 22:58:29',108,'0','0',0,'',0,NULL,0,291268,1,1,0,'0000-00-00 00:00:00',10,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(115,6,0,'img011','img011','galeria-de-fotos-marajo-parte-2/img011.jpg',NULL,'2011-08-23 22:58:29',96,'0','0',0,'',0,NULL,0,214106,1,1,0,'0000-00-00 00:00:00',11,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(116,6,0,'img012','img012','galeria-de-fotos-marajo-parte-2/img012.jpg',NULL,'2011-08-23 22:58:29',100,'0','0',0,'',0,NULL,0,197567,1,1,0,'0000-00-00 00:00:00',12,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(117,6,0,'img013','img013','galeria-de-fotos-marajo-parte-2/img013.jpg',NULL,'2011-08-23 22:58:29',95,'0','0',0,'',0,NULL,0,127709,1,1,0,'0000-00-00 00:00:00',13,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(118,6,0,'img014','img014','galeria-de-fotos-marajo-parte-2/img014.jpg',NULL,'2011-08-23 22:58:29',105,'0','0',0,'',0,NULL,0,301475,1,1,0,'0000-00-00 00:00:00',14,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(119,6,0,'img015','img015','galeria-de-fotos-marajo-parte-2/img015.jpg',NULL,'2011-08-23 22:58:29',103,'0','0',0,'',0,NULL,0,368305,1,1,0,'0000-00-00 00:00:00',15,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(120,6,0,'img016','img016','galeria-de-fotos-marajo-parte-2/img016.jpg',NULL,'2011-08-23 22:58:29',100,'0','0',0,'',0,NULL,0,280999,1,1,0,'0000-00-00 00:00:00',16,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*'),(121,6,0,'img017','img017','galeria-de-fotos-marajo-parte-2/img017.jpg',NULL,'2011-08-23 22:58:29',109,'0','0',0,'',0,NULL,0,272996,1,1,0,'0000-00-00 00:00:00',17,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','','','','','','*');
/*!40000 ALTER TABLE `par_phocagallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_phocagallery_categories`
--

DROP TABLE IF EXISTS `par_phocagallery_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_phocagallery_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `accessuserid` text,
  `uploaduserid` text,
  `deleteuserid` text,
  `userfolder` text,
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exta` varchar(255) NOT NULL DEFAULT '',
  `extu` varchar(255) NOT NULL DEFAULT '',
  `extauth` varchar(255) NOT NULL DEFAULT '',
  `extfbuid` int(11) NOT NULL DEFAULT '0',
  `extfbcatid` varchar(255) NOT NULL DEFAULT '',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_phocagallery_categories`
--

LOCK TABLES `par_phocagallery_categories` WRITE;
/*!40000 ALTER TABLE `par_phocagallery_categories` DISABLE KEYS */;
INSERT INTO `par_phocagallery_categories` VALUES (1,0,-1,'Galeria de Fotos da Fazenda Paraíso I: Marajó','','galeria-de-fotos-marajo','','','','','0000-00-00 00:00:00',1,1,0,'0000-00-00 00:00:00',NULL,1,1,0,251,'-1','1','1','','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),(2,0,-1,'Galeria de Fotos da Fazenda Paraíso II: Abaetetuba','','galeria-de-fotos-abaetetuba','','','','','0000-00-00 00:00:00',1,1,0,'0000-00-00 00:00:00',NULL,3,1,0,329,'-1','1','1','','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),(3,0,-1,'Exportação de Búfalos para Venezuela','','exportacao-de-bufalos-para-venezuela','','','','','0000-00-00 00:00:00',1,1,0,'0000-00-00 00:00:00',NULL,6,1,0,185,'-1','1','1','','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),(4,0,-1,'Galeria de Fotos da Fazenda Paraíso II: Abaetetuba (Parte 2)','','galeria-de-fotos-abaetetuba-parte-2','','','','','0000-00-00 00:00:00',1,1,0,'0000-00-00 00:00:00',NULL,4,1,0,326,'-1','1','1','','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),(5,0,-1,'Vacinação contra Febre Aftosa','','vacinacao-contra-febre-aftosa','','','','','0000-00-00 00:00:00',1,1,0,'0000-00-00 00:00:00',NULL,7,1,0,121,'-1','1','1','','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),(6,0,-1,'Galeria de Fotos da Fazenda Paraíso I: Marajó (Parte 2)','','galeria-de-fotos-marajo-parte-2','','','','','0000-00-00 00:00:00',1,1,0,'0000-00-00 00:00:00',NULL,2,1,0,178,'-1','1','1','','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),(7,0,-1,'Galeria de Fotos da Fazenda Paraíso III: Salvaterra','','galeria-de-fotos-salvaterra','','','','','0000-00-00 00:00:00',1,1,0,'0000-00-00 00:00:00',NULL,5,1,0,11,'-1','1','1','','','',0,'','','','','',0,'',NULL,'','',NULL,'*');
/*!40000 ALTER TABLE `par_phocagallery_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_phocagallery_comments`
--

DROP TABLE IF EXISTS `par_phocagallery_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_phocagallery_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_phocagallery_comments`
--

LOCK TABLES `par_phocagallery_comments` WRITE;
/*!40000 ALTER TABLE `par_phocagallery_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_phocagallery_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_phocagallery_fb_users`
--

DROP TABLE IF EXISTS `par_phocagallery_fb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_phocagallery_fb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) NOT NULL DEFAULT '',
  `appsid` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `secret` varchar(255) NOT NULL DEFAULT '',
  `base_domain` varchar(255) NOT NULL DEFAULT '',
  `expires` varchar(100) NOT NULL DEFAULT '',
  `session_key` text,
  `access_token` text,
  `sig` text,
  `fanpageid` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_phocagallery_fb_users`
--

LOCK TABLES `par_phocagallery_fb_users` WRITE;
/*!40000 ALTER TABLE `par_phocagallery_fb_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_phocagallery_fb_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_phocagallery_img_comments`
--

DROP TABLE IF EXISTS `par_phocagallery_img_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_phocagallery_img_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_phocagallery_img_comments`
--

LOCK TABLES `par_phocagallery_img_comments` WRITE;
/*!40000 ALTER TABLE `par_phocagallery_img_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_phocagallery_img_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_phocagallery_img_votes`
--

DROP TABLE IF EXISTS `par_phocagallery_img_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_phocagallery_img_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_phocagallery_img_votes`
--

LOCK TABLES `par_phocagallery_img_votes` WRITE;
/*!40000 ALTER TABLE `par_phocagallery_img_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_phocagallery_img_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_phocagallery_img_votes_statistics`
--

DROP TABLE IF EXISTS `par_phocagallery_img_votes_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_phocagallery_img_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_phocagallery_img_votes_statistics`
--

LOCK TABLES `par_phocagallery_img_votes_statistics` WRITE;
/*!40000 ALTER TABLE `par_phocagallery_img_votes_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_phocagallery_img_votes_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_phocagallery_tags`
--

DROP TABLE IF EXISTS `par_phocagallery_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_phocagallery_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link_cat` int(11) NOT NULL DEFAULT '0',
  `link_ext` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_phocagallery_tags`
--

LOCK TABLES `par_phocagallery_tags` WRITE;
/*!40000 ALTER TABLE `par_phocagallery_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_phocagallery_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_phocagallery_tags_ref`
--

DROP TABLE IF EXISTS `par_phocagallery_tags_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_phocagallery_tags_ref` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `i_imgid` (`imgid`,`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_phocagallery_tags_ref`
--

LOCK TABLES `par_phocagallery_tags_ref` WRITE;
/*!40000 ALTER TABLE `par_phocagallery_tags_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_phocagallery_tags_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_phocagallery_user`
--

DROP TABLE IF EXISTS `par_phocagallery_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_phocagallery_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(40) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_phocagallery_user`
--

LOCK TABLES `par_phocagallery_user` WRITE;
/*!40000 ALTER TABLE `par_phocagallery_user` DISABLE KEYS */;
INSERT INTO `par_phocagallery_user` VALUES (1,1,'',1,0,0,'0000-00-00 00:00:00',1,NULL,'');
/*!40000 ALTER TABLE `par_phocagallery_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_phocagallery_votes`
--

DROP TABLE IF EXISTS `par_phocagallery_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_phocagallery_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_phocagallery_votes`
--

LOCK TABLES `par_phocagallery_votes` WRITE;
/*!40000 ALTER TABLE `par_phocagallery_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_phocagallery_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_phocagallery_votes_statistics`
--

DROP TABLE IF EXISTS `par_phocagallery_votes_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_phocagallery_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_phocagallery_votes_statistics`
--

LOCK TABLES `par_phocagallery_votes_statistics` WRITE;
/*!40000 ALTER TABLE `par_phocagallery_votes_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_phocagallery_votes_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_poll_data`
--

DROP TABLE IF EXISTS `par_poll_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_poll_data`
--

LOCK TABLES `par_poll_data` WRITE;
/*!40000 ALTER TABLE `par_poll_data` DISABLE KEYS */;
INSERT INTO `par_poll_data` VALUES (1,1,'Queijo do Marajó',49),(2,1,'Queijo Prato',16),(3,1,'Queijo Mussarela',13),(4,1,'Queijo Frescal',9),(5,1,'Outros',6),(6,2,'Búfalo Brasileiro',15),(7,2,'Murrah',7),(8,2,'Mediterrânea',3),(9,2,'Jafarabadi',2),(10,2,'Outros',1),(11,3,'Excelente',15),(12,3,'Muito Bom',9),(13,3,'Bom',0),(14,3,'Regular',0),(15,3,'Péssimo',0);
/*!40000 ALTER TABLE `par_poll_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_poll_date`
--

DROP TABLE IF EXISTS `par_poll_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_poll_date`
--

LOCK TABLES `par_poll_date` WRITE;
/*!40000 ALTER TABLE `par_poll_date` DISABLE KEYS */;
INSERT INTO `par_poll_date` VALUES (1,'2011-08-16 06:16:23',12,3,'189.82.134.202'),(2,'2011-08-16 06:28:39',1,1,'189.82.137.24'),(3,'2011-08-16 06:38:49',11,3,'189.82.190.10'),(4,'2011-08-18 06:38:26',11,3,'189.82.225.242'),(5,'2011-08-20 08:22:23',4,1,'186.198.3.178'),(6,'2011-08-22 03:39:31',1,1,'189.82.215.161'),(7,'2011-08-29 03:30:52',1,1,'189.82.227.222'),(8,'2011-08-29 05:57:59',12,3,'189.81.78.187'),(9,'2011-09-02 03:21:53',1,1,'189.82.227.150'),(10,'2011-09-06 04:55:19',1,1,'189.82.235.184'),(11,'2011-10-14 07:27:53',6,2,'189.82.239.33'),(12,'2011-10-16 06:59:24',1,1,'189.81.92.204'),(13,'2011-10-17 11:49:46',1,1,'200.231.68.42'),(14,'2011-10-18 07:49:39',12,3,'189.81.72.126'),(15,'2011-10-25 04:01:36',1,1,'189.82.211.152'),(16,'2011-11-17 06:03:33',12,3,'189.81.106.200'),(17,'2011-12-21 05:48:18',1,1,'189.82.199.185'),(18,'2011-12-29 02:18:42',12,3,'189.82.133.87'),(19,'2011-12-29 04:41:35',1,1,'189.82.195.197'),(20,'2012-01-08 01:23:36',1,1,'189.82.214.241'),(21,'2012-01-23 10:43:34',2,1,'186.194.52.87'),(22,'2012-02-11 11:28:51',12,3,'189.82.135.68'),(23,'2012-03-09 07:41:02',11,3,'201.83.138.75'),(24,'2012-03-26 06:56:04',12,3,'187.24.91.2'),(25,'2012-03-28 12:59:21',9,2,'200.131.48.2'),(26,'2012-03-30 09:32:54',1,1,'189.81.74.224'),(27,'2012-04-15 08:16:41',1,1,'189.82.213.66'),(28,'2012-06-05 04:53:52',5,1,'200.165.68.225'),(29,'2012-06-08 08:54:04',7,2,'200.141.200.60'),(30,'2016-05-23 07:31:47',8,2,'177.79.15.89'),(31,'2016-05-24 12:35:27',11,3,'200.145.44.4'),(32,'2016-06-09 07:17:15',1,1,'186.241.48.53'),(33,'2016-06-09 11:19:57',11,3,'189.100.7.77'),(34,'2016-06-14 12:29:13',7,2,'189.82.180.13');
/*!40000 ALTER TABLE `par_poll_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_polls`
--

DROP TABLE IF EXISTS `par_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_polls`
--

LOCK TABLES `par_polls` WRITE;
/*!40000 ALTER TABLE `par_polls` DISABLE KEYS */;
INSERT INTO `par_polls` VALUES (1,'Qual seu queijo preferido?','qual-seu-queijo-preferido',17,0,'0000-00-00 00:00:00',1,0,86400),(2,'Criador de Búfalos: Qual a sua raça preferida?','qual-a-sua-raca-preferida',5,0,'0000-00-00 00:00:00',1,0,86400),(3,'O que você achou do novo site?','o-que-voce-achou-do-novo-site',12,0,'0000-00-00 00:00:00',1,0,86400);
/*!40000 ALTER TABLE `par_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_redirect_links`
--

DROP TABLE IF EXISTS `par_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) DEFAULT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM AUTO_INCREMENT=932 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_redirect_links`
--

LOCK TABLES `par_redirect_links` WRITE;
/*!40000 ALTER TABLE `par_redirect_links` DISABLE KEYS */;
INSERT INTO `par_redirect_links` VALUES (1,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/33-img018.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-08-18 21:44:22','0000-00-00 00:00:00'),(2,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/9-img009.html?tmpl=component&phocaslideshow=0&Itemid=12','','','',0,'2011-08-18 21:46:17','0000-00-00 00:00:00'),(3,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/43-img005.html?tmpl=component&phocaslideshow=0&Itemi','','','',0,'2011-08-18 22:18:13','0000-00-00 00:00:00'),(4,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/43-img005.html?phocaslideshow=1&tmpl=component&Itemi','','','',0,'2011-08-18 22:53:11','0000-00-00 00:00:00'),(5,'http://www.fazparaiso.com.br/component/poll/?id=qual-a-sua-raca-preferida2','','','',0,'2011-08-19 00:44:06','0000-00-00 00:00:00'),(6,'http://www.fazparaiso.com.br/component/poll/?id=qual-seu-queijo-preferido1','','','',0,'2011-08-19 00:57:41','0000-00-00 00:00:00'),(7,'http://www.fazparaiso.com.br/joomla/index.php','','','',0,'2011-08-19 04:17:34','0000-00-00 00:00:00'),(8,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/12-img012.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-08-19 10:35:42','0000-00-00 00:00:00'),(9,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/27-img012.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-08-19 14:09:15','0000-00-00 00:00:00'),(10,'http://www.fazparaiso.com.br/index.php?option=com_poll&id=2:qual-a-sua-raca-preferida','','','',0,'2011-08-20 02:49:08','0000-00-00 00:00:00'),(11,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/26-img011.html?tmpl=component&phocaslideshow=0&Itemid=12','','','',0,'2011-08-20 03:10:15','0000-00-00 00:00:00'),(12,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/39-img001.html?phocaslideshow=1&tmpl=component&Itemi','','','',0,'2011-08-20 03:12:44','0000-00-00 00:00:00'),(13,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/13-img013.html?tmpl=component&phocaslideshow=0&Itemid=12','','','',0,'2011-08-20 04:57:53','0000-00-00 00:00:00'),(14,'http://www.fazparaiso.com.br/undefined?number_poll=2&id_option=undefined','','http://www.fazparaiso.com.br/','',0,'2011-08-20 06:15:32','0000-00-00 00:00:00'),(15,'http://www.fazparaiso.com.br/images/stories/food/','','','',0,'2011-08-20 07:41:33','0000-00-00 00:00:00'),(16,'http://www.fazparaiso.com.br/component/poll/?id=o-que-voce-achou-do-novo-site3','','http://www.fazparaiso.com.br/','',0,'2011-08-21 02:11:01','0000-00-00 00:00:00'),(17,'http://www.fazparaiso.com.br/component/nicepoll/?id=qual-a-sua-raca-preferida2','','','',0,'2011-08-21 02:12:02','0000-00-00 00:00:00'),(18,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/31-img016.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-08-21 18:02:54','0000-00-00 00:00:00'),(19,'http://www.fazparaiso.com.br/galeria-de-fotos/category/index.php','','http://www.fazparaiso.com.br/galeria-de-fotos/category/4-galeria-de-fotos-abaetetuba-parte-2.html?start=20','',0,'2011-08-21 19:02:14','0000-00-00 00:00:00'),(20,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/40-img002.html?phocaslideshow=1&tmpl=component&Itemi','','','',0,'2011-08-25 15:56:08','0000-00-00 00:00:00'),(21,'http://www.fazparaiso.com.br/j15/index.php','','','',0,'2011-08-26 03:26:16','0000-00-00 00:00:00'),(22,'http://www.fazparaiso.com.br/j15/','','','',0,'2011-08-29 01:57:57','0000-00-00 00:00:00'),(23,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/25-img010.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-08-29 02:00:35','0000-00-00 00:00:00'),(24,'http://www.fazparaiso.com.br/joomla/index.php?option=com_poll&id=1:qual-seu-queijo-preferido','','','',0,'2011-08-31 06:34:21','0000-00-00 00:00:00'),(25,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/116-img012.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 05:47:04','0000-00-00 00:00:00'),(26,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/108-img004.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 06:08:02','0000-00-00 00:00:00'),(27,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/119-img015.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 06:09:03','0000-00-00 00:00:00'),(28,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/110-img006.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 06:27:39','0000-00-00 00:00:00'),(29,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/117-img013.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-02 06:34:02','0000-00-00 00:00:00'),(30,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/120-img016.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-02 06:48:08','0000-00-00 00:00:00'),(31,'http://www.fazparaiso.com.br/index.php/home','','','',0,'2011-09-02 07:02:42','0000-00-00 00:00:00'),(32,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/113-img009.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-02 07:07:28','0000-00-00 00:00:00'),(33,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/116-img012.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-02 07:22:40','0000-00-00 00:00:00'),(34,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/120-img016.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 07:24:21','0000-00-00 00:00:00'),(35,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/119-img015.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-02 08:02:53','0000-00-00 00:00:00'),(36,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/105-img001.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 08:27:52','0000-00-00 00:00:00'),(37,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/115-img011.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-02 08:35:55','0000-00-00 00:00:00'),(38,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/114-img010.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-02 08:53:11','0000-00-00 00:00:00'),(39,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/121-img017.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-02 08:59:42','0000-00-00 00:00:00'),(40,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/108-img004.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-02 09:38:24','0000-00-00 00:00:00'),(41,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/117-img013.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 09:41:27','0000-00-00 00:00:00'),(42,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/111-img007.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 10:14:13','0000-00-00 00:00:00'),(43,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/112-img008.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 10:23:53','0000-00-00 00:00:00'),(44,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/118-img014.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-02 10:37:13','0000-00-00 00:00:00'),(45,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/8-img008.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-09-02 11:35:05','0000-00-00 00:00:00'),(46,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/112-img008.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-02 11:44:06','0000-00-00 00:00:00'),(47,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/38-img023.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-09-02 11:52:33','0000-00-00 00:00:00'),(48,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/37-img022.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 12:19:15','0000-00-00 00:00:00'),(49,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/36-img021.html?tmpl=component&phocaslideshow=0&Itemid=12','','','',0,'2011-09-02 12:35:55','0000-00-00 00:00:00'),(50,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/38-img023.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 13:03:33','0000-00-00 00:00:00'),(51,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/36-img021.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 13:25:57','0000-00-00 00:00:00'),(52,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/109-img005.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 13:27:25','0000-00-00 00:00:00'),(53,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/114-img010.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 14:17:57','0000-00-00 00:00:00'),(54,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/115-img011.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 14:19:07','0000-00-00 00:00:00'),(55,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/106-img002.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-02 14:27:15','0000-00-00 00:00:00'),(56,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/109-img005.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-02 14:31:52','0000-00-00 00:00:00'),(57,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/106-img002.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 14:36:32','0000-00-00 00:00:00'),(58,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/105-img001.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-02 14:49:15','0000-00-00 00:00:00'),(59,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/121-img017.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 14:50:09','0000-00-00 00:00:00'),(60,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/107-img003.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 14:52:55','0000-00-00 00:00:00'),(61,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/111-img007.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-02 15:04:50','0000-00-00 00:00:00'),(62,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/110-img006.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-02 15:07:31','0000-00-00 00:00:00'),(63,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/118-img014.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 15:08:27','0000-00-00 00:00:00'),(64,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/107-img003.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-02 15:14:58','0000-00-00 00:00:00'),(65,'http://www.fazparaiso.com.br/component/phocagallery/6-galeria-de-fotos-marajo-parte-2/detail/113-img009.html?tmpl=component&Itemid=12','','','',0,'2011-09-02 15:19:45','0000-00-00 00:00:00'),(66,'http://www.fazparaiso.com.br/muieblackcat','','','',0,'2011-09-07 23:10:20','0000-00-00 00:00:00'),(67,'http://fazparaiso.com.br/index.php?option=com_user&view=reset&layout=confirm','','','',0,'2011-09-09 00:43:52','0000-00-00 00:00:00'),(68,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/17-img002.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-09-11 02:19:27','0000-00-00 00:00:00'),(69,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/36-img021.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-09-11 10:58:17','0000-00-00 00:00:00'),(70,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/42-img004.html?tmpl=component&phocaslideshow=0&Itemi','','','',0,'2011-09-12 00:58:55','0000-00-00 00:00:00'),(71,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/15-img015.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-09-12 01:08:34','0000-00-00 00:00:00'),(72,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/10-img010.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-09-19 10:01:49','0000-00-00 00:00:00'),(73,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/21-img006.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-09-19 11:24:19','0000-00-00 00:00:00'),(74,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/14-img014.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-09-19 11:54:11','0000-00-00 00:00:00'),(75,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/42-img004.html?tmpl=component&Itemid=12','','','',0,'2011-09-20 11:00:40','0000-00-00 00:00:00'),(76,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/43-img005.html?tmpl=component&Itemid=12','','','',0,'2011-09-20 11:36:46','0000-00-00 00:00:00'),(77,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/41-img003.html?tmpl=component&Itemid=12','','','',0,'2011-09-20 11:48:07','0000-00-00 00:00:00'),(78,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/37-img022.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-09-20 12:04:29','0000-00-00 00:00:00'),(79,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/42-img004.html?phocaslideshow=1&tmpl=component&Itemi','','','',0,'2011-09-20 12:54:28','0000-00-00 00:00:00'),(80,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/48-img010.html?tmpl=component&Itemid=12','','','',0,'2011-09-20 13:33:03','0000-00-00 00:00:00'),(81,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/47-img009.html?tmpl=component&Itemid=12','','','',0,'2011-09-20 13:39:51','0000-00-00 00:00:00'),(82,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/46-img008.html?tmpl=component&Itemid=12','','','',0,'2011-09-20 14:39:30','0000-00-00 00:00:00'),(83,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/47-img009.html?phocaslideshow=1&tmpl=component&Itemi','','','',0,'2011-09-20 15:29:03','0000-00-00 00:00:00'),(84,'http://www.fazparaiso.com.br/joomla/administrator/index.php','','','',0,'2011-09-23 07:19:49','0000-00-00 00:00:00'),(85,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/11-img011.html?tmpl=component&Itemid=12','','','',0,'2011-09-23 10:08:01','0000-00-00 00:00:00'),(86,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/14-img014.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-23 10:09:15','0000-00-00 00:00:00'),(87,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/8-img008.html?tmpl=component&Itemid=12','','','',0,'2011-09-23 10:52:04','0000-00-00 00:00:00'),(88,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/13-img013.html?tmpl=component&Itemid=12','','','',0,'2011-09-23 15:14:18','0000-00-00 00:00:00'),(89,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/9-img009.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-23 16:13:54','0000-00-00 00:00:00'),(90,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/14-img014.html?tmpl=component&Itemid=12','','','',0,'2011-09-23 17:02:08','0000-00-00 00:00:00'),(91,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/10-img010.html?tmpl=component&Itemid=12','','','',0,'2011-09-23 18:56:00','0000-00-00 00:00:00'),(92,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/9-img009.html?tmpl=component&Itemid=12','','','',0,'2011-09-23 21:25:15','0000-00-00 00:00:00'),(93,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/11-img011.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-23 21:43:39','0000-00-00 00:00:00'),(94,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/15-img015.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-24 04:27:40','0000-00-00 00:00:00'),(95,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/8-img008.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-24 05:00:49','0000-00-00 00:00:00'),(96,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/12-img012.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-24 05:17:20','0000-00-00 00:00:00'),(97,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/15-img015.html?tmpl=component&Itemid=12','','','',0,'2011-09-24 07:32:49','0000-00-00 00:00:00'),(98,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/12-img012.html?tmpl=component&Itemid=12','','','',0,'2011-09-24 07:54:16','0000-00-00 00:00:00'),(99,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/10-img010.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-24 08:51:02','0000-00-00 00:00:00'),(100,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/13-img013.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-09-24 09:35:09','0000-00-00 00:00:00'),(101,'http://www.fazparaiso.com.br/joomla/administrator','','','',0,'2011-09-29 15:18:14','0000-00-00 00:00:00'),(102,'http://www.fazparaiso.com.br/webalizer/usage_201109.html','','','',0,'2011-10-03 10:15:32','0000-00-00 00:00:00'),(103,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/45-img007.html?tmpl=component&Itemid=12','','','',0,'2011-10-08 00:20:23','0000-00-00 00:00:00'),(104,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/42-img004.html?tmpl=component&phocadownload=2&Itemid','','','',0,'2011-10-08 00:56:11','0000-00-00 00:00:00'),(105,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/44-img006.html?tmpl=component&Itemid=12','','','',0,'2011-10-08 01:08:55','0000-00-00 00:00:00'),(106,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/40-img002.html?tmpl=component&phocadownload=2&Itemid','','','',0,'2011-10-08 01:13:14','0000-00-00 00:00:00'),(107,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/46-img008.html?tmpl=component&phocadownload=2&Itemid','','','',0,'2011-10-08 01:14:44','0000-00-00 00:00:00'),(108,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/49-img011.html?tmpl=component&Itemid=12','','','',0,'2011-10-08 01:33:57','0000-00-00 00:00:00'),(109,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/47-img009.html?tmpl=component&phocadownload=2&Itemid','','','',0,'2011-10-08 01:38:13','0000-00-00 00:00:00'),(110,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/44-img006.html?tmpl=component&phocadownload=2&Itemid','','','',0,'2011-10-08 01:41:10','0000-00-00 00:00:00'),(111,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/39-img001.html?tmpl=component&Itemid=12','','','',0,'2011-10-08 01:47:44','0000-00-00 00:00:00'),(112,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/45-img007.html?tmpl=component&phocadownload=2&Itemid','','','',0,'2011-10-08 01:52:48','0000-00-00 00:00:00'),(113,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/40-img002.html?tmpl=component&Itemid=12','','','',0,'2011-10-08 01:55:34','0000-00-00 00:00:00'),(114,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/43-img005.html?tmpl=component&phocadownload=2&Itemid','','','',0,'2011-10-08 01:58:06','0000-00-00 00:00:00'),(115,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/39-img001.html?tmpl=component&phocadownload=2&Itemid','','','',0,'2011-10-08 01:58:18','0000-00-00 00:00:00'),(116,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/49-img011.html?tmpl=component&phocadownload=2&Itemid','','','',0,'2011-10-08 02:00:13','0000-00-00 00:00:00'),(117,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/48-img010.html?tmpl=component&phocadownload=2&Itemid','','','',0,'2011-10-08 02:01:04','0000-00-00 00:00:00'),(118,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/41-img003.html?tmpl=component&phocadownload=2&Itemid','','','',0,'2011-10-08 02:04:51','0000-00-00 00:00:00'),(119,'http://www.fazparaiso.com.br/webalizer','','','',0,'2011-10-09 01:42:32','0000-00-00 00:00:00'),(120,'http://www.fazparaiso.com.br/estatisticas','','','',0,'2011-10-09 01:42:34','0000-00-00 00:00:00'),(121,'http://www.fazparaiso.com.br/index.php?option=com_user&view=reset&layout=confirm','','','',0,'2011-10-09 19:40:37','0000-00-00 00:00:00'),(122,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/104-img011.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 15:42:53','0000-00-00 00:00:00'),(123,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/103-img010.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 15:44:53','0000-00-00 00:00:00'),(124,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/98-img005.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 15:45:28','0000-00-00 00:00:00'),(125,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/95-img002.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 15:51:16','0000-00-00 00:00:00'),(126,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/95-img002.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 15:52:03','0000-00-00 00:00:00'),(127,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/99-img006.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 15:53:30','0000-00-00 00:00:00'),(128,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/98-img005.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 16:05:05','0000-00-00 00:00:00'),(129,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/101-img008.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 16:13:54','0000-00-00 00:00:00'),(130,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/99-img006.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 16:18:13','0000-00-00 00:00:00'),(131,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/101-img008.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 16:20:09','0000-00-00 00:00:00'),(132,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/100-img007.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 16:23:22','0000-00-00 00:00:00'),(133,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/94-img001.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 16:27:01','0000-00-00 00:00:00'),(134,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/97-img004.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 16:31:28','0000-00-00 00:00:00'),(135,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/96-img003.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 16:32:35','0000-00-00 00:00:00'),(136,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/104-img011.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 16:32:50','0000-00-00 00:00:00'),(137,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/103-img010.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 16:37:37','0000-00-00 00:00:00'),(138,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/94-img001.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 16:47:22','0000-00-00 00:00:00'),(139,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/102-img009.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 16:48:20','0000-00-00 00:00:00'),(140,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/97-img004.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 16:51:35','0000-00-00 00:00:00'),(141,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/100-img007.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 16:54:50','0000-00-00 00:00:00'),(142,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/102-img009.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 16:55:06','0000-00-00 00:00:00'),(143,'http://www.fazparaiso.com.br/component/phocagallery/5-vacinacao-contra-febre-aftosa/detail/96-img003.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 16:57:05','0000-00-00 00:00:00'),(144,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/25-img010.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 17:38:21','0000-00-00 00:00:00'),(145,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/30-img015.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 17:40:36','0000-00-00 00:00:00'),(146,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/23-img008.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 17:43:31','0000-00-00 00:00:00'),(147,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/22-img007.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 17:46:39','0000-00-00 00:00:00'),(148,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/32-img017.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 17:49:34','0000-00-00 00:00:00'),(149,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/24-img009.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 17:51:51','0000-00-00 00:00:00'),(150,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/16-img001.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 17:54:05','0000-00-00 00:00:00'),(151,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/20-img005.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 17:55:11','0000-00-00 00:00:00'),(152,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/31-img016.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 18:00:09','0000-00-00 00:00:00'),(153,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/28-img013.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 18:03:29','0000-00-00 00:00:00'),(154,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/23-img008.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 18:04:10','0000-00-00 00:00:00'),(155,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/17-img002.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 18:04:51','0000-00-00 00:00:00'),(156,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/29-img014.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 18:13:09','0000-00-00 00:00:00'),(157,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/20-img005.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 18:15:11','0000-00-00 00:00:00'),(158,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/32-img017.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 18:16:21','0000-00-00 00:00:00'),(159,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/19-img004.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 18:19:25','0000-00-00 00:00:00'),(160,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/33-img018.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 18:21:47','0000-00-00 00:00:00'),(161,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/34-img019.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 18:23:55','0000-00-00 00:00:00'),(162,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/35-img020.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 18:24:23','0000-00-00 00:00:00'),(163,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/19-img004.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 18:25:20','0000-00-00 00:00:00'),(164,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/29-img014.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 18:34:05','0000-00-00 00:00:00'),(165,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/33-img018.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 18:35:30','0000-00-00 00:00:00'),(166,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/21-img006.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 18:36:41','0000-00-00 00:00:00'),(167,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/18-img003.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 18:37:09','0000-00-00 00:00:00'),(168,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/30-img015.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 18:39:33','0000-00-00 00:00:00'),(169,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/28-img013.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 18:42:40','0000-00-00 00:00:00'),(170,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/18-img003.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 18:44:36','0000-00-00 00:00:00'),(171,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/26-img011.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 18:45:05','0000-00-00 00:00:00'),(172,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/35-img020.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 18:46:17','0000-00-00 00:00:00'),(173,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/17-img002.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 18:47:43','0000-00-00 00:00:00'),(174,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/21-img006.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 18:48:12','0000-00-00 00:00:00'),(175,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/16-img001.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 18:49:10','0000-00-00 00:00:00'),(176,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/27-img012.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 19:02:23','0000-00-00 00:00:00'),(177,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/25-img010.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 19:02:42','0000-00-00 00:00:00'),(178,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/31-img016.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 19:07:35','0000-00-00 00:00:00'),(179,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/26-img011.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 19:12:20','0000-00-00 00:00:00'),(180,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/27-img012.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 19:13:46','0000-00-00 00:00:00'),(181,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/24-img009.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 19:15:56','0000-00-00 00:00:00'),(182,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/22-img007.html?tmpl=component&Itemid=12','','','',0,'2011-10-11 19:24:18','0000-00-00 00:00:00'),(183,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/34-img019.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-11 19:30:32','0000-00-00 00:00:00'),(184,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/23-img008.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-10-11 21:13:26','0000-00-00 00:00:00'),(185,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/35-img020.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-10-12 01:20:01','0000-00-00 00:00:00'),(186,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/49-img011.html?phocaslideshow=1&tmpl=component&Itemi','','','',0,'2011-10-12 02:19:09','0000-00-00 00:00:00'),(187,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/59-img010.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 03:13:32','0000-00-00 00:00:00'),(188,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/65-img016.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 03:23:36','0000-00-00 00:00:00'),(189,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/62-img013.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 03:28:05','0000-00-00 00:00:00'),(190,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/50-img001.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 03:38:36','0000-00-00 00:00:00'),(191,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/53-img004.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 03:41:55','0000-00-00 00:00:00'),(192,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/54-img005.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 03:45:24','0000-00-00 00:00:00'),(193,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/54-img005.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 03:53:27','0000-00-00 00:00:00'),(194,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/68-img019.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 03:54:28','0000-00-00 00:00:00'),(195,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/64-img015.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 04:03:31','0000-00-00 00:00:00'),(196,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/55-img006.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 04:17:27','0000-00-00 00:00:00'),(197,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/63-img014.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 04:22:00','0000-00-00 00:00:00'),(198,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/19-img004.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-10-12 04:23:42','0000-00-00 00:00:00'),(199,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/67-img018.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 04:43:54','0000-00-00 00:00:00'),(200,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/69-img020.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 04:50:06','0000-00-00 00:00:00'),(201,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/46-img008.html?phocaslideshow=1&tmpl=component&Itemi','','','',0,'2011-10-12 04:51:03','0000-00-00 00:00:00'),(202,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/68-img019.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 04:58:56','0000-00-00 00:00:00'),(203,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/57-img008.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 05:03:13','0000-00-00 00:00:00'),(204,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/65-img016.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 05:07:30','0000-00-00 00:00:00'),(205,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/51-img002.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 05:08:42','0000-00-00 00:00:00'),(206,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/56-img007.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 05:10:22','0000-00-00 00:00:00'),(207,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/57-img008.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 05:16:25','0000-00-00 00:00:00'),(208,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/53-img004.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 05:18:47','0000-00-00 00:00:00'),(209,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/67-img018.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 05:19:01','0000-00-00 00:00:00'),(210,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/62-img013.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 05:26:22','0000-00-00 00:00:00'),(211,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/61-img012.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 05:26:50','0000-00-00 00:00:00'),(212,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/69-img020.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 05:29:55','0000-00-00 00:00:00'),(213,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/58-img009.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 05:34:25','0000-00-00 00:00:00'),(214,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/61-img012.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 05:34:53','0000-00-00 00:00:00'),(215,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/66-img017.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 05:37:17','0000-00-00 00:00:00'),(216,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/59-img010.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 05:40:34','0000-00-00 00:00:00'),(217,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/50-img001.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 05:42:43','0000-00-00 00:00:00'),(218,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/66-img017.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 05:45:25','0000-00-00 00:00:00'),(219,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/63-img014.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 05:50:30','0000-00-00 00:00:00'),(220,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/55-img006.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 05:52:27','0000-00-00 00:00:00'),(221,'http://www.fazparaiso.com.br/index.php?option=com_poll&id=1:qual-seu-queijo-preferido','','','',0,'2011-10-12 05:58:57','0000-00-00 00:00:00'),(222,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/52-img003.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 06:00:13','0000-00-00 00:00:00'),(223,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/58-img009.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 06:00:42','0000-00-00 00:00:00'),(224,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/60-img011.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 06:14:21','0000-00-00 00:00:00'),(225,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/60-img011.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 06:20:22','0000-00-00 00:00:00'),(226,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/64-img015.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 06:24:44','0000-00-00 00:00:00'),(227,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/16-img001.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-10-12 06:24:58','0000-00-00 00:00:00'),(228,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/56-img007.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 06:32:59','0000-00-00 00:00:00'),(229,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/52-img003.html?tmpl=component&phocadownload=2&Itemid=','','','',0,'2011-10-12 06:38:19','0000-00-00 00:00:00'),(230,'http://www.fazparaiso.com.br/component/phocagallery/4-galeria-de-fotos-abaetetuba-parte-2/detail/51-img002.html?tmpl=component&Itemid=12','','','',0,'2011-10-12 06:53:39','0000-00-00 00:00:00'),(231,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/37-img022.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-15 18:30:17','0000-00-00 00:00:00'),(232,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/36-img021.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-15 18:37:41','0000-00-00 00:00:00'),(233,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/38-img023.html?tmpl=component&phocadownload=2&Itemid=12','','','',0,'2011-10-15 18:47:41','0000-00-00 00:00:00'),(234,'http://fazparaiso.com.br/component/poll/?id=qual-a-sua-raca-preferida2','','http://fazparaiso.com.br/galeria-de-fotos.html','',0,'2011-10-19 01:49:59','0000-00-00 00:00:00'),(235,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/22-img007.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-10-20 00:46:34','0000-00-00 00:00:00'),(236,'http://www.fazparaiso.com.br/index.php?option=com_poll&id=1:queijopreferido','','','',0,'2011-10-26 02:48:48','0000-00-00 00:00:00'),(237,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/28-img013.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-10-31 04:02:03','0000-00-00 00:00:00'),(238,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/41-img003.html?phocaslideshow=1&tmpl=component&Itemi','','','',0,'2011-10-31 05:13:39','0000-00-00 00:00:00'),(239,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/45-img007.html?phocaslideshow=1&tmpl=component&Itemi','','','',0,'2011-10-31 07:32:13','0000-00-00 00:00:00'),(240,'http://www.fazparaiso.com.br/j15/index.php?option=com_poll&id=1:qual-seu-queijo-preferido','','','',0,'2011-11-05 11:11:07','0000-00-00 00:00:00'),(241,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/11-img011.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-11-06 23:03:20','0000-00-00 00:00:00'),(242,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/13-img013.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-11-07 05:23:48','0000-00-00 00:00:00'),(243,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/9-img009.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-11-07 16:28:41','0000-00-00 00:00:00'),(244,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/18-img003.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-11-07 16:41:20','0000-00-00 00:00:00'),(245,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/20-img005.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-11-07 17:56:31','0000-00-00 00:00:00'),(246,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/24-img009.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-11-07 19:55:06','0000-00-00 00:00:00'),(247,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/26-img011.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-11-08 00:23:36','0000-00-00 00:00:00'),(248,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/30-img015.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-11-08 01:48:10','0000-00-00 00:00:00'),(249,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/29-img014.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-11-08 01:51:02','0000-00-00 00:00:00'),(250,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/32-img017.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-11-08 02:52:10','0000-00-00 00:00:00'),(251,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/34-img019.html?phocaslideshow=1&tmpl=component&Itemid=12','','','',0,'2011-11-08 04:18:40','0000-00-00 00:00:00'),(252,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/44-img006.html?phocaslideshow=1&tmpl=component&Itemi','','','',0,'2011-11-08 13:46:18','0000-00-00 00:00:00'),(253,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/48-img010.html?phocaslideshow=1&tmpl=component&Itemi','','','',0,'2011-11-08 16:17:48','0000-00-00 00:00:00'),(254,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/49-img011.html?tmpl=component&phocaslideshow=0&Itemi','','','',0,'2011-11-08 19:31:52','0000-00-00 00:00:00'),(255,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/39-img001.html?tmpl=component&phocaslideshow=0&Itemi','','','',0,'2011-11-08 19:45:48','0000-00-00 00:00:00'),(256,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/45-img007.html?tmpl=component&phocaslideshow=0&Itemi','','','',0,'2011-11-08 20:13:59','0000-00-00 00:00:00'),(257,'http://www.fazparaiso.com.br/component/phocagallery/3-exportacao-de-bufalos-para-venezuela/detail/44-img006.html?tmpl=component&phocaslideshow=0&Itemi','','','',0,'2011-11-09 18:57:20','0000-00-00 00:00:00'),(258,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/11-img011.html?tmpl=component&phocaslideshow=0&Itemid=12','','','',0,'2011-11-11 02:31:44','0000-00-00 00:00:00'),(259,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/27-img012.html?tmpl=component&phocaslideshow=0&Itemid=12','','','',0,'2011-11-11 23:53:56','0000-00-00 00:00:00'),(260,'http://www.fazparaiso.com.br/joomla/index.php?option=com_user&view=reset&layout=confirm','','','',0,'2011-11-13 04:42:43','0000-00-00 00:00:00'),(261,'http://fazparaiso.com.br/joomla/','','','',0,'2011-11-14 09:06:20','0000-00-00 00:00:00'),(262,'http://www.fazparaiso.com.br/joomla/components/minibb/index.php','','','',0,'2011-12-04 22:35:00','0000-00-00 00:00:00'),(263,'http://www.fazparaiso.com.br/index.php?option=com_jreactions&Itemid=','','','',0,'2011-12-04 22:48:11','0000-00-00 00:00:00'),(264,'http://www.fazparaiso.com.br/joomla/','','','',0,'2011-12-05 13:02:35','0000-00-00 00:00:00'),(265,'http://www.fazparaiso.com.br/index.php?option=com_if_nexus','','','',0,'2011-12-05 13:08:49','0000-00-00 00:00:00'),(266,'http://www.fazparaiso.com.br/index.php?option=com_eventcal&Itemid=','','','',0,'2011-12-05 20:39:17','0000-00-00 00:00:00'),(267,'http://www.fazparaiso.com.br/joomla/real_estate/index.php?option=com_jomestate','','','',0,'2011-12-06 02:02:19','0000-00-00 00:00:00'),(268,'http://www.fazparaiso.com.br/index.php?option=com_sef&Itemid=','','','',0,'2011-12-06 02:50:54','0000-00-00 00:00:00'),(269,'http://www.fazparaiso.com.br/templates/be2004-2/index.php','','','',0,'2011-12-06 06:40:42','0000-00-00 00:00:00'),(270,'http://www.fazparaiso.com.br/index.php?option=com_custompages','','','',0,'2011-12-06 18:23:26','0000-00-00 00:00:00'),(271,'http://fazparaiso.com.br/index.php?option=com_mydyngallery&directory=zzz\'/**/union/**/select/**/0,1,2,0x33633273366962,4,5,6,7,8,9,10,11,12,13,14,15,1','','','',0,'2011-12-06 23:01:16','0000-00-00 00:00:00'),(272,'http://www.fazparaiso.com.br/joomla/index.php?option=com_adsmanager','','','',0,'2011-12-06 23:05:34','0000-00-00 00:00:00'),(273,'http://fazparaiso.com.br/index.php?option=com_ownbiblio&view=catalogue&catid=-1/**/union/**/all/**/select/**/1,2,0x33633273366962,4,5,6,7,8,9,10,11,12','','','',0,'2011-12-07 01:04:01','0000-00-00 00:00:00'),(274,'http://fazparaiso.com.br/index.php?option=com_equotes&id=13','','','',0,'2011-12-07 02:39:51','0000-00-00 00:00:00'),(275,'http://fazparaiso.com.br/index.php?option=com_simpleboard&func=view&catid=-999/**/union/**/select/**/2,2,3,0x33633273366962,5/**/from/**/mos_users--','','','',0,'2011-12-07 03:29:49','0000-00-00 00:00:00'),(276,'http://fazparaiso.com.br/index.php?option=com_restaurante&task=detail&Itemid=S@BUN&id=-99999/**/union/**/select/**/0,0,0,0,0,0,0,0,0,0,0,11,12,1,1,1,1','','','',0,'2011-12-07 03:54:59','0000-00-00 00:00:00'),(277,'http://fazparaiso.com.br/index.php?option=com_pccookbook&page=viewuserrecipes&user_id=-9999999/**/union/**/select/**/0x33633273366962/**/from/**/jos_u','','','',0,'2011-12-07 04:18:15','0000-00-00 00:00:00'),(278,'http://fazparaiso.com.br/index.php?option=com_galleries&id=10&aid=-1/**/union/**/select/**/1,2,3,0x33633273366962/**/from/**/mos_users--','','','',0,'2011-12-07 04:38:44','0000-00-00 00:00:00'),(279,'http://fazparaiso.com.br/index.php?option=com_xfaq&task=answer&Itemid=S@BUN&catid=97&aid=-9988/**/union/**/select/**/0x33633273366962,0,0x336332733669','','','',0,'2011-12-07 13:31:15','0000-00-00 00:00:00'),(280,'http://www.fazparaiso.com.br/component/phocagallery/1-galeria-de-fotos-marajo/detail/10-img010.html?tmpl=component&phocaslideshow=0&Itemid=12','','','',0,'2011-12-07 15:30:39','0000-00-00 00:00:00'),(281,'http://fazparaiso.com.br/index.php?option=com_ewriting&Itemid=9999&func=selectcat&cat=-1/**/union/**/all/**/select/**/1,2,0x33633273366962,4,5,6,7,8,9','','','',0,'2011-12-07 21:38:53','0000-00-00 00:00:00'),(282,'http://fazparaiso.com.br/index.php?option=com_vr&Itemid=78&task=viewer&room_id=-1/**/union/**/select/**/0x33633273366962,2/**/from/**/jos_users--','','','',0,'2011-12-07 23:36:01','0000-00-00 00:00:00'),(283,'http://fazparaiso.com.br/index.php?option=com_flippingbook&Itemid=28&book_id=null/**/union/**/select/**/0,0x33633273366962,0,0,0,0,0,0,0,0,0,0,0,0,0,0','','','',0,'2011-12-08 00:12:49','0000-00-00 00:00:00'),(284,'http://fazparaiso.com.br/index.php?option=com_simpleshop&Itemid=S@BUN&cmd=section&section=-000/**/union/**/select/**/000,111,222,0x33633273366962,0,0x','','','',0,'2011-12-08 00:35:40','0000-00-00 00:00:00'),(285,'http://fazparaiso.com.br/index.php?option=com_versioning&task=edit&id=-83/**/union/**/select/**/1,0x33633273366962,3,4,5,6,7,8,9,10,11,12,13,14,15,16,','','','',0,'2011-12-08 01:28:08','0000-00-00 00:00:00'),(286,'http://fazparaiso.com.br/index.php?option=com_na_newsdescription&task=show&groupId=17377_19&newsid=85790','','','',0,'2011-12-08 05:29:31','0000-00-00 00:00:00'),(287,'http://www.fazparaiso.com.br/joomla/index.php?option=com_jreactions&Itemid=','','','',0,'2011-12-08 05:33:26','0000-00-00 00:00:00'),(288,'http://fazparaiso.com.br/index.php?option=com_magazine&task=guide&id=21&page=7&pageid=-9999999/**/union/**/select/**/0,0x33633273366962,0,0,0,0,0,0,0,','','','',0,'2011-12-08 05:54:45','0000-00-00 00:00:00'),(289,'http://fazparaiso.com.br/index.php?option=com_datsogallery&func=detail&id=\'/**/union/**/select/**/1,2,3,4,0x33633273366962,6,7,8,9,0,1,2,3,4,5/**/from','','','',0,'2011-12-08 06:31:46','0000-00-00 00:00:00'),(290,'http://fazparaiso.com.br/index.php?option=com_mdigg&act=story_lists&task=view&category=-9999/**/union/**/all/**/select/**/1,2,3,4,0x33633273366962,6,7','','','',0,'2011-12-08 10:34:56','0000-00-00 00:00:00'),(291,'http://fazparaiso.com.br/index.php?option=com_n-gallery&flokkur=-1/**/union/**/select/**/0x33633273366962/**/from/**/mos_users--','','','',0,'2011-12-08 12:11:03','0000-00-00 00:00:00'),(292,'http://fazparaiso.com.br/index.php?option=com_glossary&func=display&Itemid=s@bun&catid=-1/**/union/**/select/**/1,0x33633273366962,0x33633273366962,4,','','','',0,'2011-12-08 13:13:27','0000-00-00 00:00:00'),(293,'http://fazparaiso.com.br/index.php?option=faq&task=viewallfaq&catid=-9999999/**/union/**/select/**/0x33633273366962,0,0/**/from/**/jos_users--','','','',0,'2011-12-08 14:59:29','0000-00-00 00:00:00'),(294,'http://fazparaiso.com.br/index.php?option=com_contactinfo&catid=-9999/**/union/**/select/**/1,2,0x33633273366962,4,5,6,7,8,9,0,11,12,13,14,15,16/**/fr','','','',0,'2011-12-08 15:01:19','0000-00-00 00:00:00'),(295,'http://fazparaiso.com.br/index.php?option=com_hello_world&Itemid=27&task=show&type=intro&id=-9999999/**/union/**/select/**/0,0x33633273366962,0x336332','','','',0,'2011-12-08 15:01:58','0000-00-00 00:00:00'),(296,'http://fazparaiso.com.br/index.php?option=com_neogallery&task=show&Itemid=5&catid=999999/**/union/**/select/**/0x33633273366962,0x33633273366962,0x336','','','',0,'2011-12-08 15:11:14','0000-00-00 00:00:00'),(297,'http://fazparaiso.com.br/index.php?option=com_maianmedia&view=music&cat=-9999/**/union/**/all/**/select/**/1,2,0x33633273366962,4,5,6,7,8,9,10,11,12,1','','','',0,'2011-12-08 15:19:25','0000-00-00 00:00:00'),(298,'http://fazparaiso.com.br/index.php?option=com_puarcade&Itemid=92&fid=-1/**/union/**/select/**/0x33633273366962/**/from/**/jos_users--','','','',0,'2011-12-08 16:24:33','0000-00-00 00:00:00'),(299,'http://fazparaiso.com.br/index.php?option=com_rekry&Itemid=60&rekryview=view&op_id=-1/**/union/**/select/**/1,0x33633273366962,3,4,5,6,7,8,9,10,11,12,','','','',0,'2011-12-08 16:53:03','0000-00-00 00:00:00'),(300,'http://fazparaiso.com.br/index.php?option=com_fq&Itemid=S@BUN&listid=9999999/**/union/**/select/**/0x33633273366962,0x33633273366962/**/from/**/mos_us','','','',0,'2011-12-08 17:53:53','0000-00-00 00:00:00'),(301,'http://fazparaiso.com.br/index.php?option=com_referenzen&Itemid=7&detail=-9999999/**/union/**/select/**/0,0x33633273366962,0,0,0,0,0,0,0x3363327336696','','','',0,'2011-12-08 18:22:06','0000-00-00 00:00:00'),(302,'http://fazparaiso.com.br/index.php?option=com_profile&Itemid=42&task=&task=viewoffer&oid=9999999/**/union/**/select/**/0x33633273366962/**/from/**/jos','','','',0,'2011-12-08 19:01:48','0000-00-00 00:00:00'),(303,'http://fazparaiso.com.br/index.php?option=com_gmaps&task=viewmap&Itemid=57&mapId=-1/**/union/**/select/**/0,0x33633273366962,0x33633273366962,3,4,5,6,','','','',0,'2011-12-08 19:23:14','0000-00-00 00:00:00'),(304,'http://fazparaiso.com.br/index.php?option=com_mcquiz&task=user_tst_shw&Itemid=42&tid=1/**/union/**/select/**/0x33633273366962,0x33633273366962,0/**/fr','','','',0,'2011-12-08 20:36:09','0000-00-00 00:00:00'),(305,'http://fazparaiso.com.br/index.php?option=com_listoffreeads&AdId=-1/**/union/**/select/**/0,0x33633273366962/**/from/**/jos_users--','','','',0,'2011-12-08 20:57:09','0000-00-00 00:00:00'),(306,'http://fazparaiso.com.br/index.php?option=com_idoblog&task=userblog&userid=42','','','',0,'2011-12-08 21:00:58','0000-00-00 00:00:00'),(307,'http://fazparaiso.com.br/index.php?option=com_quiz&task=user_tst_shw&Itemid=61&tid=1/**/union/**/select/**/0,0x33633273366962,0x33633273366962/**/from','','','',0,'2011-12-08 21:23:11','0000-00-00 00:00:00'),(308,'http://fazparaiso.com.br/index.php?option=com_idvnews&id=-1/**/union/**/select/**/0,0x33633273366962,2,0x33633273366962,0,0,0,0/**/from/**/jos_users--','','','',0,'2011-12-08 21:27:09','0000-00-00 00:00:00'),(309,'http://fazparaiso.com.br/index.php?option=com_xfaq&task=answer&Itemid=27&catid=97&aid=-9988/**/union/**/select/**/0x33633273366962,0,0x33633273366962,','','','',0,'2011-12-08 22:05:54','0000-00-00 00:00:00'),(310,'http://fazparaiso.com.br/index.php?option=com_joomradio&page=show_video&id=-1/**/union/**/select/**/0,0x33633273366962,0,0,0,0,0/**/from/**/jos_users-','','','',0,'2011-12-08 22:12:24','0000-00-00 00:00:00'),(311,'http://fazparaiso.com.br/index.php?option=com_sg&Itemid=16&task=order&range=3&category=3&pid=-9999999/**/union/**/select/**/0,1,0x33633273366962,0,0,0','','','',0,'2011-12-08 22:48:02','0000-00-00 00:00:00'),(312,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/37-img022.html?tmpl=component&phocaslideshow=0&Itemid=12','','','',0,'2011-12-08 22:50:17','0000-00-00 00:00:00'),(313,'http://www.fazparaiso.com.br/joomla/index.php?option=com_eventcal&Itemid=','','','',0,'2011-12-08 22:57:58','0000-00-00 00:00:00'),(314,'http://fazparaiso.com.br/index.php?option=com_rsgallery&page=inline&catid=-1/**/union/**/select/**/1,2,3,4,0x33633273366962,6,7,8,9,10,11/**/from/**/m','','','',0,'2011-12-08 22:58:18','0000-00-00 00:00:00'),(315,'http://fazparaiso.com.br/index2.php?option=ds-syndicate&version=1&feed_id=1/**/union/**/all/**/select/**/1,0x33633273366962,3,4,5,6,7,8,9,0,11,12,13,1','','','',0,'2011-12-08 23:30:03','0000-00-00 00:00:00'),(316,'http://fazparaiso.com.br/index.php?option=com_timereturns&view=timereturns&id=7/**/union/**/all/**/select/**/0x33633273366962,2,3,4,5,6/**/from/**/jos','','','',0,'2011-12-08 23:47:10','0000-00-00 00:00:00'),(317,'http://fazparaiso.com.br/index.php?option=com_joovideo&Itemid=S@BUN&task=detail&id=-99999/**/union/**/select/**/0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,','','','',0,'2011-12-09 00:12:46','0000-00-00 00:00:00'),(318,'http://fazparaiso.com.br/index.php?option=com_portfolio&memberId=9&categoryId=-1/**/union/**/select/**/1,2,3,0x33633273366962,5,6,7,8,9,10,11,12/**/fr','','','',0,'2011-12-09 00:14:38','0000-00-00 00:00:00'),(319,'http://fazparaiso.com.br/index.php?option=com_d3000&task=showarticles&id=-99999/**/union/**/select/**/0,1,0x33633273366962/**/from/**/jos_users--','','','',0,'2011-12-09 00:43:27','0000-00-00 00:00:00'),(320,'http://fazparaiso.com.br/index.php?option=com_mcquiz&task=user_tst_shw&Itemid=xxx&tid=1/**/union/**/select/**/0x33633273366962,0x33633273366962,0/**/f','','','',0,'2011-12-09 01:15:33','0000-00-00 00:00:00'),(321,'http://fazparaiso.com.br/index.php?option=com_jpad&task=edit&Itemid=39&cid=-1/**/union/**/all/**/select/**/1,2,3,0x33633273366962,5,6,7,8/**/from/**/j','','','',0,'2011-12-09 01:23:53','0000-00-00 00:00:00'),(322,'http://fazparaiso.com.br/index.php?option=com_noticias&Itemid=xcorpitx&task=detalhe&id=-99887766/**/union/**/select/**/0,0x33633273366962,2,3,4,5/**/f','','','',0,'2011-12-09 01:50:56','0000-00-00 00:00:00'),(323,'http://fazparaiso.com.br/index.php?option=com_genealogy&task=profile&id=-9999999/**/union/**/select/**/0,1,2,3,4,5,6,7,8,0x33633273366962/**/from/**/j','','','',0,'2011-12-09 02:09:42','0000-00-00 00:00:00'),(324,'http://fazparaiso.com.br/index.php?option=com_jb2&PostID=-9999\'/**/union/**/select/**/1,0x33633273366962,3,4,5,6,7/**/from/**/jos_users--','','','',0,'2011-12-09 02:14:06','0000-00-00 00:00:00'),(325,'http://fazparaiso.com.br/index.php?option=com_musica&Itemid=172&tasko=viewo&task=view2&id=-4214/**/union/**/select/**/0,0,0x33633273366962,0,0,0,0,0,0','','','',0,'2011-12-09 02:34:09','0000-00-00 00:00:00'),(326,'http://fazparaiso.com.br/index.php?option=com_omnirealestate&Itemid=0&func=showObject&info=contact&results=joomla&objid=-9999/**/union/**/select/**/0x','','','',0,'2011-12-09 02:45:59','0000-00-00 00:00:00'),(327,'http://fazparaiso.com.br/index.php?option=com_sermon&gid=-9999999/**/union/**/select/**/0x33633273366962,0,0,0x33633273366962,0x33633273366962,0,0,0/*','','','',0,'2011-12-09 03:19:07','0000-00-00 00:00:00'),(328,'http://fazparaiso.com.br/index.php?option=com_hwdvideoshare&func=viewcategory&Itemid=61&cat_id=-9999999/**/union/**/select/**/0,1,2,0x33633273366962,0','','','',0,'2011-12-09 04:05:26','0000-00-00 00:00:00'),(329,'http://www.fazparaiso.com.br/joomla/index.php?option=com_sef&Itemid=','','','',0,'2011-12-09 04:21:38','0000-00-00 00:00:00'),(330,'http://fazparaiso.com.br/index.php?option=com_resman&task=moreinfo&id=-1/**/union/**/select/**/1,0x33633273366962,3/**/from/**/jos_users--','','','',0,'2011-12-09 04:34:08','0000-00-00 00:00:00'),(331,'http://fazparaiso.com.br/index.php?option=com_musepoes&task=answer&Itemid=s@bun&catid=s@bun&aid=-1/**/union/**/select/**/0,0x33633273366962,0x33633273','','','',0,'2011-12-09 04:56:57','0000-00-00 00:00:00'),(332,'http://fazparaiso.com.br/index.php?search=NoGe&option=com_esearch&searchId=-1/**/union/**/select/**/1,0x33633273366962,3,4,5,6,7,8,9,10,11,12,13,14/**','','','',0,'2011-12-09 05:11:47','0000-00-00 00:00:00'),(333,'http://fazparaiso.com.br/index.php?option=com_team&gid=-1/**/union/**/select/**/1,2,3,0x33633273366962,5,6,7,8,9,10,0x33633273366962,12,13/**/from/**/','','','',0,'2011-12-09 05:29:53','0000-00-00 00:00:00'),(334,'http://fazparaiso.com.br/index.php?option=com_guide&category=-999999/**/union/**/select/**/0,0x33633273366962,0x33633273366962,3,4,5,6,7,8/**/from/**/','','','',0,'2011-12-09 05:30:26','0000-00-00 00:00:00'),(335,'http://fazparaiso.com.br/index.php?option=com_restaurant&Itemid=S@BUN&func=detail&id=-1/**/union/**/select/**/0,0,0x33633273366962,0,0,0,0,0,0,0,0,0,0','','','',0,'2011-12-09 05:47:50','0000-00-00 00:00:00'),(336,'http://fazparaiso.com.br/index.php?option=com_quran&action=viewayat&surano=-1/**/union/**/all/**/select/**/1,0x33633273366962,3,4,5/**/from/**/mos_use','','','',0,'2011-12-09 06:03:33','0000-00-00 00:00:00'),(337,'http://fazparaiso.com.br/index.php?option=com_n-gallery&Itemid=29&sP=-1/**/union/**/select/**/1,2,0x33633273366962,4,5,6,7,8,9,10,11,12,13,14,15,16,17','','','',0,'2011-12-09 06:18:49','0000-00-00 00:00:00'),(338,'http://fazparaiso.com.br/index.php?option=com_nicetalk&tagid=-1)/**/union/**/select/**/1,2,3,4,5,6,7,8,9,10,0x33633273366962,12,13,14,15,16,17,18/**/f','','','',0,'2011-12-09 06:49:57','0000-00-00 00:00:00'),(339,'http://fazparaiso.com.br/index.php?option=com_dailymessage&Itemid=31&page=[PAGENAME]&id=-7/**/union/**/select/**/0x33633273366962,2,3/**/from/**/jos_u','','','',0,'2011-12-09 07:21:57','0000-00-00 00:00:00'),(340,'http://fazparaiso.com.br/index.php?option=com_model&Itemid=0&task=pipa&act=2&objid=-9999/**/union/**/select/**/0x33633273366962,0x33633273366962/**/fr','','','',0,'2011-12-09 08:18:22','0000-00-00 00:00:00'),(341,'http://fazparaiso.com.br/index.php?option=com_ignitegallery&task=view&gallery=-1/**/union/**/select/**/1,2,0x33633273366962,4,5,6,7,8,9,10/**/from/**/','','','',0,'2011-12-09 08:22:02','0000-00-00 00:00:00'),(342,'http://fazparaiso.com.br/index.php?option=com_myalbum&album=-1/**/union/**/select/**/0,0x33633273366962,2,3,4/**/from/**/jos_users--','','','',0,'2011-12-09 08:28:07','0000-00-00 00:00:00'),(343,'http://fazparaiso.com.br/index2.php?option=com_joomradio&page=show_radio&id=4','','','',0,'2011-12-09 08:30:56','0000-00-00 00:00:00'),(344,'http://fazparaiso.com.br/index.php?option=com_recipes&Itemid=S@BUN&func=detail&id=-1/**/union/**/select/**/0,1,0x33633273366962,0x33633273366962,4,5,6','','','',0,'2011-12-09 08:54:08','0000-00-00 00:00:00'),(345,'http://fazparaiso.com.br/index.php?option=com_doc&task=view&sid=-1/**/union/**/select/**/0x33633273366962,1,2,0x33633273366962,4,5,6,7,8,0x33633273366','','','',0,'2011-12-09 09:29:48','0000-00-00 00:00:00'),(346,'http://fazparaiso.com.br/index.php?option=com_quiz&task=user_tst_shw&Itemid=xxx&tid=1/**/union/**/select/**/0,0x33633273366962,0x33633273366962/**/fro','','','',0,'2011-12-09 09:34:27','0000-00-00 00:00:00'),(347,'http://fazparaiso.com.br/index.php?option=com_garyscookbook&Itemid=S@BUN&func=detail&id=-666/**/union/**/select/**/0,0,0x33633273366962,0,0,0,0,0,0,0,','','','',0,'2011-12-09 09:37:21','0000-00-00 00:00:00'),(348,'http://www.fazparaiso.com.br/index.php?option=com_adsmanager','','','',0,'2011-12-09 11:29:06','0000-00-00 00:00:00'),(349,'http://fazparaiso.com.br/index.php?option=com_mamml&listid=9999999/**/union/**/select/**/0,0x33633273366962/**/from/**/mos_users--','','','',0,'2011-12-09 12:15:47','0000-00-00 00:00:00'),(350,'http://fazparaiso.com.br/index.php?option=com_garyscookbook&Itemid=21&func=detail&id=-666/**/union/**/select/**/0,0,0x33633273366962,0,0,0,0,0,0,0,0,0','','','',0,'2011-12-09 12:30:18','0000-00-00 00:00:00'),(351,'http://fazparaiso.com.br/index.php?option=com_hwdvideoshare&func=viewcategory&Itemid=S@BUN&cat_id=-9999999/**/union/**/select/**/0,1,2,0x3363327336696','','','',0,'2011-12-09 13:38:23','0000-00-00 00:00:00'),(352,'http://fazparaiso.com.br/index.php?option=com_propiedades&task=search&id_provincia=0/**/union/**/select/**/0,0,0,0,0,0,0,0x33633273366962,0,0,0,0,0,0,','','','',0,'2011-12-09 13:49:02','0000-00-00 00:00:00'),(353,'http://fazparaiso.com.br/index.php?option=com_pcchess&Itemid=61&page=players&user_id=-9999999/**/union/**/select/**/0x33633273366962/**/from/**/jos_us','','','',0,'2011-12-09 14:06:42','0000-00-00 00:00:00'),(354,'http://fazparaiso.com.br/index.php?option=com_ponygallery&Itemid=x&func=viewcategory&catid=union/**/select/**/1,2,3,0x33633273366962,5,0,0/**/from/**/','','','',0,'2011-12-09 14:56:17','0000-00-00 00:00:00'),(355,'http://fazparaiso.com.br/index.php?option=com_phocadocumentation&view=section&id=1','','','',0,'2011-12-09 14:58:37','0000-00-00 00:00:00'),(356,'http://fazparaiso.com.br/index.php?option=com_gallery&Itemid=0&func=detail&id=-99999/**/union/**/select/**/0,1,0x33633273366962,0,0,0,0,0,0,0,0,0,0,0x','','','',0,'2011-12-09 15:21:35','0000-00-00 00:00:00'),(357,'http://fazparaiso.com.br/index.php?option=com_pcchess&Itemid=S@BUN&page=players&user_id=-9999999/**/union/**/select/**/0x33633273366962/**/from/**/jos','','','',0,'2011-12-09 15:37:36','0000-00-00 00:00:00'),(358,'http://fazparaiso.com.br/index.php?option=com_marketplace&page=show_category&catid=-1/**/union/**/select/**/0x33633273366962,2,3/**/from/**/jos_users-','','','',0,'2011-12-09 16:12:09','0000-00-00 00:00:00'),(359,'http://fazparaiso.com.br/index.php?option=com_filiale&idFiliale=-5/**/union/**/select/**/1,0x33633273366962,3,4,0x33633273366962,6,7,8,9,10,11/**/from','','','',0,'2011-12-09 16:12:33','0000-00-00 00:00:00'),(360,'http://fazparaiso.com.br/index.php?option=com_sobi2&Itemid=27&catid=-99999/**/union/**/select/**/0,0,0x33633273366962,0,0,0,0,0,0,0,0,0,0x336332733669','','','',0,'2011-12-09 17:01:43','0000-00-00 00:00:00'),(361,'http://fazparaiso.com.br/index.php?option=com_mambads&Itemid=0&func=detail&cacat=0&casb=0&caid=100500/**/union/**/select/**/0,0,0,0,0,0,0,0,0,0,0,0,0,','','','',0,'2011-12-09 17:36:31','0000-00-00 00:00:00'),(362,'http://fazparaiso.com.br/index2.php?option=com_prayercenter&task=view_request&id=-1/**/union/**/select/**/0,0,0x33633273366962,0,0,0,0,0,0,0,0,0,0/**/','','','',0,'2011-12-09 17:37:21','0000-00-00 00:00:00'),(363,'http://fazparaiso.com.br/index.php?option=com_rwcards&task=listCards&category_id=-1\'/**/union/**/select/**/1,2,3,4,0x33633273366962,5,044,076,0678,07/','','','',0,'2011-12-09 17:38:47','0000-00-00 00:00:00'),(364,'http://fazparaiso.com.br/index.php?option=com_galeria&Itemid=61&func=detail&id=-999999/**/union/**/select/**/0,0,0x33633273366962,1,2,3,0,0,0,0,0,1,1,','','','',0,'2011-12-09 17:42:11','0000-00-00 00:00:00'),(365,'http://fazparaiso.com.br/index.php?option=com_mambads&Itemid=45&func=view&ma_cat=99999/**/union/**/select/**/0x33633273366962/**/from/**/mos_users--','','','',0,'2011-12-09 17:59:19','0000-00-00 00:00:00'),(366,'http://fazparaiso.com.br/index.php?option=com_rapidrecipe&user_id=-9999999/**/union/**/select/**/0x33633273366962/**/from/**/jos_users--','','','',0,'2011-12-09 18:02:07','0000-00-00 00:00:00'),(367,'http://fazparaiso.com.br/index.php?option=com_neoreferences&Itemid=27&catid=99887766/**/union/**/select/**/0x33633273366962/**/from/**/jos_users/**/wh','','','',0,'2011-12-09 18:30:03','0000-00-00 00:00:00'),(368,'http://fazparaiso.com.br/index.php?option=com_xfaq&task=answer&Itemid=42&catid=97&aid=-9988/**/union/**/select/**/0x33633273366962,0,0x33633273366962,','','','',0,'2011-12-09 18:35:27','0000-00-00 00:00:00'),(369,'http://fazparaiso.com.br/index.php?option=com_joomladate&task=viewProfile&user=9999999/**/union/**/select/**/0,0,0,0,0,0,0,0,0,0,0,0,0,0x3363327336696','','','',0,'2011-12-09 19:03:37','0000-00-00 00:00:00'),(370,'http://fazparaiso.com.br/index.php?option=com_volunteer&task=jobs&act=jobshow&Itemid=29&orgs_id=3&filter=&city_id=&function_id=&limit=5&pageno=1&job_i','','','',0,'2011-12-09 19:05:31','0000-00-00 00:00:00'),(371,'http://fazparaiso.com.br/index.php?option=com_shambo2&Itemid=-999999/**/union/**/select/**/0,1,0x33633273366962,0,0,0,0,0,0,0,0,0,0,0,0,0,0/**/from/**','','','',0,'2011-12-09 20:02:02','0000-00-00 00:00:00'),(372,'http://fazparaiso.com.br/index.php?option=com_doqment&cid=-11/**/union/**/select/**/1,2,0x33633273366962,4,5,6,7,8/**/from/**/jos_users--','','','',0,'2011-12-09 20:12:10','0000-00-00 00:00:00'),(373,'http://fazparaiso.com.br/index.php?option=com_productshowcase&Itemid=S@BUN&action=details&id=-99999/**/union/**/select/**/0,0x33633273366962,0x3363327','','','',0,'2011-12-09 20:33:50','0000-00-00 00:00:00'),(374,'http://fazparaiso.com.br/index.php?option=com_gigcal&task=details&Itemid=37&gigcal_gigs_id=402\'','','','',0,'2011-12-09 20:39:42','0000-00-00 00:00:00'),(375,'http://fazparaiso.com.br/index.php?option=com_fantasytournament&func=teamsByRound&Itemid=79&roundID=-1/**/union/**/select/**/1,0x33633273366962,3,4,5,','','','',0,'2011-12-09 20:40:53','0000-00-00 00:00:00'),(376,'http://fazparaiso.com.br/index.php?option=com_quran&action=viewayat&surano=-1/**/union/**/all/**/select/**/1,0x33633273366962,3,4,5/**/from/**/jos_use','','','',0,'2011-12-09 20:41:23','0000-00-00 00:00:00'),(377,'http://fazparaiso.com.br/index.php?option=com_geoboerse&page=view&catid=-1/**/union/**/select/**/0x33633273366962/**/from/**/jos_users--','','','',0,'2011-12-09 20:57:19','0000-00-00 00:00:00'),(378,'http://fazparaiso.com.br/index.php?option=com_alfurqan15x&action=viewayat&surano=-999.9/**/union/**/all/**/select/**/1,0x33633273366962,3,4,5/**/from/','','','',0,'2011-12-09 21:09:20','0000-00-00 00:00:00'),(379,'http://fazparaiso.com.br/index.php?option=com_alameda&controller=comments&task=edit&storeid=-1/**/union/**/all/**/select/**/0x33633273366962/**/from/*','','','',0,'2011-12-09 21:18:16','0000-00-00 00:00:00'),(380,'http://fazparaiso.com.br/index.php?option=com_paxxgallery&Itemid=85&gid=7&userid=2&task=view&iid=-3333/**/union/**/select/**/0,1,2,3,0x33633273366962/','','','',0,'2011-12-09 21:37:55','0000-00-00 00:00:00'),(381,'http://fazparaiso.com.br/index.php?option=com_mad4joomla&jid=-2/**/union/**/select/**/1,0x33633273366962,3,4/**/from/**/jos_users--','','','',0,'2011-12-09 21:38:39','0000-00-00 00:00:00'),(382,'http://fazparaiso.com.br/index.php?option=com_aist&view=vacancylist&contact_id=-3','','','',0,'2011-12-09 21:51:45','0000-00-00 00:00:00'),(383,'http://fazparaiso.com.br/index.php?option=com_joomlavvz&Itemid=34&func=detail&id=-9999999/**/union/**/select/**/0,1,0x33633273366962,3,4,5,6,7,8,9,10,','','','',0,'2011-12-09 22:10:48','0000-00-00 00:00:00'),(384,'http://fazparaiso.com.br/index.php?option=com_is&task=motor&motor=-1/**/union/**/select/**/1,2,0x33633273366962,4,5,6,7,8,9,10,11,12,13/**/from/**/jos','','','',0,'2011-12-09 22:29:49','0000-00-00 00:00:00'),(385,'http://fazparaiso.com.br/index.php?option=com_jokes&Itemid=S@BUN&func=CatView&cat=-776655/**/union/**/select/**/0,1,2,3,0x33633273366962,5,0x336332733','','','',0,'2011-12-09 22:33:10','0000-00-00 00:00:00'),(386,'http://fazparaiso.com.br/index.php?option=com_most&mode=email&secid=-9999999/**/union/**/select/**/0000,0x33633273366962,2222,3333/**/from/**/jos_user','','','',0,'2011-12-09 22:48:41','0000-00-00 00:00:00'),(387,'http://fazparaiso.com.br/index.php?option=com_expshop&page=show_payment&catid=-2/**/union/**/select/**/0x33633273366962,0x33633273366962,0x33633273366','','','',0,'2011-12-09 23:03:15','0000-00-00 00:00:00'),(388,'http://fazparaiso.com.br/index.php?option=com_jobprofile&Itemid=61&task=profilesview&id=-1/**/union/**/all/**/select/**/1,0x33633273366962,3,4,5,6,7,8','','','',0,'2011-12-09 23:40:37','0000-00-00 00:00:00'),(389,'http://fazparaiso.com.br/index.php?option=com_ricette&Itemid=S@BUN&func=detail&id=-9999999/**/union/**/select/**/0,0,0,1,2,3,0,0,0,0,0,1,1,1,1,1,1,1,1','','','',0,'2011-12-10 01:26:39','0000-00-00 00:00:00'),(390,'http://fazparaiso.com.br/index.php?option=com_rapidrecipe&category_id=-9999999/**/union/**/select/**/0x33633273366962/**/from/**/jos_users--','','','',0,'2011-12-10 01:33:28','0000-00-00 00:00:00'),(391,'http://fazparaiso.com.br/index.php?option=com_netinvoice&action=orders&task=order&cid=-1/**/union/**/select/**/1,2,3,0x33633273366962,5,6,7,8,9,10,11,','','','',0,'2011-12-10 02:04:17','0000-00-00 00:00:00'),(392,'http://fazparaiso.com.br/index.php?option=com_jabode&task=sign&sign=taurus&id=-2/**/union/**/select/**/0,0,0,0,0x33633273366962/**/from/**/jos_users--','','','',0,'2011-12-10 02:45:26','0000-00-00 00:00:00'),(393,'http://www.fazparaiso.com.br/real_estate/index.php?option=com_jomestate','','','',0,'2011-12-10 03:11:25','0000-00-00 00:00:00'),(394,'http://fazparaiso.com.br/index.php?option=com_b2portfolio&c=-1/**/union/**/select/**/1,0x33633273366962,3,4,5/**/from/**/jos_users--','','','',0,'2011-12-10 03:14:12','0000-00-00 00:00:00'),(395,'http://fazparaiso.com.br/index.php?option=com_tech_article&Itemid=17&task=item&item=-1/**/union/**/select/**/0,0x33633273366962,0,0,0,0,0,0,0/**/from/','','','',0,'2011-12-10 03:23:05','0000-00-00 00:00:00'),(396,'http://fazparaiso.com.br/index.php?option=com_kbase&view=article&id=-1/**/union/**/select/**/1,0x33633273366962,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,','','','',0,'2011-12-10 03:44:23','0000-00-00 00:00:00'),(397,'http://www.fazparaiso.com.br/components/minibb/index.php','','','',0,'2011-12-10 04:00:58','0000-00-00 00:00:00'),(398,'http://fazparaiso.com.br/index.php?option=com_simplefaq&task=answer&Itemid=9999&catid=9999&aid=-1/**/union/**/select/**/0,0x33633273366962,0x336332733','','','',0,'2011-12-10 04:04:37','0000-00-00 00:00:00'),(399,'http://www.fazparaiso.com.br/components/com_pinboard/popup/popup.php','','','',0,'2011-12-10 04:06:31','0000-00-00 00:00:00'),(400,'http://www.fazparaiso.com.br/joomla/index.php?option=com_custompages','','','',0,'2011-12-10 07:58:58','0000-00-00 00:00:00'),(401,'http://www.fazparaiso.com.br/component/phocagallery/2-galeria-de-fotos-abaetetuba/detail/35-img020.html?tmpl=component&phocaslideshow=0&Itemid=12','','','',0,'2011-12-10 08:31:21','0000-00-00 00:00:00'),(402,'http://fazparaiso.com.br/index.php?option=com_competitions&task=view&id=-9/**/union/**/all/**/select/**/1,2,3,4,0x33633273366962,6,7/**/from/**/jos_us','','','',0,'2011-12-10 13:21:35','0000-00-00 00:00:00'),(403,'http://fazparaiso.com.br/index.php?option=com_jeajaxeventcalendar&view=alleventlist_more&event_id=-13/**/union/**/all/**/select/**/1,2,0x3363327336696','','','',0,'2011-12-10 13:23:59','0000-00-00 00:00:00'),(404,'http://fazparaiso.com.br/index.php?option=com_annuaire&view=annuaire&type=cat&id=-999/**/union/**/all/**/select/**/1,2,0x33633273366962,4,5,6,7,8,9,10','','','',0,'2011-12-10 13:40:39','0000-00-00 00:00:00'),(405,'http://fazparaiso.com.br/index.php?option=com_jeauto&catid=1&item=1&Itemid=3&view=item&char=\'/**/union/**/select/**/0x33633273366962,0x33633273366962,','','','',0,'2011-12-10 13:58:14','0000-00-00 00:00:00'),(406,'http://fazparaiso.com.br/index.php?option=com_catalogue&Itemid=73&cat_id=-/**/999/**/union/**/select/**/1,0x33633273366962,0x33633273366962,4,5,6/**/f','','','',0,'2011-12-10 14:13:24','0000-00-00 00:00:00'),(407,'http://fazparaiso.com.br/index.php?option=com_clanlist&clanId=-999/**/union/**/select/**/0x33633273366962/**/from/**/jos_users--','','','',0,'2011-12-10 18:15:41','0000-00-00 00:00:00'),(408,'http://fazparaiso.com.br/index.php?option=com_markt&page=show_category&catid=7/**/union/**/select/**/0,1,0x33633273366962,3,4,5,0x33633273366962,7,8/*','','','',0,'2011-12-10 18:30:50','0000-00-00 00:00:00'),(409,'http://fazparaiso.com.br/index.php?option=com_question&catID=21\'','','','',0,'2011-12-10 19:21:50','0000-00-00 00:00:00'),(410,'http://fazparaiso.com.br/index.php?option=com_jedirectory&view=item&catid=1/**/uNiOn/**/sElEcT/**/1,2,0x33633273366962,4,5,6,7,8,9,10,11/**/from/**/jo','','','',0,'2011-12-10 21:13:07','0000-00-00 00:00:00'),(411,'http://fazparaiso.com.br/index.php?option=com_jejob&view=item_detail&itemid=1','','','',0,'2011-12-10 21:41:07','0000-00-00 00:00:00'),(412,'http://fazparaiso.com.br/index.php?option=com_ezautos&Itemid=49&id=1&task=helpers&firstCode=1/**/and/**/0/**/union/**/select/**/1,2,0x33633273366962,4','','','',0,'2011-12-10 21:44:39','0000-00-00 00:00:00'),(413,'http://www.fazparaiso.com.br/joomla/templates/be2004-2/index.php','','','',0,'2011-12-10 22:12:53','0000-00-00 00:00:00'),(414,'http://fazparaiso.com.br/index.php?option=com_biblioteca&view=biblioteca&testo=-a%\'/**/UNION/**/SELECT/**/1,2,0x33633273366962,4,5,6,7,8,9/**/from/**/','','','',0,'2011-12-10 23:23:44','0000-00-00 00:00:00'),(415,'http://fazparaiso.com.br/index.php?option=com_timetrack&view=timetrack&ct_id=-1/**/union/**/select/**/1,2,3,4,5,6,7,8,9,10,11,0x33633273366962/**/from','','','',0,'2011-12-10 23:27:56','0000-00-00 00:00:00'),(416,'http://fazparaiso.com.br/index.php?option=com_beamospetition&startpage=3&pet=-1/**/uNiOn/**/sElEcT/**/0x33633273366962/**/from/**/jos_users--','','','',0,'2011-12-11 00:17:10','0000-00-00 00:00:00'),(417,'http://fazparaiso.com.br/index.php?option=com_fabrik&view=table&tableid=13/**/uNiOn/**/sElEcT/**/0x33633273366962/**/from/**/jos_users--','','','',0,'2011-12-11 01:03:38','0000-00-00 00:00:00'),(418,'http://fazparaiso.com.br/index.php?option=com_amblog&task=newform&catid=-1/**/uNiOn/**/sElEcT/**/1,0x33633273366962/**/from/**/jos_users--','','','',0,'2011-12-11 01:22:34','0000-00-00 00:00:00'),(419,'http://fazparaiso.com.br/index.php?option=com_amblog&task=article&articleid=-1/**/uNiOn/**/sElEcT/**/1,0x33633273366962,3,4,5,6,7,8,9,10,11,12,13,14,1','','','',0,'2011-12-11 01:52:05','0000-00-00 00:00:00'),(420,'http://fazparaiso.com.br/index.php?option=com_simpleshop&Itemid=26&task=viewprod&id=-999.9/**/uNiOn/**/sElEcT/**/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,1','','','',0,'2011-12-11 02:02:08','0000-00-00 00:00:00'),(421,'http://fazparaiso.com.br/index.php?option=com_yellowpages&cat=-1923/**/uNiOn/**/sElEcT/**/1,0x33633273366962,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,','','','',0,'2011-12-11 02:37:22','0000-00-00 00:00:00'),(422,'http://fazparaiso.com.br/index.php?option=com_amblog&task=editform&articleid=-1/**/uNiOn/**/sElEcT/**/1,0x33633273366962,3,4,5,6,7,8,9,10,11,12,13,14,','','','',0,'2011-12-11 03:04:42','0000-00-00 00:00:00'),(423,'http://fazparaiso.com.br/index.php?option=com_amblog&task=editcommentform&articleid=-1/**/uNiOn/**/sElEcT/**/1,0x33633273366962,3,4,5,6,7,8,9,10,11,12','','','',0,'2011-12-11 11:32:57','0000-00-00 00:00:00'),(424,'http://fazparaiso.com.br/index.php?option=com_equipment&view=details&id=-1/**/uNiOn/**/sElEcT/**/1,0x33633273366962,3,4,5,6,7,8,9,10,11,12,13,14,15,16','','','',0,'2011-12-11 16:39:45','0000-00-00 00:00:00'),(425,'http://fazparaiso.com.br/index.php?option=com_equipment&task=components&id=45&sec_men_id=-1/**/uNiOn/**/sElEcT/**/1,0x33633273366962,3,4,5,6,7,8,9,10,','','','',0,'2011-12-11 18:12:08','0000-00-00 00:00:00'),(426,'http://fazparaiso.com.br/index.php?option=com_amblog&task=savenewcomment&articleid=-1/**/uNiOn/**/sElEcT/**/1,0x33633273366962,3,4,5,6,7,8,9,10,11,12,','','','',0,'2011-12-11 18:30:37','0000-00-00 00:00:00'),(427,'http://fazparaiso.com.br/index.php?option=com_ongallery&task=ft&id=-1/**/uNiOn/**/sElEcT/**/0x33633273366962/**/from/**/jos_users--','','','',0,'2011-12-11 18:57:13','0000-00-00 00:00:00'),(428,'http://fazparaiso.com.br/index.php?option=com_equipment&view=details&id=-1/**/uNiOn/**/sElEcT/**/1,0x33633273366962,3,4,5,6/**/from/**/jos_users--','','','',0,'2011-12-11 19:17:02','0000-00-00 00:00:00'),(429,'http://fazparaiso.com.br/index.php?option=com_equipment&task=components&id=45&sec_men_id=-1/**/uNiOn/**/sElEcT/**/1,2,0x33633273366962,4,5,6,7,8,9,10,','','','',0,'2011-12-11 19:59:06','0000-00-00 00:00:00'),(430,'http://fazparaiso.com.br/index.php?option=com_equipment&view=details&id=-1/**/uNiOn/**/sElEcT/**/1,2,0x33633273366962,4,5,6,7,8,9,10,11,12,13,14,15,16','','','',0,'2011-12-11 20:14:17','0000-00-00 00:00:00'),(431,'http://fazparaiso.com.br/index.php?option=com_amblog&task=saveeditcomment&articleid=-1/**/uNiOn/**/sElEcT/**/1,0x33633273366962,3,4,5,6,7,8,9,10,11,12','','','',0,'2011-12-11 20:33:06','0000-00-00 00:00:00'),(432,'http://fazparaiso.com.br/index.php?option=com_jomtube&view=videos&type=member&user_id=-62/**/uNiOn/**/sElEcT/**/1,2,3,4,5,6,7,8,9,10,11,12,0x336332733','','','',0,'2011-12-11 23:20:15','0000-00-00 00:00:00'),(433,'http://fazparaiso.com.br/index.php?option=com_joomdle&view=detail&cat_id=1&course_id=-999.9\'/**/uNiOn/**/AlL/**/sElEcT/**/1,2,3,4,5,0x33633273366962,7','','','',0,'2011-12-11 23:37:20','0000-00-00 00:00:00'),(434,'http://fazparaiso.com.br/index.php?option=com_spa&view=spa_read_more&pid=-35/**/uNiOn/**/sElEcT/**/1,2,3,4,0x33633273366962,6,7,8,9,10,11,12,13/**/fro','','','',0,'2011-12-12 00:01:55','0000-00-00 00:00:00'),(435,'http://fazparaiso.com.br/index.php?option=com_ttvideo&task=video&cid=-1/**/uNiOn/**/sElEcT/**/1,2,3,4,5,6,7,8,0x33633273366962,10,11,12,13,14,15,16,17','','','',0,'2011-12-12 00:33:56','0000-00-00 00:00:00'),(436,'http://fazparaiso.com.br/index.php?option=com_iproperty&view=agentproperties&id=-999999/**/union/**/all/**/select/**/1,2,3,4,5,6,7,8,9,10,11,12,13,14,','','','',0,'2011-12-12 02:01:55','0000-00-00 00:00:00'),(437,'http://fazparaiso.com.br/index.php?option=com_staticxt&staticfile=test1.php&id=-79/**/uNiOn/**/sElEcT/**/0x33633273366962,2,3,4,5,6,7,8,9,10,11,12/**/','','','',0,'2011-12-12 04:01:33','0000-00-00 00:00:00'),(438,'http://fazparaiso.com.br/index.php?option=com_huruhelpdesk&view=detail&cid[0]=-1/**/uNiOn/**/sElEcT/**/1,2,3,0x33633273366962,5,6,7/**/from/**/jos_use','','','',0,'2011-12-12 05:03:17','0000-00-00 00:00:00'),(439,'http://fazparaiso.com.br/index.php?option=com_event&task=view&id=-14/**/UnioN/**/SelECt/**/1,2,0x33633273366962,4/**/from/**/jos_users--','','','',0,'2011-12-12 07:37:33','0000-00-00 00:00:00'),(440,'http://fazparaiso.com.br/index.php?option=com_crowdsource&view=design&cid=-3/**/uNIOn/**/sELECt/**/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,0x3363327336','','','',0,'2011-12-12 20:25:31','0000-00-00 00:00:00'),(441,'http://fazparaiso.com.br/index.php?option=com_artforms&task=tferforms&viewform=1/**/uNiOn/**/sElEcT/**/0x33633273366962,0x33633273366962,0x33633273366','','','',0,'2011-12-12 23:03:39','0000-00-00 00:00:00'),(442,'http://fazparaiso.com.br/index.php?option=com_event&task=details&sid=-61/**/uNiOn/**/sElEcT/**/1,0x33633273366962,3,4,5,6,7,8,9,10/**/from/**/jos_user','','','',0,'2011-12-13 01:39:01','0000-00-00 00:00:00'),(443,'http://fazparaiso.com.br/index.php?option=com_gamesbox&view=consoles&layout=console&id=-9999/**/uNiOn/**/all/**/sElEcT/**/1,0x33633273366962,3,4,5,6,7','','','',0,'2011-12-13 18:24:55','0000-00-00 00:00:00'),(444,'http://fazparaiso.com.br/index.php?option=com_artforms&task=ferforms&viewform=1/**/uNiOn/**/sElEcT/**/0x33633273366962,0x33633273366962,0x336332733669','','','',0,'2011-12-13 18:28:17','0000-00-00 00:00:00'),(445,'http://fazparaiso.com.br/index.php?option=com_answers&task=detail&id=-1\'/**/uNiOn/**/sElEcT/**/0x33633273366962,2,3,4,5,6,7,8,9/**/from/**/jos_users--','','','',0,'2011-12-13 18:56:25','0000-00-00 00:00:00'),(446,'http://fazparaiso.com.br/index.php?option=com_jp_jobs&view=detail&id=1/**/AND/**/1=2/**/UnioN/**/SelECt/**/0x33633273366962/**/from/**/jos_users--','','','',0,'2011-12-13 19:36:06','0000-00-00 00:00:00'),(447,'http://fazparaiso.com.br/index.php?option=com_lead&task=display&archive=1&Itemid=65&leadstatus=1\'/**/uNiOn/**/sElEcT/**/0,1,0x33633273366962,3,4,5,6,7','','','',0,'2011-12-13 20:11:41','0000-00-00 00:00:00'),(448,'http://fazparaiso.com.br/index.php?option=com_listbingo&search_to_price=2&task=ads.search&search=Search&q=11111&catid=0&search_from_price=999/**/uNiOn','','','',0,'2011-12-13 20:31:03','0000-00-00 00:00:00'),(449,'http://fazparaiso.com.br/index.php?option=com_articles&task=view_addarticles&sid=9999/**/UnioN/**/SelECt/**/1,2,3,4,5,0x33633273366962,7,8,9,10/**/fro','','','',0,'2011-12-13 21:23:31','0000-00-00 00:00:00'),(450,'http://fazparaiso.com.br/index.php?option=com_manager&view=flight&Itemid=999999/**/UnioN/**/all/**/SelECt/**/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17','','','',0,'2011-12-14 00:48:55','0000-00-00 00:00:00'),(451,'http://fazparaiso.com.br/index.php?option=com_bfquiztrial&view=bfquiztrial&catid=34\"/**/AND/**/1=2/**/UnioN/**/SelECt/**/1,2,3,4,5,6,7,8,9,0x336332733','','','',0,'2011-12-14 00:59:24','0000-00-00 00:00:00'),(452,'http://fazparaiso.com.br/index.php?option=com_agenda&view=detail&id=-999999/**/UnioN/**/SelECt/**/0,0x33633273366962,2,3,4,5,6,7,8,9,10,11,12,13,14,15','','','',0,'2011-12-14 01:32:46','0000-00-00 00:00:00'),(453,'http://fazparaiso.com.br/index.php?option=com_jepoll&view=poll_graph&task=pollgraph&pollid=-9999/**/UnioN/**/all/**/SelECt/**/1,0x33633273366962,3,4,5','','','',0,'2011-12-14 02:01:03','0000-00-00 00:00:00'),(454,'http://fazparaiso.com.br/index.php?option=com_sermonspeaker&task=latest_sermons&id=-9999/**/UnioN/**/SelECt/**/0x33633273366962/**/from/**/jos_users--','','','',0,'2011-12-14 02:20:33','0000-00-00 00:00:00'),(455,'http://fazparaiso.com.br/index.php?option=com_jtm&view=search&task=search&author=-666/**/UnioN/**/all/**/SelECt/**/0x33633273366962/**/from/**/jos_use','','','',0,'2011-12-14 03:11:33','0000-00-00 00:00:00'),(456,'http://fazparaiso.com.br/index.php?option=com_konsultasi&act=detail&sid=-5/**/UnioN/**/all/**/SelECt/**/1,2,3,4,0x33633273366962,6,7,8,9/**/from/**/jo','','','',0,'2011-12-14 03:18:36','0000-00-00 00:00:00'),(457,'http://fazparaiso.com.br/wap/wapmain.php?option=onews&action=link&id=-154/**/UnioN/**/SelECt/**/1,2,3,0x33633273366962,5,6,7,8,9,10,11,12,13,14,15,16,','','','',0,'2011-12-14 04:58:56','0000-00-00 00:00:00'),(458,'http://fazparaiso.com.br/index.php?option=com_software&task=viewDetail&software_id=-1/**/uNiOn/**/sELeCt/**/0x33633273366962/**/from/**/jos_users--','','','',0,'2011-12-14 06:12:35','0000-00-00 00:00:00'),(459,'http://fazparaiso.com.br/index.php?option=com_guide&season=-1/**/uNiOn/**/sELeCt/**/0x33633273366962,0x33633273366962,0x33633273366962,0x3363327336696','','','',0,'2011-12-14 08:02:19','0000-00-00 00:00:00'),(460,'http://fazparaiso.com.br/index.php?option=com_football&task=viewteams&leagueID=-1/**/uNiOn/**/sELeCt/**/0x33633273366962,0x33633273366962,0x3363327336','','','',0,'2011-12-14 08:26:32','0000-00-00 00:00:00'),(461,'http://fazparaiso.com.br/index.php?option=com_dcs_flashgames&Itemid=61&catid=51/**/uNiOn/**/all/**/sELeCt/**/1,2,0x33633273366962,4,0x33633273366962,6','','','',0,'2011-12-14 08:57:15','0000-00-00 00:00:00'),(462,'http://fazparaiso.com.br/index.php?option=com_television&view=television&id=-1/**/uNiOn/**/sElEcT/**/1,2,3,4,0x33633273366962,6,7,8,9,10,11,12,13,14,1','','','',0,'2011-12-14 08:59:20','0000-00-00 00:00:00'),(463,'http://fazparaiso.com.br/index.php?option=com_items&parent=-1/**/uNiOn/**/sElEcT/**/0x33633273366962,2/**/from/**/jos_users--','','','',0,'2011-12-14 10:12:21','0000-00-00 00:00:00'),(464,'http://fazparaiso.com.br/index.php?option=com_menu&id=-1/**/uNiOn/**/sELeCt/**/0x33633273366962,0x33633273366962,0x33633273366962,0x33633273366962,0x3','','','',0,'2011-12-14 11:12:29','0000-00-00 00:00:00'),(465,'http://fazparaiso.com.br/index.php?option=com_serie&Itemid=126&menu=show_spieler&spielerid=-1/**/uNiOn/**/sELeCt/**/0x33633273366962,0x33633273366962,','','','',0,'2011-12-14 11:59:08','0000-00-00 00:00:00'),(466,'http://fazparaiso.com.br/index.php?option=com_press&task=view_details&id=-1/**/uNiOn/**/sELeCt/**/0x33633273366962,0x33633273366962,0x33633273366962,0','','','',0,'2011-12-14 13:04:49','0000-00-00 00:00:00'),(467,'http://fazparaiso.com.br/index.php?option=com_tour&view=cat&cid=-999/**/uNiOn/**/ALL/**/sELeCt/**/0x33633273366962,0x33633273366962,0x33633273366962,0','','','',0,'2011-12-14 13:47:33','0000-00-00 00:00:00'),(468,'http://fazparaiso.com.br/index.php?option=com_wallpapers&act=albums&cid=-1/**/uNiOn/**/sELeCt/**/0x33633273366962/**/from/**/jos_users--','','','',0,'2011-12-14 13:56:48','0000-00-00 00:00:00'),(469,'http://fazparaiso.com.br/index.php?option=com_acprojects&page=7&lang=de&Itemid=null','','','',0,'2011-12-14 17:14:43','0000-00-00 00:00:00'),(470,'http://fazparaiso.com.br/index.php?option=com_nfnaddressbook&Itemid=61&action=viewrecord&record_id=-4/**/uNiOn/**/sELeCt/**/1,0x33633273366962,3,4,5,6','','','',0,'2011-12-14 17:19:13','0000-00-00 00:00:00'),(471,'http://fazparaiso.com.br/index.php?option=com_products&op=category_details&intCategoryId=-222/**/uNiOn/**/sELeCt/**/1,2,0x33633273366962,4,5,6,7,8/**/','','','',0,'2011-12-14 23:41:25','0000-00-00 00:00:00'),(472,'http://fazparaiso.com.br/index.php?option=com_family&view=family&task=getproductsbyfamily&familyid=2&categoryid=-498/**/uNiOn/**/sELeCt/**/0x336332733','','','',0,'2011-12-15 00:10:44','0000-00-00 00:00:00'),(473,'http://fazparaiso.com.br/index.php?option=com_party&view=party&task=details&id=-1/**/uNiOn/**/sELeCt/**/0x33633273366962/**/fRoM/**/jos_users--','','','',0,'2011-12-15 00:50:30','0000-00-00 00:00:00'),(474,'http://fazparaiso.com.br/index.php?option=com_blog&task=viewdetails&id=-1/**/uNiOn/**/sELeCt/**/0x33633273366962,0x33633273366962,0x33633273366962,0x3','','','',0,'2011-12-15 00:51:46','0000-00-00 00:00:00'),(475,'http://fazparaiso.com.br/index.php?option=com_bidding&id=-200/**/uNiOn/**/ALL/**/sELeCt/**/1,2,0x33633273366962,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18','','','',0,'2011-12-15 01:52:03','0000-00-00 00:00:00'),(476,'http://fazparaiso.com.br/index.php?option=com_comp&task=view&cid=-1/**/uNiOn/**/sELeCt/**/0x33633273366962,0x33633273366962/**/fRoM/**/jos_users--','','','',0,'2011-12-15 02:53:16','0000-00-00 00:00:00'),(477,'http://fazparaiso.com.br/index.php?option=com_book&controller=listtour&task=showTour&cid[]=-1/**/uNiOn/**/all/**/sELeCt/**/1,0x33633273366962,3,4,5,6,','','','',0,'2011-12-15 03:54:40','0000-00-00 00:00:00'),(478,'http://fazparaiso.com.br/index.php?option=com_start&task=main&mitID=-1/**/uNiOn/**/sELeCt/**/1,0x33633273366962,3,4/**/fRoM/**/jos_users--','','','',0,'2011-12-15 05:10:05','0000-00-00 00:00:00'),(479,'http://fazparaiso.com.br/index.php?option=com_hdvideoshare&view=player&id=-45/**/uNiOn/**/sELeCt/**/0x33633273366962,2,3,4/**/fRoM/**/jos_users--','','','',0,'2011-12-15 05:39:51','0000-00-00 00:00:00'),(480,'http://fazparaiso.com.br/index.php?option=com_include&lang=en_GB&Itemid=50&ID_NLE=-1/**/uNiOn/**/sELeCt/**/0x33633273366962/**/fRoM/**/jos_users--','','','',0,'2011-12-15 07:25:57','0000-00-00 00:00:00'),(481,'http://fazparaiso.com.br/index.php?option=com_giftexchange&view=showcase&aj=package&pkg=-1/**/uNiOn/**/sELeCt/**/1,2,3,4,5,0x33633273366962,1,1,1,1,1,','','','',0,'2011-12-15 07:38:15','0000-00-00 00:00:00'),(482,'http://fazparaiso.com.br/index.php?option=com_flash&sid=-1/**/uNiOn/**/sELeCt/**/0x33633273366962,0x33633273366962,0x33633273366962,0x33633273366962,0','','','',0,'2011-12-15 08:31:55','0000-00-00 00:00:00'),(483,'http://fazparaiso.com.br/index.php?option=com_acstartseite&lang=de&Itemid=null','','','',0,'2011-12-15 09:13:36','0000-00-00 00:00:00'),(484,'http://fazparaiso.com.br/index.php?option=com_yanc&Itemid=75&listid=-2/**/uNiOn/**/sELeCt/**/0x33633273366962,2/**/fRoM/**/jos_users--','','','',0,'2011-12-15 10:10:14','0000-00-00 00:00:00'),(485,'http://fazparaiso.com.br/index.php?option=com_job&controller=listcategory&task=viewJob&id_job=-1/**/uNiOn/**/ALL/**/sELeCt/**/1,0x33633273366962,0x336','','','',0,'2011-12-15 11:04:47','0000-00-00 00:00:00'),(486,'http://fazparaiso.com.br/index.php?option=com_mambads&Itemid=39&func=view&cacat=33&casb=1/**/uNiOn/**/all/**/sELeCt/**/1,2,3,4,5,6,7,8,9,10,11,12,13,1','','','',0,'2011-12-15 11:41:18','0000-00-00 00:00:00'),(487,'http://fazparaiso.com.br/joomla/index.php','','','',0,'2011-12-16 10:26:30','0000-00-00 00:00:00'),(488,'http://fazparaiso.com.br/clsullzjg.html','','','',0,'2011-12-25 21:55:24','0000-00-00 00:00:00'),(489,'http://fazparaiso.com.br/component/poll/?id=qual-seu-queijo-preferido1','','','',0,'2011-12-26 20:51:33','0000-00-00 00:00:00'),(490,'http://www.fazparaiso.com.br/component/poll/?id=qual-a-sua-raca-preferida','','','',0,'2011-12-29 21:36:43','0000-00-00 00:00:00'),(491,'http://www.fazparaiso.com.br/component/content/category/sobre-a-fazenda-marajo.html','','','',0,'2011-12-30 18:29:42','0000-00-00 00:00:00'),(492,'http://www.fazparaiso.com.br/component/content/category/sobre-a-fazenda-abaetetuba.html','','','',0,'2011-12-30 19:18:15','0000-00-00 00:00:00'),(493,'http://www.fazparaiso.com.br/component/content/category/sobre-a-fazenda-salvaterra.html','','','',0,'2011-12-30 19:47:23','0000-00-00 00:00:00'),(494,'http://fazparaiso.com.br/contato.html','','','',0,'2011-12-30 20:33:23','0000-00-00 00:00:00'),(495,'http://www.fazparaiso.com.br/contato.html','','','',0,'2012-01-01 14:59:54','0000-00-00 00:00:00'),(496,'http://fazparaiso.com.br/index.php?option=com_livres&controller=livre&task=view&cid[]=-1/**/uNiOn/**/sEleCt/**/1,0x33633273366962,3,4,5,6,7,8,9,10,11/','','','',0,'2012-01-01 21:28:08','0000-00-00 00:00:00'),(497,'http://fazparaiso.com.br/index.php?option=com_dms&task=view_category&category_id=-666/**/uNiOn/**/all/**/sELeCt/**/0,0,0,0,0,0,0,0x33633273366962,0,0,','','','',0,'2012-01-01 23:45:48','0000-00-00 00:00:00'),(498,'http://fazparaiso.com.br/index.php?option=com_dhforum&view=grouplist&id=-1/**/uNiOn/**/sEleCt/**/0x33633273366962/**/from/**/jos_users--','','','',0,'2012-01-02 07:47:19','0000-00-00 00:00:00'),(499,'http://fazparaiso.com.br/index.php?option=com_gcalendar&view=event&eventID=peler&start=memek&end=kentu&gcid=2','','','',0,'2012-01-02 14:41:12','0000-00-00 00:00:00'),(500,'http://www.fazparaiso.com.br/index.php','','http://www.fazparaiso.com.br/?_ult=sec%3Dweb%26slk%3Dweb%26pos%3D3%26linkstr%3Dhttp%253A%252F%252Fwww.fazparaiso.com.br%252F','',0,'2012-01-03 14:39:31','0000-00-00 00:00:00'),(501,'http://fazparaiso.com.br/index.php?option=com_lyftenbloggie&author=62/**/uNiOn/**/sEleCt/**/1,0x33633273366962,3,4,0x33633273366962,6,7,8,9,10,11,12,1','','','',0,'2012-01-03 23:50:00','0000-00-00 00:00:00'),(502,'http://fazparaiso.com.br/index.php?option=com_ss&view=subcategory&id=-1646277829/**/uNiOn/**/sEleCt/**/0x33633273366962,0x33633273366962,0x33633273366','','','',0,'2012-01-04 00:39:42','0000-00-00 00:00:00'),(503,'http://fazparaiso.com.br/index.php?option=com_jeemaarticlecollection&view=longview&Itemid=107&catid=null/**/uNiOn/**/sEleCt/**/0x33633273366962,2/**/f','','','',0,'2012-01-04 03:57:23','0000-00-00 00:00:00'),(504,'http://fazparaiso.com.br/index.php?option=com_schools&Itemid=89&schoolid=-53/**/uNiOn/**/sEleCt/**/1,0x33633273366962,3,4,5,6,7,8,9,10,11/**/from/**/j','','','',0,'2012-01-04 04:11:05','0000-00-00 00:00:00'),(505,'http://fazparaiso.com.br/index.php?option=com_gurujibook&task=showPDF&bookid=-32/**/uNiOn/**/all/**/sELeCt/**/0x33633273366962,2,3,4/**/fRoM/**/jos_us','','','',0,'2012-01-04 04:11:06','0000-00-00 00:00:00'),(506,'http://fazparaiso.com.br/index.php?option=com_mygallery&func=viewcategory&cid=-1/**/uNiOn/**/all/**/sEleCt/**/1,2,0x33633273366962,4,0x33633273366962,','','','',0,'2012-01-04 04:20:04','0000-00-00 00:00:00'),(507,'http://fazparaiso.com.br/index.php?option=com_virtuemart&page=shop.product_details&category_id=10&manufacturer_id=11&Itemid=1&vmcchk=1&Itemid=1&flypag','','','',0,'2012-01-04 04:26:59','0000-00-00 00:00:00'),(508,'http://fazparaiso.com.br/index.php?option=com_mygallery&func=viewcategory&cid=-1/**/uNiOn/**/all/**/sEleCt/**/1,0x33633273366962,3,4,5,6,7,8,9,10,11,1','','','',0,'2012-01-04 06:55:00','0000-00-00 00:00:00'),(509,'http://fazparaiso.com.br/index.php?option=com_quicknews&task=view_item&newsid=33/**/uNiOn/**/sEleCt/**/1,1,1,1,0x33633273366962,0,1,1,1,1,1,1,1,1,1,1,','','','',0,'2012-01-04 07:12:11','0000-00-00 00:00:00'),(510,'http://www.fazparaiso.com.br/index.php/contato','','','',0,'2012-01-04 07:56:53','0000-00-00 00:00:00'),(511,'http://fazparaiso.com.br/index.php?option=com_job&task=showMoreUser&id=-1/**/uNiOn/**/sEleCt/**/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,0x33633273366962,1','','','',0,'2012-01-04 08:07:03','0000-00-00 00:00:00'),(512,'http://fazparaiso.com.br/index.php?option=com_portfol&Itemid=814&task=viewcategory&vcatid=-96/**/uNiOn/**/sEleCt/**/0x33633273366962/**/from/**/jos_us','','','',0,'2012-01-04 10:13:03','0000-00-00 00:00:00'),(513,'http://fazparaiso.com.br/index.php?option=com_jphoto&view=category&id=-999/**/uNiOn/**/all/**/sEleCt/**/0,0x33633273366962,0,0,0,0,0,0,0,0,0x336332733','','','',0,'2012-01-04 11:28:19','0000-00-00 00:00:00'),(514,'http://fazparaiso.com.br/index.php?option=com_k2&view=itemlist&category=null\'','','','',0,'2012-01-04 15:26:35','0000-00-00 00:00:00'),(515,'http://fazparaiso.com.br/index.php?option=com_fastball&league=-666/**/uNiOn/**/sEleCt/**/1,2,0x33633273366962,4,5,6,7,8,9,10,11/**/from/**/jos_users--','','','',0,'2012-01-04 17:31:07','0000-00-00 00:00:00'),(516,'http://fazparaiso.com.br/index.php?option=com_jbudgetsmagic&view=mybudget&bid=9999/**/uNiOn/**/sEleCt/**/1,2,3,4,0x33633273366962,6,7,8,9,10/**/from/*','','','',0,'2012-01-04 17:41:59','0000-00-00 00:00:00'),(517,'http://fazparaiso.com.br/index.php?option=com_joomloads&view=package&Itemid=2&packageId=-156/**/uNiOn/**/sEleCt/**/1,2,3,0x33633273366962,5,6,7,8,9,10','','','',0,'2012-01-04 21:09:54','0000-00-00 00:00:00'),(518,'http://fazparaiso.com.br/index.php?option=com_juser&task=show_profile&id=70','','','',0,'2012-01-04 22:19:10','0000-00-00 00:00:00'),(519,'http://fazparaiso.com.br/index.php?option=com_joomloc&controller=loc&view=loc&layout=loc&task=edit&cid[]=1&id=1','','','',0,'2012-01-05 00:16:30','0000-00-00 00:00:00'),(520,'http://fazparaiso.com.br/index.php?option=com_category&task=loadCategory&catid=-9999','','','',0,'2012-01-05 02:53:11','0000-00-00 00:00:00'),(521,'http://fazparaiso.com.br/index.php?option=com_idoblog&task=profile&Itemid=1337&userid=62/**/uNiOn/**/sEleCt/**/1,0x33633273366962,3,4,5,6,7,8,9,10,11,','','','',0,'2012-01-05 04:25:33','0000-00-00 00:00:00'),(522,'http://fazparaiso.com.br/index.php?option=com_portafolio&task=viewcat&Itemid=5&cid=-null','','','',0,'2012-01-05 04:40:08','0000-00-00 00:00:00'),(523,'http://fazparaiso.com.br/index.php?option=com_jshop&view=product&family=INDONESIANCODER&group=0&pid=-12/**/uNiOn/**/sEleCt/**/1,2,3,0x33633273366962,6','','','',0,'2012-01-05 06:35:28','0000-00-00 00:00:00'),(524,'http://fazparaiso.com.br/index.php?option=com_gameserver&view=gamepanel&id=999999','','','',0,'2012-01-05 07:16:30','0000-00-00 00:00:00'),(525,'http://fazparaiso.com.br/index.php?option=com_soundset&controller=showcategory&cat_id=-346/**/uNiOn/**/sEleCt/**/1,2,0x33633273366962,4,5/**/from/**/j','','','',0,'2012-01-05 08:02:34','0000-00-00 00:00:00'),(526,'http://fazparaiso.com.br/index.php?option=com_akobook&Itemid=36&func=sign&action=reply&gbid=-1/**/uNiOn/**/sEleCt/**/1,2,3,4,5,6,7,8,9,0x3363327336696','','','',0,'2012-01-05 09:25:08','0000-00-00 00:00:00'),(527,'http://fazparaiso.com.br/index.php?option=com_jvideo&view=user&user_id=62','','','',0,'2012-01-05 10:47:47','0000-00-00 00:00:00'),(528,'http://fazparaiso.com.br/index.php?option=com_mosres&task=viewproperty&property_uid=1005\'','','','',0,'2012-01-05 13:31:57','0000-00-00 00:00:00'),(529,'http://www.fazparaiso.com.br/joomla/index.php?option=com_if_nexus','','','',0,'2012-01-05 16:39:32','0000-00-00 00:00:00'),(530,'http://fazparaiso.com.br/index.php?option=com_beamospetition&pet=-5/**/uNiOn/**/sEleCt/**/1,2,3,4,5,6,7,0x33633273366962,9,10,11,12,13,14,15/**/fRoM/*','','','',0,'2012-01-05 18:38:12','0000-00-00 00:00:00'),(531,'http://fazparaiso.com.br/index.php?option=com_messaging&view=message&mesuid=-666/**//**/uNiOn/**/sEleCt/**/1,0x33633273366962,3,4,5,6,7,8,9/**/fRoM/**','','','',0,'2012-01-05 23:01:27','0000-00-00 00:00:00'),(532,'http://fazparaiso.com.br/index.php?option=com_cinema&Itemid=S@BUN&func=detail&id=-99999/**/uNiOn/**/sEleCt/**/0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16','','','',0,'2012-01-06 17:43:01','0000-00-00 00:00:00'),(533,'http://fazparaiso.com.br/index.php?option=com_fastball&league=123/**/uNiOn/**/sEleCt/**/1,2,0x33633273366962,4,5,6,7,8,9,10,11/**/fRoM/**/jos_users--','','','',0,'2012-01-06 18:39:31','0000-00-00 00:00:00'),(534,'http://fazparaiso.com.br/index.php?option=com_rapidrecipe&page=viewrecipe&recipe_id=-1/**/uNiOn/**/sEleCt/**/0,0x33633273366962,0,0,0,0,0,0,0,0,0,0,0,','','','',0,'2012-01-06 19:25:13','0000-00-00 00:00:00'),(535,'http://fazparaiso.com.br/index.php?option=com_catalogproduction&task=viewdetail&id=-9999/**/uNiOn/**/all/**/sEleCt/**/1,2,0x33633273366962,null,null,6','','','',0,'2012-01-06 21:07:39','0000-00-00 00:00:00'),(536,'http://fazparaiso.com.br/index.php?option=com_prod&task=products&cid=-9999/**/uNiOn/**/all/**/sEleCt/**/1,2,3,0x33633273366962,5,6,7,8,9,10,11,12,13,1','','','',0,'2012-01-07 11:14:49','0000-00-00 00:00:00'),(537,'http://fazparaiso.com.br/index.php?option=com_bsadv&controller=peruse&task=account&Itemid=57&id=-1/**/uNiOn/**/ALL/**/sEleCt/**/0x33633273366962,0x336','','','',0,'2012-01-07 11:15:29','0000-00-00 00:00:00'),(538,'http://fazparaiso.com.br/index.php?option=com_joomradio&page=show_radio&id=-1/**/uNiOn/**/sEleCt/**/0,0x33633273366962,0,0,0,0,0/**/fRoM/**/jos_users-','','','',0,'2012-01-07 11:29:42','0000-00-00 00:00:00'),(539,'http://fazparaiso.com.br/index.php?option=com_eventsmailer&view=events&max=-666666666/**//**/uNiOn/**/sEleCt/**/1,2,3,0x33633273366962,5,6,7/**/fRoM/*','','','',0,'2012-01-07 11:42:02','0000-00-00 00:00:00'),(540,'http://fazparaiso.com.br/index.php?option=com_books&task=book_details&book_id=-9999/**/uNiOn/**/sEleCt/**/1,2,0x33633273366962,4,5,6,7,8,9,10,11,12,13','','','',0,'2012-01-07 11:43:47','0000-00-00 00:00:00'),(541,'http://fazparaiso.com.br/index.php?option=com_gigcal&Itemid=78&id=-999/**/uNiOn/**/all/**/sEleCt/**/1,2,3,4,5,6,7,8,9,0x33633273366962,11,12,13,14,15,','','','',0,'2012-01-07 12:30:59','0000-00-00 00:00:00'),(542,'http://fazparaiso.com.br/index.php?option=com_alphacontent&section=6&cat=15&task=view&id=-999999/**/uNiOn/**/sEleCt/**/1,0x33633273366962,3,4,0,0,0,0,','','','',0,'2012-01-07 12:52:17','0000-00-00 00:00:00'),(543,'http://fazparaiso.com.br/index.php?option=com_greetbox&view=boxes&mval=-999999999/**/uNiOn/**/sEleCt/**/1,2,3,4,5,0x33633273366962,7,8,9/**/fRoM/**/jo','','','',0,'2012-01-07 14:12:05','0000-00-00 00:00:00'),(544,'http://fazparaiso.com.br/index.php?option=com_5starhotels&task=showhoteldetails&id=1/**/uNiOn/**/sEleCt/**/1,0x33633273366962/**/fRoM/**/jos_users--','','','',0,'2012-01-07 14:17:57','0000-00-00 00:00:00'),(545,'http://fazparaiso.com.br/index.php?option=com_hitexam&task=levels&id=-1/**/uNiOn/**/sEleCt/**/0x33633273366962,2,3,4,5/**/fRoM/**/jos_users--','','','',0,'2012-01-07 14:26:06','0000-00-00 00:00:00'),(546,'http://fazparaiso.com.br/index.php?option=com_azcontentlist&view=title&cat=3&date=-666/**//**/uNiOn/**/sEleCt/**/1,2,3,4,0x33633273366962,6,7/**/fRoM/','','','',0,'2012-01-07 15:18:21','0000-00-00 00:00:00'),(547,'http://fazparaiso.com.br/index.php?option=com_akogallery&Itemid=S@BUN&func=detail&id=-334455/**/uNiOn/**/sEleCt/**/null,null,0x33633273366962,null,nul','','','',0,'2012-01-07 15:56:51','0000-00-00 00:00:00'),(548,'http://fazparaiso.com.br/index.php?option=com_biblestudy&view=mediaplayer&id=-1/**/uNiOn/**/sEleCt/**/1,2,3,4,5,6,7,8,9,10,11,13,14,15,16,17,18,19,20,','','','',0,'2012-01-07 16:55:45','0000-00-00 00:00:00'),(549,'http://fazparaiso.com.br/index.php?option=com_ag_vodmatvil&controller=categories&task=category&Itemid=20&cid=-1/**/uNiOn/**/sEleCt/**/1,0x336332733669','','','',0,'2012-01-07 17:47:31','0000-00-00 00:00:00'),(550,'http://fazparaiso.com.br/index.php?option=com_fantasytournament&Itemid=&func=managersByManager&managerID=-63/**/uNiOn/**/sEleCt/**/0x33633273366962,2,','','','',0,'2012-01-07 17:50:36','0000-00-00 00:00:00'),(551,'http://fazparaiso.com.br/index.php?option=com_prywatne&sid=30&mid=0&pid=34/**/uNiOn/**/sEleCt/**/0x33633273366962/**/fRoM/**/jos_users--','','','',0,'2012-01-07 18:14:43','0000-00-00 00:00:00'),(552,'http://fazparaiso.com.br/index.php?option=com_mediaideamultilist&controller=helpers&format=raw&task=getField&tarId=-666/**/uNiOn/**/sEleCt/**/1,2,3,4,','','','',0,'2012-01-07 18:19:41','0000-00-00 00:00:00'),(553,'http://fazparaiso.com.br/index.php?option=com_idoblog&task=userblog&userid=62/**/aNd/**/1=1/**/uNiOn/**/sEleCt/**/0,0,0,0,0,0x33633273366962,0,0,0,0,0','','','',0,'2012-01-07 19:15:10','0000-00-00 00:00:00'),(554,'http://fazparaiso.com.br/index.php?option=com_bsadv&controller=peruse&task=event&id=-1/**/uNiOn/**/ALL/**/sEleCt/**/1,0x33633273366962,3,4/**/fRoM/**/','','','',0,'2012-01-07 19:42:39','0000-00-00 00:00:00'),(555,'http://fazparaiso.com.br/index.php?option=com_adagency&controller=adagencyPackages&task=preview&tmpl=component&no_html=0&cid=-108/**/uNiOn/**/sEleCt/*','','','',0,'2012-01-07 21:09:09','0000-00-00 00:00:00'),(556,'http://fazparaiso.com.br/index.php?option=com_akogallery&Itemid=S@BUN&func=detail&id=-99999/**/uNiOn/**/sEleCt/**/null,null,0x33633273366962,null,null','','','',0,'2012-01-07 21:12:15','0000-00-00 00:00:00'),(557,'http://fazparaiso.com.br/index.php?option=com_candle&task=content&cID=-9999/**/uNiOn/**/sEleCt/**/0,0x33633273366962,1,0x33633273366962,2,3/**/fRoM/**','','','',0,'2012-01-07 21:30:49','0000-00-00 00:00:00'),(558,'http://fazparaiso.com.br/index.php?option=com_accombo&func=detail&Itemid=S@BUN&id=-99999/**/uNiOn/**/sEleCt/**/0,1,0x3a,3,4,5,6,7,8,9,10,11,12,0x33633','','','',0,'2012-01-07 21:59:06','0000-00-00 00:00:00'),(559,'http://fazparaiso.com.br/index.php?option=com_jashowcase&view=jashowcase&Itemid=109&catid=34/**/aNd/**/1=2/**/uNiOn/**/sEleCt/**/0,1,0x33633273366962,','','','',0,'2012-01-07 22:17:49','0000-00-00 00:00:00'),(560,'http://fazparaiso.com.br/index.php?option=com_clasifier&Itemid=S@BUN&cat_id=-9999999/**/uNiOn/**/sEleCt/**/0x33633273366962/**/fRoM/**/jos_users--','','','',0,'2012-01-07 23:21:45','0000-00-00 00:00:00'),(561,'http://fazparaiso.com.br/index.php?option=com_dshop&controller=fpage&task=flypage&idofitem=12/**/uNiOn/**/sEleCt/**/0,1,2,0x33633273366962,4,5,6,7/**/','','','',0,'2012-01-07 23:38:25','0000-00-00 00:00:00'),(562,'http://fazparaiso.com.br/index.php?option=com_joomtracker&task=tordetails&id=1/**/aNd/**/1=2/**/uNiOn/**/sEleCt/**/0,1,2,3,4,5,6,7,8,9,10,11,12,0x3363','','','',0,'2012-01-07 23:48:26','0000-00-00 00:00:00'),(563,'http://fazparaiso.com.br/index.php?option=com_altas&mes=-1/**/uNiOn/**/sEleCt/**/1,2,0x33633273366962,4,5,6,7,8/**/fRoM/**/jos_users--','','','',0,'2012-01-08 00:10:29','0000-00-00 00:00:00'),(564,'http://fazparaiso.com.br/index.php?option=com_news_portal&Itemid=-1/**/uNiOn/**/sEleCt/**/111,0x33633273366962,333/**/fRoM/**/jos_users--','','','',0,'2012-01-08 00:50:45','0000-00-00 00:00:00'),(565,'http://fazparaiso.com.br/index.php?option=com_catalogshop&Itemid=S@BUN&func=detail&id=-1/**/uNiOn/**/sEleCt/**/null,null,0x33633273366962,3,4,5,6,7,8,','','','',0,'2012-01-08 01:01:01','0000-00-00 00:00:00'),(566,'http://fazparaiso.com.br/index.php?option=com_actualite&task=edit&id=-1/**/uNiOn/**/sEleCt/**/1,0x33633273366962,3,4,5,6,7,8,9/**/fRoM/**/jos_users--','','','',0,'2012-01-08 01:04:43','0000-00-00 00:00:00'),(567,'http://fazparaiso.com.br/index.php?option=com_awesom&Itemid=S@BUN&task=viewlist&listid=-1/**/uNiOn/**/sEleCt/**/null,0x33633273366962,null,null,null,n','','','',0,'2012-01-08 02:08:10','0000-00-00 00:00:00'),(568,'http://www.fazparaiso.com.br/joomla/components/com_pinboard/popup/popup.php','','','',0,'2012-01-08 02:27:24','0000-00-00 00:00:00'),(569,'http://fazparaiso.com.br/index.php?option=com_hbstopdestinations&task=details&cId=&sId=&cityId=&f_date=&t_date=&h_id=-50/**/uNiOn/**/sEleCt/**/1,2,3,4','','','',0,'2012-01-08 02:28:15','0000-00-00 00:00:00'),(570,'http://fazparaiso.com.br/index.php?option=com_emaildirectory&nshow=image&view=photos&id=-666/**//**/uNiOn/**/sEleCt/**/0x33633273366962/**/fRoM/**/jos','','','',0,'2012-01-08 03:13:35','0000-00-00 00:00:00'),(571,'http://fazparaiso.com.br/index.php?option=com_altas&mes=hsmx&ano=-1/**/uNiOn/**/sEleCt/**/1,2,0x33633273366962,4,5,6,7,8/**/fRoM/**/jos_users--','','','',0,'2012-01-08 04:19:14','0000-00-00 00:00:00'),(572,'http://fazparaiso.com.br/index.php?option=com_artist&idgalery=-1/**/uNiOn/**/sEleCt/**/1,2,3,0x33633273366962,5,6,7,8,9/**/fRoM/**/jos_users--','','','',0,'2012-01-08 05:10:12','0000-00-00 00:00:00'),(573,'http://fazparaiso.com.br/index.php?option=com_acajoom&act=mailing&task=view&listid=1&Itemid=1&mailingid=1/**/uNiOn/**/sEleCt/**/1,1,1,1,0x336332733669','','','',0,'2012-01-08 05:49:30','0000-00-00 00:00:00'),(574,'http://fazparaiso.com.br/index.php?option=com_alberghi&task=detail&Itemid=S@BUN&id=-99999/**/uNiOn/**/sEleCt/**/0,0,0x3a,0,0,0,0,0,0,0,0,11,12,1,1,1,1','','','',0,'2012-01-08 06:11:19','0000-00-00 00:00:00'),(575,'http://www.fazparaiso.com.br/component/com_onlineflashquiz/quiz/common/db_config.inc.php','','','',0,'2012-01-09 16:02:38','0000-00-00 00:00:00'),(576,'http://fazparaiso.com.br/j15/index.php','','','',0,'2012-01-09 20:09:44','0000-00-00 00:00:00'),(577,'http://www.fazparaiso.com.br/ul','','','',0,'2012-01-18 08:00:16','0000-00-00 00:00:00'),(578,'http://www.fazparaiso.com.br/ag_disabled_or_del','','','',0,'2012-01-18 08:00:48','0000-00-00 00:00:00'),(579,'http://www.fazparaiso.com.br/fade','','','',0,'2012-01-18 08:01:46','0000-00-00 00:00:00'),(580,'http://www.fazparaiso.com.br/sufics_varibal','','','',0,'2012-01-18 08:03:04','0000-00-00 00:00:00'),(581,'http://www.fazparaiso.com.br/_','','','',0,'2012-01-18 09:46:44','0000-00-00 00:00:00'),(582,'http://www.fazparaiso.com.br/200','','','',0,'2012-01-18 11:32:06','0000-00-00 00:00:00'),(583,'http://www.fazparaiso.com.br/just_site_url','','','',0,'2012-01-18 11:32:37','0000-00-00 00:00:00'),(584,'http://www.fazparaiso.com.br/mod_nicepoll','','','',0,'2012-01-18 11:33:04','0000-00-00 00:00:00'),(585,'http://www.fazparaiso.com.br/,','','','',0,'2012-01-18 11:33:30','0000-00-00 00:00:00'),(586,'http://www.fazparaiso.com.br/already_voted','','','',0,'2012-01-18 11:34:06','0000-00-00 00:00:00'),(587,'http://www.fazparaiso.com.br/ag_fast_refrash','','','',0,'2012-01-18 13:18:00','0000-00-00 00:00:00'),(588,'http://www.fazparaiso.com.br/full_url_nicepoll','','','',0,'2012-01-18 13:19:25','0000-00-00 00:00:00'),(589,'http://www.fazparaiso.com.br/domready','','','',0,'2012-01-18 14:59:20','0000-00-00 00:00:00'),(590,'http://www.fazparaiso.com.br/mySlideshow39','','','',0,'2012-01-18 15:01:17','0000-00-00 00:00:00'),(591,'http://www.fazparaiso.com.br/nicepoll_template_list','','','',0,'2012-01-18 16:53:30','0000-00-00 00:00:00'),(592,'http://www.fazparaiso.com.br/ageent_main_only3','','','',0,'2012-01-18 16:53:59','0000-00-00 00:00:00'),(593,'http://www.fazparaiso.com.br/nicepoll_width_percent','','','',0,'2012-01-18 16:54:24','0000-00-00 00:00:00'),(594,'http://www.fazparaiso.com.br/show_resultat','','','',0,'2012-01-18 16:54:58','0000-00-00 00:00:00'),(595,'http://www.fazparaiso.com.br/:','','','',0,'2012-01-18 16:56:19','0000-00-00 00:00:00'),(596,'http://www.fazparaiso.com.br/jdSlideshow','','','',0,'2012-01-18 16:56:46','0000-00-00 00:00:00'),(597,'http://www.fazparaiso.com.br/ageent_main_only1','','','',0,'2012-01-18 16:58:13','0000-00-00 00:00:00'),(598,'http://www.fazparaiso.com.br/::','','','',0,'2012-01-18 22:14:55','0000-00-00 00:00:00'),(599,'http://www.fazparaiso.com.br/text','','','',0,'2012-01-18 22:15:27','0000-00-00 00:00:00'),(600,'http://www.fazparaiso.com.br/component/users/200','','','',0,'2012-01-18 22:15:53','0000-00-00 00:00:00'),(601,'http://www.fazparaiso.com.br/load','','','',0,'2012-01-18 22:17:55','0000-00-00 00:00:00'),(602,'http://www.fazparaiso.com.br/ag_real_back','','','',0,'2012-01-18 22:18:28','0000-00-00 00:00:00'),(603,'http://www.fazparaiso.com.br/div[class=\"menusub_mega\"]','','','',0,'2012-01-18 22:19:02','0000-00-00 00:00:00'),(604,'http://www.fazparaiso.com.br/megamenu_close','','','',0,'2012-01-18 22:19:26','0000-00-00 00:00:00'),(605,'http://www.fazparaiso.com.br/ag_total_votes','','','',0,'2012-01-18 22:20:55','0000-00-00 00:00:00'),(606,'http://www.fazparaiso.com.br/fancymenu','','','',0,'2012-01-19 00:04:23','0000-00-00 00:00:00'),(607,'http://www.fazparaiso.com.br/title','','','',0,'2012-01-19 00:06:51','0000-00-00 00:00:00'),(608,'http://www.fazparaiso.com.br/id','','','',0,'2012-01-19 00:07:18','0000-00-00 00:00:00'),(609,'http://www.fazparaiso.com.br/get','','','',0,'2012-01-19 00:09:33','0000-00-00 00:00:00'),(610,'http://www.fazparaiso.com.br/response','','','',0,'2012-01-19 03:57:22','0000-00-00 00:00:00'),(611,'http://www.fazparaiso.com.br/AM-01-19','','','',0,'2012-01-19 05:54:38','0000-00-00 00:00:00'),(612,'http://www.fazparaiso.com.br/ageent_main_only2','','','',0,'2012-01-19 05:57:45','0000-00-00 00:00:00'),(613,'http://www.fazparaiso.com.br/galeria-de-fotos/category/fancymenu','','','',0,'2012-01-19 07:47:10','0000-00-00 00:00:00'),(614,'http://www.fazparaiso.com.br/galeria-de-fotos/category/rel','','','',0,'2012-01-19 07:47:38','0000-00-00 00:00:00'),(615,'http://www.fazparaiso.com.br/galeria-de-fotos/category/show_resultat','','','',0,'2012-01-19 07:50:36','0000-00-00 00:00:00'),(616,'http://www.fazparaiso.com.br/galeria-de-fotos/category/id','','','',0,'2012-01-19 07:51:09','0000-00-00 00:00:00'),(617,'http://www.fazparaiso.com.br/galeria-de-fotos/category/just_site_url','','','',0,'2012-01-19 09:42:47','0000-00-00 00:00:00'),(618,'http://www.fazparaiso.com.br/galeria-de-fotos/category/ag_disabled_or_del','','','',0,'2012-01-19 15:29:07','0000-00-00 00:00:00'),(619,'http://www.fazparaiso.com.br/galeria-de-fotos/category/full_url_nicepoll','','','',0,'2012-01-20 01:15:11','0000-00-00 00:00:00'),(620,'http://www.fazparaiso.com.br/galeria-de-fotos/category/get','','','',0,'2012-01-20 01:16:07','0000-00-00 00:00:00'),(621,'http://www.fazparaiso.com.br/galeria-de-fotos/category/jdSlideshow','','','',0,'2012-01-20 03:14:25','0000-00-00 00:00:00'),(622,'http://www.fazparaiso.com.br/galeria-de-fotos/category/sufics_varibal','','','',0,'2012-01-20 05:15:25','0000-00-00 00:00:00'),(623,'http://www.fazparaiso.com.br/galeria-de-fotos/category/ul','','','',0,'2012-01-20 07:15:57','0000-00-00 00:00:00'),(624,'http://www.fazparaiso.com.br/galeria-de-fotos/category/:','','','',0,'2012-01-20 09:18:39','0000-00-00 00:00:00'),(625,'http://www.fazparaiso.com.br/galeria-de-fotos/category/,','','','',0,'2012-01-20 09:22:06','0000-00-00 00:00:00'),(626,'http://www.fazparaiso.com.br/galeria-de-fotos/category/already_voted','','','',0,'2012-01-20 11:15:19','0000-00-00 00:00:00'),(627,'http://www.fazparaiso.com.br/galeria-de-fotos/category/fade','','','',0,'2012-01-20 15:16:09','0000-00-00 00:00:00'),(628,'http://www.fazparaiso.com.br/galeria-de-fotos/category/200','','','',0,'2012-01-20 15:16:38','0000-00-00 00:00:00'),(629,'http://www.fazparaiso.com.br/galeria-de-fotos/category/_','','','',0,'2012-01-20 17:20:20','0000-00-00 00:00:00'),(630,'http://www.fazparaiso.com.br/galeria-de-fotos/category/nicepoll_width_percent','','','',0,'2012-01-20 19:19:09','0000-00-00 00:00:00'),(631,'http://www.fazparaiso.com.br/galeria-de-fotos/category/div[class=\"menusub_mega\"]','','','',0,'2012-01-20 19:20:35','0000-00-00 00:00:00'),(632,'http://www.fazparaiso.com.br/galeria-de-fotos/category/load','','','',0,'2012-01-21 01:36:32','0000-00-00 00:00:00'),(633,'http://www.fazparaiso.com.br/galeria-de-fotos/category/domready','','','',0,'2012-01-21 05:54:54','0000-00-00 00:00:00'),(634,'http://www.fazparaiso.com.br/galeria-de-fotos/category/ag_fast_refrash','','','',0,'2012-01-21 10:40:34','0000-00-00 00:00:00'),(635,'http://www.fazparaiso.com.br/galeria-de-fotos/category/mod_nicepoll','','','',0,'2012-01-21 10:42:38','0000-00-00 00:00:00'),(636,'http://www.fazparaiso.com.br/j15/index.php?option=com_poll&id=2:qual-a-sua-raca-preferida','','','',0,'2012-01-21 16:31:45','0000-00-00 00:00:00'),(637,'http://www.fazparaiso.com.br/galeria-de-fotos/category/megamenu_close','','','',0,'2012-01-21 17:42:33','0000-00-00 00:00:00'),(638,'http://www.fazparaiso.com.br/galeria-de-fotos/category/mySlideshow39','','','',0,'2012-01-21 21:57:14','0000-00-00 00:00:00'),(639,'http://www.fazparaiso.com.br/galeria-de-fotos/category/ag_total_votes','','','',0,'2012-01-22 02:18:24','0000-00-00 00:00:00'),(640,'http://www.fazparaiso.com.br/galeria-de-fotos/category/nicepoll_template_list','','','',0,'2012-01-22 04:11:08','0000-00-00 00:00:00'),(641,'http://www.fazparaiso.com.br/galeria-de-fotos/category/ag_real_back','','','',0,'2012-01-22 08:30:45','0000-00-00 00:00:00'),(642,'http://www.fazparaiso.com.br/a/oam-pSoe-nt/see','','','',0,'2012-02-08 08:36:46','0000-00-00 00:00:00'),(643,'http://www.fazparaiso.com.br/ttp:/www.fazparaiso.com.br/','','','',0,'2012-02-08 08:40:40','0000-00-00 00:00:00'),(644,'http://www.fazparaiso.com.br/rbufalos-abaetetuba.html','','','',0,'2012-02-08 08:42:21','0000-00-00 00:00:00'),(645,'http://www.fazparaiso.com.br/marcas/297/honeywellx','','','',0,'2012-02-08 08:44:01','0000-00-00 00:00:00'),(646,'http://www.fazparaiso.com.br/pategory/derevja-svetodiodoyeremiacoes-marajo.html','','','',0,'2012-02-08 08:52:42','0000-00-00 00:00:00'),(647,'http://www.fazparaiso.com.br/msearch/?tag=AR111iew=reset','','','',0,'2012-02-08 08:56:10','0000-00-00 00:00:00'),(648,'http://www.fazparaiso.com.br/png','','http://www.fazparaiso.com.br/png','',0,'2012-02-25 01:59:42','0000-00-00 00:00:00'),(649,'http://www.fazparaiso.com.br/leiamais','','http://www.fazparaiso.com.br/leiamais','',0,'2012-02-25 02:00:19','0000-00-00 00:00:00'),(650,'http://www.fazparaiso.com.br/signup','','http://www.fazparaiso.com.br/signup','',0,'2012-02-25 02:03:00','0000-00-00 00:00:00'),(651,'http://www.fazparaiso.com.br/galeria-de-fotos/category/png','','http://www.fazparaiso.com.br/galeria-de-fotos/category/png','',0,'2012-02-25 02:04:55','0000-00-00 00:00:00'),(652,'http://www.fazparaiso.com.br/galeria-de-fotos/category/pg-modal-button','','http://www.fazparaiso.com.br/galeria-de-fotos/category/pg-modal-button','',0,'2012-02-25 02:05:05','0000-00-00 00:00:00'),(653,'http://www.fazparaiso.com.br/galeria-de-fotos/category/signup','','http://www.fazparaiso.com.br/galeria-de-fotos/category/signup','',0,'2012-02-25 02:05:05','0000-00-00 00:00:00'),(654,'http://www.fazparaiso.com.br/galeria-de-fotos/category/leiamais','','http://www.fazparaiso.com.br/galeria-de-fotos/category/leiamais','',0,'2012-02-25 02:05:07','0000-00-00 00:00:00'),(655,'http://www.fazparaiso.com.br/galeria-de-fotos/category/Download','','http://www.fazparaiso.com.br/galeria-de-fotos/category/Download','',0,'2012-02-25 02:05:07','0000-00-00 00:00:00'),(656,'http://fazparaiso.com.br/.anuale/MC1.pdfo.com.br/','','','',0,'2012-03-01 13:44:44','0000-00-00 00:00:00'),(657,'http://www.fazparaiso.com.br/index.php?option=com_rmplbzkrmlrmfwgz','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:42','0000-00-00 00:00:00'),(658,'http://www.fazparaiso.com.br/index.php?option=com_jce','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:43','0000-00-00 00:00:00'),(659,'http://www.fazparaiso.com.br/index.php?option=com_virtuemart&vmcchk=1','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:43','0000-00-00 00:00:00'),(660,'http://www.fazparaiso.com.br/index.php?option=com_xmap','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:44','0000-00-00 00:00:00'),(661,'http://www.fazparaiso.com.br/index.php?option=com_sh404sef','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:44','0000-00-00 00:00:00'),(662,'http://www.fazparaiso.com.br/index.php?option=com_tienda','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:44','0000-00-00 00:00:00'),(663,'http://www.fazparaiso.com.br/index.php?option=com_gantry','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:45','0000-00-00 00:00:00'),(664,'http://www.fazparaiso.com.br/index.php?option=com_joomfish','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:45','0000-00-00 00:00:00'),(665,'http://www.fazparaiso.com.br/index.php?option=com_fabrik','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:46','0000-00-00 00:00:00'),(666,'http://www.fazparaiso.com.br/index.php?option=com_forme','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:46','0000-00-00 00:00:00'),(667,'http://www.fazparaiso.com.br/index.php?option=com_akeeba','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:47','0000-00-00 00:00:00'),(668,'http://www.fazparaiso.com.br/index.php?option=com_docman','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:47','0000-00-00 00:00:00'),(669,'http://www.fazparaiso.com.br/index.php?option=com_eventlist','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:48','0000-00-00 00:00:00'),(670,'http://www.fazparaiso.com.br/index.php?option=com_kunena','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:48','0000-00-00 00:00:00'),(671,'http://www.fazparaiso.com.br/index.php?option=com_flexicontent','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:49','0000-00-00 00:00:00'),(672,'http://www.fazparaiso.com.br/index.php?option=com_sm2emailmarketing','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:49','0000-00-00 00:00:00'),(673,'http://www.fazparaiso.com.br/index.php?option=com_letterman','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:50','0000-00-00 00:00:00'),(674,'http://www.fazparaiso.com.br/index.php?option=com_comprofiler','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:50','0000-00-00 00:00:00'),(675,'http://www.fazparaiso.com.br/index.php?option=com_jobline','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:51','0000-00-00 00:00:00'),(676,'http://www.fazparaiso.com.br/index.php?option=com_dfcontact','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:51','0000-00-00 00:00:00'),(677,'http://www.fazparaiso.com.br/index.php?option=com_chronocontact','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:52','0000-00-00 00:00:00'),(678,'http://www.fazparaiso.com.br/index.php?option=com_joomlawatch','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:52','0000-00-00 00:00:00'),(679,'http://www.fazparaiso.com.br/index.php?option=com_k2&view=html','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:53','0000-00-00 00:00:00'),(680,'http://www.fazparaiso.com.br/index.php?option=com_fpss&task=getimages','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:54','0000-00-00 00:00:00'),(681,'http://www.fazparaiso.com.br/index.php?option=com_zoo','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:54','0000-00-00 00:00:00'),(682,'http://www.fazparaiso.com.br/index.php?option=com_securityimages&task=displaycaptcha','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:55','0000-00-00 00:00:00'),(683,'http://www.fazparaiso.com.br/index.php?option=com_apoll','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:55','0000-00-00 00:00:00'),(684,'http://www.fazparaiso.com.br/index.php?option=com_jcomments','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:56','0000-00-00 00:00:00'),(685,'http://www.fazparaiso.com.br/index.php?option=com_seyret','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:56','0000-00-00 00:00:00'),(686,'http://www.fazparaiso.com.br/index.php?option=com_joomailermailchimpintegration','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:57','0000-00-00 00:00:00'),(687,'http://www.fazparaiso.com.br/index.php?option=com_rokcandy','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:57','0000-00-00 00:00:00'),(688,'http://www.fazparaiso.com.br/index.php?option=com_qcontacts','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:58','0000-00-00 00:00:00'),(689,'http://www.fazparaiso.com.br/index.php?option=com_aicontactsafe','','http://verticalpigeon.com/','',0,'2012-03-07 20:58:59','0000-00-00 00:00:00'),(690,'http://www.fazparaiso.com.br/index.php?option=com_contact_enhanced','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:00','0000-00-00 00:00:00'),(691,'http://www.fazparaiso.com.br/index.php?option=com_nspro','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:00','0000-00-00 00:00:00'),(692,'http://www.fazparaiso.com.br/index.php?option=com_jumi','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:01','0000-00-00 00:00:00'),(693,'http://www.fazparaiso.com.br/index.php?option=com_sobi2','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:01','0000-00-00 00:00:00'),(694,'http://www.fazparaiso.com.br/index.php?option=com_oziogallery2','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:02','0000-00-00 00:00:00'),(695,'http://www.fazparaiso.com.br/index.php?option=com_jdownloads','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:02','0000-00-00 00:00:00'),(696,'http://www.fazparaiso.com.br/index.php?option=com_breezingforms','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:03','0000-00-00 00:00:00'),(697,'http://www.fazparaiso.com.br/index.php?option=com_extplorer','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:03','0000-00-00 00:00:00'),(698,'http://www.fazparaiso.com.br/index.php?option=com_jfusion','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:04','0000-00-00 00:00:00'),(699,'http://www.fazparaiso.com.br/index.php?option=com_redshop','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:04','0000-00-00 00:00:00'),(700,'http://www.fazparaiso.com.br/index.php?option=com_sef','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:05','0000-00-00 00:00:00'),(701,'http://www.fazparaiso.com.br/index.php?option=com_lmo','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:05','0000-00-00 00:00:00'),(702,'http://www.fazparaiso.com.br/index.php?option=com_ynews','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:06','0000-00-00 00:00:00'),(703,'http://www.fazparaiso.com.br/index.php?option=com_jfuploader','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:06','0000-00-00 00:00:00'),(704,'http://www.fazparaiso.com.br/index.php?option=com_dshop','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:07','0000-00-00 00:00:00'),(705,'http://www.fazparaiso.com.br/index.php?option=com_joomlaflashfun','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:07','0000-00-00 00:00:00'),(706,'http://www.fazparaiso.com.br/index.php?option=com_colophon','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:08','0000-00-00 00:00:00'),(707,'http://www.fazparaiso.com.br/index.php?option=com_nicetalk','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:08','0000-00-00 00:00:00'),(708,'http://www.fazparaiso.com.br/index.php?option=com_jd-wiki','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:09','0000-00-00 00:00:00'),(709,'http://www.fazparaiso.com.br/index.php?option=com_versioning','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:09','0000-00-00 00:00:00'),(710,'http://www.fazparaiso.com.br/index.php?option=com_rapidrecipe','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:10','0000-00-00 00:00:00'),(711,'http://www.fazparaiso.com.br/index.php?option=com_artlinks','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:10','0000-00-00 00:00:00'),(712,'http://www.fazparaiso.com.br/index.php?option=com_simpleboard','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:10','0000-00-00 00:00:00'),(713,'http://www.fazparaiso.com.br/index.php?option=com_juser','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:11','0000-00-00 00:00:00'),(714,'http://www.fazparaiso.com.br/index.php?option=com_dcnews','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:11','0000-00-00 00:00:00'),(715,'http://www.fazparaiso.com.br/index.php?option=com_pccookbook','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:12','0000-00-00 00:00:00'),(716,'http://www.fazparaiso.com.br/index.php?option=com_mosmedia','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:12','0000-00-00 00:00:00'),(717,'http://www.fazparaiso.com.br/index.php?option=com_mospray','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:13','0000-00-00 00:00:00'),(718,'http://www.fazparaiso.com.br/index.php?option=com_wmtgallery','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:13','0000-00-00 00:00:00'),(719,'http://www.fazparaiso.com.br/index.php?option=com_tsonymf','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:14','0000-00-00 00:00:00'),(720,'http://www.fazparaiso.com.br/index.php?option=com_agora','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:14','0000-00-00 00:00:00'),(721,'http://www.fazparaiso.com.br/index.php?option=com_jjgallery','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:15','0000-00-00 00:00:00'),(722,'http://www.fazparaiso.com.br/index.php?option=com_timereturns','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:15','0000-00-00 00:00:00'),(723,'http://www.fazparaiso.com.br/index.php?option=com_cpg','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:16','0000-00-00 00:00:00'),(724,'http://www.fazparaiso.com.br/index.php?option=com_lurm_constructormambatstaff','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:16','0000-00-00 00:00:00'),(725,'http://www.fazparaiso.com.br/index.php?option=com_ccinvoices','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:17','0000-00-00 00:00:00'),(726,'http://www.fazparaiso.com.br/index.php?option=com_mmp','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:17','0000-00-00 00:00:00'),(727,'http://www.fazparaiso.com.br/index.php?option=com_joomtouch','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:18','0000-00-00 00:00:00'),(728,'http://www.fazparaiso.com.br/index.php?option=com_jpack','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:18','0000-00-00 00:00:00'),(729,'http://www.fazparaiso.com.br/index.php?option=com_galleria','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:19','0000-00-00 00:00:00'),(730,'http://www.fazparaiso.com.br/index.php?option=com_philaform','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:19','0000-00-00 00:00:00'),(731,'http://www.fazparaiso.com.br/index.php?option=com_discussions','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:20','0000-00-00 00:00:00'),(732,'http://www.fazparaiso.com.br/index.php?option=com_sitemap','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:25','0000-00-00 00:00:00'),(733,'http://www.fazparaiso.com.br/index.php?option=com_obsuggest','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:26','0000-00-00 00:00:00'),(734,'http://www.fazparaiso.com.br/index.php?option=com_joomlaradiov5','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:26','0000-00-00 00:00:00'),(735,'http://www.fazparaiso.com.br/index.php?option=com_team','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:27','0000-00-00 00:00:00'),(736,'http://www.fazparaiso.com.br/index.php?option=com_performs','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:27','0000-00-00 00:00:00'),(737,'http://www.fazparaiso.com.br/index.php?option=com_xcloner-backupandrestore','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:28','0000-00-00 00:00:00'),(738,'http://www.fazparaiso.com.br/index.php?option=com_nfn_addressbook','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:28','0000-00-00 00:00:00'),(739,'http://www.fazparaiso.com.br/index.php?option=com_bayesiannaivefilcalendar','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:29','0000-00-00 00:00:00'),(740,'http://www.fazparaiso.com.br/index.php?option=com_galeria','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:29','0000-00-00 00:00:00'),(741,'http://www.fazparaiso.com.br/index.php?option=com_calcbuilder','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:30','0000-00-00 00:00:00'),(742,'http://www.fazparaiso.com.br/index.php?option=com_matrimony','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:30','0000-00-00 00:00:00'),(743,'http://www.fazparaiso.com.br/index.php?option=com_booklibrary','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:32','0000-00-00 00:00:00'),(744,'http://www.fazparaiso.com.br/index.php?option=com_videodb','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:34','0000-00-00 00:00:00'),(745,'http://www.fazparaiso.com.br/index.php?option=com_color','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:35','0000-00-00 00:00:00'),(746,'http://www.fazparaiso.com.br/index.php?option=com_news','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:35','0000-00-00 00:00:00'),(747,'http://www.fazparaiso.com.br/index.php?option=com_loudmounth','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:36','0000-00-00 00:00:00'),(748,'http://www.fazparaiso.com.br/index.php?option=com_jquarks4s','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:36','0000-00-00 00:00:00'),(749,'http://www.fazparaiso.com.br/index.php?option=com_flipwall','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:37','0000-00-00 00:00:00'),(750,'http://www.fazparaiso.com.br/index.php?option=com_ebackup','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:37','0000-00-00 00:00:00'),(751,'http://www.fazparaiso.com.br/index.php?option=com_noticias','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:38','0000-00-00 00:00:00'),(752,'http://www.fazparaiso.com.br/index.php?option=com_jobprofile','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:38','0000-00-00 00:00:00'),(753,'http://www.fazparaiso.com.br/index.php?option=com_xfaq','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:39','0000-00-00 00:00:00'),(754,'http://www.fazparaiso.com.br/index.php?option=com_jcs','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:39','0000-00-00 00:00:00'),(755,'http://www.fazparaiso.com.br/index.php?option=com_easybook','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:40','0000-00-00 00:00:00'),(756,'http://www.fazparaiso.com.br/index.php?option=com_restaurante','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:40','0000-00-00 00:00:00'),(757,'http://www.fazparaiso.com.br/index.php?option=com_rsgallery','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:41','0000-00-00 00:00:00'),(758,'http://www.fazparaiso.com.br/index.php?option=com_hmcommunity','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:41','0000-00-00 00:00:00'),(759,'http://www.fazparaiso.com.br/index.php?option=com_multibanners','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:42','0000-00-00 00:00:00'),(760,'http://www.fazparaiso.com.br/index.php?option=com_swmenupro','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:42','0000-00-00 00:00:00'),(761,'http://www.fazparaiso.com.br/index.php?option=com_linkdirectory','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:43','0000-00-00 00:00:00'),(762,'http://www.fazparaiso.com.br/index.php?option=com_question','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:43','0000-00-00 00:00:00'),(763,'http://www.fazparaiso.com.br/index.php?option=com_joom12pic','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:44','0000-00-00 00:00:00'),(764,'http://www.fazparaiso.com.br/index.php?option=com_mtree','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:44','0000-00-00 00:00:00'),(765,'http://www.fazparaiso.com.br/index.php?option=com_jombib','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:45','0000-00-00 00:00:00'),(766,'http://www.fazparaiso.com.br/index.php?option=com_rsgallery2','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:45','0000-00-00 00:00:00'),(767,'http://www.fazparaiso.com.br/index.php?option=com_joomnik','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:45','0000-00-00 00:00:00'),(768,'http://www.fazparaiso.com.br/index.php?option=com_autostand','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:46','0000-00-00 00:00:00'),(769,'http://www.fazparaiso.com.br/index.php?option=com_agoragroup','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:46','0000-00-00 00:00:00'),(770,'http://www.fazparaiso.com.br/index.php?option=com_articles','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:47','0000-00-00 00:00:00'),(771,'http://www.fazparaiso.com.br/index.php?option=com_connect','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:47','0000-00-00 00:00:00'),(772,'http://www.fazparaiso.com.br/index.php?option=com_webring','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:48','0000-00-00 00:00:00'),(773,'http://www.fazparaiso.com.br/index.php?option=com_htmlarea3_xtd-c','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:48','0000-00-00 00:00:00'),(774,'http://www.fazparaiso.com.br/index.php?option=com_astatspro','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:49','0000-00-00 00:00:00'),(775,'http://www.fazparaiso.com.br/index.php?option=com_neorecruit','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:49','0000-00-00 00:00:00'),(776,'http://www.fazparaiso.com.br/index.php?option=com_panoramic','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:50','0000-00-00 00:00:00'),(777,'http://www.fazparaiso.com.br/index.php?option=com_puarcade','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:50','0000-00-00 00:00:00'),(778,'http://www.fazparaiso.com.br/index.php?option=com_ponygallery','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:51','0000-00-00 00:00:00'),(779,'http://www.fazparaiso.com.br/index.php?option=com_pollxt','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:51','0000-00-00 00:00:00'),(780,'http://www.fazparaiso.com.br/index.php?option=com_mcquiz','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:52','0000-00-00 00:00:00'),(781,'http://www.fazparaiso.com.br/index.php?option=com_uhp','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:52','0000-00-00 00:00:00'),(782,'http://www.fazparaiso.com.br/index.php?option=com_mgm','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:53','0000-00-00 00:00:00'),(783,'http://www.fazparaiso.com.br/index.php?option=com_joomlalib','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:53','0000-00-00 00:00:00'),(784,'http://www.fazparaiso.com.br/index.php?option=com_alameda','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:54','0000-00-00 00:00:00'),(785,'http://www.fazparaiso.com.br/index.php?option=com_quiz','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:54','0000-00-00 00:00:00'),(786,'http://www.fazparaiso.com.br/index.php?option=com_contushdvideoshare','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:55','0000-00-00 00:00:00'),(787,'http://www.fazparaiso.com.br/index.php?option=com_hello','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:55','0000-00-00 00:00:00'),(788,'http://www.fazparaiso.com.br/index.php?option=com_remository','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:56','0000-00-00 00:00:00'),(789,'http://www.fazparaiso.com.br/index.php?option=com_jeajaxeventcalendar','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:57','0000-00-00 00:00:00'),(790,'http://www.fazparaiso.com.br/index.php?option=com_sponsorwall','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:57','0000-00-00 00:00:00'),(791,'http://www.fazparaiso.com.br/index.php?option=com_bsadv','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:58','0000-00-00 00:00:00'),(792,'http://www.fazparaiso.com.br/index.php?option=com_resman','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:58','0000-00-00 00:00:00'),(793,'http://www.fazparaiso.com.br/index.php?option=com_jmsfileseller','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:59','0000-00-00 00:00:00'),(794,'http://www.fazparaiso.com.br/index.php?option=com_phpshop','','http://verticalpigeon.com/','',0,'2012-03-07 20:59:59','0000-00-00 00:00:00'),(795,'http://www.fazparaiso.com.br/index.php?option=com_rsappt_pro2','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:00','0000-00-00 00:00:00'),(796,'http://www.fazparaiso.com.br/index.php?option=com_admin','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:00','0000-00-00 00:00:00'),(797,'http://www.fazparaiso.com.br/index.php?option=com_caproductprices','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:01','0000-00-00 00:00:00'),(798,'http://www.fazparaiso.com.br/index.php?option=com_extended_registrezine','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:01','0000-00-00 00:00:00'),(799,'http://www.fazparaiso.com.br/index.php?option=com_rwcards','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:02','0000-00-00 00:00:00'),(800,'http://www.fazparaiso.com.br/index.php?option=com_neogallery','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:02','0000-00-00 00:00:00'),(801,'http://www.fazparaiso.com.br/index.php?option=com_hashcash','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:03','0000-00-00 00:00:00'),(802,'http://www.fazparaiso.com.br/index.php?option=com_kochsuite','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:03','0000-00-00 00:00:00'),(803,'http://www.fazparaiso.com.br/index.php?option=com_jooget','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:04','0000-00-00 00:00:00'),(804,'http://www.fazparaiso.com.br/index.php?option=com_jscalendar','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:05','0000-00-00 00:00:00'),(805,'http://www.fazparaiso.com.br/index.php?option=com_zoom','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:05','0000-00-00 00:00:00'),(806,'http://www.fazparaiso.com.br/index.php?option=com_artforms','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:06','0000-00-00 00:00:00'),(807,'http://www.fazparaiso.com.br/index.php?option=com_paxxgallery','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:06','0000-00-00 00:00:00'),(808,'http://www.fazparaiso.com.br/index.php?option=com_mediaslide','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:07','0000-00-00 00:00:00'),(809,'http://www.fazparaiso.com.br/index.php?option=com_neoreferences','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:07','0000-00-00 00:00:00'),(810,'http://www.fazparaiso.com.br/index.php?option=com_facileforms','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:08','0000-00-00 00:00:00'),(811,'http://www.fazparaiso.com.br/index.php?option=com_cropimage','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:08','0000-00-00 00:00:00'),(812,'http://www.fazparaiso.com.br/index.php?option=com_joomla_flash_upljoomlaboard','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:14','0000-00-00 00:00:00'),(813,'http://www.fazparaiso.com.br/index.php?option=com_pcchess','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:15','0000-00-00 00:00:00'),(814,'http://www.fazparaiso.com.br/index.php?option=com_mp3_allopass','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:16','0000-00-00 00:00:00'),(815,'http://www.fazparaiso.com.br/index.php?option=com_doc','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:16','0000-00-00 00:00:00'),(816,'http://www.fazparaiso.com.br/index.php?option=com_quran','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:17','0000-00-00 00:00:00'),(817,'http://www.fazparaiso.com.br/index.php?option=com_peoplebook','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:17','0000-00-00 00:00:00'),(818,'http://www.fazparaiso.com.br/index.php?option=com_mambelfish','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:18','0000-00-00 00:00:00'),(819,'http://www.fazparaiso.com.br/index.php?option=com_mambowiki','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:18','0000-00-00 00:00:00'),(820,'http://www.fazparaiso.com.br/index.php?option=com_mdigg','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:19','0000-00-00 00:00:00'),(821,'http://www.fazparaiso.com.br/index.php?option=com_jim','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:19','0000-00-00 00:00:00'),(822,'http://www.fazparaiso.com.br/index.php?option=com_serverstat','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:20','0000-00-00 00:00:00'),(823,'http://www.fazparaiso.com.br/index.php?option=com_slideshow','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:20','0000-00-00 00:00:00'),(824,'http://www.fazparaiso.com.br/index.php?option=com_minibb','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:21','0000-00-00 00:00:00'),(825,'http://www.fazparaiso.com.br/index.php?option=com_forum','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:21','0000-00-00 00:00:00'),(826,'http://www.fazparaiso.com.br/index.php?option=com_jimtawl','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:22','0000-00-00 00:00:00'),(827,'http://www.fazparaiso.com.br/index.php?option=com_smf','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:22','0000-00-00 00:00:00'),(828,'http://www.fazparaiso.com.br/index.php?option=com_reporter','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:23','0000-00-00 00:00:00'),(829,'http://www.fazparaiso.com.br/index.php?option=com_directory','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:24','0000-00-00 00:00:00'),(830,'http://www.fazparaiso.com.br/index.php?option=com_rsfiles','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:24','0000-00-00 00:00:00'),(831,'http://www.fazparaiso.com.br/index.php?option=com_thopper','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:25','0000-00-00 00:00:00'),(832,'http://www.fazparaiso.com.br/index.php?option=com_gmaps','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:30','0000-00-00 00:00:00'),(833,'http://www.fazparaiso.com.br/index.php?option=com_babackup','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:31','0000-00-00 00:00:00'),(834,'http://www.fazparaiso.com.br/index.php?option=com_flyspray','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:31','0000-00-00 00:00:00'),(835,'http://www.fazparaiso.com.br/index.php?option=com_fireboard','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:32','0000-00-00 00:00:00'),(836,'http://www.fazparaiso.com.br/index.php?option=com_extcalendar','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:32','0000-00-00 00:00:00'),(837,'http://www.fazparaiso.com.br/index.php?option=com_a6mambohelpdesk','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:33','0000-00-00 00:00:00'),(838,'http://www.fazparaiso.com.br/index.php?option=com_clasifier','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:33','0000-00-00 00:00:00'),(839,'http://www.fazparaiso.com.br/index.php?option=com_jvideo','','http://verticalpigeon.com/','',0,'2012-03-07 21:00:34','0000-00-00 00:00:00'),(840,'http://www.fazparaiso.com.br/rsobre-a-fazenda-marajo.html','','','',0,'2012-03-12 20:46:56','0000-00-00 00:00:00'),(841,'http://www.fazparaiso.com.br/potheken-umschau.de/Apotheke.apotheken-umschau.de/Diagnostik-Therapie','','','',0,'2012-03-12 20:47:27','0000-00-00 00:00:00'),(842,'http://www.fazparaiso.com.br/index.php/schabbeszeiten','','','',0,'2012-03-12 20:47:41','0000-00-00 00:00:00'),(843,'http://www.fazparaiso.com.br/bufalos','','','',0,'2012-04-08 14:34:47','0000-00-00 00:00:00'),(844,'http://fazparaiso.com.br/rbufalos-salvaterra.html','','','',0,'2012-04-14 01:34:22','0000-00-00 00:00:00'),(845,'http://fazparaiso.com.br/hsobre-a-fazenda-abaetetuba.html','','','',0,'2012-04-14 01:34:57','0000-00-00 00:00:00'),(846,'http://fazparaiso.com.br/o','','','',0,'2012-04-14 01:35:59','0000-00-00 00:00:00'),(847,'http://fazparaiso.com.br/httgre-a-f8--.aspxzenda-salvaterra.html','','','',0,'2012-04-14 01:36:46','0000-00-00 00:00:00'),(848,'http://fazparaiso.com.br/component/content/','','','',0,'2012-04-17 18:24:13','0000-00-00 00:00:00'),(849,'http://fazparaiso.com.br/index.php','','','',0,'2012-04-17 18:24:14','0000-00-00 00:00:00'),(850,'http://www.fazparaiso.com.br/index.php?option=\'','','','',0,'2012-05-06 03:07:41','0000-00-00 00:00:00'),(851,'http://fazparaiso.com.br/categorys.html','','','',0,'2012-05-28 11:39:16','0000-00-00 00:00:00'),(852,'http://www.fazparaiso.com.br/b-connect_ether','','','',0,'2012-05-28 11:41:44','0000-00-00 00:00:00'),(853,'http://www.fazparaiso.com.br/tg','','','',0,'2012-05-28 11:42:46','0000-00-00 00:00:00'),(854,'http://fazparaiso.com.br/hindex.php','','','',0,'2012-05-28 11:45:15','0000-00-00 00:00:00'),(855,'http://fazparaiso.com.br/hgaleria-de-fotos.html','','','',0,'2012-05-28 11:46:01','0000-00-00 00:00:00'),(856,'http://www.fazparaiso.com.br/galeria-de-fotos/category/iacoes-marajo.html','','','',0,'2012-05-28 11:54:56','0000-00-00 00:00:00'),(857,'http://www.fazparaiso.com.br/galeria-de-fotos/category/htecnologias-abaetetuba.html','','','',0,'2012-05-28 11:55:34','0000-00-00 00:00:00'),(858,'http://www.fazparaiso.com.br/galeria-de-fotos/category/.html','','','',0,'2012-05-28 11:56:11','0000-00-00 00:00:00'),(859,'http://www.fazparaiso.com.br/detail/22-img007.html?tmpl=componentaryzacja-obiektow-przemyslowych/','','','',0,'2012-05-28 12:08:58','0000-00-00 00:00:00'),(860,'http://fazparaiso.com.br/gemgram-de-fotor/aluguel-de-e-fporada-em-parmado-promocao-casmg014.html?to/indeent&p','','','',0,'2012-06-12 21:49:41','0000-00-00 00:00:00'),(861,'http://fazparaiso.com.br/galeria-de-fotos/category/hl?tmp/www.alugu','','','',0,'2012-06-12 21:50:52','0000-00-00 00:00:00'),(862,'http://www.fazparaiso.com.br/undefined','','http://www.fazparaiso.com.br/','',0,'2012-06-19 11:47:45','0000-00-00 00:00:00'),(863,'http://www.fazparaiso.com.br/galeria-de-fotos/category/undefined','','http://www.fazparaiso.com.br/galeria-de-fotos/category/6-galeria-de-fotos-marajo-parte-2.html','',0,'2012-07-07 18:24:56','0000-00-00 00:00:00'),(864,'http://www.fazparaiso.com.br/zqfogruri.html','','','',0,'2012-07-20 17:57:52','0000-00-00 00:00:00'),(865,'http://www.fazparaiso.com.br/olcdqrccbqt.html','','','',0,'2012-07-20 18:10:55','0000-00-00 00:00:00'),(866,'http://www.fazparaiso.com.br/jjlmnflahhzqvyn.html','','','',0,'2012-07-20 18:11:06','0000-00-00 00:00:00'),(867,'http://www.fazparaiso.com.br/sqtpqvdandsx.html','','','',0,'2012-07-20 18:13:46','0000-00-00 00:00:00'),(868,'http://www.fazparaiso.com.br/fvpgdrzwif.html','','','',0,'2012-07-20 18:14:27','0000-00-00 00:00:00'),(869,'http://www.fazparaiso.com.br/blrvygyjfkz.html','','','',0,'2012-07-20 18:16:44','0000-00-00 00:00:00'),(870,'http://www.fazparaiso.com.br/tykzdbjtzh.html','','','',0,'2012-07-20 18:17:42','0000-00-00 00:00:00'),(871,'http://www.fazparaiso.com.br/sprlushicin.html','','','',0,'2012-07-20 18:17:47','0000-00-00 00:00:00'),(872,'http://www.fazparaiso.com.br/whlvcwssedblceo.html','','','',0,'2012-07-20 18:18:31','0000-00-00 00:00:00'),(873,'http://www.fazparaiso.com.br/migkoriy.html','','','',0,'2012-07-20 18:19:36','0000-00-00 00:00:00'),(874,'http://www.fazparaiso.com.br/mpweterz.html','','','',0,'2012-07-20 18:19:54','0000-00-00 00:00:00'),(875,'http://www.fazparaiso.com.br/xpmfmdtdiqbtl.html','','','',0,'2012-07-20 18:21:37','0000-00-00 00:00:00'),(876,'http://www.fazparaiso.com.br/ltwixrjfptjyrtjl.html','','','',0,'2012-07-20 18:21:48','0000-00-00 00:00:00'),(877,'http://www.fazparaiso.com.br/iylaqambhrt.html','','','',0,'2012-07-20 18:22:11','0000-00-00 00:00:00'),(878,'http://www.fazparaiso.com.br/mfszohksxuyul.html','','','',0,'2012-07-20 18:22:45','0000-00-00 00:00:00'),(879,'http://www.fazparaiso.com.br/nzuotlfogrgsfa.html','','','',0,'2012-07-20 18:22:46','0000-00-00 00:00:00'),(880,'http://www.fazparaiso.com.br/zruqrdnk.html','','','',0,'2012-07-20 18:24:33','0000-00-00 00:00:00'),(881,'http://www.fazparaiso.com.br/ebtbcndeflumpg.html','','','',0,'2012-07-20 18:32:08','0000-00-00 00:00:00'),(882,'http://www.fazparaiso.com.br/edkrwuoe.html','','','',0,'2012-07-20 18:33:05','0000-00-00 00:00:00'),(883,'http://www.fazparaiso.com.br/fiuagmndiwz.html','','','',0,'2012-07-20 18:35:50','0000-00-00 00:00:00'),(884,'http://www.fazparaiso.com.br/fbvdysgztdwcuorp.html','','','',0,'2012-07-20 18:38:17','0000-00-00 00:00:00'),(885,'http://www.fazparaiso.com.br/meeemszm.html','','','',0,'2012-07-20 18:39:06','0000-00-00 00:00:00'),(886,'http://fazparaiso.com.br/galeria-de-fotos/category/nt.html?phocadownload=2&start=20','','','',0,'2012-07-21 15:59:44','0000-00-00 00:00:00'),(887,'http://www.fazparaiso.com.br/tmp/Symlink.html','','','',0,'2012-07-22 12:51:17','0000-00-00 00:00:00'),(888,'http://www.fazparaiso.com.br/includes/check/root/home/root/public_html/','','','',0,'2012-07-26 04:34:24','0000-00-00 00:00:00'),(889,'http://www.fazparaiso.com.br/includes/check/root/home/bin/public_html/','','','',0,'2012-07-26 04:34:25','0000-00-00 00:00:00'),(890,'http://www.fazparaiso.com.br/includes/check/root/home/daemon/public_html/','','','',0,'2012-07-26 04:34:25','0000-00-00 00:00:00'),(891,'http://www.fazparaiso.com.br/includes/check/root/home/adm/public_html/','','','',0,'2012-07-26 04:34:25','0000-00-00 00:00:00'),(892,'http://www.fazparaiso.com.br/includes/check/root/home/lp/public_html/','','','',0,'2012-07-26 04:34:26','0000-00-00 00:00:00'),(893,'http://www.fazparaiso.com.br/includes/check/root/home/sync/public_html/','','','',0,'2012-07-26 04:34:26','0000-00-00 00:00:00'),(894,'http://www.fazparaiso.com.br/includes/check/root/home/shutdown/public_html/','','','',0,'2012-07-26 04:34:26','0000-00-00 00:00:00'),(895,'http://www.fazparaiso.com.br/includes/check/root/home/halt/public_html/','','','',0,'2012-07-26 04:34:26','0000-00-00 00:00:00'),(896,'http://www.fazparaiso.com.br/includes/check/root/home/mail/public_html/','','','',0,'2012-07-26 04:34:27','0000-00-00 00:00:00'),(897,'http://www.fazparaiso.com.br/includes/check/root/home/news/public_html/','','','',0,'2012-07-26 04:34:27','0000-00-00 00:00:00'),(898,'http://www.fazparaiso.com.br/includes/check/root/home/uucp/public_html/','','','',0,'2012-07-26 04:34:27','0000-00-00 00:00:00'),(899,'http://www.fazparaiso.com.br/includes/check/root/home/operator/public_html/','','','',0,'2012-07-26 04:34:28','0000-00-00 00:00:00'),(900,'http://www.fazparaiso.com.br/includes/check/root/home/games/public_html/','','','',0,'2012-07-26 04:34:28','0000-00-00 00:00:00'),(901,'http://www.fazparaiso.com.br/includes/check/root/home/gopher/public_html/','','','',0,'2012-07-26 04:34:28','0000-00-00 00:00:00'),(902,'http://www.fazparaiso.com.br/includes/check/root/home/ftp/public_html/','','','',0,'2012-07-26 04:34:29','0000-00-00 00:00:00'),(903,'http://www.fazparaiso.com.br/includes/check/root/home/nobody/public_html/','','','',0,'2012-07-26 04:34:29','0000-00-00 00:00:00'),(904,'http://www.fazparaiso.com.br/includes/check/root/home/rpm/public_html/','','','',0,'2012-07-26 04:34:29','0000-00-00 00:00:00'),(905,'http://www.fazparaiso.com.br/includes/check/root/home/dbus/public_html/','','','',0,'2012-07-26 04:34:30','0000-00-00 00:00:00'),(906,'http://www.fazparaiso.com.br/includes/check/root/home/vcsa/public_html/','','','',0,'2012-07-26 04:34:30','0000-00-00 00:00:00'),(907,'http://www.fazparaiso.com.br/includes/check/root/home/named/public_html/','','','',0,'2012-07-26 04:34:30','0000-00-00 00:00:00'),(908,'http://www.fazparaiso.com.br/includes/check/root/home/mailnull/public_html/','','','',0,'2012-07-26 04:34:31','0000-00-00 00:00:00'),(909,'http://www.fazparaiso.com.br/includes/check/root/home/smmsp/public_html/','','','',0,'2012-07-26 04:34:31','0000-00-00 00:00:00'),(910,'http://www.fazparaiso.com.br/includes/check/root/home/sshd/public_html/','','','',0,'2012-07-26 04:34:31','0000-00-00 00:00:00'),(911,'http://www.fazparaiso.com.br/includes/check/root/home/rpc/public_html/','','','',0,'2012-07-26 04:34:31','0000-00-00 00:00:00'),(912,'http://www.fazparaiso.com.br/includes/check/root/home/apache/public_html/','','','',0,'2012-07-26 04:34:32','0000-00-00 00:00:00'),(913,'http://www.fazparaiso.com.br/includes/check/root/home/nscd/public_html/','','','',0,'2012-07-26 04:34:32','0000-00-00 00:00:00'),(914,'http://www.fazparaiso.com.br/includes/check/root/home/pcap/public_html/','','','',0,'2012-07-26 04:34:32','0000-00-00 00:00:00'),(915,'http://www.fazparaiso.com.br/includes/check/root/home/haldaemon/public_html/','','','',0,'2012-07-26 04:34:32','0000-00-00 00:00:00'),(916,'http://www.fazparaiso.com.br/includes/check/root/home/cpanel/public_html/','','','',0,'2012-07-26 04:34:33','0000-00-00 00:00:00'),(917,'http://www.fazparaiso.com.br/includes/check/root/home/cpanelhorde/public_html/','','','',0,'2012-07-26 04:34:33','0000-00-00 00:00:00'),(918,'http://www.fazparaiso.com.br/includes/check/root/home/cpanelphpmyadmin/public_html/','','','',0,'2012-07-26 04:34:33','0000-00-00 00:00:00'),(919,'http://www.fazparaiso.com.br/includes/check/root/home/cpanelphppgadmin/public_html/','','','',0,'2012-07-26 04:34:33','0000-00-00 00:00:00'),(920,'http://www.fazparaiso.com.br/includes/check/root/home/cpanelroundcube/public_html/','','','',0,'2012-07-26 04:34:34','0000-00-00 00:00:00'),(921,'http://www.fazparaiso.com.br/includes/check/root/home/xfs/public_html/','','','',0,'2012-07-26 04:34:34','0000-00-00 00:00:00'),(922,'http://www.fazparaiso.com.br/includes/check/root/home/mysql/public_html/','','','',0,'2012-07-26 04:34:34','0000-00-00 00:00:00'),(923,'http://www.fazparaiso.com.br/includes/check/root/home/mailman/public_html/','','','',0,'2012-07-26 04:34:35','0000-00-00 00:00:00'),(924,'http://www.fazparaiso.com.br/includes/check/root/home/dovecot/public_html/','','','',0,'2012-07-26 04:34:35','0000-00-00 00:00:00'),(925,'http://www.fazparaiso.com.br/includes/check/root/home/cpaneleximfilter/public_html/','','','',0,'2012-07-26 04:34:35','0000-00-00 00:00:00'),(926,'http://www.fazparaiso.com.br/includes/check/root/home/neuseela/public_html/','','','',0,'2012-07-26 05:02:46','0000-00-00 00:00:00'),(927,'http://www.fazparaiso.com.br/includes/check/root/home/avahi/public_html/','','','',0,'2012-07-26 05:03:05','0000-00-00 00:00:00'),(928,'http://fazparaiso.com.br/index.php?option=com_poll&id=1:queijopreferido','','','',0,'2012-07-29 07:43:09','0000-00-00 00:00:00'),(929,'http://www.fazparaiso.com.br/galeria-de-fotos/4-galeria-de-fotos-abaetetuba-parte-2/detail/','','','',0,'2012-08-03 14:34:33','0000-00-00 00:00:00'),(930,'http://www.fazparaiso.com.br//index.php?option=com_niceajaxpoll../../../../../../../../../../../../../../../../../../../../../../../../proc/self/envir','','','',0,'2012-08-03 21:57:42','0000-00-00 00:00:00'),(931,'http://www.fazparaiso.com.br/galeria-de-fotos/1-galeria-de-fotos-marajo/detail/','','','',0,'2012-08-05 02:37:18','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `par_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_schemas`
--

DROP TABLE IF EXISTS `par_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_schemas`
--

LOCK TABLES `par_schemas` WRITE;
/*!40000 ALTER TABLE `par_schemas` DISABLE KEYS */;
INSERT INTO `par_schemas` VALUES (700,'1.7.0-2011-06-06-2');
/*!40000 ALTER TABLE `par_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_session`
--

DROP TABLE IF EXISTS `par_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_session` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_session`
--

LOCK TABLES `par_session` WRITE;
/*!40000 ALTER TABLE `par_session` DISABLE KEYS */;
INSERT INTO `par_session` VALUES ('2pj21bc6veou30b685b5dpv545',0,1,'1466002111','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1466002111;s:18:\"session.timer.last\";i:1466002111;s:17:\"session.timer.now\";i:1466002111;s:22:\"session.client.browser\";s:63:\"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'',''),('j9tjaonaunpcks83lp5nbpt760',0,1,'1466001211','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1466001211;s:18:\"session.timer.last\";i:1466001211;s:17:\"session.timer.now\";i:1466001211;s:22:\"session.client.browser\";s:63:\"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'','');
/*!40000 ALTER TABLE `par_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_template_styles`
--

DROP TABLE IF EXISTS `par_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_template_styles`
--

LOCK TABLES `par_template_styles` WRITE;
/*!40000 ALTER TABLE `par_template_styles` DISABLE KEYS */;
INSERT INTO `par_template_styles` VALUES (1,'bluestork',1,'1','Bluestork - Default','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}'),(2,'zt_hemi17',0,'1','Fazenda Paraíso - Padrão','{\"zt_font\":\"3\",\"zt_footer\":\"0\",\"zt_footer_text\":\"\\u00a9 Copyright 2009-2011 - FazParaiso.com.br - Todos os direitos reservados.\",\"zt_fontfeature\":\"1\",\"zt_rtl\":\"0\",\"zt_mobile\":\"0\",\"menutype\":\"topo\",\"zt_menustyle\":\"mega\",\"xdelay\":\"350\",\"xduration\":\"350\",\"xtransition\":\"Fx.Transitions.linear\",\"fancy\":\"1\",\"transition\":\"Fx.Transitions.linear\",\"duration\":\"350\",\"gzip_folder\":\"zt-assets\",\"gzip_merge\":\"1\",\"gzip_optimize_css\":\"0\",\"css-exclude\":[\"\"],\"gzip_optimize_js\":\"0\",\"js-exclude\":[\"\"],\"gzip_optimize_html\":\"1\",\"zt_change_color\":\"0\",\"color_bd\":\"#f7f7f7\",\"image_zt-maintop\":\"pattern11\",\"color_zt-maintop\":\"#6f9a50\",\"text_zt-maintop\":\"#ffffff\",\"link_zt-maintop\":\"#ddf27e\",\"color_zt-bottom\":\"#111e00\",\"text_zt-bottom\":\"#ffffff\",\"link_zt-bottom\":\"#6f9a50\"}'),(3,'paraiso',0,'0','paraiso - Padrão','{\"zt_font\":\"3\",\"zt_footer\":\"0\",\"zt_footer_text\":\"Copyright (c) 2008 - 2011 Joomla Templates by ZooTemplate.Com\",\"zt_fontfeature\":\"1\",\"zt_rtl\":\"0\",\"zt_mobile\":\"1\",\"menutype\":\"mainmenu\",\"zt_menustyle\":\"mega\",\"xdelay\":\"350\",\"xduration\":\"350\",\"xtransition\":\"Fx.Transitions.Bounce.easeOut\",\"fancy\":\"0\",\"transition\":\"Fx.Transitions.linear\",\"duration\":\"350\",\"gzip_folder\":\"zt-assets\",\"gzip_merge\":\"1\",\"gzip_optimize_css\":\"0\",\"css-exclude\":\"\",\"gzip_optimize_js\":\"0\",\"js-exclude\":\"\",\"gzip_optimize_html\":\"1\",\"zt_change_color\":\"1\",\"color_bd\":\"#efefec\",\"image_zt-maintop\":\"pattern10\",\"color_zt-maintop\":\"#1c1c1c\",\"text_zt-maintop\":\"#f5f5f5\",\"link_zt-maintop\":\"#2383B0\",\"color_zt-bottom\":\"#1B1B1B\",\"text_zt-bottom\":\"#FFFFFF\",\"link_zt-bottom\":\"#045cb4\"}');
/*!40000 ALTER TABLE `par_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_update_categories`
--

DROP TABLE IF EXISTS `par_update_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Update Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_update_categories`
--

LOCK TABLES `par_update_categories` WRITE;
/*!40000 ALTER TABLE `par_update_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_update_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_update_sites`
--

DROP TABLE IF EXISTS `par_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_update_sites`
--

LOCK TABLES `par_update_sites` WRITE;
/*!40000 ALTER TABLE `par_update_sites` DISABLE KEYS */;
INSERT INTO `par_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,1465556616),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1465556616),(5,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',1,1465556616);
/*!40000 ALTER TABLE `par_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_update_sites_extensions`
--

DROP TABLE IF EXISTS `par_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_update_sites_extensions`
--

LOCK TABLES `par_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `par_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `par_update_sites_extensions` VALUES (1,700),(2,700),(5,10076);
/*!40000 ALTER TABLE `par_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_updates`
--

DROP TABLE IF EXISTS `par_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_updates` (
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
  PRIMARY KEY (`update_id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_updates`
--

LOCK TABLES `par_updates` WRITE;
/*!40000 ALTER TABLE `par_updates` DISABLE KEYS */;
INSERT INTO `par_updates` VALUES (1,1,700,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml'),(2,1,0,0,'Joomla','','joomla','file','',0,'2.5.28','','https://update.joomla.org/core/extension.xml'),(3,1,0,0,'Joomla','','joomla','file','',0,'2.5.28','','https://update.joomla.org/core/extension.xml'),(4,1,0,0,'Joomla','','joomla','file','',0,'2.5.28','','https://update.joomla.org/core/extension.xml'),(5,5,0,0,'Armenian','','pkg_hy-AM','package','',0,'3.4.4.1','','https://update.joomla.org/language/details3/hy-AM_details.xml'),(6,5,0,0,'Malay','','pkg_ms-MY','package','',0,'3.4.1.2','','https://update.joomla.org/language/details3/ms-MY_details.xml'),(7,5,0,0,'Romanian','','pkg_ro-RO','package','',0,'3.5.0.1','','https://update.joomla.org/language/details3/ro-RO_details.xml'),(8,5,0,0,'Flemish','','pkg_nl-BE','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/nl-BE_details.xml'),(9,5,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'3.5.0.1','','https://update.joomla.org/language/details3/zh-TW_details.xml'),(10,5,0,0,'French','','pkg_fr-FR','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/fr-FR_details.xml'),(11,5,0,0,'Galician','','pkg_gl-ES','package','',0,'3.3.1.2','','https://update.joomla.org/language/details3/gl-ES_details.xml'),(12,5,0,0,'German','','pkg_de-DE','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/de-DE_details.xml'),(13,5,0,0,'Greek','','pkg_el-GR','package','',0,'3.4.2.1','','https://update.joomla.org/language/details3/el-GR_details.xml'),(14,5,0,0,'Japanese','','pkg_ja-JP','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/ja-JP_details.xml'),(15,5,0,0,'Hebrew','','pkg_he-IL','package','',0,'3.1.1.1','','https://update.joomla.org/language/details3/he-IL_details.xml'),(16,5,0,0,'Hungarian','','pkg_hu-HU','package','',0,'3.5.1.2','','https://update.joomla.org/language/details3/hu-HU_details.xml'),(17,5,0,0,'Afrikaans','','pkg_af-ZA','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/af-ZA_details.xml'),(18,5,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'3.5.0.1','','https://update.joomla.org/language/details3/ar-AA_details.xml'),(19,5,0,0,'Belarusian','','pkg_be-BY','package','',0,'3.2.1.1','','https://update.joomla.org/language/details3/be-BY_details.xml'),(20,5,0,0,'Bulgarian','','pkg_bg-BG','package','',0,'3.4.4.2','','https://update.joomla.org/language/details3/bg-BG_details.xml'),(21,5,0,0,'Catalan','','pkg_ca-ES','package','',0,'3.5.0.1','','https://update.joomla.org/language/details3/ca-ES_details.xml'),(22,5,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'3.4.1.1','','https://update.joomla.org/language/details3/zh-CN_details.xml'),(23,5,0,0,'Croatian','','pkg_hr-HR','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/hr-HR_details.xml'),(24,5,0,0,'Czech','','pkg_cs-CZ','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/cs-CZ_details.xml'),(25,5,0,0,'Danish','','pkg_da-DK','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/da-DK_details.xml'),(26,5,0,0,'Dutch','','pkg_nl-NL','package','',0,'3.5.1.2','','https://update.joomla.org/language/details3/nl-NL_details.xml'),(27,5,0,0,'Estonian','','pkg_et-EE','package','',0,'3.5.0.1','','https://update.joomla.org/language/details3/et-EE_details.xml'),(28,5,0,0,'Italian','','pkg_it-IT','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/it-IT_details.xml'),(29,5,0,0,'Khmer','','pkg_km-KH','package','',0,'3.4.5.1','','https://update.joomla.org/language/details3/km-KH_details.xml'),(30,5,0,0,'Korean','','pkg_ko-KR','package','',0,'3.5.1.2','','https://update.joomla.org/language/details3/ko-KR_details.xml'),(31,5,0,0,'Latvian','','pkg_lv-LV','package','',0,'3.4.3.1','','https://update.joomla.org/language/details3/lv-LV_details.xml'),(32,5,0,0,'Macedonian','','pkg_mk-MK','package','',0,'3.5.0.1','','https://update.joomla.org/language/details3/mk-MK_details.xml'),(33,5,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/nb-NO_details.xml'),(34,5,0,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'3.4.2.1','','https://update.joomla.org/language/details3/nn-NO_details.xml'),(35,5,0,0,'Persian','','pkg_fa-IR','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/fa-IR_details.xml'),(36,5,0,0,'Polish','','pkg_pl-PL','package','',0,'3.5.0.1','','https://update.joomla.org/language/details3/pl-PL_details.xml'),(37,5,10061,0,'Portuguese','','pkg_pt-PT','package','',0,'3.5.1.3','','https://update.joomla.org/language/details3/pt-PT_details.xml'),(38,5,0,0,'Russian','','pkg_ru-RU','package','',0,'3.5.0.6','','https://update.joomla.org/language/details3/ru-RU_details.xml'),(39,5,0,0,'English AU','','pkg_en-AU','package','',0,'3.5.1.2','','https://update.joomla.org/language/details3/en-AU_details.xml'),(40,5,0,0,'Slovak','','pkg_sk-SK','package','',0,'3.5.1.2','','https://update.joomla.org/language/details3/sk-SK_details.xml'),(41,5,0,0,'English US','','pkg_en-US','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/en-US_details.xml'),(42,5,0,0,'Swedish','','pkg_sv-SE','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/sv-SE_details.xml'),(43,5,0,0,'Syriac','','pkg_sy-IQ','package','',0,'3.4.5.1','','https://update.joomla.org/language/details3/sy-IQ_details.xml'),(44,5,0,0,'Tamil','','pkg_ta-IN','package','',0,'3.5.1.2','','https://update.joomla.org/language/details3/ta-IN_details.xml'),(45,5,0,0,'Thai','','pkg_th-TH','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/th-TH_details.xml'),(46,5,0,0,'Turkish','','pkg_tr-TR','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/tr-TR_details.xml'),(47,5,0,0,'Ukrainian','','pkg_uk-UA','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/uk-UA_details.xml'),(48,5,0,0,'Uyghur','','pkg_ug-CN','package','',0,'3.3.0.1','','https://update.joomla.org/language/details3/ug-CN_details.xml'),(49,5,0,0,'Albanian','','pkg_sq-AL','package','',0,'3.1.1.1','','https://update.joomla.org/language/details3/sq-AL_details.xml'),(50,5,0,0,'Basque','','pkg_eu-ES','package','',0,'3.5.1.2','','https://update.joomla.org/language/details3/eu-ES_details.xml'),(51,5,0,0,'Hindi','','pkg_hi-IN','package','',0,'3.3.6.1','','https://update.joomla.org/language/details3/hi-IN_details.xml'),(52,5,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'3.5.0.1','','https://update.joomla.org/language/details3/sr-YU_details.xml'),(53,5,0,0,'Spanish','','pkg_es-ES','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/es-ES_details.xml'),(54,5,0,0,'Bosnian','','pkg_bs-BA','package','',0,'3.4.8.1','','https://update.joomla.org/language/details3/bs-BA_details.xml'),(55,5,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'3.5.0.1','','https://update.joomla.org/language/details3/sr-RS_details.xml'),(56,5,0,0,'Vietnamese','','pkg_vi-VN','package','',0,'3.2.1.1','','https://update.joomla.org/language/details3/vi-VN_details.xml'),(57,5,0,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'3.3.0.2','','https://update.joomla.org/language/details3/id-ID_details.xml'),(58,5,0,0,'Finnish','','pkg_fi-FI','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/fi-FI_details.xml'),(59,5,0,0,'Swahili','','pkg_sw-KE','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/sw-KE_details.xml'),(60,5,0,0,'Montenegrin','','pkg_srp-ME','package','',0,'3.3.1.1','','https://update.joomla.org/language/details3/srp-ME_details.xml'),(61,5,0,0,'English CA','','pkg_en-CA','package','',0,'3.5.1.2','','https://update.joomla.org/language/details3/en-CA_details.xml'),(62,5,0,0,'French CA','','pkg_fr-CA','package','',0,'3.5.1.2','','https://update.joomla.org/language/details3/fr-CA_details.xml'),(63,5,0,0,'Welsh','','pkg_cy-GB','package','',0,'3.3.0.2','','https://update.joomla.org/language/details3/cy-GB_details.xml'),(64,5,0,0,'Sinhala','','pkg_si-LK','package','',0,'3.3.1.1','','https://update.joomla.org/language/details3/si-LK_details.xml'),(65,5,0,0,'Dari Persian','','pkg_prs-AF','package','',0,'3.4.4.1','','https://update.joomla.org/language/details3/prs-AF_details.xml'),(66,5,0,0,'Turkmen','','pkg_tk-TM','package','',0,'3.5.0.1','','https://update.joomla.org/language/details3/tk-TM_details.xml'),(67,5,0,0,'Irish','','pkg_ga-IE','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/ga-IE_details.xml'),(68,5,0,0,'Dzongkha','','pkg_dz-BT','package','',0,'3.4.5.1','','https://update.joomla.org/language/details3/dz-BT_details.xml'),(69,5,0,0,'Slovenian','','pkg_sl-SI','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/sl-SI_details.xml'),(70,1,0,0,'Joomla','','joomla','file','',0,'2.5.28','','https://update.joomla.org/core/extension.xml'),(71,1,0,0,'Joomla','','joomla','file','',0,'2.5.28','','https://update.joomla.org/core/extension.xml');
/*!40000 ALTER TABLE `par_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_user_profiles`
--

DROP TABLE IF EXISTS `par_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_user_profiles`
--

LOCK TABLES `par_user_profiles` WRITE;
/*!40000 ALTER TABLE `par_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_user_usergroup_map`
--

DROP TABLE IF EXISTS `par_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_user_usergroup_map`
--

LOCK TABLES `par_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `par_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `par_user_usergroup_map` VALUES (1,8),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(10,7),(11,2),(12,2);
/*!40000 ALTER TABLE `par_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_usergroups`
--

DROP TABLE IF EXISTS `par_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_usergroups` (
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_usergroups`
--

LOCK TABLES `par_usergroups` WRITE;
/*!40000 ALTER TABLE `par_usergroups` DISABLE KEYS */;
INSERT INTO `par_usergroups` VALUES (1,0,1,20,'Public'),(2,1,6,17,'Registered'),(3,2,7,14,'Author'),(4,3,8,11,'Editor'),(5,4,9,10,'Publisher'),(6,1,2,5,'Manager'),(7,6,3,4,'Administrator'),(8,1,18,19,'Super Users');
/*!40000 ALTER TABLE `par_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_users`
--

DROP TABLE IF EXISTS `par_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_users` (
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
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_users`
--

LOCK TABLES `par_users` WRITE;
/*!40000 ALTER TABLE `par_users` DISABLE KEYS */;
INSERT INTO `par_users` VALUES (1,'Fazendas Paraíso','fazparaiso','contato@fazparaiso.com.br','a18ce4bfa5d1ab8321f905022aed921c:PvpzlfI6dHTBXlXKm80QlBPCpBjdI4Kh','deprecated',0,1,'2011-07-19 01:17:25','2016-06-10 11:03:32','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}'),(2,'AlisaStill76','AlisaStill76','a.ly.s.ak.e.y.n09.9@gmail.com','14e151fcde46851a1872e5f98e6320cd:CUWat2fpkCrrrFKNlSwjLz8frkyEmYTE','',1,0,'2016-06-12 23:16:26','0000-00-00 00:00:00','e9f382911b2a1f6f297a09c8199037f1','{}');
/*!40000 ALTER TABLE `par_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_viewlevels`
--

DROP TABLE IF EXISTS `par_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_viewlevels`
--

LOCK TABLES `par_viewlevels` WRITE;
/*!40000 ALTER TABLE `par_viewlevels` DISABLE KEYS */;
INSERT INTO `par_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]');
/*!40000 ALTER TABLE `par_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_weblinks`
--

DROP TABLE IF EXISTS `par_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_weblinks` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_weblinks`
--

LOCK TABLES `par_weblinks` WRITE;
/*!40000 ALTER TABLE `par_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_weblinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-15 14:54:29
