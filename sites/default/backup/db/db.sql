-- MySQL dump 10.11
--
-- Host: localhost    Database: pft_staging
-- ------------------------------------------------------
-- Server version	5.0.45-Debian_1ubuntu3.4-log

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
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
CREATE TABLE `access` (
  `aid` int(11) NOT NULL auto_increment,
  `mask` varchar(255) NOT NULL default '',
  `type` varchar(255) NOT NULL default '',
  `status` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `access`
--

LOCK TABLES `access` WRITE;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
/*!40000 ALTER TABLE `access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
CREATE TABLE `actions` (
  `aid` varchar(255) NOT NULL default '0',
  `type` varchar(32) NOT NULL default '',
  `callback` varchar(255) NOT NULL default '',
  `parameters` longtext NOT NULL,
  `description` varchar(255) NOT NULL default '0',
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES ('comment_publish_action','comment','comment_publish_action','','Publish comment'),('comment_unpublish_action','comment','comment_unpublish_action','','Unpublish comment'),('node_publish_action','node','node_publish_action','','Publish post'),('node_unpublish_action','node','node_unpublish_action','','Unpublish post'),('node_make_sticky_action','node','node_make_sticky_action','','Make post sticky'),('node_make_unsticky_action','node','node_make_unsticky_action','','Make post unsticky'),('node_promote_action','node','node_promote_action','','Promote post to front page'),('node_unpromote_action','node','node_unpromote_action','','Remove post from front page'),('node_save_action','node','node_save_action','','Save post'),('user_block_user_action','user','user_block_user_action','','Block current user'),('user_block_ip_action','user','user_block_ip_action','','Ban IP address of current user');
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actions_aid`
--

DROP TABLE IF EXISTS `actions_aid`;
CREATE TABLE `actions_aid` (
  `aid` int(10) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actions_aid`
--

LOCK TABLES `actions_aid` WRITE;
/*!40000 ALTER TABLE `actions_aid` DISABLE KEYS */;
/*!40000 ALTER TABLE `actions_aid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advanced_help_index`
--

DROP TABLE IF EXISTS `advanced_help_index`;
CREATE TABLE `advanced_help_index` (
  `sid` int(10) unsigned NOT NULL auto_increment,
  `module` varchar(255) NOT NULL default '',
  `topic` varchar(255) NOT NULL default '',
  `language` varchar(12) NOT NULL default '',
  PRIMARY KEY  (`sid`),
  KEY `language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `advanced_help_index`
--

LOCK TABLES `advanced_help_index` WRITE;
/*!40000 ALTER TABLE `advanced_help_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `advanced_help_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authmap`
--

DROP TABLE IF EXISTS `authmap`;
CREATE TABLE `authmap` (
  `aid` int(10) unsigned NOT NULL auto_increment,
  `uid` int(11) NOT NULL default '0',
  `authname` varchar(128) NOT NULL default '',
  `module` varchar(128) NOT NULL default '',
  PRIMARY KEY  (`aid`),
  UNIQUE KEY `authname` (`authname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authmap`
--

LOCK TABLES `authmap` WRITE;
/*!40000 ALTER TABLE `authmap` DISABLE KEYS */;
/*!40000 ALTER TABLE `authmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
CREATE TABLE `batch` (
  `bid` int(10) unsigned NOT NULL auto_increment,
  `token` varchar(64) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `batch` longtext,
  PRIMARY KEY  (`bid`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `batch`
--

LOCK TABLES `batch` WRITE;
/*!40000 ALTER TABLE `batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
CREATE TABLE `blocks` (
  `bid` int(11) NOT NULL auto_increment,
  `module` varchar(64) NOT NULL default '',
  `delta` varchar(32) NOT NULL default '0',
  `theme` varchar(64) NOT NULL default '',
  `status` tinyint(4) NOT NULL default '0',
  `weight` tinyint(4) NOT NULL default '0',
  `region` varchar(64) NOT NULL default '',
  `custom` tinyint(4) NOT NULL default '0',
  `throttle` tinyint(4) NOT NULL default '0',
  `visibility` tinyint(4) NOT NULL default '0',
  `pages` text NOT NULL,
  `title` varchar(64) NOT NULL default '',
  `cache` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`bid`),
  UNIQUE KEY `tmd` (`theme`,`module`,`delta`),
  KEY `list` (`theme`,`status`,`region`,`weight`,`module`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (1,'user','0','garland',1,0,'left',0,0,0,'','',-1),(2,'user','1','garland',1,0,'left',0,0,0,'','',-1),(3,'system','0','garland',1,10,'footer',0,0,0,'','',-1);
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks_roles`
--

DROP TABLE IF EXISTS `blocks_roles`;
CREATE TABLE `blocks_roles` (
  `module` varchar(64) NOT NULL,
  `delta` varchar(32) NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`module`,`delta`,`rid`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blocks_roles`
--

LOCK TABLES `blocks_roles` WRITE;
/*!40000 ALTER TABLE `blocks_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocks_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boxes`
--

DROP TABLE IF EXISTS `boxes`;
CREATE TABLE `boxes` (
  `bid` int(10) unsigned NOT NULL auto_increment,
  `body` longtext,
  `info` varchar(128) NOT NULL default '',
  `format` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`bid`),
  UNIQUE KEY `info` (`info`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `boxes`
--

LOCK TABLES `boxes` WRITE;
/*!40000 ALTER TABLE `boxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `cid` varchar(255) NOT NULL default '',
  `data` longblob,
  `expire` int(11) NOT NULL default '0',
  `created` int(11) NOT NULL default '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_block`
--

DROP TABLE IF EXISTS `cache_block`;
CREATE TABLE `cache_block` (
  `cid` varchar(255) NOT NULL default '',
  `data` longblob,
  `expire` int(11) NOT NULL default '0',
  `created` int(11) NOT NULL default '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cache_block`
--

LOCK TABLES `cache_block` WRITE;
/*!40000 ALTER TABLE `cache_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_content`
--

DROP TABLE IF EXISTS `cache_content`;
CREATE TABLE `cache_content` (
  `cid` varchar(255) NOT NULL default '',
  `data` longblob,
  `expire` int(11) NOT NULL default '0',
  `created` int(11) NOT NULL default '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cache_content`
--

LOCK TABLES `cache_content` WRITE;
/*!40000 ALTER TABLE `cache_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_filter`
--

DROP TABLE IF EXISTS `cache_filter`;
CREATE TABLE `cache_filter` (
  `cid` varchar(255) NOT NULL default '',
  `data` longblob,
  `expire` int(11) NOT NULL default '0',
  `created` int(11) NOT NULL default '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cache_filter`
--

LOCK TABLES `cache_filter` WRITE;
/*!40000 ALTER TABLE `cache_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_form`
--

DROP TABLE IF EXISTS `cache_form`;
CREATE TABLE `cache_form` (
  `cid` varchar(255) NOT NULL default '',
  `data` longblob,
  `expire` int(11) NOT NULL default '0',
  `created` int(11) NOT NULL default '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cache_form`
--

LOCK TABLES `cache_form` WRITE;
/*!40000 ALTER TABLE `cache_form` DISABLE KEYS */;
INSERT INTO `cache_form` VALUES ('form_form-f3712e9625eafd2aaa49dfeebfb85052','a:40:{s:3:\"#id\";s:9:\"node-form\";s:3:\"nid\";a:2:{s:5:\"#type\";s:5:\"value\";s:6:\"#value\";N;}s:3:\"vid\";a:2:{s:5:\"#type\";s:5:\"value\";s:6:\"#value\";N;}s:3:\"uid\";a:2:{s:5:\"#type\";s:5:\"value\";s:6:\"#value\";s:1:\"3\";}s:7:\"created\";a:2:{s:5:\"#type\";s:5:\"value\";s:6:\"#value\";i:1284144716;}s:4:\"type\";a:2:{s:5:\"#type\";s:5:\"value\";s:6:\"#value\";s:5:\"story\";}s:8:\"language\";a:2:{s:5:\"#type\";s:5:\"value\";s:6:\"#value\";s:0:\"\";}s:7:\"changed\";a:2:{s:5:\"#type\";s:6:\"hidden\";s:14:\"#default_value\";N;}s:5:\"title\";a:6:{s:5:\"#type\";s:9:\"textfield\";s:6:\"#title\";s:5:\"Title\";s:9:\"#required\";b:1;s:14:\"#default_value\";N;s:10:\"#maxlength\";i:255;s:7:\"#weight\";i:-5;}s:10:\"body_field\";a:7:{s:12:\"#after_build\";a:2:{i:0;s:14:\"node_teaser_js\";i:1;s:26:\"node_teaser_include_verify\";}s:7:\"#prefix\";s:32:\"<div class=\"body-field-wrapper\">\";s:7:\"#suffix\";s:6:\"</div>\";s:9:\"teaser_js\";a:5:{s:5:\"#type\";s:8:\"textarea\";s:5:\"#rows\";i:10;s:7:\"#teaser\";s:9:\"edit-body\";s:16:\"#teaser_checkbox\";s:19:\"edit-teaser-include\";s:9:\"#disabled\";b:1;}s:14:\"teaser_include\";a:5:{s:5:\"#type\";s:8:\"checkbox\";s:6:\"#title\";s:25:\"Show summary in full view\";s:14:\"#default_value\";b:1;s:7:\"#prefix\";s:29:\"<div class=\"teaser-checkbox\">\";s:7:\"#suffix\";s:6:\"</div>\";}s:4:\"body\";a:5:{s:5:\"#type\";s:8:\"textarea\";s:6:\"#title\";s:4:\"Body\";s:14:\"#default_value\";N;s:5:\"#rows\";i:20;s:9:\"#required\";b:0;}s:6:\"format\";a:9:{s:5:\"#type\";s:8:\"fieldset\";s:6:\"#title\";s:12:\"Input format\";s:12:\"#collapsible\";b:1;s:10:\"#collapsed\";b:1;s:7:\"#weight\";N;s:17:\"#element_validate\";a:1:{i:0;s:20:\"filter_form_validate\";}i:1;a:7:{s:5:\"#type\";s:5:\"radio\";s:6:\"#title\";s:13:\"Filtered HTML\";s:14:\"#default_value\";i:1;s:13:\"#return_value\";s:1:\"1\";s:8:\"#parents\";a:1:{i:0;s:6:\"format\";}s:12:\"#description\";s:306:\"<ul class=\"tips\"><li>Web page addresses and e-mail addresses turn into links automatically.</li><li>Allowed HTML tags: &lt;a&gt; &lt;em&gt; &lt;strong&gt; &lt;cite&gt; &lt;code&gt; &lt;ul&gt; &lt;ol&gt; &lt;li&gt; &lt;dl&gt; &lt;dt&gt; &lt;dd&gt;</li><li>Lines and paragraphs break automatically.</li></ul>\";s:3:\"#id\";s:13:\"edit-format-1\";}i:2;a:7:{s:5:\"#type\";s:5:\"radio\";s:6:\"#title\";s:9:\"Full HTML\";s:14:\"#default_value\";i:1;s:13:\"#return_value\";s:1:\"2\";s:8:\"#parents\";a:1:{i:0;s:6:\"format\";}s:12:\"#description\";s:151:\"<ul class=\"tips\"><li>Web page addresses and e-mail addresses turn into links automatically.</li><li>Lines and paragraphs break automatically.</li></ul>\";s:3:\"#id\";s:13:\"edit-format-2\";}i:3;a:1:{s:6:\"#value\";s:75:\"<p><a href=\"/filter/tips\">More information about formatting options</a></p>\";}}}s:5:\"#node\";O:8:\"stdClass\":14:{s:3:\"uid\";s:1:\"3\";s:4:\"name\";s:10:\"victorkane\";s:4:\"type\";s:5:\"story\";s:8:\"language\";s:0:\"\";s:4:\"body\";N;s:5:\"title\";N;s:6:\"format\";N;s:6:\"status\";b:1;s:7:\"promote\";b:1;s:6:\"sticky\";b:0;s:7:\"created\";i:1284144716;s:8:\"revision\";b:0;s:7:\"comment\";i:2;s:4:\"menu\";a:12:{s:10:\"link_title\";s:0:\"\";s:4:\"mlid\";i:0;s:4:\"plid\";i:0;s:9:\"menu_name\";s:13:\"primary-links\";s:6:\"weight\";i:0;s:7:\"options\";a:0:{}s:6:\"module\";s:4:\"menu\";s:8:\"expanded\";i:0;s:6:\"hidden\";i:0;s:12:\"has_children\";i:0;s:10:\"customized\";i:0;s:18:\"parent_depth_limit\";i:8;}}s:20:\"revision_information\";a:9:{s:5:\"#type\";s:8:\"fieldset\";s:6:\"#title\";s:20:\"Revision information\";s:12:\"#collapsible\";b:1;s:10:\"#collapsed\";b:1;s:7:\"#weight\";i:20;s:8:\"revision\";a:4:{s:7:\"#access\";b:1;s:5:\"#type\";s:8:\"checkbox\";s:6:\"#title\";s:19:\"Create new revision\";s:14:\"#default_value\";b:0;}s:3:\"log\";a:5:{s:5:\"#type\";s:8:\"textarea\";s:6:\"#title\";s:11:\"Log message\";s:14:\"#default_value\";s:0:\"\";s:5:\"#rows\";i:2;s:12:\"#description\";s:104:\"An explanation of the additions or updates being made to help other authors understand your motivations.\";}s:6:\"#group\";s:19:\"additional_settings\";s:9:\"#attached\";a:1:{s:2:\"js\";a:1:{s:13:\"vertical-tabs\";s:44:\"sites/all/modules/vertical_tabs/core/node.js\";}}}s:6:\"author\";a:10:{s:5:\"#type\";s:8:\"fieldset\";s:7:\"#access\";b:1;s:6:\"#title\";s:21:\"Authoring information\";s:12:\"#collapsible\";b:1;s:10:\"#collapsed\";b:1;s:7:\"#weight\";i:20;s:4:\"name\";a:7:{s:5:\"#type\";s:9:\"textfield\";s:6:\"#title\";s:11:\"Authored by\";s:10:\"#maxlength\";i:60;s:18:\"#autocomplete_path\";s:17:\"user/autocomplete\";s:14:\"#default_value\";s:10:\"victorkane\";s:7:\"#weight\";i:-1;s:12:\"#description\";s:35:\"Leave blank for <em>Anonymous</em>.\";}s:4:\"date\";a:4:{s:5:\"#type\";s:9:\"textfield\";s:6:\"#title\";s:11:\"Authored on\";s:10:\"#maxlength\";i:25;s:12:\"#description\";s:91:\"Format: <em>2010-09-10 15:51:56 -0300</em>. Leave blank to use the time of form submission.\";}s:6:\"#group\";s:19:\"additional_settings\";s:9:\"#attached\";a:1:{s:2:\"js\";a:1:{s:13:\"vertical-tabs\";s:44:\"sites/all/modules/vertical_tabs/core/node.js\";}}}s:7:\"options\";a:11:{s:5:\"#type\";s:8:\"fieldset\";s:7:\"#access\";b:1;s:6:\"#title\";s:18:\"Publishing options\";s:12:\"#collapsible\";b:1;s:10:\"#collapsed\";b:1;s:7:\"#weight\";i:25;s:6:\"status\";a:3:{s:5:\"#type\";s:8:\"checkbox\";s:6:\"#title\";s:9:\"Published\";s:14:\"#default_value\";b:1;}s:7:\"promote\";a:3:{s:5:\"#type\";s:8:\"checkbox\";s:6:\"#title\";s:22:\"Promoted to front page\";s:14:\"#default_value\";b:1;}s:6:\"sticky\";a:3:{s:5:\"#type\";s:8:\"checkbox\";s:6:\"#title\";s:22:\"Sticky at top of lists\";s:14:\"#default_value\";b:0;}s:6:\"#group\";s:19:\"additional_settings\";s:9:\"#attached\";a:1:{s:2:\"js\";a:1:{s:13:\"vertical-tabs\";s:44:\"sites/all/modules/vertical_tabs/core/node.js\";}}}s:7:\"buttons\";a:2:{s:6:\"submit\";a:5:{s:5:\"#type\";s:6:\"submit\";s:7:\"#access\";b:1;s:6:\"#value\";s:4:\"Save\";s:7:\"#weight\";i:5;s:7:\"#submit\";a:1:{i:0;s:16:\"node_form_submit\";}}s:7:\"preview\";a:4:{s:5:\"#type\";s:6:\"submit\";s:6:\"#value\";s:7:\"Preview\";s:7:\"#weight\";i:10;s:7:\"#submit\";a:1:{i:0;s:23:\"node_form_build_preview\";}}}s:9:\"#validate\";a:1:{i:0;s:18:\"node_form_validate\";}s:6:\"#theme\";a:2:{i:0;s:15:\"story_node_form\";i:1;s:9:\"node_form\";}s:11:\"#parameters\";a:3:{i:0;s:15:\"story_node_form\";i:1;a:3:{s:7:\"storage\";N;s:9:\"submitted\";b:0;s:4:\"post\";a:0:{}}i:2;a:4:{s:3:\"uid\";s:1:\"3\";s:4:\"name\";s:10:\"victorkane\";s:4:\"type\";s:5:\"story\";s:8:\"language\";s:0:\"\";}}s:9:\"#build_id\";s:37:\"form-f3712e9625eafd2aaa49dfeebfb85052\";s:5:\"#type\";s:4:\"form\";s:11:\"#programmed\";b:0;s:13:\"form_build_id\";a:4:{s:5:\"#type\";s:6:\"hidden\";s:6:\"#value\";s:37:\"form-f3712e9625eafd2aaa49dfeebfb85052\";s:3:\"#id\";s:37:\"form-f3712e9625eafd2aaa49dfeebfb85052\";s:5:\"#name\";s:13:\"form_build_id\";}s:6:\"#token\";s:15:\"story_node_form\";s:10:\"form_token\";a:3:{s:3:\"#id\";s:31:\"edit-story-node-form-form-token\";s:5:\"#type\";s:5:\"token\";s:14:\"#default_value\";s:32:\"0302f04d0dd6e11487f4dda19410db5d\";}s:7:\"form_id\";a:3:{s:5:\"#type\";s:6:\"hidden\";s:6:\"#value\";s:15:\"story_node_form\";s:3:\"#id\";s:20:\"edit-story-node-form\";}s:12:\"#description\";N;s:11:\"#attributes\";a:1:{s:7:\"enctype\";s:19:\"multipart/form-data\";}s:9:\"#required\";b:0;s:5:\"#tree\";b:0;s:8:\"#parents\";a:0:{}s:7:\"#method\";s:4:\"post\";s:7:\"#action\";s:15:\"/node/add/story\";s:16:\"comment_settings\";a:9:{s:5:\"#type\";s:8:\"fieldset\";s:7:\"#access\";b:1;s:6:\"#title\";s:16:\"Comment settings\";s:12:\"#collapsible\";b:1;s:10:\"#collapsed\";b:1;s:7:\"#weight\";i:30;s:7:\"comment\";a:4:{s:5:\"#type\";s:6:\"radios\";s:8:\"#parents\";a:1:{i:0;s:7:\"comment\";}s:14:\"#default_value\";i:2;s:8:\"#options\";a:3:{i:0;s:8:\"Disabled\";i:1;s:9:\"Read only\";i:2;s:10:\"Read/Write\";}}s:6:\"#group\";s:19:\"additional_settings\";s:9:\"#attached\";a:1:{s:2:\"js\";a:1:{s:13:\"vertical-tabs\";s:47:\"sites/all/modules/vertical_tabs/core/comment.js\";}}}s:6:\"#cache\";b:1;s:4:\"menu\";a:22:{s:5:\"#type\";s:8:\"fieldset\";s:6:\"#title\";s:13:\"Menu settings\";s:7:\"#access\";b:1;s:12:\"#collapsible\";b:1;s:10:\"#collapsed\";b:1;s:5:\"#tree\";b:1;s:7:\"#weight\";i:-2;s:11:\"#attributes\";a:1:{s:5:\"class\";s:14:\"menu-item-form\";}s:4:\"mlid\";a:2:{s:5:\"#type\";s:5:\"value\";s:6:\"#value\";i:0;}s:6:\"module\";a:2:{s:5:\"#type\";s:5:\"value\";s:6:\"#value\";s:4:\"menu\";}s:6:\"hidden\";a:2:{s:5:\"#type\";s:5:\"value\";s:6:\"#value\";i:0;}s:12:\"has_children\";a:2:{s:5:\"#type\";s:5:\"value\";s:6:\"#value\";i:0;}s:10:\"customized\";a:2:{s:5:\"#type\";s:5:\"value\";s:6:\"#value\";i:0;}s:7:\"options\";a:2:{s:5:\"#type\";s:5:\"value\";s:6:\"#value\";a:0:{}}s:8:\"expanded\";a:2:{s:5:\"#type\";s:5:\"value\";s:6:\"#value\";i:0;}s:18:\"parent_depth_limit\";a:2:{s:5:\"#type\";s:5:\"value\";s:6:\"#value\";i:8;}s:5:\"#item\";a:12:{s:10:\"link_title\";s:0:\"\";s:4:\"mlid\";i:0;s:4:\"plid\";i:0;s:9:\"menu_name\";s:13:\"primary-links\";s:6:\"weight\";i:0;s:7:\"options\";a:0:{}s:6:\"module\";s:4:\"menu\";s:8:\"expanded\";i:0;s:6:\"hidden\";i:0;s:12:\"has_children\";i:0;s:10:\"customized\";i:0;s:18:\"parent_depth_limit\";i:8;}s:10:\"link_title\";a:5:{s:5:\"#type\";s:9:\"textfield\";s:6:\"#title\";s:15:\"Menu link title\";s:14:\"#default_value\";s:0:\"\";s:12:\"#description\";s:133:\"The link text corresponding to this item that should appear in the menu. Leave blank if you do not wish to add this post to the menu.\";s:9:\"#required\";b:0;}s:6:\"parent\";a:6:{s:5:\"#type\";s:6:\"select\";s:6:\"#title\";s:11:\"Parent item\";s:14:\"#default_value\";s:15:\"primary-links:0\";s:8:\"#options\";a:76:{s:7:\"devel:0\";s:13:\"<Development>\";s:9:\"devel:223\";s:17:\"-- Devel settings\";s:9:\"devel:248\";s:14:\"-- Empty cache\";s:9:\"devel:230\";s:19:\"-- Execute PHP Code\";s:9:\"devel:231\";s:21:\"-- Function reference\";s:9:\"devel:232\";s:18:\"-- Hook_elements()\";s:9:\"devel:234\";s:12:\"-- PHPinfo()\";s:9:\"devel:254\";s:16:\"-- Rebuild menus\";s:9:\"devel:235\";s:20:\"-- Reinstall modules\";s:9:\"devel:222\";s:11:\"-- Run cron\";s:9:\"devel:236\";s:17:\"-- Session viewer\";s:9:\"devel:257\";s:17:\"-- Theme registry\";s:9:\"devel:240\";s:18:\"-- Variable editor\";s:12:\"navigation:0\";s:12:\"<Navigation>\";s:12:\"navigation:9\";s:26:\"-- Compose tips (disabled)\";s:13:\"navigation:21\";s:13:\"-- My account\";s:13:\"navigation:11\";s:17:\"-- Create content\";s:14:\"navigation:106\";s:9:\"---- Page\";s:14:\"navigation:107\";s:10:\"---- Story\";s:12:\"navigation:2\";s:13:\"-- Administer\";s:13:\"navigation:10\";s:23:\"---- Content management\";s:13:\"navigation:27\";s:15:\"------ Comments\";s:13:\"navigation:28\";s:14:\"------ Content\";s:13:\"navigation:29\";s:20:\"------ Content types\";s:13:\"navigation:42\";s:20:\"------ Post settings\";s:13:\"navigation:43\";s:21:\"------ RSS publishing\";s:13:\"navigation:94\";s:15:\"------ Taxonomy\";s:13:\"navigation:17\";s:18:\"---- Site building\";s:13:\"navigation:25\";s:13:\"------ Blocks\";s:14:\"navigation:244\";s:20:\"------ Bulk Exporter\";s:14:\"navigation:246\";s:27:\"------ Custom content panes\";s:13:\"navigation:38\";s:12:\"------ Menus\";s:13:\"navigation:89\";s:19:\"-------- Navigation\";s:13:\"navigation:90\";s:22:\"-------- Primary links\";s:13:\"navigation:91\";s:24:\"-------- Secondary links\";s:14:\"navigation:251\";s:18:\"------ Mini panels\";s:13:\"navigation:39\";s:14:\"------ Modules\";s:14:\"navigation:252\";s:12:\"------ Pages\";s:14:\"navigation:253\";s:13:\"------ Panels\";s:14:\"navigation:256\";s:15:\"------ Stylizer\";s:13:\"navigation:49\";s:13:\"------ Themes\";s:14:\"navigation:261\";s:12:\"------ Views\";s:13:\"navigation:18\";s:23:\"---- Site configuration\";s:13:\"navigation:23\";s:14:\"------ Actions\";s:14:\"navigation:116\";s:26:\"------ Administration menu\";s:13:\"navigation:24\";s:27:\"------ Administration theme\";s:13:\"navigation:26\";s:17:\"------ Clean URLs\";s:13:\"navigation:30\";s:20:\"------ Date and time\";s:14:\"navigation:247\";s:21:\"------ Devel settings\";s:13:\"navigation:33\";s:22:\"------ Error reporting\";s:13:\"navigation:34\";s:18:\"------ File system\";s:13:\"navigation:35\";s:20:\"------ Image toolkit\";s:14:\"navigation:250\";s:15:\"------ ImageAPI\";s:13:\"navigation:36\";s:20:\"------ Input formats\";s:13:\"navigation:37\";s:25:\"------ Logging and alerts\";s:14:\"navigation:100\";s:25:\"-------- Database logging\";s:13:\"navigation:40\";s:18:\"------ Performance\";s:13:\"navigation:46\";s:23:\"------ Site information\";s:13:\"navigation:47\";s:23:\"------ Site maintenance\";s:13:\"navigation:20\";s:20:\"---- User management\";s:13:\"navigation:22\";s:19:\"------ Access rules\";s:13:\"navigation:41\";s:18:\"------ Permissions\";s:13:\"navigation:45\";s:12:\"------ Roles\";s:13:\"navigation:50\";s:20:\"------ User settings\";s:13:\"navigation:51\";s:12:\"------ Users\";s:13:\"navigation:16\";s:12:\"---- Reports\";s:13:\"navigation:93\";s:25:\"------ Recent log entries\";s:13:\"navigation:96\";s:33:\"------ Top \'access denied\' errors\";s:13:\"navigation:97\";s:34:\"------ Top \'page not found\' errors\";s:14:\"navigation:105\";s:24:\"------ Available updates\";s:13:\"navigation:48\";s:20:\"------ Status report\";s:14:\"navigation:225\";s:18:\"---- Advanced help\";s:13:\"navigation:15\";s:9:\"---- Help\";s:12:\"navigation:4\";s:10:\"-- Log out\";s:15:\"primary-links:0\";s:15:\"<Primary links>\";s:17:\"secondary-links:0\";s:17:\"<Secondary links>\";}s:12:\"#description\";s:156:\"The maximum depth for an item and all its children is fixed at 9. Some menu items may not be available as parents if selecting them would exceed this limit.\";s:11:\"#attributes\";a:1:{s:5:\"class\";s:17:\"menu-title-select\";}}s:6:\"weight\";a:5:{s:5:\"#type\";s:6:\"weight\";s:6:\"#title\";s:6:\"Weight\";s:6:\"#delta\";i:50;s:14:\"#default_value\";i:0;s:12:\"#description\";s:107:\"Optional. In the menu, the heavier items will sink and the lighter items will be positioned nearer the top.\";}s:6:\"#group\";s:19:\"additional_settings\";s:9:\"#attached\";a:1:{s:2:\"js\";a:1:{s:13:\"vertical-tabs\";s:44:\"sites/all/modules/vertical_tabs/core/menu.js\";}}}s:7:\"#submit\";a:1:{i:0;s:21:\"menu_node_form_submit\";}s:11:\"#pre_render\";a:2:{i:0;s:27:\"content_alter_extra_weights\";i:1;s:29:\"vertical_tabs_form_pre_render\";}s:21:\"#content_extra_fields\";a:7:{s:5:\"title\";a:3:{s:5:\"label\";s:5:\"Title\";s:11:\"description\";s:17:\"Node module form.\";s:6:\"weight\";i:-5;}s:10:\"body_field\";a:4:{s:5:\"label\";s:4:\"Body\";s:11:\"description\";s:17:\"Node module form.\";s:6:\"weight\";i:0;s:4:\"view\";s:4:\"body\";}s:20:\"revision_information\";a:3:{s:5:\"label\";s:20:\"Revision information\";s:11:\"description\";s:17:\"Node module form.\";s:6:\"weight\";i:20;}s:6:\"author\";a:3:{s:5:\"label\";s:21:\"Authoring information\";s:11:\"description\";s:17:\"Node module form.\";s:6:\"weight\";i:20;}s:7:\"options\";a:3:{s:5:\"label\";s:18:\"Publishing options\";s:11:\"description\";s:17:\"Node module form.\";s:6:\"weight\";i:25;}s:16:\"comment_settings\";a:3:{s:5:\"label\";s:16:\"Comment settings\";s:11:\"description\";s:20:\"Comment module form.\";s:6:\"weight\";i:30;}s:4:\"menu\";a:3:{s:5:\"label\";s:13:\"Menu settings\";s:11:\"description\";s:17:\"Menu module form.\";s:6:\"weight\";i:-2;}}s:14:\"#vertical_tabs\";a:0:{}s:12:\"#cache_token\";s:32:\"fbd51cdac4b587abad62144cf2ff99f2\";}',1284166316,1284144716,'',1);
/*!40000 ALTER TABLE `cache_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_menu`
--

DROP TABLE IF EXISTS `cache_menu`;
CREATE TABLE `cache_menu` (
  `cid` varchar(255) NOT NULL default '',
  `data` longblob,
  `expire` int(11) NOT NULL default '0',
  `created` int(11) NOT NULL default '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cache_menu`
--

LOCK TABLES `cache_menu` WRITE;
/*!40000 ALTER TABLE `cache_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_page`
--

DROP TABLE IF EXISTS `cache_page`;
CREATE TABLE `cache_page` (
  `cid` varchar(255) NOT NULL default '',
  `data` longblob,
  `expire` int(11) NOT NULL default '0',
  `created` int(11) NOT NULL default '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cache_page`
--

LOCK TABLES `cache_page` WRITE;
/*!40000 ALTER TABLE `cache_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_update`
--

DROP TABLE IF EXISTS `cache_update`;
CREATE TABLE `cache_update` (
  `cid` varchar(255) NOT NULL default '',
  `data` longblob,
  `expire` int(11) NOT NULL default '0',
  `created` int(11) NOT NULL default '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cache_update`
--

LOCK TABLES `cache_update` WRITE;
/*!40000 ALTER TABLE `cache_update` DISABLE KEYS */;
INSERT INTO `cache_update` VALUES ('update_project_projects','a:16:{s:10:\"admin_menu\";a:7:{s:4:\"name\";s:10:\"admin_menu\";s:4:\"info\";a:6:{s:4:\"name\";s:19:\"Administration menu\";s:7:\"package\";s:14:\"Administration\";s:7:\"version\";s:7:\"6.x-1.6\";s:7:\"project\";s:10:\"admin_menu\";s:9:\"datestamp\";s:10:\"1283512306\";s:16:\"_info_file_ctime\";i:1284128475;}s:9:\"datestamp\";s:10:\"1283512306\";s:8:\"includes\";a:1:{s:10:\"admin_menu\";s:19:\"Administration menu\";}s:12:\"project_type\";s:6:\"module\";s:10:\"sub_themes\";a:0:{}s:11:\"base_themes\";a:0:{}}s:9:\"adminrole\";a:7:{s:4:\"name\";s:9:\"adminrole\";s:4:\"info\";a:6:{s:4:\"name\";s:10:\"Admin Role\";s:7:\"package\";s:14:\"Administration\";s:7:\"version\";s:7:\"6.x-1.3\";s:7:\"project\";s:9:\"adminrole\";s:9:\"datestamp\";s:10:\"1281809488\";s:16:\"_info_file_ctime\";i:1284128476;}s:9:\"datestamp\";s:10:\"1281809488\";s:8:\"includes\";a:1:{s:9:\"adminrole\";s:10:\"Admin Role\";}s:12:\"project_type\";s:6:\"module\";s:10:\"sub_themes\";a:0:{}s:11:\"base_themes\";a:0:{}}s:13:\"advanced_help\";a:7:{s:4:\"name\";s:13:\"advanced_help\";s:4:\"info\";a:5:{s:4:\"name\";s:13:\"Advanced help\";s:7:\"version\";s:7:\"6.x-1.2\";s:7:\"project\";s:13:\"advanced_help\";s:9:\"datestamp\";s:10:\"1238954409\";s:16:\"_info_file_ctime\";i:1284128476;}s:9:\"datestamp\";s:10:\"1238954409\";s:8:\"includes\";a:1:{s:13:\"advanced_help\";s:13:\"Advanced help\";}s:12:\"project_type\";s:6:\"module\";s:10:\"sub_themes\";a:0:{}s:11:\"base_themes\";a:0:{}}s:6:\"drupal\";a:7:{s:4:\"name\";s:6:\"drupal\";s:4:\"info\";a:6:{s:4:\"name\";s:5:\"Block\";s:7:\"package\";s:15:\"Core - required\";s:7:\"version\";s:4:\"6.19\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:16:\"_info_file_ctime\";i:1284128481;}s:9:\"datestamp\";s:10:\"1281559292\";s:8:\"includes\";a:13:{s:5:\"block\";s:5:\"Block\";s:5:\"color\";s:5:\"Color\";s:7:\"comment\";s:7:\"Comment\";s:5:\"dblog\";s:16:\"Database logging\";s:6:\"filter\";s:6:\"Filter\";s:4:\"help\";s:4:\"Help\";s:4:\"menu\";s:4:\"Menu\";s:4:\"node\";s:4:\"Node\";s:6:\"system\";s:6:\"System\";s:8:\"taxonomy\";s:8:\"Taxonomy\";s:6:\"update\";s:13:\"Update status\";s:4:\"user\";s:4:\"User\";s:7:\"garland\";s:7:\"Garland\";}s:12:\"project_type\";s:4:\"core\";s:10:\"sub_themes\";a:0:{}s:11:\"base_themes\";a:0:{}}s:6:\"ctools\";a:7:{s:4:\"name\";s:6:\"ctools\";s:4:\"info\";a:6:{s:4:\"name\";s:11:\"Bulk Export\";s:7:\"package\";s:16:\"Chaos tool suite\";s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:6:\"ctools\";s:9:\"datestamp\";s:10:\"1280189115\";s:16:\"_info_file_ctime\";i:1284128480;}s:9:\"datestamp\";s:10:\"1280189115\";s:8:\"includes\";a:6:{s:11:\"bulk_export\";s:11:\"Bulk Export\";s:6:\"ctools\";s:11:\"Chaos tools\";s:21:\"ctools_custom_content\";s:20:\"Custom content panes\";s:12:\"page_manager\";s:12:\"Page manager\";s:8:\"stylizer\";s:8:\"Stylizer\";s:13:\"views_content\";s:19:\"Views content panes\";}s:12:\"project_type\";s:6:\"module\";s:10:\"sub_themes\";a:0:{}s:11:\"base_themes\";a:0:{}}s:3:\"cck\";a:7:{s:4:\"name\";s:3:\"cck\";s:4:\"info\";a:6:{s:4:\"name\";s:7:\"Content\";s:7:\"package\";s:3:\"CCK\";s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:16:\"_info_file_ctime\";i:1284128480;}s:9:\"datestamp\";s:10:\"1281570988\";s:8:\"includes\";a:8:{s:7:\"content\";s:7:\"Content\";s:12:\"content_copy\";s:12:\"Content Copy\";s:10:\"fieldgroup\";s:10:\"Fieldgroup\";s:13:\"nodereference\";s:14:\"Node Reference\";s:6:\"number\";s:6:\"Number\";s:13:\"optionwidgets\";s:14:\"Option Widgets\";s:4:\"text\";s:4:\"Text\";s:13:\"userreference\";s:14:\"User Reference\";}s:12:\"project_type\";s:6:\"module\";s:10:\"sub_themes\";a:0:{}s:11:\"base_themes\";a:0:{}}s:4:\"date\";a:7:{s:4:\"name\";s:4:\"date\";s:4:\"info\";a:6:{s:4:\"name\";s:4:\"Date\";s:7:\"package\";s:9:\"Date/Time\";s:7:\"version\";s:7:\"6.x-2.6\";s:7:\"project\";s:4:\"date\";s:9:\"datestamp\";s:10:\"1281786990\";s:16:\"_info_file_ctime\";i:1284128480;}s:9:\"datestamp\";s:10:\"1281786990\";s:8:\"includes\";a:3:{s:4:\"date\";s:4:\"Date\";s:8:\"date_api\";s:8:\"Date API\";s:13:\"date_timezone\";s:13:\"Date Timezone\";}s:12:\"project_type\";s:6:\"module\";s:10:\"sub_themes\";a:0:{}s:11:\"base_themes\";a:0:{}}s:5:\"devel\";a:7:{s:4:\"name\";s:5:\"devel\";s:4:\"info\";a:6:{s:4:\"name\";s:5:\"Devel\";s:7:\"package\";s:11:\"Development\";s:7:\"version\";s:8:\"6.x-1.22\";s:7:\"project\";s:5:\"devel\";s:9:\"datestamp\";s:10:\"1281718291\";s:16:\"_info_file_ctime\";i:1284128477;}s:9:\"datestamp\";s:10:\"1281718291\";s:8:\"includes\";a:1:{s:5:\"devel\";s:5:\"Devel\";}s:12:\"project_type\";s:6:\"module\";s:10:\"sub_themes\";a:0:{}s:11:\"base_themes\";a:0:{}}s:9:\"filefield\";a:7:{s:4:\"name\";s:9:\"filefield\";s:4:\"info\";a:6:{s:4:\"name\";s:9:\"FileField\";s:7:\"package\";s:3:\"CCK\";s:7:\"version\";s:7:\"6.x-3.7\";s:7:\"project\";s:9:\"filefield\";s:9:\"datestamp\";s:10:\"1277943012\";s:16:\"_info_file_ctime\";i:1284128480;}s:9:\"datestamp\";s:10:\"1277943012\";s:8:\"includes\";a:1:{s:9:\"filefield\";s:9:\"FileField\";}s:12:\"project_type\";s:6:\"module\";s:10:\"sub_themes\";a:0:{}s:11:\"base_themes\";a:0:{}}s:8:\"imageapi\";a:7:{s:4:\"name\";s:8:\"imageapi\";s:4:\"info\";a:6:{s:4:\"name\";s:8:\"ImageAPI\";s:7:\"package\";s:10:\"ImageCache\";s:7:\"version\";s:7:\"6.x-1.8\";s:7:\"project\";s:8:\"imageapi\";s:9:\"datestamp\";s:10:\"1272675611\";s:16:\"_info_file_ctime\";i:1284128480;}s:9:\"datestamp\";s:10:\"1272675611\";s:8:\"includes\";a:2:{s:8:\"imageapi\";s:8:\"ImageAPI\";s:11:\"imageapi_gd\";s:12:\"ImageAPI GD2\";}s:12:\"project_type\";s:6:\"module\";s:10:\"sub_themes\";a:0:{}s:11:\"base_themes\";a:0:{}}s:10:\"imagefield\";a:7:{s:4:\"name\";s:10:\"imagefield\";s:4:\"info\";a:6:{s:4:\"name\";s:10:\"ImageField\";s:7:\"package\";s:3:\"CCK\";s:7:\"version\";s:7:\"6.x-3.7\";s:7:\"project\";s:10:\"imagefield\";s:9:\"datestamp\";s:10:\"1277942710\";s:16:\"_info_file_ctime\";i:1284128480;}s:9:\"datestamp\";s:10:\"1277942710\";s:8:\"includes\";a:1:{s:10:\"imagefield\";s:10:\"ImageField\";}s:12:\"project_type\";s:6:\"module\";s:10:\"sub_themes\";a:0:{}s:11:\"base_themes\";a:0:{}}s:6:\"panels\";a:7:{s:4:\"name\";s:6:\"panels\";s:4:\"info\";a:6:{s:4:\"name\";s:6:\"Panels\";s:7:\"package\";s:6:\"Panels\";s:7:\"version\";s:7:\"6.x-3.7\";s:7:\"project\";s:6:\"panels\";s:9:\"datestamp\";s:10:\"1280189119\";s:16:\"_info_file_ctime\";i:1284128480;}s:9:\"datestamp\";s:10:\"1280189119\";s:8:\"includes\";a:2:{s:6:\"panels\";s:6:\"Panels\";s:11:\"panels_mini\";s:11:\"Mini panels\";}s:12:\"project_type\";s:6:\"module\";s:10:\"sub_themes\";a:0:{}s:11:\"base_themes\";a:0:{}}s:17:\"panels_everywhere\";a:7:{s:4:\"name\";s:17:\"panels_everywhere\";s:4:\"info\";a:6:{s:4:\"name\";s:17:\"Panels everywhere\";s:7:\"package\";s:6:\"Panels\";s:7:\"version\";s:7:\"6.x-1.1\";s:7:\"project\";s:17:\"panels_everywhere\";s:9:\"datestamp\";s:10:\"1280189120\";s:16:\"_info_file_ctime\";i:1284128480;}s:9:\"datestamp\";s:10:\"1280189120\";s:8:\"includes\";a:1:{s:17:\"panels_everywhere\";s:17:\"Panels everywhere\";}s:12:\"project_type\";s:6:\"module\";s:10:\"sub_themes\";a:0:{}s:11:\"base_themes\";a:0:{}}s:5:\"token\";a:7:{s:4:\"name\";s:5:\"token\";s:4:\"info\";a:5:{s:4:\"name\";s:5:\"Token\";s:7:\"version\";s:8:\"6.x-1.13\";s:7:\"project\";s:5:\"token\";s:9:\"datestamp\";s:10:\"1275922817\";s:16:\"_info_file_ctime\";i:1284128477;}s:9:\"datestamp\";s:10:\"1275922817\";s:8:\"includes\";a:1:{s:5:\"token\";s:5:\"Token\";}s:12:\"project_type\";s:6:\"module\";s:10:\"sub_themes\";a:0:{}s:11:\"base_themes\";a:0:{}}s:13:\"vertical_tabs\";a:7:{s:4:\"name\";s:13:\"vertical_tabs\";s:4:\"info\";a:5:{s:4:\"name\";s:13:\"Vertical Tabs\";s:7:\"version\";s:13:\"6.x-1.0-beta7\";s:7:\"project\";s:13:\"vertical_tabs\";s:9:\"datestamp\";s:10:\"1260340567\";s:16:\"_info_file_ctime\";i:1284128477;}s:9:\"datestamp\";s:10:\"1260340567\";s:8:\"includes\";a:1:{s:13:\"vertical_tabs\";s:13:\"Vertical Tabs\";}s:12:\"project_type\";s:6:\"module\";s:10:\"sub_themes\";a:0:{}s:11:\"base_themes\";a:0:{}}s:5:\"views\";a:7:{s:4:\"name\";s:5:\"views\";s:4:\"info\";a:6:{s:4:\"name\";s:5:\"Views\";s:7:\"package\";s:5:\"Views\";s:7:\"version\";s:8:\"6.x-2.11\";s:7:\"project\";s:5:\"views\";s:9:\"datestamp\";s:10:\"1276743614\";s:16:\"_info_file_ctime\";i:1284128480;}s:9:\"datestamp\";s:10:\"1276743614\";s:8:\"includes\";a:3:{s:5:\"views\";s:5:\"Views\";s:12:\"views_export\";s:14:\"Views exporter\";s:8:\"views_ui\";s:8:\"Views UI\";}s:12:\"project_type\";s:6:\"module\";s:10:\"sub_themes\";a:0:{}s:11:\"base_themes\";a:0:{}}}',1284152787,1284149187,NULL,1);
/*!40000 ALTER TABLE `cache_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_views`
--

DROP TABLE IF EXISTS `cache_views`;
CREATE TABLE `cache_views` (
  `cid` varchar(255) NOT NULL default '',
  `data` longblob,
  `expire` int(11) NOT NULL default '0',
  `created` int(11) NOT NULL default '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cache_views`
--

LOCK TABLES `cache_views` WRITE;
/*!40000 ALTER TABLE `cache_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_views_data`
--

DROP TABLE IF EXISTS `cache_views_data`;
CREATE TABLE `cache_views_data` (
  `cid` varchar(255) NOT NULL default '',
  `data` longblob,
  `expire` int(11) NOT NULL default '0',
  `created` int(11) NOT NULL default '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL default '1',
  PRIMARY KEY  (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cache_views_data`
--

LOCK TABLES `cache_views_data` WRITE;
/*!40000 ALTER TABLE `cache_views_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_views_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `cid` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL default '0',
  `nid` int(11) NOT NULL default '0',
  `uid` int(11) NOT NULL default '0',
  `subject` varchar(64) NOT NULL default '',
  `comment` longtext NOT NULL,
  `hostname` varchar(128) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  `status` tinyint(3) unsigned NOT NULL default '0',
  `format` smallint(6) NOT NULL default '0',
  `thread` varchar(255) NOT NULL,
  `name` varchar(60) default NULL,
  `mail` varchar(64) default NULL,
  `homepage` varchar(255) default NULL,
  PRIMARY KEY  (`cid`),
  KEY `pid` (`pid`),
  KEY `nid` (`nid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_group`
--

DROP TABLE IF EXISTS `content_group`;
CREATE TABLE `content_group` (
  `group_type` varchar(32) NOT NULL default 'standard',
  `type_name` varchar(32) NOT NULL default '',
  `group_name` varchar(32) NOT NULL default '',
  `label` varchar(255) NOT NULL default '',
  `settings` mediumtext NOT NULL,
  `weight` int(11) NOT NULL default '0',
  PRIMARY KEY  (`type_name`,`group_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_group`
--

LOCK TABLES `content_group` WRITE;
/*!40000 ALTER TABLE `content_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `content_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_group_fields`
--

DROP TABLE IF EXISTS `content_group_fields`;
CREATE TABLE `content_group_fields` (
  `type_name` varchar(32) NOT NULL default '',
  `group_name` varchar(32) NOT NULL default '',
  `field_name` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`type_name`,`group_name`,`field_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_group_fields`
--

LOCK TABLES `content_group_fields` WRITE;
/*!40000 ALTER TABLE `content_group_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `content_group_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_node_field`
--

DROP TABLE IF EXISTS `content_node_field`;
CREATE TABLE `content_node_field` (
  `field_name` varchar(32) NOT NULL default '',
  `type` varchar(127) NOT NULL default '',
  `global_settings` mediumtext NOT NULL,
  `required` tinyint(4) NOT NULL default '0',
  `multiple` tinyint(4) NOT NULL default '0',
  `db_storage` tinyint(4) NOT NULL default '1',
  `module` varchar(127) NOT NULL default '',
  `db_columns` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL default '0',
  `locked` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`field_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_node_field`
--

LOCK TABLES `content_node_field` WRITE;
/*!40000 ALTER TABLE `content_node_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `content_node_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_node_field_instance`
--

DROP TABLE IF EXISTS `content_node_field_instance`;
CREATE TABLE `content_node_field_instance` (
  `field_name` varchar(32) NOT NULL default '',
  `type_name` varchar(32) NOT NULL default '',
  `weight` int(11) NOT NULL default '0',
  `label` varchar(255) NOT NULL default '',
  `widget_type` varchar(32) NOT NULL default '',
  `widget_settings` mediumtext NOT NULL,
  `display_settings` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `widget_module` varchar(127) NOT NULL default '',
  `widget_active` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`field_name`,`type_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_node_field_instance`
--

LOCK TABLES `content_node_field_instance` WRITE;
/*!40000 ALTER TABLE `content_node_field_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `content_node_field_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctools_css_cache`
--

DROP TABLE IF EXISTS `ctools_css_cache`;
CREATE TABLE `ctools_css_cache` (
  `cid` varchar(128) NOT NULL,
  `filename` varchar(255) default NULL,
  `css` longtext,
  `filter` tinyint(4) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ctools_css_cache`
--

LOCK TABLES `ctools_css_cache` WRITE;
/*!40000 ALTER TABLE `ctools_css_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctools_css_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctools_custom_content`
--

DROP TABLE IF EXISTS `ctools_custom_content`;
CREATE TABLE `ctools_custom_content` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `admin_title` varchar(255) default NULL,
  `admin_description` longtext,
  `category` varchar(255) default NULL,
  `settings` longtext,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ctools_custom_content`
--

LOCK TABLES `ctools_custom_content` WRITE;
/*!40000 ALTER TABLE `ctools_custom_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctools_custom_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctools_object_cache`
--

DROP TABLE IF EXISTS `ctools_object_cache`;
CREATE TABLE `ctools_object_cache` (
  `sid` varchar(64) NOT NULL,
  `name` varchar(128) NOT NULL,
  `obj` varchar(32) NOT NULL,
  `updated` int(10) unsigned NOT NULL default '0',
  `data` longtext,
  PRIMARY KEY  (`sid`,`obj`,`name`),
  KEY `updated` (`updated`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ctools_object_cache`
--

LOCK TABLES `ctools_object_cache` WRITE;
/*!40000 ALTER TABLE `ctools_object_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctools_object_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date_format_locale`
--

DROP TABLE IF EXISTS `date_format_locale`;
CREATE TABLE `date_format_locale` (
  `format` varchar(100) character set utf8 collate utf8_bin NOT NULL,
  `type` varchar(200) NOT NULL,
  `language` varchar(12) NOT NULL,
  PRIMARY KEY  (`type`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `date_format_locale`
--

LOCK TABLES `date_format_locale` WRITE;
/*!40000 ALTER TABLE `date_format_locale` DISABLE KEYS */;
/*!40000 ALTER TABLE `date_format_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date_format_types`
--

DROP TABLE IF EXISTS `date_format_types`;
CREATE TABLE `date_format_types` (
  `type` varchar(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `locked` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `date_format_types`
--

LOCK TABLES `date_format_types` WRITE;
/*!40000 ALTER TABLE `date_format_types` DISABLE KEYS */;
INSERT INTO `date_format_types` VALUES ('long','Long',1),('medium','Medium',1),('short','Short',1);
/*!40000 ALTER TABLE `date_format_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date_formats`
--

DROP TABLE IF EXISTS `date_formats`;
CREATE TABLE `date_formats` (
  `dfid` int(10) unsigned NOT NULL auto_increment,
  `format` varchar(100) character set utf8 collate utf8_bin NOT NULL,
  `type` varchar(200) NOT NULL,
  `locked` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`dfid`),
  UNIQUE KEY `formats` (`format`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `date_formats`
--

LOCK TABLES `date_formats` WRITE;
/*!40000 ALTER TABLE `date_formats` DISABLE KEYS */;
INSERT INTO `date_formats` VALUES (1,'Y-m-d H:i','short',1),(2,'m/d/Y - H:i','short',1),(3,'d/m/Y - H:i','short',1),(4,'Y/m/d - H:i','short',1),(5,'d.m.Y - H:i','short',1),(6,'m/d/Y - g:ia','short',1),(7,'d/m/Y - g:ia','short',1),(8,'Y/m/d - g:ia','short',1),(9,'M j Y - H:i','short',1),(10,'j M Y - H:i','short',1),(11,'Y M j - H:i','short',1),(12,'M j Y - g:ia','short',1),(13,'j M Y - g:ia','short',1),(14,'Y M j - g:ia','short',1),(15,'D, Y-m-d H:i','medium',1),(16,'D, m/d/Y - H:i','medium',1),(17,'D, d/m/Y - H:i','medium',1),(18,'D, Y/m/d - H:i','medium',1),(19,'F j, Y - H:i','medium',1),(20,'j F, Y - H:i','medium',1),(21,'Y, F j - H:i','medium',1),(22,'D, m/d/Y - g:ia','medium',1),(23,'D, d/m/Y - g:ia','medium',1),(24,'D, Y/m/d - g:ia','medium',1),(25,'F j, Y - g:ia','medium',1),(26,'j F Y - g:ia','medium',1),(27,'Y, F j - g:ia','medium',1),(28,'j. F Y - G:i','medium',1),(29,'l, F j, Y - H:i','long',1),(30,'l, j F, Y - H:i','long',1),(31,'l, Y,  F j - H:i','long',1),(32,'l, F j, Y - g:ia','long',1),(33,'l, j F Y - g:ia','long',1),(34,'l, Y,  F j - g:ia','long',1),(35,'l, j. F Y - G:i','long',1);
/*!40000 ALTER TABLE `date_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devel_queries`
--

DROP TABLE IF EXISTS `devel_queries`;
CREATE TABLE `devel_queries` (
  `qid` int(11) NOT NULL auto_increment,
  `function` varchar(255) NOT NULL default '',
  `query` text NOT NULL,
  `hash` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`hash`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `devel_queries`
--

LOCK TABLES `devel_queries` WRITE;
/*!40000 ALTER TABLE `devel_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `devel_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devel_times`
--

DROP TABLE IF EXISTS `devel_times`;
CREATE TABLE `devel_times` (
  `tid` int(11) NOT NULL auto_increment,
  `qid` int(11) NOT NULL default '0',
  `time` float default NULL,
  PRIMARY KEY  (`tid`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `devel_times`
--

LOCK TABLES `devel_times` WRITE;
/*!40000 ALTER TABLE `devel_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `devel_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `fid` int(10) unsigned NOT NULL auto_increment,
  `uid` int(10) unsigned NOT NULL default '0',
  `filename` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `filemime` varchar(255) NOT NULL default '',
  `filesize` int(10) unsigned NOT NULL default '0',
  `status` int(11) NOT NULL default '0',
  `timestamp` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`fid`),
  KEY `uid` (`uid`),
  KEY `status` (`status`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter_formats`
--

DROP TABLE IF EXISTS `filter_formats`;
CREATE TABLE `filter_formats` (
  `format` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `roles` varchar(255) NOT NULL default '',
  `cache` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`format`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filter_formats`
--

LOCK TABLES `filter_formats` WRITE;
/*!40000 ALTER TABLE `filter_formats` DISABLE KEYS */;
INSERT INTO `filter_formats` VALUES (1,'Filtered HTML',',1,2,',1),(2,'Full HTML','',1);
/*!40000 ALTER TABLE `filter_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `filters`;
CREATE TABLE `filters` (
  `fid` int(11) NOT NULL auto_increment,
  `format` int(11) NOT NULL default '0',
  `module` varchar(64) NOT NULL default '',
  `delta` tinyint(4) NOT NULL default '0',
  `weight` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`fid`),
  UNIQUE KEY `fmd` (`format`,`module`,`delta`),
  KEY `list` (`format`,`weight`,`module`,`delta`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filters`
--

LOCK TABLES `filters` WRITE;
/*!40000 ALTER TABLE `filters` DISABLE KEYS */;
INSERT INTO `filters` VALUES (1,1,'filter',2,0),(2,1,'filter',0,1),(3,1,'filter',1,2),(4,1,'filter',3,10),(5,2,'filter',2,0),(6,2,'filter',1,1),(7,2,'filter',3,10);
/*!40000 ALTER TABLE `filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flood`
--

DROP TABLE IF EXISTS `flood`;
CREATE TABLE `flood` (
  `fid` int(11) NOT NULL auto_increment,
  `event` varchar(64) NOT NULL default '',
  `hostname` varchar(128) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  PRIMARY KEY  (`fid`),
  KEY `allow` (`event`,`hostname`,`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flood`
--

LOCK TABLES `flood` WRITE;
/*!40000 ALTER TABLE `flood` DISABLE KEYS */;
/*!40000 ALTER TABLE `flood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `uid` int(11) NOT NULL default '0',
  `nid` int(11) NOT NULL default '0',
  `timestamp` int(11) NOT NULL default '0',
  PRIMARY KEY  (`uid`,`nid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (3,1,1284144611),(3,2,1284144664),(3,3,1284144702),(3,4,1284144757),(3,5,1284149733);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_custom`
--

DROP TABLE IF EXISTS `menu_custom`;
CREATE TABLE `menu_custom` (
  `menu_name` varchar(32) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` text,
  PRIMARY KEY  (`menu_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_custom`
--

LOCK TABLES `menu_custom` WRITE;
/*!40000 ALTER TABLE `menu_custom` DISABLE KEYS */;
INSERT INTO `menu_custom` VALUES ('navigation','Navigation','The navigation menu is provided by Drupal and is the main interactive menu for any site. It is usually the only menu that contains personalized links for authenticated users, and is often not even visible to anonymous users.'),('primary-links','Primary links','Primary links are often used at the theme layer to show the major sections of a site. A typical representation for primary links would be tabs along the top.'),('secondary-links','Secondary links','Secondary links are often used for pages like legal notices, contact details, and other secondary navigation items that play a lesser role than primary links'),('devel','Development','Development links.');
/*!40000 ALTER TABLE `menu_custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_links`
--

DROP TABLE IF EXISTS `menu_links`;
CREATE TABLE `menu_links` (
  `menu_name` varchar(32) NOT NULL default '',
  `mlid` int(10) unsigned NOT NULL auto_increment,
  `plid` int(10) unsigned NOT NULL default '0',
  `link_path` varchar(255) NOT NULL default '',
  `router_path` varchar(255) NOT NULL default '',
  `link_title` varchar(255) NOT NULL default '',
  `options` text,
  `module` varchar(255) NOT NULL default 'system',
  `hidden` smallint(6) NOT NULL default '0',
  `external` smallint(6) NOT NULL default '0',
  `has_children` smallint(6) NOT NULL default '0',
  `expanded` smallint(6) NOT NULL default '0',
  `weight` int(11) NOT NULL default '0',
  `depth` smallint(6) NOT NULL default '0',
  `customized` smallint(6) NOT NULL default '0',
  `p1` int(10) unsigned NOT NULL default '0',
  `p2` int(10) unsigned NOT NULL default '0',
  `p3` int(10) unsigned NOT NULL default '0',
  `p4` int(10) unsigned NOT NULL default '0',
  `p5` int(10) unsigned NOT NULL default '0',
  `p6` int(10) unsigned NOT NULL default '0',
  `p7` int(10) unsigned NOT NULL default '0',
  `p8` int(10) unsigned NOT NULL default '0',
  `p9` int(10) unsigned NOT NULL default '0',
  `updated` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`mlid`),
  KEY `path_menu` (`link_path`(128),`menu_name`),
  KEY `menu_plid_expand_child` (`menu_name`,`plid`,`expanded`,`has_children`),
  KEY `menu_parents` (`menu_name`,`p1`,`p2`,`p3`,`p4`,`p5`,`p6`,`p7`,`p8`,`p9`),
  KEY `router_path` (`router_path`(128))
) ENGINE=MyISAM AUTO_INCREMENT=408 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_links`
--

LOCK TABLES `menu_links` WRITE;
/*!40000 ALTER TABLE `menu_links` DISABLE KEYS */;
INSERT INTO `menu_links` VALUES ('navigation',1,0,'batch','batch','','a:0:{}','system',-1,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0),('navigation',2,0,'admin','admin','Administer','a:0:{}','system',0,0,1,0,9,1,0,2,0,0,0,0,0,0,0,0,0),('navigation',3,0,'node','node','Content','a:0:{}','system',-1,0,0,0,0,1,0,3,0,0,0,0,0,0,0,0,0),('navigation',4,0,'logout','logout','Log out','a:0:{}','system',0,0,0,0,10,1,0,4,0,0,0,0,0,0,0,0,0),('navigation',5,0,'rss.xml','rss.xml','RSS feed','a:0:{}','system',-1,0,0,0,0,1,0,5,0,0,0,0,0,0,0,0,0),('navigation',6,0,'user','user','User account','a:0:{}','system',-1,0,0,0,0,1,0,6,0,0,0,0,0,0,0,0,0),('navigation',7,0,'node/%','node/%','','a:0:{}','system',-1,0,0,0,0,1,0,7,0,0,0,0,0,0,0,0,0),('navigation',8,2,'admin/compact','admin/compact','Compact mode','a:0:{}','system',-1,0,0,0,0,2,0,2,8,0,0,0,0,0,0,0,0),('navigation',9,0,'filter/tips','filter/tips','Compose tips','a:0:{}','system',1,0,0,0,0,1,0,9,0,0,0,0,0,0,0,0,0),('navigation',10,2,'admin/content','admin/content','Content management','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:27:\"Manage your site\'s content.\";}}','system',0,0,1,0,-10,2,0,2,10,0,0,0,0,0,0,0,0),('navigation',11,0,'node/add','node/add','Create content','a:0:{}','system',0,0,1,0,1,1,0,11,0,0,0,0,0,0,0,0,0),('navigation',12,0,'comment/delete','comment/delete','Delete comment','a:0:{}','system',-1,0,0,0,0,1,0,12,0,0,0,0,0,0,0,0,0),('navigation',13,0,'comment/edit','comment/edit','Edit comment','a:0:{}','system',-1,0,0,0,0,1,0,13,0,0,0,0,0,0,0,0,0),('navigation',14,0,'system/files','system/files','File download','a:0:{}','system',-1,0,0,0,0,1,0,14,0,0,0,0,0,0,0,0,0),('navigation',15,2,'admin/help','admin/help','Help','a:0:{}','system',0,0,0,0,9,2,0,2,15,0,0,0,0,0,0,0,0),('navigation',16,2,'admin/reports','admin/reports','Reports','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:59:\"View reports from system logs and other status information.\";}}','system',0,0,1,0,5,2,0,2,16,0,0,0,0,0,0,0,0),('navigation',17,2,'admin/build','admin/build','Site building','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:38:\"Control how your site looks and feels.\";}}','system',0,0,1,0,-10,2,0,2,17,0,0,0,0,0,0,0,0),('navigation',18,2,'admin/settings','admin/settings','Site configuration','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:40:\"Adjust basic site configuration options.\";}}','system',0,0,1,0,-5,2,0,2,18,0,0,0,0,0,0,0,0),('navigation',19,0,'user/autocomplete','user/autocomplete','User autocomplete','a:0:{}','system',-1,0,0,0,0,1,0,19,0,0,0,0,0,0,0,0,0),('navigation',20,2,'admin/user','admin/user','User management','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:61:\"Manage your site\'s users, groups and access to site features.\";}}','system',0,0,1,0,0,2,0,2,20,0,0,0,0,0,0,0,0),('navigation',21,0,'user/%','user/%','My account','a:0:{}','system',0,0,0,0,0,1,0,21,0,0,0,0,0,0,0,0,0),('navigation',22,20,'admin/user/rules','admin/user/rules','Access rules','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:80:\"List and create rules to disallow usernames, e-mail addresses, and IP addresses.\";}}','system',0,0,0,0,0,3,0,2,20,22,0,0,0,0,0,0,0),('navigation',23,18,'admin/settings/actions','admin/settings/actions','Actions','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:41:\"Manage the actions defined for your site.\";}}','system',0,0,0,0,0,3,0,2,18,23,0,0,0,0,0,0,0),('navigation',24,18,'admin/settings/admin','admin/settings/admin','Administration theme','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:55:\"Settings for how your administrative pages should look.\";}}','system',0,0,0,0,0,3,0,2,18,24,0,0,0,0,0,0,0),('navigation',25,17,'admin/build/block','admin/build/block','Blocks','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:79:\"Configure what block content appears in your site\'s sidebars and other regions.\";}}','system',0,0,0,0,0,3,0,2,17,25,0,0,0,0,0,0,0),('navigation',26,18,'admin/settings/clean-urls','admin/settings/clean-urls','Clean URLs','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:43:\"Enable or disable clean URLs for your site.\";}}','system',0,0,0,0,0,3,0,2,18,26,0,0,0,0,0,0,0),('navigation',27,10,'admin/content/comment','admin/content/comment','Comments','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:61:\"List and edit site comments and the comment moderation queue.\";}}','system',0,0,0,0,0,3,0,2,10,27,0,0,0,0,0,0,0),('navigation',28,10,'admin/content/node','admin/content/node','Content','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:43:\"View, edit, and delete your site\'s content.\";}}','system',0,0,0,0,0,3,0,2,10,28,0,0,0,0,0,0,0),('navigation',29,10,'admin/content/types','admin/content/types','Content types','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:82:\"Manage posts by content type, including default status, front page promotion, etc.\";}}','system',0,0,0,0,0,3,0,2,10,29,0,0,0,0,0,0,0),('navigation',30,18,'admin/settings/date-time','admin/settings/date-time','Date and time','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:89:\"Settings for how Drupal displays date and time, as well as the system\'s default timezone.\";}}','system',0,0,0,0,0,3,0,2,18,30,0,0,0,0,0,0,0),('navigation',31,0,'node/%/delete','node/%/delete','Delete','a:0:{}','system',-1,0,0,0,1,1,0,31,0,0,0,0,0,0,0,0,0),('navigation',32,21,'user/%/delete','user/%/delete','Delete','a:0:{}','system',-1,0,0,0,0,2,0,21,32,0,0,0,0,0,0,0,0),('navigation',33,18,'admin/settings/error-reporting','admin/settings/error-reporting','Error reporting','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:93:\"Control how Drupal deals with errors including 403/404 errors as well as PHP error reporting.\";}}','system',0,0,0,0,0,3,0,2,18,33,0,0,0,0,0,0,0),('navigation',34,18,'admin/settings/file-system','admin/settings/file-system','File system','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:68:\"Tell Drupal where to store uploaded files and how they are accessed.\";}}','system',0,0,0,0,0,3,0,2,18,34,0,0,0,0,0,0,0),('navigation',35,18,'admin/settings/image-toolkit','admin/settings/image-toolkit','Image toolkit','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:74:\"Choose which image toolkit to use if you have installed optional toolkits.\";}}','system',0,0,0,0,0,3,0,2,18,35,0,0,0,0,0,0,0),('navigation',36,18,'admin/settings/filters','admin/settings/filters','Input formats','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:127:\"Configure how content input by users is filtered, including allowed HTML tags. Also allows enabling of module-provided filters.\";}}','system',0,0,0,0,0,3,0,2,18,36,0,0,0,0,0,0,0),('navigation',37,18,'admin/settings/logging','admin/settings/logging','Logging and alerts','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:156:\"Settings for logging and alerts modules. Various modules can route Drupal\'s system events to different destination, such as syslog, database, email, ...etc.\";}}','system',0,0,1,0,0,3,0,2,18,37,0,0,0,0,0,0,0),('navigation',38,17,'admin/build/menu','admin/build/menu','Menus','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:116:\"Control your site\'s navigation menu, primary links and secondary links. as well as rename and reorganize menu items.\";}}','system',0,0,1,0,0,3,0,2,17,38,0,0,0,0,0,0,0),('navigation',39,17,'admin/build/modules','admin/build/modules','Modules','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:47:\"Enable or disable add-on modules for your site.\";}}','system',0,0,0,0,0,3,0,2,17,39,0,0,0,0,0,0,0),('navigation',40,18,'admin/settings/performance','admin/settings/performance','Performance','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:101:\"Enable or disable page caching for anonymous users and set CSS and JS bandwidth optimization options.\";}}','system',0,0,0,0,0,3,0,2,18,40,0,0,0,0,0,0,0),('navigation',41,20,'admin/user/permissions','admin/user/permissions','Permissions','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:64:\"Determine access to features by selecting permissions for roles.\";}}','system',0,0,0,0,0,3,0,2,20,41,0,0,0,0,0,0,0),('navigation',42,10,'admin/content/node-settings','admin/content/node-settings','Post settings','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:126:\"Control posting behavior, such as teaser length, requiring previews before posting, and the number of posts on the front page.\";}}','system',0,0,0,0,0,3,0,2,10,42,0,0,0,0,0,0,0),('navigation',43,10,'admin/content/rss-publishing','admin/content/rss-publishing','RSS publishing','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:92:\"Configure the number of items per feed and whether feeds should be titles/teasers/full-text.\";}}','system',0,0,0,0,0,3,0,2,10,43,0,0,0,0,0,0,0),('navigation',44,0,'comment/reply/%','comment/reply/%','Reply to comment','a:0:{}','system',-1,0,0,0,0,1,0,44,0,0,0,0,0,0,0,0,0),('navigation',45,20,'admin/user/roles','admin/user/roles','Roles','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:30:\"List, edit, or add user roles.\";}}','system',0,0,0,0,0,3,0,2,20,45,0,0,0,0,0,0,0),('navigation',46,18,'admin/settings/site-information','admin/settings/site-information','Site information','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:107:\"Change basic site information, such as the site name, slogan, e-mail address, mission, front page and more.\";}}','system',0,0,0,0,0,3,0,2,18,46,0,0,0,0,0,0,0),('navigation',47,18,'admin/settings/site-maintenance','admin/settings/site-maintenance','Site maintenance','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:63:\"Take the site off-line for maintenance or bring it back online.\";}}','system',0,0,0,0,0,3,0,2,18,47,0,0,0,0,0,0,0),('navigation',48,16,'admin/reports/status','admin/reports/status','Status report','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:74:\"Get a status report about your site\'s operation and any detected problems.\";}}','system',0,0,0,0,10,3,0,2,16,48,0,0,0,0,0,0,0),('navigation',49,17,'admin/build/themes','admin/build/themes','Themes','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:57:\"Change which theme your site uses or allows users to set.\";}}','system',0,0,0,0,0,3,0,2,17,49,0,0,0,0,0,0,0),('navigation',50,20,'admin/user/settings','admin/user/settings','User settings','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:101:\"Configure default behavior of users, including registration requirements, e-mails, and user pictures.\";}}','system',0,0,0,0,0,3,0,2,20,50,0,0,0,0,0,0,0),('navigation',51,20,'admin/user/user','admin/user/user','Users','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:26:\"List, add, and edit users.\";}}','system',0,0,0,0,0,3,0,2,20,51,0,0,0,0,0,0,0),('navigation',52,15,'admin/help/block','admin/help/block','block','a:0:{}','system',-1,0,0,0,0,3,0,2,15,52,0,0,0,0,0,0,0),('navigation',53,15,'admin/help/color','admin/help/color','color','a:0:{}','system',-1,0,0,0,0,3,0,2,15,53,0,0,0,0,0,0,0),('navigation',54,15,'admin/help/comment','admin/help/comment','comment','a:0:{}','system',-1,0,0,0,0,3,0,2,15,54,0,0,0,0,0,0,0),('navigation',55,15,'admin/help/filter','admin/help/filter','filter','a:0:{}','system',-1,0,0,0,0,3,0,2,15,55,0,0,0,0,0,0,0),('navigation',56,15,'admin/help/help','admin/help/help','help','a:0:{}','system',-1,0,0,0,0,3,0,2,15,56,0,0,0,0,0,0,0),('navigation',57,15,'admin/help/menu','admin/help/menu','menu','a:0:{}','system',-1,0,0,0,0,3,0,2,15,57,0,0,0,0,0,0,0),('navigation',58,15,'admin/help/node','admin/help/node','node','a:0:{}','system',-1,0,0,0,0,3,0,2,15,58,0,0,0,0,0,0,0),('navigation',59,15,'admin/help/system','admin/help/system','system','a:0:{}','system',-1,0,0,0,0,3,0,2,15,59,0,0,0,0,0,0,0),('navigation',60,15,'admin/help/user','admin/help/user','user','a:0:{}','system',-1,0,0,0,0,3,0,2,15,60,0,0,0,0,0,0,0),('navigation',61,36,'admin/settings/filters/%','admin/settings/filters/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,18,36,61,0,0,0,0,0,0),('navigation',62,26,'admin/settings/clean-urls/check','admin/settings/clean-urls/check','Clean URL check','a:0:{}','system',-1,0,0,0,0,4,0,2,18,26,62,0,0,0,0,0,0),('navigation',63,23,'admin/settings/actions/configure','admin/settings/actions/configure','Configure an advanced action','a:0:{}','system',-1,0,0,0,0,4,0,2,18,23,63,0,0,0,0,0,0),('navigation',64,25,'admin/build/block/configure','admin/build/block/configure','Configure block','a:0:{}','system',-1,0,0,0,0,4,0,2,17,25,64,0,0,0,0,0,0),('navigation',65,17,'admin/build/menu-customize/%','admin/build/menu-customize/%','Customize menu','a:0:{}','system',-1,0,0,0,0,3,0,2,17,65,0,0,0,0,0,0,0),('navigation',66,30,'admin/settings/date-time/lookup','admin/settings/date-time/lookup','Date and time lookup','a:0:{}','system',-1,0,0,0,0,4,0,2,18,30,66,0,0,0,0,0,0),('navigation',67,25,'admin/build/block/delete','admin/build/block/delete','Delete block','a:0:{}','system',-1,0,0,0,0,4,0,2,17,25,67,0,0,0,0,0,0),('navigation',68,36,'admin/settings/filters/delete','admin/settings/filters/delete','Delete input format','a:0:{}','system',-1,0,0,0,0,4,0,2,18,36,68,0,0,0,0,0,0),('navigation',69,22,'admin/user/rules/delete','admin/user/rules/delete','Delete rule','a:0:{}','system',-1,0,0,0,0,4,0,2,20,22,69,0,0,0,0,0,0),('navigation',70,45,'admin/user/roles/edit','admin/user/roles/edit','Edit role','a:0:{}','system',-1,0,0,0,0,4,0,2,20,45,70,0,0,0,0,0,0),('navigation',71,22,'admin/user/rules/edit','admin/user/rules/edit','Edit rule','a:0:{}','system',-1,0,0,0,0,4,0,2,20,22,71,0,0,0,0,0,0),('navigation',72,48,'admin/reports/status/php','admin/reports/status/php','PHP','a:0:{}','system',-1,0,0,0,0,4,0,2,16,48,72,0,0,0,0,0,0),('navigation',73,42,'admin/content/node-settings/rebuild','admin/content/node-settings/rebuild','Rebuild permissions','a:0:{}','system',-1,0,0,0,0,4,0,2,10,42,73,0,0,0,0,0,0),('navigation',74,23,'admin/settings/actions/orphan','admin/settings/actions/orphan','Remove orphans','a:0:{}','system',-1,0,0,0,0,4,0,2,18,23,74,0,0,0,0,0,0),('navigation',75,48,'admin/reports/status/run-cron','admin/reports/status/run-cron','Run cron','a:1:{s:5:\"alter\";b:1;}','system',-1,0,0,0,0,4,0,2,16,48,75,0,0,0,0,0,0),('navigation',76,48,'admin/reports/status/sql','admin/reports/status/sql','SQL','a:0:{}','system',-1,0,0,0,0,4,0,2,16,48,76,0,0,0,0,0,0),('navigation',77,23,'admin/settings/actions/delete/%','admin/settings/actions/delete/%','Delete action','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:17:\"Delete an action.\";}}','system',-1,0,0,0,0,4,0,2,18,23,77,0,0,0,0,0,0),('navigation',78,0,'admin/build/menu-customize/%/delete','admin/build/menu-customize/%/delete','Delete menu','a:0:{}','system',-1,0,0,0,0,1,0,78,0,0,0,0,0,0,0,0,0),('navigation',79,25,'admin/build/block/list/js','admin/build/block/list/js','JavaScript List Form','a:0:{}','system',-1,0,0,0,0,4,0,2,17,25,79,0,0,0,0,0,0),('navigation',80,39,'admin/build/modules/list/confirm','admin/build/modules/list/confirm','List','a:0:{}','system',-1,0,0,0,0,4,0,2,17,39,80,0,0,0,0,0,0),('navigation',81,0,'user/reset/%/%/%','user/reset/%/%/%','Reset password','a:0:{}','system',-1,0,0,0,0,1,0,81,0,0,0,0,0,0,0,0,0),('navigation',82,39,'admin/build/modules/uninstall/confirm','admin/build/modules/uninstall/confirm','Uninstall','a:0:{}','system',-1,0,0,0,0,4,0,2,17,39,82,0,0,0,0,0,0),('navigation',83,0,'node/%/revisions/%/delete','node/%/revisions/%/delete','Delete earlier revision','a:0:{}','system',-1,0,0,0,0,1,0,83,0,0,0,0,0,0,0,0,0),('navigation',84,0,'node/%/revisions/%/revert','node/%/revisions/%/revert','Revert to earlier revision','a:0:{}','system',-1,0,0,0,0,1,0,84,0,0,0,0,0,0,0,0,0),('navigation',85,0,'node/%/revisions/%/view','node/%/revisions/%/view','Revisions','a:0:{}','system',-1,0,0,0,0,1,0,85,0,0,0,0,0,0,0,0,0),('navigation',86,38,'admin/build/menu/item/%/delete','admin/build/menu/item/%/delete','Delete menu item','a:0:{}','system',-1,0,0,0,0,4,0,2,17,38,86,0,0,0,0,0,0),('navigation',87,38,'admin/build/menu/item/%/edit','admin/build/menu/item/%/edit','Edit menu item','a:0:{}','system',-1,0,0,0,0,4,0,2,17,38,87,0,0,0,0,0,0),('navigation',88,38,'admin/build/menu/item/%/reset','admin/build/menu/item/%/reset','Reset menu item','a:0:{}','system',-1,0,0,0,0,4,0,2,17,38,88,0,0,0,0,0,0),('navigation',89,38,'admin/build/menu-customize/navigation','admin/build/menu-customize/%','Navigation','a:0:{}','menu',0,0,0,0,0,4,0,2,17,38,89,0,0,0,0,0,0),('navigation',90,38,'admin/build/menu-customize/primary-links','admin/build/menu-customize/%','Primary links','a:0:{}','menu',0,0,0,0,0,4,0,2,17,38,90,0,0,0,0,0,0),('navigation',91,38,'admin/build/menu-customize/secondary-links','admin/build/menu-customize/%','Secondary links','a:0:{}','menu',0,0,0,0,0,4,0,2,17,38,91,0,0,0,0,0,0),('navigation',92,0,'taxonomy/autocomplete','taxonomy/autocomplete','Autocomplete taxonomy','a:0:{}','system',-1,0,0,0,0,1,0,92,0,0,0,0,0,0,0,0,0),('navigation',93,16,'admin/reports/dblog','admin/reports/dblog','Recent log entries','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:43:\"View events that have recently been logged.\";}}','system',0,0,0,0,-1,3,0,2,16,93,0,0,0,0,0,0,0),('navigation',94,10,'admin/content/taxonomy','admin/content/taxonomy','Taxonomy','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:67:\"Manage tagging, categorization, and classification of your content.\";}}','system',0,0,0,0,0,3,0,2,10,94,0,0,0,0,0,0,0),('navigation',95,0,'taxonomy/term/%','taxonomy/term/%','Taxonomy term','a:0:{}','system',-1,0,0,0,0,1,0,95,0,0,0,0,0,0,0,0,0),('navigation',96,16,'admin/reports/access-denied','admin/reports/access-denied','Top \'access denied\' errors','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:35:\"View \'access denied\' errors (403s).\";}}','system',0,0,0,0,0,3,0,2,16,96,0,0,0,0,0,0,0),('navigation',97,16,'admin/reports/page-not-found','admin/reports/page-not-found','Top \'page not found\' errors','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:36:\"View \'page not found\' errors (404s).\";}}','system',0,0,0,0,0,3,0,2,16,97,0,0,0,0,0,0,0),('navigation',98,15,'admin/help/dblog','admin/help/dblog','dblog','a:0:{}','system',-1,0,0,0,0,3,0,2,15,98,0,0,0,0,0,0,0),('navigation',99,15,'admin/help/taxonomy','admin/help/taxonomy','taxonomy','a:0:{}','system',-1,0,0,0,0,3,0,2,15,99,0,0,0,0,0,0,0),('navigation',100,37,'admin/settings/logging/dblog','admin/settings/logging/dblog','Database logging','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:169:\"Settings for logging to the Drupal database logs. This is the most common method for small to medium sites on shared hosting. The logs are viewable from the admin pages.\";}}','system',0,0,0,0,0,4,0,2,18,37,100,0,0,0,0,0,0),('navigation',101,16,'admin/reports/event/%','admin/reports/event/%','Details','a:0:{}','system',-1,0,0,0,0,3,0,2,16,101,0,0,0,0,0,0,0),('navigation',102,94,'admin/content/taxonomy/%','admin/content/taxonomy/%','List terms','a:0:{}','system',-1,0,0,0,0,4,0,2,10,94,102,0,0,0,0,0,0),('navigation',103,94,'admin/content/taxonomy/edit/term','admin/content/taxonomy/edit/term','Edit term','a:0:{}','system',-1,0,0,0,0,4,0,2,10,94,103,0,0,0,0,0,0),('navigation',104,94,'admin/content/taxonomy/edit/vocabulary/%','admin/content/taxonomy/edit/vocabulary/%','Edit vocabulary','a:0:{}','system',-1,0,0,0,0,4,0,2,10,94,104,0,0,0,0,0,0),('navigation',105,16,'admin/reports/updates','admin/reports/updates','Available updates','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:82:\"Get a status report about available updates for your installed modules and themes.\";}}','system',0,0,0,0,10,3,0,2,16,105,0,0,0,0,0,0,0),('navigation',106,11,'node/add/page','node/add/page','Page','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:296:\"A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.\";}}','system',0,0,0,0,0,2,0,11,106,0,0,0,0,0,0,0,0),('navigation',107,11,'node/add/story','node/add/story','Story','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:392:\"A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site\'s initial home page, and provides the ability to post comments.\";}}','system',0,0,0,0,0,2,0,11,107,0,0,0,0,0,0,0,0),('navigation',108,15,'admin/help/update','admin/help/update','update','a:0:{}','system',-1,0,0,0,0,3,0,2,15,108,0,0,0,0,0,0,0),('navigation',109,105,'admin/reports/updates/check','admin/reports/updates/check','Manual update check','a:0:{}','system',-1,0,0,0,0,4,0,2,16,105,109,0,0,0,0,0,0),('navigation',110,10,'admin/content/node-type/page','admin/content/node-type/page','Page','a:0:{}','system',-1,0,0,0,0,3,0,2,10,110,0,0,0,0,0,0,0),('navigation',111,10,'admin/content/node-type/story','admin/content/node-type/story','Story','a:0:{}','system',-1,0,0,0,0,3,0,2,10,111,0,0,0,0,0,0,0),('navigation',112,0,'admin/content/node-type/page/delete','admin/content/node-type/page/delete','Delete','a:0:{}','system',-1,0,0,0,0,1,0,112,0,0,0,0,0,0,0,0,0),('navigation',113,0,'admin/content/node-type/story/delete','admin/content/node-type/story/delete','Delete','a:0:{}','system',-1,0,0,0,0,1,0,113,0,0,0,0,0,0,0,0,0),('navigation',114,0,'admin_menu/toggle-modules','admin_menu/toggle-modules','','a:0:{}','system',-1,0,0,0,0,1,0,114,0,0,0,0,0,0,0,0,0),('navigation',115,0,'admin_menu/flush-cache','admin_menu/flush-cache','','a:0:{}','system',-1,0,0,0,0,1,0,115,0,0,0,0,0,0,0,0,0),('navigation',116,18,'admin/settings/admin_menu','admin/settings/admin_menu','Administration menu','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:36:\"Adjust administration menu settings.\";}}','system',0,0,0,0,0,3,0,2,18,116,0,0,0,0,0,0,0),('navigation',117,15,'admin/help/admin_menu','admin/help/admin_menu','admin_menu','a:0:{}','system',-1,0,0,0,0,3,0,2,15,117,0,0,0,0,0,0,0),('admin_menu',118,0,'<front>','','<img class=\"admin-menu-icon\" src=\"/misc/favicon.ico\" width=\"16\" height=\"16\" alt=\"Home\" />','a:3:{s:11:\"extra class\";s:15:\"admin-menu-icon\";s:4:\"html\";b:1;s:5:\"alter\";b:1;}','admin_menu',0,1,1,0,-100,1,0,118,0,0,0,0,0,0,0,0,0),('admin_menu',119,0,'logout','logout','Log out @username','a:3:{s:11:\"extra class\";s:35:\"admin-menu-action admin-menu-logout\";s:1:\"t\";a:0:{}s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,-100,1,0,119,0,0,0,0,0,0,0,0,0),('admin_menu',120,0,'user','user','icon_users','a:3:{s:11:\"extra class\";s:50:\"admin-menu-action admin-menu-icon admin-menu-users\";s:4:\"html\";b:1;s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-90,1,0,120,0,0,0,0,0,0,0,0,0),('admin_menu',121,0,'admin/content','admin/content','Content management','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,-10,1,0,121,0,0,0,0,0,0,0,0,0),('admin_menu',122,0,'admin/help','admin/help','Help','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,9,1,0,122,0,0,0,0,0,0,0,0,0),('admin_menu',123,0,'admin/reports','admin/reports','Reports','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,5,1,0,123,0,0,0,0,0,0,0,0,0),('admin_menu',124,0,'admin/build','admin/build','Site building','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,-10,1,0,124,0,0,0,0,0,0,0,0,0),('admin_menu',125,0,'admin/settings','admin/settings','Site configuration','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,-5,1,0,125,0,0,0,0,0,0,0,0,0),('admin_menu',126,0,'admin/user','admin/user','User management','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,1,0,126,0,0,0,0,0,0,0,0,0),('admin_menu',127,126,'admin/user/rules','admin/user/rules','Access rules','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,126,127,0,0,0,0,0,0,0,0),('admin_menu',128,125,'admin/settings/actions','admin/settings/actions','Actions','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,125,128,0,0,0,0,0,0,0,0),('admin_menu',129,125,'admin/settings/admin_menu','admin/settings/admin_menu','Administration menu','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,125,129,0,0,0,0,0,0,0,0),('admin_menu',130,125,'admin/settings/admin','admin/settings/admin','Administration theme','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,125,130,0,0,0,0,0,0,0,0),('admin_menu',131,123,'admin/reports/updates','admin/reports/updates','Available updates','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,10,2,0,123,131,0,0,0,0,0,0,0,0),('admin_menu',132,124,'admin/build/block','admin/build/block','Blocks','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,124,132,0,0,0,0,0,0,0,0),('admin_menu',133,125,'admin/settings/clean-urls','admin/settings/clean-urls','Clean URLs','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,125,133,0,0,0,0,0,0,0,0),('admin_menu',134,121,'admin/content/comment','admin/content/comment','Comments','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,121,134,0,0,0,0,0,0,0,0),('admin_menu',135,121,'admin/content/node','admin/content/node','Content','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,121,135,0,0,0,0,0,0,0,0),('admin_menu',136,121,'admin/content/types','admin/content/types','Content types','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,121,136,0,0,0,0,0,0,0,0),('admin_menu',137,125,'admin/settings/date-time','admin/settings/date-time','Date and time','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,125,137,0,0,0,0,0,0,0,0),('admin_menu',138,125,'admin/settings/error-reporting','admin/settings/error-reporting','Error reporting','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,125,138,0,0,0,0,0,0,0,0),('admin_menu',139,125,'admin/settings/file-system','admin/settings/file-system','File system','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,125,139,0,0,0,0,0,0,0,0),('admin_menu',140,125,'admin/settings/image-toolkit','admin/settings/image-toolkit','Image toolkit','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,125,140,0,0,0,0,0,0,0,0),('admin_menu',141,125,'admin/settings/filters','admin/settings/filters','Input formats','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,125,141,0,0,0,0,0,0,0,0),('admin_menu',142,125,'admin/settings/logging','admin/settings/logging','Logging and alerts','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,125,142,0,0,0,0,0,0,0,0),('admin_menu',143,124,'admin/build/menu','admin/build/menu','Menus','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,124,143,0,0,0,0,0,0,0,0),('admin_menu',144,124,'admin/build/modules','admin/build/modules','Modules','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,124,144,0,0,0,0,0,0,0,0),('admin_menu',145,125,'admin/settings/performance','admin/settings/performance','Performance','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,125,145,0,0,0,0,0,0,0,0),('admin_menu',146,126,'admin/user/permissions','admin/user/permissions','Permissions','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,126,146,0,0,0,0,0,0,0,0),('admin_menu',147,121,'admin/content/node-settings','admin/content/node-settings','Post settings','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,121,147,0,0,0,0,0,0,0,0),('admin_menu',148,121,'admin/content/rss-publishing','admin/content/rss-publishing','RSS publishing','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,121,148,0,0,0,0,0,0,0,0),('admin_menu',149,123,'admin/reports/dblog','admin/reports/dblog','Recent log entries','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-1,2,0,123,149,0,0,0,0,0,0,0,0),('admin_menu',150,126,'admin/user/roles','admin/user/roles','Roles','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,126,150,0,0,0,0,0,0,0,0),('admin_menu',151,125,'admin/settings/site-information','admin/settings/site-information','Site information','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,125,151,0,0,0,0,0,0,0,0),('admin_menu',152,125,'admin/settings/site-maintenance','admin/settings/site-maintenance','Site maintenance','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,125,152,0,0,0,0,0,0,0,0),('admin_menu',153,123,'admin/reports/status','admin/reports/status','Status report','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,10,2,0,123,153,0,0,0,0,0,0,0,0),('admin_menu',154,121,'admin/content/taxonomy','admin/content/taxonomy','Taxonomy','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,121,154,0,0,0,0,0,0,0,0),('admin_menu',155,124,'admin/build/themes','admin/build/themes','Themes','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,124,155,0,0,0,0,0,0,0,0),('admin_menu',156,123,'admin/reports/access-denied','admin/reports/access-denied','Top \'access denied\' errors','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,123,156,0,0,0,0,0,0,0,0),('admin_menu',157,123,'admin/reports/page-not-found','admin/reports/page-not-found','Top \'page not found\' errors','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,123,157,0,0,0,0,0,0,0,0),('admin_menu',158,126,'admin/user/settings','admin/user/settings','User settings','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,126,158,0,0,0,0,0,0,0,0),('admin_menu',159,126,'admin/user/user','admin/user/user','Users','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,126,159,0,0,0,0,0,0,0,0),('admin_menu',160,132,'admin/build/block/add','admin/build/block/add','Add block','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,124,132,160,0,0,0,0,0,0,0),('admin_menu',161,136,'admin/content/types/add','admin/content/types/add','Add content type','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,121,136,161,0,0,0,0,0,0,0),('admin_menu',162,141,'admin/settings/filters/add','admin/settings/filters/add','Add input format','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,1,3,0,125,141,162,0,0,0,0,0,0,0),('admin_menu',163,143,'admin/build/menu/add','admin/build/menu/add','Add menu','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,124,143,163,0,0,0,0,0,0,0),('admin_menu',164,127,'admin/user/rules/add','admin/user/rules/add','Add rule','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,126,127,164,0,0,0,0,0,0,0),('admin_menu',165,159,'admin/user/user/create','admin/user/user/create','Add user','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,126,159,165,0,0,0,0,0,0,0),('admin_menu',166,134,'admin/content/comment/approval','admin/content/comment/approval','Approval queue','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,121,134,166,0,0,0,0,0,0,0),('admin_menu',167,127,'admin/user/rules/check','admin/user/rules/check','Check rules','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,126,127,167,0,0,0,0,0,0,0),('admin_menu',168,155,'admin/build/themes/settings','admin/build/themes/settings','Configure','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,3,0,124,155,168,0,0,0,0,0,0,0),('admin_menu',169,142,'admin/settings/logging/dblog','admin/settings/logging/dblog','Database logging','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,125,142,169,0,0,0,0,0,0,0),('admin_menu',170,132,'admin/build/block/list','admin/build/block/list','List','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,-10,3,0,124,132,170,0,0,0,0,0,0,0),('admin_menu',171,135,'admin/content/node/overview','admin/content/node/overview','List','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,3,0,121,135,171,0,0,0,0,0,0,0),('admin_menu',172,154,'admin/content/taxonomy/list','admin/content/taxonomy/list','List','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,3,0,121,154,172,0,0,0,0,0,0,0),('admin_menu',173,136,'admin/content/types/list','admin/content/types/list','List','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,3,0,121,136,173,0,0,0,0,0,0,0),('admin_menu',174,127,'admin/user/rules/list','admin/user/rules/list','List','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,3,0,126,127,174,0,0,0,0,0,0,0),('admin_menu',175,159,'admin/user/user/list','admin/user/user/list','List','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,3,0,126,159,175,0,0,0,0,0,0,0),('admin_menu',176,155,'admin/build/themes/select','admin/build/themes/select','List','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-1,3,0,124,155,176,0,0,0,0,0,0,0),('admin_menu',177,144,'admin/build/modules/list','admin/build/modules/list','List','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,124,144,177,0,0,0,0,0,0,0),('admin_menu',178,131,'admin/reports/updates/list','admin/reports/updates/list','List','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,123,131,178,0,0,0,0,0,0,0),('admin_menu',179,141,'admin/settings/filters/list','admin/settings/filters/list','List','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,125,141,179,0,0,0,0,0,0,0),('admin_menu',180,143,'admin/build/menu/list','admin/build/menu/list','List menus','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,3,0,124,143,180,0,0,0,0,0,0,0),('admin_menu',181,128,'admin/settings/actions/manage','admin/settings/actions/manage','Manage actions','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-2,3,0,125,128,181,0,0,0,0,0,0,0),('admin_menu',182,134,'admin/content/comment/new','admin/content/comment/new','Published comments','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,3,0,121,134,182,0,0,0,0,0,0,0),('admin_menu',183,143,'admin/build/menu/settings','admin/build/menu/settings','Settings','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,5,3,0,124,143,183,0,0,0,0,0,0,0),('admin_menu',184,131,'admin/reports/updates/settings','admin/reports/updates/settings','Settings','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,123,131,184,0,0,0,0,0,0,0),('admin_menu',185,144,'admin/build/modules/uninstall','admin/build/modules/uninstall','Uninstall','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,124,144,185,0,0,0,0,0,0,0),('admin_menu',186,170,'admin/build/block/list/bluemarine','admin/build/block/list/bluemarine','Bluemarine','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,132,170,186,0,0,0,0,0,0),('admin_menu',187,168,'admin/build/themes/settings/bluemarine','admin/build/themes/settings/bluemarine','Bluemarine','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,155,168,187,0,0,0,0,0,0),('admin_menu',188,170,'admin/build/block/list/chameleon','admin/build/block/list/chameleon','Chameleon','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,132,170,188,0,0,0,0,0,0),('admin_menu',189,168,'admin/build/themes/settings/chameleon','admin/build/themes/settings/chameleon','Chameleon','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,155,168,189,0,0,0,0,0,0),('admin_menu',190,170,'admin/build/block/list/garland','admin/build/block/list/garland','Garland','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,4,0,124,132,170,190,0,0,0,0,0,0),('admin_menu',191,168,'admin/build/themes/settings/garland','admin/build/themes/settings/garland','Garland','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,155,168,191,0,0,0,0,0,0),('admin_menu',192,168,'admin/build/themes/settings/global','admin/build/themes/settings/global','Global settings','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-1,4,0,124,155,168,192,0,0,0,0,0,0),('admin_menu',193,170,'admin/build/block/list/marvin','admin/build/block/list/marvin','Marvin','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,132,170,193,0,0,0,0,0,0),('admin_menu',194,168,'admin/build/themes/settings/marvin','admin/build/themes/settings/marvin','Marvin','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,155,168,194,0,0,0,0,0,0),('admin_menu',195,170,'admin/build/block/list/minnelli','admin/build/block/list/minnelli','Minnelli','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,132,170,195,0,0,0,0,0,0),('admin_menu',196,168,'admin/build/themes/settings/minnelli','admin/build/themes/settings/minnelli','Minnelli','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,155,168,196,0,0,0,0,0,0),('admin_menu',197,170,'admin/build/block/list/precision','admin/build/block/list/precision','Precision','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,132,170,197,0,0,0,0,0,0),('admin_menu',198,168,'admin/build/themes/settings/precision','admin/build/themes/settings/precision','Precision','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,155,168,198,0,0,0,0,0,0),('admin_menu',199,170,'admin/build/block/list/pushbutton','admin/build/block/list/pushbutton','Pushbutton','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,132,170,199,0,0,0,0,0,0),('admin_menu',200,168,'admin/build/themes/settings/pushbutton','admin/build/themes/settings/pushbutton','Pushbutton','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,155,168,200,0,0,0,0,0,0),('admin_menu',201,154,'admin/content/taxonomy/add/vocabulary','admin/content/taxonomy/add/vocabulary','Add vocabulary','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,121,154,201,0,0,0,0,0,0,0),('admin_menu',202,118,'admin/reports/status/run-cron','admin/reports/status/run-cron','Run cron','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,50,2,0,118,202,0,0,0,0,0,0,0,0),('admin_menu',325,0,'admin/advanced_help','admin/advanced_help','Advanced help','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,9,1,0,325,0,0,0,0,0,0,0,0,0),('admin_menu',204,125,'admin/by-module','admin/by-module','By module','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,2,0,125,204,0,0,0,0,0,0,0,0),('admin_menu',205,118,'http://drupal.org','','Drupal.org','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,1,1,0,100,2,0,118,205,0,0,0,0,0,0,0,0),('admin_menu',206,205,'http://drupal.org/project/issues/drupal','','Drupal issue queue','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,1,0,0,-10,3,0,118,205,206,0,0,0,0,0,0,0),('admin_menu',207,205,'http://drupal.org/project/issues/admin_menu','','Administration menu issue queue','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,1,0,0,0,3,0,118,205,207,0,0,0,0,0,0,0),('admin_menu',208,205,'http://drupal.org/project/issues/adminrole','','Admin Role issue queue','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,1,0,0,0,3,0,118,205,208,0,0,0,0,0,0,0),('admin_menu',209,121,'node/add','node/add','Create content','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,121,209,0,0,0,0,0,0,0,0),('admin_menu',210,209,'node/add/page','node/add/page','Page','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,121,209,210,0,0,0,0,0,0,0),('admin_menu',211,209,'node/add/story','node/add/story','Story','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,121,209,211,0,0,0,0,0,0,0),('admin_menu',212,136,'admin/content/node-type/page','admin/content/node-type/page','Edit !content-type','a:2:{s:1:\"t\";a:1:{s:13:\"!content-type\";s:4:\"Page\";}s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,3,0,121,136,212,0,0,0,0,0,0,0),('admin_menu',213,136,'admin/content/node-type/story','admin/content/node-type/story','Edit !content-type','a:2:{s:1:\"t\";a:1:{s:13:\"!content-type\";s:5:\"Story\";}s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,3,0,121,136,213,0,0,0,0,0,0,0),('admin_menu',214,118,'admin_menu/flush-cache','admin_menu/flush-cache','Flush all caches','a:2:{s:5:\"alter\";b:1;s:5:\"query\";s:11:\"destination\";}','admin_menu',0,0,1,0,20,2,0,118,214,0,0,0,0,0,0,0,0),('admin_menu',215,214,'admin_menu/flush-cache/admin_menu','admin_menu/flush-cache','Administration menu','a:2:{s:5:\"alter\";b:1;s:5:\"query\";s:11:\"destination\";}','admin_menu',0,0,0,0,0,3,0,118,214,215,0,0,0,0,0,0,0),('admin_menu',216,214,'admin_menu/flush-cache/cache','admin_menu/flush-cache','Cache tables','a:2:{s:5:\"alter\";b:1;s:5:\"query\";s:11:\"destination\";}','admin_menu',0,0,0,0,0,3,0,118,214,216,0,0,0,0,0,0,0),('admin_menu',217,214,'admin_menu/flush-cache/menu','admin_menu/flush-cache','Menu','a:2:{s:5:\"alter\";b:1;s:5:\"query\";s:11:\"destination\";}','admin_menu',0,0,0,0,0,3,0,118,214,217,0,0,0,0,0,0,0),('admin_menu',218,214,'admin_menu/flush-cache/requisites','admin_menu/flush-cache','Page requisites','a:2:{s:5:\"alter\";b:1;s:5:\"query\";s:11:\"destination\";}','admin_menu',0,0,0,0,0,3,0,118,214,218,0,0,0,0,0,0,0),('admin_menu',219,214,'admin_menu/flush-cache/theme','admin_menu/flush-cache','Theme registry','a:2:{s:5:\"alter\";b:1;s:5:\"query\";s:11:\"destination\";}','admin_menu',0,0,0,0,0,3,0,118,214,219,0,0,0,0,0,0,0),('admin_menu',220,118,'admin_menu/toggle-modules','admin_menu/toggle-modules','Disable developer modules','a:2:{s:5:\"query\";s:11:\"destination\";s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,88,2,0,118,220,0,0,0,0,0,0,0,0),('devel',222,0,'admin/reports/status/run-cron','admin/reports/status/run-cron','Run cron','a:0:{}','devel',0,0,0,0,0,1,0,222,0,0,0,0,0,0,0,0,0),('devel',223,0,'admin/settings/devel','admin/settings','Devel settings','a:0:{}','devel',0,0,0,0,0,1,0,223,0,0,0,0,0,0,0,0,0),('navigation',224,0,'content/js_add_more','content/js_add_more','','a:0:{}','system',-1,0,0,0,0,1,0,224,0,0,0,0,0,0,0,0,0),('navigation',225,2,'admin/advanced_help','admin/advanced_help','Advanced help','a:0:{}','system',0,0,0,0,9,2,0,2,225,0,0,0,0,0,0,0,0),('navigation',226,0,'filefield/progress','filefield/progress','','a:0:{}','system',-1,0,0,0,0,1,0,226,0,0,0,0,0,0,0,0,0),('navigation',227,0,'panels/ajax','panels/ajax','','a:0:{}','system',-1,0,0,0,0,1,0,227,0,0,0,0,0,0,0,0,0),('devel',228,0,'devel/queries','devel/queries','Database queries','a:0:{}','system',0,0,1,0,0,1,0,228,0,0,0,0,0,0,0,0,0),('devel',229,0,'devel/source','devel/source','Display the PHP code of any file in your Drupal installation','a:0:{}','system',-1,0,0,0,0,1,0,229,0,0,0,0,0,0,0,0,0),('devel',230,0,'devel/php','devel/php','Execute PHP Code','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:21:\"Execute some PHP code\";}}','system',0,0,0,0,0,1,0,230,0,0,0,0,0,0,0,0,0),('devel',231,0,'devel/reference','devel/reference','Function reference','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:73:\"View a list of currently defined user functions with documentation links.\";}}','system',0,0,0,0,0,1,0,231,0,0,0,0,0,0,0,0,0),('devel',232,0,'devel/elements','devel/elements','Hook_elements()','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:51:\"View the active form/render elements for this site.\";}}','system',0,0,0,0,0,1,0,232,0,0,0,0,0,0,0,0,0),('navigation',233,0,'nodereference/autocomplete','nodereference/autocomplete','Nodereference autocomplete','a:0:{}','system',-1,0,0,0,0,1,0,233,0,0,0,0,0,0,0,0,0),('devel',234,0,'devel/phpinfo','devel/phpinfo','PHPinfo()','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:36:\"View your server\'s PHP configuration\";}}','system',0,0,0,0,0,1,0,234,0,0,0,0,0,0,0,0,0),('devel',235,0,'devel/reinstall','devel/reinstall','Reinstall modules','a:2:{s:10:\"attributes\";a:1:{s:5:\"title\";s:64:\"Run hook_uninstall() and then hook_install() for a given module.\";}s:5:\"alter\";b:1;}','system',0,0,0,0,0,1,0,235,0,0,0,0,0,0,0,0,0),('devel',236,0,'devel/session','devel/session','Session viewer','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:31:\"List the contents of $_SESSION.\";}}','system',0,0,0,0,0,1,0,236,0,0,0,0,0,0,0,0,0),('devel',237,0,'devel/switch','devel/switch','Switch user','a:0:{}','system',-1,0,0,0,0,1,0,237,0,0,0,0,0,0,0,0,0),('navigation',238,0,'user/timezone','user/timezone','User timezone','a:0:{}','system',-1,0,0,0,0,1,0,238,0,0,0,0,0,0,0,0,0),('navigation',239,0,'userreference/autocomplete','userreference/autocomplete','Userreference autocomplete','a:0:{}','system',-1,0,0,0,0,1,0,239,0,0,0,0,0,0,0,0,0),('devel',240,0,'devel/variable','devel/variable','Variable editor','a:2:{s:10:\"attributes\";a:1:{s:5:\"title\";s:31:\"Edit and delete site variables.\";}s:5:\"alter\";b:1;}','system',0,0,0,0,0,1,0,240,0,0,0,0,0,0,0,0,0),('navigation',241,0,'views/ajax','views/ajax','Views','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:31:\"Ajax callback for view loading.\";}}','system',-1,0,0,0,0,1,0,241,0,0,0,0,0,0,0,0,0),('navigation',242,0,'help/%/%','help/%/%','','a:0:{}','system',-1,0,0,0,0,1,0,242,0,0,0,0,0,0,0,0,0),('navigation',243,0,'ctools/autocomplete/node','ctools/autocomplete/node','','a:0:{}','system',-1,0,0,0,0,1,0,243,0,0,0,0,0,0,0,0,0),('navigation',244,17,'admin/build/bulkexport','admin/build/bulkexport','Bulk Exporter','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:57:\"Bulk-export multiple CTools-handled data objects to code.\";}}','system',0,0,0,0,0,3,0,2,17,244,0,0,0,0,0,0,0),('navigation',245,0,'search/advanced_help/%','search/advanced_help/%','','a:0:{}','system',0,0,0,0,0,1,0,245,0,0,0,0,0,0,0,0,0),('navigation',246,17,'admin/build/ctools-content','admin/build/ctools-content','Custom content panes','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:41:\"Add, edit or delete custom content panes.\";}}','system',0,0,0,0,0,3,0,2,17,246,0,0,0,0,0,0,0),('navigation',247,18,'admin/settings/devel','admin/settings/devel','Devel settings','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:164:\"Helper functions, pages, and blocks to assist Drupal developers. The devel blocks can be managed via the <a href=\"/admin/build/block\">block administration</a> page.\";}}','system',0,0,0,0,0,3,0,2,18,247,0,0,0,0,0,0,0),('devel',248,0,'devel/cache/clear','devel/cache/clear','Empty cache','a:2:{s:10:\"attributes\";a:1:{s:5:\"title\";s:100:\"Clear the CSS cache and all database cache tables which store page, node, theme and variable caches.\";}s:5:\"alter\";b:1;}','system',0,0,0,0,0,1,0,248,0,0,0,0,0,0,0,0,0),('devel',249,228,'devel/queries/empty','devel/queries/empty','Empty database queries','a:0:{}','system',0,0,0,0,0,2,0,228,249,0,0,0,0,0,0,0,0),('navigation',250,18,'admin/settings/imageapi','admin/settings/imageapi','ImageAPI','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:19:\"Configure ImageAPI.\";}}','system',0,0,0,0,0,3,0,2,18,250,0,0,0,0,0,0,0),('navigation',251,17,'admin/build/mini-panels','admin/build/mini-panels','Mini panels','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:94:\"Add, edit or delete mini panels, which can be used as blocks or content panes in other panels.\";}}','system',0,0,0,0,0,3,0,2,17,251,0,0,0,0,0,0,0),('navigation',252,17,'admin/build/pages','admin/build/pages','Pages','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:84:\"Add, edit and remove overridden system pages and user defined pages from the system.\";}}','system',0,0,0,0,0,3,0,2,17,252,0,0,0,0,0,0,0),('navigation',253,17,'admin/build/panels','admin/build/panels','Panels','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:49:\"Get a bird\'s eye view of items related to Panels.\";}}','system',0,0,0,0,0,3,0,2,17,253,0,0,0,0,0,0,0),('devel',254,0,'devel/menu/reset','devel/menu/reset','Rebuild menus','a:2:{s:10:\"attributes\";a:1:{s:5:\"title\";s:113:\"Rebuild menu based on hook_menu() and revert any custom changes. All menu items return to their default settings.\";}s:5:\"alter\";b:1;}','system',0,0,0,0,0,1,0,254,0,0,0,0,0,0,0,0,0),('navigation',255,0,'advanced_help/search/%','advanced_help/search/%','Search help','a:0:{}','system',0,0,0,0,0,1,0,255,0,0,0,0,0,0,0,0,0),('navigation',256,17,'admin/build/stylizer','admin/build/stylizer','Stylizer','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:36:\"Add, edit or delete stylizer styles.\";}}','system',0,0,0,0,0,3,0,2,17,256,0,0,0,0,0,0,0),('devel',257,0,'devel/theme/registry','devel/theme/registry','Theme registry','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:63:\"View a list of available theme functions across the whole site.\";}}','system',0,0,0,0,0,1,0,257,0,0,0,0,0,0,0,0,0),('navigation',258,15,'admin/help/content','admin/help/content','content','a:0:{}','system',-1,0,0,0,0,3,0,2,15,258,0,0,0,0,0,0,0),('navigation',259,15,'admin/help/date','admin/help/date','date','a:0:{}','system',-1,0,0,0,0,3,0,2,15,259,0,0,0,0,0,0,0),('navigation',260,15,'admin/help/devel','admin/help/devel','devel','a:0:{}','system',-1,0,0,0,0,3,0,2,15,260,0,0,0,0,0,0,0),('navigation',261,17,'admin/build/views','admin/build/views','Views','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:144:\"Views are customized lists of content on your system; they are highly configurable and give you control over how lists of content are presented.\";}}','system',0,0,0,0,0,3,0,2,17,261,0,0,0,0,0,0,0),('navigation',262,15,'admin/help/token','admin/help/token','token','a:0:{}','system',-1,0,0,0,0,3,0,2,15,262,0,0,0,0,0,0,0),('navigation',263,15,'admin/help/views_ui','admin/help/views_ui','views_ui','a:0:{}','system',-1,0,0,0,0,3,0,2,15,263,0,0,0,0,0,0,0),('navigation',264,244,'admin/build/bulkexport/results','admin/build/bulkexport/results','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,244,264,0,0,0,0,0,0),('navigation',265,0,'ctools/context/ajax/add','ctools/context/ajax/add','','a:0:{}','system',-1,0,0,0,0,1,0,265,0,0,0,0,0,0,0,0,0),('navigation',266,0,'ctools/context/ajax/delete','ctools/context/ajax/delete','','a:0:{}','system',-1,0,0,0,0,1,0,266,0,0,0,0,0,0,0,0,0),('navigation',267,0,'ctools/context/ajax/configure','ctools/context/ajax/configure','','a:0:{}','system',-1,0,0,0,0,1,0,267,0,0,0,0,0,0,0,0,0),('navigation',268,17,'admin/build/views1/convert','admin/build/views1/convert','Convert view','a:0:{}','system',-1,0,0,0,0,3,0,2,17,268,0,0,0,0,0,0,0),('navigation',269,17,'admin/build/views1/delete','admin/build/views1/delete','Delete view','a:0:{}','system',-1,0,0,0,0,3,0,2,17,269,0,0,0,0,0,0,0),('navigation',270,252,'admin/build/pages/argument','admin/build/pages/argument','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,252,270,0,0,0,0,0,0),('devel',271,240,'devel/variable/edit/%','devel/variable/edit/%','Variable editor','a:0:{}','system',-1,0,0,0,0,2,0,240,271,0,0,0,0,0,0,0,0),('navigation',272,0,'ctools/context/ajax/access/add','ctools/context/ajax/access/add','','a:0:{}','system',-1,0,0,0,0,1,0,272,0,0,0,0,0,0,0,0,0),('navigation',273,0,'ctools/context/ajax/access/delete','ctools/context/ajax/access/delete','','a:0:{}','system',-1,0,0,0,0,1,0,273,0,0,0,0,0,0,0,0,0),('navigation',274,0,'ctools/context/ajax/access/configure','ctools/context/ajax/access/configure','','a:0:{}','system',-1,0,0,0,0,1,0,274,0,0,0,0,0,0,0,0,0),('navigation',275,30,'admin/settings/date-time/formats/lookup','admin/settings/date-time/formats/lookup','Date and time lookup','a:0:{}','system',-1,0,0,0,0,4,0,2,18,30,275,0,0,0,0,0,0),('navigation',276,2,'admin/views/ajax/autocomplete/user','admin/views/ajax/autocomplete/user','','a:0:{}','system',-1,0,0,0,0,2,0,2,276,0,0,0,0,0,0,0,0),('navigation',277,0,'filefield/ahah/%/%/%','filefield/ahah/%/%/%','','a:0:{}','system',-1,0,0,0,0,1,0,277,0,0,0,0,0,0,0,0,0),('navigation',278,261,'admin/build/views/export/%','admin/build/views/export/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,261,278,0,0,0,0,0,0),('navigation',279,2,'admin/views/ajax/autocomplete/tag','admin/views/ajax/autocomplete/tag','','a:0:{}','system',-1,0,0,0,0,2,0,2,279,0,0,0,0,0,0,0,0),('navigation',280,30,'admin/settings/date-time/delete/%','admin/settings/date-time/delete/%','Delete date format type','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:52:\"Allow users to delete a configured date format type.\";}}','system',-1,0,0,0,0,4,0,2,18,30,280,0,0,0,0,0,0),('navigation',281,261,'admin/build/views/break-lock/%','admin/build/views/break-lock/%','Delete view','a:0:{}','system',-1,0,0,0,0,4,0,2,17,261,281,0,0,0,0,0,0),('navigation',282,261,'admin/build/views/delete/%','admin/build/views/delete/%','Delete view','a:0:{}','system',-1,0,0,0,0,4,0,2,17,261,282,0,0,0,0,0,0),('navigation',283,261,'admin/build/views/clone/%','admin/build/views/clone/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,261,283,0,0,0,0,0,0),('navigation',284,261,'admin/build/views/disable/%','admin/build/views/disable/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,261,284,0,0,0,0,0,0),('navigation',285,261,'admin/build/views/enable/%','admin/build/views/enable/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,261,285,0,0,0,0,0,0),('navigation',286,252,'admin/build/pages/edit/%','admin/build/pages/edit/%','Edit','a:0:{}','system',-1,0,0,0,0,4,0,2,17,252,286,0,0,0,0,0,0),('navigation',287,246,'admin/build/ctools-content/list/%','admin/build/ctools-content/list/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,246,287,0,0,0,0,0,0),('navigation',288,251,'admin/build/mini-panels/list/%','admin/build/mini-panels/list/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,251,288,0,0,0,0,0,0),('navigation',289,256,'admin/build/stylizer/list/%','admin/build/stylizer/list/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,256,289,0,0,0,0,0,0),('navigation',290,252,'admin/build/pages/%/operation/%','admin/build/pages/%/operation/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,252,290,0,0,0,0,0,0),('navigation',291,30,'admin/settings/date-time/formats/delete/%','admin/settings/date-time/formats/delete/%','Delete date format','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:47:\"Allow users to delete a configured date format.\";}}','system',-1,0,0,0,0,4,0,2,18,30,291,0,0,0,0,0,0),('navigation',292,252,'admin/build/pages/%/enable/%','admin/build/pages/%/enable/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,252,292,0,0,0,0,0,0),('navigation',293,261,'admin/build/views/tools/export/results','admin/build/views/tools/export/results','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,261,293,0,0,0,0,0,0),('navigation',294,0,'admin/content/node-type/page/groups/%','admin/content/node-type/page/groups/%','Edit group','a:0:{}','system',-1,0,0,0,0,1,0,294,0,0,0,0,0,0,0,0,0),('navigation',295,0,'admin/content/node-type/story/groups/%','admin/content/node-type/story/groups/%','Edit group','a:0:{}','system',-1,0,0,0,0,1,0,295,0,0,0,0,0,0,0,0,0),('navigation',296,252,'admin/build/pages/%/disable/%','admin/build/pages/%/disable/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,252,296,0,0,0,0,0,0),('navigation',297,261,'admin/build/views/%/add-display/%','admin/build/views/%/add-display/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,261,297,0,0,0,0,0,0),('navigation',298,261,'admin/build/views/%/%/%','admin/build/views/%/%/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,261,298,0,0,0,0,0,0),('navigation',299,261,'admin/build/views/%/analyze/%','admin/build/views/%/analyze/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,261,299,0,0,0,0,0,0),('navigation',300,261,'admin/build/views/%/details/%','admin/build/views/%/details/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,261,300,0,0,0,0,0,0),('navigation',301,261,'admin/build/views/%/preview/%','admin/build/views/%/preview/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,261,301,0,0,0,0,0,0),('navigation',302,253,'admin/build/panels/layouts/list/%','admin/build/panels/layouts/list/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,253,302,0,0,0,0,0,0),('navigation',303,0,'admin/build/ctools-content/list/%/clone','admin/build/ctools-content/list/%/clone','Clone','a:0:{}','system',-1,0,0,0,0,1,0,303,0,0,0,0,0,0,0,0,0),('navigation',304,0,'admin/build/mini-panels/list/%/clone','admin/build/mini-panels/list/%/clone','Clone','a:0:{}','system',-1,0,0,0,0,1,0,304,0,0,0,0,0,0,0,0,0),('navigation',305,0,'admin/build/stylizer/list/%/clone','admin/build/stylizer/list/%/clone','Clone','a:0:{}','system',-1,0,0,0,0,1,0,305,0,0,0,0,0,0,0,0,0),('navigation',306,0,'admin/build/ctools-content/list/%/delete','admin/build/ctools-content/list/%/delete','Delete','a:0:{}','system',-1,0,0,0,0,1,0,306,0,0,0,0,0,0,0,0,0),('navigation',307,0,'admin/build/mini-panels/list/%/delete','admin/build/mini-panels/list/%/delete','Delete','a:0:{}','system',-1,0,0,0,0,1,0,307,0,0,0,0,0,0,0,0,0),('navigation',308,0,'admin/build/stylizer/list/%/delete','admin/build/stylizer/list/%/delete','Delete','a:0:{}','system',-1,0,0,0,0,1,0,308,0,0,0,0,0,0,0,0,0),('navigation',309,0,'admin/build/ctools-content/list/%/disable','admin/build/ctools-content/list/%/disable','Disable','a:0:{}','system',-1,0,0,0,0,1,0,309,0,0,0,0,0,0,0,0,0),('navigation',310,0,'admin/build/mini-panels/list/%/disable','admin/build/mini-panels/list/%/disable','Disable','a:0:{}','system',-1,0,0,0,0,1,0,310,0,0,0,0,0,0,0,0,0),('navigation',311,0,'admin/build/stylizer/list/%/disable','admin/build/stylizer/list/%/disable','Disable','a:0:{}','system',-1,0,0,0,0,1,0,311,0,0,0,0,0,0,0,0,0),('navigation',312,0,'admin/build/ctools-content/list/%/enable','admin/build/ctools-content/list/%/enable','Enable','a:0:{}','system',-1,0,0,0,0,1,0,312,0,0,0,0,0,0,0,0,0),('navigation',313,0,'admin/build/mini-panels/list/%/enable','admin/build/mini-panels/list/%/enable','Enable','a:0:{}','system',-1,0,0,0,0,1,0,313,0,0,0,0,0,0,0,0,0),('navigation',314,0,'admin/build/stylizer/list/%/enable','admin/build/stylizer/list/%/enable','Enable','a:0:{}','system',-1,0,0,0,0,1,0,314,0,0,0,0,0,0,0,0,0),('navigation',315,0,'admin/build/ctools-content/list/%/revert','admin/build/ctools-content/list/%/revert','Revert','a:0:{}','system',-1,0,0,0,0,1,0,315,0,0,0,0,0,0,0,0,0),('navigation',316,0,'admin/build/mini-panels/list/%/revert','admin/build/mini-panels/list/%/revert','Revert','a:0:{}','system',-1,0,0,0,0,1,0,316,0,0,0,0,0,0,0,0,0),('navigation',317,0,'admin/build/stylizer/list/%/revert','admin/build/stylizer/list/%/revert','Revert','a:0:{}','system',-1,0,0,0,0,1,0,317,0,0,0,0,0,0,0,0,0),('navigation',318,0,'admin/content/node-type/page/groups/%/remove','admin/content/node-type/page/groups/%/remove','Edit group','a:0:{}','system',-1,0,0,0,0,1,0,318,0,0,0,0,0,0,0,0,0),('navigation',319,0,'admin/content/node-type/story/groups/%/remove','admin/content/node-type/story/groups/%/remove','Edit group','a:0:{}','system',-1,0,0,0,0,1,0,319,0,0,0,0,0,0,0,0,0),('navigation',320,0,'admin/build/panels/layouts/list/%/clone','admin/build/panels/layouts/list/%/clone','Clone','a:0:{}','system',-1,0,0,0,0,1,0,320,0,0,0,0,0,0,0,0,0),('navigation',321,0,'admin/build/panels/layouts/list/%/delete','admin/build/panels/layouts/list/%/delete','Delete','a:0:{}','system',-1,0,0,0,0,1,0,321,0,0,0,0,0,0,0,0,0),('navigation',322,0,'admin/build/panels/layouts/list/%/disable','admin/build/panels/layouts/list/%/disable','Disable','a:0:{}','system',-1,0,0,0,0,1,0,322,0,0,0,0,0,0,0,0,0),('navigation',323,0,'admin/build/panels/layouts/list/%/enable','admin/build/panels/layouts/list/%/enable','Enable','a:0:{}','system',-1,0,0,0,0,1,0,323,0,0,0,0,0,0,0,0,0),('navigation',324,0,'admin/build/panels/layouts/list/%/revert','admin/build/panels/layouts/list/%/revert','Revert','a:0:{}','system',-1,0,0,0,0,1,0,324,0,0,0,0,0,0,0,0,0),('admin_menu',326,124,'admin/build/bulkexport','admin/build/bulkexport','Bulk Exporter','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,124,326,0,0,0,0,0,0,0,0),('admin_menu',327,124,'admin/build/ctools-content','admin/build/ctools-content','Custom content panes','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,124,327,0,0,0,0,0,0,0,0),('admin_menu',328,125,'admin/settings/devel','admin/settings/devel','Devel settings','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,125,328,0,0,0,0,0,0,0,0),('admin_menu',329,125,'admin/settings/imageapi','admin/settings/imageapi','ImageAPI','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,125,329,0,0,0,0,0,0,0,0),('admin_menu',330,124,'admin/build/mini-panels','admin/build/mini-panels','Mini panels','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,124,330,0,0,0,0,0,0,0,0),('admin_menu',331,124,'admin/build/pages','admin/build/pages','Pages','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,124,331,0,0,0,0,0,0,0,0),('admin_menu',332,124,'admin/build/panels','admin/build/panels','Panels','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,124,332,0,0,0,0,0,0,0,0),('admin_menu',333,124,'admin/build/stylizer','admin/build/stylizer','Stylizer','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,124,333,0,0,0,0,0,0,0,0),('admin_menu',334,124,'admin/build/views','admin/build/views','Views','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,2,0,124,334,0,0,0,0,0,0,0,0),('admin_menu',335,327,'admin/build/ctools-content/add','admin/build/ctools-content/add','Add','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,124,327,335,0,0,0,0,0,0,0),('admin_menu',336,330,'admin/build/mini-panels/add','admin/build/mini-panels/add','Add','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,124,330,336,0,0,0,0,0,0,0),('admin_menu',337,333,'admin/build/stylizer/add','admin/build/stylizer/add','Add','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,124,333,337,0,0,0,0,0,0,0),('admin_menu',338,331,'admin/build/pages/add','admin/build/pages/add','Add custom page','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,124,331,338,0,0,0,0,0,0,0),('admin_menu',339,329,'admin/settings/imageapi/config','admin/settings/imageapi/config','Configure','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,3,0,125,329,339,0,0,0,0,0,0,0),('admin_menu',340,332,'admin/build/panels/dashboard','admin/build/panels/dashboard','Dashboard','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,3,0,124,332,340,0,0,0,0,0,0,0),('admin_menu',341,137,'admin/settings/date-time/configure','admin/settings/date-time/configure','Date and time','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,125,137,341,0,0,0,0,0,0,0),('admin_menu',342,136,'admin/content/types/export','admin/content/types/export','Export','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,3,3,0,121,136,342,0,0,0,0,0,0,0),('admin_menu',343,137,'admin/settings/date-time/formats','admin/settings/date-time/formats','Formats','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,1,3,0,125,137,343,0,0,0,0,0,0,0),('admin_menu',344,334,'admin/build/views/add','admin/build/views/add','Add','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,124,334,344,0,0,0,0,0,0,0),('admin_menu',345,136,'admin/content/types/fields','admin/content/types/fields','Fields','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,121,136,345,0,0,0,0,0,0,0),('admin_menu',346,327,'admin/build/ctools-content/import','admin/build/ctools-content/import','Import','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,124,327,346,0,0,0,0,0,0,0),('admin_menu',347,330,'admin/build/mini-panels/import','admin/build/mini-panels/import','Import','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,124,330,347,0,0,0,0,0,0,0),('admin_menu',348,333,'admin/build/stylizer/import','admin/build/stylizer/import','Import','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,124,333,348,0,0,0,0,0,0,0),('admin_menu',349,136,'admin/content/types/import','admin/content/types/import','Import','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,4,3,0,121,136,349,0,0,0,0,0,0,0),('admin_menu',350,334,'admin/build/views/import','admin/build/views/import','Import','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,124,334,350,0,0,0,0,0,0,0),('admin_menu',351,331,'admin/build/pages/import','admin/build/pages/import','Import page','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,124,331,351,0,0,0,0,0,0,0),('admin_menu',352,332,'admin/build/panels/layouts','admin/build/panels/layouts','Layouts','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,3,0,124,332,352,0,0,0,0,0,0,0),('admin_menu',353,327,'admin/build/ctools-content/list','admin/build/ctools-content/list','List','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,3,0,124,327,353,0,0,0,0,0,0,0),('admin_menu',354,330,'admin/build/mini-panels/list','admin/build/mini-panels/list','List','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,3,0,124,330,354,0,0,0,0,0,0,0),('admin_menu',355,333,'admin/build/stylizer/list','admin/build/stylizer/list','List','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,3,0,124,333,355,0,0,0,0,0,0,0),('admin_menu',356,329,'admin/settings/imageapi/list','admin/settings/imageapi/list','List','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-1,3,0,125,329,356,0,0,0,0,0,0,0),('admin_menu',357,334,'admin/build/views/tools','admin/build/views/tools','Tools','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,3,0,124,334,357,0,0,0,0,0,0,0),('admin_menu',358,331,'admin/build/pages/list','admin/build/pages/list','List','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,3,0,124,331,358,0,0,0,0,0,0,0),('admin_menu',359,334,'admin/build/views/list','admin/build/views/list','List','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-1,3,0,124,334,359,0,0,0,0,0,0,0),('admin_menu',360,332,'admin/build/panels/settings','admin/build/panels/settings','Settings','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,0,3,0,124,332,360,0,0,0,0,0,0,0),('admin_menu',361,330,'admin/build/mini-panels/settings','admin/build/mini-panels/settings','Settings','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,3,0,124,330,361,0,0,0,0,0,0,0),('admin_menu',362,339,'admin/settings/imageapi/config/imageapi_gd','admin/settings/imageapi/config/imageapi_gd','@name','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,125,329,339,362,0,0,0,0,0,0),('admin_menu',363,352,'admin/build/panels/layouts/add-flexible','admin/build/panels/layouts/add-flexible','Add flexible layout','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,332,352,363,0,0,0,0,0,0),('admin_menu',364,343,'admin/settings/date-time/formats/add','admin/settings/date-time/formats/add','Add format','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,3,4,0,125,137,343,364,0,0,0,0,0,0),('admin_menu',365,357,'admin/build/views/tools/basic','admin/build/views/tools/basic','Basic','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,4,0,124,334,357,365,0,0,0,0,0,0),('admin_menu',366,357,'admin/build/views/tools/export','admin/build/views/tools/export','Bulk export','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,334,357,366,0,0,0,0,0,0),('admin_menu',367,343,'admin/settings/date-time/formats/configure','admin/settings/date-time/formats/configure','Configure','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,1,4,0,125,137,343,367,0,0,0,0,0,0),('admin_menu',368,343,'admin/settings/date-time/formats/custom','admin/settings/date-time/formats/custom','Custom formats','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,2,4,0,125,137,343,368,0,0,0,0,0,0),('admin_menu',369,360,'admin/build/panels/settings/everywhere','admin/build/panels/settings/everywhere','Everywhere','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,332,360,369,0,0,0,0,0,0),('admin_menu',370,360,'admin/build/panels/settings/general','admin/build/panels/settings/general','General','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,4,0,124,332,360,370,0,0,0,0,0,0),('admin_menu',371,352,'admin/build/panels/layouts/import','admin/build/panels/layouts/import','Import','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,332,352,371,0,0,0,0,0,0),('admin_menu',372,352,'admin/build/panels/layouts/list','admin/build/panels/layouts/list','List','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,4,0,124,332,352,372,0,0,0,0,0,0),('admin_menu',373,357,'admin/build/views/tools/convert','admin/build/views/tools/convert','Convert','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,1,4,0,124,334,357,373,0,0,0,0,0,0),('admin_menu',374,360,'admin/build/panels/settings/panels-mini','admin/build/panels/settings/panels-mini','Mini panels','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,4,0,124,332,360,374,0,0,0,0,0,0),('admin_menu',375,360,'admin/build/panels/settings/panel-page','admin/build/panels/settings/panel-page','Panel pages','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,-10,4,0,124,332,360,375,0,0,0,0,0,0),('admin_menu',377,205,'http://drupal.org/project/issues/advanced_help','','Advanced help issue queue','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,1,0,0,0,3,0,118,205,377,0,0,0,0,0,0,0),('admin_menu',378,205,'http://drupal.org/project/issues/ctools','','Bulk Export issue queue','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,1,0,0,0,3,0,118,205,378,0,0,0,0,0,0,0),('admin_menu',379,205,'http://drupal.org/project/issues/cck','','Content issue queue','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,1,0,0,0,3,0,118,205,379,0,0,0,0,0,0,0),('admin_menu',380,205,'http://drupal.org/project/issues/date','','Date issue queue','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,1,0,0,0,3,0,118,205,380,0,0,0,0,0,0,0),('admin_menu',381,205,'http://drupal.org/project/issues/devel','','Devel issue queue','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,1,0,0,0,3,0,118,205,381,0,0,0,0,0,0,0),('admin_menu',382,205,'http://drupal.org/project/issues/filefield','','FileField issue queue','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,1,0,0,0,3,0,118,205,382,0,0,0,0,0,0,0),('admin_menu',383,205,'http://drupal.org/project/issues/imageapi','','ImageAPI issue queue','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,1,0,0,0,3,0,118,205,383,0,0,0,0,0,0,0),('admin_menu',384,205,'http://drupal.org/project/issues/imagefield','','ImageField issue queue','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,1,0,0,0,3,0,118,205,384,0,0,0,0,0,0,0),('admin_menu',385,205,'http://drupal.org/project/issues/panels','','Panels issue queue','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,1,0,0,0,3,0,118,205,385,0,0,0,0,0,0,0),('admin_menu',386,205,'http://drupal.org/project/issues/panels_everywhere','','Panels everywhere issue queue','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,1,0,0,0,3,0,118,205,386,0,0,0,0,0,0,0),('admin_menu',387,205,'http://drupal.org/project/issues/token','','Token issue queue','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,1,0,0,0,3,0,118,205,387,0,0,0,0,0,0,0),('admin_menu',388,205,'http://drupal.org/project/issues/vertical_tabs','','Vertical Tabs issue queue','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,1,0,0,0,3,0,118,205,388,0,0,0,0,0,0,0),('admin_menu',389,205,'http://drupal.org/project/issues/views','','Views issue queue','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,1,0,0,0,3,0,118,205,389,0,0,0,0,0,0,0),('admin_menu',390,212,'admin/content/node-type/page/display','admin/content/node-type/page/display','Display fields','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,2,4,0,121,136,212,390,0,0,0,0,0,0),('admin_menu',391,390,'admin/content/node-type/page/display/basic','admin/content/node-type/page/display/basic','Basic','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,5,0,121,136,212,390,391,0,0,0,0,0),('admin_menu',392,390,'admin/content/node-type/page/display/rss','admin/content/node-type/page/display/rss','RSS','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,1,5,0,121,136,212,390,392,0,0,0,0,0),('admin_menu',393,390,'admin/content/node-type/page/display/token','admin/content/node-type/page/display/token','Token','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,1,5,0,121,136,212,390,393,0,0,0,0,0),('admin_menu',394,212,'admin/content/node-type/page/fields','admin/content/node-type/page/fields','Manage fields','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,1,4,0,121,136,212,394,0,0,0,0,0,0),('admin_menu',395,213,'admin/content/node-type/story/display','admin/content/node-type/story/display','Display fields','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,1,0,2,4,0,121,136,213,395,0,0,0,0,0,0),('admin_menu',396,395,'admin/content/node-type/story/display/basic','admin/content/node-type/story/display/basic','Basic','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,5,0,121,136,213,395,396,0,0,0,0,0),('admin_menu',397,395,'admin/content/node-type/story/display/rss','admin/content/node-type/story/display/rss','RSS','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,1,5,0,121,136,213,395,397,0,0,0,0,0),('admin_menu',398,395,'admin/content/node-type/story/display/token','admin/content/node-type/story/display/token','Token','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,1,5,0,121,136,213,395,398,0,0,0,0,0),('admin_menu',399,213,'admin/content/node-type/story/fields','admin/content/node-type/story/fields','Manage fields','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,1,4,0,121,136,213,399,0,0,0,0,0,0),('admin_menu',400,118,'devel/variable','devel/variable','Variable editor','a:1:{s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,20,2,0,118,400,0,0,0,0,0,0,0,0),('admin_menu',401,119,'devel/switch/victorkane','devel/switch','<em>victorkane</em>','a:3:{s:5:\"query\";s:16:\"destination=node\";s:4:\"html\";b:1;s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,119,401,0,0,0,0,0,0,0,0),('admin_menu',402,119,'devel/switch/admin','devel/switch','<em>admin</em>','a:3:{s:5:\"query\";s:16:\"destination=node\";s:4:\"html\";b:1;s:5:\"alter\";b:1;}','admin_menu',0,0,0,0,0,2,0,119,402,0,0,0,0,0,0,0,0),('navigation',405,0,'list/stories','list/stories','','a:0:{}','system',-1,0,0,0,0,1,0,405,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `menu_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_router`
--

DROP TABLE IF EXISTS `menu_router`;
CREATE TABLE `menu_router` (
  `path` varchar(255) NOT NULL default '',
  `load_functions` text NOT NULL,
  `to_arg_functions` text NOT NULL,
  `access_callback` varchar(255) NOT NULL default '',
  `access_arguments` text,
  `page_callback` varchar(255) NOT NULL default '',
  `page_arguments` text,
  `fit` int(11) NOT NULL default '0',
  `number_parts` smallint(6) NOT NULL default '0',
  `tab_parent` varchar(255) NOT NULL default '',
  `tab_root` varchar(255) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `title_callback` varchar(255) NOT NULL default '',
  `title_arguments` varchar(255) NOT NULL default '',
  `type` int(11) NOT NULL default '0',
  `block_callback` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `position` varchar(255) NOT NULL default '',
  `weight` int(11) NOT NULL default '0',
  `file` mediumtext,
  PRIMARY KEY  (`path`),
  KEY `fit` (`fit`),
  KEY `tab_parent` (`tab_parent`),
  KEY `tab_root_weight_title` (`tab_root`(64),`weight`,`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_router`
--

LOCK TABLES `menu_router` WRITE;
/*!40000 ALTER TABLE `menu_router` DISABLE KEYS */;
INSERT INTO `menu_router` VALUES ('node','','','user_access','a:1:{i:0;s:14:\"access content\";}','node_page_default','a:0:{}',1,1,'','node','Content','t','',4,'','','',0,''),('rss.xml','','','user_access','a:1:{i:0;s:14:\"access content\";}','node_feed','a:0:{}',1,1,'','rss.xml','RSS feed','t','',4,'','','',0,''),('batch','','','1','a:0:{}','system_batch_page','a:0:{}',1,1,'','batch','','t','',4,'','','',0,'modules/system/system.admin.inc'),('admin','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','system_main_admin_page','a:0:{}',1,1,'','admin','Administer','t','',6,'','','',9,'modules/system/system.admin.inc'),('logout','','','user_is_logged_in','a:0:{}','user_logout','a:0:{}',1,1,'','logout','Log out','t','',6,'','','',10,'modules/user/user.pages.inc'),('user','','','1','a:0:{}','user_page','a:0:{}',1,1,'','user','User account','t','',4,'','','',0,'modules/user/user.pages.inc'),('user/login','','','user_is_anonymous','a:0:{}','user_page','a:0:{}',3,2,'user','user','Log in','t','',136,'','','',0,'modules/user/user.pages.inc'),('panels/ajax','','','user_access','a:1:{i:0;s:14:\"access content\";}','panels_ajax_router','a:0:{}',3,2,'','panels/ajax','','t','',4,'','','',0,''),('admin/advanced_help','','','user_access','a:1:{i:0;s:24:\"view advanced help index\";}','advanced_help_index_page','a:0:{}',3,2,'','admin/advanced_help','Advanced help','t','',6,'','','',9,''),('filefield/progress','','','user_access','a:1:{i:0;s:14:\"access content\";}','filefield_progress','a:0:{}',3,2,'','filefield/progress','','t','',4,'','','',0,''),('system/files','','','1','a:0:{}','file_download','a:0:{}',3,2,'','system/files','File download','t','',4,'','','',0,''),('user/timezone','','','1','a:0:{}','user_timezone','a:0:{}',3,2,'','user/timezone','User timezone','t','',4,'','','',0,''),('userreference/autocomplete','','','user_access','a:1:{i:0;s:14:\"access content\";}','userreference_autocomplete','a:0:{}',3,2,'','userreference/autocomplete','Userreference autocomplete','t','',4,'','','',0,''),('admin_menu/flush-cache','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','admin_menu_flush_cache','a:0:{}',3,2,'','admin_menu/flush-cache','','t','',4,'','','',0,'sites/all/modules/admin_menu/admin_menu.inc'),('admin_menu/toggle-modules','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','admin_menu_toggle_modules','a:0:{}',3,2,'','admin_menu/toggle-modules','','t','',4,'','','',0,'sites/all/modules/admin_menu/admin_menu.inc'),('content/js_add_more','','','user_access','a:1:{i:0;s:14:\"access content\";}','content_add_more_js','a:0:{}',3,2,'','content/js_add_more','','t','',4,'','','',0,'sites/all/modules/cck/includes/content.node_form.inc'),('taxonomy/autocomplete','','','user_access','a:1:{i:0;s:14:\"access content\";}','taxonomy_autocomplete','a:0:{}',3,2,'','taxonomy/autocomplete','Autocomplete taxonomy','t','',4,'','','',0,'modules/taxonomy/taxonomy.pages.inc'),('admin/by-module','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','system_admin_by_module','a:0:{}',3,2,'admin','admin','By module','t','',128,'','','',2,'modules/system/system.admin.inc'),('admin/by-task','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','system_main_admin_page','a:0:{}',3,2,'admin','admin','By task','t','',136,'','','',0,'modules/system/system.admin.inc'),('admin/compact','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','system_admin_compact_page','a:0:{}',3,2,'','admin/compact','Compact mode','t','',4,'','','',0,'modules/system/system.admin.inc'),('filter/tips','','','1','a:0:{}','filter_tips_long','a:0:{}',3,2,'','filter/tips','Compose tips','t','',20,'','','',0,'modules/filter/filter.pages.inc'),('node/add','','','_node_add_access','a:0:{}','node_add_page','a:0:{}',3,2,'','node/add','Create content','t','',6,'','','',1,'modules/node/node.pages.inc'),('comment/delete','','','user_access','a:1:{i:0;s:19:\"administer comments\";}','comment_delete','a:0:{}',3,2,'','comment/delete','Delete comment','t','',4,'','','',0,'modules/comment/comment.admin.inc'),('devel/source','','','user_access','a:1:{i:0;s:19:\"display source code\";}','devel_display_source','a:0:{}',3,2,'','devel/source','Display the PHP code of any file in your Drupal installation','t','',4,'','','',0,''),('comment/edit','','','user_access','a:1:{i:0;s:13:\"post comments\";}','comment_edit','a:0:{}',3,2,'','comment/edit','Edit comment','t','',4,'','','',0,'modules/comment/comment.pages.inc'),('admin/help','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_main','a:0:{}',3,2,'','admin/help','Help','t','',6,'','','',9,'modules/help/help.admin.inc'),('nodereference/autocomplete','','','nodereference_autocomplete_access','a:1:{i:0;i:2;}','nodereference_autocomplete','a:0:{}',3,2,'','nodereference/autocomplete','Nodereference autocomplete','t','',4,'','','',0,''),('devel/switch','','','user_access','a:1:{i:0;s:12:\"switch users\";}','devel_switch_user','a:0:{}',3,2,'','devel/switch','Switch user','t','',4,'','','',0,''),('user/register','','','user_register_access','a:0:{}','drupal_get_form','a:1:{i:0;s:13:\"user_register\";}',3,2,'user','user','Create new account','t','',128,'','','',0,'modules/user/user.pages.inc'),('devel/queries','','','devel_menu_access_store_queries','a:0:{}','devel_queries','a:0:{}',3,2,'','devel/queries','Database queries','t','',6,'','','',0,''),('devel/reference','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_function_reference','a:0:{}',3,2,'','devel/reference','Function reference','t','',6,'','View a list of currently defined user functions with documentation links.','',0,''),('devel/elements','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_elements_page','a:0:{}',3,2,'','devel/elements','Hook_elements()','t','',6,'','View the active form/render elements for this site.','',0,''),('devel/phpinfo','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_phpinfo','a:0:{}',3,2,'','devel/phpinfo','PHPinfo()','t','',6,'','View your server\'s PHP configuration','',0,''),('user/password','','','user_is_anonymous','a:0:{}','drupal_get_form','a:1:{i:0;s:9:\"user_pass\";}',3,2,'user','user','Request new password','t','',128,'','','',0,'modules/user/user.pages.inc'),('devel/session','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_session','a:0:{}',3,2,'','devel/session','Session viewer','t','',6,'','List the contents of $_SESSION.','',0,''),('list/stories','','','views_access','a:1:{i:0;b:1;}','views_page','a:2:{i:0;s:12:\"list_stories\";i:1;s:6:\"page_1\";}',3,2,'','list/stories','','t','',4,'','','',0,''),('user/autocomplete','','','user_access','a:1:{i:0;s:20:\"access user profiles\";}','user_autocomplete','a:0:{}',3,2,'','user/autocomplete','User autocomplete','t','',4,'','','',0,'modules/user/user.pages.inc'),('devel/variable','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_variable_page','a:0:{}',3,2,'','devel/variable','Variable editor','t','',6,'','Edit and delete site variables.','',0,''),('views/ajax','','','1','a:0:{}','views_ajax','a:0:{}',3,2,'','views/ajax','Views','t','',4,'','Ajax callback for view loading.','',0,'sites/all/modules/views/includes/ajax.inc'),('admin/content','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','system_admin_menu_block_page','a:0:{}',3,2,'','admin/content','Content management','t','',6,'','Manage your site\'s content.','left',-10,'modules/system/system.admin.inc'),('devel/php','','','user_access','a:1:{i:0;s:16:\"execute php code\";}','drupal_get_form','a:1:{i:0;s:18:\"devel_execute_form\";}',3,2,'','devel/php','Execute PHP Code','t','',6,'','Execute some PHP code','',0,''),('devel/reinstall','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','drupal_get_form','a:1:{i:0;s:15:\"devel_reinstall\";}',3,2,'','devel/reinstall','Reinstall modules','t','',6,'','Run hook_uninstall() and then hook_install() for a given module.','',0,''),('admin/reports','','','user_access','a:1:{i:0;s:19:\"access site reports\";}','system_admin_menu_block_page','a:0:{}',3,2,'','admin/reports','Reports','t','',6,'','View reports from system logs and other status information.','left',5,'modules/system/system.admin.inc'),('admin/build','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','system_admin_menu_block_page','a:0:{}',3,2,'','admin/build','Site building','t','',6,'','Control how your site looks and feels.','right',-10,'modules/system/system.admin.inc'),('admin/settings','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','system_settings_overview','a:0:{}',3,2,'','admin/settings','Site configuration','t','',6,'','Adjust basic site configuration options.','right',-5,'modules/system/system.admin.inc'),('admin/user','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','system_admin_menu_block_page','a:0:{}',3,2,'','admin/user','User management','t','',6,'','Manage your site\'s users, groups and access to site features.','left',0,'modules/system/system.admin.inc'),('node/%','a:1:{i:1;s:9:\"node_load\";}','','node_access','a:2:{i:0;s:4:\"view\";i:1;i:1;}','node_page_view','a:1:{i:0;i:1;}',2,2,'','node/%','','node_page_title','a:1:{i:0;i:1;}',4,'','','',0,''),('user/%','a:1:{i:1;s:22:\"user_uid_optional_load\";}','a:1:{i:1;s:24:\"user_uid_optional_to_arg\";}','user_view_access','a:1:{i:0;i:1;}','user_view','a:1:{i:0;i:1;}',2,2,'','user/%','My account','user_page_title','a:1:{i:0;i:1;}',6,'','','',0,'modules/user/user.pages.inc'),('node/%/view','a:1:{i:1;s:9:\"node_load\";}','','node_access','a:2:{i:0;s:4:\"view\";i:1;i:1;}','node_page_view','a:1:{i:0;i:1;}',5,3,'node/%','node/%','View','t','',136,'','','',-10,''),('user/%/view','a:1:{i:1;s:9:\"user_load\";}','','user_view_access','a:1:{i:0;i:1;}','user_view','a:1:{i:0;i:1;}',5,3,'user/%','user/%','View','t','',136,'','','',-10,'modules/user/user.pages.inc'),('search/advanced_help/%','a:1:{i:2;N;}','a:1:{i:2;s:16:\"menu_tail_to_arg\";}','0','a:1:{i:0;s:24:\"view advanced help index\";}','','a:0:{}',6,3,'','search/advanced_help/%','','t','',6,'','','',0,''),('help/%/%','a:2:{i:1;N;i:2;N;}','','user_access','a:1:{i:0;s:24:\"view advanced help topic\";}','advanced_help_topic_page','a:2:{i:0;i:1;i:1;i:2;}',4,3,'','help/%/%','','t','',4,'','','',0,''),('ctools/autocomplete/node','','','user_access','a:1:{i:0;s:14:\"access content\";}','ctools_content_autocomplete_node','a:0:{}',7,3,'','ctools/autocomplete/node','','t','',4,'','','',0,'sites/all/modules/ctools/includes/content.menu.inc'),('admin/settings/actions','','','user_access','a:1:{i:0;s:18:\"administer actions\";}','system_actions_manage','a:0:{}',7,3,'','admin/settings/actions','Actions','t','',6,'','Manage the actions defined for your site.','',0,''),('admin/build/bulkexport','','','user_access','a:1:{i:0;s:17:\"use bulk exporter\";}','bulk_export_export','a:0:{}',7,3,'','admin/build/bulkexport','Bulk Exporter','t','',6,'','Bulk-export multiple CTools-handled data objects to code.','',0,''),('advanced_help/search/%','a:1:{i:2;N;}','a:1:{i:2;s:16:\"menu_tail_to_arg\";}','user_access','a:1:{i:0;s:24:\"view advanced help index\";}','advanced_help_search_view','a:1:{i:0;s:13:\"advanced_help\";}',6,3,'','advanced_help/search/%','Search help','t','',6,'','','',0,''),('admin/user/rules','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','user_admin_access','a:0:{}',7,3,'','admin/user/rules','Access rules','t','',6,'','List and create rules to disallow usernames, e-mail addresses, and IP addresses.','',0,'modules/user/user.admin.inc'),('admin/reports/updates','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','update_status','a:0:{}',7,3,'','admin/reports/updates','Available updates','t','',6,'','Get a status report about available updates for your installed modules and themes.','',10,'modules/update/update.report.inc'),('admin/build/block','','','user_access','a:1:{i:0;s:17:\"administer blocks\";}','block_admin_display','a:0:{}',7,3,'','admin/build/block','Blocks','t','',6,'','Configure what block content appears in your site\'s sidebars and other regions.','',0,'modules/block/block.admin.inc'),('admin/content/comment','','','user_access','a:1:{i:0;s:19:\"administer comments\";}','comment_admin','a:0:{}',7,3,'','admin/content/comment','Comments','t','',6,'','List and edit site comments and the comment moderation queue.','',0,'modules/comment/comment.admin.inc'),('node/%/devel','a:1:{i:1;s:9:\"node_load\";}','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_load_object','a:2:{i:0;i:1;i:1;s:4:\"node\";}',5,3,'node/%','node/%','Devel','t','',128,'','','',100,''),('user/%/devel','a:1:{i:1;s:9:\"user_load\";}','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_load_object','a:2:{i:0;i:1;i:1;s:4:\"user\";}',5,3,'user/%','user/%','Devel','t','',128,'','','',100,''),('devel/cache/clear','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_cache_clear','a:0:{}',7,3,'','devel/cache/clear','Empty cache','t','',6,'','Clear the CSS cache and all database cache tables which store page, node, theme and variable caches.','',0,''),('devel/queries/empty','','','devel_menu_access_store_queries','a:0:{}','devel_queries_empty','a:0:{}',7,3,'','devel/queries/empty','Empty database queries','t','',6,'','','',0,''),('admin/settings/imageapi','','','user_access','a:1:{i:0;s:19:\"administer imageapi\";}','drupal_get_form','a:1:{i:0;s:17:\"imageapi_settings\";}',7,3,'','admin/settings/imageapi','ImageAPI','t','',6,'','Configure ImageAPI.','',0,''),('admin/settings/logging','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','system_logging_overview','a:0:{}',7,3,'','admin/settings/logging','Logging and alerts','t','',6,'','Settings for logging and alerts modules. Various modules can route Drupal\'s system events to different destination, such as syslog, database, email, ...etc.','',0,'modules/system/system.admin.inc'),('admin/build/pages','','','user_access','a:1:{i:0;s:16:\"use page manager\";}','page_manager_list_page','a:0:{}',7,3,'','admin/build/pages','Pages','t','',6,'','Add, edit and remove overridden system pages and user defined pages from the system.','',0,'sites/all/modules/ctools/page_manager/page_manager.admin.inc'),('admin/build/panels','','','user_access','a:1:{i:0;s:20:\"use panels dashboard\";}','panels_admin_page','a:0:{}',7,3,'','admin/build/panels','Panels','t','',6,'','Get a bird\'s eye view of items related to Panels.','',0,'sites/all/modules/panels/includes/callbacks.inc'),('admin/reports/dblog','','','user_access','a:1:{i:0;s:19:\"access site reports\";}','dblog_overview','a:0:{}',7,3,'','admin/reports/dblog','Recent log entries','t','',6,'','View events that have recently been logged.','',-1,'modules/dblog/dblog.admin.inc'),('admin/reports/status','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','system_status','a:0:{}',7,3,'','admin/reports/status','Status report','t','',6,'','Get a status report about your site\'s operation and any detected problems.','',10,'modules/system/system.admin.inc'),('taxonomy/term/%','a:1:{i:2;N;}','','user_access','a:1:{i:0;s:14:\"access content\";}','taxonomy_term_page','a:1:{i:0;i:2;}',6,3,'','taxonomy/term/%','Taxonomy term','t','',4,'','','',0,'modules/taxonomy/taxonomy.pages.inc'),('devel/theme/registry','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_theme_registry','a:0:{}',7,3,'','devel/theme/registry','Theme registry','t','',6,'','View a list of available theme functions across the whole site.','',0,''),('admin/help/admin_menu','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/admin_menu','admin_menu','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/help/block','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/block','block','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/help/color','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/color','color','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/help/comment','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/comment','comment','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/help/content','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/content','content','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/help/date','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/date','date','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/help/dblog','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/dblog','dblog','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/help/devel','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/devel','devel','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/help/filter','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/filter','filter','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/help/help','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/help','help','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/help/menu','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/menu','menu','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/help/node','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/node','node','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/help/system','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/system','system','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/help/taxonomy','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/taxonomy','taxonomy','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/help/token','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/token','token','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/help/update','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/update','update','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/help/user','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/user','user','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/help/views_ui','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/views_ui','views_ui','t','',4,'','','',0,'modules/help/help.admin.inc'),('admin/settings/admin_menu','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:25:\"admin_menu_theme_settings\";}',7,3,'','admin/settings/admin_menu','Administration menu','t','',6,'','Adjust administration menu settings.','',0,'sites/all/modules/admin_menu/admin_menu.inc'),('admin/settings/clean-urls','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:25:\"system_clean_url_settings\";}',7,3,'','admin/settings/clean-urls','Clean URLs','t','',6,'','Enable or disable clean URLs for your site.','',0,'modules/system/system.admin.inc'),('admin/content/node','','','user_access','a:1:{i:0;s:16:\"administer nodes\";}','drupal_get_form','a:1:{i:0;s:18:\"node_admin_content\";}',7,3,'','admin/content/node','Content','t','',6,'','View, edit, and delete your site\'s content.','',0,'modules/node/node.admin.inc'),('admin/content/types','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','content_types_overview','a:0:{}',7,3,'','admin/content/types','Content types','t','',6,'','Manage posts by content type, including default status, front page promotion, etc.','',0,'sites/all/modules/cck/includes/content.admin.inc'),('admin/settings/date-time','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:25:\"system_date_time_settings\";}',7,3,'','admin/settings/date-time','Date and time','t','',6,'','Settings for how Drupal displays date and time, as well as the system\'s default timezone.','',0,'modules/system/system.admin.inc'),('node/%/delete','a:1:{i:1;s:9:\"node_load\";}','','node_access','a:2:{i:0;s:6:\"delete\";i:1;i:1;}','drupal_get_form','a:2:{i:0;s:19:\"node_delete_confirm\";i:1;i:1;}',5,3,'','node/%/delete','Delete','t','',4,'','','',1,'modules/node/node.pages.inc'),('user/%/delete','a:1:{i:1;s:9:\"user_load\";}','','user_access','a:1:{i:0;s:16:\"administer users\";}','drupal_get_form','a:2:{i:0;s:19:\"user_confirm_delete\";i:1;i:1;}',5,3,'','user/%/delete','Delete','t','',4,'','','',0,'modules/user/user.pages.inc'),('admin/settings/devel','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:20:\"devel_admin_settings\";}',7,3,'','admin/settings/devel','Devel settings','t','',6,'','Helper functions, pages, and blocks to assist Drupal developers. The devel blocks can be managed via the <a href=\"/admin/build/block\">block administration</a> page.','',0,''),('node/%/edit','a:1:{i:1;s:9:\"node_load\";}','','node_access','a:2:{i:0;s:6:\"update\";i:1;i:1;}','node_page_edit','a:1:{i:0;i:1;}',5,3,'node/%','node/%','Edit','t','',128,'','','',1,'modules/node/node.pages.inc'),('admin/settings/error-reporting','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:31:\"system_error_reporting_settings\";}',7,3,'','admin/settings/error-reporting','Error reporting','t','',6,'','Control how Drupal deals with errors including 403/404 errors as well as PHP error reporting.','',0,'modules/system/system.admin.inc'),('admin/settings/file-system','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:27:\"system_file_system_settings\";}',7,3,'','admin/settings/file-system','File system','t','',6,'','Tell Drupal where to store uploaded files and how they are accessed.','',0,'modules/system/system.admin.inc'),('admin/settings/image-toolkit','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:29:\"system_image_toolkit_settings\";}',7,3,'','admin/settings/image-toolkit','Image toolkit','t','',6,'','Choose which image toolkit to use if you have installed optional toolkits.','',0,'modules/system/system.admin.inc'),('admin/settings/filters','','','user_access','a:1:{i:0;s:18:\"administer filters\";}','drupal_get_form','a:1:{i:0;s:21:\"filter_admin_overview\";}',7,3,'','admin/settings/filters','Input formats','t','',6,'','Configure how content input by users is filtered, including allowed HTML tags. Also allows enabling of module-provided filters.','',0,'modules/filter/filter.admin.inc'),('admin/build/menu','','','user_access','a:1:{i:0;s:15:\"administer menu\";}','menu_overview_page','a:0:{}',7,3,'','admin/build/menu','Menus','t','',6,'','Control your site\'s navigation menu, primary links and secondary links. as well as rename and reorganize menu items.','',0,'modules/menu/menu.admin.inc'),('admin/build/modules','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:14:\"system_modules\";}',7,3,'','admin/build/modules','Modules','t','',6,'','Enable or disable add-on modules for your site.','',0,'modules/system/system.admin.inc'),('admin/settings/performance','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:27:\"system_performance_settings\";}',7,3,'','admin/settings/performance','Performance','t','',6,'','Enable or disable page caching for anonymous users and set CSS and JS bandwidth optimization options.','',0,'modules/system/system.admin.inc'),('admin/user/permissions','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','drupal_get_form','a:1:{i:0;s:15:\"user_admin_perm\";}',7,3,'','admin/user/permissions','Permissions','t','',6,'','Determine access to features by selecting permissions for roles.','',0,'modules/user/user.admin.inc'),('admin/content/node-settings','','','user_access','a:1:{i:0;s:16:\"administer nodes\";}','drupal_get_form','a:1:{i:0;s:14:\"node_configure\";}',7,3,'','admin/content/node-settings','Post settings','t','',6,'','Control posting behavior, such as teaser length, requiring previews before posting, and the number of posts on the front page.','',0,'modules/node/node.admin.inc'),('admin/content/rss-publishing','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:25:\"system_rss_feeds_settings\";}',7,3,'','admin/content/rss-publishing','RSS publishing','t','',6,'','Configure the number of items per feed and whether feeds should be titles/teasers/full-text.','',0,'modules/system/system.admin.inc'),('devel/menu/reset','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','drupal_get_form','a:1:{i:0;s:18:\"devel_menu_rebuild\";}',7,3,'','devel/menu/reset','Rebuild menus','t','',6,'','Rebuild menu based on hook_menu() and revert any custom changes. All menu items return to their default settings.','',0,''),('comment/reply/%','a:1:{i:2;s:9:\"node_load\";}','','node_access','a:2:{i:0;s:4:\"view\";i:1;i:2;}','comment_reply','a:1:{i:0;i:2;}',6,3,'','comment/reply/%','Reply to comment','t','',4,'','','',0,'modules/comment/comment.pages.inc'),('node/%/revisions','a:1:{i:1;s:9:\"node_load\";}','','_node_revision_access','a:1:{i:0;i:1;}','node_revision_overview','a:1:{i:0;i:1;}',5,3,'node/%','node/%','Revisions','t','',128,'','','',2,'modules/node/node.pages.inc'),('admin/user/roles','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','drupal_get_form','a:1:{i:0;s:19:\"user_admin_new_role\";}',7,3,'','admin/user/roles','Roles','t','',6,'','List, edit, or add user roles.','',0,'modules/user/user.admin.inc'),('admin/settings/site-information','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:32:\"system_site_information_settings\";}',7,3,'','admin/settings/site-information','Site information','t','',6,'','Change basic site information, such as the site name, slogan, e-mail address, mission, front page and more.','',0,'modules/system/system.admin.inc'),('admin/settings/site-maintenance','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:32:\"system_site_maintenance_settings\";}',7,3,'','admin/settings/site-maintenance','Site maintenance','t','',6,'','Take the site off-line for maintenance or bring it back online.','',0,'modules/system/system.admin.inc'),('admin/content/taxonomy','','','user_access','a:1:{i:0;s:19:\"administer taxonomy\";}','drupal_get_form','a:1:{i:0;s:30:\"taxonomy_overview_vocabularies\";}',7,3,'','admin/content/taxonomy','Taxonomy','t','',6,'','Manage tagging, categorization, and classification of your content.','',0,'modules/taxonomy/taxonomy.admin.inc'),('admin/build/themes','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:2:{i:0;s:18:\"system_themes_form\";i:1;N;}',7,3,'','admin/build/themes','Themes','t','',6,'','Change which theme your site uses or allows users to set.','',0,'modules/system/system.admin.inc'),('admin/reports/access-denied','','','user_access','a:1:{i:0;s:19:\"access site reports\";}','dblog_top','a:1:{i:0;s:13:\"access denied\";}',7,3,'','admin/reports/access-denied','Top \'access denied\' errors','t','',6,'','View \'access denied\' errors (403s).','',0,'modules/dblog/dblog.admin.inc'),('admin/reports/page-not-found','','','user_access','a:1:{i:0;s:19:\"access site reports\";}','dblog_top','a:1:{i:0;s:14:\"page not found\";}',7,3,'','admin/reports/page-not-found','Top \'page not found\' errors','t','',6,'','View \'page not found\' errors (404s).','',0,'modules/dblog/dblog.admin.inc'),('admin/user/settings','','','user_access','a:1:{i:0;s:16:\"administer users\";}','drupal_get_form','a:1:{i:0;s:19:\"user_admin_settings\";}',7,3,'','admin/user/settings','User settings','t','',6,'','Configure default behavior of users, including registration requirements, e-mails, and user pictures.','',0,'modules/user/user.admin.inc'),('admin/user/user','','','user_access','a:1:{i:0;s:16:\"administer users\";}','user_admin','a:1:{i:0;s:4:\"list\";}',7,3,'','admin/user/user','Users','t','',6,'','List, add, and edit users.','',0,'modules/user/user.admin.inc'),('admin/build/views','','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_list_views','a:0:{}',7,3,'','admin/build/views','Views','t','',6,'','Views are customized lists of content on your system; they are highly configurable and give you control over how lists of content are presented.','',0,'sites/all/modules/views/includes/admin.inc'),('user/%/edit','a:1:{i:1;a:1:{s:18:\"user_category_load\";a:2:{i:0;s:4:\"%map\";i:1;s:6:\"%index\";}}}','','user_edit_access','a:1:{i:0;i:1;}','user_edit','a:1:{i:0;i:1;}',5,3,'user/%','user/%','Edit','t','',128,'','','',0,'modules/user/user.pages.inc'),('admin/settings/admin','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:27:\"system_admin_theme_settings\";}',7,3,'','admin/settings/admin','Administration theme','t','',6,'system_admin_theme_settings','Settings for how your administrative pages should look.','left',0,'modules/system/system.admin.inc'),('admin/build/ctools-content','','','ctools_export_ui_task_access','a:2:{i:0;s:21:\"ctools_custom_content\";i:1;s:4:\"list\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:21:\"ctools_custom_content\";i:1;s:4:\"list\";}',7,3,'','admin/build/ctools-content','Custom content panes','t','',6,'','Add, edit or delete custom content panes.','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/mini-panels','','','ctools_export_ui_task_access','a:2:{i:0;s:11:\"panels_mini\";i:1;s:4:\"list\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:11:\"panels_mini\";i:1;s:4:\"list\";}',7,3,'','admin/build/mini-panels','Mini panels','t','',6,'','Add, edit or delete mini panels, which can be used as blocks or content panes in other panels.','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('node/add/page','','','node_access','a:2:{i:0;s:6:\"create\";i:1;s:4:\"page\";}','node_add','a:1:{i:0;i:2;}',7,3,'','node/add/page','Page','check_plain','',6,'','A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.','',0,'modules/node/node.pages.inc'),('node/add/story','','','node_access','a:2:{i:0;s:6:\"create\";i:1;s:5:\"story\";}','node_add','a:1:{i:0;i:2;}',7,3,'','node/add/story','Story','check_plain','',6,'','A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site\'s initial home page, and provides the ability to post comments.','',0,'modules/node/node.pages.inc'),('admin/build/stylizer','','','ctools_export_ui_task_access','a:2:{i:0;s:8:\"stylizer\";i:1;s:4:\"list\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:8:\"stylizer\";i:1;s:4:\"list\";}',7,3,'','admin/build/stylizer','Stylizer','t','',6,'','Add, edit or delete stylizer styles.','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/block/list','','','user_access','a:1:{i:0;s:17:\"administer blocks\";}','block_admin_display','a:0:{}',15,4,'admin/build/block','admin/build/block','List','t','',136,'','','',-10,'modules/block/block.admin.inc'),('admin/content/types/list','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','content_types_overview','a:0:{}',15,4,'admin/content/types','admin/content/types','List','t','',136,'','','',-10,'sites/all/modules/cck/includes/content.admin.inc'),('admin/content/taxonomy/list','','','user_access','a:1:{i:0;s:19:\"administer taxonomy\";}','drupal_get_form','a:1:{i:0;s:30:\"taxonomy_overview_vocabularies\";}',15,4,'admin/content/taxonomy','admin/content/taxonomy','List','t','',136,'','','',-10,'modules/taxonomy/taxonomy.admin.inc'),('admin/user/user/list','','','user_access','a:1:{i:0;s:16:\"administer users\";}','user_admin','a:1:{i:0;s:4:\"list\";}',15,4,'admin/user/user','admin/user/user','List','t','',136,'','','',-10,'modules/user/user.admin.inc'),('admin/settings/filters/list','','','user_access','a:1:{i:0;s:18:\"administer filters\";}','drupal_get_form','a:1:{i:0;s:21:\"filter_admin_overview\";}',15,4,'admin/settings/filters','admin/settings/filters','List','t','',136,'','','',0,'modules/filter/filter.admin.inc'),('admin/content/node/overview','','','user_access','a:1:{i:0;s:16:\"administer nodes\";}','drupal_get_form','a:1:{i:0;s:18:\"node_admin_content\";}',15,4,'admin/content/node','admin/content/node','List','t','',136,'','','',-10,'modules/node/node.admin.inc'),('admin/user/rules/list','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','user_admin_access','a:0:{}',15,4,'admin/user/rules','admin/user/rules','List','t','',136,'','','',-10,'modules/user/user.admin.inc'),('admin/settings/imageapi/list','','','user_access','a:1:{i:0;s:19:\"administer imageapi\";}','drupal_get_form','a:1:{i:0;s:17:\"imageapi_settings\";}',15,4,'admin/settings/imageapi','admin/settings/imageapi','List','t','',136,'','','',-1,''),('admin/build/modules/list','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:14:\"system_modules\";}',15,4,'admin/build/modules','admin/build/modules','List','t','',136,'','','',0,'modules/system/system.admin.inc'),('admin/content/comment/new','','','user_access','a:1:{i:0;s:19:\"administer comments\";}','comment_admin','a:0:{}',15,4,'admin/content/comment','admin/content/comment','Published comments','t','',136,'','','',-10,'modules/comment/comment.admin.inc'),('user/%/edit/account','a:1:{i:1;a:1:{s:18:\"user_category_load\";a:2:{i:0;s:4:\"%map\";i:1;s:6:\"%index\";}}}','','user_edit_access','a:1:{i:0;i:1;}','user_edit','a:1:{i:0;i:1;}',11,4,'user/%/edit','user/%','Account','t','',136,'','','',0,'modules/user/user.pages.inc'),('admin/build/themes/select','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:2:{i:0;s:18:\"system_themes_form\";i:1;N;}',15,4,'admin/build/themes','admin/build/themes','List','t','',136,'','Select the default theme.','',-1,'modules/system/system.admin.inc'),('admin/build/menu/list','','','user_access','a:1:{i:0;s:15:\"administer menu\";}','menu_overview_page','a:0:{}',15,4,'admin/build/menu','admin/build/menu','List menus','t','',136,'','','',-10,'modules/menu/menu.admin.inc'),('admin/build/themes/settings','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:21:\"system_theme_settings\";}',15,4,'admin/build/themes','admin/build/themes','Configure','t','',128,'','','',0,'modules/system/system.admin.inc'),('admin/settings/actions/manage','','','user_access','a:1:{i:0;s:18:\"administer actions\";}','system_actions_manage','a:0:{}',15,4,'admin/settings/actions','admin/settings/actions','Manage actions','t','',136,'','Manage the actions defined for your site.','',-2,''),('admin/settings/actions/orphan','','','user_access','a:1:{i:0;s:18:\"administer actions\";}','system_actions_remove_orphans','a:0:{}',15,4,'','admin/settings/actions/orphan','Remove orphans','t','',4,'','','',0,''),('admin/build/modules/uninstall','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:24:\"system_modules_uninstall\";}',15,4,'admin/build/modules','admin/build/modules','Uninstall','t','',128,'','','',0,'modules/system/system.admin.inc'),('admin/build/bulkexport/results','','','user_access','a:1:{i:0;s:17:\"use bulk exporter\";}','bulk_export_export','a:0:{}',15,4,'','admin/build/bulkexport/results','','t','',4,'','','',0,''),('admin/build/pages/site_template','','','user_access','a:1:{i:0;s:16:\"use page manager\";}','panels_everywhere_edit_site_template','a:0:{}',15,4,'admin/build/pages','admin/build/pages','Edit site template','t','',128,'','','',0,''),('ctools/context/ajax/add','','','user_access','a:1:{i:0;s:14:\"access content\";}','ctools_context_ajax_item_add','a:0:{}',15,4,'','ctools/context/ajax/add','','t','',4,'','','',0,'sites/all/modules/ctools/includes/context-admin.inc'),('ctools/context/ajax/delete','','','user_access','a:1:{i:0;s:14:\"access content\";}','ctools_context_ajax_item_delete','a:0:{}',15,4,'','ctools/context/ajax/delete','','t','',4,'','','',0,'sites/all/modules/ctools/includes/context-admin.inc'),('admin/settings/filters/add','','','user_access','a:1:{i:0;s:18:\"administer filters\";}','filter_admin_format_page','a:0:{}',15,4,'admin/settings/filters','admin/settings/filters','Add input format','t','',128,'','','',1,'modules/filter/filter.admin.inc'),('admin/user/rules/add','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','user_admin_access_add','a:0:{}',15,4,'admin/user/rules','admin/user/rules','Add rule','t','',128,'','','',0,'modules/user/user.admin.inc'),('admin/user/user/create','','','user_access','a:1:{i:0;s:16:\"administer users\";}','user_admin','a:1:{i:0;s:6:\"create\";}',15,4,'admin/user/user','admin/user/user','Add user','t','',128,'','','',0,'modules/user/user.admin.inc'),('admin/content/comment/approval','','','user_access','a:1:{i:0;s:19:\"administer comments\";}','comment_admin','a:1:{i:0;s:8:\"approval\";}',15,4,'admin/content/comment','admin/content/comment','Approval queue','t','',128,'','','',0,'modules/comment/comment.admin.inc'),('ctools/context/ajax/configure','','','user_access','a:1:{i:0;s:14:\"access content\";}','ctools_context_ajax_item_edit','a:0:{}',15,4,'','ctools/context/ajax/configure','','t','',4,'','','',0,'sites/all/modules/ctools/includes/context-admin.inc'),('admin/user/rules/check','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','user_admin_access_check','a:0:{}',15,4,'admin/user/rules','admin/user/rules','Check rules','t','',128,'','','',0,'modules/user/user.admin.inc'),('admin/settings/clean-urls/check','','','1','a:0:{}','drupal_json','a:1:{i:0;a:1:{s:6:\"status\";b:1;}}',15,4,'','admin/settings/clean-urls/check','Clean URL check','t','',4,'','','',0,''),('admin/settings/imageapi/config','','','user_access','a:1:{i:0;s:19:\"administer imageapi\";}','drupal_get_form','a:1:{i:0;s:25:\"imageapi_gd_settings_form\";}',15,4,'admin/settings/imageapi','admin/settings/imageapi','Configure','t','',128,'','','',0,''),('admin/settings/actions/configure','','','user_access','a:1:{i:0;s:18:\"administer actions\";}','drupal_get_form','a:1:{i:0;s:24:\"system_actions_configure\";}',15,4,'','admin/settings/actions/configure','Configure an advanced action','t','',4,'','','',0,''),('admin/build/panels/dashboard','','','user_access','a:1:{i:0;s:20:\"use panels dashboard\";}','panels_admin_page','a:0:{}',15,4,'admin/build/panels','admin/build/panels','Dashboard','t','',136,'','','',-10,'sites/all/modules/panels/includes/callbacks.inc'),('admin/settings/date-time/lookup','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','system_date_time_lookup','a:0:{}',15,4,'','admin/settings/date-time/lookup','Date and time lookup','t','',4,'','','',0,'modules/system/system.admin.inc'),('admin/user/roles/edit','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','drupal_get_form','a:1:{i:0;s:15:\"user_admin_role\";}',15,4,'','admin/user/roles/edit','Edit role','t','',4,'','','',0,'modules/user/user.admin.inc'),('admin/user/rules/edit','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','user_admin_access_edit','a:0:{}',15,4,'','admin/user/rules/edit','Edit rule','t','',4,'','','',0,'modules/user/user.admin.inc'),('admin/content/types/export','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:1:{i:0;s:24:\"content_copy_export_form\";}',15,4,'admin/content/types','admin/content/types','Export','t','',128,'','','',3,''),('admin/content/types/fields','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','content_fields_list','a:0:{}',15,4,'admin/content/types','admin/content/types','Fields','t','',128,'','','',0,'sites/all/modules/cck/includes/content.admin.inc'),('admin/content/types/import','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:1:{i:0;s:24:\"content_copy_import_form\";}',15,4,'admin/content/types','admin/content/types','Import','t','',128,'','','',4,''),('admin/build/pages/list','','','user_access','a:1:{i:0;s:16:\"use page manager\";}','page_manager_list_page','a:0:{}',15,4,'admin/build/pages','admin/build/pages','List','t','',136,'','','',-10,'sites/all/modules/ctools/page_manager/page_manager.admin.inc'),('admin/reports/updates/list','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','update_status','a:0:{}',15,4,'admin/reports/updates','admin/reports/updates','List','t','',136,'','','',0,'modules/update/update.report.inc'),('admin/reports/updates/check','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','update_manual_status','a:0:{}',15,4,'','admin/reports/updates/check','Manual update check','t','',4,'','','',0,'modules/update/update.fetch.inc'),('admin/reports/status/php','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','system_php','a:0:{}',15,4,'','admin/reports/status/php','PHP','t','',4,'','','',0,'modules/system/system.admin.inc'),('admin/content/node-settings/rebuild','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','drupal_get_form','a:1:{i:0;s:30:\"node_configure_rebuild_confirm\";}',15,4,'','admin/content/node-settings/rebuild','Rebuild permissions','t','',4,'','','',0,'modules/node/node.admin.inc'),('admin/reports/status/run-cron','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','system_run_cron','a:0:{}',15,4,'','admin/reports/status/run-cron','Run cron','t','',4,'','','',0,'modules/system/system.admin.inc'),('admin/reports/status/sql','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','system_sql','a:0:{}',15,4,'','admin/reports/status/sql','SQL','t','',4,'','','',0,'modules/system/system.admin.inc'),('admin/build/mini-panels/settings','','','user_access','a:1:{i:0;s:18:\"create mini panels\";}','panels_mini_settings','a:0:{}',15,4,'admin/build/mini-panels','admin/build/mini-panels','Settings','t','',128,'','','',0,'sites/all/modules/panels/panels_mini/panels_mini.admin.inc'),('admin/build/block/add','','','user_access','a:1:{i:0;s:17:\"administer blocks\";}','drupal_get_form','a:1:{i:0;s:20:\"block_add_block_form\";}',15,4,'admin/build/block','admin/build/block','Add block','t','',128,'','','',0,'modules/block/block.admin.inc'),('admin/content/types/add','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:1:{i:0;s:14:\"node_type_form\";}',15,4,'admin/content/types','admin/content/types','Add content type','t','',128,'','','',0,'modules/node/content_types.inc'),('admin/build/pages/argument','','','user_access','a:1:{i:0;s:23:\"administer page manager\";}','page_manager_page_subtask_argument_ajax','a:0:{}',15,4,'','admin/build/pages/argument','','t','',4,'','','',0,'sites/all/modules/ctools/page_manager/plugins/tasks/page.admin.inc'),('admin/build/block/delete','','','user_access','a:1:{i:0;s:17:\"administer blocks\";}','drupal_get_form','a:1:{i:0;s:16:\"block_box_delete\";}',15,4,'','admin/build/block/delete','Delete block','t','',4,'','','',0,'modules/block/block.admin.inc'),('admin/settings/filters/delete','','','user_access','a:1:{i:0;s:18:\"administer filters\";}','drupal_get_form','a:1:{i:0;s:19:\"filter_admin_delete\";}',15,4,'','admin/settings/filters/delete','Delete input format','t','',4,'','','',0,'modules/filter/filter.admin.inc'),('admin/user/rules/delete','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','drupal_get_form','a:1:{i:0;s:32:\"user_admin_access_delete_confirm\";}',15,4,'','admin/user/rules/delete','Delete rule','t','',4,'','','',0,'modules/user/user.admin.inc'),('node/%/devel/load','a:1:{i:1;s:9:\"node_load\";}','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_load_object','a:2:{i:0;i:1;i:1;s:4:\"node\";}',11,4,'node/%/devel','node/%','Dev load','t','',136,'','','',0,''),('user/%/devel/load','a:1:{i:1;s:9:\"user_load\";}','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_load_object','a:2:{i:0;i:1;i:1;s:4:\"user\";}',11,4,'user/%/devel','user/%','Dev load','t','',136,'','','',0,''),('admin/content/taxonomy/%','a:1:{i:3;s:24:\"taxonomy_vocabulary_load\";}','','user_access','a:1:{i:0;s:19:\"administer taxonomy\";}','drupal_get_form','a:2:{i:0;s:23:\"taxonomy_overview_terms\";i:1;i:3;}',14,4,'','admin/content/taxonomy/%','List terms','t','',4,'','','',0,'modules/taxonomy/taxonomy.admin.inc'),('admin/reports/updates/settings','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:15:\"update_settings\";}',15,4,'admin/reports/updates','admin/reports/updates','Settings','t','',128,'','','',0,'modules/update/update.settings.inc'),('devel/variable/edit/%','a:1:{i:3;N;}','','user_access','a:1:{i:0;s:24:\"access devel information\";}','drupal_get_form','a:2:{i:0;s:19:\"devel_variable_edit\";i:1;i:3;}',14,4,'','devel/variable/edit/%','Variable editor','t','',4,'','','',0,''),('admin/build/views/add','','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_add_page','a:0:{}',15,4,'admin/build/views','admin/build/views','Add','t','',128,'','','',0,'sites/all/modules/views/includes/admin.inc'),('admin/build/menu/add','','','user_access','a:1:{i:0;s:15:\"administer menu\";}','drupal_get_form','a:2:{i:0;s:14:\"menu_edit_menu\";i:1;s:3:\"add\";}',15,4,'admin/build/menu','admin/build/menu','Add menu','t','',128,'','','',0,'modules/menu/menu.admin.inc'),('admin/build/block/configure','','','user_access','a:1:{i:0;s:17:\"administer blocks\";}','drupal_get_form','a:1:{i:0;s:21:\"block_admin_configure\";}',15,4,'','admin/build/block/configure','Configure block','t','',4,'','','',0,'modules/block/block.admin.inc'),('admin/reports/event/%','a:1:{i:3;N;}','','user_access','a:1:{i:0;s:19:\"access site reports\";}','dblog_event','a:1:{i:0;i:3;}',14,4,'','admin/reports/event/%','Details','t','',4,'','','',0,'modules/dblog/dblog.admin.inc'),('node/%/devel/render','a:1:{i:1;s:9:\"node_load\";}','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_render_object','a:2:{i:0;s:4:\"node\";i:1;i:1;}',11,4,'node/%/devel','node/%','Dev render','t','',128,'','','',10,''),('user/%/devel/render','a:1:{i:1;s:9:\"user_load\";}','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_render_object','a:2:{i:0;s:4:\"user\";i:1;i:1;}',11,4,'user/%/devel','user/%','Dev render','t','',128,'','','',10,''),('admin/build/views/list','','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_list_views','a:0:{}',15,4,'admin/build/views','admin/build/views','List','t','',136,'','','',-1,'sites/all/modules/views/includes/admin.inc'),('admin/content/node-type/page','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:14:\"node_type_form\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:4:\"page\";s:4:\"name\";s:4:\"Page\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:296:\"A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:4:\"page\";}}',15,4,'','admin/content/node-type/page','Page','t','',4,'','','',0,'modules/node/content_types.inc'),('admin/build/menu/settings','','','user_access','a:1:{i:0;s:15:\"administer menu\";}','drupal_get_form','a:1:{i:0;s:14:\"menu_configure\";}',15,4,'admin/build/menu','admin/build/menu','Settings','t','',128,'','','',5,'modules/menu/menu.admin.inc'),('admin/build/panels/settings','','','user_access','a:1:{i:0;s:20:\"use panels dashboard\";}','drupal_get_form','a:1:{i:0;s:26:\"panels_admin_settings_page\";}',15,4,'admin/build/panels','admin/build/panels','Settings','t','',128,'','','',0,'sites/all/modules/panels/includes/callbacks.inc'),('admin/content/node-type/story','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:14:\"node_type_form\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:5:\"story\";s:4:\"name\";s:5:\"Story\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:392:\"A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site\'s initial home page, and provides the ability to post comments.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:5:\"story\";}}',15,4,'','admin/content/node-type/story','Story','t','',4,'','','',0,'modules/node/content_types.inc'),('admin/build/views1/convert','','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_convert1','a:1:{i:0;i:4;}',15,4,'','admin/build/views1/convert','Convert view','t','',4,'','','',0,'sites/all/modules/views/includes/convert.inc'),('admin/build/pages/add','','','user_access','a:1:{i:0;s:23:\"administer page manager\";}','page_manager_page_add_subtask','a:0:{}',15,4,'admin/build/pages','admin/build/pages','Add custom page','t','',128,'','','',0,'sites/all/modules/ctools/page_manager/plugins/tasks/page.admin.inc'),('admin/settings/logging/dblog','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:20:\"dblog_admin_settings\";}',15,4,'','admin/settings/logging/dblog','Database logging','t','',6,'','Settings for logging to the Drupal database logs. This is the most common method for small to medium sites on shared hosting. The logs are viewable from the admin pages.','',0,'modules/dblog/dblog.admin.inc'),('admin/settings/date-time/configure','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:25:\"system_date_time_settings\";}',15,4,'admin/settings/date-time','admin/settings/date-time','Date and time','t','',136,'','Settings for how Drupal displays date and time, as well as the system\'s default timezone.','',0,'modules/system/system.admin.inc'),('admin/build/views1/delete','','','user_access','a:1:{i:0;s:16:\"administer views\";}','drupal_get_form','a:2:{i:0;s:24:\"views_ui_delete1_confirm\";i:1;i:4;}',15,4,'','admin/build/views1/delete','Delete view','t','',4,'','','',0,'sites/all/modules/views/includes/convert.inc'),('admin/settings/date-time/formats','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:26:\"date_api_date_formats_form\";}',15,4,'admin/settings/date-time','admin/settings/date-time','Formats','t','',128,'','Allow users to configure date formats','',1,'sites/all/modules/date/date_api.admin.inc'),('admin/build/views/import','','','views_import_access','a:1:{i:0;s:16:\"administer views\";}','drupal_get_form','a:1:{i:0;s:20:\"views_ui_import_page\";}',15,4,'admin/build/views','admin/build/views','Import','t','',128,'','','',0,'sites/all/modules/views/includes/admin.inc'),('admin/build/pages/import','','','ctools_access_multiperm','a:2:{i:0;s:23:\"administer page manager\";i:1;s:28:\"use PHP for block visibility\";}','drupal_get_form','a:2:{i:0;s:32:\"page_manager_page_import_subtask\";i:1;s:4:\"page\";}',15,4,'admin/build/pages','admin/build/pages','Import page','t','',128,'','','',0,'sites/all/modules/ctools/page_manager/plugins/tasks/page.admin.inc'),('admin/build/views/tools','','','user_access','a:1:{i:0;s:16:\"administer views\";}','drupal_get_form','a:1:{i:0;s:20:\"views_ui_admin_tools\";}',15,4,'admin/build/views','admin/build/views','Tools','t','',128,'','','',0,'sites/all/modules/views/includes/admin.inc'),('admin/settings/filters/%','a:1:{i:3;s:18:\"filter_format_load\";}','','user_access','a:1:{i:0;s:18:\"administer filters\";}','filter_admin_format_page','a:1:{i:0;i:3;}',14,4,'','admin/settings/filters/%','','filter_admin_format_title','a:1:{i:0;i:3;}',4,'','','',0,'modules/filter/filter.admin.inc'),('admin/build/ctools-content/add','','','ctools_export_ui_task_access','a:2:{i:0;s:21:\"ctools_custom_content\";i:1;s:3:\"add\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:21:\"ctools_custom_content\";i:1;s:3:\"add\";}',15,4,'admin/build/ctools-content','admin/build/ctools-content','Add','t','',128,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/mini-panels/add','','','ctools_export_ui_task_access','a:2:{i:0;s:11:\"panels_mini\";i:1;s:3:\"add\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:11:\"panels_mini\";i:1;s:3:\"add\";}',15,4,'admin/build/mini-panels','admin/build/mini-panels','Add','t','',128,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/stylizer/add','','','ctools_export_ui_task_access','a:2:{i:0;s:8:\"stylizer\";i:1;s:3:\"add\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:8:\"stylizer\";i:1;s:3:\"add\";}',15,4,'admin/build/stylizer','admin/build/stylizer','Add','t','',128,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/menu-customize/%','a:1:{i:3;s:9:\"menu_load\";}','','user_access','a:1:{i:0;s:15:\"administer menu\";}','drupal_get_form','a:2:{i:0;s:18:\"menu_overview_form\";i:1;i:3;}',14,4,'','admin/build/menu-customize/%','Customize menu','menu_overview_title','a:1:{i:0;i:3;}',4,'','','',0,'modules/menu/menu.admin.inc'),('admin/build/ctools-content/import','','','ctools_export_ui_task_access','a:2:{i:0;s:21:\"ctools_custom_content\";i:1;s:6:\"import\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:21:\"ctools_custom_content\";i:1;s:6:\"import\";}',15,4,'admin/build/ctools-content','admin/build/ctools-content','Import','t','',128,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/mini-panels/import','','','ctools_export_ui_task_access','a:2:{i:0;s:11:\"panels_mini\";i:1;s:6:\"import\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:11:\"panels_mini\";i:1;s:6:\"import\";}',15,4,'admin/build/mini-panels','admin/build/mini-panels','Import','t','',128,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/stylizer/import','','','ctools_export_ui_task_access','a:2:{i:0;s:8:\"stylizer\";i:1;s:6:\"import\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:8:\"stylizer\";i:1;s:6:\"import\";}',15,4,'admin/build/stylizer','admin/build/stylizer','Import','t','',128,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/ctools-content/list','','','ctools_export_ui_task_access','a:2:{i:0;s:21:\"ctools_custom_content\";i:1;s:4:\"list\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:21:\"ctools_custom_content\";i:1;s:4:\"list\";}',15,4,'admin/build/ctools-content','admin/build/ctools-content','List','t','',136,'','','',-10,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/mini-panels/list','','','ctools_export_ui_task_access','a:2:{i:0;s:11:\"panels_mini\";i:1;s:4:\"list\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:11:\"panels_mini\";i:1;s:4:\"list\";}',15,4,'admin/build/mini-panels','admin/build/mini-panels','List','t','',136,'','','',-10,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/stylizer/list','','','ctools_export_ui_task_access','a:2:{i:0;s:8:\"stylizer\";i:1;s:4:\"list\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:8:\"stylizer\";i:1;s:4:\"list\";}',15,4,'admin/build/stylizer','admin/build/stylizer','List','t','',136,'','','',-10,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/panels/layouts','','','ctools_export_ui_task_access','a:2:{i:0;s:14:\"panels_layouts\";i:1;s:4:\"list\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:14:\"panels_layouts\";i:1;s:4:\"list\";}',15,4,'admin/build/panels','admin/build/panels','Layouts','t','',128,'','Add, edit or delete custom content layouts.','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/content/node-type/page/edit','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:14:\"node_type_form\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:4:\"page\";s:4:\"name\";s:4:\"Page\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:296:\"A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:4:\"page\";}}',31,5,'admin/content/node-type/page','admin/content/node-type/page','Edit','t','',136,'','','',0,'modules/node/content_types.inc'),('admin/content/node-type/story/edit','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:14:\"node_type_form\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:5:\"story\";s:4:\"name\";s:5:\"Story\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:392:\"A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site\'s initial home page, and provides the ability to post comments.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:5:\"story\";}}',31,5,'admin/content/node-type/story','admin/content/node-type/story','Edit','t','',136,'','','',0,'modules/node/content_types.inc'),('admin/build/themes/settings/global','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:21:\"system_theme_settings\";}',31,5,'admin/build/themes/settings','admin/build/themes','Global settings','t','',136,'','','',-1,'modules/system/system.admin.inc'),('admin/content/taxonomy/%/list','a:1:{i:3;s:24:\"taxonomy_vocabulary_load\";}','','user_access','a:1:{i:0;s:19:\"administer taxonomy\";}','drupal_get_form','a:2:{i:0;s:23:\"taxonomy_overview_terms\";i:1;i:3;}',29,5,'admin/content/taxonomy/%','admin/content/taxonomy/%','List','t','',136,'','','',-10,'modules/taxonomy/taxonomy.admin.inc'),('admin/settings/filters/%/edit','a:1:{i:3;s:18:\"filter_format_load\";}','','user_access','a:1:{i:0;s:18:\"administer filters\";}','filter_admin_format_page','a:1:{i:0;i:3;}',29,5,'admin/settings/filters/%','admin/settings/filters/%','Edit','t','',136,'','','',0,'modules/filter/filter.admin.inc'),('admin/build/modules/list/confirm','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:14:\"system_modules\";}',31,5,'','admin/build/modules/list/confirm','List','t','',4,'','','',0,'modules/system/system.admin.inc'),('admin/build/menu-customize/%/list','a:1:{i:3;s:9:\"menu_load\";}','','user_access','a:1:{i:0;s:15:\"administer menu\";}','drupal_get_form','a:2:{i:0;s:18:\"menu_overview_form\";i:1;i:3;}',29,5,'admin/build/menu-customize/%','admin/build/menu-customize/%','List items','t','',136,'','','',-10,'modules/menu/menu.admin.inc'),('admin/build/modules/uninstall/confirm','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:24:\"system_modules_uninstall\";}',31,5,'','admin/build/modules/uninstall/confirm','Uninstall','t','',4,'','','',0,'modules/system/system.admin.inc'),('admin/build/views/tools/export','','','user_access','a:1:{i:0;s:18:\"use views exporter\";}','views_export_export','a:0:{}',31,5,'admin/build/views/tools','admin/build/views','Bulk export','t','',128,'','','',0,''),('admin/settings/date-time/formats/lookup','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','date_api_date_time_lookup','a:0:{}',31,5,'','admin/settings/date-time/formats/lookup','Date and time lookup','t','',4,'','','',0,''),('admin/content/node-type/page/delete','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:24:\"node_type_delete_confirm\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:4:\"page\";s:4:\"name\";s:4:\"Page\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:296:\"A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:4:\"page\";}}',31,5,'','admin/content/node-type/page/delete','Delete','t','',4,'','','',0,'modules/node/content_types.inc'),('admin/build/themes/settings/precision','','','_system_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:41:\"sites/all/themes/precision/precision.info\";s:4:\"name\";s:9:\"precision\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:15:{s:4:\"name\";s:9:\"Precision\";s:11:\"description\";s:42:\"Base theme suitable for Panels Everywhere.\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:11:\"stylesheets\";a:1:{s:3:\"all\";a:2:{s:13:\"css/reset.css\";s:40:\"sites/all/themes/precision/css/reset.css\";s:17:\"css/precision.css\";s:44:\"sites/all/themes/precision/css/precision.css\";}}s:7:\"plugins\";a:1:{s:6:\"panels\";a:2:{s:7:\"layouts\";s:15:\"plugins/layouts\";s:6:\"styles\";s:14:\"plugins/styles\";}}s:3:\"api\";a:1:{s:6:\"panels\";a:1:{s:6:\"styles\";a:1:{s:7:\"version\";s:1:\"2\";}}}s:7:\"version\";s:14:\"6.x-1.0-alpha1\";s:7:\"project\";s:9:\"precision\";s:9:\"datestamp\";s:10:\"1282733807\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:36:\"sites/all/themes/precision/script.js\";}s:10:\"screenshot\";s:41:\"sites/all/themes/precision/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:2:{s:13:\"css/reset.css\";s:40:\"sites/all/themes/precision/css/reset.css\";s:17:\"css/precision.css\";s:44:\"sites/all/themes/precision/css/precision.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','drupal_get_form','a:2:{i:0;s:21:\"system_theme_settings\";i:1;s:9:\"precision\";}',31,5,'admin/build/themes/settings','admin/build/themes','Precision','t','',128,'','','',0,'modules/system/system.admin.inc'),('ctools/context/ajax/access/add','','','user_access','a:1:{i:0;s:14:\"access content\";}','ctools_access_ajax_add','a:0:{}',31,5,'','ctools/context/ajax/access/add','','t','',4,'','','',0,'sites/all/modules/ctools/includes/context-access-admin.inc'),('ctools/context/ajax/access/delete','','','user_access','a:1:{i:0;s:14:\"access content\";}','ctools_access_ajax_delete','a:0:{}',31,5,'','ctools/context/ajax/access/delete','','t','',4,'','','',0,'sites/all/modules/ctools/includes/context-access-admin.inc'),('admin/build/themes/settings/bluemarine','','','_system_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:33:\"themes/bluemarine/bluemarine.info\";s:4:\"name\";s:10:\"bluemarine\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:10:\"Bluemarine\";s:11:\"description\";s:66:\"Table-based multi-column theme with a marine and ash color scheme.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/bluemarine/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:27:\"themes/bluemarine/script.js\";}s:10:\"screenshot\";s:32:\"themes/bluemarine/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/bluemarine/style.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','drupal_get_form','a:2:{i:0;s:21:\"system_theme_settings\";i:1;s:10:\"bluemarine\";}',31,5,'admin/build/themes/settings','admin/build/themes','Bluemarine','t','',128,'','','',0,'modules/system/system.admin.inc'),('admin/build/themes/settings/chameleon','','','_system_themes_access','a:1:{i:0;O:8:\"stdClass\":11:{s:8:\"filename\";s:31:\"themes/chameleon/chameleon.info\";s:4:\"name\";s:9:\"chameleon\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:32:\"themes/chameleon/chameleon.theme\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:12:{s:4:\"name\";s:9:\"Chameleon\";s:11:\"description\";s:42:\"Minimalist tabled theme with light colors.\";s:7:\"regions\";a:2:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";}s:8:\"features\";a:4:{i:0;s:4:\"logo\";i:1;s:7:\"favicon\";i:2;s:4:\"name\";i:3;s:6:\"slogan\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:2:{s:9:\"style.css\";s:26:\"themes/chameleon/style.css\";s:10:\"common.css\";s:27:\"themes/chameleon/common.css\";}}s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"scripts\";a:1:{s:9:\"script.js\";s:26:\"themes/chameleon/script.js\";}s:10:\"screenshot\";s:31:\"themes/chameleon/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:2:{s:9:\"style.css\";s:26:\"themes/chameleon/style.css\";s:10:\"common.css\";s:27:\"themes/chameleon/common.css\";}}}}','drupal_get_form','a:2:{i:0;s:21:\"system_theme_settings\";i:1;s:9:\"chameleon\";}',31,5,'admin/build/themes/settings','admin/build/themes','Chameleon','t','',128,'','','',0,'modules/system/system.admin.inc'),('ctools/context/ajax/access/configure','','','user_access','a:1:{i:0;s:14:\"access content\";}','ctools_access_ajax_edit','a:0:{}',31,5,'','ctools/context/ajax/access/configure','','t','',4,'','','',0,'sites/all/modules/ctools/includes/context-access-admin.inc'),('admin/content/node-type/story/delete','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:24:\"node_type_delete_confirm\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:5:\"story\";s:4:\"name\";s:5:\"Story\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:392:\"A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site\'s initial home page, and provides the ability to post comments.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:5:\"story\";}}',31,5,'','admin/content/node-type/story/delete','Delete','t','',4,'','','',0,'modules/node/content_types.inc'),('admin/content/taxonomy/edit/term','','','user_access','a:1:{i:0;s:19:\"administer taxonomy\";}','taxonomy_admin_term_edit','a:0:{}',31,5,'','admin/content/taxonomy/edit/term','Edit term','t','',4,'','','',0,'modules/taxonomy/taxonomy.admin.inc'),('admin/build/themes/settings/garland','','','_system_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:27:\"themes/garland/garland.info\";s:4:\"name\";s:7:\"garland\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"1\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:7:\"Garland\";s:11:\"description\";s:66:\"Tableless, recolorable, multi-column, fluid width theme (default).\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:11:\"stylesheets\";a:2:{s:3:\"all\";a:1:{s:9:\"style.css\";s:24:\"themes/garland/style.css\";}s:5:\"print\";a:1:{s:9:\"print.css\";s:24:\"themes/garland/print.css\";}}s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:24:\"themes/garland/script.js\";}s:10:\"screenshot\";s:29:\"themes/garland/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:2:{s:3:\"all\";a:1:{s:9:\"style.css\";s:24:\"themes/garland/style.css\";}s:5:\"print\";a:1:{s:9:\"print.css\";s:24:\"themes/garland/print.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','drupal_get_form','a:2:{i:0;s:21:\"system_theme_settings\";i:1;s:7:\"garland\";}',31,5,'admin/build/themes/settings','admin/build/themes','Garland','t','',128,'','','',0,'modules/system/system.admin.inc'),('admin/build/block/list/js','','','user_access','a:1:{i:0;s:17:\"administer blocks\";}','block_admin_display_js','a:0:{}',31,5,'','admin/build/block/list/js','JavaScript List Form','t','',4,'','','',0,'modules/block/block.admin.inc'),('admin/build/themes/settings/marvin','','','_system_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:35:\"themes/chameleon/marvin/marvin.info\";s:4:\"name\";s:6:\"marvin\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:0:\"\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:6:\"Marvin\";s:11:\"description\";s:31:\"Boxy tabled theme in all grays.\";s:7:\"regions\";a:2:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";}s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:10:\"base theme\";s:9:\"chameleon\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:33:\"themes/chameleon/marvin/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:33:\"themes/chameleon/marvin/script.js\";}s:10:\"screenshot\";s:38:\"themes/chameleon/marvin/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:33:\"themes/chameleon/marvin/style.css\";}}s:10:\"base_theme\";s:9:\"chameleon\";}}','drupal_get_form','a:2:{i:0;s:21:\"system_theme_settings\";i:1;s:6:\"marvin\";}',31,5,'admin/build/themes/settings','admin/build/themes','Marvin','t','',128,'','','',0,'modules/system/system.admin.inc'),('admin/build/panels/settings/panels-mini','','','user_access','a:1:{i:0;s:18:\"create mini panels\";}','panels_mini_settings','a:0:{}',31,5,'admin/build/panels/settings','admin/build/panels','Mini panels','t','',128,'','','',0,'sites/all/modules/panels/panels_mini/panels_mini.admin.inc'),('admin/build/themes/settings/minnelli','','','_system_themes_access','a:1:{i:0;O:8:\"stdClass\":13:{s:8:\"filename\";s:37:\"themes/garland/minnelli/minnelli.info\";s:4:\"name\";s:8:\"minnelli\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:14:{s:4:\"name\";s:8:\"Minnelli\";s:11:\"description\";s:56:\"Tableless, recolorable, multi-column, fixed width theme.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:10:\"base theme\";s:7:\"garland\";s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:12:\"minnelli.css\";s:36:\"themes/garland/minnelli/minnelli.css\";}}s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:33:\"themes/garland/minnelli/script.js\";}s:10:\"screenshot\";s:38:\"themes/garland/minnelli/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";s:6:\"engine\";s:11:\"phptemplate\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:12:\"minnelli.css\";s:36:\"themes/garland/minnelli/minnelli.css\";}}s:6:\"engine\";s:11:\"phptemplate\";s:10:\"base_theme\";s:7:\"garland\";}}','drupal_get_form','a:2:{i:0;s:21:\"system_theme_settings\";i:1;s:8:\"minnelli\";}',31,5,'admin/build/themes/settings','admin/build/themes','Minnelli','t','',128,'','','',0,'modules/system/system.admin.inc'),('admin/build/panels/settings/panel-page','','','user_access','a:1:{i:0;s:20:\"use panels dashboard\";}','panels_admin_panel_context_page','a:0:{}',31,5,'admin/build/panels/settings','admin/build/panels','Panel pages','t','',128,'','','',-10,'sites/all/modules/panels/includes/callbacks.inc'),('admin/build/themes/settings/pushbutton','','','_system_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:33:\"themes/pushbutton/pushbutton.info\";s:4:\"name\";s:10:\"pushbutton\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:10:\"Pushbutton\";s:11:\"description\";s:52:\"Tabled, multi-column theme in blue and orange tones.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/pushbutton/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:27:\"themes/pushbutton/script.js\";}s:10:\"screenshot\";s:32:\"themes/pushbutton/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/pushbutton/style.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','drupal_get_form','a:2:{i:0;s:21:\"system_theme_settings\";i:1;s:10:\"pushbutton\";}',31,5,'admin/build/themes/settings','admin/build/themes','Pushbutton','t','',128,'','','',0,'modules/system/system.admin.inc'),('filefield/ahah/%/%/%','a:3:{i:2;N;i:3;N;i:4;N;}','','filefield_edit_access','a:2:{i:0;i:2;i:1;i:3;}','filefield_js','a:3:{i:0;i:2;i:1;i:3;i:2;i:4;}',24,5,'','filefield/ahah/%/%/%','','t','',4,'','','',0,''),('admin/settings/imageapi/config/imageapi_gd','','','user_access','a:1:{i:0;s:19:\"administer imageapi\";}','drupal_get_form','a:1:{i:0;s:25:\"imageapi_gd_settings_form\";}',31,5,'admin/settings/imageapi/config','admin/settings/imageapi','@name','t','a:1:{s:5:\"@name\";s:12:\"ImageAPI GD2\";}',136,'','','',0,''),('admin/build/menu-customize/%/add','a:1:{i:3;s:9:\"menu_load\";}','','user_access','a:1:{i:0;s:15:\"administer menu\";}','drupal_get_form','a:4:{i:0;s:14:\"menu_edit_item\";i:1;s:3:\"add\";i:2;N;i:3;i:3;}',29,5,'admin/build/menu-customize/%','admin/build/menu-customize/%','Add item','t','',128,'','','',0,'modules/menu/menu.admin.inc'),('admin/build/block/list/bluemarine','','','_block_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:33:\"themes/bluemarine/bluemarine.info\";s:4:\"name\";s:10:\"bluemarine\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:10:\"Bluemarine\";s:11:\"description\";s:66:\"Table-based multi-column theme with a marine and ash color scheme.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/bluemarine/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:27:\"themes/bluemarine/script.js\";}s:10:\"screenshot\";s:32:\"themes/bluemarine/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/bluemarine/style.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','block_admin_display','a:1:{i:0;s:10:\"bluemarine\";}',31,5,'admin/build/block/list','admin/build/block','Bluemarine','t','',128,'','','',0,'modules/block/block.admin.inc'),('admin/build/block/list/chameleon','','','_block_themes_access','a:1:{i:0;O:8:\"stdClass\":11:{s:8:\"filename\";s:31:\"themes/chameleon/chameleon.info\";s:4:\"name\";s:9:\"chameleon\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:32:\"themes/chameleon/chameleon.theme\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:12:{s:4:\"name\";s:9:\"Chameleon\";s:11:\"description\";s:42:\"Minimalist tabled theme with light colors.\";s:7:\"regions\";a:2:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";}s:8:\"features\";a:4:{i:0;s:4:\"logo\";i:1;s:7:\"favicon\";i:2;s:4:\"name\";i:3;s:6:\"slogan\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:2:{s:9:\"style.css\";s:26:\"themes/chameleon/style.css\";s:10:\"common.css\";s:27:\"themes/chameleon/common.css\";}}s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"scripts\";a:1:{s:9:\"script.js\";s:26:\"themes/chameleon/script.js\";}s:10:\"screenshot\";s:31:\"themes/chameleon/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:2:{s:9:\"style.css\";s:26:\"themes/chameleon/style.css\";s:10:\"common.css\";s:27:\"themes/chameleon/common.css\";}}}}','block_admin_display','a:1:{i:0;s:9:\"chameleon\";}',31,5,'admin/build/block/list','admin/build/block','Chameleon','t','',128,'','','',0,'modules/block/block.admin.inc'),('admin/settings/filters/%/configure','a:1:{i:3;s:18:\"filter_format_load\";}','','user_access','a:1:{i:0;s:18:\"administer filters\";}','filter_admin_configure_page','a:1:{i:0;i:3;}',29,5,'admin/settings/filters/%','admin/settings/filters/%','Configure','t','',128,'','','',1,'modules/filter/filter.admin.inc'),('admin/settings/date-time/formats/custom','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','date_api_configure_custom_date_formats','a:0:{}',31,5,'admin/settings/date-time/formats','admin/settings/date-time','Custom formats','t','',128,'','Allow users to configure custom date formats.','',2,'sites/all/modules/date/date_api.admin.inc'),('admin/settings/actions/delete/%','a:1:{i:4;s:12:\"actions_load\";}','','user_access','a:1:{i:0;s:18:\"administer actions\";}','drupal_get_form','a:2:{i:0;s:26:\"system_actions_delete_form\";i:1;i:4;}',30,5,'','admin/settings/actions/delete/%','Delete action','t','',4,'','Delete an action.','',0,''),('admin/build/menu-customize/%/delete','a:1:{i:3;s:9:\"menu_load\";}','','user_access','a:1:{i:0;s:15:\"administer menu\";}','menu_delete_menu_page','a:1:{i:0;i:3;}',29,5,'','admin/build/menu-customize/%/delete','Delete menu','t','',4,'','','',0,'modules/menu/menu.admin.inc'),('admin/content/node-type/page/display','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:29:\"content_display_overview_form\";i:1;s:4:\"page\";}',31,5,'admin/content/node-type/page','admin/content/node-type/page','Display fields','t','',128,'','','',2,'sites/all/modules/cck/includes/content.admin.inc'),('admin/content/node-type/story/display','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:29:\"content_display_overview_form\";i:1;s:5:\"story\";}',31,5,'admin/content/node-type/story','admin/content/node-type/story','Display fields','t','',128,'','','',2,'sites/all/modules/cck/includes/content.admin.inc'),('admin/build/pages/edit/%','a:1:{i:4;s:23:\"page_manager_cache_load\";}','','user_access','a:1:{i:0;s:16:\"use page manager\";}','page_manager_edit_page','a:1:{i:0;i:4;}',30,5,'','admin/build/pages/edit/%','Edit','t','',4,'','','',0,'sites/all/modules/ctools/page_manager/page_manager.admin.inc'),('admin/build/menu-customize/%/edit','a:1:{i:3;s:9:\"menu_load\";}','','user_access','a:1:{i:0;s:15:\"administer menu\";}','drupal_get_form','a:3:{i:0;s:14:\"menu_edit_menu\";i:1;s:4:\"edit\";i:2;i:3;}',29,5,'admin/build/menu-customize/%','admin/build/menu-customize/%','Edit menu','t','',128,'','','',0,'modules/menu/menu.admin.inc'),('admin/views/ajax/autocomplete/tag','','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_autocomplete_tag','a:0:{}',31,5,'','admin/views/ajax/autocomplete/tag','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc'),('admin/build/panels/settings/everywhere','','','user_access','a:1:{i:0;s:23:\"administer page manager\";}','drupal_get_form','a:1:{i:0;s:31:\"panels_everywhere_settings_page\";}',31,5,'admin/build/panels/settings','admin/build/panels','Everywhere','t','',128,'','','',0,'sites/all/modules/panels_everywhere/panels_everywhere.admin.inc'),('admin/build/block/list/garland','','','_block_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:27:\"themes/garland/garland.info\";s:4:\"name\";s:7:\"garland\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"1\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:7:\"Garland\";s:11:\"description\";s:66:\"Tableless, recolorable, multi-column, fluid width theme (default).\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:11:\"stylesheets\";a:2:{s:3:\"all\";a:1:{s:9:\"style.css\";s:24:\"themes/garland/style.css\";}s:5:\"print\";a:1:{s:9:\"print.css\";s:24:\"themes/garland/print.css\";}}s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:24:\"themes/garland/script.js\";}s:10:\"screenshot\";s:29:\"themes/garland/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:2:{s:3:\"all\";a:1:{s:9:\"style.css\";s:24:\"themes/garland/style.css\";}s:5:\"print\";a:1:{s:9:\"print.css\";s:24:\"themes/garland/print.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','block_admin_display','a:1:{i:0;s:7:\"garland\";}',31,5,'admin/build/block/list','admin/build/block','Garland','t','',136,'','','',-10,'modules/block/block.admin.inc'),('admin/build/panels/settings/general','','','user_access','a:1:{i:0;s:23:\"administer page manager\";}','drupal_get_form','a:1:{i:0;s:26:\"panels_admin_settings_page\";}',31,5,'admin/build/panels/settings','admin/build/panels','General','t','',136,'','','',-10,'sites/all/modules/panels/includes/callbacks.inc'),('admin/content/node-type/page/fields','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:27:\"content_field_overview_form\";i:1;s:4:\"page\";}',31,5,'admin/content/node-type/page','admin/content/node-type/page','Manage fields','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc'),('admin/content/node-type/story/fields','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:27:\"content_field_overview_form\";i:1;s:5:\"story\";}',31,5,'admin/content/node-type/story','admin/content/node-type/story','Manage fields','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc'),('admin/build/block/list/marvin','','','_block_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:35:\"themes/chameleon/marvin/marvin.info\";s:4:\"name\";s:6:\"marvin\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:0:\"\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:6:\"Marvin\";s:11:\"description\";s:31:\"Boxy tabled theme in all grays.\";s:7:\"regions\";a:2:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";}s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:10:\"base theme\";s:9:\"chameleon\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:33:\"themes/chameleon/marvin/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:33:\"themes/chameleon/marvin/script.js\";}s:10:\"screenshot\";s:38:\"themes/chameleon/marvin/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:33:\"themes/chameleon/marvin/style.css\";}}s:10:\"base_theme\";s:9:\"chameleon\";}}','block_admin_display','a:1:{i:0;s:6:\"marvin\";}',31,5,'admin/build/block/list','admin/build/block','Marvin','t','',128,'','','',0,'modules/block/block.admin.inc'),('admin/build/block/list/minnelli','','','_block_themes_access','a:1:{i:0;O:8:\"stdClass\":13:{s:8:\"filename\";s:37:\"themes/garland/minnelli/minnelli.info\";s:4:\"name\";s:8:\"minnelli\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:14:{s:4:\"name\";s:8:\"Minnelli\";s:11:\"description\";s:56:\"Tableless, recolorable, multi-column, fixed width theme.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:10:\"base theme\";s:7:\"garland\";s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:12:\"minnelli.css\";s:36:\"themes/garland/minnelli/minnelli.css\";}}s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:33:\"themes/garland/minnelli/script.js\";}s:10:\"screenshot\";s:38:\"themes/garland/minnelli/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";s:6:\"engine\";s:11:\"phptemplate\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:12:\"minnelli.css\";s:36:\"themes/garland/minnelli/minnelli.css\";}}s:6:\"engine\";s:11:\"phptemplate\";s:10:\"base_theme\";s:7:\"garland\";}}','block_admin_display','a:1:{i:0;s:8:\"minnelli\";}',31,5,'admin/build/block/list','admin/build/block','Minnelli','t','',128,'','','',0,'modules/block/block.admin.inc'),('admin/build/block/list/precision','','','_block_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:41:\"sites/all/themes/precision/precision.info\";s:4:\"name\";s:9:\"precision\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:15:{s:4:\"name\";s:9:\"Precision\";s:11:\"description\";s:42:\"Base theme suitable for Panels Everywhere.\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:11:\"stylesheets\";a:1:{s:3:\"all\";a:2:{s:13:\"css/reset.css\";s:40:\"sites/all/themes/precision/css/reset.css\";s:17:\"css/precision.css\";s:44:\"sites/all/themes/precision/css/precision.css\";}}s:7:\"plugins\";a:1:{s:6:\"panels\";a:2:{s:7:\"layouts\";s:15:\"plugins/layouts\";s:6:\"styles\";s:14:\"plugins/styles\";}}s:3:\"api\";a:1:{s:6:\"panels\";a:1:{s:6:\"styles\";a:1:{s:7:\"version\";s:1:\"2\";}}}s:7:\"version\";s:14:\"6.x-1.0-alpha1\";s:7:\"project\";s:9:\"precision\";s:9:\"datestamp\";s:10:\"1282733807\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:36:\"sites/all/themes/precision/script.js\";}s:10:\"screenshot\";s:41:\"sites/all/themes/precision/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:2:{s:13:\"css/reset.css\";s:40:\"sites/all/themes/precision/css/reset.css\";s:17:\"css/precision.css\";s:44:\"sites/all/themes/precision/css/precision.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','block_admin_display','a:1:{i:0;s:9:\"precision\";}',31,5,'admin/build/block/list','admin/build/block','Precision','t','',128,'','','',0,'modules/block/block.admin.inc'),('admin/build/block/list/pushbutton','','','_block_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:33:\"themes/pushbutton/pushbutton.info\";s:4:\"name\";s:10:\"pushbutton\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:10:\"Pushbutton\";s:11:\"description\";s:52:\"Tabled, multi-column theme in blue and orange tones.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/pushbutton/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:27:\"themes/pushbutton/script.js\";}s:10:\"screenshot\";s:32:\"themes/pushbutton/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/pushbutton/style.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','block_admin_display','a:1:{i:0;s:10:\"pushbutton\";}',31,5,'admin/build/block/list','admin/build/block','Pushbutton','t','',128,'','','',0,'modules/block/block.admin.inc'),('admin/settings/filters/%/order','a:1:{i:3;s:18:\"filter_format_load\";}','','user_access','a:1:{i:0;s:18:\"administer filters\";}','filter_admin_order_page','a:1:{i:0;i:3;}',29,5,'admin/settings/filters/%','admin/settings/filters/%','Rearrange','t','',128,'','','',2,'modules/filter/filter.admin.inc'),('user/reset/%/%/%','a:3:{i:2;N;i:3;N;i:4;N;}','','1','a:0:{}','drupal_get_form','a:4:{i:0;s:15:\"user_pass_reset\";i:1;i:2;i:2;i:3;i:3;i:4;}',24,5,'','user/reset/%/%/%','Reset password','t','',4,'','','',0,'modules/user/user.pages.inc'),('admin/views/ajax/autocomplete/user','','','user_access','a:1:{i:0;s:14:\"access content\";}','views_ajax_autocomplete_user','a:0:{}',31,5,'','admin/views/ajax/autocomplete/user','','t','',4,'','','',0,'sites/all/modules/views/includes/ajax.inc'),('admin/settings/date-time/formats/add','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:30:\"date_api_add_date_formats_form\";}',31,5,'admin/settings/date-time/formats','admin/settings/date-time','Add format','t','',128,'','Allow users to add additional date formats.','',3,'sites/all/modules/date/date_api.admin.inc'),('admin/content/taxonomy/add/vocabulary','','','user_access','a:1:{i:0;s:19:\"administer taxonomy\";}','drupal_get_form','a:1:{i:0;s:24:\"taxonomy_form_vocabulary\";}',31,5,'admin/content/taxonomy','admin/content/taxonomy','Add vocabulary','t','',128,'','','',0,'modules/taxonomy/taxonomy.admin.inc'),('admin/settings/date-time/formats/configure','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:26:\"date_api_date_formats_form\";}',31,5,'admin/settings/date-time/formats','admin/settings/date-time','Configure','t','',136,'','Allow users to configure date formats','',1,'sites/all/modules/date/date_api.admin.inc'),('admin/settings/date-time/delete/%','a:1:{i:4;N;}','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:2:{i:0;s:32:\"date_api_delete_format_type_form\";i:1;i:4;}',30,5,'','admin/settings/date-time/delete/%','Delete date format type','t','',4,'','Allow users to delete a configured date format type.','',0,'sites/all/modules/date/date_api.admin.inc'),('node/%/revisions/%/view','a:2:{i:1;a:1:{s:9:\"node_load\";a:1:{i:0;i:3;}}i:3;N;}','','_node_revision_access','a:1:{i:0;i:1;}','node_show','a:3:{i:0;i:1;i:1;N;i:2;b:1;}',21,5,'','node/%/revisions/%/view','Revisions','t','',4,'','','',0,''),('admin/build/views/tools/basic','','','user_access','a:1:{i:0;s:16:\"administer views\";}','drupal_get_form','a:1:{i:0;s:20:\"views_ui_admin_tools\";}',31,5,'admin/build/views/tools','admin/build/views','Basic','t','',136,'','','',-10,'sites/all/modules/views/includes/admin.inc'),('admin/build/views/break-lock/%','a:1:{i:4;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','drupal_get_form','a:2:{i:0;s:27:\"views_ui_break_lock_confirm\";i:1;i:4;}',30,5,'','admin/build/views/break-lock/%','Delete view','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc'),('admin/build/views/delete/%','a:1:{i:4;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','drupal_get_form','a:2:{i:0;s:23:\"views_ui_delete_confirm\";i:1;i:4;}',30,5,'','admin/build/views/delete/%','Delete view','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc'),('admin/build/views/export/%','a:1:{i:4;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','drupal_get_form','a:2:{i:0;s:20:\"views_ui_export_page\";i:1;i:4;}',30,5,'','admin/build/views/export/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc'),('admin/build/views/clone/%','a:1:{i:4;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_clone_page','a:1:{i:0;i:4;}',30,5,'','admin/build/views/clone/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc'),('admin/build/views/disable/%','a:1:{i:4;s:21:\"views_ui_default_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_disable_page','a:1:{i:0;i:4;}',30,5,'','admin/build/views/disable/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc'),('admin/build/views/enable/%','a:1:{i:4;s:21:\"views_ui_default_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_enable_page','a:1:{i:0;i:4;}',30,5,'','admin/build/views/enable/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc'),('admin/build/views/edit/%','a:1:{i:4;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_edit_page','a:1:{i:0;i:4;}',30,5,'admin/build/views','admin/build/views','Edit','t','',128,'','','',0,'sites/all/modules/views/includes/admin.inc'),('admin/build/views/tools/convert','','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_admin_convert','a:0:{}',31,5,'admin/build/views/tools','admin/build/views','Convert','t','',128,'','Convert stored Views 1 views.','',1,'sites/all/modules/views/includes/convert.inc'),('admin/build/panels/layouts/add-flexible','','','ctools_export_ui_task_access','a:2:{i:0;s:14:\"panels_layouts\";i:1;s:3:\"add\";}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:3:\"add\";i:2;s:8:\"flexible\";}',31,5,'admin/build/panels/layouts','admin/build/panels','Add flexible layout','t','',128,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('node/%/revisions/%/delete','a:2:{i:1;a:1:{s:9:\"node_load\";a:1:{i:0;i:3;}}i:3;N;}','','_node_revision_access','a:2:{i:0;i:1;i:1;s:6:\"delete\";}','drupal_get_form','a:2:{i:0;s:28:\"node_revision_delete_confirm\";i:1;i:1;}',21,5,'','node/%/revisions/%/delete','Delete earlier revision','t','',4,'','','',0,'modules/node/node.pages.inc'),('admin/build/panels/layouts/import','','','ctools_export_ui_task_access','a:2:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"import\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"import\";}',31,5,'admin/build/panels/layouts','admin/build/panels','Import','t','',128,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/panels/layouts/list','','','ctools_export_ui_task_access','a:2:{i:0;s:14:\"panels_layouts\";i:1;s:4:\"list\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:14:\"panels_layouts\";i:1;s:4:\"list\";}',31,5,'admin/build/panels/layouts','admin/build/panels','List','t','',136,'','','',-10,'sites/all/modules/ctools/includes/export-ui.inc'),('node/%/revisions/%/revert','a:2:{i:1;a:1:{s:9:\"node_load\";a:1:{i:0;i:3;}}i:3;N;}','','_node_revision_access','a:2:{i:0;i:1;i:1;s:6:\"update\";}','drupal_get_form','a:2:{i:0;s:28:\"node_revision_revert_confirm\";i:1;i:1;}',21,5,'','node/%/revisions/%/revert','Revert to earlier revision','t','',4,'','','',0,'modules/node/node.pages.inc'),('admin/build/ctools-content/list/%','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:21:\"ctools_custom_content\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:21:\"ctools_custom_content\";i:1;s:4:\"edit\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:21:\"ctools_custom_content\";i:1;s:4:\"edit\";i:2;i:4;}',30,5,'','admin/build/ctools-content/list/%','','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/mini-panels/list/%','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:11:\"panels_mini\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:11:\"panels_mini\";i:1;s:4:\"edit\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:11:\"panels_mini\";i:1;s:4:\"edit\";i:2;i:4;}',30,5,'','admin/build/mini-panels/list/%','','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/stylizer/list/%','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:8:\"stylizer\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:8:\"stylizer\";i:1;s:4:\"edit\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:8:\"stylizer\";i:1;s:4:\"edit\";i:2;i:4;}',30,5,'','admin/build/stylizer/list/%','','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/content/node-type/page/display/basic','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:4:\"page\";i:2;s:5:\"basic\";}',63,6,'admin/content/node-type/page/display','admin/content/node-type/page','Basic','t','',136,'','','',0,'sites/all/modules/cck/includes/content.admin.inc'),('admin/content/node-type/story/display/basic','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:5:\"story\";i:2;s:5:\"basic\";}',63,6,'admin/content/node-type/story/display','admin/content/node-type/story','Basic','t','',136,'','','',0,'sites/all/modules/cck/includes/content.admin.inc'),('admin/content/node-type/page/display/rss','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:4:\"page\";i:2;s:3:\"rss\";}',63,6,'admin/content/node-type/page/display','admin/content/node-type/page','RSS','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc'),('admin/content/node-type/story/display/rss','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:5:\"story\";i:2;s:3:\"rss\";}',63,6,'admin/content/node-type/story/display','admin/content/node-type/story','RSS','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc'),('admin/content/node-type/page/display/token','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:4:\"page\";i:2;s:5:\"token\";}',63,6,'admin/content/node-type/page/display','admin/content/node-type/page','Token','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc'),('admin/build/views/tools/export/results','','','user_access','a:1:{i:0;s:18:\"use views exporter\";}','views_export_export','a:0:{}',63,6,'','admin/build/views/tools/export/results','','t','',4,'','','',0,''),('admin/content/node-type/story/display/token','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:5:\"story\";i:2;s:5:\"token\";}',63,6,'admin/content/node-type/story/display','admin/content/node-type/story','Token','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc'),('admin/content/node-type/page/groups/%','a:1:{i:5;N;}','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:26:\"fieldgroup_group_edit_form\";i:1;s:4:\"page\";i:2;i:5;}',62,6,'','admin/content/node-type/page/groups/%','Edit group','t','',4,'','','',0,''),('admin/content/node-type/story/groups/%','a:1:{i:5;N;}','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:26:\"fieldgroup_group_edit_form\";i:1;s:5:\"story\";i:2;i:5;}',62,6,'','admin/content/node-type/story/groups/%','Edit group','t','',4,'','','',0,''),('admin/build/menu/item/%/delete','a:1:{i:4;s:14:\"menu_link_load\";}','','user_access','a:1:{i:0;s:15:\"administer menu\";}','menu_item_delete_page','a:1:{i:0;i:4;}',61,6,'','admin/build/menu/item/%/delete','Delete menu item','t','',4,'','','',0,'modules/menu/menu.admin.inc'),('admin/build/menu/item/%/edit','a:1:{i:4;s:14:\"menu_link_load\";}','','user_access','a:1:{i:0;s:15:\"administer menu\";}','drupal_get_form','a:4:{i:0;s:14:\"menu_edit_item\";i:1;s:4:\"edit\";i:2;i:4;i:3;N;}',61,6,'','admin/build/menu/item/%/edit','Edit menu item','t','',4,'','','',0,'modules/menu/menu.admin.inc'),('admin/build/pages/%/operation/%','a:2:{i:3;s:14:\"ctools_js_load\";i:5;s:23:\"page_manager_cache_load\";}','','user_access','a:1:{i:0;s:16:\"use page manager\";}','page_manager_edit_page_operation','a:2:{i:0;i:3;i:1;i:5;}',58,6,'','admin/build/pages/%/operation/%','','t','',4,'','','',0,'sites/all/modules/ctools/page_manager/page_manager.admin.inc'),('admin/build/pages/%/enable/%','a:2:{i:3;s:14:\"ctools_js_load\";i:5;s:23:\"page_manager_cache_load\";}','','user_access','a:1:{i:0;s:16:\"use page manager\";}','page_manager_enable_page','a:3:{i:0;b:0;i:1;i:3;i:2;i:5;}',58,6,'','admin/build/pages/%/enable/%','','t','',4,'','','',0,'sites/all/modules/ctools/page_manager/page_manager.admin.inc'),('admin/build/pages/%/disable/%','a:2:{i:3;s:14:\"ctools_js_load\";i:5;s:23:\"page_manager_cache_load\";}','','user_access','a:1:{i:0;s:16:\"use page manager\";}','page_manager_enable_page','a:3:{i:0;b:1;i:1;i:3;i:2;i:5;}',58,6,'','admin/build/pages/%/disable/%','','t','',4,'','','',0,'sites/all/modules/ctools/page_manager/page_manager.admin.inc'),('admin/content/taxonomy/edit/vocabulary/%','a:1:{i:5;s:24:\"taxonomy_vocabulary_load\";}','','user_access','a:1:{i:0;s:19:\"administer taxonomy\";}','taxonomy_admin_vocabulary_edit','a:1:{i:0;i:5;}',62,6,'','admin/content/taxonomy/edit/vocabulary/%','Edit vocabulary','t','',4,'','','',0,'modules/taxonomy/taxonomy.admin.inc'),('admin/build/menu/item/%/reset','a:1:{i:4;s:14:\"menu_link_load\";}','','user_access','a:1:{i:0;s:15:\"administer menu\";}','drupal_get_form','a:2:{i:0;s:23:\"menu_reset_item_confirm\";i:1;i:4;}',61,6,'','admin/build/menu/item/%/reset','Reset menu item','t','',4,'','','',0,'modules/menu/menu.admin.inc'),('admin/build/views/%/add-display/%','a:2:{i:3;s:16:\"views_ui_js_load\";i:5;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_add_display','a:2:{i:0;i:3;i:1;i:5;}',58,6,'','admin/build/views/%/add-display/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc'),('admin/build/views/%/%/%','a:3:{i:3;s:16:\"views_ui_js_load\";i:4;N;i:5;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_ajax_form','a:3:{i:0;i:3;i:1;i:4;i:2;i:5;}',56,6,'','admin/build/views/%/%/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc'),('admin/build/views/%/analyze/%','a:2:{i:3;s:16:\"views_ui_js_load\";i:5;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_analyze_view','a:2:{i:0;i:3;i:1;i:5;}',58,6,'','admin/build/views/%/analyze/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc'),('admin/build/views/%/details/%','a:2:{i:3;s:16:\"views_ui_js_load\";i:5;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_edit_details','a:2:{i:0;i:3;i:1;i:5;}',58,6,'','admin/build/views/%/details/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc'),('admin/build/views/%/preview/%','a:2:{i:3;s:16:\"views_ui_js_load\";i:5;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_preview','a:2:{i:0;i:3;i:1;i:5;}',58,6,'','admin/build/views/%/preview/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc'),('admin/content/taxonomy/%/add/term','a:1:{i:3;s:24:\"taxonomy_vocabulary_load\";}','','user_access','a:1:{i:0;s:19:\"administer taxonomy\";}','taxonomy_add_term_page','a:1:{i:0;i:3;}',59,6,'admin/content/taxonomy/%','admin/content/taxonomy/%','Add term','t','',128,'','','',0,'modules/taxonomy/taxonomy.admin.inc'),('admin/settings/date-time/formats/delete/%','a:1:{i:5;N;}','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:2:{i:0;s:27:\"date_api_delete_format_form\";i:1;i:5;}',62,6,'','admin/settings/date-time/formats/delete/%','Delete date format','t','',4,'','Allow users to delete a configured date format.','',0,'sites/all/modules/date/date_api.admin.inc'),('admin/build/panels/layouts/list/%','a:1:{i:5;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:14:\"panels_layouts\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:4:\"edit\";i:2;i:5;}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:4:\"edit\";i:2;i:5;}',62,6,'','admin/build/panels/layouts/list/%','','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/ctools-content/list/%/clone','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:21:\"ctools_custom_content\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:21:\"ctools_custom_content\";i:1;s:5:\"clone\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:21:\"ctools_custom_content\";i:1;s:5:\"clone\";i:2;i:4;}',61,6,'','admin/build/ctools-content/list/%/clone','Clone','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/mini-panels/list/%/clone','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:11:\"panels_mini\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:11:\"panels_mini\";i:1;s:5:\"clone\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:11:\"panels_mini\";i:1;s:5:\"clone\";i:2;i:4;}',61,6,'','admin/build/mini-panels/list/%/clone','Clone','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/stylizer/list/%/clone','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:8:\"stylizer\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:8:\"stylizer\";i:1;s:5:\"clone\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:8:\"stylizer\";i:1;s:5:\"clone\";i:2;i:4;}',61,6,'','admin/build/stylizer/list/%/clone','Clone','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/ctools-content/list/%/delete','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:21:\"ctools_custom_content\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:21:\"ctools_custom_content\";i:1;s:6:\"delete\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:21:\"ctools_custom_content\";i:1;s:6:\"delete\";i:2;i:4;}',61,6,'','admin/build/ctools-content/list/%/delete','Delete','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/mini-panels/list/%/delete','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:11:\"panels_mini\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:11:\"panels_mini\";i:1;s:6:\"delete\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:11:\"panels_mini\";i:1;s:6:\"delete\";i:2;i:4;}',61,6,'','admin/build/mini-panels/list/%/delete','Delete','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/stylizer/list/%/delete','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:8:\"stylizer\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:8:\"stylizer\";i:1;s:6:\"delete\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:8:\"stylizer\";i:1;s:6:\"delete\";i:2;i:4;}',61,6,'','admin/build/stylizer/list/%/delete','Delete','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/ctools-content/list/%/disable','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:21:\"ctools_custom_content\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:21:\"ctools_custom_content\";i:1;s:7:\"disable\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:21:\"ctools_custom_content\";i:1;s:7:\"disable\";i:2;i:4;}',61,6,'','admin/build/ctools-content/list/%/disable','Disable','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/mini-panels/list/%/disable','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:11:\"panels_mini\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:11:\"panels_mini\";i:1;s:7:\"disable\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:11:\"panels_mini\";i:1;s:7:\"disable\";i:2;i:4;}',61,6,'','admin/build/mini-panels/list/%/disable','Disable','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/stylizer/list/%/disable','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:8:\"stylizer\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:8:\"stylizer\";i:1;s:7:\"disable\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:8:\"stylizer\";i:1;s:7:\"disable\";i:2;i:4;}',61,6,'','admin/build/stylizer/list/%/disable','Disable','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/ctools-content/list/%/edit','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:21:\"ctools_custom_content\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:21:\"ctools_custom_content\";i:1;s:4:\"edit\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:21:\"ctools_custom_content\";i:1;s:4:\"edit\";i:2;i:4;}',61,6,'admin/build/ctools-content/list/%','admin/build/ctools-content/list/%','Edit','t','',136,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/mini-panels/list/%/edit','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:11:\"panels_mini\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:11:\"panels_mini\";i:1;s:4:\"edit\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:11:\"panels_mini\";i:1;s:4:\"edit\";i:2;i:4;}',61,6,'admin/build/mini-panels/list/%','admin/build/mini-panels/list/%','Edit','t','',136,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/stylizer/list/%/edit','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:8:\"stylizer\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:8:\"stylizer\";i:1;s:4:\"edit\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:8:\"stylizer\";i:1;s:4:\"edit\";i:2;i:4;}',61,6,'admin/build/stylizer/list/%','admin/build/stylizer/list/%','Edit','t','',136,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/ctools-content/list/%/enable','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:21:\"ctools_custom_content\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:21:\"ctools_custom_content\";i:1;s:6:\"enable\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:21:\"ctools_custom_content\";i:1;s:6:\"enable\";i:2;i:4;}',61,6,'','admin/build/ctools-content/list/%/enable','Enable','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/mini-panels/list/%/enable','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:11:\"panels_mini\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:11:\"panels_mini\";i:1;s:6:\"enable\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:11:\"panels_mini\";i:1;s:6:\"enable\";i:2;i:4;}',61,6,'','admin/build/mini-panels/list/%/enable','Enable','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/stylizer/list/%/enable','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:8:\"stylizer\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:8:\"stylizer\";i:1;s:6:\"enable\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:8:\"stylizer\";i:1;s:6:\"enable\";i:2;i:4;}',61,6,'','admin/build/stylizer/list/%/enable','Enable','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/ctools-content/list/%/export','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:21:\"ctools_custom_content\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:21:\"ctools_custom_content\";i:1;s:6:\"export\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:21:\"ctools_custom_content\";i:1;s:6:\"export\";i:2;i:4;}',61,6,'admin/build/ctools-content/list/%','admin/build/ctools-content/list/%','Export','t','',128,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/mini-panels/list/%/export','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:11:\"panels_mini\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:11:\"panels_mini\";i:1;s:6:\"export\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:11:\"panels_mini\";i:1;s:6:\"export\";i:2;i:4;}',61,6,'admin/build/mini-panels/list/%','admin/build/mini-panels/list/%','Export','t','',128,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/stylizer/list/%/export','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:8:\"stylizer\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:8:\"stylizer\";i:1;s:6:\"export\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:8:\"stylizer\";i:1;s:6:\"export\";i:2;i:4;}',61,6,'admin/build/stylizer/list/%','admin/build/stylizer/list/%','Export','t','',128,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/ctools-content/list/%/revert','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:21:\"ctools_custom_content\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:21:\"ctools_custom_content\";i:1;s:6:\"revert\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:21:\"ctools_custom_content\";i:1;s:6:\"delete\";i:2;i:4;}',61,6,'','admin/build/ctools-content/list/%/revert','Revert','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/mini-panels/list/%/revert','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:11:\"panels_mini\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:11:\"panels_mini\";i:1;s:6:\"revert\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:11:\"panels_mini\";i:1;s:6:\"delete\";i:2;i:4;}',61,6,'','admin/build/mini-panels/list/%/revert','Revert','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/stylizer/list/%/revert','a:1:{i:4;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:8:\"stylizer\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:8:\"stylizer\";i:1;s:6:\"revert\";i:2;i:4;}','ctools_export_ui_switcher_page','a:3:{i:0;s:8:\"stylizer\";i:1;s:6:\"delete\";i:2;i:4;}',61,6,'','admin/build/stylizer/list/%/revert','Revert','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/content/node-type/page/groups/%/remove','a:1:{i:5;N;}','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:23:\"fieldgroup_remove_group\";i:1;s:4:\"page\";i:2;i:5;}',125,7,'','admin/content/node-type/page/groups/%/remove','Edit group','t','',4,'','','',0,''),('admin/content/node-type/story/groups/%/remove','a:1:{i:5;N;}','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:23:\"fieldgroup_remove_group\";i:1;s:5:\"story\";i:2;i:5;}',125,7,'','admin/content/node-type/story/groups/%/remove','Edit group','t','',4,'','','',0,''),('admin/build/panels/layouts/list/%/clone','a:1:{i:5;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:14:\"panels_layouts\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:5:\"clone\";i:2;i:5;}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:5:\"clone\";i:2;i:5;}',125,7,'','admin/build/panels/layouts/list/%/clone','Clone','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/panels/layouts/list/%/delete','a:1:{i:5;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:14:\"panels_layouts\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"delete\";i:2;i:5;}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"delete\";i:2;i:5;}',125,7,'','admin/build/panels/layouts/list/%/delete','Delete','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/panels/layouts/list/%/disable','a:1:{i:5;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:14:\"panels_layouts\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:7:\"disable\";i:2;i:5;}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:7:\"disable\";i:2;i:5;}',125,7,'','admin/build/panels/layouts/list/%/disable','Disable','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/panels/layouts/list/%/edit','a:1:{i:5;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:14:\"panels_layouts\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:4:\"edit\";i:2;i:5;}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:4:\"edit\";i:2;i:5;}',125,7,'admin/build/panels/layouts/list/%','admin/build/panels/layouts/list/%','Edit','t','',136,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/panels/layouts/list/%/enable','a:1:{i:5;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:14:\"panels_layouts\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"enable\";i:2;i:5;}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"enable\";i:2;i:5;}',125,7,'','admin/build/panels/layouts/list/%/enable','Enable','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/panels/layouts/list/%/export','a:1:{i:5;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:14:\"panels_layouts\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"export\";i:2;i:5;}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"export\";i:2;i:5;}',125,7,'admin/build/panels/layouts/list/%','admin/build/panels/layouts/list/%','Export','t','',128,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc'),('admin/build/panels/layouts/list/%/revert','a:1:{i:5;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:14:\"panels_layouts\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"revert\";i:2;i:5;}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"delete\";i:2;i:5;}',125,7,'','admin/build/panels/layouts/list/%/revert','Revert','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc');
/*!40000 ALTER TABLE `menu_router` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node`
--

DROP TABLE IF EXISTS `node`;
CREATE TABLE `node` (
  `nid` int(10) unsigned NOT NULL auto_increment,
  `vid` int(10) unsigned NOT NULL default '0',
  `type` varchar(32) NOT NULL default '',
  `language` varchar(12) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `uid` int(11) NOT NULL default '0',
  `status` int(11) NOT NULL default '1',
  `created` int(11) NOT NULL default '0',
  `changed` int(11) NOT NULL default '0',
  `comment` int(11) NOT NULL default '0',
  `promote` int(11) NOT NULL default '0',
  `moderate` int(11) NOT NULL default '0',
  `sticky` int(11) NOT NULL default '0',
  `tnid` int(10) unsigned NOT NULL default '0',
  `translate` int(11) NOT NULL default '0',
  PRIMARY KEY  (`nid`),
  UNIQUE KEY `vid` (`vid`),
  KEY `node_changed` (`changed`),
  KEY `node_created` (`created`),
  KEY `node_moderate` (`moderate`),
  KEY `node_promote_status` (`promote`,`status`),
  KEY `node_status_type` (`status`,`type`,`nid`),
  KEY `node_title_type` (`title`,`type`(4)),
  KEY `node_type` (`type`(4)),
  KEY `uid` (`uid`),
  KEY `tnid` (`tnid`),
  KEY `translate` (`translate`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `node`
--

LOCK TABLES `node` WRITE;
/*!40000 ALTER TABLE `node` DISABLE KEYS */;
INSERT INTO `node` VALUES (1,1,'story','','Lorem ipsum dolor sit amet',3,1,1284144610,1284144610,2,1,0,0,0,0),(2,2,'story','','Suspendisse potenti',3,1,1284144663,1284144663,2,1,0,0,0,0),(3,3,'story','','Nulla quis posuere elit',3,1,1284144702,1284144702,2,1,0,0,0,0),(4,4,'story','','Ut venenatis convallis tortor...',3,1,1284144757,1284144757,2,1,0,0,0,0),(5,5,'story','','Fusce dictum purus non nunc elementum viverra',3,1,1284144814,1284144814,2,1,0,0,0,0);
/*!40000 ALTER TABLE `node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_access`
--

DROP TABLE IF EXISTS `node_access`;
CREATE TABLE `node_access` (
  `nid` int(10) unsigned NOT NULL default '0',
  `gid` int(10) unsigned NOT NULL default '0',
  `realm` varchar(255) NOT NULL default '',
  `grant_view` tinyint(3) unsigned NOT NULL default '0',
  `grant_update` tinyint(3) unsigned NOT NULL default '0',
  `grant_delete` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`nid`,`gid`,`realm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `node_access`
--

LOCK TABLES `node_access` WRITE;
/*!40000 ALTER TABLE `node_access` DISABLE KEYS */;
INSERT INTO `node_access` VALUES (0,0,'all',1,0,0);
/*!40000 ALTER TABLE `node_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_comment_statistics`
--

DROP TABLE IF EXISTS `node_comment_statistics`;
CREATE TABLE `node_comment_statistics` (
  `nid` int(10) unsigned NOT NULL default '0',
  `last_comment_timestamp` int(11) NOT NULL default '0',
  `last_comment_name` varchar(60) default NULL,
  `last_comment_uid` int(11) NOT NULL default '0',
  `comment_count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`nid`),
  KEY `node_comment_timestamp` (`last_comment_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `node_comment_statistics`
--

LOCK TABLES `node_comment_statistics` WRITE;
/*!40000 ALTER TABLE `node_comment_statistics` DISABLE KEYS */;
INSERT INTO `node_comment_statistics` VALUES (1,1284144610,NULL,3,0),(2,1284144663,NULL,3,0),(3,1284144702,NULL,3,0),(4,1284144757,NULL,3,0),(5,1284144814,NULL,3,0);
/*!40000 ALTER TABLE `node_comment_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_counter`
--

DROP TABLE IF EXISTS `node_counter`;
CREATE TABLE `node_counter` (
  `nid` int(11) NOT NULL default '0',
  `totalcount` bigint(20) unsigned NOT NULL default '0',
  `daycount` mediumint(8) unsigned NOT NULL default '0',
  `timestamp` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `node_counter`
--

LOCK TABLES `node_counter` WRITE;
/*!40000 ALTER TABLE `node_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_revisions`
--

DROP TABLE IF EXISTS `node_revisions`;
CREATE TABLE `node_revisions` (
  `nid` int(10) unsigned NOT NULL default '0',
  `vid` int(10) unsigned NOT NULL auto_increment,
  `uid` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `body` longtext NOT NULL,
  `teaser` longtext NOT NULL,
  `log` longtext NOT NULL,
  `timestamp` int(11) NOT NULL default '0',
  `format` int(11) NOT NULL default '0',
  PRIMARY KEY  (`vid`),
  KEY `nid` (`nid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `node_revisions`
--

LOCK TABLES `node_revisions` WRITE;
/*!40000 ALTER TABLE `node_revisions` DISABLE KEYS */;
INSERT INTO `node_revisions` VALUES (1,1,3,'Lorem ipsum dolor sit amet','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas auctor consequat ante, tempus aliquet libero convallis eget. In sit amet ligula nunc, porttitor commodo enim. Quisque pretium volutpat sollicitudin. Nulla in nulla nisi. Donec condimentum pulvinar purus. Curabitur tempus interdum erat. Vivamus vel massa arcu, in rhoncus eros. Sed fermentum ullamcorper dui, a tincidunt odio pharetra in. Quisque odio nisl, ornare non eleifend vitae, rhoncus sed urna. Vivamus rhoncus cursus tellus a imperdiet. In tincidunt volutpat nibh. Morbi suscipit leo non libero bibendum consequat. Maecenas luctus vestibulum magna eget ultrices. Aenean mi felis, ullamcorper nec ultrices quis, mattis vel orci. Duis euismod fringilla enim et ullamcorper. Proin vel elit libero. In hac habitasse platea dictumst.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas auctor consequat ante, tempus aliquet libero convallis eget. In sit amet ligula nunc, porttitor commodo enim. Quisque pretium volutpat sollicitudin. Nulla in nulla nisi. Donec condimentum pulvinar purus. Curabitur tempus interdum erat. Vivamus vel massa arcu, in rhoncus eros. Sed fermentum ullamcorper dui, a tincidunt odio pharetra in. Quisque odio nisl, ornare non eleifend vitae, rhoncus sed urna. Vivamus rhoncus cursus tellus a imperdiet. In tincidunt volutpat nibh. Morbi suscipit leo non libero bibendum consequat.','',1284144610,1),(2,2,3,'Suspendisse potenti','Suspendisse potenti. Praesent purus enim, molestie et tincidunt quis, venenatis eu quam. Proin id nisl id nisl aliquet lobortis. In nec massa ut est facilisis porttitor. Proin id elit euismod mauris fermentum dictum. Mauris vitae aliquet est. In tortor lectus, vehicula vitae lobortis at, mattis vitae quam. Duis eleifend rutrum elit ac volutpat. Fusce ornare, turpis vitae dignissim sagittis, justo purus semper lacus, sit amet egestas metus orci nec dui. Cras a metus sed elit pharetra pellentesque vel sed lorem. Nam ac enim sed enim facilisis aliquet. Cras a sem et velit mollis posuere. Suspendisse potenti. In hac habitasse platea dictumst. Cras faucibus consequat tellus at tincidunt. Sed lorem est, sagittis at placerat id, euismod sit amet eros. Nam molestie diam commodo sem interdum quis sollicitudin orci varius. Cras pellentesque accumsan nunc vitae mattis. Sed blandit rhoncus arcu, sed fermentum enim egestas sit amet. Suspendisse eros ipsum, bibendum tempor venenatis aliquet, vestibulum sit amet justo.','Suspendisse potenti. Praesent purus enim, molestie et tincidunt quis, venenatis eu quam. Proin id nisl id nisl aliquet lobortis. In nec massa ut est facilisis porttitor. Proin id elit euismod mauris fermentum dictum. Mauris vitae aliquet est. In tortor lectus, vehicula vitae lobortis at, mattis vitae quam. Duis eleifend rutrum elit ac volutpat. Fusce ornare, turpis vitae dignissim sagittis, justo purus semper lacus, sit amet egestas metus orci nec dui. Cras a metus sed elit pharetra pellentesque vel sed lorem. Nam ac enim sed enim facilisis aliquet. Cras a sem et velit mollis posuere.','',1284144663,1),(3,3,3,'Nulla quis posuere elit','Nulla quis posuere elit. Pellentesque commodo rutrum augue, ac interdum orci consectetur in. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus sed metus erat, in adipiscing neque. Integer sagittis malesuada nunc, et porta magna convallis vel. Donec eget lorem urna. Fusce a enim sapien. Maecenas ullamcorper, augue ut consequat vehicula, enim ante faucibus enim, facilisis imperdiet lacus nunc in nulla. Morbi dictum est vitae metus elementum malesuada. Aenean cursus auctor turpis, nec pharetra eros aliquet sed. Integer gravida pharetra aliquam. Donec luctus enim non nunc lacinia euismod. Praesent et nunc ac lorem placerat porta ut vel mauris. Nam sagittis nulla ac tellus vehicula consequat. Phasellus rutrum venenatis ante ac cursus. Integer quis nunc eu justo iaculis suscipit id quis justo. Suspendisse potenti.\r\n','Nulla quis posuere elit. Pellentesque commodo rutrum augue, ac interdum orci consectetur in. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus sed metus erat, in adipiscing neque. Integer sagittis malesuada nunc, et porta magna convallis vel. Donec eget lorem urna. Fusce a enim sapien. Maecenas ullamcorper, augue ut consequat vehicula, enim ante faucibus enim, facilisis imperdiet lacus nunc in nulla. Morbi dictum est vitae metus elementum malesuada. Aenean cursus auctor turpis, nec pharetra eros aliquet sed. Integer gravida pharetra aliquam.','',1284144702,1),(4,4,3,'Ut venenatis convallis tortor...','Ut venenatis convallis tortor, vel congue lorem imperdiet a. Curabitur eget neque quis lectus fringilla convallis et in urna. Nam neque felis, suscipit a placerat dignissim, lobortis vitae lacus. Pellentesque rutrum magna non risus varius mattis. Integer in eros odio, sit amet semper magna. Duis tellus mauris, mollis sed mattis eget, pretium vitae lacus. Sed molestie, tellus volutpat gravida varius, felis enim feugiat leo, nec rhoncus nibh mi non dolor. Aenean aliquet ornare lacus at feugiat. Nunc turpis diam, egestas vitae consequat eget, eleifend sed metus. Phasellus rutrum nisi eu velit tempor sollicitudin. Pellentesque in augue vitae mauris dapibus iaculis varius in augue. Ut rhoncus lobortis felis, in mollis lectus laoreet eget. Nunc facilisis tincidunt quam ac egestas.\r\n','Ut venenatis convallis tortor, vel congue lorem imperdiet a. Curabitur eget neque quis lectus fringilla convallis et in urna. Nam neque felis, suscipit a placerat dignissim, lobortis vitae lacus. Pellentesque rutrum magna non risus varius mattis. Integer in eros odio, sit amet semper magna. Duis tellus mauris, mollis sed mattis eget, pretium vitae lacus. Sed molestie, tellus volutpat gravida varius, felis enim feugiat leo, nec rhoncus nibh mi non dolor. Aenean aliquet ornare lacus at feugiat. Nunc turpis diam, egestas vitae consequat eget, eleifend sed metus.','',1284144757,1),(5,5,3,'Fusce dictum purus non nunc elementum viverra','Fusce dictum purus non nunc elementum viverra. Praesent mollis sodales mauris, vitae fringilla mauris tincidunt non. Nulla facilisi. Integer blandit auctor felis, imperdiet fringilla nisl iaculis nec. Vivamus id lacus ac justo egestas pharetra. Ut sodales consequat accumsan. Ut scelerisque, sapien eu sollicitudin aliquet, diam ligula tincidunt risus, non suscipit est sem et dolor. Nulla facilisi. Curabitur sed iaculis ante. Proin est nibh, iaculis ut cursus vel, dictum nec diam. Vestibulum malesuada neque in ante porta sed congue massa convallis. Vivamus semper iaculis dui, at fringilla mauris ultrices eu. Pellentesque pellentesque, magna in gravida pellentesque, mauris velit aliquet elit, ac posuere nulla felis quis urna. Curabitur id ligula lobortis tellus congue iaculis. Sed eros mi, commodo vitae commodo nec, interdum quis lorem. Aliquam turpis est, elementum ut hendrerit vitae, pulvinar a dui. Ut id porttitor dolor. Maecenas varius arcu et purus euismod elementum.\r\n','Fusce dictum purus non nunc elementum viverra. Praesent mollis sodales mauris, vitae fringilla mauris tincidunt non. Nulla facilisi. Integer blandit auctor felis, imperdiet fringilla nisl iaculis nec. Vivamus id lacus ac justo egestas pharetra. Ut sodales consequat accumsan. Ut scelerisque, sapien eu sollicitudin aliquet, diam ligula tincidunt risus, non suscipit est sem et dolor. Nulla facilisi. Curabitur sed iaculis ante. Proin est nibh, iaculis ut cursus vel, dictum nec diam. Vestibulum malesuada neque in ante porta sed congue massa convallis.','',1284144814,1);
/*!40000 ALTER TABLE `node_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_type`
--

DROP TABLE IF EXISTS `node_type`;
CREATE TABLE `node_type` (
  `type` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL default '',
  `module` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `help` mediumtext NOT NULL,
  `has_title` tinyint(3) unsigned NOT NULL,
  `title_label` varchar(255) NOT NULL default '',
  `has_body` tinyint(3) unsigned NOT NULL,
  `body_label` varchar(255) NOT NULL default '',
  `min_word_count` smallint(5) unsigned NOT NULL,
  `custom` tinyint(4) NOT NULL default '0',
  `modified` tinyint(4) NOT NULL default '0',
  `locked` tinyint(4) NOT NULL default '0',
  `orig_type` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `node_type`
--

LOCK TABLES `node_type` WRITE;
/*!40000 ALTER TABLE `node_type` DISABLE KEYS */;
INSERT INTO `node_type` VALUES ('page','Page','node','A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.','',1,'Title',1,'Body',0,1,1,0,'page'),('story','Story','node','A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site\'s initial home page, and provides the ability to post comments.','',1,'Title',1,'Body',0,1,1,0,'story');
/*!40000 ALTER TABLE `node_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_manager_handlers`
--

DROP TABLE IF EXISTS `page_manager_handlers`;
CREATE TABLE `page_manager_handlers` (
  `did` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `task` varchar(64) default NULL,
  `subtask` varchar(64) NOT NULL default '',
  `handler` varchar(64) default NULL,
  `weight` int(11) default NULL,
  `conf` longtext NOT NULL,
  PRIMARY KEY  (`did`),
  UNIQUE KEY `name` (`name`),
  KEY `fulltask` (`task`,`subtask`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_manager_handlers`
--

LOCK TABLES `page_manager_handlers` WRITE;
/*!40000 ALTER TABLE `page_manager_handlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_manager_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_manager_pages`
--

DROP TABLE IF EXISTS `page_manager_pages`;
CREATE TABLE `page_manager_pages` (
  `pid` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `task` varchar(64) default 'page',
  `admin_title` varchar(255) default NULL,
  `admin_description` longtext,
  `path` varchar(255) default NULL,
  `access` longtext NOT NULL,
  `menu` longtext NOT NULL,
  `arguments` longtext NOT NULL,
  `conf` longtext NOT NULL,
  PRIMARY KEY  (`pid`),
  UNIQUE KEY `name` (`name`),
  KEY `task` (`task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_manager_pages`
--

LOCK TABLES `page_manager_pages` WRITE;
/*!40000 ALTER TABLE `page_manager_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_manager_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_manager_weights`
--

DROP TABLE IF EXISTS `page_manager_weights`;
CREATE TABLE `page_manager_weights` (
  `name` varchar(255) NOT NULL default '',
  `weight` int(11) default NULL,
  PRIMARY KEY  (`name`),
  KEY `weights` (`name`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_manager_weights`
--

LOCK TABLES `page_manager_weights` WRITE;
/*!40000 ALTER TABLE `page_manager_weights` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_manager_weights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panels_display`
--

DROP TABLE IF EXISTS `panels_display`;
CREATE TABLE `panels_display` (
  `did` int(11) NOT NULL auto_increment,
  `layout` varchar(32) default '',
  `layout_settings` longtext,
  `panel_settings` longtext,
  `cache` text,
  `title` varchar(255) default '',
  `hide_title` tinyint(4) default '0',
  `title_pane` int(11) default '0',
  PRIMARY KEY  (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `panels_display`
--

LOCK TABLES `panels_display` WRITE;
/*!40000 ALTER TABLE `panels_display` DISABLE KEYS */;
/*!40000 ALTER TABLE `panels_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panels_layout`
--

DROP TABLE IF EXISTS `panels_layout`;
CREATE TABLE `panels_layout` (
  `lid` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `admin_title` varchar(255) default NULL,
  `admin_description` longtext,
  `category` varchar(255) default NULL,
  `plugin` varchar(255) default NULL,
  `settings` longtext,
  PRIMARY KEY  (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `panels_layout`
--

LOCK TABLES `panels_layout` WRITE;
/*!40000 ALTER TABLE `panels_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `panels_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panels_mini`
--

DROP TABLE IF EXISTS `panels_mini`;
CREATE TABLE `panels_mini` (
  `pid` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `category` varchar(64) default NULL,
  `did` int(11) default NULL,
  `title` varchar(128) default NULL,
  `admin_description` longtext,
  `requiredcontexts` longtext,
  `contexts` longtext,
  `relationships` longtext,
  PRIMARY KEY  (`pid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `panels_mini`
--

LOCK TABLES `panels_mini` WRITE;
/*!40000 ALTER TABLE `panels_mini` DISABLE KEYS */;
/*!40000 ALTER TABLE `panels_mini` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panels_pane`
--

DROP TABLE IF EXISTS `panels_pane`;
CREATE TABLE `panels_pane` (
  `pid` int(11) NOT NULL auto_increment,
  `did` int(11) NOT NULL default '0',
  `panel` varchar(32) default '',
  `type` varchar(32) default '',
  `subtype` varchar(64) default '',
  `shown` tinyint(4) default '1',
  `access` longtext,
  `configuration` longtext,
  `cache` longtext,
  `style` longtext,
  `css` longtext,
  `extras` longtext,
  `position` smallint(6) default '0',
  PRIMARY KEY  (`pid`),
  KEY `did_idx` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `panels_pane`
--

LOCK TABLES `panels_pane` WRITE;
/*!40000 ALTER TABLE `panels_pane` DISABLE KEYS */;
/*!40000 ALTER TABLE `panels_pane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panels_renderer_pipeline`
--

DROP TABLE IF EXISTS `panels_renderer_pipeline`;
CREATE TABLE `panels_renderer_pipeline` (
  `rpid` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `admin_title` varchar(255) default NULL,
  `admin_description` longtext,
  `weight` smallint(6) default '0',
  `settings` longtext,
  PRIMARY KEY  (`rpid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `panels_renderer_pipeline`
--

LOCK TABLES `panels_renderer_pipeline` WRITE;
/*!40000 ALTER TABLE `panels_renderer_pipeline` DISABLE KEYS */;
/*!40000 ALTER TABLE `panels_renderer_pipeline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `pid` int(11) NOT NULL auto_increment,
  `rid` int(10) unsigned NOT NULL default '0',
  `perm` longtext,
  `tid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`pid`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,1,'access content',0),(2,2,'access comments, access content, post comments, post comments without approval',0),(7,3,'administer blocks, use PHP for block visibility, access comments, post comments, administer comments, post comments without approval, administer filters, administer menu, administer content types, administer nodes, access content, view revisions, revert revisions, delete revisions, create page content, delete own page content, delete any page content, edit own page content, edit any page content, create story content, delete own story content, delete any story content, edit own story content, edit any story content, administer site configuration, access administration pages, administer actions, access site reports, select different theme, administer files, administer taxonomy, administer permissions, administer users, access user profiles, change own username, access administration menu, display drupal links, view advanced help topic, view advanced help popup, view advanced help index, Use PHP input for field settings (dangerous - grant with care), use bulk exporter, administer custom content, administer stylizer, view date repeats, administer imageapi, view all panes, view pane admin links, administer pane visibility, administer pane access, administer advanced pane settings, administer panels layouts, use panels caching features, use panels dashboard, use panels in place editing, create mini panels, administer mini panels, use views exporter, access all views, administer views, access devel information, execute php code, switch users, display source code, use page manager, administer page manager',0);
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `rid` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`rid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'anonymous user'),(2,'authenticated user'),(3,'administrator');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semaphore`
--

DROP TABLE IF EXISTS `semaphore`;
CREATE TABLE `semaphore` (
  `name` varchar(255) NOT NULL default '',
  `value` varchar(255) NOT NULL default '',
  `expire` double NOT NULL,
  PRIMARY KEY  (`name`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semaphore`
--

LOCK TABLES `semaphore` WRITE;
/*!40000 ALTER TABLE `semaphore` DISABLE KEYS */;
/*!40000 ALTER TABLE `semaphore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `uid` int(10) unsigned NOT NULL,
  `sid` varchar(64) NOT NULL default '',
  `hostname` varchar(128) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  `cache` int(11) NOT NULL default '0',
  `session` longtext,
  PRIMARY KEY  (`sid`),
  KEY `timestamp` (`timestamp`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (0,'6c025724de47df3e19b5992ae4ffc10a','201.255.59.64',1284145342,0,''),(3,'7862d3b8657f56653664ec0cc30dc0af','200.49.201.18',1284150926,0,''),(1,'1d22409bcf00098d13f3e20705a274f2','201.255.59.64',1284143611,0,'');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stylizer`
--

DROP TABLE IF EXISTS `stylizer`;
CREATE TABLE `stylizer` (
  `sid` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `admin_title` varchar(255) default NULL,
  `admin_description` longtext,
  `settings` longtext,
  PRIMARY KEY  (`sid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stylizer`
--

LOCK TABLES `stylizer` WRITE;
/*!40000 ALTER TABLE `stylizer` DISABLE KEYS */;
/*!40000 ALTER TABLE `stylizer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system`
--

DROP TABLE IF EXISTS `system`;
CREATE TABLE `system` (
  `filename` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `type` varchar(255) NOT NULL default '',
  `owner` varchar(255) NOT NULL default '',
  `status` int(11) NOT NULL default '0',
  `throttle` tinyint(4) NOT NULL default '0',
  `bootstrap` int(11) NOT NULL default '0',
  `schema_version` smallint(6) NOT NULL default '-1',
  `weight` int(11) NOT NULL default '0',
  `info` text,
  PRIMARY KEY  (`filename`),
  KEY `modules` (`type`(12),`status`,`weight`,`filename`),
  KEY `bootstrap` (`type`(12),`status`,`bootstrap`,`weight`,`filename`),
  KEY `type_name` (`type`(12),`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system`
--

LOCK TABLES `system` WRITE;
/*!40000 ALTER TABLE `system` DISABLE KEYS */;
INSERT INTO `system` VALUES ('sites/all/themes/precision/precision.info','precision','theme','themes/engines/phptemplate/phptemplate.engine',0,0,0,-1,0,'a:15:{s:4:\"name\";s:9:\"Precision\";s:11:\"description\";s:42:\"Base theme suitable for Panels Everywhere.\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:11:\"stylesheets\";a:1:{s:3:\"all\";a:2:{s:13:\"css/reset.css\";s:40:\"sites/all/themes/precision/css/reset.css\";s:17:\"css/precision.css\";s:44:\"sites/all/themes/precision/css/precision.css\";}}s:7:\"plugins\";a:1:{s:6:\"panels\";a:2:{s:7:\"layouts\";s:15:\"plugins/layouts\";s:6:\"styles\";s:14:\"plugins/styles\";}}s:3:\"api\";a:1:{s:6:\"panels\";a:1:{s:6:\"styles\";a:1:{s:7:\"version\";s:1:\"2\";}}}s:7:\"version\";s:14:\"6.x-1.0-alpha1\";s:7:\"project\";s:9:\"precision\";s:9:\"datestamp\";s:10:\"1282733807\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:36:\"sites/all/themes/precision/script.js\";}s:10:\"screenshot\";s:41:\"sites/all/themes/precision/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}'),('themes/pushbutton/pushbutton.info','pushbutton','theme','themes/engines/phptemplate/phptemplate.engine',0,0,0,-1,0,'a:13:{s:4:\"name\";s:10:\"Pushbutton\";s:11:\"description\";s:52:\"Tabled, multi-column theme in blue and orange tones.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/pushbutton/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:27:\"themes/pushbutton/script.js\";}s:10:\"screenshot\";s:32:\"themes/pushbutton/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}'),('themes/garland/minnelli/minnelli.info','minnelli','theme','themes/engines/phptemplate/phptemplate.engine',0,0,0,-1,0,'a:14:{s:4:\"name\";s:8:\"Minnelli\";s:11:\"description\";s:56:\"Tableless, recolorable, multi-column, fixed width theme.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:10:\"base theme\";s:7:\"garland\";s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:12:\"minnelli.css\";s:36:\"themes/garland/minnelli/minnelli.css\";}}s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:33:\"themes/garland/minnelli/script.js\";}s:10:\"screenshot\";s:38:\"themes/garland/minnelli/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";s:6:\"engine\";s:11:\"phptemplate\";}'),('themes/garland/garland.info','garland','theme','themes/engines/phptemplate/phptemplate.engine',1,0,0,-1,0,'a:13:{s:4:\"name\";s:7:\"Garland\";s:11:\"description\";s:66:\"Tableless, recolorable, multi-column, fluid width theme (default).\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:11:\"stylesheets\";a:2:{s:3:\"all\";a:1:{s:9:\"style.css\";s:24:\"themes/garland/style.css\";}s:5:\"print\";a:1:{s:9:\"print.css\";s:24:\"themes/garland/print.css\";}}s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:24:\"themes/garland/script.js\";}s:10:\"screenshot\";s:29:\"themes/garland/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}'),('themes/chameleon/marvin/marvin.info','marvin','theme','',0,0,0,-1,0,'a:13:{s:4:\"name\";s:6:\"Marvin\";s:11:\"description\";s:31:\"Boxy tabled theme in all grays.\";s:7:\"regions\";a:2:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";}s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:10:\"base theme\";s:9:\"chameleon\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:33:\"themes/chameleon/marvin/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:33:\"themes/chameleon/marvin/script.js\";}s:10:\"screenshot\";s:38:\"themes/chameleon/marvin/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}'),('themes/chameleon/chameleon.info','chameleon','theme','themes/chameleon/chameleon.theme',0,0,0,-1,0,'a:12:{s:4:\"name\";s:9:\"Chameleon\";s:11:\"description\";s:42:\"Minimalist tabled theme with light colors.\";s:7:\"regions\";a:2:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";}s:8:\"features\";a:4:{i:0;s:4:\"logo\";i:1;s:7:\"favicon\";i:2;s:4:\"name\";i:3;s:6:\"slogan\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:2:{s:9:\"style.css\";s:26:\"themes/chameleon/style.css\";s:10:\"common.css\";s:27:\"themes/chameleon/common.css\";}}s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"scripts\";a:1:{s:9:\"script.js\";s:26:\"themes/chameleon/script.js\";}s:10:\"screenshot\";s:31:\"themes/chameleon/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}'),('themes/bluemarine/bluemarine.info','bluemarine','theme','themes/engines/phptemplate/phptemplate.engine',0,0,0,-1,0,'a:13:{s:4:\"name\";s:10:\"Bluemarine\";s:11:\"description\";s:66:\"Table-based multi-column theme with a marine and ash color scheme.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/bluemarine/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:27:\"themes/bluemarine/script.js\";}s:10:\"screenshot\";s:32:\"themes/bluemarine/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}'),('modules/system/system.module','system','module','',1,0,0,6055,0,'a:10:{s:4:\"name\";s:6:\"System\";s:11:\"description\";s:54:\"Handles general site configuration for administrators.\";s:7:\"package\";s:15:\"Core - required\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/admin_menu/admin_menu.module','admin_menu','module','',1,0,0,6001,0,'a:10:{s:4:\"name\";s:19:\"Administration menu\";s:11:\"description\";s:123:\"Provides a dropdown menu to most administrative tasks and other common destinations (to users with the proper permissions).\";s:7:\"package\";s:14:\"Administration\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-1.6\";s:7:\"project\";s:10:\"admin_menu\";s:9:\"datestamp\";s:10:\"1283512306\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/adminrole/adminrole.module','adminrole','module','',1,0,0,5100,0,'a:10:{s:4:\"name\";s:10:\"Admin Role\";s:11:\"description\";s:54:\"Automatically assign all permissions to an admin role.\";s:7:\"package\";s:14:\"Administration\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-1.3\";s:7:\"project\";s:9:\"adminrole\";s:9:\"datestamp\";s:10:\"1281809488\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/advanced_help/advanced_help.module','advanced_help','module','',1,0,0,0,0,'a:9:{s:4:\"name\";s:13:\"Advanced help\";s:11:\"description\";s:38:\"Allow advanced help and documentation.\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-1.2\";s:7:\"project\";s:13:\"advanced_help\";s:9:\"datestamp\";s:10:\"1238954409\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/aggregator/aggregator.module','aggregator','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:10:\"Aggregator\";s:11:\"description\";s:57:\"Aggregates syndicated content (RSS, RDF, and Atom feeds).\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/block/block.module','block','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:5:\"Block\";s:11:\"description\";s:62:\"Controls the boxes that are displayed around the main content.\";s:7:\"package\";s:15:\"Core - required\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/blog/blog.module','blog','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:4:\"Blog\";s:11:\"description\";s:69:\"Enables keeping easily and regularly updated user web pages or blogs.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/blogapi/blogapi.module','blogapi','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:8:\"Blog API\";s:11:\"description\";s:79:\"Allows users to post content using applications that support XML-RPC blog APIs.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/book/book.module','book','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:4:\"Book\";s:11:\"description\";s:63:\"Allows users to structure site pages in a hierarchy or outline.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/ctools/bulk_export/bulk_export.module','bulk_export','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:11:\"Bulk Export\";s:11:\"description\";s:67:\"Performs bulk exporting of data objects known about by Chaos tools.\";s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:1:{i:0;s:6:\"ctools\";}s:7:\"package\";s:16:\"Chaos tool suite\";s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:6:\"ctools\";s:9:\"datestamp\";s:10:\"1280189115\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/color/color.module','color','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:5:\"Color\";s:11:\"description\";s:61:\"Allows the user to change the color scheme of certain themes.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/comment/comment.module','comment','module','',1,0,0,6003,0,'a:10:{s:4:\"name\";s:7:\"Comment\";s:11:\"description\";s:57:\"Allows users to comment on and discuss published content.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/contact/contact.module','contact','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:7:\"Contact\";s:11:\"description\";s:61:\"Enables the use of both personal and site-wide contact forms.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/cck/content.module','content','module','',1,0,0,6010,0,'a:10:{s:4:\"name\";s:7:\"Content\";s:11:\"description\";s:50:\"Allows administrators to define new content types.\";s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/cck/modules/content_copy/content_copy.module','content_copy','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:12:\"Content Copy\";s:11:\"description\";s:51:\"Enables ability to import/export field definitions.\";s:12:\"dependencies\";a:1:{i:0;s:7:\"content\";}s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/cck/modules/content_permissions/content_permissions.module','content_permissions','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:19:\"Content Permissions\";s:11:\"description\";s:43:\"Set field-level permissions for CCK fields.\";s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:1:{i:0;s:7:\"content\";}s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/ctools/ctools.module','ctools','module','',1,0,0,6007,0,'a:10:{s:4:\"name\";s:11:\"Chaos tools\";s:11:\"description\";s:46:\"A library of helpful tools by Merlin of Chaos.\";s:4:\"core\";s:3:\"6.x\";s:7:\"package\";s:16:\"Chaos tool suite\";s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:6:\"ctools\";s:9:\"datestamp\";s:10:\"1280189115\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/ctools/ctools_access_ruleset/ctools_access_ruleset.module','ctools_access_ruleset','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:15:\"Custom rulesets\";s:11:\"description\";s:81:\"Create custom, exportable, reusable access rulesets for applications like Panels.\";s:4:\"core\";s:3:\"6.x\";s:7:\"package\";s:16:\"Chaos tool suite\";s:12:\"dependencies\";a:1:{i:0;s:6:\"ctools\";}s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:6:\"ctools\";s:9:\"datestamp\";s:10:\"1280189115\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/ctools/ctools_custom_content/ctools_custom_content.module','ctools_custom_content','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:20:\"Custom content panes\";s:11:\"description\";s:79:\"Create custom, exportable, reusable content panes for applications like Panels.\";s:4:\"core\";s:3:\"6.x\";s:7:\"package\";s:16:\"Chaos tool suite\";s:12:\"dependencies\";a:1:{i:0;s:6:\"ctools\";}s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:6:\"ctools\";s:9:\"datestamp\";s:10:\"1280189115\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/ctools/ctools_plugin_example/ctools_plugin_example.module','ctools_plugin_example','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:35:\"Chaos Tools (CTools) Plugin Example\";s:11:\"description\";s:75:\"Shows how an external module can provide ctools plugins (for Panels, etc.).\";s:7:\"package\";s:16:\"Chaos tool suite\";s:12:\"dependencies\";a:4:{i:0;s:6:\"ctools\";i:1;s:6:\"panels\";i:2;s:12:\"page_manager\";i:3;s:13:\"advanced_help\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:6:\"ctools\";s:9:\"datestamp\";s:10:\"1280189115\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/date/date/date.module','date','module','',1,0,0,6005,0,'a:10:{s:4:\"name\";s:4:\"Date\";s:11:\"description\";s:41:\"Defines CCK date/time fields and widgets.\";s:12:\"dependencies\";a:3:{i:0;s:7:\"content\";i:1;s:8:\"date_api\";i:2;s:13:\"date_timezone\";}s:7:\"package\";s:9:\"Date/Time\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.6\";s:7:\"project\";s:4:\"date\";s:9:\"datestamp\";s:10:\"1281786990\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/date/date_api.module','date_api','module','',1,0,0,6006,0,'a:10:{s:4:\"name\";s:8:\"Date API\";s:11:\"description\";s:45:\"A Date API that can be used by other modules.\";s:7:\"package\";s:9:\"Date/Time\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.6\";s:7:\"project\";s:4:\"date\";s:9:\"datestamp\";s:10:\"1281786990\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/date/date_locale/date_locale.module','date_locale','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:11:\"Date Locale\";s:11:\"description\";s:124:\"Allows the site admin to configure multiple formats for date/time display to tailor dates for a specific locale or audience.\";s:7:\"package\";s:9:\"Date/Time\";s:12:\"dependencies\";a:2:{i:0;s:8:\"date_api\";i:1;s:6:\"locale\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.6\";s:7:\"project\";s:4:\"date\";s:9:\"datestamp\";s:10:\"1281786990\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/date/date_php4/date_php4.module','date_php4','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:9:\"Date PHP4\";s:11:\"description\";s:134:\"Emulate PHP 5.2 date functions in PHP 4.x, PHP 5.0, and PHP 5.1. Required when using the Date API with PHP versions less than PHP 5.2.\";s:7:\"package\";s:9:\"Date/Time\";s:12:\"dependencies\";a:1:{i:0;s:8:\"date_api\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.6\";s:7:\"project\";s:4:\"date\";s:9:\"datestamp\";s:10:\"1281786990\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/date/date_popup/date_popup.module','date_popup','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:10:\"Date Popup\";s:11:\"description\";s:84:\"Enables jquery popup calendars and time entry widgets for selecting dates and times.\";s:12:\"dependencies\";a:2:{i:0;s:8:\"date_api\";i:1;s:13:\"date_timezone\";}s:7:\"package\";s:9:\"Date/Time\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.6\";s:7:\"project\";s:4:\"date\";s:9:\"datestamp\";s:10:\"1281786990\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/date/date_repeat/date_repeat.module','date_repeat','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:15:\"Date Repeat API\";s:11:\"description\";s:73:\"A Date Repeat API to calculate repeating dates and times from iCal rules.\";s:12:\"dependencies\";a:1:{i:0;s:8:\"date_api\";}s:7:\"package\";s:9:\"Date/Time\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.6\";s:7:\"project\";s:4:\"date\";s:9:\"datestamp\";s:10:\"1281786990\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/date/date_timezone/date_timezone.module','date_timezone','module','',1,0,0,5200,0,'a:10:{s:4:\"name\";s:13:\"Date Timezone\";s:11:\"description\";s:111:\"Needed when using Date API. Overrides site and user timezone handling to set timezone names instead of offsets.\";s:7:\"package\";s:9:\"Date/Time\";s:12:\"dependencies\";a:1:{i:0;s:8:\"date_api\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.6\";s:7:\"project\";s:4:\"date\";s:9:\"datestamp\";s:10:\"1281786990\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/date/date_tools/date_tools.module','date_tools','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:10:\"Date Tools\";s:11:\"description\";s:52:\"Tools to import and auto-create dates and calendars.\";s:12:\"dependencies\";a:2:{i:0;s:7:\"content\";i:1;s:4:\"date\";}s:7:\"package\";s:9:\"Date/Time\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.6\";s:7:\"project\";s:4:\"date\";s:9:\"datestamp\";s:10:\"1281786990\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/dblog/dblog.module','dblog','module','',1,0,0,6000,0,'a:10:{s:4:\"name\";s:16:\"Database logging\";s:11:\"description\";s:47:\"Logs and records system events to the database.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/devel/devel.module','devel','module','',1,0,1,6003,88,'a:10:{s:4:\"name\";s:5:\"Devel\";s:11:\"description\";s:52:\"Various blocks, pages, and functions for developers.\";s:7:\"package\";s:11:\"Development\";s:12:\"dependencies\";a:1:{i:0;s:4:\"menu\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:8:\"6.x-1.22\";s:7:\"project\";s:5:\"devel\";s:9:\"datestamp\";s:10:\"1281718291\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/devel/devel_generate.module','devel_generate','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:14:\"Devel generate\";s:11:\"description\";s:48:\"Generate dummy users, nodes, and taxonomy terms.\";s:7:\"package\";s:11:\"Development\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:8:\"6.x-1.22\";s:7:\"project\";s:5:\"devel\";s:9:\"datestamp\";s:10:\"1281718291\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/devel/devel_node_access.module','devel_node_access','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:17:\"Devel node access\";s:11:\"description\";s:67:\"Developer block and page illustrating relevant node_access records.\";s:7:\"package\";s:11:\"Development\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:8:\"6.x-1.22\";s:7:\"project\";s:5:\"devel\";s:9:\"datestamp\";s:10:\"1281718291\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/cck/modules/fieldgroup/fieldgroup.module','fieldgroup','module','',1,0,0,6007,9,'a:10:{s:4:\"name\";s:10:\"Fieldgroup\";s:11:\"description\";s:37:\"Create display groups for CCK fields.\";s:12:\"dependencies\";a:1:{i:0;s:7:\"content\";}s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/filefield/filefield.module','filefield','module','',1,0,0,6104,0,'a:10:{s:4:\"name\";s:9:\"FileField\";s:11:\"description\";s:26:\"Defines a file field type.\";s:12:\"dependencies\";a:1:{i:0;s:7:\"content\";}s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:3:\"php\";s:3:\"5.0\";s:7:\"version\";s:7:\"6.x-3.7\";s:7:\"project\";s:9:\"filefield\";s:9:\"datestamp\";s:10:\"1277943012\";s:10:\"dependents\";a:0:{}}'),('sites/all/modules/filefield/filefield_meta/filefield_meta.module','filefield_meta','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:14:\"FileField Meta\";s:11:\"description\";s:48:\"Add metadata gathering and storage to FileField.\";s:12:\"dependencies\";a:2:{i:0;s:9:\"filefield\";i:1;s:6:\"getid3\";}s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:3:\"php\";s:3:\"5.0\";s:7:\"version\";s:7:\"6.x-3.7\";s:7:\"project\";s:9:\"filefield\";s:9:\"datestamp\";s:10:\"1277943012\";s:10:\"dependents\";a:0:{}}'),('modules/filter/filter.module','filter','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:6:\"Filter\";s:11:\"description\";s:60:\"Handles the filtering of content in preparation for display.\";s:7:\"package\";s:15:\"Core - required\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/forum/forum.module','forum','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:5:\"Forum\";s:11:\"description\";s:50:\"Enables threaded discussions about general topics.\";s:12:\"dependencies\";a:2:{i:0;s:8:\"taxonomy\";i:1;s:7:\"comment\";}s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/help/help.module','help','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:4:\"Help\";s:11:\"description\";s:35:\"Manages the display of online help.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/advanced_help/help_example/help_example.module','help_example','module','',0,0,0,-1,0,'a:9:{s:4:\"name\";s:21:\"Advanced help example\";s:11:\"description\";s:62:\"A example help module to demonstrate the advanced help module.\";s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:1:{i:0;s:13:\"advanced_help\";}s:7:\"version\";s:7:\"6.x-1.2\";s:7:\"project\";s:13:\"advanced_help\";s:9:\"datestamp\";s:10:\"1238954409\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/imageapi/imageapi.module','imageapi','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:8:\"ImageAPI\";s:11:\"description\";s:38:\"ImageAPI supporting multiple toolkits.\";s:7:\"package\";s:10:\"ImageCache\";s:4:\"core\";s:3:\"6.x\";s:3:\"php\";s:3:\"5.1\";s:7:\"version\";s:7:\"6.x-1.8\";s:7:\"project\";s:8:\"imageapi\";s:9:\"datestamp\";s:10:\"1272675611\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}}'),('sites/all/modules/imageapi/imageapi_gd.module','imageapi_gd','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:12:\"ImageAPI GD2\";s:11:\"description\";s:49:\"Uses PHP\'s built-in GD2 image processing support.\";s:7:\"package\";s:10:\"ImageCache\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-1.8\";s:7:\"project\";s:8:\"imageapi\";s:9:\"datestamp\";s:10:\"1272675611\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/imageapi/imageapi_imagemagick.module','imageapi_imagemagick','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:20:\"ImageAPI ImageMagick\";s:11:\"description\";s:33:\"Command Line ImageMagick support.\";s:7:\"package\";s:10:\"ImageCache\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-1.8\";s:7:\"project\";s:8:\"imageapi\";s:9:\"datestamp\";s:10:\"1272675611\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/imagefield/imagefield.module','imagefield','module','',1,0,0,6006,0,'a:10:{s:4:\"name\";s:10:\"ImageField\";s:11:\"description\";s:28:\"Defines an image field type.\";s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:2:{i:0;s:7:\"content\";i:1;s:9:\"filefield\";}s:7:\"package\";s:3:\"CCK\";s:7:\"version\";s:7:\"6.x-3.7\";s:7:\"project\";s:10:\"imagefield\";s:9:\"datestamp\";s:10:\"1277942710\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/locale/locale.module','locale','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:6:\"Locale\";s:11:\"description\";s:119:\"Adds language handling functionality and enables the translation of the user interface to languages other than English.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/menu/menu.module','menu','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:4:\"Menu\";s:11:\"description\";s:60:\"Allows administrators to customize the site navigation menu.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/node/node.module','node','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:4:\"Node\";s:11:\"description\";s:66:\"Allows content to be submitted to the site and displayed on pages.\";s:7:\"package\";s:15:\"Core - required\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/cck/modules/nodereference/nodereference.module','nodereference','module','',1,0,0,6001,0,'a:10:{s:4:\"name\";s:14:\"Node Reference\";s:11:\"description\";s:59:\"Defines a field type for referencing one node from another.\";s:12:\"dependencies\";a:3:{i:0;s:7:\"content\";i:1;s:4:\"text\";i:2;s:13:\"optionwidgets\";}s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/cck/modules/number/number.module','number','module','',1,0,0,6000,0,'a:10:{s:4:\"name\";s:6:\"Number\";s:11:\"description\";s:28:\"Defines numeric field types.\";s:12:\"dependencies\";a:1:{i:0;s:7:\"content\";}s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/openid/openid.module','openid','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:6:\"OpenID\";s:11:\"description\";s:48:\"Allows users to log into your site using OpenID.\";s:7:\"version\";s:4:\"6.19\";s:7:\"package\";s:15:\"Core - optional\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/cck/modules/optionwidgets/optionwidgets.module','optionwidgets','module','',1,0,0,6001,0,'a:10:{s:4:\"name\";s:14:\"Option Widgets\";s:11:\"description\";s:82:\"Defines selection, check box and radio button widgets for text and numeric fields.\";s:12:\"dependencies\";a:1:{i:0;s:7:\"content\";}s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/ctools/page_manager/page_manager.module','page_manager','module','',1,0,0,6101,99,'a:10:{s:4:\"name\";s:12:\"Page manager\";s:11:\"description\";s:54:\"Provides a UI and API to manage pages within the site.\";s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:1:{i:0;s:6:\"ctools\";}s:7:\"package\";s:16:\"Chaos tool suite\";s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:6:\"ctools\";s:9:\"datestamp\";s:10:\"1280189115\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/panels/panels.module','panels','module','',1,0,0,6310,0,'a:10:{s:4:\"name\";s:6:\"Panels\";s:11:\"description\";s:107:\"Core Panels display functions; provides no external UI, at least one other Panels module should be enabled.\";s:4:\"core\";s:3:\"6.x\";s:7:\"package\";s:6:\"Panels\";s:12:\"dependencies\";a:1:{i:0;s:6:\"ctools\";}s:7:\"version\";s:7:\"6.x-3.7\";s:7:\"project\";s:6:\"panels\";s:9:\"datestamp\";s:10:\"1280189119\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/panels_everywhere/panels_everywhere.module','panels_everywhere','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:17:\"Panels everywhere\";s:11:\"description\";s:70:\"Allow your site to use Panels instead of Blocks to lay out your pages.\";s:7:\"package\";s:6:\"Panels\";s:12:\"dependencies\";a:2:{i:0;s:6:\"panels\";i:1;s:12:\"page_manager\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-1.1\";s:7:\"project\";s:17:\"panels_everywhere\";s:9:\"datestamp\";s:10:\"1280189120\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/panels/panels_ipe/panels_ipe.module','panels_ipe','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:22:\"Panels In-Place Editor\";s:11:\"description\";s:101:\"Provide a UI for managing some Panels directly on the frontend, instead of having to use the backend.\";s:7:\"package\";s:6:\"Panels\";s:12:\"dependencies\";a:2:{i:0;s:6:\"panels\";i:1;s:9:\"jquery_ui\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-3.7\";s:7:\"project\";s:6:\"panels\";s:9:\"datestamp\";s:10:\"1280189119\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/panels/panels_mini/panels_mini.module','panels_mini','module','',1,0,0,6302,0,'a:10:{s:4:\"name\";s:11:\"Mini panels\";s:11:\"description\";s:89:\"Create mini panels that can be used as blocks by Drupal and panes by other panel modules.\";s:7:\"package\";s:6:\"Panels\";s:12:\"dependencies\";a:1:{i:0;s:6:\"panels\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-3.7\";s:7:\"project\";s:6:\"panels\";s:9:\"datestamp\";s:10:\"1280189119\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/panels/panels_node/panels_node.module','panels_node','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:11:\"Panel nodes\";s:11:\"description\";s:65:\"Create nodes that are divided into areas with selectable content.\";s:7:\"package\";s:6:\"Panels\";s:12:\"dependencies\";a:1:{i:0;s:6:\"panels\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-3.7\";s:7:\"project\";s:6:\"panels\";s:9:\"datestamp\";s:10:\"1280189119\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/path/path.module','path','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:4:\"Path\";s:11:\"description\";s:28:\"Allows users to rename URLs.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/devel/performance/performance.module','performance','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:19:\"Performance Logging\";s:11:\"description\";s:91:\"Logs detailed and/or summary page generation time and memory consumption for page requests.\";s:7:\"package\";s:11:\"Development\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:8:\"6.x-1.22\";s:7:\"project\";s:5:\"devel\";s:9:\"datestamp\";s:10:\"1281718291\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/php/php.module','php','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:10:\"PHP filter\";s:11:\"description\";s:50:\"Allows embedded PHP code/snippets to be evaluated.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/ping/ping.module','ping','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:4:\"Ping\";s:11:\"description\";s:51:\"Alerts other sites when your site has been updated.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/poll/poll.module','poll','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:4:\"Poll\";s:11:\"description\";s:95:\"Allows your site to capture votes on different topics in the form of multiple choice questions.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/profile/profile.module','profile','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:7:\"Profile\";s:11:\"description\";s:36:\"Supports configurable user profiles.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/search/search.module','search','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:36:\"Enables site-wide keyword searching.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/statistics/statistics.module','statistics','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:10:\"Statistics\";s:11:\"description\";s:37:\"Logs access statistics for your site.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/ctools/stylizer/stylizer.module','stylizer','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:8:\"Stylizer\";s:11:\"description\";s:53:\"Create custom styles for applications such as Panels.\";s:4:\"core\";s:3:\"6.x\";s:7:\"package\";s:16:\"Chaos tool suite\";s:12:\"dependencies\";a:2:{i:0;s:6:\"ctools\";i:1;s:5:\"color\";}s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:6:\"ctools\";s:9:\"datestamp\";s:10:\"1280189115\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/syslog/syslog.module','syslog','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:6:\"Syslog\";s:11:\"description\";s:41:\"Logs and records system events to syslog.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/taxonomy/taxonomy.module','taxonomy','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:8:\"Taxonomy\";s:11:\"description\";s:38:\"Enables the categorization of content.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/cck/modules/text/text.module','text','module','',1,0,0,6003,0,'a:10:{s:4:\"name\";s:4:\"Text\";s:11:\"description\";s:32:\"Defines simple text field types.\";s:12:\"dependencies\";a:1:{i:0;s:7:\"content\";}s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/throttle/throttle.module','throttle','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:8:\"Throttle\";s:11:\"description\";s:66:\"Handles the auto-throttling mechanism, to control site congestion.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/token/token.module','token','module','',1,0,0,1,10,'a:9:{s:4:\"name\";s:5:\"Token\";s:11:\"description\";s:79:\"Provides a shared API for replacement of textual placeholders with actual data.\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:8:\"6.x-1.13\";s:7:\"project\";s:5:\"token\";s:9:\"datestamp\";s:10:\"1275922817\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/token/tokenSTARTER.module','tokenSTARTER','module','',0,0,0,-1,0,'a:9:{s:4:\"name\";s:12:\"TokenSTARTER\";s:11:\"description\";s:72:\"Provides additional tokens and a base on which to build your own tokens.\";s:12:\"dependencies\";a:1:{i:0;s:5:\"token\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:8:\"6.x-1.13\";s:7:\"project\";s:5:\"token\";s:9:\"datestamp\";s:10:\"1275922817\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/token/token_actions.module','token_actions','module','',0,0,0,-1,0,'a:9:{s:4:\"name\";s:13:\"Token actions\";s:11:\"description\";s:73:\"Provides enhanced versions of core Drupal actions using the Token module.\";s:12:\"dependencies\";a:1:{i:0;s:5:\"token\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:8:\"6.x-1.13\";s:7:\"project\";s:5:\"token\";s:9:\"datestamp\";s:10:\"1275922817\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/tracker/tracker.module','tracker','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:7:\"Tracker\";s:11:\"description\";s:43:\"Enables tracking of recent posts for users.\";s:12:\"dependencies\";a:1:{i:0;s:7:\"comment\";}s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/translation/translation.module','translation','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:19:\"Content translation\";s:11:\"description\";s:57:\"Allows content to be translated into different languages.\";s:12:\"dependencies\";a:1:{i:0;s:6:\"locale\";}s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/trigger/trigger.module','trigger','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:7:\"Trigger\";s:11:\"description\";s:90:\"Enables actions to be fired on certain system events, such as when new content is created.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/update/update.module','update','module','',1,0,0,6000,0,'a:10:{s:4:\"name\";s:13:\"Update status\";s:11:\"description\";s:88:\"Checks the status of available updates for Drupal and your installed modules and themes.\";s:7:\"version\";s:4:\"6.19\";s:7:\"package\";s:15:\"Core - optional\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/upload/upload.module','upload','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:6:\"Upload\";s:11:\"description\";s:51:\"Allows users to upload and attach files to content.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('modules/user/user.module','user','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:4:\"User\";s:11:\"description\";s:47:\"Manages the user registration and login system.\";s:7:\"package\";s:15:\"Core - required\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/cck/modules/userreference/userreference.module','userreference','module','',1,0,0,6002,0,'a:10:{s:4:\"name\";s:14:\"User Reference\";s:11:\"description\";s:56:\"Defines a field type for referencing a user from a node.\";s:12:\"dependencies\";a:3:{i:0;s:7:\"content\";i:1;s:4:\"text\";i:2;s:13:\"optionwidgets\";}s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/vertical_tabs/vertical_tabs.module','vertical_tabs','module','',1,0,0,6104,300,'a:10:{s:4:\"name\";s:13:\"Vertical Tabs\";s:11:\"description\";s:41:\"Provides vertical tabs for the node form.\";s:4:\"core\";s:3:\"6.x\";s:10:\"recommends\";a:1:{i:0;s:4:\"form\";}s:7:\"version\";s:13:\"6.x-1.0-beta7\";s:7:\"project\";s:13:\"vertical_tabs\";s:9:\"datestamp\";s:10:\"1260340567\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/views/views.module','views','module','',1,0,0,6009,10,'a:10:{s:4:\"name\";s:5:\"Views\";s:11:\"description\";s:55:\"Create customized lists and queries from your database.\";s:7:\"package\";s:5:\"Views\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:8:\"6.x-2.11\";s:7:\"project\";s:5:\"views\";s:9:\"datestamp\";s:10:\"1276743614\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/ctools/views_content/views_content.module','views_content','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:19:\"Views content panes\";s:11:\"description\";s:104:\"Allows Views content to be used in Panels, Dashboard and other modules which use the CTools Content API.\";s:7:\"package\";s:16:\"Chaos tool suite\";s:12:\"dependencies\";a:2:{i:0;s:6:\"ctools\";i:1;s:5:\"views\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:6:\"ctools\";s:9:\"datestamp\";s:10:\"1280189115\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/views/views_export/views_export.module','views_export','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:14:\"Views exporter\";s:11:\"description\";s:40:\"Allows exporting multiple views at once.\";s:7:\"package\";s:5:\"Views\";s:12:\"dependencies\";a:1:{i:0;s:5:\"views\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:8:\"6.x-2.11\";s:7:\"project\";s:5:\"views\";s:9:\"datestamp\";s:10:\"1276743614\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}'),('sites/all/modules/views/views_ui.module','views_ui','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:8:\"Views UI\";s:11:\"description\";s:93:\"Administrative interface to views. Without this module, you cannot create or edit your views.\";s:7:\"package\";s:5:\"Views\";s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:1:{i:0;s:5:\"views\";}s:7:\"version\";s:8:\"6.x-2.11\";s:7:\"project\";s:5:\"views\";s:9:\"datestamp\";s:10:\"1276743614\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
/*!40000 ALTER TABLE `system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_data`
--

DROP TABLE IF EXISTS `term_data`;
CREATE TABLE `term_data` (
  `tid` int(10) unsigned NOT NULL auto_increment,
  `vid` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` longtext,
  `weight` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`tid`),
  KEY `taxonomy_tree` (`vid`,`weight`,`name`),
  KEY `vid_name` (`vid`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `term_data`
--

LOCK TABLES `term_data` WRITE;
/*!40000 ALTER TABLE `term_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `term_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_hierarchy`
--

DROP TABLE IF EXISTS `term_hierarchy`;
CREATE TABLE `term_hierarchy` (
  `tid` int(10) unsigned NOT NULL default '0',
  `parent` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`tid`,`parent`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `term_hierarchy`
--

LOCK TABLES `term_hierarchy` WRITE;
/*!40000 ALTER TABLE `term_hierarchy` DISABLE KEYS */;
/*!40000 ALTER TABLE `term_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_node`
--

DROP TABLE IF EXISTS `term_node`;
CREATE TABLE `term_node` (
  `nid` int(10) unsigned NOT NULL default '0',
  `vid` int(10) unsigned NOT NULL default '0',
  `tid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`tid`,`vid`),
  KEY `vid` (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `term_node`
--

LOCK TABLES `term_node` WRITE;
/*!40000 ALTER TABLE `term_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `term_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_relation`
--

DROP TABLE IF EXISTS `term_relation`;
CREATE TABLE `term_relation` (
  `trid` int(11) NOT NULL auto_increment,
  `tid1` int(10) unsigned NOT NULL default '0',
  `tid2` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`trid`),
  UNIQUE KEY `tid1_tid2` (`tid1`,`tid2`),
  KEY `tid2` (`tid2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `term_relation`
--

LOCK TABLES `term_relation` WRITE;
/*!40000 ALTER TABLE `term_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `term_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_synonym`
--

DROP TABLE IF EXISTS `term_synonym`;
CREATE TABLE `term_synonym` (
  `tsid` int(11) NOT NULL auto_increment,
  `tid` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`tsid`),
  KEY `tid` (`tid`),
  KEY `name_tid` (`name`,`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `term_synonym`
--

LOCK TABLES `term_synonym` WRITE;
/*!40000 ALTER TABLE `term_synonym` DISABLE KEYS */;
/*!40000 ALTER TABLE `term_synonym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url_alias`
--

DROP TABLE IF EXISTS `url_alias`;
CREATE TABLE `url_alias` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `src` varchar(128) NOT NULL default '',
  `dst` varchar(128) NOT NULL default '',
  `language` varchar(12) NOT NULL default '',
  PRIMARY KEY  (`pid`),
  UNIQUE KEY `dst_language_pid` (`dst`,`language`,`pid`),
  KEY `src_language_pid` (`src`,`language`,`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `url_alias`
--

LOCK TABLES `url_alias` WRITE;
/*!40000 ALTER TABLE `url_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(60) NOT NULL default '',
  `pass` varchar(32) NOT NULL default '',
  `mail` varchar(64) default '',
  `mode` tinyint(4) NOT NULL default '0',
  `sort` tinyint(4) default '0',
  `threshold` tinyint(4) default '0',
  `theme` varchar(255) NOT NULL default '',
  `signature` varchar(255) NOT NULL default '',
  `signature_format` smallint(6) NOT NULL default '0',
  `created` int(11) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `login` int(11) NOT NULL default '0',
  `status` tinyint(4) NOT NULL default '0',
  `timezone` varchar(8) default NULL,
  `language` varchar(12) NOT NULL default '',
  `picture` varchar(255) NOT NULL default '',
  `init` varchar(64) default '',
  `data` longtext,
  `timezone_name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`uid`),
  UNIQUE KEY `name` (`name`),
  KEY `access` (`access`),
  KEY `created` (`created`),
  KEY `mail` (`mail`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (0,'','','',0,0,0,'','',0,0,0,0,0,NULL,'','','',NULL,''),(1,'admin','82fb545c565336aff65d4e627073a877','victorkane@gmail.com',0,0,0,'','',0,1284140721,1284143314,1284143132,1,NULL,'','','victorkane@gmail.com','a:0:{}',''),(3,'victorkane','eded995645e93a3b1df15612c8eed315','victor.kane@gmail.com',0,0,0,'','',0,1284143415,1284150926,1284143438,1,'-10800','','','victor.kane@gmail.com','a:1:{s:13:\"form_build_id\";s:37:\"form-b5a2f32936fd0c5f89d906a0c1118e16\";}','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles` (
  `uid` int(10) unsigned NOT NULL default '0',
  `rid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`rid`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (3,3);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variable`
--

DROP TABLE IF EXISTS `variable`;
CREATE TABLE `variable` (
  `name` varchar(128) NOT NULL default '',
  `value` longtext NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `variable`
--

LOCK TABLES `variable` WRITE;
/*!40000 ALTER TABLE `variable` DISABLE KEYS */;
INSERT INTO `variable` VALUES ('theme_default','s:7:\"garland\";'),('filter_html_1','i:1;'),('node_options_forum','a:1:{i:0;s:6:\"status\";}'),('drupal_private_key','s:64:\"0526c0dff5b1ad5970b728a4cc6b0741b6c39c83e8fce08160e593c10707f475\";'),('menu_masks','a:22:{i:0;i:125;i:1;i:63;i:2;i:62;i:3;i:61;i:4;i:59;i:5;i:58;i:6;i:56;i:7;i:31;i:8;i:30;i:9;i:29;i:10;i:24;i:11;i:21;i:12;i:15;i:13;i:14;i:14;i:11;i:15;i:7;i:16;i:6;i:17;i:5;i:18;i:4;i:19;i:3;i:20;i:2;i:21;i:1;}'),('install_task','s:4:\"done\";'),('menu_expanded','a:0:{}'),('site_name','s:21:\"ProjectFlowAndTracker\";'),('site_mail','s:20:\"victorkane@gmail.com\";'),('date_default_timezone','s:6:\"-10800\";'),('user_email_verification','i:1;'),('clean_url','s:1:\"1\";'),('install_time','i:1284143132;'),('node_options_page','a:1:{i:0;s:6:\"status\";}'),('comment_page','i:0;'),('theme_settings','a:1:{s:21:\"toggle_node_info_page\";b:0;}'),('drupal_http_request_fails','b:0;'),('css_js_query_string','s:20:\"XFf00000000000000000\";'),('install_profile','s:7:\"default\";'),('update_last_check','i:1284143183;'),('user_admin_role','s:1:\"3\";'),('user_register','s:1:\"1\";'),('file_directory_temp','s:4:\"/tmp\";'),('javascript_parsed','a:0:{}'),('user_registration_help','s:0:\"\";'),('user_mail_register_admin_created_subject','s:52:\"An administrator created an account for you at !site\";'),('user_mail_register_admin_created_body','s:468:\"!username,\r\n\r\nA site administrator at !site has created an account for you. You may now log in to !login_uri using the following username and password:\r\n\r\nusername: !username\r\npassword: !password\r\n\r\nYou may also log in by clicking on this link or copying and pasting it in your browser:\r\n\r\n!login_url\r\n\r\nThis is a one-time login, so it can be used only once.\r\n\r\nAfter logging in, you will be redirected to !edit_uri so you can change your password.\r\n\r\n\r\n--  !site team\";'),('user_mail_register_no_approval_required_subject','s:38:\"Account details for !username at !site\";'),('user_mail_register_no_approval_required_body','s:442:\"!username,\r\n\r\nThank you for registering at !site. You may now log in to !login_uri using the following username and password:\r\n\r\nusername: !username\r\npassword: !password\r\n\r\nYou may also log in by clicking on this link or copying and pasting it in your browser:\r\n\r\n!login_url\r\n\r\nThis is a one-time login, so it can be used only once.\r\n\r\nAfter logging in, you will be redirected to !edit_uri so you can change your password.\r\n\r\n\r\n--  !site team\";'),('user_mail_register_pending_approval_subject','s:63:\"Account details for !username at !site (pending admin approval)\";'),('user_mail_register_pending_approval_body','s:273:\"!username,\r\n\r\nThank you for registering at !site. Your application for an account is currently pending approval. Once it has been approved, you will receive another e-mail containing information about how to log in, set your password, and other details.\r\n\r\n\r\n--  !site team\";'),('user_mail_password_reset_subject','s:52:\"Replacement login information for !username at !site\";'),('user_mail_password_reset_body','s:419:\"!username,\r\n\r\nA request to reset the password for your account has been made at !site.\r\n\r\nYou may now log in to !uri_brief by clicking on this link or copying and pasting it in your browser:\r\n\r\n!login_url\r\n\r\nThis is a one-time login, so it can be used only once. It expires after one day and nothing will happen if it\'s not used.\r\n\r\nAfter logging in, you will be redirected to !edit_uri so you can change your password.\";'),('user_mail_status_activated_notify','i:1;'),('user_mail_status_activated_subject','s:49:\"Account details for !username at !site (approved)\";'),('user_mail_status_activated_body','s:434:\"!username,\r\n\r\nYour account at !site has been activated.\r\n\r\nYou may now log in by clicking on this link or copying and pasting it in your browser:\r\n\r\n!login_url\r\n\r\nThis is a one-time login, so it can be used only once.\r\n\r\nAfter logging in, you will be redirected to !edit_uri so you can change your password.\r\n\r\nOnce you have set your own password, you will be able to log in to !login_uri in the future using:\r\n\r\nusername: !username\r\n\";'),('user_mail_status_blocked_notify','i:0;'),('user_mail_status_blocked_subject','s:48:\"Account details for !username at !site (blocked)\";'),('user_mail_status_blocked_body','s:53:\"!username,\r\n\r\nYour account on !site has been blocked.\";'),('user_mail_status_deleted_notify','i:0;'),('user_mail_status_deleted_subject','s:48:\"Account details for !username at !site (deleted)\";'),('user_mail_status_deleted_body','s:53:\"!username,\r\n\r\nYour account on !site has been deleted.\";'),('user_signatures','s:1:\"0\";'),('user_pictures','s:1:\"0\";'),('user_picture_path','s:8:\"pictures\";'),('user_picture_default','s:0:\"\";'),('user_picture_dimensions','s:5:\"85x85\";'),('user_picture_file_size','s:2:\"30\";'),('user_picture_guidelines','s:0:\"\";'),('site_slogan','s:0:\"\";'),('site_mission','s:0:\"\";'),('site_footer','s:0:\"\";'),('anonymous','s:9:\"Anonymous\";'),('site_frontpage','s:4:\"node\";'),('content_schema_version','i:6009;'),('fieldgroup_schema_version','i:6000;'),('date_api_version','s:3:\"5.2\";'),('panels_legacy_rendering_mode','b:0;'),('panels_everywhere_site_template_enabled','i:1;'),('panels_everywhere_site_template_enabled_admin','i:0;'),('panels_everywhere_provide_sample','i:1;'),('panels_everywhere_override_page_tpl','i:1;'),('head_title','N;'),('panels_everywhere_head_title_include_name','i:1;'),('panels_everywhere_head_title_include_slogan','i:1;'),('panels_everywhere_head_title_separator','s:3:\" | \";'),('admin_menu_rebuild_links','b:1;');
/*!40000 ALTER TABLE `variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `views_display`
--

DROP TABLE IF EXISTS `views_display`;
CREATE TABLE `views_display` (
  `vid` int(10) unsigned NOT NULL default '0',
  `id` varchar(64) NOT NULL default '',
  `display_title` varchar(64) NOT NULL default '',
  `display_plugin` varchar(64) NOT NULL default '',
  `position` int(11) default '0',
  `display_options` longtext,
  PRIMARY KEY  (`vid`,`id`),
  KEY `vid` (`vid`,`position`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `views_display`
--

LOCK TABLES `views_display` WRITE;
/*!40000 ALTER TABLE `views_display` DISABLE KEYS */;
INSERT INTO `views_display` VALUES (1,'default','Defaults','default',1,'a:2:{s:6:\"fields\";a:1:{s:5:\"title\";a:11:{s:5:\"label\";s:0:\"\";s:5:\"alter\";a:16:{s:10:\"alter_text\";i:0;s:4:\"text\";s:0:\"\";s:9:\"make_link\";i:0;s:4:\"path\";s:0:\"\";s:10:\"link_class\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:6:\"prefix\";s:0:\"\";s:6:\"suffix\";s:0:\"\";s:6:\"target\";s:0:\"\";s:4:\"help\";s:0:\"\";s:4:\"trim\";i:0;s:10:\"max_length\";s:0:\"\";s:13:\"word_boundary\";i:1;s:8:\"ellipsis\";i:1;s:4:\"html\";i:0;s:10:\"strip_tags\";i:0;}s:5:\"empty\";s:0:\"\";s:10:\"hide_empty\";i:0;s:10:\"empty_zero\";i:0;s:12:\"link_to_node\";i:1;s:7:\"exclude\";i:0;s:2:\"id\";s:5:\"title\";s:5:\"table\";s:4:\"node\";s:5:\"field\";s:5:\"title\";s:12:\"relationship\";s:4:\"none\";}}s:7:\"filters\";a:2:{s:4:\"type\";a:9:{s:8:\"operator\";s:2:\"in\";s:5:\"value\";a:1:{s:5:\"story\";s:5:\"story\";}s:5:\"group\";s:1:\"0\";s:7:\"exposed\";b:0;s:6:\"expose\";a:2:{s:8:\"operator\";b:0;s:5:\"label\";s:0:\"\";}s:2:\"id\";s:4:\"type\";s:5:\"table\";s:4:\"node\";s:5:\"field\";s:4:\"type\";s:12:\"relationship\";s:4:\"none\";}s:12:\"status_extra\";a:9:{s:8:\"operator\";s:1:\"=\";s:5:\"value\";s:0:\"\";s:5:\"group\";s:1:\"0\";s:7:\"exposed\";b:0;s:6:\"expose\";a:2:{s:8:\"operator\";b:0;s:5:\"label\";s:0:\"\";}s:2:\"id\";s:12:\"status_extra\";s:5:\"table\";s:4:\"node\";s:5:\"field\";s:12:\"status_extra\";s:12:\"relationship\";s:4:\"none\";}}}'),(1,'block_1','Block','block',2,'a:5:{s:14:\"items_per_page\";i:3;s:8:\"defaults\";a:4:{s:14:\"items_per_page\";b:0;s:6:\"offset\";b:0;s:9:\"use_pager\";b:0;s:13:\"pager_element\";b:0;}s:6:\"offset\";i:0;s:9:\"use_pager\";b:0;s:13:\"pager_element\";i:0;}'),(1,'page_1','Page','page',3,'a:1:{s:4:\"path\";s:12:\"list/stories\";}');
/*!40000 ALTER TABLE `views_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `views_object_cache`
--

DROP TABLE IF EXISTS `views_object_cache`;
CREATE TABLE `views_object_cache` (
  `sid` varchar(64) default NULL,
  `name` varchar(32) default NULL,
  `obj` varchar(32) default NULL,
  `updated` int(10) unsigned NOT NULL default '0',
  `data` longtext,
  KEY `sid_obj_name` (`sid`,`obj`,`name`),
  KEY `updated` (`updated`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `views_object_cache`
--

LOCK TABLES `views_object_cache` WRITE;
/*!40000 ALTER TABLE `views_object_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `views_object_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `views_view`
--

DROP TABLE IF EXISTS `views_view`;
CREATE TABLE `views_view` (
  `vid` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(32) NOT NULL default '',
  `description` varchar(255) default '',
  `tag` varchar(255) default '',
  `view_php` blob,
  `base_table` varchar(64) NOT NULL default '',
  `is_cacheable` tinyint(4) default '0',
  PRIMARY KEY  (`vid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `views_view`
--

LOCK TABLES `views_view` WRITE;
/*!40000 ALTER TABLE `views_view` DISABLE KEYS */;
INSERT INTO `views_view` VALUES (1,'list_stories','List stories','','','node',0);
/*!40000 ALTER TABLE `views_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabulary`
--

DROP TABLE IF EXISTS `vocabulary`;
CREATE TABLE `vocabulary` (
  `vid` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `description` longtext,
  `help` varchar(255) NOT NULL default '',
  `relations` tinyint(3) unsigned NOT NULL default '0',
  `hierarchy` tinyint(3) unsigned NOT NULL default '0',
  `multiple` tinyint(3) unsigned NOT NULL default '0',
  `required` tinyint(3) unsigned NOT NULL default '0',
  `tags` tinyint(3) unsigned NOT NULL default '0',
  `module` varchar(255) NOT NULL default '',
  `weight` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`vid`),
  KEY `list` (`weight`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vocabulary`
--

LOCK TABLES `vocabulary` WRITE;
/*!40000 ALTER TABLE `vocabulary` DISABLE KEYS */;
/*!40000 ALTER TABLE `vocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabulary_node_types`
--

DROP TABLE IF EXISTS `vocabulary_node_types`;
CREATE TABLE `vocabulary_node_types` (
  `vid` int(10) unsigned NOT NULL default '0',
  `type` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`type`,`vid`),
  KEY `vid` (`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vocabulary_node_types`
--

LOCK TABLES `vocabulary_node_types` WRITE;
/*!40000 ALTER TABLE `vocabulary_node_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `vocabulary_node_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchdog`
--

DROP TABLE IF EXISTS `watchdog`;
CREATE TABLE `watchdog` (
  `wid` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL default '0',
  `type` varchar(16) NOT NULL default '',
  `message` longtext NOT NULL,
  `variables` longtext NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL default '0',
  `link` varchar(255) NOT NULL default '',
  `location` text NOT NULL,
  `referer` text,
  `hostname` varchar(128) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  PRIMARY KEY  (`wid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `watchdog`
--

LOCK TABLES `watchdog` WRITE;
/*!40000 ALTER TABLE `watchdog` DISABLE KEYS */;
INSERT INTO `watchdog` VALUES (1,0,'access denied','admin','N;',4,'','http://staging.projectflowandtracker.com/?q=admin','http://staging.projectflowandtracker.com/','201.255.59.64',1284140914),(2,1,'user','Session opened for %name.','a:1:{s:5:\"%name\";s:5:\"admin\";}',5,'','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','201.255.59.64',1284143132),(3,1,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:15:\"Publish comment\";}',5,'','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','201.255.59.64',1284143133),(4,1,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:17:\"Unpublish comment\";}',5,'','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','201.255.59.64',1284143133),(5,1,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:12:\"Publish post\";}',5,'','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','201.255.59.64',1284143133),(6,1,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:14:\"Unpublish post\";}',5,'','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','201.255.59.64',1284143133),(7,1,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:16:\"Make post sticky\";}',5,'','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','201.255.59.64',1284143133),(8,1,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:18:\"Make post unsticky\";}',5,'','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','201.255.59.64',1284143133),(9,1,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:26:\"Promote post to front page\";}',5,'','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','201.255.59.64',1284143133),(10,1,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:27:\"Remove post from front page\";}',5,'','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','201.255.59.64',1284143133),(11,1,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:9:\"Save post\";}',5,'','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','201.255.59.64',1284143133),(12,1,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:18:\"Block current user\";}',5,'','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','201.255.59.64',1284143133),(13,1,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:30:\"Ban IP address of current user\";}',5,'','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','http://staging.projectflowandtracker.com/install.php?locale=en&profile=default','201.255.59.64',1284143133),(14,1,'update','Attempted to fetch information about all available new releases and updates.','a:0:{}',5,'<a href=\"/admin/reports/updates\">view</a>','http://staging.projectflowandtracker.com/admin','','201.255.59.64',1284143183),(15,1,'user','New user: %name (%email).','a:2:{s:5:\"%name\";s:10:\"victorkane\";s:6:\"%email\";s:21:\"victor.kane@gmail.com\";}',5,'<a href=\"/user/3/edit\">edit</a>','http://staging.projectflowandtracker.com/admin/user/user/create','http://staging.projectflowandtracker.com/admin/user/user/create','201.255.59.64',1284143415),(16,1,'user','Session closed for %name.','a:1:{s:5:\"%name\";s:5:\"admin\";}',5,'','http://staging.projectflowandtracker.com/logout','http://staging.projectflowandtracker.com/admin/user/user','201.255.59.64',1284143431),(17,3,'user','Session opened for %name.','a:1:{s:5:\"%name\";s:10:\"victorkane\";}',5,'','http://staging.projectflowandtracker.com/node?destination=node','http://staging.projectflowandtracker.com/','201.255.59.64',1284143438),(18,3,'content','Updating field type %type with module %module.','a:2:{s:5:\"%type\";s:9:\"filefield\";s:7:\"%module\";s:9:\"filefield\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(19,3,'content','Updating widget type %type with module %module.','a:2:{s:5:\"%type\";s:16:\"filefield_widget\";s:7:\"%module\";s:9:\"filefield\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(20,3,'content','Updating widget type %type with module %module.','a:2:{s:5:\"%type\";s:17:\"imagefield_widget\";s:7:\"%module\";s:10:\"imagefield\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(21,3,'content','Updating field type %type with module %module.','a:2:{s:5:\"%type\";s:14:\"number_integer\";s:7:\"%module\";s:6:\"number\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(22,3,'content','Updating field type %type with module %module.','a:2:{s:5:\"%type\";s:14:\"number_decimal\";s:7:\"%module\";s:6:\"number\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(23,3,'content','Updating field type %type with module %module.','a:2:{s:5:\"%type\";s:12:\"number_float\";s:7:\"%module\";s:6:\"number\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(24,3,'content','Updating widget type %type with module %module.','a:2:{s:5:\"%type\";s:6:\"number\";s:7:\"%module\";s:6:\"number\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(25,3,'content','Updating widget type %type with module %module.','a:2:{s:5:\"%type\";s:20:\"optionwidgets_select\";s:7:\"%module\";s:13:\"optionwidgets\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(26,3,'content','Updating widget type %type with module %module.','a:2:{s:5:\"%type\";s:21:\"optionwidgets_buttons\";s:7:\"%module\";s:13:\"optionwidgets\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(27,3,'content','Updating widget type %type with module %module.','a:2:{s:5:\"%type\";s:19:\"optionwidgets_onoff\";s:7:\"%module\";s:13:\"optionwidgets\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(28,3,'content','Updating field type %type with module %module.','a:2:{s:5:\"%type\";s:4:\"text\";s:7:\"%module\";s:4:\"text\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(29,3,'content','Updating widget type %type with module %module.','a:2:{s:5:\"%type\";s:14:\"text_textfield\";s:7:\"%module\";s:4:\"text\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(30,3,'content','Updating widget type %type with module %module.','a:2:{s:5:\"%type\";s:13:\"text_textarea\";s:7:\"%module\";s:4:\"text\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(31,3,'content','Updating field type %type with module %module.','a:2:{s:5:\"%type\";s:13:\"userreference\";s:7:\"%module\";s:13:\"userreference\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(32,3,'content','Updating widget type %type with module %module.','a:2:{s:5:\"%type\";s:20:\"userreference_select\";s:7:\"%module\";s:13:\"userreference\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(33,3,'content','Updating widget type %type with module %module.','a:2:{s:5:\"%type\";s:21:\"userreference_buttons\";s:7:\"%module\";s:13:\"userreference\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(34,3,'content','Updating widget type %type with module %module.','a:2:{s:5:\"%type\";s:26:\"userreference_autocomplete\";s:7:\"%module\";s:13:\"userreference\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(35,3,'content','Updating field type %type with module %module.','a:2:{s:5:\"%type\";s:13:\"nodereference\";s:7:\"%module\";s:13:\"nodereference\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(36,3,'content','Updating widget type %type with module %module.','a:2:{s:5:\"%type\";s:20:\"nodereference_select\";s:7:\"%module\";s:13:\"nodereference\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(37,3,'content','Updating widget type %type with module %module.','a:2:{s:5:\"%type\";s:21:\"nodereference_buttons\";s:7:\"%module\";s:13:\"nodereference\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(38,3,'content','Updating widget type %type with module %module.','a:2:{s:5:\"%type\";s:26:\"nodereference_autocomplete\";s:7:\"%module\";s:13:\"nodereference\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(39,3,'content','Updating field type %type with module %module.','a:2:{s:5:\"%type\";s:4:\"date\";s:7:\"%module\";s:4:\"date\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(40,3,'content','Updating field type %type with module %module.','a:2:{s:5:\"%type\";s:9:\"datestamp\";s:7:\"%module\";s:4:\"date\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(41,3,'content','Updating field type %type with module %module.','a:2:{s:5:\"%type\";s:8:\"datetime\";s:7:\"%module\";s:4:\"date\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(42,3,'content','Updating widget type %type with module %module.','a:2:{s:5:\"%type\";s:11:\"date_select\";s:7:\"%module\";s:4:\"date\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(43,3,'content','Updating widget type %type with module %module.','a:2:{s:5:\"%type\";s:9:\"date_text\";s:7:\"%module\";s:4:\"date\";}',5,'','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','http://staging.projectflowandtracker.com/admin/build/modules/list/confirm','201.255.59.64',1284143829),(44,3,'content','@type: added %title.','a:2:{s:5:\"@type\";s:5:\"story\";s:6:\"%title\";s:26:\"Lorem ipsum dolor sit amet\";}',5,'<a href=\"/node/1\">view</a>','http://staging.projectflowandtracker.com/node/add/story','http://staging.projectflowandtracker.com/node/add/story','201.255.59.64',1284144610),(45,3,'content','@type: added %title.','a:2:{s:5:\"@type\";s:5:\"story\";s:6:\"%title\";s:19:\"Suspendisse potenti\";}',5,'<a href=\"/node/2\">view</a>','http://staging.projectflowandtracker.com/node/add/story','http://staging.projectflowandtracker.com/node/add/story','201.255.59.64',1284144663),(46,3,'content','@type: added %title.','a:2:{s:5:\"@type\";s:5:\"story\";s:6:\"%title\";s:23:\"Nulla quis posuere elit\";}',5,'<a href=\"/node/3\">view</a>','http://staging.projectflowandtracker.com/node/add/story','http://staging.projectflowandtracker.com/node/add/story','201.255.59.64',1284144702),(47,3,'content','@type: added %title.','a:2:{s:5:\"@type\";s:5:\"story\";s:6:\"%title\";s:32:\"Ut venenatis convallis tortor...\";}',5,'<a href=\"/node/4\">view</a>','http://staging.projectflowandtracker.com/node/add/story','http://staging.projectflowandtracker.com/node/add/story','201.255.59.64',1284144757),(48,3,'content','@type: added %title.','a:2:{s:5:\"@type\";s:5:\"story\";s:6:\"%title\";s:45:\"Fusce dictum purus non nunc elementum viverra\";}',5,'<a href=\"/node/5\">view</a>','http://staging.projectflowandtracker.com/node/add/story','http://staging.projectflowandtracker.com/node/add/story','201.255.59.64',1284144814);
/*!40000 ALTER TABLE `watchdog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-09-10 20:40:11
