-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: fazparaiso_j15
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
-- Current Database: `fazparaiso_j15`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fazparaiso_j15` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fazparaiso_j15`;

--
-- Table structure for table `par_banner`
--

DROP TABLE IF EXISTS `par_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_banner`
--

LOCK TABLES `par_banner` WRITE;
/*!40000 ALTER TABLE `par_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_bannerclient`
--

DROP TABLE IF EXISTS `par_bannerclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_bannerclient`
--

LOCK TABLES `par_bannerclient` WRITE;
/*!40000 ALTER TABLE `par_bannerclient` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_bannerclient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_bannertrack`
--

DROP TABLE IF EXISTS `par_bannertrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_bannertrack`
--

LOCK TABLES `par_bannertrack` WRITE;
/*!40000 ALTER TABLE `par_bannertrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_bannertrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_categories`
--

DROP TABLE IF EXISTS `par_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_categories`
--

LOCK TABLES `par_categories` WRITE;
/*!40000 ALTER TABLE `par_categories` DISABLE KEYS */;
INSERT INTO `par_categories` VALUES (1,0,'Fazenda Paraíso - Topo','','topo','','1','left','',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(2,0,'Fazenda Paraíso I - Marajó','','marajo','','1','left','',1,62,'2011-07-27 19:28:10',NULL,1,0,0,''),(3,0,'Fazenda Paraíso II - Abaetetuba','','abaetetuba','','1','left','',1,62,'2011-07-27 19:28:11',NULL,1,0,0,'');
/*!40000 ALTER TABLE `par_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_components`
--

DROP TABLE IF EXISTS `par_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_components`
--

LOCK TABLES `par_components` WRITE;
/*!40000 ALTER TABLE `par_components` DISABLE KEYS */;
INSERT INTO `par_components` VALUES (1,'Banners','',0,0,'','Banner Management','com_banners',0,'js/ThemeOffice/component.png',0,'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n',1),(2,'Banners','',0,1,'option=com_banners','Active Banners','com_banners',1,'js/ThemeOffice/edit.png',0,'',1),(3,'Clients','',0,1,'option=com_banners&c=client','Manage Clients','com_banners',2,'js/ThemeOffice/categories.png',0,'',1),(4,'Web Links','option=com_weblinks',0,0,'','Manage Weblinks','com_weblinks',0,'js/ThemeOffice/component.png',0,'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n',1),(5,'Links','',0,4,'option=com_weblinks','View existing weblinks','com_weblinks',1,'js/ThemeOffice/edit.png',0,'',1),(6,'Categories','',0,4,'option=com_categories&section=com_weblinks','Manage weblink categories','',2,'js/ThemeOffice/categories.png',0,'',1),(7,'Contacts','option=com_contact',0,0,'','Edit contact details','com_contact',0,'js/ThemeOffice/component.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),(8,'Contacts','',0,7,'option=com_contact','Edit contact details','com_contact',0,'js/ThemeOffice/edit.png',1,'',1),(9,'Categories','',0,7,'option=com_categories&section=com_contact_details','Manage contact categories','',2,'js/ThemeOffice/categories.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),(10,'Polls','option=com_poll',0,0,'option=com_poll','Manage Polls','com_poll',0,'js/ThemeOffice/component.png',0,'',1),(11,'News Feeds','option=com_newsfeeds',0,0,'','News Feeds Management','com_newsfeeds',0,'js/ThemeOffice/component.png',0,'',1),(12,'Feeds','',0,11,'option=com_newsfeeds','Manage News Feeds','com_newsfeeds',1,'js/ThemeOffice/edit.png',0,'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n',1),(13,'Categories','',0,11,'option=com_categories&section=com_newsfeeds','Manage Categories','',2,'js/ThemeOffice/categories.png',0,'',1),(14,'User','option=com_user',0,0,'','','com_user',0,'',1,'',1),(15,'Search','option=com_search',0,0,'option=com_search','Search Statistics','com_search',0,'js/ThemeOffice/component.png',1,'enabled=1\nshow_date=0\n\n',1),(16,'Categories','',0,1,'option=com_categories&section=com_banner','Categories','',3,'',1,'',1),(17,'Wrapper','option=com_wrapper',0,0,'','Wrapper','com_wrapper',0,'',1,'',1),(18,'Mail To','',0,0,'','','com_mailto',0,'',1,'',1),(19,'Media Manager','',0,0,'option=com_media','Media Manager','com_media',0,'',1,'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=1\n\n',1),(20,'Articles','option=com_content',0,0,'','','com_content',0,'',1,'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=0\nfilter_tags=\nfilter_attritbutes=\n\n',1),(21,'Configuration Manager','',0,0,'','Configuration','com_config',0,'',1,'',1),(22,'Installation Manager','',0,0,'','Installer','com_installer',0,'',1,'',1),(23,'Language Manager','',0,0,'','Languages','com_languages',0,'',1,'administrator=pt-BR\nsite=pt-BR',1),(24,'Mass mail','',0,0,'','Mass Mail','com_massmail',0,'',1,'mailSubjectPrefix=\nmailBodySuffix=\n\n',1),(25,'Menu Editor','',0,0,'','Menu Editor','com_menus',0,'',1,'',1),(27,'Messaging','',0,0,'','Messages','com_messages',0,'',1,'',1),(28,'Modules Manager','',0,0,'','Modules','com_modules',0,'',1,'',1),(29,'Plugin Manager','',0,0,'','Plugins','com_plugins',0,'',1,'',1),(30,'Template Manager','',0,0,'','Templates','com_templates',0,'',1,'',1),(31,'User Manager','',0,0,'','Users','com_users',0,'',1,'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n',1),(32,'Cache Manager','',0,0,'','Cache','com_cache',0,'',1,'',1),(33,'Control Panel','',0,0,'','Control Panel','com_cpanel',0,'',1,'',1),(132,'Info','',0,112,'option=com_phocagallery&view=phocagalleryin','Info','com_phocagallery',9,'components/com_phocagallery/assets/images/icon-16-pg-menu-info.png',0,'',1),(131,'Users','',0,112,'option=com_phocagallery&view=phocagalleryusers','Users','com_phocagallery',8,'components/com_phocagallery/assets/images/icon-16-pg-menu-users.png',0,'',1),(129,'Category Comments','',0,112,'option=com_phocagallery&view=phocagallerycos','Category Comments','com_phocagallery',6,'components/com_phocagallery/assets/images/icon-16-pg-menu-comment.png',0,'',1),(130,'Image Comments','',0,112,'option=com_phocagallery&view=phocagallerycoimgs','Image Comments','com_phocagallery',7,'components/com_phocagallery/assets/images/icon-16-pg-menu-comment-img.png',0,'',1),(128,'Image Rating','',0,112,'option=com_phocagallery&view=phocagalleryraimg','Image Rating','com_phocagallery',5,'components/com_phocagallery/assets/images/icon-16-pg-menu-vote-img.png',0,'',1),(112,'Phoca Gallery','option=com_phocagallery',0,0,'option=com_phocagallery','Phoca Gallery','com_phocagallery',0,'components/com_phocagallery/assets/images/icon-16-pg-menu.png',0,'',1),(127,'Category Rating','',0,112,'option=com_phocagallery&view=phocagalleryra','Category Rating','com_phocagallery',4,'components/com_phocagallery/assets/images/icon-16-pg-menu-vote.png',0,'',1),(126,'Themes','',0,112,'option=com_phocagallery&view=phocagalleryt','Themes','com_phocagallery',3,'components/com_phocagallery/assets/images/icon-16-pg-menu-theme.png',0,'',1),(125,'Categories','',0,112,'option=com_phocagallery&view=phocagallerycs','Categories','com_phocagallery',2,'components/com_phocagallery/assets/images/icon-16-pg-menu-cat.png',0,'',1),(124,'Images','',0,112,'option=com_phocagallery&view=phocagallerys','Images','com_phocagallery',1,'components/com_phocagallery/assets/images/icon-16-pg-menu-gal.png',0,'',1),(123,'Control Panel','',0,112,'option=com_phocagallery','Control Panel','com_phocagallery',0,'components/com_phocagallery/assets/images/icon-16-pg-control-panel.png',0,'',1);
/*!40000 ALTER TABLE `par_components` ENABLE KEYS */;
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
  `alias` varchar(255) NOT NULL DEFAULT '',
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
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_content`
--

LOCK TABLES `par_content` WRITE;
/*!40000 ALTER TABLE `par_content` DISABLE KEYS */;
INSERT INTO `par_content` VALUES (1,'Fazenda Paraíso - Seja bem vindo!','seja-bem-vindo','','<p style=\"text-align: justify; padding-left: 120px;\"><span style=\"font-family: Verdana, sans-serif; color: #336600;\"><br /><span style=\"font-size: x-small;\"><span style=\"line-height: 14px;\"><br /></span></span></span></p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/abertura.jpg\" border=\"0\" alt=\"Seja bem vindo ao site das Fazendas Paraíso !!!\" /></p>\r\n<p style=\"text-align: justify; padding-left: 120px;\"> </p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\">As Fazendas Paraíso se caracterizam por uma exploração racional entre a bubalinocultura e a silvicultura. Na <strong>Paraíso I</strong> (Marajó), a fazenda é constituída de campos naturais, cuja preocupação dos proprietários foi garantir a permanência de água abundante durante o ano inteiro, de forma a proporcionar aos animais o conforto necessário, aliado a conservação das pequenas \"ilhas\" de mata, que permitem o refúgio no momento de maior incidência dos raios solares.<br /> <br /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\">A alimentação básica dos animais é constituída de capins naturais de região, acrescida de quicuio da Amazônia e de produção de capineiras.</span></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\">No que diz respeito a <strong>Paraíso II</strong> (Abaetetuba), a exploração bubalina está bastante consorciada com a presença de áreas de matas virgens ao lado do cultivo de plantas frutíferas, entre as quais de coqueiros, cupuaçuzeiros, pupunheiras e mangueiras, totalizando mais de 10.000 árvores produtoras de frutas que proporcionam uma fonte de renda diferenciada para o sustento da Fazenda.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\"><br />A alimentação do rebanho é garantida por capinzais constituídos de piquetes de brachiarão, mombaça, quicuio da Amazônia, além de capineiras. Estamos fazendo uma experiência com o \"Limpo Grass\". Por fim, o rebanho inteiro é servido com sal mineral.<br /></span></p>','',1,1,0,1,'2008-03-30 02:12:19',62,'','2011-08-11 16:17:11',62,0,'0000-00-00 00:00:00','2008-03-29 00:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',76,0,1,'','',0,90,'robots=\nauthor='),(2,'Fazenda Paraíso - Sobre a fazenda','sobre-a-fazenda','','<div style=\"text-align: justify;\"><span style=\"color: #336600;\">\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/proprietarios.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\">Em pé, José, João Paulo e João Alfredo, sentada, a matriarca Joana Rocha.</p>\r\n<span style=\"font-size: 10pt;\"><br />A paixão pela pecuária tem origem em mais de 70 anos quando o patriarca da família, senhor <strong>Antonio Castelo Branco Rocha</strong>, resolveu procurar o Marajó com esse objetivo. Ali formou a Fazenda Santo Antônio, mais tarde fundou a Fazenda Santa Judith, ambas nas margens do Rio Ararí, e Município de Ponta de Pedras. Com a venda de tais propriedades à Família Maroja, resolveu o entusiasta piauiense, comprar as terras da \"Fazenda Madre de Deus\", igualmente localizada na margem do Rio Ararí, porém em lado oposto, em terras do Município de Cachoeira, denominado depois por Arariuna e posteriormente por Cachoeira do Ararí uma vez que o Rio Ararí é o limite natural entre os dois Municípios.<br /><br />Além da pecuária, o referido senhor exerceu, naquele Município, outras atividades no setor público sendo, inclusive, por três vezes intendente Municipal, ocasião em que teve oportunidade, de entre outras coisas, dotar Cachoeira do Ararí de luz elétrica gerada por grupo gerador de propulsão a diesel, sendo este o primeiro a vir dos Estados Unidos da América o que se deu com o restabelecimento da travessia marítima do Atlântico, após o término da 2ª Guerra Mundial.<br /><br />Após um breve intervalo na atividade pecuária e em consequência do falecimento de Antônio Castelo Branco Rocha, em 1955 e de sua filha Ana Maria, resolveu a família sob o comando da matriarca, <strong>Joana Melo Castelo Branco Rocha</strong>, funcionária pública aposentada, e contando com a participação efetiva de seus filhos <strong>José Melo da Rocha</strong> e <strong>João Alfredo de Melo Rocha</strong>, retornar ao Marajó, e adquirir a Fazenda Paraíso, localizada no Distrito do Retiro Grande, em Cachoeira do Ararí, no ano de 1973 (04/09/1973) e daí para frente dedicar-se <strong>única</strong> e <strong>exclusivamente</strong> à criação de búfalos.<br /><br />\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/marajo.jpg\" border=\"0\" /></p>\r\n<br />Ao longo de 36 (trinta e seis) anos de trabalho voltados à recuperação de pastos, elaboração de cercas divisórias, melhoramento genético, controle de peso e de produção leiteira, contamos com apoio financeiro do BASA enquanto que a orientação técnica foi prestada pela EMBRAPA, FCAP (hoje UFRA), UFPA e CEBRAM, a cujas instituições temos sempre uma palavra de agradecimento. Além desses organismos oficiais, contamos com a eficiente colaboração de mestres e apaixonados pela bubalinocultura, como Diomedes Barboza, Marivaldo Figueiró, José Ribamar, Norton e tantos outros.<br /><br />A partir de 2006, José e João Alfredo, se tornaram titulares do empreendimento, ocasião em que a matriarca resolveu doar a propriedade aos mesmos. A administração da fazenda é feita com a presença permanente e eficaz de <strong>João Paulo Mota Melo da Rocha</strong> (filho de José), grande incentivador e apaixonado pela bubalinocultura.<br /><strong><br /></strong>A Paraíso I possui uma área de 1.200 (hum mil e duzentos) hectares e atualmente, abriga cerca de 850 (oitocentos e cinquenta) animais bubalinos das raças <strong>Murrah</strong> e <strong>Mediterrâneo</strong>. Tem sido a grande preocupação dos proprietários e administradores da fazenda, dedicados à criação da espécie, a melhoria genética do rebanho, por via do uso de inseminação artificial, monta controlada e aquisição de novos reprodutores, oriundos dos mais diversos criatórios do País, alimentação saudável de forma a apresentar animais que atendam ao binômio <strong>bife + leite</strong>.<br /><br /></span></span></div>','',1,1,0,2,'2008-03-30 17:58:29',62,'','2011-08-12 19:21:20',62,0,'0000-00-00 00:00:00','2008-03-30 17:58:29','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',43,0,1,'','',0,550,'robots=\nauthor='),(3,'Fazenda Paraíso - Búfalos','bufalos','','<p style=\"text-align: justify;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\"><br /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">A reprodução da Fazenda Paraíso I se dá em percentual entre 60% e 70%, e na proporção de 50% entre machos e fêmeas. Após os 12 meses de idade, os machos são transladados para o Paraíso II, com o objetivo de se obter engorda e terminá-los para o abate. As fêmeas são incorporadas ao rebanho, substituindo os animais velhos, a fim de proporcionar cada vez mais uma genética melhor.<br /></span></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/bufalos_marajo.jpg\" border=\"0\" /></p>','',1,1,0,2,'2008-03-30 18:07:41',62,'','2009-11-26 20:45:54',62,62,'2011-08-02 02:59:04','2008-03-30 18:07:41','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',12,0,2,'','',0,465,'robots=\nauthor='),(5,'Fazenda Paraíso - Produtos','produtos','','<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\"><br /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\">Comercialização de sêmen do touro <strong>Importante da JR</strong>, filho de <strong>Dubak</strong> e da <strong>Hegemonia</strong>, esta, Campeã das Américas  do concurso leiteiro ocorrido no \"<strong>1º SIMPÓSIO INTERNACIONAL DE BÚFALOS DAS AMÉRICAS</strong>\", no ano de 2002, em Belém-PA.</span></p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/importante.jpg\" border=\"0\" alt=\"JR-146: Importante da JR\" /></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\">JR-146: Importante da JR</span><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;\">.</span></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\">Considerado por técnicos da CEBRAN-UFPA, como sêmen de excelente qualidade, animal dócil e de fácil coleta de sêmen.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\">Pai: <strong>Dubak</strong> um dos maiores ganhadores de peso em provas ou experimento na Embrapa-Pa. E com uma docilidade incrível.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\">Mãe: <strong>Hegemonia</strong> búfala tranquila, boa conformação racial e com pico de leite de 18 kg, Campeã do concurso leiteiro das Américas realizado no I Simpósio de Búfalos das Américas em 2002 em Belém do Pará, com 13,8 kg.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\">Obs.: sua meia irmã Baixela produziu 22 kg de pico de leite em janeiro de 2003, pesando 890 kg em um dia de campo da Embrapa realizado no presídio de Americano Castanhal-PA.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\">Seu avô <strong>Napoli</strong> era o 9º melhor reprodutor de leite de todos os tempos na Itália na edição 10 de março de 2006 do índice Genético de touros.</span></p>','',1,1,0,2,'2008-03-30 18:09:07',62,'','2010-01-18 16:17:48',62,62,'2011-08-02 02:59:10','2008-03-30 18:09:07','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',16,0,4,'','',0,368,'robots=\nauthor='),(4,'Fazenda Paraíso - Premiações','premiacoes','','<p style=\"text-align: justify;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\"><br /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">A partir do ano de 2005, os proprietários das Fazendas resolveram a se fazer presente nas exposições Agropecuárias e nos leilões realizados. Em consequência dessa nova atividade, foram obtidos os seguintes resultados:</span></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/premiacao_2005.gif\" border=\"0\" width=\"338\" height=\"203\" /></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/premiacao_2006.gif\" border=\"0\" width=\"338\" height=\"163\" /></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/premiacao_2007.gif\" border=\"0\" width=\"338\" height=\"283\" /></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">Premiação do <strong>JRO-101 Crioulo da Paraíso</strong> ao ensejo da 39º EXPOPARÁ, ocasião em que foi escolhido como campeão Junior Menor (18 a 21 meses), disposto a seguir:</span></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/premiacao_crioulo.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">JRO-101: Crioulo da Paraíso.</span></p>','',1,1,0,2,'2008-03-30 18:09:49',62,'','2011-08-15 20:54:59',62,0,'0000-00-00 00:00:00','2008-03-30 18:09:49','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',14,0,3,'','',0,281,'robots=\nauthor='),(6,'Fazenda Paraíso - Tecnologias','tecnologias','','<p><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\"><br /></span></p>\r\n<p><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">Inseminação Artificial é uma tecnologia que só abrange 1% do rebanho bubalino brasileiro e é aplicada nas fazendas Paraíso I e II, Marajó-PA e Abaetetuba–PA, respectivamente.</span></p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/inseminacao.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">Funcionário procedendo a Inseminação de matriz pertencente à Fazenda.</span></p>','',1,1,0,2,'2008-03-30 18:10:17',62,'','2011-08-10 13:53:23',62,0,'0000-00-00 00:00:00','2008-03-30 18:10:17','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',13,0,5,'','',0,295,'robots=\nauthor='),(7,'Fazenda Paraíso II - Sobre a fazenda','sobre-a-fazenda','','<p align=\"justify\"><span style=\"font-family: Verdana\"><span style=\"font-size: 10pt; color: #336600;\"><br /></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: Verdana\"><span style=\"font-size: 10pt; color: #336600;\">Localizada em Abaetetuba, Pará, na estrada de Igarapé Miri km 60, no ramal do Curupere-miri. A Fazenda, de propriedade dos irmãos José Melo da Rocha, João Alfredo de Melo Rocha e do filho e sobrinho, respectivamente, João Paulo Mota Melo da Rocha, possui aproximadamente 400 (quatrocentos) hectares, atualmente, abriga búfalos das raças <strong>Murrrah</strong> e<strong> Mediterrânea</strong>.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: Verdana\"><span style=\"font-size: 10pt; color: #336600;\"><br /></span></span></p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/abaetetuba.jpg\" border=\"0\" /></p>\r\n<p align=\"justify\"><span style=\"font-family: Verdana\"><span style=\"font-size: 10pt; color: #336600;\"><br /></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: Verdana\"><span style=\"font-size: 10pt; color: #336600;\">Tem sido a grande preocupação dos proprietários da Fazenda, no decurso de seus 06 (seis) anos, dedicados à criação da espécie, a melhoria genética do rebanho, por via do uso de inseminação artificial, monta controlada e alimentação saudável de forma a apresentar animais que atendam ao binômio <strong>bife + leite</strong>.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: Verdana\"><span style=\"font-size: 10pt; color: #336600;\">Na recuperação das pastagens realizadas em 2009, outra preocupação foi com o meio ambiente com utilização de tecnologia na preservação do Meio Ambiente, utilizando sistema integrado de côco + cupuaçu + pupunha + manga + pastagem sem derrubar uma única árvore.</span></span></p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/pasto.jpg\" border=\"0\" /></p>\r\n<p> </p>\r\n<p align=\"justify\"><span style=\"font-family: Verdana\"><span style=\"font-size: 10pt; color: #336600;\">Além da preservação do meio ambiente a preocupação com o conforto térmico dos búfalos, propiciado pelo sombreamento das árvores frutíferas e espécies nativas da região, todos no sistema rotacionado.</span></span></p>\r\n<p align=\"justify\"> </p>\r\n<p align=\"justify\"> </p>\r\n<p align=\"justify\"><span style=\"font-family: Verdana\"><span style=\"font-size: 13pt; color: #336600;\"><strong>SANIDADE</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: Verdana\"><span style=\"font-size: 10pt; color: #336600;\"><br />O respeito aos programas de combate as enfermidades como a Febre Aftosa, programa de erradicação da Brucelose e tuberculose são rigorosamente observados, o que leva os proprietários e efetivarem a vacinação exames semestralmente, em conformidade com o cronograma estabelecido pelo Governo Federal e do Estado do Pará.<br /><br />Os animais  Fêmeas na idade entre 3 e 8 meses, são todos vacinados contra a BRUCELOSE o que garante a ausência total da doença no rebanho.<br /><br />A vermifugação é procedida aos 8, 30, 60,120 dias de nascido e repetida aos seis meses e um ano de idade, reduzindo e impedindo desta forma a infestação dos animais de tal seqüela tão danosa ao desenvolvimento dos bezerros.<br /></span></span></p>','',1,1,0,3,'2008-03-30 17:58:29',62,'','2010-01-18 16:52:50',62,62,'2011-08-15 22:36:37','2008-03-30 17:58:29','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',26,0,1,'','',0,355,'robots=\nauthor='),(8,'Fazenda Paraíso II - Búfalos','bufalos','','<p style=\"text-align: justify;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\"><br /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">A fazenda abriga, no momento, um plantel constituído, aproximadamente de 500 animais, sendo 210 da raça  Murrah, 105 da raça Mediterrânea e 80 FM (destinadas ao aumento da produção leiteira), os demais selecionados e distribuídos nas seguintes categorias:</span></p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/tabela_rebanho.gif\" border=\"0\" width=\"548\" height=\"185\" /></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">Além destes mencionados </span><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">acima, </span><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">a Fazenda tem 87 animais com idade entre 12 e 18 meses, com peso variando entre 260 e 420 kgs, os quais estão sendo terminados para envio ao abatedouro.<br /></span></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">O animal <strong>JRO-101 Crioulo da Paraíso</strong>, que conquistou no ano de 2005 o 1º lugar na categoria \"Junior Menor\", e foi Campeão na mesma categoria na 39ª Expopará. Atualmente, é um belo reprodutor, com peso de 800 kgs e com um progênie invejável, conforme demonstrado adiante:<br /></span></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/crias_crioulo.gif\" border=\"0\" width=\"301\" height=\"105\" /></p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/crioulo.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">JRO-101: Crioulo da Paraíso.</span></p>','',1,1,0,3,'2008-03-30 18:07:41',62,'','2011-08-15 22:38:54',62,0,'0000-00-00 00:00:00','2008-03-30 18:07:41','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',16,0,2,'','',0,318,'robots=\nauthor='),(10,'Fazenda Paraíso II - Produtos','produtos','','<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\"><br /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\">Comercialização de sêmen do touro <strong>Importante da JR</strong>, filho de <strong>Dubak</strong> e da <strong>Hegemonia</strong>, esta, <strong>Campeã das Américas</strong> do concurso leiteiro ocorrido no \"<strong>1º SIMPÓSIO INTERNACIONAL DE BÚFALOS DAS AMÉRICAS</strong>\", no ano de 2002, em Belém-PA.</span></p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/importante.jpg\" border=\"0\" alt=\"JR-146: Importante da JR\" /></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\">JR-146: Importante da JR</span><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;\">.</span></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\">Considerado por técnicos da CEBRAN-UFPA, como sêmen de excelente qualidade, animal dócil e de fácil coleta de sêmen.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\">Pai: <strong>Dubak</strong> um dos maiores ganhadores de peso em provas ou experimento na Embrapa-Pa. E com uma docilidade incrível.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\">Mãe: <strong>Hegemonia</strong> búfala tranquila, boa conformação racial e com pico de leite de 18 kg, Campeã do concurso leiteiro realizado no I Simpósio de Búfalos das Américas em 2002 em Belém do Pará, com 13,8 kg.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\">Obs.: sua meia irmã Baixela produziu 22 kg de pico de leite em janeiro de 2003, pesando 890 kg em um dia de campo da Embrapa realizado no presídio de Americano Castanhal-PA.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; color: #336600;\">Seu avô <strong>Napoli</strong> era o 9º melhor reprodutor de leite de todos os tempos na Itália na edição 10 de março de 2006 do índice Genético de touros.</span></p>','',1,1,0,3,'2008-03-30 18:09:07',62,'','2010-01-18 16:39:09',62,62,'2011-08-02 03:02:48','2008-03-30 18:09:07','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',9,0,4,'','',0,302,'robots=\nauthor='),(9,'Fazenda Paraíso II - Premiações','premiacoes','','<p style=\"text-align: justify;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\"><br /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">A partir do ano de 2005, os proprietários das Fazendas resolveram a se fazer presente nas exposições Agropecuárias e nos leilões realizados. Em consequência dessa nova atividade, foram obtidos os seguintes resultados:</span></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/premiacao_2005.gif\" border=\"0\" width=\"338\" height=\"203\" /></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/premiacao_2006.gif\" border=\"0\" width=\"338\" height=\"163\" /></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/premiacao_2007.gif\" border=\"0\" width=\"338\" height=\"283\" /></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">Premiação do <strong>JRO-101 Crioulo da Paraíso</strong> ao ensejo da 39º EXPOPARÁ, ocasião em que foi escolhido como campeão Junior Menor (18 a 21 meses), disposto a seguir:</span></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/premiacao_crioulo.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">JRO-101: Crioulo da Paraíso.</span></p>','',1,1,0,3,'2008-03-30 18:09:49',62,'','2011-08-15 20:55:16',62,0,'0000-00-00 00:00:00','2008-03-30 18:09:49','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',22,0,3,'','',0,275,'robots=\nauthor='),(11,'Fazenda Paraíso II - Tecnologias','tecnologias','','<p><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\"><br /></span></p>\r\n<p><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">Inseminação Artificial é uma tecnologia que só abrange 1% do rebanho bubalino brasileiro e é aplicada nas fazendas Paraíso I e II, Marajó-PA e Abaetetuba–PA, respectivamente.</span></p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/paraiso/inseminacao.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">Funcionário procedendo a Inseminação de matriz pertencente à Fazenda.</span></p>','',1,1,0,3,'2008-03-30 18:10:17',62,'','2011-08-10 13:53:26',62,0,'0000-00-00 00:00:00','2008-03-30 18:10:17','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',11,0,5,'','',0,222,'robots=\nauthor='),(14,'Fazenda Paraíso - Contato','contato','','<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\"><strong>João Rocha – Sócio / Proprietário:</strong><br />Celular: (91) 99144-7930 e 98063-9145<br />E-mail: <a href=\"http://mce_host/maito:joao@fazparaiso.com.br?subject=Contato\" title=\"Envie um e-mail para João Rocha\">joao@fazparaiso.com.br</a></span></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\"><strong>José Rocha - Sócio / Proprietário:</strong><br />Celular: (91) 99166-0037<br />E-mail: <a href=\"http://mce_host/maito:jose@fazparaiso.com.br?subject=Contato\" title=\"Envie um e-mail para José Rocha\">jose@fazparaiso.com.br</a></span></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\"><strong>João Alfredo Rocha - Sócio / Proprietário:</strong><br />Celular: (91) 99166-0081</span></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify; padding-left: 90px;\"><img src=\"images/paraiso/contato.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify; padding-left: 90px;\"><span style=\"font-family: Verdana; color: #336600; font-size: 10pt;\">João Alfredo, João e José, os proprietários das Fazendas.</span></p>','',1,1,0,1,'2008-03-30 18:09:49',62,'','2016-06-09 18:05:14',62,0,'0000-00-00 00:00:00','2008-03-30 18:09:49','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',41,0,2,'','',0,366,'robots=\nauthor='),(13,'Fazenda Paraíso - Parceiros','parceiros','','<p style=\"text-align: justify;\"><strong><br /></strong></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; color: #336600; font-family: Verdana;\"><a href=\"#\" target=\"_self\"><strong>APCB</strong></a> - Associação Paraense de Criadores de Búfalos.<br /><br /><a href=\"http://www.embrapa.br/\" target=\"_blank\"><strong>EMBRAPA</strong></a> - Empresa Brasileira de Pesquisa Agropecuária:<br />Projeto de Melhoramento Genético em Búfalos no Estado do Pará.<br />Projeto de Avaliação de Pastagens na Ilha do Marajó.<br /><a href=\"http://www.ufra.edu.br/\"><br /></a></span><span style=\"font-size: 10pt; color: #336600; font-family: Verdana;\"><a href=\"http://www.ufra.edu.br/\" target=\"_blank\"><strong>UFRA</strong></a> - </span><span style=\"font-size: 10pt; color: #336600; font-family: Verdana;\">Universidade Federal Rural da Amazônia:<br />Projeto de Ordenha Mecânica em Búfalas sem Bezerros ao Pé.<br />Projeto de Melhoramento Genético em Búfalos no Estado do Pará.<br /><br /></span><span style=\"font-size: 10pt; color: #336600; font-family: Verdana;\"><a href=\"http://www.ufpa.br/\" target=\"_blank\"><strong>UFPA</strong></a> - </span><span style=\"font-size: 10pt; color: #336600; font-family: Verdana;\">Universidade Federal do Pará.<br /><br /><a href=\"http://www.ufpa.br/cebran/\" target=\"_blank\"><strong>CEBRAN</strong></a> - Central de Biotecnologia de Reprodução Animal.<br /><br /><span style=\"color: #999999;\"><a href=\"#\"><strong>CEDIVET</strong></a> </span>(Campus de Castanhal) - Central de Diagnóstico Veterinário.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt; color: #336600; font-family: Verdana;\">Projeto de Mastite em Búfalas no Pará.</span></p>','',1,1,0,1,'2008-03-30 18:10:17',62,'','2011-08-10 14:51:31',62,0,'0000-00-00 00:00:00','2008-03-30 18:10:17','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',18,0,3,'','',0,276,'robots=\nauthor=');
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
INSERT INTO `par_content_frontpage` VALUES (1,1);
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
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
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
-- Table structure for table `par_core_acl_aro`
--

DROP TABLE IF EXISTS `par_core_acl_aro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `par_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `par_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_core_acl_aro`
--

LOCK TABLES `par_core_acl_aro` WRITE;
/*!40000 ALTER TABLE `par_core_acl_aro` DISABLE KEYS */;
INSERT INTO `par_core_acl_aro` VALUES (10,'users','62',0,'Fazendas Paraíso',0);
/*!40000 ALTER TABLE `par_core_acl_aro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_core_acl_aro_groups`
--

DROP TABLE IF EXISTS `par_core_acl_aro_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `par_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `par_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_core_acl_aro_groups`
--

LOCK TABLES `par_core_acl_aro_groups` WRITE;
/*!40000 ALTER TABLE `par_core_acl_aro_groups` DISABLE KEYS */;
INSERT INTO `par_core_acl_aro_groups` VALUES (17,0,'ROOT',1,22,'ROOT'),(28,17,'USERS',2,21,'USERS'),(29,28,'Public Frontend',3,12,'Public Frontend'),(18,29,'Registered',4,11,'Registered'),(19,18,'Author',5,10,'Author'),(20,19,'Editor',6,9,'Editor'),(21,20,'Publisher',7,8,'Publisher'),(30,28,'Public Backend',13,20,'Public Backend'),(23,30,'Manager',14,19,'Manager'),(24,23,'Administrator',15,18,'Administrator'),(25,24,'Super Administrator',16,17,'Super Administrator');
/*!40000 ALTER TABLE `par_core_acl_aro_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_core_acl_aro_map`
--

DROP TABLE IF EXISTS `par_core_acl_aro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_core_acl_aro_map`
--

LOCK TABLES `par_core_acl_aro_map` WRITE;
/*!40000 ALTER TABLE `par_core_acl_aro_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_core_acl_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_core_acl_aro_sections`
--

DROP TABLE IF EXISTS `par_core_acl_aro_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `par_gacl_value_aro_sections` (`value`),
  KEY `par_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_core_acl_aro_sections`
--

LOCK TABLES `par_core_acl_aro_sections` WRITE;
/*!40000 ALTER TABLE `par_core_acl_aro_sections` DISABLE KEYS */;
INSERT INTO `par_core_acl_aro_sections` VALUES (10,'users',1,'Users',0);
/*!40000 ALTER TABLE `par_core_acl_aro_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_core_acl_groups_aro_map`
--

DROP TABLE IF EXISTS `par_core_acl_groups_aro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_core_acl_groups_aro_map`
--

LOCK TABLES `par_core_acl_groups_aro_map` WRITE;
/*!40000 ALTER TABLE `par_core_acl_groups_aro_map` DISABLE KEYS */;
INSERT INTO `par_core_acl_groups_aro_map` VALUES (25,'',10);
/*!40000 ALTER TABLE `par_core_acl_groups_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_core_log_items`
--

DROP TABLE IF EXISTS `par_core_log_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_core_log_items`
--

LOCK TABLES `par_core_log_items` WRITE;
/*!40000 ALTER TABLE `par_core_log_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_core_log_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_core_log_searches`
--

DROP TABLE IF EXISTS `par_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_core_log_searches`
--

LOCK TABLES `par_core_log_searches` WRITE;
/*!40000 ALTER TABLE `par_core_log_searches` DISABLE KEYS */;
INSERT INTO `par_core_log_searches` VALUES ('Sua busca aqui!',84),('',7),('rocha',1),('gansos',2),('queijos',4),('joão rocha',1),('revenda',1),('ilberto',1),('gado gie leiteiro',1),('gado gir leiteiro',1),('instalações para buf',2),('instalações  bufalos',1),('pasto',1),('pastoril',1),('pastorio',1),('preço do quilo queij',2),('preço quilo queijo',1),('galinha',6),('www.uol.com.br',1),('galinha rubro negra',3),('vendedor',1),('mussarela',1),('bufalo leite',2),('quejo',1),('quejo bofalo',2),('fazendas de café',1),('haras e fazenda  par',1),('Bahia',2),('feno',3),('JAFARABADI',1);
/*!40000 ALTER TABLE `par_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_groups`
--

DROP TABLE IF EXISTS `par_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_groups`
--

LOCK TABLES `par_groups` WRITE;
/*!40000 ALTER TABLE `par_groups` DISABLE KEYS */;
INSERT INTO `par_groups` VALUES (0,'Public'),(1,'Registered'),(2,'Special');
/*!40000 ALTER TABLE `par_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_menu`
--

DROP TABLE IF EXISTS `par_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_menu`
--

LOCK TABLES `par_menu` WRITE;
/*!40000 ALTER TABLE `par_menu` DISABLE KEYS */;
INSERT INTO `par_menu` VALUES (1,'marajo','Sobre a fazenda','sobre-a-fazenda-marajo','index.php?option=com_content&view=article&id=2','component',1,0,20,0,1,62,'2009-11-23 21:03:10',0,0,0,3,'show_noauth=\nshow_title=\nlink_titles=0\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(14,'topo','Contato','contato','index.php?option=com_content&view=article&id=14','component',1,0,20,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=0\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(11,'topo','Página Inicial','pagina-inicial','index.php?option=com_content&view=frontpage','component',1,0,20,0,1,62,'2011-04-30 01:29:54',0,0,0,0,'num_leading_articles=1\r\nnum_intro_articles=4\r\nnum_columns=2\r\nnum_links=4\r\norderby_pri=\r\norderby_sec=front\r\nshow_pagination=2\r\nshow_pagination_results=1\r\nshow_feed_link=1\r\nshow_noauth=\r\nshow_title=\r\nlink_titles=0\r\nshow_intro=\r\nshow_section=\r\nlink_section=\r\nshow_category=\r\nlink_category=\r\nshow_author=0\r\nshow_create_date=0\r\nshow_modify_date=0\r\nshow_item_navigation=0\r\nshow_readmore=0\r\nshow_vote=0\r\nshow_icons=0\r\nshow_pdf_icon=0\r\nshow_print_icon=0\r\nshow_email_icon=0\r\nshow_hits=0\r\nfeed_summary=\r\npage_title=Fazenda Paraíso - Seja bem vindo!\r\nshow_page_title=0\r\npageclass_sfx=\r\nmenu_image=-1\r\nsecure=0\r\n\r\n',0,0,1),(2,'abaetetuba','Sobre a fazenda','sobre-a-fazenda-abaetetuba','index.php?option=com_content&view=article&id=7','component',1,0,20,0,1,0,'0000-00-00 00:00:00',0,0,0,3,'show_noauth=\nshow_title=\nlink_titles=0\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(3,'marajo','Búfalos','bufalos-marajo','index.php?option=com_content&view=article&id=3','component',1,0,20,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=0\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(4,'abaetetuba','Búfalos','bufalos-abaetetuba','index.php?option=com_content&view=article&id=8','component',1,0,20,0,2,62,'2008-03-30 18:50:28',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=0\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(7,'marajo','Produtos','produtos-marajo','index.php?option=com_content&view=article&id=5','component',1,0,20,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=0\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(8,'abaetetuba','Produtos','produtos-abaetetuba','index.php?option=com_content&view=article&id=10','component',1,0,20,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=0\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(5,'marajo','Premiações','premiacoes-marajo','index.php?option=com_content&view=article&id=4','component',1,0,20,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=0\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(6,'abaetetuba','Premiações','premiacoes-abaetetuba','index.php?option=com_content&view=article&id=9','component',1,0,20,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=0\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(9,'marajo','Tecnologias','tecnologias-marajo','index.php?option=com_content&view=article&id=6','component',1,0,20,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=0\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(10,'abaetetuba','Tecnologias','tecnologias-abaetetuba','index.php?option=com_content&view=article&id=11','component',1,0,20,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=0\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(13,'topo','Parceiros','parceiros','index.php?option=com_content&view=article&id=13','component',1,0,20,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=0\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(12,'topo','Galeria de Fotos','galeria-de-fotos','index.php?option=com_phocagallery&view=categories','component',1,0,112,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'image=-1\nimage_align=right\nshow_pagination_categories=0\nshow_pagination_category=1\nshow_pagination_limit_categories=0\nshow_pagination_limit_category=1\ndisplay_cat_name_title=1\ncategories_columns=\nequal_percentage_width=\ndisplay_image_categories=\nimage_categories_size=\ncategories_image_ordering=\ncategories_display_avatar=\ndisplay_subcategories=\ndisplay_empty_categories=\nhide_categories=\ndisplay_access_category=\ndefault_pagination_categories=\npagination_categories=\nfont_color=\nbackground_color=\nbackground_color_hover=\nimage_background_color=\nimage_background_shadow=\nborder_color=\nborder_color_hover=\nmargin_box=\npadding_box=\ndisplay_name=\ndisplay_icon_detail=\ndisplay_icon_download=\ndisplay_icon_folder=\nfont_size_name=\nchar_length_name=\ncategory_box_space=\ndisplay_categories_sub=\ndisplay_subcat_page=\ndisplay_category_icon_image=\ncategory_image_ordering=\ndisplay_back_button=\ndisplay_categories_back_button=\ndefault_pagination_category=\npagination_category=\ndisplay_img_desc_box=\nfont_size_img_desc=\nimg_desc_box_height=\nchar_length_img_desc=\ndisplay_categories_cv=\ndisplay_subcat_page_cv=\ndisplay_category_icon_image_cv=\ncategory_image_ordering_cv=\ndisplay_back_button_cv=\ndisplay_categories_back_button_cv=\ncategories_columns_cv=\ndisplay_image_categories_cv=\nimage_categories_size_cv=\ndetail_window=\ndetail_window_background_color=\nmodal_box_overlay_color=\nmodal_box_overlay_opacity=\nmodal_box_border_color=\nmodal_box_border_width=\nsb_slideshow_delay=\nsb_lang=\nhighslide_class=\nhighslide_opacity=\nhighslide_outline_type=\nhighslide_fullimg=\nhighslide_close_button=\nhighslide_slideshow=\njak_slideshow_delay=\njak_orientation=\njak_description=\njak_description_height=\ndisplay_description_detail=\ndisplay_title_description=\nfont_size_desc=\nfont_color_desc=\ndescription_detail_height=\ndescription_lightbox_font_size=\ndescription_lightbox_font_color=\ndescription_lightbox_bg_color=\nslideshow_delay=\nslideshow_pause=\nslideshow_random=\ndetail_buttons=\nphocagallery_width=\nphocagallery_center=\ndisplay_phoca_info=\ncategory_ordering=\nimage_ordering=\nenable_user_cp=\nenable_upload_avatar=\nenable_avatar_approve=\nenable_usercat_approve=\nenable_usersubcat_approve=\nuser_subcat_count=\nmax_create_cat_char=\nenable_userimage_approve=\nmax_upload_char=\nupload_maxsize=\nupload_maxres_width=\nupload_maxres_height=\nuser_images_max_size=\nenable_java=\nenable_java_admin=\njava_resize_width=\njava_resize_height=\njava_box_width=\njava_box_height=\ndisplay_rating=\ndisplay_rating_img=\ndisplay_comment=\ndisplay_comment_img=\ncomment_width=\nmax_comment_char=\nexternal_comment_system=\nenable_piclens=\nstart_piclens=\npiclens_image=\nswitch_image=\nswitch_width=\nswitch_height=\nenable_overlib=\nol_bg_color=\nol_fg_color=\nol_tf_color=\nol_cf_color=\noverlib_overlay_opacity=\ncreate_watermark=\nwatermark_position_x=\nwatermark_position_y=\ndisplay_icon_vm=\ndisplay_category_statistics=\ndisplay_main_cat_stat=\ndisplay_lastadded_cat_stat=\ncount_lastadded_cat_stat=\ndisplay_mostviewed_cat_stat=\ncount_mostviewed_cat_stat=\ndisplay_camera_info=\nexif_information=\ngoogle_maps_api_key=\ndisplay_categories_geotagging=\ncategories_lng=\ncategories_lat=\ncategories_zoom=\ncategories_map_width=\ncategories_map_height=\ndisplay_icon_geotagging=\ndisplay_category_geotagging=\ncategory_map_width=\ncategory_map_height=\npagination_thumbnail_creation=\nclean_thumbnails=\nenable_thumb_creation=\ncrop_thumbnail=\njpeg_quality=\nenable_picasa_loading=\npicasa_load_pagination=\nicon_format=\nlarge_image_width=\nlarge_image_height=\nmedium_image_width=\nmedium_image_height=\nsmall_image_width=\nsmall_image_height=\nfront_modal_box_width=\nfront_modal_box_height=\nadmin_modal_box_width=\nadmin_modal_box_height=\nfolder_permissions=\njfile_thumbs=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0);
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
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_menu_types`
--

LOCK TABLES `par_menu_types` WRITE;
/*!40000 ALTER TABLE `par_menu_types` DISABLE KEYS */;
INSERT INTO `par_menu_types` VALUES (1,'marajo','Marajó','Faz. Paraíso - Marajó'),(2,'abaetetuba','Abaetetuba','Faz. Paraíso II - Abaetetuba'),(3,'topo','Topo','Topo');
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
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_messages`
--

LOCK TABLES `par_messages` WRITE;
/*!40000 ALTER TABLE `par_messages` DISABLE KEYS */;
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
-- Table structure for table `par_migration_backlinks`
--

DROP TABLE IF EXISTS `par_migration_backlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_migration_backlinks`
--

LOCK TABLES `par_migration_backlinks` WRITE;
/*!40000 ALTER TABLE `par_migration_backlinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_migration_backlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_modules`
--

DROP TABLE IF EXISTS `par_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_modules`
--

LOCK TABLES `par_modules` WRITE;
/*!40000 ALTER TABLE `par_modules` DISABLE KEYS */;
INSERT INTO `par_modules` VALUES (1,'Paraíso: Marajó','',2,'left',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,1,'menutype=marajo\nmenu_style=list_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_marajo\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',1,0,''),(2,'Login','',1,'login',0,'0000-00-00 00:00:00',1,'mod_login',0,0,1,'',1,1,''),(3,'Popular','',3,'cpanel',0,'0000-00-00 00:00:00',1,'mod_popular',0,2,1,'',0,1,''),(4,'Recent added Articles','',4,'cpanel',0,'0000-00-00 00:00:00',1,'mod_latest',0,2,1,'ordering=c_dsc\nuser_id=0\ncache=0\n\n',0,1,''),(5,'Menu Stats','',5,'cpanel',0,'0000-00-00 00:00:00',1,'mod_stats',0,2,1,'',0,1,''),(6,'Unread Messages','',1,'header',0,'0000-00-00 00:00:00',1,'mod_unread',0,2,1,'',1,1,''),(7,'Online Users','',2,'header',0,'0000-00-00 00:00:00',1,'mod_online',0,2,1,'',1,1,''),(8,'Toolbar','',1,'toolbar',0,'0000-00-00 00:00:00',1,'mod_toolbar',0,2,1,'',1,1,''),(9,'Quick Icons','',1,'icon',0,'0000-00-00 00:00:00',1,'mod_quickicon',0,2,1,'',1,1,''),(10,'Logged in Users','',2,'cpanel',0,'0000-00-00 00:00:00',1,'mod_logged',0,2,1,'',0,1,''),(11,'Footer','',0,'footer',0,'0000-00-00 00:00:00',1,'mod_footer',0,0,1,'',1,1,''),(12,'Admin Menu','',1,'menu',0,'0000-00-00 00:00:00',1,'mod_menu',0,2,1,'',0,1,''),(13,'Admin SubMenu','',1,'submenu',0,'0000-00-00 00:00:00',1,'mod_submenu',0,2,1,'',0,1,''),(14,'User Status','',1,'status',0,'0000-00-00 00:00:00',1,'mod_status',0,2,1,'',0,1,''),(15,'Title','',1,'title',0,'0000-00-00 00:00:00',1,'mod_title',0,2,1,'',0,1,''),(20,'Área Reservada','',6,'left',0,'0000-00-00 00:00:00',0,'mod_login',0,0,1,'cache=0\nmoduleclass_sfx=\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\nname=0\nusesecure=0\n\n',0,0,''),(21,'Busca','',0,'left',0,'0000-00-00 00:00:00',1,'mod_search',0,0,0,'moduleclass_sfx=Busca\nwidth=14\ntext=Sua busca aqui...\nbutton=1\nbutton_pos=right\nimagebutton=\nbutton_text=Buscar\ncache=1\ncache_time=900\n\n',0,0,''),(24,'Topo','',1,'user3',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,1,'menutype=topo\nmenu_style=list_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',0,0,''),(19,'Enquete','',4,'left',0,'0000-00-00 00:00:00',1,'mod_poll',0,0,1,'id=2\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n',0,0,''),(18,'Paraíso II: Abaetetuba','',3,'left',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,1,'menutype=abaetetuba\nmenu_style=list_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_marajo\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',0,0,''),(23,'Usuários On-line','',5,'left',0,'0000-00-00 00:00:00',1,'mod_whosonline',0,0,1,'cache=0\nshowmode=0\nmoduleclass_sfx=\n\n',0,0,''),(25,'Caminho','',7,'left',0,'0000-00-00 00:00:00',0,'mod_breadcrumbs',0,0,0,'showHome=1\nhomeText=Página Inicial\nseparator=>>\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n',0,0,'');
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
INSERT INTO `par_modules_menu` VALUES (1,0),(18,0),(19,0),(20,0),(21,0),(23,0),(24,0),(25,0);
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
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
  `videocode` text,
  `vmproductid` int(11) NOT NULL DEFAULT '0',
  `imgorigsize` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `extlink1` text,
  `extlink2` text,
  `extid` varchar(255) NOT NULL DEFAULT '',
  `extl` varchar(255) NOT NULL DEFAULT '',
  `extm` varchar(255) NOT NULL DEFAULT '',
  `exts` varchar(255) NOT NULL DEFAULT '',
  `exto` varchar(255) NOT NULL DEFAULT '',
  `extw` varchar(255) NOT NULL DEFAULT '',
  `exth` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_phocagallery`
--

LOCK TABLES `par_phocagallery` WRITE;
/*!40000 ALTER TABLE `par_phocagallery` DISABLE KEYS */;
INSERT INTO `par_phocagallery` VALUES (1,1,0,'img001','img001','marajo/img001.jpg',NULL,'2009-11-30 20:58:50',205,'','',0,'',NULL,0,340478,1,1,0,'0000-00-00 00:00:00',1,NULL,NULL,NULL,'','','','','','',''),(2,1,0,'img002','img002','marajo/img002.jpg',NULL,'2009-11-30 20:58:50',166,'','',0,'',NULL,0,329424,1,1,0,'0000-00-00 00:00:00',2,NULL,NULL,NULL,'','','','','','',''),(3,1,0,'img003','img003','marajo/img003.jpg',NULL,'2009-11-30 20:58:50',150,'','',0,'',NULL,0,267563,1,1,0,'0000-00-00 00:00:00',3,NULL,NULL,NULL,'','','','','','',''),(4,1,0,'img004','img004','marajo/img004.jpg',NULL,'2009-11-30 20:58:50',148,'','',0,'',NULL,0,262092,1,1,0,'0000-00-00 00:00:00',4,NULL,NULL,NULL,'','','','','','',''),(5,1,0,'img005','img005','marajo/img005.jpg',NULL,'2009-11-30 20:58:50',134,'','',0,'',NULL,0,405454,1,1,0,'0000-00-00 00:00:00',5,NULL,NULL,NULL,'','','','','','',''),(6,1,0,'img006','img006','marajo/img006.jpg',NULL,'2009-11-30 20:58:50',130,'','',0,'',NULL,0,312355,1,1,0,'0000-00-00 00:00:00',6,NULL,NULL,NULL,'','','','','','',''),(7,1,0,'img007','img007','marajo/img007.jpg',NULL,'2009-11-30 20:58:50',136,'','',0,'',NULL,0,219034,1,1,0,'0000-00-00 00:00:00',7,NULL,NULL,NULL,'','','','','','',''),(8,1,0,'img008','img008','marajo/img008.jpg',NULL,'2009-11-30 20:58:50',118,'','',0,'',NULL,0,174091,1,1,0,'0000-00-00 00:00:00',8,NULL,NULL,NULL,'','','','','','',''),(9,1,0,'img009','img009','marajo/img009.jpg',NULL,'2009-11-30 20:58:50',118,'','',0,'',NULL,0,206925,1,1,0,'0000-00-00 00:00:00',9,NULL,NULL,NULL,'','','','','','',''),(10,1,0,'img010','img010','marajo/img010.jpg',NULL,'2009-11-30 20:58:50',122,'','',0,'',NULL,0,241201,1,1,0,'0000-00-00 00:00:00',10,NULL,NULL,NULL,'','','','','','',''),(11,1,0,'img011','img011','marajo/img011.jpg',NULL,'2009-11-30 20:58:50',118,'','',0,'',NULL,0,301778,1,1,0,'0000-00-00 00:00:00',11,NULL,NULL,NULL,'','','','','','',''),(12,1,0,'img012','img012','marajo/img012.jpg',NULL,'2009-11-30 20:58:50',118,'','',0,'',NULL,0,222393,1,1,0,'0000-00-00 00:00:00',12,NULL,NULL,NULL,'','','','','','',''),(13,1,0,'img013','img013','marajo/img013.jpg',NULL,'2009-11-30 20:58:50',110,'','',0,'',NULL,0,205470,1,1,0,'0000-00-00 00:00:00',13,NULL,NULL,NULL,'','','','','','',''),(14,1,0,'img014','img014','marajo/img014.jpg',NULL,'2009-11-30 20:58:50',111,'','',0,'',NULL,0,133644,1,1,0,'0000-00-00 00:00:00',14,NULL,NULL,NULL,'','','','','','',''),(15,1,0,'img015','img015','marajo/img015.jpg',NULL,'2009-11-30 20:58:50',144,'','',0,'',NULL,0,312349,1,1,0,'0000-00-00 00:00:00',15,NULL,NULL,NULL,'','','','','','',''),(16,2,0,'img001','img001','abaetetuba/img001.jpg',NULL,'2009-11-30 21:09:17',192,'','',0,'',NULL,0,300901,1,1,0,'0000-00-00 00:00:00',1,NULL,NULL,NULL,'','','','','','',''),(17,2,0,'img002','img002','abaetetuba/img002.jpg',NULL,'2009-11-30 21:09:17',140,'','',0,'',NULL,0,341378,1,1,0,'0000-00-00 00:00:00',2,NULL,NULL,NULL,'','','','','','',''),(18,2,0,'img003','img003','abaetetuba/img003.jpg',NULL,'2009-11-30 21:09:17',127,'','',0,'',NULL,0,476504,1,1,0,'0000-00-00 00:00:00',3,NULL,NULL,NULL,'','','','','','',''),(19,2,0,'img004','img004','abaetetuba/img004.jpg',NULL,'2009-11-30 21:09:17',125,'','',0,'',NULL,0,354839,1,1,0,'0000-00-00 00:00:00',4,NULL,NULL,NULL,'','','','','','',''),(20,2,0,'img005','img005','abaetetuba/img005.jpg',NULL,'2009-11-30 21:09:17',124,'','',0,'',NULL,0,510996,1,1,0,'0000-00-00 00:00:00',5,NULL,NULL,NULL,'','','','','','',''),(21,2,0,'img006','img006','abaetetuba/img006.jpg',NULL,'2009-11-30 21:09:17',128,'','',0,'',NULL,0,629023,1,1,0,'0000-00-00 00:00:00',6,NULL,NULL,NULL,'','','','','','',''),(22,2,0,'img007','img007','abaetetuba/img007.jpg',NULL,'2009-11-30 21:09:17',128,'','',0,'',NULL,0,466823,1,1,0,'0000-00-00 00:00:00',7,NULL,NULL,NULL,'','','','','','',''),(23,2,0,'img008','img008','abaetetuba/img008.jpg',NULL,'2009-11-30 21:09:17',121,'','',0,'',NULL,0,337532,1,1,0,'0000-00-00 00:00:00',8,NULL,NULL,NULL,'','','','','','',''),(24,2,0,'img009','img009','abaetetuba/img009.jpg',NULL,'2009-11-30 21:09:17',131,'','',0,'',NULL,0,352969,1,1,0,'0000-00-00 00:00:00',9,NULL,NULL,NULL,'','','','','','',''),(25,2,0,'img010','img010','abaetetuba/img010.jpg',NULL,'2009-11-30 21:09:17',130,'','',0,'',NULL,0,319540,1,1,0,'0000-00-00 00:00:00',10,NULL,NULL,NULL,'','','','','','',''),(26,2,0,'img011','img011','abaetetuba/img011.jpg',NULL,'2009-11-30 21:09:17',126,'','',0,'',NULL,0,360958,1,1,0,'0000-00-00 00:00:00',11,NULL,NULL,NULL,'','','','','','',''),(27,2,0,'img012','img012','abaetetuba/img012.jpg',NULL,'2009-11-30 21:09:17',146,'','',0,'',NULL,0,369232,1,1,0,'0000-00-00 00:00:00',12,NULL,NULL,NULL,'','','','','','',''),(28,2,0,'img013','img013','abaetetuba/img013.jpg',NULL,'2009-11-30 21:09:17',161,'','',0,'',NULL,0,326810,1,1,0,'0000-00-00 00:00:00',13,NULL,NULL,NULL,'','','','','','',''),(29,2,0,'img014','img014','abaetetuba/img014.jpg',NULL,'2009-11-30 21:09:17',125,'','',0,'',NULL,0,404540,1,1,0,'0000-00-00 00:00:00',14,NULL,NULL,NULL,'','','','','','',''),(30,2,0,'img015','img015','abaetetuba/img015.jpg',NULL,'2009-11-30 21:09:17',158,'','',0,'',NULL,0,398666,1,1,0,'0000-00-00 00:00:00',15,NULL,NULL,NULL,'','','','','','',''),(31,2,0,'img016','img016','abaetetuba/img016.jpg',NULL,'2009-11-30 21:09:17',137,'','',0,'',NULL,0,289094,1,1,0,'0000-00-00 00:00:00',16,NULL,NULL,NULL,'','','','','','',''),(32,2,0,'img017','img017','abaetetuba/img017.jpg',NULL,'2009-11-30 21:09:17',144,'','',0,'',NULL,0,421717,1,1,0,'0000-00-00 00:00:00',17,NULL,NULL,NULL,'','','','','','',''),(33,2,0,'img018','img018','abaetetuba/img018.jpg',NULL,'2009-11-30 21:09:17',137,'','',0,'',NULL,0,482432,1,1,0,'0000-00-00 00:00:00',18,NULL,NULL,NULL,'','','','','','',''),(34,2,0,'img019','img019','abaetetuba/img019.jpg',NULL,'2009-11-30 21:09:17',133,'','',0,'',NULL,0,481026,1,1,0,'0000-00-00 00:00:00',19,NULL,NULL,NULL,'','','','','','',''),(35,2,0,'img020','img020','abaetetuba/img020.jpg',NULL,'2009-12-02 11:48:09',136,'','',0,'',NULL,0,412588,1,1,0,'0000-00-00 00:00:00',20,NULL,NULL,NULL,'','','','','','',''),(36,2,0,'img021','img021','abaetetuba/img021.jpg',NULL,'2009-12-02 11:48:09',135,'','',0,'',NULL,0,241946,1,1,0,'0000-00-00 00:00:00',21,NULL,NULL,NULL,'','','','','','',''),(37,2,0,'img022','img022','abaetetuba/img022.jpg',NULL,'2009-12-02 11:48:09',143,'','',0,'',NULL,0,260584,1,1,0,'0000-00-00 00:00:00',22,NULL,NULL,NULL,'','','','','','',''),(38,2,0,'img023','img023','abaetetuba/img023.jpg',NULL,'2009-12-02 11:48:09',133,'','',0,'',NULL,0,240409,1,1,0,'0000-00-00 00:00:00',23,NULL,NULL,NULL,'','','','','','',''),(39,3,0,'img001','img001','exportacao/img001.jpg',NULL,'2009-12-26 01:39:18',195,'','',0,'',NULL,0,548878,1,1,0,'0000-00-00 00:00:00',1,NULL,NULL,NULL,'','','','','','',''),(40,3,0,'img002','img002','exportacao/img002.jpg',NULL,'2009-12-26 01:39:18',150,'','',0,'',NULL,0,472905,1,1,0,'0000-00-00 00:00:00',2,NULL,NULL,NULL,'','','','','','',''),(41,3,0,'img003','img003','exportacao/img003.jpg',NULL,'2009-12-26 01:39:18',142,'','',0,'',NULL,0,481307,1,1,0,'0000-00-00 00:00:00',3,NULL,NULL,NULL,'','','','','','',''),(42,3,0,'img004','img004','exportacao/img004.jpg',NULL,'2009-12-26 01:39:18',145,'','',0,'',NULL,0,538830,1,1,0,'0000-00-00 00:00:00',4,NULL,NULL,NULL,'','','','','','',''),(43,3,0,'img005','img005','exportacao/img005.jpg',NULL,'2009-12-26 01:39:18',139,'','',0,'',NULL,0,479920,1,1,0,'0000-00-00 00:00:00',5,NULL,NULL,NULL,'','','','','','',''),(44,3,0,'img006','img006','exportacao/img006.jpg',NULL,'2009-12-26 01:39:18',136,'','',0,'',NULL,0,539317,1,1,0,'0000-00-00 00:00:00',6,NULL,NULL,NULL,'','','','','','',''),(45,3,0,'img007','img007','exportacao/img007.jpg',NULL,'2009-12-26 01:39:18',137,'','',0,'',NULL,0,571700,1,1,0,'0000-00-00 00:00:00',7,NULL,NULL,NULL,'','','','','','',''),(46,3,0,'img008','img008','exportacao/img008.jpg',NULL,'2009-12-26 01:39:18',126,'','',0,'',NULL,0,589787,1,1,0,'0000-00-00 00:00:00',8,NULL,NULL,NULL,'','','','','','',''),(47,3,0,'img009','img009','exportacao/img009.jpg',NULL,'2009-12-26 01:39:18',146,'','',0,'',NULL,0,589279,1,1,0,'0000-00-00 00:00:00',9,NULL,NULL,NULL,'','','','','','',''),(48,3,0,'img010','img010','exportacao/img010.jpg',NULL,'2009-12-26 01:39:18',144,'','',0,'',NULL,0,426299,1,1,0,'0000-00-00 00:00:00',10,NULL,NULL,NULL,'','','','','','',''),(49,3,0,'img011','img011','exportacao/img011.jpg',NULL,'2009-12-26 01:39:18',134,'','',0,'',NULL,0,515929,1,1,0,'0000-00-00 00:00:00',11,NULL,NULL,NULL,'','','','','','','');
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
  `params` text,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_phocagallery_categories`
--

LOCK TABLES `par_phocagallery_categories` WRITE;
/*!40000 ALTER TABLE `par_phocagallery_categories` DISABLE KEYS */;
INSERT INTO `par_phocagallery_categories` VALUES (1,0,0,'Galeria de Fotos da Fazenda Paraíso - Marajó','','galeria-de-fotos-da-fazenda-paraiso-marajo','','','left','','2009-11-30 20:48:43',1,1,62,'2011-08-02 02:26:01',NULL,1,0,0,273,'0','-2','-2','','','',0,'','','','',NULL),(2,0,0,'Galeria de Fotos da Fazenda Paraíso II - Abaetetuba','','galeria-de-fotos-da-fazenda-paraiso-ii-abaetetuba','','','left','','2009-11-30 20:48:53',1,1,62,'2011-08-02 02:30:03',NULL,2,0,0,366,'0','-2','-2','','','',0,'','','','',NULL),(3,0,0,'Exportação de Búfalos para Venezuela','','exportacao-de-bufalos-para-venezuela','','','left','','2009-12-26 01:24:51',1,1,0,'0000-00-00 00:00:00',NULL,3,0,0,203,'0','-2','-2','','','',0,'','','','',NULL);
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
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
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
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
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
  `count` tinyint(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
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
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_phocagallery_user`
--

LOCK TABLES `par_phocagallery_user` WRITE;
/*!40000 ALTER TABLE `par_phocagallery_user` DISABLE KEYS */;
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
  `count` tinyint(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
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
-- Table structure for table `par_plugins`
--

DROP TABLE IF EXISTS `par_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_plugins`
--

LOCK TABLES `par_plugins` WRITE;
/*!40000 ALTER TABLE `par_plugins` DISABLE KEYS */;
INSERT INTO `par_plugins` VALUES (1,'Authentication - Joomla','joomla','authentication',0,1,1,1,0,0,'0000-00-00 00:00:00',''),(2,'Authentication - LDAP','ldap','authentication',0,2,0,1,0,0,'0000-00-00 00:00:00','host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),(3,'Authentication - GMail','gmail','authentication',0,4,0,0,0,0,'0000-00-00 00:00:00',''),(4,'Authentication - OpenID','openid','authentication',0,3,0,0,0,0,'0000-00-00 00:00:00',''),(5,'User - Joomla!','joomla','user',0,0,1,0,0,0,'0000-00-00 00:00:00','autoregister=1\n\n'),(6,'Search - Content','content','search',0,1,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),(7,'Search - Contacts','contacts','search',0,3,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(8,'Search - Categories','categories','search',0,4,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(9,'Search - Sections','sections','search',0,5,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(10,'Search - Newsfeeds','newsfeeds','search',0,6,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(11,'Search - Weblinks','weblinks','search',0,2,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(12,'Content - Pagebreak','pagebreak','content',0,10000,1,1,0,0,'0000-00-00 00:00:00','enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),(13,'Content - Rating','vote','content',0,4,1,1,0,0,'0000-00-00 00:00:00',''),(14,'Content - Email Cloaking','emailcloak','content',0,5,1,0,0,0,'0000-00-00 00:00:00','mode=1\n\n'),(15,'Content - Code Hightlighter (GeSHi)','geshi','content',0,5,0,0,0,0,'0000-00-00 00:00:00',''),(16,'Content - Load Module','loadmodule','content',0,6,1,0,0,0,'0000-00-00 00:00:00','enabled=1\nstyle=0\n\n'),(17,'Content - Page Navigation','pagenavigation','content',0,2,1,1,0,0,'0000-00-00 00:00:00','position=1\n\n'),(18,'Editor - No Editor','none','editors',0,0,1,1,0,0,'0000-00-00 00:00:00',''),(19,'Editor - TinyMCE 2.0','tinymce','editors',0,0,1,1,0,0,'0000-00-00 00:00:00','theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),(20,'Editor - XStandard Lite 2.0','xstandard','editors',0,0,0,1,0,0,'0000-00-00 00:00:00',''),(21,'Editor Button - Image','image','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(22,'Editor Button - Pagebreak','pagebreak','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(23,'Editor Button - Readmore','readmore','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(24,'XML-RPC - Joomla','joomla','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00',''),(25,'XML-RPC - Blogger API','blogger','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00','catid=1\nsectionid=0\n\n'),(27,'System - SEF','sef','system',0,1,1,0,0,0,'0000-00-00 00:00:00',''),(28,'System - Debug','debug','system',0,2,1,0,0,0,'0000-00-00 00:00:00','queries=1\nmemory=1\nlangauge=1\n\n'),(29,'System - Legacy','legacy','system',0,3,0,1,0,0,'0000-00-00 00:00:00','route=0\n\n'),(30,'System - Cache','cache','system',0,4,0,1,0,0,'0000-00-00 00:00:00','browsercache=0\ncachetime=15\n\n'),(31,'System - Log','log','system',0,5,0,1,0,0,'0000-00-00 00:00:00',''),(32,'System - Remember Me','remember','system',0,6,1,1,0,0,'0000-00-00 00:00:00',''),(33,'System - Backlink','backlink','system',0,7,0,1,0,0,'0000-00-00 00:00:00',''),(34,'Phoca Gallery Plugin','phocagallery','content',0,0,0,0,0,0,'0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `par_plugins` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_poll_data`
--

LOCK TABLES `par_poll_data` WRITE;
/*!40000 ALTER TABLE `par_poll_data` DISABLE KEYS */;
INSERT INTO `par_poll_data` VALUES (1,1,'Queijo do Marajó',35),(2,1,'Queijo Frescal',8),(3,1,'Queijo Mussarela',13),(4,1,'Outros',5),(5,1,'',0),(6,1,'',0),(7,1,'',0),(8,1,'',0),(9,1,'',0),(10,1,'',0),(11,1,'',0),(12,1,'',0),(13,2,'Búfalo Brasileiro',5),(14,2,'Jafarabadi',1),(15,2,'Mediterrânea',2),(16,2,'Murrah',14),(17,2,'Outros',1),(18,2,'',0),(19,2,'',0),(20,2,'',0),(21,2,'',0),(22,2,'',0),(23,2,'',0),(24,2,'',0);
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
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_poll_date`
--

LOCK TABLES `par_poll_date` WRITE;
/*!40000 ALTER TABLE `par_poll_date` DISABLE KEYS */;
INSERT INTO `par_poll_date` VALUES (14,'2009-07-20 18:55:18',1,1),(15,'2009-07-20 22:40:53',1,1),(16,'2009-07-20 23:33:37',1,1),(17,'2009-07-21 01:03:11',3,1),(18,'2009-07-23 00:05:29',1,1),(19,'2009-07-24 00:14:37',1,1),(20,'2009-07-29 01:45:56',1,1),(21,'2009-08-13 13:42:44',1,1),(22,'2009-08-21 21:38:26',1,1),(23,'2009-08-27 20:46:39',1,1),(24,'2009-09-11 22:06:22',1,1),(25,'2009-09-19 19:31:11',1,1),(26,'2009-09-24 22:07:19',1,1),(27,'2009-10-04 22:17:28',1,1),(28,'2009-11-06 15:52:58',4,1),(29,'2009-11-23 22:17:11',1,1),(30,'2009-11-24 14:46:45',1,1),(31,'2009-11-25 10:17:14',1,1),(32,'2009-11-26 23:56:32',1,1),(33,'2009-11-30 22:12:46',1,1),(34,'2009-12-15 19:55:22',1,1),(35,'2009-12-23 13:26:05',3,1),(36,'2009-12-23 13:28:09',3,1),(37,'2010-01-04 01:07:37',2,1),(38,'2010-01-05 01:14:22',4,1),(39,'2010-01-18 19:23:01',1,1),(40,'2010-01-18 21:08:18',1,1),(41,'2010-01-18 21:28:36',1,1),(42,'2010-01-19 02:15:22',2,1),(43,'2010-01-20 19:35:46',2,1),(44,'2010-01-20 22:48:51',3,1),(45,'2010-01-21 00:15:51',3,1),(46,'2010-01-21 12:36:12',1,1),(47,'2010-01-24 14:43:04',1,1),(48,'2010-01-25 21:38:40',3,1),(49,'2010-01-26 17:51:47',4,1),(50,'2010-02-01 21:30:01',2,1),(51,'2010-02-05 17:33:20',1,1),(52,'2010-02-11 02:47:16',2,1),(53,'2010-02-18 15:35:08',3,1),(54,'2010-02-18 16:17:12',3,1),(55,'2010-02-19 00:07:31',3,1),(56,'2010-02-19 00:07:31',3,1),(57,'2010-02-19 13:32:44',3,1),(58,'2010-02-19 15:54:22',4,1),(59,'2010-02-22 21:08:09',1,1),(60,'2010-02-23 14:59:21',1,1),(61,'2010-03-05 19:30:13',2,1),(62,'2010-03-27 11:24:25',2,1),(63,'2010-03-27 12:06:02',1,1),(64,'2010-03-27 14:20:15',4,1),(65,'2010-03-27 22:34:30',1,1),(66,'2010-04-13 11:57:06',1,1),(67,'2010-04-13 11:57:06',1,1),(68,'2010-05-10 02:16:44',3,1),(69,'2010-05-13 00:03:58',2,1),(70,'2010-05-31 14:01:42',1,1),(71,'2010-06-17 01:04:05',1,1),(72,'2010-06-28 00:57:20',1,1),(73,'2010-07-20 00:17:36',1,1),(74,'2010-07-25 04:11:01',3,1),(75,'2010-08-01 06:48:49',13,2),(76,'2010-08-04 10:18:15',16,2),(77,'2010-08-15 12:05:53',13,2),(78,'2010-08-15 22:14:51',15,2),(79,'2010-08-25 23:33:56',14,2),(80,'2010-09-22 19:43:12',13,2),(81,'2010-09-26 18:19:01',15,2),(82,'2010-11-24 09:56:54',16,2),(83,'2010-12-24 22:22:49',16,2),(84,'2011-02-04 16:10:40',16,2),(85,'2011-02-14 17:35:40',16,2),(86,'2011-02-24 17:36:22',17,2),(87,'2011-02-28 10:05:21',16,2),(88,'2011-04-30 10:04:35',16,2),(89,'2011-05-03 22:43:05',13,2),(90,'2011-05-08 09:49:57',16,2),(91,'2011-05-14 19:22:06',16,2),(92,'2011-05-27 00:34:33',16,2),(93,'2011-06-07 19:51:05',16,2),(94,'2011-07-04 19:19:30',16,2),(95,'2011-07-04 19:19:37',16,2),(96,'2011-07-06 23:11:30',16,2),(97,'2011-07-25 17:12:29',13,2);
/*!40000 ALTER TABLE `par_poll_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_poll_menu`
--

DROP TABLE IF EXISTS `par_poll_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_poll_menu`
--

LOCK TABLES `par_poll_menu` WRITE;
/*!40000 ALTER TABLE `par_poll_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_poll_menu` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_polls`
--

LOCK TABLES `par_polls` WRITE;
/*!40000 ALTER TABLE `par_polls` DISABLE KEYS */;
INSERT INTO `par_polls` VALUES (1,'Qual seu queijo preferido?','qual-seu-queijo-preferido',61,0,'0000-00-00 00:00:00',1,0,86400),(2,'Criador de Búfalos: Qual a sua raça preferida?','qual-a-sua-raca-preferida',23,0,'0000-00-00 00:00:00',1,0,86400);
/*!40000 ALTER TABLE `par_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_sections`
--

DROP TABLE IF EXISTS `par_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_sections`
--

LOCK TABLES `par_sections` WRITE;
/*!40000 ALTER TABLE `par_sections` DISABLE KEYS */;
INSERT INTO `par_sections` VALUES (1,'Fazenda Paraíso','','paraiso','','content','left','',1,0,'0000-00-00 00:00:00',1,0,23,'');
/*!40000 ALTER TABLE `par_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_session`
--

DROP TABLE IF EXISTS `par_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
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
INSERT INTO `par_session` VALUES ('','1465991527','gb4f24da1dbcuupv4tspog0j87',1,0,'',0,0,NULL);
/*!40000 ALTER TABLE `par_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_stats_agents`
--

DROP TABLE IF EXISTS `par_stats_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_stats_agents`
--

LOCK TABLES `par_stats_agents` WRITE;
/*!40000 ALTER TABLE `par_stats_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `par_stats_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_templates_menu`
--

DROP TABLE IF EXISTS `par_templates_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_templates_menu`
--

LOCK TABLES `par_templates_menu` WRITE;
/*!40000 ALTER TABLE `par_templates_menu` DISABLE KEYS */;
INSERT INTO `par_templates_menu` VALUES ('Paraiso',0,0),('khepri',0,1);
/*!40000 ALTER TABLE `par_templates_menu` ENABLE KEYS */;
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
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `par_users`
--

LOCK TABLES `par_users` WRITE;
/*!40000 ALTER TABLE `par_users` DISABLE KEYS */;
INSERT INTO `par_users` VALUES (62,'Fazendas Paraíso','fazparaiso','contato@fazparaiso.com.br','ec058c59276660dd6c229fa1d23f0ff0:0poQm4wMpYPv7uGKNrx6s2GD4syXI7cA','Super Administrator',0,1,25,'2008-03-29 18:03:26','2016-06-09 18:07:26','','admin_language=pt-BR\nlanguage=pt-BR\neditor=\nhelpsite=\ntimezone=-3\n\n');
/*!40000 ALTER TABLE `par_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `par_weblinks`
--

DROP TABLE IF EXISTS `par_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `par_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
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

-- Dump completed on 2016-06-15 14:54:10
