CREATE DATABASE IF NOT EXISTS ms_phpbb3;
USE ms_phpbb3;

-- MySQL dump 10.16  Distrib 10.2.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: mariadb    Database: ms_phpbb3
-- ------------------------------------------------------
-- Server version	10.2.8-MariaDB-10.2.8+maria~jessie

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
-- Table structure for table `phpbb_acl_groups`
--

DROP TABLE IF EXISTS `phpbb_acl_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_acl_groups` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `auth_setting` tinyint(2) NOT NULL DEFAULT 0,
  KEY `group_id` (`group_id`),
  KEY `auth_opt_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_acl_groups`
--

LOCK TABLES `phpbb_acl_groups` WRITE;
/*!40000 ALTER TABLE `phpbb_acl_groups` DISABLE KEYS */;
INSERT INTO `phpbb_acl_groups` VALUES (1,0,85,0,1),(1,0,93,0,1),(1,0,111,0,1),(13637,0,0,5,0),(13637,0,0,1,0),(2,0,0,6,0),(3,0,0,6,0),(4,0,0,5,0),(4,0,0,10,0),(1,1,0,17,0),(2,1,0,17,0),(3,1,0,17,0),(6,1,0,17,0),(1,2,0,17,0),(2,2,0,15,0),(3,2,0,15,0),(4,2,0,21,0),(13637,2,0,14,0),(13637,2,0,10,0),(6,2,0,19,0),(7,0,0,23,0),(7,2,0,24,0),(1,90,0,17,0),(2,90,0,15,0),(3,90,0,15,0),(4,90,0,21,0),(13637,90,0,10,0),(6,90,0,19,0),(7,90,0,24,0),(13637,90,0,14,0),(1,4,0,17,0),(3,4,0,17,0),(6,4,0,17,0),(2,4,0,21,0);
/*!40000 ALTER TABLE `phpbb_acl_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_acl_options`
--

DROP TABLE IF EXISTS `phpbb_acl_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_acl_options` (
  `auth_option_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `is_local` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `founder_only` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`auth_option_id`),
  UNIQUE KEY `auth_option` (`auth_option`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_acl_options`
--

LOCK TABLES `phpbb_acl_options` WRITE;
/*!40000 ALTER TABLE `phpbb_acl_options` DISABLE KEYS */;
INSERT INTO `phpbb_acl_options` VALUES (1,'f_',0,1,0),(2,'f_announce',0,1,0),(3,'f_attach',0,1,0),(4,'f_bbcode',0,1,0),(5,'f_bump',0,1,0),(6,'f_delete',0,1,0),(7,'f_download',0,1,0),(8,'f_edit',0,1,0),(9,'f_email',0,1,0),(10,'f_flash',0,1,0),(11,'f_icons',0,1,0),(12,'f_ignoreflood',0,1,0),(13,'f_img',0,1,0),(14,'f_list',0,1,0),(15,'f_noapprove',0,1,0),(16,'f_poll',0,1,0),(17,'f_post',0,1,0),(18,'f_postcount',0,1,0),(19,'f_print',0,1,0),(20,'f_read',0,1,0),(21,'f_reply',0,1,0),(22,'f_report',0,1,0),(23,'f_search',0,1,0),(24,'f_sigs',0,1,0),(25,'f_smilies',0,1,0),(26,'f_sticky',0,1,0),(27,'f_subscribe',0,1,0),(28,'f_user_lock',0,1,0),(29,'f_vote',0,1,0),(30,'f_votechg',0,1,0),(31,'m_',1,1,0),(32,'m_approve',1,1,0),(33,'m_chgposter',1,1,0),(34,'m_delete',1,1,0),(35,'m_edit',1,1,0),(36,'m_info',1,1,0),(37,'m_lock',1,1,0),(38,'m_merge',1,1,0),(39,'m_move',1,1,0),(40,'m_report',1,1,0),(41,'m_split',1,1,0),(42,'m_ban',1,0,0),(43,'m_warn',1,0,0),(44,'a_',1,0,0),(45,'a_aauth',1,0,0),(46,'a_attach',1,0,0),(47,'a_authgroups',1,0,0),(48,'a_authusers',1,0,0),(49,'a_backup',1,0,0),(50,'a_ban',1,0,0),(51,'a_bbcode',1,0,0),(52,'a_board',1,0,0),(53,'a_bots',1,0,0),(54,'a_clearlogs',1,0,0),(55,'a_email',1,0,0),(56,'a_fauth',1,0,0),(57,'a_forum',1,0,0),(58,'a_forumadd',1,0,0),(59,'a_forumdel',1,0,0),(60,'a_group',1,0,0),(61,'a_groupadd',1,0,0),(62,'a_groupdel',1,0,0),(63,'a_icons',1,0,0),(64,'a_jabber',1,0,0),(65,'a_language',1,0,0),(66,'a_mauth',1,0,0),(67,'a_modules',1,0,0),(68,'a_names',1,0,0),(69,'a_phpinfo',1,0,0),(70,'a_profile',1,0,0),(71,'a_prune',1,0,0),(72,'a_ranks',1,0,0),(73,'a_reasons',1,0,0),(74,'a_roles',1,0,0),(75,'a_search',1,0,0),(76,'a_server',1,0,0),(77,'a_styles',1,0,0),(78,'a_switchperm',1,0,0),(79,'a_uauth',1,0,0),(80,'a_user',1,0,0),(81,'a_userdel',1,0,0),(82,'a_viewauth',1,0,0),(83,'a_viewlogs',1,0,0),(84,'a_words',1,0,0),(85,'u_',1,0,0),(86,'u_attach',1,0,0),(87,'u_chgavatar',1,0,0),(88,'u_chgcensors',1,0,0),(89,'u_chgemail',1,0,0),(90,'u_chggrp',1,0,0),(91,'u_chgname',1,0,0),(92,'u_chgpasswd',1,0,0),(93,'u_download',1,0,0),(94,'u_hideonline',1,0,0),(95,'u_ignoreflood',1,0,0),(96,'u_masspm',1,0,0),(97,'u_masspm_group',1,0,0),(98,'u_pm_attach',1,0,0),(99,'u_pm_bbcode',1,0,0),(100,'u_pm_delete',1,0,0),(101,'u_pm_download',1,0,0),(102,'u_pm_edit',1,0,0),(103,'u_pm_emailpm',1,0,0),(104,'u_pm_flash',1,0,0),(105,'u_pm_forward',1,0,0),(106,'u_pm_img',1,0,0),(107,'u_pm_printpm',1,0,0),(108,'u_pm_smilies',1,0,0),(109,'u_readpm',1,0,0),(110,'u_savedrafts',1,0,0),(111,'u_search',1,0,0),(112,'u_sendemail',1,0,0),(113,'u_sendim',1,0,0),(114,'u_sendpm',1,0,0),(115,'u_sig',1,0,0),(116,'u_viewonline',1,0,0),(117,'u_viewprofile',1,0,0),(118,'u_pm_search',1,0,0),(119,'a_titlefairy',1,0,0),(120,'u_queue_1',1,0,0),(121,'u_queue_2',1,0,0),(122,'u_queue_3',1,0,0),(123,'u_queue_4',1,0,0),(124,'u_queue_5',1,0,0),(125,'u_queue_6',1,0,0),(126,'u_queue_7',1,0,0),(127,'a_extensions',1,0,0),(128,'u_chgprofileinfo',1,0,0),(129,'f_softdelete',0,1,0),(130,'m_softdelete',1,1,0),(131,'m_pm_report',1,0,0),(132,'f_announce_global',0,1,0);
/*!40000 ALTER TABLE `phpbb_acl_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_acl_roles`
--

DROP TABLE IF EXISTS `phpbb_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_acl_roles` (
  `role_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`role_id`),
  KEY `role_type` (`role_type`),
  KEY `role_order` (`role_order`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_acl_roles`
--

LOCK TABLES `phpbb_acl_roles` WRITE;
/*!40000 ALTER TABLE `phpbb_acl_roles` DISABLE KEYS */;
INSERT INTO `phpbb_acl_roles` VALUES (1,'ROLE_ADMIN_STANDARD','ROLE_DESCRIPTION_ADMIN_STANDARD','a_',1),(2,'ROLE_ADMIN_FORUM','ROLE_DESCRIPTION_ADMIN_FORUM','a_',3),(3,'ROLE_ADMIN_USERGROUP','ROLE_DESCRIPTION_ADMIN_USERGROUP','a_',4),(4,'ROLE_ADMIN_FULL','ROLE_DESCRIPTION_ADMIN_FULL','a_',2),(5,'ROLE_USER_FULL','ROLE_DESCRIPTION_USER_FULL','u_',3),(6,'ROLE_USER_STANDARD','ROLE_DESCRIPTION_USER_STANDARD','u_',1),(7,'ROLE_USER_LIMITED','ROLE_DESCRIPTION_USER_LIMITED','u_',2),(8,'ROLE_USER_NOPM','ROLE_DESCRIPTION_USER_NOPM','u_',4),(9,'ROLE_USER_NOAVATAR','ROLE_DESCRIPTION_USER_NOAVATAR','u_',5),(10,'ROLE_MOD_FULL','ROLE_DESCRIPTION_MOD_FULL','m_',3),(11,'ROLE_MOD_STANDARD','ROLE_DESCRIPTION_MOD_STANDARD','m_',1),(12,'ROLE_MOD_SIMPLE','ROLE_DESCRIPTION_MOD_SIMPLE','m_',2),(13,'ROLE_MOD_QUEUE','ROLE_DESCRIPTION_MOD_QUEUE','m_',5),(14,'ROLE_FORUM_FULL','ROLE_DESCRIPTION_FORUM_FULL','f_',7),(15,'ROLE_FORUM_STANDARD','ROLE_DESCRIPTION_FORUM_STANDARD','f_',5),(16,'ROLE_FORUM_NOACCESS','ROLE_DESCRIPTION_FORUM_NOACCESS','f_',1),(17,'ROLE_FORUM_READONLY','ROLE_DESCRIPTION_FORUM_READONLY','f_',2),(18,'ROLE_FORUM_LIMITED','ROLE_DESCRIPTION_FORUM_LIMITED','f_',3),(19,'ROLE_FORUM_BOT','ROLE_DESCRIPTION_FORUM_BOT','f_',9),(20,'ROLE_FORUM_ONQUEUE','ROLE_DESCRIPTION_FORUM_ONQUEUE','f_',8),(21,'ROLE_FORUM_POLLS','ROLE_DESCRIPTION_FORUM_POLLS','f_',6),(22,'ROLE_FORUM_LIMITED_POLLS','ROLE_DESCRIPTION_FORUM_LIMITED_POLLS','f_',4),(23,'ROLE_USER_NEW_MEMBER','ROLE_DESCRIPTION_USER_NEW_MEMBER','u_',6),(24,'ROLE_FORUM_NEW_MEMBER','ROLE_DESCRIPTION_FORUM_NEW_MEMBER','f_',11),(25,'Mafia Player','','f_',10),(26,'Mafia Moderator','','f_',12),(27,'List Moderator','Moderates a particular forum of Mafia/the board in general.','m_',4),(29,'Discussion Mod','for discussion mods.','m_',6),(30,'Without Editing Privileges','This forum role cannot edit/delete/lock posts once they are made. It shouldn\'t mess with any other privileges.','f_',13);
/*!40000 ALTER TABLE `phpbb_acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_acl_roles_data`
--

DROP TABLE IF EXISTS `phpbb_acl_roles_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_acl_roles_data` (
  `role_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `auth_setting` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`role_id`,`auth_option_id`),
  KEY `ath_op_id` (`auth_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_acl_roles_data`
--

LOCK TABLES `phpbb_acl_roles_data` WRITE;
/*!40000 ALTER TABLE `phpbb_acl_roles_data` DISABLE KEYS */;
INSERT INTO `phpbb_acl_roles_data` VALUES (1,44,1),(1,46,1),(1,47,1),(1,48,1),(1,50,1),(1,51,1),(1,52,1),(1,56,1),(1,57,1),(1,58,1),(1,59,1),(1,60,1),(1,61,1),(1,62,1),(1,63,1),(1,66,1),(1,68,1),(1,70,1),(1,71,1),(1,72,1),(1,73,1),(1,79,1),(1,80,1),(1,81,1),(1,82,1),(1,83,1),(1,84,1),(2,44,1),(2,47,1),(2,48,1),(2,56,1),(2,57,1),(2,58,1),(2,59,1),(2,66,1),(2,71,1),(2,79,1),(2,82,1),(2,83,1),(3,44,1),(3,47,1),(3,48,1),(3,50,1),(3,60,1),(3,61,1),(3,62,1),(3,72,1),(3,79,1),(3,80,1),(3,82,1),(3,83,1),(4,44,1),(4,45,1),(4,46,1),(4,47,1),(4,48,1),(4,49,1),(4,50,1),(4,51,1),(4,52,1),(4,53,1),(4,54,1),(4,55,1),(4,56,1),(4,57,1),(4,58,1),(4,59,1),(4,60,1),(4,61,1),(4,62,1),(4,63,1),(4,64,1),(4,65,1),(4,66,1),(4,67,1),(4,68,1),(4,69,1),(4,70,1),(4,71,1),(4,72,1),(4,73,1),(4,74,1),(4,75,1),(4,76,1),(4,77,1),(4,78,1),(4,79,1),(4,80,1),(4,81,1),(4,82,1),(4,83,1),(4,84,1),(4,127,1),(5,85,1),(5,86,1),(5,87,1),(5,88,1),(5,89,1),(5,90,1),(5,91,1),(5,92,1),(5,93,1),(5,94,1),(5,95,1),(5,96,1),(5,97,1),(5,98,1),(5,99,1),(5,100,1),(5,101,1),(5,102,1),(5,103,1),(5,104,1),(5,105,1),(5,106,1),(5,107,1),(5,108,1),(5,109,1),(5,110,1),(5,111,1),(5,112,1),(5,113,1),(5,114,1),(5,115,1),(5,116,1),(5,117,1),(5,128,1),(6,85,1),(6,86,1),(6,87,1),(6,88,1),(6,89,1),(6,92,1),(6,93,1),(6,94,1),(6,96,1),(6,97,1),(6,98,1),(6,99,1),(6,100,1),(6,101,1),(6,102,1),(6,103,1),(6,106,1),(6,107,1),(6,108,1),(6,109,1),(6,110,1),(6,111,1),(6,112,1),(6,113,1),(6,114,1),(6,115,1),(6,117,1),(6,128,1),(7,85,1),(7,87,1),(7,88,1),(7,89,1),(7,92,1),(7,93,1),(7,94,1),(7,99,1),(7,100,1),(7,101,1),(7,102,1),(7,105,1),(7,106,1),(7,107,1),(7,108,1),(7,109,1),(7,114,1),(7,115,1),(7,117,1),(7,128,1),(8,85,1),(8,87,1),(8,88,1),(8,89,1),(8,92,1),(8,93,1),(8,94,1),(8,96,0),(8,97,0),(8,109,0),(8,114,0),(8,115,1),(8,117,1),(8,128,1),(9,85,1),(9,87,0),(9,88,1),(9,89,1),(9,92,1),(9,93,1),(9,94,1),(9,99,1),(9,100,1),(9,101,1),(9,102,1),(9,105,1),(9,106,1),(9,107,1),(9,108,1),(9,109,1),(9,114,1),(9,115,1),(9,117,1),(9,128,1),(10,31,1),(10,32,1),(10,33,1),(10,34,1),(10,35,1),(10,36,1),(10,37,1),(10,38,1),(10,39,1),(10,40,1),(10,41,1),(10,42,1),(10,43,1),(10,131,1),(11,31,1),(11,32,1),(11,34,1),(11,35,1),(11,36,1),(11,37,1),(11,38,1),(11,39,1),(11,40,1),(11,41,1),(11,43,1),(11,131,1),(12,31,1),(12,34,1),(12,35,1),(12,36,1),(12,40,1),(12,131,1),(13,31,1),(13,32,1),(13,35,1),(14,1,1),(14,2,1),(14,3,1),(14,4,1),(14,5,1),(14,6,1),(14,7,1),(14,8,1),(14,9,1),(14,10,1),(14,11,1),(14,12,1),(14,13,1),(14,14,1),(14,15,1),(14,16,1),(14,17,1),(14,18,1),(14,19,1),(14,20,1),(14,21,1),(14,22,1),(14,23,1),(14,24,1),(14,25,1),(14,26,1),(14,27,1),(14,28,1),(14,29,1),(14,30,1),(14,132,1),(15,1,1),(15,3,1),(15,4,1),(15,5,1),(15,6,1),(15,7,1),(15,8,1),(15,9,1),(15,11,1),(15,13,1),(15,14,1),(15,15,1),(15,17,1),(15,18,1),(15,19,1),(15,20,1),(15,21,1),(15,22,1),(15,23,1),(15,24,1),(15,25,1),(15,27,1),(15,29,1),(15,30,1),(16,1,0),(17,1,1),(17,7,1),(17,14,1),(17,19,1),(17,20,1),(17,23,1),(17,27,1),(18,1,1),(18,4,1),(18,7,1),(18,8,1),(18,9,1),(18,13,1),(18,14,1),(18,15,1),(18,17,1),(18,18,1),(18,19,1),(18,20,1),(18,21,1),(18,22,1),(18,23,1),(18,24,1),(18,25,1),(18,27,1),(18,29,1),(19,1,1),(19,7,1),(19,14,1),(19,19,1),(19,20,1),(20,1,1),(20,3,1),(20,4,1),(20,7,1),(20,8,1),(20,9,1),(20,13,1),(20,14,1),(20,15,0),(20,17,1),(20,18,1),(20,19,1),(20,20,1),(20,21,1),(20,22,1),(20,23,1),(20,24,1),(20,25,1),(20,27,1),(20,29,1),(21,1,1),(21,3,1),(21,4,1),(21,5,1),(21,6,1),(21,7,1),(21,8,1),(21,9,1),(21,11,1),(21,13,1),(21,14,1),(21,15,1),(21,16,1),(21,17,1),(21,18,1),(21,19,1),(21,20,1),(21,21,1),(21,22,1),(21,23,1),(21,24,1),(21,25,1),(21,27,1),(21,29,1),(21,30,1),(22,1,1),(22,4,1),(22,7,1),(22,8,1),(22,9,1),(22,13,1),(22,14,1),(22,15,1),(22,16,1),(22,17,1),(22,18,1),(22,19,1),(22,20,1),(22,21,1),(22,22,1),(22,23,1),(22,24,1),(22,25,1),(22,27,1),(22,29,1),(23,96,0),(23,97,0),(23,114,0),(24,15,0),(26,1,1),(26,4,1),(26,7,1),(26,9,1),(26,11,1),(26,12,1),(26,13,1),(26,14,1),(26,15,1),(26,16,1),(26,17,1),(26,18,1),(26,19,1),(26,20,1),(26,21,1),(26,22,1),(26,23,1),(26,24,1),(26,25,1),(26,29,1),(26,30,1),(27,31,1),(27,32,1),(27,33,1),(27,34,1),(27,35,1),(27,36,1),(27,37,1),(27,38,1),(27,39,1),(27,40,1),(27,41,1),(27,131,1),(29,31,1),(29,32,1),(29,34,1),(29,35,1),(29,36,1),(29,37,1),(29,38,1),(29,39,1),(29,40,1),(29,41,1),(29,43,1),(29,131,1),(30,6,0),(30,8,0),(30,28,0),(30,30,0);
/*!40000 ALTER TABLE `phpbb_acl_roles_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_acl_users`
--

DROP TABLE IF EXISTS `phpbb_acl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_acl_users` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `auth_setting` tinyint(2) NOT NULL DEFAULT 0,
  KEY `user_id` (`user_id`),
  KEY `auth_option_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_acl_users`
--

LOCK TABLES `phpbb_acl_users` WRITE;
/*!40000 ALTER TABLE `phpbb_acl_users` DISABLE KEYS */;
INSERT INTO `phpbb_acl_users` VALUES (48,2,0,14,0),(2,0,86,0,1),(2,0,88,0,1),(2,0,93,0,1),(2,0,110,0,1),(2,0,115,0,1),(2,0,87,0,1),(2,0,89,0,1),(2,0,90,0,1),(2,0,91,0,1),(2,0,92,0,1),(2,0,117,0,1),(2,0,94,0,1),(2,0,95,0,1),(2,0,120,0,1),(2,0,121,0,1),(2,0,122,0,1),(2,0,123,0,1),(2,0,124,0,1),(2,0,125,0,1),(2,0,126,0,1),(2,0,111,0,1),(2,0,112,0,1),(2,0,113,0,1),(2,0,116,0,1),(2,0,96,0,1),(2,0,97,0,1),(2,0,98,0,1),(2,0,99,0,1),(2,0,100,0,1),(2,0,101,0,1),(2,0,102,0,1),(2,0,103,0,1),(2,0,104,0,1),(2,0,105,0,1),(2,0,106,0,1),(2,0,107,0,1),(2,0,108,0,1),(2,0,109,0,1),(2,0,114,0,1),(2,0,85,0,1),(2,0,128,0,1);
/*!40000 ALTER TABLE `phpbb_acl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_attachments`
--

DROP TABLE IF EXISTS `phpbb_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_attachments` (
  `attach_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_msg_id` int(10) unsigned NOT NULL DEFAULT 0,
  `topic_id` int(10) unsigned NOT NULL DEFAULT 0,
  `in_message` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `poster_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_orphan` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) unsigned NOT NULL DEFAULT 0,
  `filetime` int(11) unsigned NOT NULL DEFAULT 0,
  `thumbnail` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`attach_id`),
  KEY `filetime` (`filetime`),
  KEY `post_msg_id` (`post_msg_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `is_orphan` (`is_orphan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_attachments`
--

LOCK TABLES `phpbb_attachments` WRITE;
/*!40000 ALTER TABLE `phpbb_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_banlist`
--

DROP TABLE IF EXISTS `phpbb_banlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_banlist` (
  `ban_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ban_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) unsigned NOT NULL DEFAULT 0,
  `ban_end` int(11) unsigned NOT NULL DEFAULT 0,
  `ban_exclude` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ban_id`),
  KEY `ban_end` (`ban_end`),
  KEY `ban_user` (`ban_userid`,`ban_exclude`),
  KEY `ban_email` (`ban_email`,`ban_exclude`),
  KEY `ban_ip` (`ban_ip`,`ban_exclude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_banlist`
--

LOCK TABLES `phpbb_banlist` WRITE;
/*!40000 ALTER TABLE `phpbb_banlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_banlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_bbcodes`
--

DROP TABLE IF EXISTS `phpbb_bbcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_bbcodes` (
  `bbcode_id` smallint(4) unsigned NOT NULL DEFAULT 0,
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`bbcode_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_bbcodes`
--

LOCK TABLES `phpbb_bbcodes` WRITE;
/*!40000 ALTER TABLE `phpbb_bbcodes` DISABLE KEYS */;
INSERT INTO `phpbb_bbcodes` VALUES (13,'area','Delineate area: [area]text[/area], or use [area=title]text[/area] to add a header',1,'[area]{TEXT}[/area]','<fieldset style=\"border:3px outset grey; padding:5px 10px\">{TEXT}</fieldset>','!\\[area\\](.*?)\\[/area\\]!ies','\'[area:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/area:$uid]\'','!\\[area:$uid\\](.*?)\\[/area:$uid\\]!s','<fieldset style=\"border:3px outset grey; padding:5px 10px\">${1}</fieldset>'),(14,'area=','',0,'[area={TEXT2}]{TEXT1}[/area]','<fieldset style=\"border:3px outset grey; padding:5px 10px\"><legend style=\"text-transform:uppercase; margin:0px 0.6em; padding:0em 0.33em\">{TEXT2}</legend>{TEXT1}</fieldset>','!\\[area\\=(.*?)\\](.*?)\\[/area\\]!ies','\'[area=\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\':$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${2}\')).\'[/area:$uid]\'','!\\[area\\=(.*?):$uid\\](.*?)\\[/area:$uid\\]!s','<fieldset style=\"border:3px outset grey; padding:5px 10px\"><legend style=\"text-transform:uppercase; margin:0px 0.6em; padding:0em 0.33em\">${1}</legend>${2}</fieldset>'),(15,'cell','',0,'[cell]{TEXT}[/cell]','<td style=\"border:1px solid black; padding:3px;\">{TEXT}</td>','!\\[cell\\](.*?)\\[/cell\\]!ies','\'[cell:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/cell:$uid]\'','!\\[cell:$uid\\](.*?)\\[/cell:$uid\\]!s','<td style=\"border:1px solid black; padding:3px;\">${1}</td>'),(16,'cell=','',0,'[cell={NUMBER}]{TEXT}[/cell]','<td colspan=\"{NUMBER}\" style=\"border:1px solid black; padding:3px;\">{TEXT}</td>','!\\[cell\\=([0-9]+)\\](.*?)\\[/cell\\]!ies','\'[cell=${1}:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${2}\')).\'[/cell:$uid]\'','!\\[cell\\=([0-9]+):$uid\\](.*?)\\[/cell:$uid\\]!s','<td colspan=\"${1}\" style=\"border:1px solid black; padding:3px;\">${2}</td>'),(17,'center','Center-aligned text: [center]paragraph[/center]',0,'[center]{TEXT}[/center]','<div style=\"text-align: center\">{TEXT}</div>','!\\[center\\](.*?)\\[/center\\]!ies','\'[center:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/center:$uid]\'','!\\[center:$uid\\](.*?)\\[/center:$uid\\]!s','<div style=\"text-align: center\">${1}</div>'),(18,'header','',0,'[header]{TEXT}[/header]','<th class=\'bbtableheader\'>{TEXT}</th>','!\\[header\\](.*?)\\[/header\\]!ies','\'[header:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/header:$uid]\'','!\\[header:$uid\\](.*?)\\[/header:$uid\\]!s','<th class=\'bbtableheader\'>${1}</th>'),(19,'hr','Adds a horizontal rule: [hr]width in percent[/hr]',0,'[hr]{NUMBER}[/hr]','<div align=\"center\"><hr style=\"height:14px; width:{NUMBER}%\"></div>','!\\[hr\\]([0-9]+)\\[/hr\\]!i','[hr:$uid]${1}[/hr:$uid]','!\\[hr:$uid\\]([0-9]+)\\[/hr:$uid\\]!s','<div align=\"center\"><hr style=\"height:14px; width:${1}%\"></div>'),(20,'left','',0,'[left]{TEXT}[/left]','<div style=\"text-align: left\">{TEXT}</div>','!\\[left\\](.*?)\\[/left\\]!ies','\'[left:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/left:$uid]\'','!\\[left:$uid\\](.*?)\\[/left:$uid\\]!s','<div style=\"text-align: left\">${1}</div>'),(21,'mech','Game Mechanic: [mech]text[/mech]',1,'[mech]{TEXT}[/mech]','<div style=\"border:3px inset #800000; padding:5px 10px\"><span style=\"color: darkred;font-size: 11px;\">{TEXT}</span></div>','!\\[mech\\](.*?)\\[/mech\\]!ies','\'[mech:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/mech:$uid]\'','!\\[mech:$uid\\](.*?)\\[/mech:$uid\\]!s','<div style=\"border:3px inset #800000; padding:5px 10px\"><span style=\"color: darkred;font-size: 11px;\">${1}</span></div>'),(22,'ooc','Out Of Character commentary: [ooc]text[/ooc]',1,'[ooc]{TEXT}[/ooc]','<span style=\"color:darkred; font-size:smaller\" title=\"This text is being given out-of-character.\">{TEXT}</span>','!\\[ooc\\](.*?)\\[/ooc\\]!ies','\'[ooc:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/ooc:$uid]\'','!\\[ooc:$uid\\](.*?)\\[/ooc:$uid\\]!s','<span style=\"color:darkred; font-size:smaller\" title=\"This text is being given out-of-character.\">${1}</span>'),(23,'reverse','Reverse text: [reverse]text[/reverse]',1,'[reverse]{TEXT}[/reverse]','<span style=\"direction:rtl;unicode-bidi:bidi-override;\">{TEXT}</span>','!\\[reverse\\](.*?)\\[/reverse\\]!ies','\'[reverse:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/reverse:$uid]\'','!\\[reverse:$uid\\](.*?)\\[/reverse:$uid\\]!s','<span style=\"direction:rtl;unicode-bidi:bidi-override;\">${1}</span>'),(24,'right','Right-aligned text: [right]paragraph[/right]',0,'[right]{TEXT}[/right]','<div style=\"text-align: right\">{TEXT}</div>','!\\[right\\](.*?)\\[/right\\]!ies','\'[right:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/right:$uid]\'','!\\[right:$uid\\](.*?)\\[/right:$uid\\]!s','<div style=\"text-align: right\">${1}</div>'),(25,'align=','Specially aligned paragraph: [align=(right, left, or center)]paragraph[/align]',1,'[align={IDENTIFIER}]{TEXT}[/align]','<div style=\"text-align: {IDENTIFIER}\">{TEXT}</div>','!\\[align\\=([a-zA-Z0-9-_]+)\\](.*?)\\[/align\\]!ies','\'[align=${1}:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${2}\')).\'[/align:$uid]\'','!\\[align\\=([a-zA-Z0-9-_]+):$uid\\](.*?)\\[/align:$uid\\]!s','<div style=\"text-align: ${1}\">${2}</div>'),(26,'row','',0,'[row]{TEXT}[/row]','<tr>{TEXT}</tr>','!\\[row\\](.*?)\\[/row\\]!ies','\'[row:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/row:$uid]\'','!\\[row:$uid\\](.*?)\\[/row:$uid\\]!s','<tr>${1}</tr>'),(27,'s','',0,'[s]{TEXT}[/s]','<strike>{TEXT}</strike>','!\\[s\\](.*?)\\[/s\\]!ies','\'[s:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/s:$uid]\'','!\\[s:$uid\\](.*?)\\[/s:$uid\\]!s','<strike>${1}</strike>'),(28,'smallcaps','Smallcaps text: [smallcaps]text[/smallcaps]',1,'[smallcaps]{TEXT}[/smallcaps]','<span style=\"text-transform:uppercase; font-size:smaller\">{TEXT}</span>','!\\[smallcaps\\](.*?)\\[/smallcaps\\]!ies','\'[smallcaps:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/smallcaps:$uid]\'','!\\[smallcaps:$uid\\](.*?)\\[/smallcaps:$uid\\]!s','<span style=\"text-transform:uppercase; font-size:smaller\">${1}</span>'),(29,'spoiler','Spoiler text: [spoiler]short message[/spoiler]',1,'[spoiler]{TEXT}[/spoiler]','<span style=\"color:#000000 !important; background:#000000 !important; padding:0px 3px;\"  title=\"This text is hidden to prevent spoilers; to reveal, highlight it with your cursor.\">{TEXT}</span>','!\\[spoiler\\](.*?)\\[/spoiler\\]!ies','\'[spoiler:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/spoiler:$uid]\'','!\\[spoiler:$uid\\](.*?)\\[/spoiler:$uid\\]!s','<span style=\"color:#000000 !important; background:#000000 !important; padding:0px 3px;\"  title=\"This text is hidden to prevent spoilers; to reveal, highlight it with your cursor.\">${1}</span>'),(30,'spoiler=','Longer spoiler text: [spoiler=clue]paragraph[/spoiler]',1,'[spoiler={TEXT2}]{TEXT1}[/spoiler]','<div style=\"margin:20px; margin-top:1px; margin-bottom:1px;\"><div class=\"quotetitle\"><b>Spoiler: {TEXT2}</b> <input type=\"button\" value=\"Show\" style=\"width:45px;font-size:10px;margin:0px;padding:0px;\" onclick=\"if (this.parentNode.parentNode.getElementsByTagName(\'div\')[1].getElementsByTagName(\'div\')[0].style.display != \'\') { this.parentNode.parentNode.getElementsByTagName(\'div\')[1].getElementsByTagName(\'div\')[0].style.display = \'\'; this.innerText = \'\'; this.value = \'Hide\'; } else { this.parentNode.parentNode.getElementsByTagName(\'div\')[1].getElementsByTagName(\'div\')[0].style.display = \'none\'; this.innerText = \'\'; this.value = \'Show\'; }\" /></div><div class=\"quotecontent\"><div style=\"display: none;\">{TEXT1}</div></div></div>','!\\[spoiler\\=(.*?)\\](.*?)\\[/spoiler\\]!ies','\'[spoiler=\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\':$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${2}\')).\'[/spoiler:$uid]\'','!\\[spoiler\\=(.*?):$uid\\](.*?)\\[/spoiler:$uid\\]!s','<div style=\"margin:20px; margin-top:1px; margin-bottom:1px;\"><div class=\"quotetitle\"><b>Spoiler: ${1}</b> <input type=\"button\" value=\"Show\" style=\"width:45px;font-size:10px;margin:0px;padding:0px;\" onclick=\"if (this.parentNode.parentNode.getElementsByTagName(\'div\')[1].getElementsByTagName(\'div\')[0].style.display != \'\') { this.parentNode.parentNode.getElementsByTagName(\'div\')[1].getElementsByTagName(\'div\')[0].style.display = \'\'; this.innerText = \'\'; this.value = \'Hide\'; } else { this.parentNode.parentNode.getElementsByTagName(\'div\')[1].getElementsByTagName(\'div\')[0].style.display = \'none\'; this.innerText = \'\'; this.value = \'Show\'; }\" /></div><div class=\"quotecontent\"><div style=\"display: none;\">${2}</div></div></div>'),(31,'strike','Strikethrough text: [strike]text[/strike] or [s]text[/s]',1,'[strike]{TEXT}[/strike]','<strike>{TEXT}</strike>','!\\[strike\\](.*?)\\[/strike\\]!ies','\'[strike:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/strike:$uid]\'','!\\[strike:$uid\\](.*?)\\[/strike:$uid\\]!s','<strike>${1}</strike>'),(32,'sub','Subscript: [sub]text[/sub]',1,'[sub]{TEXT}[/sub]','<sub>{TEXT}</sub>','!\\[sub\\](.*?)\\[/sub\\]!ies','\'[sub:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/sub:$uid]\'','!\\[sub:$uid\\](.*?)\\[/sub:$uid\\]!s','<sub>${1}</sub>'),(33,'sup','Superscript: [sup]text[/sup]',1,'[sup]{TEXT}[/sup]','<sup>{TEXT}</sup>','!\\[sup\\](.*?)\\[/sup\\]!ies','\'[sup:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/sup:$uid]\'','!\\[sup:$uid\\](.*?)\\[/sup:$uid\\]!s','<sup>${1}</sup>'),(34,'tab','Insert a \'tab\' gap of certain width: [tab]5[/tab] is standard (1/2 inch)',1,'[tab]{NUMBER}[/tab]','<span style=\"padding-left:0.{NUMBER}in\"></span>','!\\[tab\\]([0-9]+)\\[/tab\\]!i','[tab:$uid]${1}[/tab:$uid]','!\\[tab:$uid\\]([0-9]+)\\[/tab:$uid\\]!s','<span style=\"padding-left:0.${1}in\"></span>'),(35,'table','Table wrapper tag (MUST have row/cell tags inside to display properly!): [table][row][header]header text[/header][/row][row][cell]cell text[/cell][/row][/table]',1,'[table]{TEXT}[/table]','<table style=\"border:1px solid black; \">{TEXT}</table>','!\\[table\\](.*?)\\[/table\\]!ies','\'[table:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/table:$uid]\'','!\\[table:$uid\\](.*?)\\[/table:$uid\\]!s','<table style=\"border:1px solid black; \">${1}</table>'),(36,'thumb=','Shrink image: [thumb=width (in px)]image location[/thumb]',0,'[thumb={NUMBER}]{URL}[/thumb]','<a href=\"{URL}\"><img style=\"max-width:{NUMBER}px;\" src=\"{URL}\" alt=\"Image\" /></a>','!\\[thumb\\=([0-9]+)\\](?:([a-z][a-z\\d+\\-.]*:/{2}(?:(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})+|[0-9.]+|\\[[a-z0-9.]+:[a-z0-9.]+:[a-z0-9.:]+\\])(?::\\d*)?(?:/(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})*)*(?:\\?(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?(?:#(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?)|(www\\.(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})+(?::\\d*)?(?:/(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})*)*(?:\\?(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?(?:#(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?))\\[/thumb\\]!iue','\'[thumb=${1}:$uid]\'.$this->bbcode_specialchars((\'${2}\') ? \'${2}\' : \'http://${3}\').\'[/thumb:$uid]\'','!\\[thumb\\=([0-9]+):$uid\\](?i)((?:[a-z][a-z\\d+\\-.]*:/{2}(?:(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})+|[0-9.]+|\\[[a-z0-9.]+:[a-z0-9.]+:[a-z0-9.:]+\\])(?::\\d*)?(?:/(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})*)*(?:\\?(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?(?:#(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?)|(?:www\\.(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})+(?::\\d*)?(?:/(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})*)*(?:\\?(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?(?:#(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?))(?-i)\\[/thumb:$uid\\]!su','<a href=\"${2}\"><img style=\"max-width:${1}px;\" src=\"${2}\" alt=\"Image\" /></a>'),(37,'unvote','Official unvote: [unvote]username or option[/unvote]',1,'[unvote]{TEXT}[/unvote]','<span class=\'bbvote\' title=\"This is an official unvote.\">UNVOTE: {TEXT}</span>','!\\[unvote\\](.*?)\\[/unvote\\]!ies','\'[unvote:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/unvote:$uid]\'','!\\[unvote:$uid\\](.*?)\\[/unvote:$uid\\]!s','<span class=\'bbvote\' title=\"This is an official unvote.\">UNVOTE: ${1}</span>'),(38,'vote','Official vote tag: [vote]username or option[/vote]',1,'[vote]{TEXT}[/vote]','<span class=\'bbvote\' title=\"This is an official vote.\">VOTE: {TEXT}</span>','!\\[vote\\](.*?)\\[/vote\\]!ies','\'[vote:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/vote:$uid]\'','!\\[vote:$uid\\](.*?)\\[/vote:$uid\\]!s','<span class=\'bbvote\' title=\"This is an official vote.\">VOTE: ${1}</span>'),(39,'wiki','Wikilink: [wiki]text[/wiki] or [wiki=display text]text[/wiki]',1,'[wiki]{TEXT}[/wiki]','<a href=\"http://wiki.mafiascum.net/index.php?title={TEXT}\" target=\"_blank\" class=\"postlink\">{TEXT}</a>','!\\[wiki\\](.*?)\\[/wiki\\]!ies','\'[wiki:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/wiki:$uid]\'','!\\[wiki:$uid\\](.*?)\\[/wiki:$uid\\]!s','<a href=\"http://wiki.mafiascum.net/index.php?title=${1}\" target=\"_blank\" class=\"postlink\">${1}</a>'),(40,'wiki=','',0,'[wiki={TEXT1}]{TEXT2}[/wiki]','<a href=\"http://wiki.mafiascum.net/index.php?title={TEXT1}\" target=\"_blank\" class=\"postlink\">{TEXT2}</a>','!\\[wiki\\=(.*?)\\](.*?)\\[/wiki\\]!ies','\'[wiki=\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\':$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${2}\')).\'[/wiki:$uid]\'','!\\[wiki\\=(.*?):$uid\\](.*?)\\[/wiki:$uid\\]!s','<a href=\"http://wiki.mafiascum.net/index.php?title=${1}\" target=\"_blank\" class=\"postlink\">${2}</a>'),(41,'pre','Pre-formatted, monospace text: [pre]paragraph[/pre]',1,'[pre]{TEXT}[/pre]','<pre><div class=\"code_body\" style=\"border: medium none ; background: transparent none repeat scroll 0% 0%; font-size: 9pt; font-family: terminal,\'courier new\'; line-height: 101%; letter-spacing: 0px; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial;\">{TEXT}</div></pre>','!\\[pre\\](.*?)\\[/pre\\]!ies','\'[pre:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/pre:$uid]\'','!\\[pre:$uid\\](.*?)\\[/pre:$uid\\]!s','<pre><div class=\"code_body\" style=\"border: medium none ; background: transparent none repeat scroll 0% 0%; font-size: 9pt; font-family: terminal,\'courier new\'; line-height: 101%; letter-spacing: 0px; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial;\">${1}</div></pre>'),(42,'anchor=','Anchor: [anchor=anchor name]Text to display[/anchor]',1,'[anchor={SIMPLETEXT}]{TEXT}[/anchor]','<a name=\"{SIMPLETEXT}\">{TEXT}</a>','!\\[anchor\\=([a-zA-Z0-9-+.,_ ]+)\\](.*?)\\[/anchor\\]!ies','\'[anchor=${1}:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${2}\')).\'[/anchor:$uid]\'','!\\[anchor\\=([a-zA-Z0-9-+.,_ ]+):$uid\\](.*?)\\[/anchor:$uid\\]!s','<a name=\"${1}\">${2}</a>'),(43,'goto=','Goto: [goto=anchor name]Link text[/goto] (only for same-post anchor links)',0,'[goto={SIMPLETEXT}]{TEXT}[/goto]','<a href=\"#{SIMPLETEXT}\">{TEXT}</a>','!\\[goto\\=([a-zA-Z0-9-+.,_ ]+)\\](.*?)\\[/goto\\]!ies','\'[goto=${1}:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${2}\')).\'[/goto:$uid]\'','!\\[goto\\=([a-zA-Z0-9-+.,_ ]+):$uid\\](.*?)\\[/goto:$uid\\]!s','<a href=\"#${1}\">${2}</a>'),(44,'anchor','HTML Anchor: [anchor=anchor name]Anchor Name[/anchor]',0,'[anchor]{SIMPLETEXT}[/anchor]','<a name=\"{SIMPLETEXT}\">{SIMPLETEXT}</a>','!\\[anchor\\]([a-zA-Z0-9-+.,_ ]+)\\[/anchor\\]!i','[anchor:$uid]${1}[/anchor:$uid]','!\\[anchor:$uid\\]([a-zA-Z0-9-+.,_ ]+)\\[/anchor:$uid\\]!s','<a name=\"${1}\">${1}</a>'),(45,'goto','Goto: [goto=anchor name]Anchor Name[/goto] (only for same-post anchor links)',1,'[goto]{SIMPLETEXT}[/goto]','<a href=\"#{SIMPLETEXT}\">{SIMPLETEXT}</a>','!\\[goto\\]([a-zA-Z0-9-+.,_ ]+)\\[/goto\\]!i','[goto:$uid]${1}[/goto:$uid]','!\\[goto:$uid\\]([a-zA-Z0-9-+.,_ ]+)\\[/goto:$uid\\]!s','<a href=\"#${1}\">${1}</a>'),(46,'chess','Chess code (PGN notation): [chess]moves[/chess]',0,'[chess]{TEXT}[/chess]','<script type=\'text/javascript\'>\nvar pgn4webPath = \"/pgn4web\";\nvar pgn4webTextareaIdNum;\nif (pgn4webTextareaIdNum == undefined) { pgn4webTextareaIdNum = 1; }\npgn4webTextareaId = \"pgn4web_\" + pgn4webTextareaIdNum++;\ndocument.write(\"<textarea id=\'\" + pgn4webTextareaId +\"\' style=\'display: none;\'>\");\n</script>\n{TEXT}\n</textarea>\n<script type=\'text/javascript\'>\ndocument.getElementById(pgn4webTextareaId).value = document.getElementById(pgn4webTextareaId).value.replace(/<\\s*br\\s*\\/>/gi, \' \');\nmultiGamesRegexp = /\\s*\\[\\s*\\w+\\s*\"[^\"]*\"\\s*\\]\\s*[^\\s\\[\\]]+[\\s\\S]*\\[\\s*\\w+\\s*\"[^\"]*\"\\s*\\]\\s*/m;\nif (multiGamesRegexp.test(document.getElementById(pgn4webTextareaId).value)) { height = 500; }\nelse { height = 450; }\ndocument.write(\"<iframe src=\'\" + pgn4webPath + \"/board.html?am=none&d=3000&ss=44&ps=d&pf=d&lcs=TtKN&dcs=LHCg&bbcs=LHCg&hm=b&hcs=mF9_&bd=c&cbcs=RZmI&ctcs=zEtr&hd=j&md=j&ih=end&tm=13&fhcs=$$$$&fhs=80p&fmcs=$$$$&fccs=v71$&hmcs=M___&fms=90p&fcs=m&cd=i&bcs=TtKN&fp=13&hl=t&fh=b&fw=p&pi=\" + pgn4webTextareaId + \"\' frameborder=0 width=100% height=\" + height + \" scrolling=\'no\' marginheight=\'0\' marginwidth=\'0\'>your web browser and/or your host do not support iframes as required to display the chessboard</iframe>\");\n</script>','!\\[chess\\](.*?)\\[/chess\\]!ies','\'[chess:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/chess:$uid]\'','!\\[chess:$uid\\](.*?)\\[/chess:$uid\\]!s','<script type=\'text/javascript\'>\nvar pgn4webPath = \"/pgn4web\";\nvar pgn4webTextareaIdNum;\nif (pgn4webTextareaIdNum == undefined) { pgn4webTextareaIdNum = 1; }\npgn4webTextareaId = \"pgn4web_\" + pgn4webTextareaIdNum++;\ndocument.write(\"<textarea id=\'\" + pgn4webTextareaId +\"\' style=\'display: none;\'>\");\n</script>\n${1}\n</textarea>\n<script type=\'text/javascript\'>\ndocument.getElementById(pgn4webTextareaId).value = document.getElementById(pgn4webTextareaId).value.replace(/<\\s*br\\s*\\/>/gi, \' \');\nmultiGamesRegexp = /\\s*\\[\\s*\\w+\\s*\"[^\"]*\"\\s*\\]\\s*[^\\s\\[\\]]+[\\s\\S]*\\[\\s*\\w+\\s*\"[^\"]*\"\\s*\\]\\s*/m;\nif (multiGamesRegexp.test(document.getElementById(pgn4webTextareaId).value)) { height = 500; }\nelse { height = 450; }\ndocument.write(\"<iframe src=\'\" + pgn4webPath + \"/board.html?am=none&d=3000&ss=44&ps=d&pf=d&lcs=TtKN&dcs=LHCg&bbcs=LHCg&hm=b&hcs=mF9_&bd=c&cbcs=RZmI&ctcs=zEtr&hd=j&md=j&ih=end&tm=13&fhcs=$$$$&fhs=80p&fmcs=$$$$&fccs=v71$&hmcs=M___&fms=90p&fcs=m&cd=i&bcs=TtKN&fp=13&hl=t&fh=b&fw=p&pi=\" + pgn4webTextareaId + \"\' frameborder=0 width=100% height=\" + height + \" scrolling=\'no\' marginheight=\'0\' marginwidth=\'0\'>your web browser and/or your host do not support iframes as required to display the chessboard</iframe>\");\n</script>'),(47,'header=','',0,'[header={NUMBER}]{TEXT}[/header]','<th colspan=\"{NUMBER}\" class=\'bbtableheader\'>{TEXT}</th>','!\\[header\\=([0-9]+)\\](.*?)\\[/header\\]!ies','\'[header=${1}:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${2}\')).\'[/header:$uid]\'','!\\[header\\=([0-9]+):$uid\\](.*?)\\[/header:$uid\\]!s','<th colspan=\"${1}\" class=\'bbtableheader\'>${2}</th>'),(48,'mech=','',0,'[mech={TEXT2}]{TEXT1}[/mech]','<fieldset style=\"border:3px inset #800000; padding:5px 10px\"><legend style=\"text-transform:uppercase; margin:0px 0.6em; padding:0em 0.33em\">{TEXT2}</legend>{TEXT1}</fieldset>','!\\[mech\\=(.*?)\\](.*?)\\[/mech\\]!ies','\'[mech=\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\':$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${2}\')).\'[/mech:$uid]\'','!\\[mech\\=(.*?):$uid\\](.*?)\\[/mech:$uid\\]!s','<fieldset style=\"border:3px inset #800000; padding:5px 10px\"><legend style=\"text-transform:uppercase; margin:0px 0.6em; padding:0em 0.33em\">${1}</legend>${2}</fieldset>'),(49,'clock=','',0,'[clock={IDENTIFIER}]{NUMBER1},{NUMBER2}[/clock]','<span style=\"size:200%; border:4px double black\">{NUMBER1}<img src=\"/wiki/images/8/88/Colon.png\">{NUMBER2} {IDENTIFIER}</span>','!\\[clock\\=([a-zA-Z0-9-_]+)\\]([0-9]+),([0-9]+)\\[/clock\\]!i','[clock=${1}:$uid]${2},${3}[/clock:$uid]','!\\[clock\\=([a-zA-Z0-9-_]+):$uid\\]([0-9]+),([0-9]+)\\[/clock:$uid\\]!s','<span style=\"size:200%; border:4px double black\">${2}<img src=\"/wiki/images/8/88/Colon.png\">${3} ${1}</span>'),(50,'float=','Specially aligned floating text: [float=(right or left)]content[/float]',1,'[float={IDENTIFIER}]{TEXT}[/float]','<div style=\"float: {IDENTIFIER}; padding-left:5px; padding-right:5px;\">{TEXT}</div>','!\\[float\\=([a-zA-Z0-9-_]+)\\](.*?)\\[/float\\]!ies','\'[float=${1}:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${2}\')).\'[/float:$uid]\'','!\\[float\\=([a-zA-Z0-9-_]+):$uid\\](.*?)\\[/float:$uid\\]!s','<div style=\"float: ${1}; padding-left:5px; padding-right:5px;\">${2}</div>'),(51,'mono','Monospace text: [mono]text[/mono]',0,'[mono]{TEXT}[/mono]','<span style=\"font-family: \'courier new\',monospace;\">{TEXT}</span>','!\\[mono\\](.*?)\\[/mono\\]!ies','\'[mono:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/mono:$uid]\'','!\\[mono:$uid\\](.*?)\\[/mono:$uid\\]!s','<span style=\"font-family: \'courier new\',monospace;\">${1}</span>'),(53,'go','',0,'[go]{TEXT}[/go]','<b>Go</b> is not implemented yet.','!\\[go\\](.*?)\\[/go\\]!ies','\'[go:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/go:$uid]\'','!\\[go:$uid\\](.*?)\\[/go:$uid\\]!s','<b>Go</b> is not implemented yet.'),(54,'card','',0,'[card]{SIMPLETEXT}[/card]','','!\\[card\\]([a-zA-Z0-9-+.,_ ]+)\\[/card\\]!i','[card:$uid]${1}[/card:$uid]','!\\[card:$uid\\]([a-zA-Z0-9-+.,_ ]+)\\[/card:$uid\\]!s',''),(55,'table=','',0,'[table={SIMPLETEXT}]{TEXT}[/table]','<table style=\"border:1px solid black; background:#{SIMPLETEXT};\">{TEXT}</table>','!\\[table\\=([a-zA-Z0-9-+.,_ ]+)\\](.*?)\\[/table\\]!ies','\'[table=${1}:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${2}\')).\'[/table:$uid]\'','!\\[table\\=([a-zA-Z0-9-+.,_ ]+):$uid\\](.*?)\\[/table:$uid\\]!s','<table style=\"border:1px solid black; background:#${1};\">${2}</table>'),(56,'font=','Basic font capability: [font=font-family]text[/font]. mono, serif, and sans-serif should work predictably. [font=Times New Roman] not guaranteed.',1,'[font={SIMPLETEXT}]{TEXT}[/font]','<span style=\"font-family: \'{SIMPLETEXT}\';\">{TEXT}</span>','!\\[font\\=([a-zA-Z0-9-+.,_ ]+)\\](.*?)\\[/font\\]!ies','\'[font=${1}:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${2}\')).\'[/font:$uid]\'','!\\[font\\=([a-zA-Z0-9-+.,_ ]+):$uid\\](.*?)\\[/font:$uid\\]!s','<span style=\"font-family: \'${1}\';\">${2}</span>'),(57,'user','Quicklink to the user\'s profile page: [user]username[/user]',1,'[user]{TEXT}[/user]','<a href=\"/memberlist.php?mode=viewprofile&un={TEXT}\" class=\"postlink\">{TEXT}</a>','!\\[user\\](.*?)\\[/user\\]!ies','\'[user:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/user:$uid]\'','!\\[user:$uid\\](.*?)\\[/user:$uid\\]!s','<a href=\"/memberlist.php?mode=viewprofile&un=${1}\" class=\"postlink\">${1}</a>'),(59,'line','Adds a horizontal line: [line]width in percent[/line]',1,'[line]{NUMBER}[/line]','<div align=\"center\"><hr style=\"height:14px; width:{NUMBER}%\"></div>','!\\[line\\]([0-9]+)\\[/line\\]!i','[line:$uid]${1}[/line:$uid]','!\\[line:$uid\\]([0-9]+)\\[/line:$uid\\]!s','<div align=\"center\"><hr style=\"height:14px; width:${1}%\"></div>'),(60,'youtube','YouTube: [youtube]Video ID[/youtube]',0,'[youtube]{SIMPLETEXT}[/youtube]','<iframe width=\"420\" height=\"345\" src=\"http://www.youtube.com/embed/{SIMPLETEXT}\" frameborder=\"0\" allowfullscreen></iframe>','!\\[youtube\\]([a-zA-Z0-9-+.,_ ]+)\\[/youtube\\]!i','[youtube:$uid]${1}[/youtube:$uid]','!\\[youtube:$uid\\]([a-zA-Z0-9-+.,_ ]+)\\[/youtube:$uid\\]!s','<iframe width=\"420\" height=\"345\" src=\"http://www.youtube.com/embed/${1}\" frameborder=\"0\" allowfullscreen></iframe>'),(61,'test=','',0,'[test={NUMBER}x{NUMBER1}]{URL}[/test]','<img src=\"{URL}\" width=\"{NUMBER}px\" height=\"{NUMBER1}px\">','!\\[test\\=([0-9]+)x([0-9]+)\\](?:([a-z][a-z\\d+\\-.]*:/{2}(?:(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})+|[0-9.]+|\\[[a-z0-9.]+:[a-z0-9.]+:[a-z0-9.:]+\\])(?::\\d*)?(?:/(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})*)*(?:\\?(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?(?:#(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?)|(www\\.(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})+(?::\\d*)?(?:/(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})*)*(?:\\?(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?(?:#(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?))\\[/test\\]!iue','\'[test=${1}x${2}:$uid]\'.$this->bbcode_specialchars((\'${3}\') ? \'${3}\' : \'http://${4}\').\'[/test:$uid]\'','!\\[test\\=([0-9]+)x([0-9]+):$uid\\](?i)((?:[a-z][a-z\\d+\\-.]*:/{2}(?:(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})+|[0-9.]+|\\[[a-z0-9.]+:[a-z0-9.]+:[a-z0-9.:]+\\])(?::\\d*)?(?:/(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})*)*(?:\\?(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?(?:#(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?)|(?:www\\.(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})+(?::\\d*)?(?:/(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})*)*(?:\\?(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?(?:#(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?))(?-i)\\[/test:$uid\\]!su','<img src=\"${3}\" width=\"${1}px\" height=\"${2}px\">'),(62,'hurt','',0,'[hurt]{TEXT}[/hurt]','<span style=\"font-weight: bold; background:#FF5555; padding: 0px 2px;\" title=\"This is an official hurt tag.\">HURT: {TEXT}</span>','!\\[hurt\\](.*?)\\[/hurt\\]!ies','\'[hurt:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/hurt:$uid]\'','!\\[hurt:$uid\\](.*?)\\[/hurt:$uid\\]!s','<span style=\"font-weight: bold; background:#FF5555; padding: 0px 2px;\" title=\"This is an official hurt tag.\">HURT: ${1}</span>'),(63,'heal','',0,'[heal]{TEXT}[/heal]','<span style=\"font-weight: bold; background:#FFFF55; padding: 0px 2px;\" title=\"This is an official heal tag.\">HEAL: {TEXT}</span>','!\\[heal\\](.*?)\\[/heal\\]!ies','\'[heal:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/heal:$uid]\'','!\\[heal:$uid\\](.*?)\\[/heal:$uid\\]!s','<span style=\"font-weight: bold; background:#FFFF55; padding: 0px 2px;\" title=\"This is an official heal tag.\">HEAL: ${1}</span>'),(64,'hurt2','',0,'[hurt2]{TEXT}[/hurt2]','<span style=\"font-weight: bold; background:#CC2222; padding: 0px 2px;\" title=\"This is an official doublehurt tag.\">HURT WITH A BLADE: {TEXT}</span>','!\\[hurt2\\](.*?)\\[/hurt2\\]!ies','\'[hurt2:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/hurt2:$uid]\'','!\\[hurt2:$uid\\](.*?)\\[/hurt2:$uid\\]!s','<span style=\"font-weight: bold; background:#CC2222; padding: 0px 2px;\" title=\"This is an official doublehurt tag.\">HURT WITH A BLADE: ${1}</span>'),(65,'v','',0,'[v]{TEXT}[/v]','<span class=\'bbvote\' title=\"This is an official vote.\">VOTE: {TEXT}</span>','!\\[v\\](.*?)\\[/v\\]!ies','\'[v:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/v:$uid]\'','!\\[v:$uid\\](.*?)\\[/v:$uid\\]!s','<span class=\'bbvote\' title=\"This is an official vote.\">VOTE: ${1}</span>'),(66,'uv','',0,'[uv]{TEXT}[/uv]','<span class=\'bbvote\' title=\"This is an official unvote.\">UNVOTE: {TEXT}</span>','!\\[uv\\](.*?)\\[/uv\\]!ies','\'[uv:$uid]\'.str_replace(array(\"\\r\\n\", \'\\\"\', \'\\\'\', \'(\', \')\'), array(\"\\n\", \'\"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/uv:$uid]\'','!\\[uv:$uid\\](.*?)\\[/uv:$uid\\]!s','<span class=\'bbvote\' title=\"This is an official unvote.\">UNVOTE: ${1}</span>'),(67,'hoverimg=','',0,'[hoverimg={SIMPLETEXT}]{URL}[/hoverimg]','<a href=\"{URL}\"><img title=\"{SIMPLETEXT}\" src=\"{URL}\" alt=\"Image\" /></a>','!\\[hoverimg\\=([a-zA-Z0-9-+.,_ ]+)\\](?:([a-z][a-z\\d+\\-.]*:/{2}(?:(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})+|[0-9.]+|\\[[a-z0-9.]+:[a-z0-9.]+:[a-z0-9.:]+\\])(?::\\d*)?(?:/(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})*)*(?:\\?(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?(?:#(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?)|(www\\.(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})+(?::\\d*)?(?:/(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})*)*(?:\\?(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?(?:#(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?))\\[/hoverimg\\]!iue','\'[hoverimg=${1}:$uid]\'.$this->bbcode_specialchars((\'${2}\') ? \'${2}\' : \'http://${3}\').\'[/hoverimg:$uid]\'','!\\[hoverimg\\=([a-zA-Z0-9-+.,_ ]+):$uid\\](?i)((?:[a-z][a-z\\d+\\-.]*:/{2}(?:(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})+|[0-9.]+|\\[[a-z0-9.]+:[a-z0-9.]+:[a-z0-9.:]+\\])(?::\\d*)?(?:/(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})*)*(?:\\?(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?(?:#(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?)|(?:www\\.(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})+(?::\\d*)?(?:/(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@|]+|%[\\dA-F]{2})*)*(?:\\?(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?(?:#(?:[^\\p{C}\\p{Z}\\p{S}\\p{P}\\p{Nl}\\p{No}\\p{Me}\\x{1100}-\\x{115F}\\x{A960}-\\x{A97C}\\x{1160}-\\x{11A7}\\x{D7B0}-\\x{D7C6}\\x{20D0}-\\x{20FF}\\x{1D100}-\\x{1D1FF}\\x{1D200}-\\x{1D24F}\\x{0640}\\x{07FA}\\x{302E}\\x{302F}\\x{3031}-\\x{3035}\\x{303B}]*[\\x{00B7}\\x{0375}\\x{05F3}\\x{05F4}\\x{30FB}\\x{002D}\\x{06FD}\\x{06FE}\\x{0F0B}\\x{3007}\\x{00DF}\\x{03C2}\\x{200C}\\x{200D}\\pL0-9\\-._~\\!$&\'()*+,;=:@/?|]+|%[\\dA-F]{2})*)?))(?-i)\\[/hoverimg:$uid\\]!su','<a href=\"${2}\"><img title=\"${1}\" src=\"${2}\" alt=\"Image\" /></a>');
/*!40000 ALTER TABLE `phpbb_bbcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_bookmarks`
--

DROP TABLE IF EXISTS `phpbb_bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_bookmarks` (
  `topic_id` int(10) unsigned NOT NULL DEFAULT 0,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`topic_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_bookmarks`
--

LOCK TABLES `phpbb_bookmarks` WRITE;
/*!40000 ALTER TABLE `phpbb_bookmarks` DISABLE KEYS */;
INSERT INTO `phpbb_bookmarks` VALUES (3,48),(4,2),(4,48),(8,2),(9,48),(13,48),(14,2),(14,48);
/*!40000 ALTER TABLE `phpbb_bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_bots`
--

DROP TABLE IF EXISTS `phpbb_bots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_bots` (
  `bot_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bot_active` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`bot_id`),
  KEY `bot_active` (`bot_active`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_bots`
--

LOCK TABLES `phpbb_bots` WRITE;
/*!40000 ALTER TABLE `phpbb_bots` DISABLE KEYS */;
INSERT INTO `phpbb_bots` VALUES (1,1,'AdsBot [Google]',3,'AdsBot-Google',''),(2,1,'Alexa [Bot]',4,'ia_archiver',''),(3,1,'Alta Vista [Bot]',5,'Scooter/',''),(4,1,'Ask Jeeves [Bot]',6,'Ask Jeeves',''),(5,1,'Baidu [Spider]',7,'Baiduspider',''),(6,1,'Bing [Bot]',8,'bingbot/',''),(7,1,'Exabot [Bot]',9,'Exabot',''),(8,1,'FAST Enterprise [Crawler]',10,'FAST Enterprise Crawler',''),(9,1,'FAST WebCrawler [Crawler]',11,'FAST-WebCrawler/',''),(10,1,'Francis [Bot]',12,'http://www.neomo.de/',''),(11,1,'Gigabot [Bot]',13,'Gigabot/',''),(12,1,'Google Adsense [Bot]',14,'Mediapartners-Google',''),(13,1,'Google Desktop',15,'Google Desktop',''),(14,1,'Google Feedfetcher',16,'Feedfetcher-Google',''),(15,1,'Google [Bot]',17,'Googlebot',''),(16,1,'Heise IT-Markt [Crawler]',18,'heise-IT-Markt-Crawler',''),(17,1,'Heritrix [Crawler]',19,'heritrix/1.',''),(18,1,'IBM Research [Bot]',20,'ibm.com/cs/crawler',''),(19,1,'ICCrawler - ICjobs',21,'ICCrawler - ICjobs',''),(20,1,'ichiro [Crawler]',22,'ichiro/',''),(21,1,'Majestic-12 [Bot]',23,'MJ12bot/',''),(22,1,'Metager [Bot]',24,'MetagerBot/',''),(23,1,'MSN NewsBlogs',25,'msnbot-NewsBlogs/',''),(24,1,'MSN [Bot]',26,'msnbot/',''),(25,1,'MSNbot Media',27,'msnbot-media/',''),(26,1,'Nutch [Bot]',28,'http://lucene.apache.org/nutch/',''),(27,1,'Online link [Validator]',29,'online link validator',''),(28,1,'psbot [Picsearch]',30,'psbot/0',''),(29,1,'Sensis [Crawler]',31,'Sensis Web Crawler',''),(30,1,'SEO Crawler',32,'SEO search Crawler/',''),(31,1,'Seoma [Crawler]',33,'Seoma [SEO Crawler]',''),(32,1,'SEOSearch [Crawler]',34,'SEOsearch/',''),(33,1,'Snappy [Bot]',35,'Snappy/1.1 ( http://www.urltrends.com/ )',''),(34,1,'Steeler [Crawler]',36,'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/',''),(35,1,'Telekom [Bot]',37,'crawleradmin.t-info@telekom.de',''),(36,1,'TurnitinBot [Bot]',38,'TurnitinBot/',''),(37,1,'Voyager [Bot]',39,'voyager/',''),(38,1,'W3 [Sitesearch]',40,'W3 SiteSearch Crawler',''),(39,1,'W3C [Linkcheck]',41,'W3C-checklink/',''),(40,1,'W3C [Validator]',42,'W3C_Validator',''),(41,1,'YaCy [Bot]',43,'yacybot',''),(42,1,'Yahoo MMCrawler [Bot]',44,'Yahoo-MMCrawler/',''),(43,1,'Yahoo Slurp [Bot]',45,'Yahoo! DE Slurp',''),(44,1,'Yahoo [Bot]',46,'Yahoo! Slurp',''),(45,1,'YahooSeeker [Bot]',47,'YahooSeeker/','');
/*!40000 ALTER TABLE `phpbb_bots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_captcha_answers`
--

DROP TABLE IF EXISTS `phpbb_captcha_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_captcha_answers` (
  `question_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `answer_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `question_id` (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_captcha_answers`
--

LOCK TABLES `phpbb_captcha_answers` WRITE;
/*!40000 ALTER TABLE `phpbb_captcha_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_captcha_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_captcha_questions`
--

DROP TABLE IF EXISTS `phpbb_captcha_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_captcha_questions` (
  `question_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `strict` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `question_text` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`question_id`),
  KEY `lang_iso` (`lang_iso`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_captcha_questions`
--

LOCK TABLES `phpbb_captcha_questions` WRITE;
/*!40000 ALTER TABLE `phpbb_captcha_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_captcha_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_config`
--

DROP TABLE IF EXISTS `phpbb_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`config_name`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_config`
--

LOCK TABLES `phpbb_config` WRITE;
/*!40000 ALTER TABLE `phpbb_config` DISABLE KEYS */;
INSERT INTO `phpbb_config` VALUES ('active_sessions','0',0),('allow_account_switching','0',0),('allow_attachments','1',0),('allow_autologin','1',0),('allow_avatar','1',0),('allow_avatar_gravatar','0',0),('allow_avatar_local','0',0),('allow_avatar_remote','0',0),('allow_avatar_remote_upload','0',0),('allow_avatar_upload','1',0),('allow_bbcode','1',0),('allow_birthdays','1',0),('allow_board_notifications','1',0),('allow_bookmarks','1',0),('allow_cdn','0',0),('allow_emailreuse','0',0),('allow_forum_notify','1',0),('allow_live_searches','1',0),('allow_mass_pm','1',0),('allow_name_chars','USERNAME_CHARS_ANY',0),('allow_namechange','0',0),('allow_nocensors','0',0),('allow_password_reset','1',0),('allow_pm_attach','0',0),('allow_pm_report','1',0),('allow_post_flash','1',0),('allow_post_links','1',0),('allow_privmsg','1',0),('allow_quick_reply','1',0),('allow_sig','1',0),('allow_sig_bbcode','1',0),('allow_sig_flash','0',0),('allow_sig_img','1',0),('allow_sig_links','1',0),('allow_sig_pm','1',0),('allow_sig_smilies','1',0),('allow_smilies','1',0),('allow_topic_notify','1',0),('allow_viglink_phpbb','1',0),('allowed_schemes_links','http,https,ftp',0),('anon_user_id','1',0),('assets_version','4',0),('attachment_quota','52428800',0),('auth_bbcode_pm','1',0),('auth_flash_pm','0',0),('auth_img_pm','1',0),('auth_method','db',0),('auth_smilies_pm','1',0),('avatar_filesize','307200',0),('avatar_gallery_path','images/avatars/gallery',0),('avatar_max_height','100',0),('avatar_max_width','100',0),('avatar_min_height','20',0),('avatar_min_width','20',0),('avatar_path','images/avatars/upload',0),('avatar_salt','fc9ee391de752e4330de9a4a30c68b1a',0),('board_contact','admin@mafiascum.net',0),('board_contact_name','',0),('board_disable','0',0),('board_disable_msg','',0),('board_dst','0',0),('board_email','admin@mafiascum.net',0),('board_email_form','0',0),('board_email_sig','Thanks, The Management',0),('board_hide_emails','1',0),('board_index_text','',0),('board_startdate','1446356056',0),('board_timezone','UTC',0),('browser_check','1',0),('bump_interval','10',0),('bump_type','d',0),('cache_gc','7200',0),('cache_last_gc','1505237167',1),('captcha_gd','1',0),('captcha_gd_3d_noise','1',0),('captcha_gd_fonts','1',0),('captcha_gd_foreground_noise','0',0),('captcha_gd_wave','0',0),('captcha_gd_x_grid','25',0),('captcha_gd_y_grid','25',0),('captcha_plugin','core.captcha.plugins.nogd',0),('check_attachment_content','1',0),('check_dnsbl','0',0),('chg_passforce','0',0),('confirm_refresh','1',0),('contact_admin_form_enable','1',0),('cookie_domain','msdev',0),('cookie_name','ms_phpbb3_02',0),('cookie_notice','0',0),('cookie_path','/',0),('cookie_secure','0',0),('coppa_enable','0',0),('coppa_fax','',0),('coppa_mail','',0),('cron_lock','0',1),('database_gc','604800',0),('database_last_gc','1505237171',1),('dbms_version','5.6.22',0),('default_dateformat','D M d, Y g:i a',0),('default_lang','en',0),('default_style','4',0),('delete_time','0',0),('display_last_edited','1',0),('display_last_subject','1',0),('display_order','0',0),('edit_time','0',0),('email_check_mx','1',0),('email_enable','1',0),('email_function_name','mail',0),('email_max_chunk_size','50',0),('email_package_size','20',0),('enable_confirm','1',0),('enable_mod_rewrite','0',0),('enable_pm_icons','1',0),('enable_post_confirm','1',0),('enable_post_num','0',0),('enable_post_num_js','0',0),('enable_update_hashes','1',0),('extension_force_unstable','0',0),('feed_enable','1',0),('feed_forum','1',0),('feed_http_auth','0',0),('feed_item_statistics','1',0),('feed_limit_post','15',0),('feed_limit_topic','10',0),('feed_overall','1',0),('feed_overall_forums','0',0),('feed_topic','1',0),('feed_topics_active','0',0),('feed_topics_new','1',0),('flood_interval','15',0),('force_server_vars','0',0),('form_token_lifetime','7200',0),('form_token_mintime','0',0),('form_token_sid_guests','1',0),('forward_pm','1',0),('forwarded_for_check','0',0),('full_folder_action','2',0),('fulltext_mysql_max_word_len','84',0),('fulltext_mysql_min_word_len','4',0),('fulltext_native_common_thres','5',0),('fulltext_native_load_upd','1',0),('fulltext_native_max_chars','14',0),('fulltext_native_min_chars','3',0),('fulltext_postgres_max_word_len','254',0),('fulltext_postgres_min_word_len','4',0),('fulltext_postgres_ts_name','simple',0),('fulltext_sphinx_indexer_mem_limit','512',0),('fulltext_sphinx_stopwords','0',0),('gzip_compress','0',0),('help_send_statistics','1',0),('help_send_statistics_time','0',0),('hot_threshold','25',0),('icons_path','images/icons',0),('img_create_thumbnail','0',0),('img_display_inlined','1',0),('img_imagick','',0),('img_link_height','0',0),('img_link_width','0',0),('img_max_height','0',0),('img_max_thumb_width','400',0),('img_max_width','0',0),('img_min_thumb_filesize','12000',0),('ip_check','3',0),('ip_login_limit_max','50',0),('ip_login_limit_time','21600',0),('ip_login_limit_use_forwarded','0',0),('jab_allow_self_signed','0',0),('jab_enable','0',0),('jab_host','',0),('jab_package_size','20',0),('jab_password','',0),('jab_port','5222',0),('jab_use_ssl','0',0),('jab_username','',0),('jab_verify_peer','1',0),('jab_verify_peer_name','1',0),('last_queue_run','1482716703',1),('ldap_base_dn','',0),('ldap_email','',0),('ldap_password','',0),('ldap_port','',0),('ldap_server','',0),('ldap_uid','',0),('ldap_user','',0),('ldap_user_filter','',0),('legend_sort_groupname','0',0),('limit_load','0',0),('limit_search_load','0',0),('load_anon_lastread','0',0),('load_birthdays','1',0),('load_cpf_memberlist','1',0),('load_cpf_pm','1',0),('load_cpf_viewprofile','1',0),('load_cpf_viewtopic','1',0),('load_db_lastread','1',0),('load_db_track','1',0),('load_font_awesome_url','https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css',0),('load_jquery_url','//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js',0),('load_jumpbox','1',0),('load_moderators','1',0),('load_notifications','1',0),('load_online','1',0),('load_online_guests','1',0),('load_online_time','5',0),('load_onlinetrack','1',0),('load_search','1',0),('load_tplcompile','0',0),('load_unreads_search','1',0),('load_user_activity','1',0),('load_user_activity_limit','5000',0),('max_attachments','3',0),('max_attachments_pm','1',0),('max_autologin_time','0',0),('max_filesize','262144',0),('max_filesize_pm','262144',0),('max_login_attempts','3',0),('max_name_chars','20',0),('max_num_search_keywords','10',0),('max_pass_chars','100',0),('max_poll_options','10',0),('max_post_chars','60000',0),('max_post_font_size','200',0),('max_post_img_height','0',0),('max_post_img_width','0',0),('max_post_smilies','0',0),('max_post_urls','0',0),('max_quote_depth','3',0),('max_reg_attempts','5',0),('max_sig_chars','255',0),('max_sig_font_size','200',0),('max_sig_img_height','0',0),('max_sig_img_width','0',0),('max_sig_smilies','0',0),('max_sig_urls','5',0),('mime_triggers','body|head|html|img|plaintext|a href|pre|script|table|title',0),('min_name_chars','3',0),('min_pass_chars','6',0),('min_post_chars','1',0),('min_search_author_chars','3',0),('new_member_group_default','0',0),('new_member_post_limit','3',0),('newest_user_colour','',1),('newest_user_id','52',1),('newest_username','borkjerfkin',1),('num_files','0',1),('num_posts','36',1),('num_topics','13',1),('num_users','6',1),('override_user_style','0',0),('pass_complex','PASS_TYPE_ANY',0),('phpbb_viglink_api_key','e4fd14f5d7f2bb6d80b8f8da1354718c',0),('plupload_last_gc','0',1),('plupload_salt','970d6a297f90d29b',0),('pm_edit_time','0',0),('pm_max_boxes','4',0),('pm_max_msgs','50',0),('pm_max_recipients','0',0),('posts_per_page','10',0),('print_pm','1',0),('questionnaire_unique_id','9fb43b0f2306f142',0),('queue_interval','60',0),('rand_seed','3c7bb4798719807e4d2870f176decbf5',1),('rand_seed_last_update','1505237645',1),('ranks_path','images/ranks',0),('read_notification_expire_days','30',0),('read_notification_gc','86400',0),('read_notification_last_gc','0',1),('record_online_date','1461946823',1),('record_online_users','3',1),('referer_validation','1',0),('remote_upload_verify','0',0),('reparse_lock','0',1),('require_activation','0',0),('script_path','/forum',0),('search_anonymous_interval','0',0),('search_block_size','250',0),('search_gc','7200',0),('search_indexing_state','',1),('search_interval','0',0),('search_last_gc','1505237172',1),('search_store_results','1800',0),('search_type','\\phpbb\\search\\fulltext_mysql',0),('secure_allow_deny','1',0),('secure_allow_empty_referer','1',0),('secure_downloads','0',0),('server_name','msdev',0),('server_port','80',0),('server_protocol','http://',0),('session_gc','3600',0),('session_last_gc','1505237182',1),('session_length','3600',0),('site_desc','A short text to describe your forum',0),('site_home_text','',0),('site_home_url','',0),('sitename','yourdomain.com',0),('smilies_path','images/smilies',0),('smilies_per_page','50',0),('smtp_allow_self_signed','0',0),('smtp_auth_method','PLAIN',0),('smtp_delivery','1',0),('smtp_host','localhost',0),('smtp_password','',0),('smtp_port','25',0),('smtp_username','',0),('smtp_verify_peer','1',0),('smtp_verify_peer_name','1',0),('teampage_forums','1',0),('teampage_memberships','1',0),('text_reparser.pm_text_cron_interval','10',0),('text_reparser.pm_text_last_cron','0',0),('text_reparser.poll_option_cron_interval','10',0),('text_reparser.poll_option_last_cron','0',0),('text_reparser.poll_title_cron_interval','10',0),('text_reparser.poll_title_last_cron','0',0),('text_reparser.post_text_cron_interval','10',0),('text_reparser.post_text_last_cron','0',0),('text_reparser.user_signature_cron_interval','10',0),('text_reparser.user_signature_last_cron','0',0),('topics_per_page','25',0),('tpl_allow_php','0',0),('update_hashes_last_cron','0',0),('update_hashes_lock','',0),('upload_dir_size','0',1),('upload_icons_path','images/upload_icons',0),('upload_path','files',0),('use_system_cron','0',0),('version','3.2.1',0),('viglink_api_siteid','7d630b4d74e0fec31e46e3bc5292b73b',0),('viglink_ask_admin','',0),('viglink_ask_admin_last','0',0),('viglink_convert_account_url','',0),('viglink_enabled','0',0),('viglink_last_gc','1505238561',1),('warnings_expire_days','90',0),('warnings_gc','14400',0),('warnings_last_gc','1505237168',1);
/*!40000 ALTER TABLE `phpbb_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_config_text`
--

DROP TABLE IF EXISTS `phpbb_config_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_config_text` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_config_text`
--

LOCK TABLES `phpbb_config_text` WRITE;
/*!40000 ALTER TABLE `phpbb_config_text` DISABLE KEYS */;
INSERT INTO `phpbb_config_text` VALUES ('contact_admin_info','<t></t>'),('contact_admin_info_bitfield',''),('contact_admin_info_flags','7'),('contact_admin_info_uid',''),('reparser_resume','a:9:{s:32:\"text_reparser.contact_admin_info\";a:3:{s:9:\"range-min\";i:1;s:9:\"range-max\";i:1;s:10:\"range-size\";i:100;}s:31:\"text_reparser.forum_description\";a:3:{s:9:\"range-min\";i:1;s:9:\"range-max\";i:90;s:10:\"range-size\";i:100;}s:25:\"text_reparser.forum_rules\";a:3:{s:9:\"range-min\";i:1;s:9:\"range-max\";i:90;s:10:\"range-size\";i:100;}s:31:\"text_reparser.group_description\";a:3:{s:9:\"range-min\";i:1;s:9:\"range-max\";i:0;s:10:\"range-size\";i:100;}s:21:\"text_reparser.pm_text\";a:3:{s:9:\"range-min\";i:1;s:9:\"range-max\";i:4;s:10:\"range-size\";i:100;}s:25:\"text_reparser.poll_option\";a:3:{s:9:\"range-min\";i:1;s:9:\"range-max\";i:0;s:10:\"range-size\";i:100;}s:24:\"text_reparser.poll_title\";a:3:{s:9:\"range-min\";i:1;s:9:\"range-max\";i:14;s:10:\"range-size\";i:100;}s:23:\"text_reparser.post_text\";a:3:{s:9:\"range-min\";i:1;s:9:\"range-max\";i:38;s:10:\"range-size\";i:100;}s:28:\"text_reparser.user_signature\";a:3:{s:9:\"range-min\";i:1;s:9:\"range-max\";i:52;s:10:\"range-size\";i:100;}}');
/*!40000 ALTER TABLE `phpbb_config_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_confirm`
--

DROP TABLE IF EXISTS `phpbb_confirm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT 0,
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) unsigned NOT NULL DEFAULT 0,
  `attempts` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`session_id`,`confirm_id`),
  KEY `confirm_type` (`confirm_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_confirm`
--

LOCK TABLES `phpbb_confirm` WRITE;
/*!40000 ALTER TABLE `phpbb_confirm` DISABLE KEYS */;
INSERT INTO `phpbb_confirm` VALUES ('8a86e5b8aa7dbfb14690ed61a05c8b47','071abf159e777251d6d9137f5b2ae18f',1,'QUDQ',207866096,0),('00a5744f970875aa0474b3540eb04465','1209412658c2539996e24676b14a5ae7',1,'7AW1S',603678907,0),('74610cf6fe61fa961667fe57de5c0901','1a0b033dbb71b36703edda47e70993b6',1,'1KERLE',632030603,0),('71c4a2e015198d0525ff944e7407d41b','1f212b240fabb44dcc01da4168d6be10',1,'1Z1F',1662116559,0),('07097a283f02201b68d84768c77a47a5','239c1ed12fa0debbf4b6011d06d5b051',1,'2LYB',1970548312,0),('5f83ac04ba955673133d30b4fee2457b','2c0102d6da4f26b02f663c7f47e5c2c1',1,'3KG87',1892844105,2),('0940963b0ae26c410be78ae410c3be17','4dfefa982485af1901a12e4d6f043204',1,'53QAI',11484391,0),('7fdcbf6851a93d3ce49e7e77bd910c1c','573ae0b35723a9139281c545eba55ccd',1,'4Y53HV',1706070408,0),('349e86ac886e0e230641d571ef5dcc94','60ca798d6eb955e93d7c0318b5533e37',1,'TS9V',350052928,0),('f1d55ba93b179ba013384a3c931c7a95','6989cdfad6306c66ab8222ca747d8efb',1,'4G81U',1579358712,0),('40654ba478df5e9512e0e07815f1801f','78e632335ca7f1c8fd803024b73412ff',1,'5SHU3',1000028773,0),('7e119fcc3e03476c8f37ddd5c16f5a1f','85540be7723805f6d03f1e56d5d95179',1,'2VV3',1456630998,0),('6e23537dab9105aad9c65344e239b3bd','9161ad2d6e2682aa43ec1ec868ae8ff0',1,'4MIHB',1573399994,1),('374ac1804e38cb06ecf6c8baa643b3c8','c8e32650883f6e5bc4e4bf81e2247cf6',1,'2VA3',1869528293,0),('310005b4c3ec7fb4befcf2fc2c1322f8','df6b2d9b30ec8437a075ad21749ef1a6',1,'1LYX',1604354561,2),('ea2b8e70a1b2215efa8c3807101dd857','eba6e2e4d4c8d41009d7f0837b5ed951',1,'1P9ZN',1701249761,2),('d77008cd0b0060b9b0f48da53beec495','ecff53305a67b358e8ed21ced8b94036',1,'46YKQA',1172917301,2);
/*!40000 ALTER TABLE `phpbb_confirm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_disallow`
--

DROP TABLE IF EXISTS `phpbb_disallow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_disallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`disallow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_disallow`
--

LOCK TABLES `phpbb_disallow` WRITE;
/*!40000 ALTER TABLE `phpbb_disallow` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_disallow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_drafts`
--

DROP TABLE IF EXISTS `phpbb_drafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_drafts` (
  `draft_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `topic_id` int(10) unsigned NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `save_time` int(11) unsigned NOT NULL DEFAULT 0,
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`draft_id`),
  KEY `save_time` (`save_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_drafts`
--

LOCK TABLES `phpbb_drafts` WRITE;
/*!40000 ALTER TABLE `phpbb_drafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_drafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_ext`
--

DROP TABLE IF EXISTS `phpbb_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_ext` (
  `ext_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ext_active` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `ext_state` text COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `ext_name` (`ext_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_ext`
--

LOCK TABLES `phpbb_ext` WRITE;
/*!40000 ALTER TABLE `phpbb_ext` DISABLE KEYS */;
INSERT INTO `phpbb_ext` VALUES ('phpbb/viglink',1,'b:0;');
/*!40000 ALTER TABLE `phpbb_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_extension_groups`
--

DROP TABLE IF EXISTS `phpbb_extension_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_extension_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT 0,
  `allow_group` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `download_mode` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) unsigned NOT NULL DEFAULT 0,
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13638 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_extension_groups`
--

LOCK TABLES `phpbb_extension_groups` WRITE;
/*!40000 ALTER TABLE `phpbb_extension_groups` DISABLE KEYS */;
INSERT INTO `phpbb_extension_groups` VALUES (1,'IMAGES',1,1,1,'',0,'',0),(2,'ARCHIVES',0,1,1,'',0,'',0),(3,'PLAIN_TEXT',0,0,1,'',0,'',0),(4,'DOCUMENTS',0,0,1,'',0,'',0),(7,'FLASH_FILES',5,0,1,'',0,'',0),(9,'DOWNLOADABLE_FILES',0,0,1,'',0,'',0);
/*!40000 ALTER TABLE `phpbb_extension_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_extensions`
--

DROP TABLE IF EXISTS `phpbb_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_extensions` (
  `extension_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`extension_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_extensions`
--

LOCK TABLES `phpbb_extensions` WRITE;
/*!40000 ALTER TABLE `phpbb_extensions` DISABLE KEYS */;
INSERT INTO `phpbb_extensions` VALUES (1,1,'gif'),(2,1,'png'),(3,1,'jpeg'),(4,1,'jpg'),(5,1,'tif'),(6,1,'tiff'),(7,1,'tga'),(8,2,'gtar'),(9,2,'gz'),(10,2,'tar'),(11,2,'zip'),(12,2,'rar'),(13,2,'ace'),(14,2,'torrent'),(15,2,'tgz'),(16,2,'bz2'),(17,2,'7z'),(18,3,'txt'),(19,3,'c'),(20,3,'h'),(21,3,'cpp'),(22,3,'hpp'),(23,3,'diz'),(24,3,'csv'),(25,3,'ini'),(26,3,'log'),(27,3,'js'),(28,3,'xml'),(29,4,'xls'),(30,4,'xlsx'),(31,4,'xlsm'),(32,4,'xlsb'),(33,4,'doc'),(34,4,'docx'),(35,4,'docm'),(36,4,'dot'),(37,4,'dotx'),(38,4,'dotm'),(39,4,'pdf'),(40,4,'ai'),(41,4,'ps'),(42,4,'ppt'),(43,4,'pptx'),(44,4,'pptm'),(45,4,'odg'),(46,4,'odp'),(47,4,'ods'),(48,4,'odt'),(49,4,'rtf'),(50,9,'rm'),(51,9,'ram'),(52,9,'wma'),(53,9,'wmv'),(54,7,'swf'),(55,9,'mov'),(56,9,'m4v'),(57,9,'m4a'),(58,9,'mp4'),(59,9,'3gp'),(60,9,'3g2'),(61,9,'qt'),(62,9,'mpeg'),(63,9,'mpg'),(64,9,'mp3'),(65,9,'ogg'),(66,9,'ogm');
/*!40000 ALTER TABLE `phpbb_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_forums`
--

DROP TABLE IF EXISTS `phpbb_forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_forums` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) unsigned NOT NULL DEFAULT 7,
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) unsigned NOT NULL DEFAULT 7,
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` tinyint(4) NOT NULL DEFAULT 0,
  `forum_type` tinyint(4) NOT NULL DEFAULT 0,
  `forum_status` tinyint(4) NOT NULL DEFAULT 0,
  `forum_last_post_id` int(10) unsigned NOT NULL DEFAULT 0,
  `forum_last_poster_id` int(10) unsigned NOT NULL DEFAULT 0,
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) unsigned NOT NULL DEFAULT 0,
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT 32,
  `forum_options` int(20) unsigned NOT NULL DEFAULT 0,
  `display_subforum_list` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `enable_indexing` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `enable_icons` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `enable_prune` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `prune_next` int(11) unsigned NOT NULL DEFAULT 0,
  `prune_days` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `prune_viewed` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `prune_freq` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `topic_author_moderation` int(8) NOT NULL DEFAULT 0,
  `forum_posts_approved` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `forum_posts_unapproved` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `forum_posts_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `forum_topics_approved` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `forum_topics_unapproved` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `forum_topics_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `enable_shadow_prune` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `prune_shadow_days` mediumint(8) unsigned NOT NULL DEFAULT 7,
  `prune_shadow_freq` mediumint(8) unsigned NOT NULL DEFAULT 1,
  `prune_shadow_next` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`forum_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `forum_lastpost_id` (`forum_last_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_forums`
--

LOCK TABLES `phpbb_forums` WRITE;
/*!40000 ALTER TABLE `phpbb_forums` DISABLE KEYS */;
INSERT INTO `phpbb_forums` VALUES (1,0,1,8,'','Your first category','<t></t>','',7,'','','',0,'','<t></t>','','',7,'',0,0,0,1,2,'',1446356056,'Kison','AA0000',32,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,7,1,0),(2,1,2,3,'a:1:{i:1;a:2:{i:0;s:19:\"Your first category\";i:1;i:0;}}','Your first forum','<t>Description of your first forum.</t>','',7,'','','',0,'','<t></t>','','',7,'',0,1,0,31,48,'',1479865393,'test','',48,0,1,1,1,1,0,0,0,0,0,0,23,0,0,6,0,0,0,7,1,0),(4,1,6,7,'a:1:{i:1;a:2:{i:0;s:19:\"Your first category\";i:1;i:0;}}','The Road To Roam','<t>Newbie games.</t>','',7,'','','',0,'','<t></t>','','',7,'',0,1,0,27,48,'',1478927370,'test','',48,0,1,0,1,0,0,0,7,7,1,1,3,0,0,2,0,0,0,7,1,0),(90,1,4,5,'a:1:{i:1;a:2:{i:0;s:19:\"Your first category\";i:1;i:0;}}','Private Topics','<t></t>','',7,'','','',0,'','<t></t>','','',7,'',0,1,0,0,0,'',0,'','',48,0,1,0,1,0,0,0,7,7,1,1,9,0,0,4,0,0,0,7,1,0);
/*!40000 ALTER TABLE `phpbb_forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_forums_access`
--

DROP TABLE IF EXISTS `phpbb_forums_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_forums_access` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`,`user_id`,`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_forums_access`
--

LOCK TABLES `phpbb_forums_access` WRITE;
/*!40000 ALTER TABLE `phpbb_forums_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_forums_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_forums_track`
--

DROP TABLE IF EXISTS `phpbb_forums_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_forums_track` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `mark_time` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`,`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_forums_track`
--

LOCK TABLES `phpbb_forums_track` WRITE;
/*!40000 ALTER TABLE `phpbb_forums_track` DISABLE KEYS */;
INSERT INTO `phpbb_forums_track` VALUES (2,0,1479865405),(2,2,1479865405),(2,90,1482710802),(48,0,1478927338),(48,2,1479865393),(48,4,1478927370);
/*!40000 ALTER TABLE `phpbb_forums_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_forums_watch`
--

DROP TABLE IF EXISTS `phpbb_forums_watch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_forums_watch` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT 0,
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_forums_watch`
--

LOCK TABLES `phpbb_forums_watch` WRITE;
/*!40000 ALTER TABLE `phpbb_forums_watch` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_forums_watch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_groups`
--

DROP TABLE IF EXISTS `phpbb_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(4) NOT NULL DEFAULT 1,
  `group_founder_manage` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `group_skip_auth` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) unsigned NOT NULL DEFAULT 7,
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_width` smallint(4) unsigned NOT NULL DEFAULT 0,
  `group_avatar_height` smallint(4) unsigned NOT NULL DEFAULT 0,
  `group_rank` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `group_receive_pm` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `group_message_limit` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `group_max_recipients` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `group_legend` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`group_id`),
  KEY `group_legend_name` (`group_legend`,`group_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13664 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_groups`
--

LOCK TABLES `phpbb_groups` WRITE;
/*!40000 ALTER TABLE `phpbb_groups` DISABLE KEYS */;
INSERT INTO `phpbb_groups` VALUES (1,3,0,0,'GUESTS','<t></t>','',7,'',0,'','0',0,0,0,'',0,0,0,5,0),(2,3,0,0,'REGISTERED','<t></t>','',7,'',0,'','0',0,0,0,'',0,0,0,5,0),(3,3,0,0,'REGISTERED_COPPA','<t></t>','',7,'',0,'','0',0,0,0,'',0,0,0,5,0),(4,3,0,0,'GLOBAL_MODERATORS','<t></t>','',7,'',0,'','0',0,0,0,'00AA00',0,0,0,0,2),(6,3,0,0,'BOTS','<t></t>','',7,'',0,'','0',0,0,0,'9E8DA7',0,0,0,5,0),(7,3,0,0,'NEWLY_REGISTERED','<t></t>','',7,'',0,'','0',0,0,0,'',0,0,0,5,0),(8,0,0,1,'Can\'t Leave','<t>test</t>','',7,'',0,'','0',0,0,0,'',0,0,0,0,0),(13637,3,1,0,'ADMINISTRATORS','<t></t>','',7,'',0,'','0',0,0,0,'AA0000',0,0,0,0,1),(13662,0,0,0,'Banned Users (Site Chat)','<t></t>','',7,'',0,'','0',0,0,0,'',0,0,0,0,0),(13663,0,0,0,'Test','<t></t>','',7,'',0,'','0',0,0,0,'',0,0,0,0,0);
/*!40000 ALTER TABLE `phpbb_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_icons`
--

DROP TABLE IF EXISTS `phpbb_icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_icons` (
  `icons_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT 0,
  `icons_height` tinyint(4) NOT NULL DEFAULT 0,
  `icons_alt` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_order` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`icons_id`),
  KEY `display_on_posting` (`display_on_posting`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_icons`
--

LOCK TABLES `phpbb_icons` WRITE;
/*!40000 ALTER TABLE `phpbb_icons` DISABLE KEYS */;
INSERT INTO `phpbb_icons` VALUES (1,'misc/fire.gif',16,16,'',1,1),(2,'smile/redface.gif',16,16,'',9,1),(3,'smile/mrgreen.gif',16,16,'',10,1),(4,'misc/heart.gif',16,16,'',4,1),(5,'misc/star.gif',16,16,'',2,1),(6,'misc/radioactive.gif',16,16,'',3,1),(7,'misc/thinking.gif',16,16,'',5,1),(8,'smile/info.gif',16,16,'',8,1),(9,'smile/question.gif',16,16,'',6,1),(10,'smile/alert.gif',16,16,'',7,1);
/*!40000 ALTER TABLE `phpbb_icons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_lang`
--

DROP TABLE IF EXISTS `phpbb_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_lang` (
  `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`),
  KEY `lang_iso` (`lang_iso`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_lang`
--

LOCK TABLES `phpbb_lang` WRITE;
/*!40000 ALTER TABLE `phpbb_lang` DISABLE KEYS */;
INSERT INTO `phpbb_lang` VALUES (1,'en','en','British English','British English','phpBB Group');
/*!40000 ALTER TABLE `phpbb_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_log`
--

DROP TABLE IF EXISTS `phpbb_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(4) NOT NULL DEFAULT 0,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `topic_id` int(10) unsigned NOT NULL DEFAULT 0,
  `post_id` int(10) unsigned NOT NULL DEFAULT 0,
  `reportee_id` int(10) unsigned NOT NULL DEFAULT 0,
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT 0,
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `reportee_id` (`reportee_id`),
  KEY `user_id` (`user_id`),
  KEY `log_time` (`log_time`)
) ENGINE=InnoDB AUTO_INCREMENT=623 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_log`
--

LOCK TABLES `phpbb_log` WRITE;
/*!40000 ALTER TABLE `phpbb_log` DISABLE KEYS */;
INSERT INTO `phpbb_log` VALUES (1,1,2,2,5,0,0,'127.0.0.1',1461044377,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(2,1,2,2,5,0,0,'127.0.0.1',1461044419,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(3,1,2,2,5,0,0,'127.0.0.1',1461044479,'LOG_UNLOCK','a:1:{i:0;s:10:\"Autolock 2\";}'),(4,1,2,2,5,0,0,'127.0.0.1',1461044499,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(5,1,2,2,5,0,0,'127.0.0.1',1461044510,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(6,1,2,2,5,0,0,'127.0.0.1',1461044536,'LOG_USER_UNLOCK','a:1:{i:0;s:10:\"Autolock 2\";}'),(7,1,2,2,5,0,0,'127.0.0.1',1461044536,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(8,1,2,2,5,0,0,'127.0.0.1',1461044561,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(9,1,2,2,5,0,0,'127.0.0.1',1461044707,'LOG_UNLOCK','a:1:{i:0;s:10:\"Autolock 2\";}'),(10,1,2,2,5,0,0,'127.0.0.1',1461046144,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(11,1,2,2,5,0,0,'127.0.0.1',1461046155,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(12,1,2,2,5,0,0,'127.0.0.1',1461046734,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(13,1,2,2,5,0,0,'127.0.0.1',1461046759,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(14,1,2,2,5,0,0,'127.0.0.1',1461046774,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(15,1,2,2,5,0,0,'127.0.0.1',1461046851,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(16,1,2,2,5,0,0,'127.0.0.1',1461046862,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(17,1,2,2,5,0,0,'127.0.0.1',1461046873,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(18,1,2,2,5,0,0,'127.0.0.1',1461046881,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(19,1,2,2,5,0,0,'127.0.0.1',1461046901,'LOG_UNLOCK','a:1:{i:0;s:10:\"Autolock 2\";}'),(20,1,2,2,5,0,0,'127.0.0.1',1461095724,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(21,1,2,2,5,0,0,'127.0.0.1',1461095759,'LOG_UNLOCK','a:1:{i:0;s:10:\"Autolock 2\";}'),(22,1,2,2,5,0,0,'127.0.0.1',1461095768,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(23,1,2,2,5,0,0,'127.0.0.1',1461095846,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(24,1,2,2,5,0,0,'127.0.0.1',1461101538,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(25,1,2,2,5,0,0,'127.0.0.1',1461101651,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(26,1,2,2,5,0,0,'127.0.0.1',1461101664,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(27,1,2,2,5,0,0,'127.0.0.1',1461102136,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(28,1,2,2,5,0,0,'127.0.0.1',1461102204,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(29,1,2,2,5,0,0,'127.0.0.1',1461102217,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(30,1,2,2,5,0,0,'127.0.0.1',1461102238,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(31,1,2,2,5,0,0,'127.0.0.1',1461102245,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(32,1,2,2,5,0,0,'127.0.0.1',1461102254,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(33,1,2,2,5,0,0,'127.0.0.1',1461102285,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(34,1,2,2,5,0,0,'127.0.0.1',1461102349,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(35,1,2,2,5,0,0,'127.0.0.1',1461102363,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(36,1,2,2,5,0,0,'127.0.0.1',1461102384,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(37,1,2,2,5,0,0,'127.0.0.1',1461102398,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(38,1,2,2,5,0,0,'127.0.0.1',1461102429,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(39,1,2,2,5,0,0,'127.0.0.1',1461102442,'LOG_POST_EDITED','a:2:{i:0;s:10:\"Autolock 2\";i:1;s:5:\"Kison\";}'),(40,0,2,0,0,0,0,'127.0.0.1',1461811794,'LOG_ADMIN_AUTH_SUCCESS',''),(41,0,2,0,0,0,0,'127.0.0.1',1461811871,'LOG_STYLE_ADD','a:1:{i:0;s:4:\"test\";}'),(42,0,2,0,0,0,0,'127.0.0.1',1461815975,'LOG_ADMIN_AUTH_SUCCESS',''),(43,0,2,0,0,0,0,'127.0.0.1',1461818348,'LOG_ADMIN_AUTH_FAIL',''),(44,0,2,0,0,0,0,'127.0.0.1',1461818350,'LOG_ADMIN_AUTH_SUCCESS',''),(45,0,2,0,0,0,0,'127.0.0.1',1461818707,'LOG_GROUP_CREATED','a:1:{i:0;s:11:\"Can\'t Leave\";}'),(46,0,2,0,0,0,0,'127.0.0.1',1461818727,'LOG_USERS_ADDED','a:2:{i:0;s:11:\"Can\'t Leave\";i:1;s:4:\"test\";}'),(47,0,2,0,0,0,0,'127.0.0.1',1461818795,'LOG_GROUP_UPDATED','a:1:{i:0;s:11:\"Can\'t Leave\";}'),(48,0,2,0,0,0,0,'127.0.0.1',1461818804,'LOG_GROUP_UPDATED','a:1:{i:0;s:11:\"Can\'t Leave\";}'),(49,0,2,0,0,0,0,'127.0.0.1',1461831268,'LOG_ADMIN_AUTH_SUCCESS',''),(50,0,2,0,0,0,0,'127.0.0.1',1461831355,'LOG_GROUP_REMOVE','a:2:{i:0;s:22:\"Newly registered users\";i:1;s:4:\"test\";}'),(51,1,2,2,6,0,0,'127.0.0.1',1461831367,'LOG_TOPIC_APPROVED','a:1:{i:0;s:4:\"test\";}'),(52,1,2,2,7,0,0,'127.0.0.1',1461831377,'LOG_TOPIC_APPROVED','a:1:{i:0;s:4:\"Test\";}'),(53,0,2,0,0,0,0,'127.0.0.1',1461831410,'LOG_ADMIN_AUTH_SUCCESS',''),(54,0,2,0,0,0,0,'127.0.0.1',1461831484,'LOG_ACL_ADD_USER_LOCAL_F_','a:2:{i:0;s:16:\"Your first forum\";i:1;s:4:\"test\";}'),(55,1,48,2,7,0,0,'127.0.0.1',1461831505,'LOG_POST_EDITED','a:2:{i:0;s:4:\"Test\";i:1;s:4:\"test\";}'),(56,1,2,2,7,0,0,'127.0.0.1',1461831608,'LOG_POST_EDITED','a:2:{i:0;s:4:\"Test\";i:1;s:4:\"test\";}'),(57,1,2,2,7,0,0,'127.0.0.1',1461831616,'LOG_POST_EDITED','a:2:{i:0;s:4:\"Test\";i:1;s:4:\"test\";}'),(58,1,2,2,7,0,0,'127.0.0.1',1461831624,'LOG_POST_EDITED','a:2:{i:0;s:4:\"Test\";i:1;s:4:\"test\";}'),(59,1,2,2,7,0,0,'127.0.0.1',1461831660,'LOG_POST_EDITED','a:2:{i:0;s:4:\"Test\";i:1;s:4:\"test\";}'),(60,1,2,2,7,0,0,'127.0.0.1',1461831678,'LOG_POST_EDITED','a:2:{i:0;s:4:\"Test\";i:1;s:4:\"test\";}'),(61,1,2,2,7,0,0,'127.0.0.1',1461831702,'LOG_POST_EDITED','a:2:{i:0;s:4:\"Test\";i:1;s:4:\"test\";}'),(62,0,2,0,0,0,0,'127.0.0.1',1461946692,'LOG_ADMIN_AUTH_SUCCESS',''),(63,0,2,0,0,0,0,'127.0.0.1',1461946754,'LOG_FORUM_ADD','a:1:{i:0;s:16:\"The Road To Roam\";}'),(64,0,2,0,0,0,0,'127.0.0.1',1461946754,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:19:\"Your first category\";i:1;s:16:\"The Road To Roam\";}'),(65,0,2,0,0,0,0,'127.0.0.1',1461946790,'LOG_ADMIN_AUTH_SUCCESS',''),(66,0,2,0,0,0,0,'127.0.0.1',1461946815,'LOG_ACL_ADD_GROUP_LOCAL_F_','a:2:{i:0;s:16:\"The Road To Roam\";i:1;s:41:\"<span class=\"sep\">Registered users</span>\";}'),(67,1,48,4,8,0,0,'127.0.0.1',1461946847,'LOG_LOCK','a:1:{i:0;s:4:\"Test\";}'),(68,1,48,4,8,0,0,'127.0.0.1',1461946852,'LOG_UNLOCK','a:1:{i:0;s:4:\"Test\";}'),(69,1,48,4,8,0,0,'127.0.0.1',1461946999,'LOG_POST_EDITED','a:2:{i:0;s:4:\"Test\";i:1;s:4:\"test\";}'),(70,1,48,4,8,0,0,'127.0.0.1',1461996450,'LOG_POST_EDITED','a:2:{i:0;s:4:\"Test\";i:1;s:4:\"test\";}'),(71,1,2,2,10,0,0,'127.0.0.1',1462003404,'LOG_POST_EDITED','a:2:{i:0;s:10:\"My global.\";i:1;s:5:\"Kison\";}'),(72,0,2,0,0,0,0,'127.0.0.1',1462072432,'LOG_ADMIN_AUTH_SUCCESS',''),(73,0,2,0,0,0,0,'127.0.0.1',1464657852,'LOG_ADMIN_AUTH_SUCCESS',''),(74,0,2,0,0,0,0,'127.0.0.1',1464657865,'LOG_CONFIG_COOKIE',''),(75,0,2,0,0,0,0,'127.0.0.1',1466048400,'LOG_ADMIN_AUTH_SUCCESS',''),(76,0,2,0,0,0,0,'127.0.0.1',1466051426,'LOG_ACL_ADD_USER_GLOBAL_U_','a:1:{i:0;s:5:\"Kison\";}'),(77,0,2,0,0,0,0,'127.0.0.1',1466051899,'LOG_ACL_ADD_USER_GLOBAL_U_','a:1:{i:0;s:5:\"Kison\";}'),(78,0,2,0,0,0,0,'127.0.0.1',1466053276,'LOG_USERS_ADDED','a:2:{i:0;s:0:\"\";i:1;s:5:\"Kison\";}'),(79,0,2,0,0,0,0,'127.0.0.1',1466058261,'LOG_USERS_ADDED','a:2:{i:0;s:0:\"\";i:1;s:5:\"Kison\";}'),(80,0,2,0,0,0,0,'127.0.0.1',1467230452,'LOG_ADMIN_AUTH_SUCCESS',''),(81,0,2,0,0,0,0,'127.0.0.1',1467230517,'LOG_CONFIG_AVATAR',''),(82,0,2,0,0,0,0,'127.0.0.1',1467230562,'LOG_CONFIG_AVATAR',''),(83,0,2,0,0,0,0,'127.0.0.1',1467231164,'LOG_CONFIG_AVATAR',''),(84,0,2,0,0,0,0,'127.0.0.1',1468102688,'LOG_ADMIN_AUTH_SUCCESS',''),(85,0,2,0,0,0,0,'127.0.0.1',1468103173,'LOG_GROUP_CREATED','a:1:{i:0;s:24:\"Banned Users (Site Chat)\";}'),(86,0,2,0,0,0,0,'127.0.0.1',1468103671,'LOG_MODS_ADDED','a:2:{i:0;s:24:\"Banned Users (Site Chat)\";i:1;s:5:\"Kison\";}'),(87,0,2,0,0,0,0,'127.0.0.1',1468685437,'LOG_ADMIN_AUTH_SUCCESS',''),(88,2,2,0,0,0,0,'127.0.0.1',1468687836,'LOG_GENERAL_ERROR','a:2:{i:0;s:13:\"General Error\";i:1;s:1343:\"SQL ERROR [ mysqli ]<br /><br />Table \'ms_phpbb3.phpbb_mafia_game_status\' doesn\'t exist [1146]<br /><br />SQL<br /><br />SELECT g.* , c.username as game_creator_name, u.user_id as mod_user_id, u.username as mod_username, a.user_id as app_user_id, a.username as app_username, s.status_id, s.status_name, t.*  FROM (phpbb_mafia_games g) LEFT JOIN phpbb_users u ON (u.user_id = g.main_mod_id) LEFT JOIN phpbb_users a ON (a.user_id = g.approved_by_user_id) LEFT JOIN phpbb_mafia_game_status s ON (s.status_id = g.status) LEFT JOIN phpbb_mafia_game_types t ON (t.type_id = g.game_type) LEFT JOIN phpbb_users c ON (c.user_id = g.created_by_user_id) WHERE g.game_id = 11 ORDER BY game_type ASC, approved_time ASC\n LIMIT 25<br /><br />BACKTRACE<br /><div style=\"font-family: monospace;\"><br /><b>FILE:</b> includes/db/mysqli.php<br /><b>LINE:</b> 162<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> includes/db/mysqli.php<br /><b>LINE:</b> 202<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> includes/functions_games.php<br /><b>LINE:</b> 356<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /><br /><b>FILE:</b> viewgame.php<br /><b>LINE:</b> 612<br /><b>CALL:</b> load_game()<br /></div><br />\";}'),(89,2,2,0,0,0,0,'127.0.0.1',1468688076,'LOG_GENERAL_ERROR','a:2:{i:0;s:13:\"General Error\";i:1;s:1268:\"SQL ERROR [ mysqli ]<br /><br />Unknown column \'s.status_id\' in \'field list\' [1054]<br /><br />SQL<br /><br />SELECT g.* , c.username as game_creator_name, u.user_id as mod_user_id, u.username as mod_username, a.user_id as app_user_id, a.username as app_username, s.status_id, s.status_name, t.*  FROM (phpbb_mafia_games g) LEFT JOIN phpbb_users u ON (u.user_id = g.main_mod_id) LEFT JOIN phpbb_users a ON (a.user_id = g.approved_by_user_id) LEFT JOIN phpbb_mafia_game_types t ON (t.type_id = g.game_type) LEFT JOIN phpbb_users c ON (c.user_id = g.created_by_user_id) WHERE g.game_id = 11 ORDER BY game_type ASC, approved_time ASC\n LIMIT 25<br /><br />BACKTRACE<br /><div style=\"font-family: monospace;\"><br /><b>FILE:</b> includes/db/mysqli.php<br /><b>LINE:</b> 162<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> includes/db/mysqli.php<br /><b>LINE:</b> 202<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> includes/functions_games.php<br /><b>LINE:</b> 343<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /><br /><b>FILE:</b> viewgame.php<br /><b>LINE:</b> 612<br /><b>CALL:</b> load_game()<br /></div><br />\";}'),(90,2,48,0,0,0,0,'127.0.0.1',1468811638,'LOG_GENERAL_ERROR','a:2:{i:0;s:13:\"General Error\";i:1;s:600:\"SQL ERROR [ mysqli ]<br /><br />Unknown column \'type\' in \'field list\' [1054]<br /><br />SQL<br /><br />INSERT INTO phpbb_mafia_players  (game_id, user_id, type, replacement_start) VALUES (16, 48, 0, NULL)<br /><br />BACKTRACE<br /><div style=\"font-family: monospace;\"><br /><b>FILE:</b> includes/db/mysqli.php<br /><b>LINE:</b> 162<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> includes/functions_games.php<br /><b>LINE:</b> 687<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> viewgame.php<br /><b>LINE:</b> 95<br /><b>CALL:</b> insertPlayer()<br /></div><br />\";}'),(91,0,2,0,0,0,0,'127.0.0.1',1475077096,'LOG_ADMIN_AUTH_SUCCESS',''),(92,0,2,0,0,0,0,'127.0.0.1',1475077119,'LOG_USERS_ADDED','a:2:{i:0;s:6:\"Guests\";i:1;s:4:\"test\";}'),(93,0,2,0,0,0,0,'127.0.0.1',1478055682,'LOG_ADMIN_AUTH_SUCCESS',''),(94,0,2,0,0,0,0,'127.0.0.1',1478055963,'LOG_MODULE_REMOVED','a:1:{i:0;s:7:\"Restore\";}'),(95,0,2,0,0,0,0,'127.0.0.1',1478055970,'LOG_MODULE_REMOVED','a:1:{i:0;s:6:\"Backup\";}'),(96,0,2,0,0,0,0,'127.0.0.1',1478056500,'LOG_MODULE_ADD','a:1:{i:0;s:6:\"Backup\";}'),(97,0,2,0,0,0,0,'127.0.0.1',1478056512,'LOG_MODULE_EDIT','a:1:{i:0;s:6:\"Backup\";}'),(98,0,2,0,0,0,0,'127.0.0.1',1478057654,'LOG_MODULE_REMOVED','a:1:{i:0;s:6:\"Backup\";}'),(99,0,2,0,0,0,0,'127.0.0.1',1478277086,'LOG_ADMIN_AUTH_SUCCESS',''),(100,0,2,0,0,0,0,'127.0.0.1',1478277220,'LOG_CONFIG_MESSAGE',''),(101,0,2,0,0,0,0,'127.0.0.1',1478277371,'LOG_CONFIG_MESSAGE',''),(102,0,0,0,0,0,0,'127.0.0.1',1479231176,'operation','Data'),(103,0,2,0,0,0,0,'127.0.0.1',1479239548,'LOG_SC_IGNORE','a:2:{s:3:\"abc\";i:123;s:4:\"name\";s:8:\"John Doe\";}'),(104,0,2,0,0,0,0,'0:0:0:0:0:0:0:1',1479239892,'LOG_SC_IGNORE','a:2:{s:11:\"ignoredUser\";s:4:\"test\";s:4:\"user\";s:5:\"Kison\";}'),(105,0,2,0,0,0,0,'127.0.0.1',1479239921,'LOG_ADMIN_AUTH_SUCCESS',''),(106,0,2,0,0,0,0,'192.168.1.13',1479246172,'LOG_SC_IGNORE','a:2:{s:11:\"ignoredUser\";s:4:\"test\";s:4:\"user\";s:5:\"Kison\";}'),(107,0,2,0,0,0,0,'127.0.0.1',1479246189,'LOG_ADMIN_AUTH_FAIL',''),(108,0,2,0,0,0,0,'127.0.0.1',1479246194,'LOG_ADMIN_AUTH_SUCCESS',''),(109,0,2,0,0,0,0,'192.168.1.13',1479246406,'LOG_SC_IGNORE','a:1:{i:0;s:4:\"test\";}'),(110,0,2,0,0,0,0,'127.0.0.1',1479246450,'LOG_GROUP_CREATED','a:1:{i:0;s:4:\"Test\";}'),(111,0,2,0,0,0,0,'127.0.0.1',1479246459,'LOG_USERS_ADDED','a:2:{i:0;s:4:\"Test\";i:1;s:11:\"Kison, test\";}'),(112,0,2,0,0,0,0,'192.168.1.13',1479248041,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(113,0,2,0,0,0,0,'192.168.1.13',1479248234,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(114,0,2,0,0,0,0,'192.168.1.13',1479248237,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(115,0,2,0,0,0,0,'192.168.1.13',1479248972,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(116,0,2,0,0,0,0,'192.168.1.13',1479248980,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(117,0,2,0,0,0,0,'192.168.1.13',1479249032,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(118,0,2,0,0,0,0,'192.168.1.13',1479249032,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(119,0,2,0,0,0,0,'192.168.1.13',1479249033,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(120,0,2,0,0,0,0,'192.168.1.13',1479249034,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(121,0,2,0,0,0,0,'192.168.1.13',1479249059,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(122,0,2,0,0,0,0,'192.168.1.13',1479249065,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(123,0,2,0,0,0,0,'192.168.1.13',1479249068,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(124,0,2,0,0,0,0,'192.168.1.13',1479249071,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(125,0,2,0,0,0,0,'192.168.1.13',1479249076,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(126,0,2,0,0,0,0,'192.168.1.13',1479249077,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(127,0,2,0,0,0,0,'192.168.1.13',1479249077,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(128,0,2,0,0,0,0,'192.168.1.13',1479249085,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(129,0,2,0,0,0,0,'192.168.1.13',1479249088,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(130,0,2,0,0,0,0,'192.168.1.13',1479249088,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(131,0,2,0,0,0,0,'192.168.1.13',1479249089,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(132,0,2,0,0,0,0,'192.168.1.13',1479249089,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(133,0,2,0,0,0,0,'192.168.1.13',1479249222,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(134,0,2,0,0,0,0,'192.168.1.13',1479249225,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(135,0,2,0,0,0,0,'192.168.1.13',1479249225,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(136,0,2,0,0,0,0,'192.168.1.13',1479249225,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(137,0,2,0,0,0,0,'192.168.1.13',1479249266,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(138,0,2,0,0,0,0,'192.168.1.13',1479249268,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(139,0,2,0,0,0,0,'192.168.1.13',1479249268,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(140,0,2,0,0,0,0,'192.168.1.13',1479249269,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(141,3,2,0,0,0,0,'192.168.1.13',1479252649,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(142,1,2,0,0,0,0,'192.168.1.13',1479254109,'Site Chat Ban','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(143,1,2,0,0,0,0,'192.168.1.13',1479254207,'LOG_SC_BAN','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(144,1,2,0,0,0,0,'192.168.1.13',1479254225,'LOG_SC_BAN','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(145,1,2,0,0,0,0,'192.168.1.13',1479254235,'LOG_SC_BAN','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(146,0,2,0,0,0,0,'127.0.0.1',1479265510,'LOG_ADMIN_AUTH_SUCCESS',''),(147,3,2,0,0,0,0,'192.168.1.13',1479265639,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(148,3,2,0,0,0,0,'192.168.1.13',1479265648,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(149,3,2,0,0,0,0,'192.168.1.13',1479272299,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(150,3,2,0,0,0,0,'192.168.1.13',1479272316,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(151,3,2,0,0,0,0,'192.168.1.13',1479272568,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(152,3,2,0,0,0,0,'192.168.1.13',1479272575,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(153,3,2,0,0,0,0,'192.168.1.13',1479272590,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(154,3,2,0,0,0,0,'192.168.1.13',1479272595,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(155,3,2,0,0,0,0,'192.168.1.13',1479272603,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(156,3,2,0,0,0,0,'192.168.1.13',1479272634,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(157,3,2,0,0,0,0,'192.168.1.13',1479272637,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(158,3,2,0,0,0,0,'192.168.1.13',1479272678,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(159,3,2,0,0,0,0,'192.168.1.13',1479272683,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(160,3,2,0,0,0,0,'192.168.1.13',1479272688,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(161,3,2,0,0,0,0,'192.168.1.13',1479272711,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(162,3,2,0,0,0,0,'192.168.1.13',1479272726,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(163,3,2,0,0,0,0,'192.168.1.13',1479272730,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(164,3,2,0,0,0,0,'192.168.1.13',1479272737,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(165,3,2,0,0,0,0,'192.168.1.13',1479272821,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(166,3,2,0,0,0,0,'192.168.1.13',1479272825,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(167,3,2,0,0,0,0,'192.168.1.13',1479272854,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(168,3,2,0,0,0,0,'192.168.1.13',1479272859,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(169,3,2,0,0,0,0,'192.168.1.13',1479272862,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(170,3,2,0,0,0,0,'192.168.1.13',1479273126,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(171,3,2,0,0,0,0,'192.168.1.13',1479273336,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(172,3,2,0,0,0,0,'192.168.1.13',1479273340,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(173,3,2,0,0,0,0,'192.168.1.13',1479273343,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(174,3,2,0,0,0,0,'192.168.1.13',1479273367,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(175,3,2,0,0,0,0,'192.168.1.13',1479273370,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(176,3,2,0,0,0,0,'192.168.1.13',1479273371,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(177,3,2,0,0,0,0,'192.168.1.13',1479273373,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(178,3,2,0,0,0,0,'192.168.1.13',1479273375,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(179,3,2,0,0,0,0,'192.168.1.13',1479273379,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(180,3,2,0,0,0,0,'192.168.1.13',1479273410,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(181,3,2,0,0,0,0,'192.168.1.13',1479273419,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(182,3,2,0,0,0,0,'192.168.1.13',1479273429,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(183,3,2,0,0,0,0,'192.168.1.13',1479273430,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(184,3,2,0,0,0,0,'192.168.1.13',1479273505,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(185,3,2,0,0,0,0,'192.168.1.13',1479273508,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(186,3,2,0,0,0,0,'192.168.1.13',1479273514,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(187,3,2,0,0,0,0,'192.168.1.13',1479273579,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(188,3,2,0,0,0,0,'192.168.1.13',1479273581,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(189,3,2,0,0,0,0,'192.168.1.13',1479273583,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(190,3,2,0,0,0,0,'192.168.1.13',1479273588,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(191,3,2,0,0,0,0,'192.168.1.13',1479273641,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(192,3,2,0,0,0,0,'192.168.1.13',1479273641,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(193,3,2,0,0,0,0,'192.168.1.13',1479273644,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(194,3,2,0,0,0,0,'192.168.1.13',1479273647,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(195,3,2,0,0,0,0,'192.168.1.13',1479273647,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(196,3,2,0,0,0,0,'192.168.1.13',1479273651,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(197,3,2,0,0,0,0,'192.168.1.13',1479273651,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(198,3,2,0,0,0,0,'192.168.1.13',1479273653,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(199,3,2,0,0,0,0,'192.168.1.13',1479273655,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(200,3,2,0,0,0,0,'192.168.1.13',1479273656,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(201,3,2,0,0,0,0,'192.168.1.13',1479273659,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(202,3,2,0,0,0,0,'192.168.1.13',1479273662,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(203,3,2,0,0,0,0,'192.168.1.13',1479273665,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(204,3,2,0,0,0,0,'192.168.1.13',1479273666,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(205,3,2,0,0,0,0,'192.168.1.13',1479273669,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(206,3,2,0,0,0,0,'192.168.1.13',1479273670,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(207,3,2,0,0,0,0,'192.168.1.13',1479273674,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:5:\"Kison\";}'),(208,3,2,0,0,0,0,'192.168.1.13',1479273676,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:5:\"Kison\";}'),(209,3,2,0,0,0,0,'192.168.1.13',1479273678,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(210,3,2,0,0,0,0,'192.168.1.13',1479273681,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(211,3,2,0,0,0,0,'192.168.1.13',1479273685,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(212,3,2,0,0,0,0,'192.168.1.13',1479273686,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(213,3,2,0,0,0,0,'192.168.1.13',1479342610,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(214,3,2,0,0,0,0,'192.168.1.13',1479342807,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(215,3,2,0,0,0,0,'192.168.1.13',1479342810,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(216,3,2,0,0,0,0,'192.168.1.13',1479342915,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(217,3,2,0,0,0,0,'192.168.1.13',1479342919,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(218,3,2,0,0,0,0,'192.168.1.13',1479342922,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(219,3,2,0,0,0,0,'192.168.1.13',1479342923,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(220,3,2,0,0,0,0,'192.168.1.13',1479342929,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(221,3,2,0,0,0,0,'192.168.1.13',1479342932,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(222,3,2,0,0,0,0,'192.168.1.13',1479342935,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(223,3,2,0,0,0,0,'192.168.1.13',1479342942,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(224,3,2,0,0,0,0,'192.168.1.13',1479342945,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(225,3,2,0,0,0,0,'192.168.1.13',1479343896,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(226,3,2,0,0,0,0,'192.168.1.13',1479344011,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:5:\"Kison\";}'),(227,3,2,0,0,0,0,'192.168.1.13',1479344013,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(228,3,2,0,0,0,0,'192.168.1.13',1479344018,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(229,3,2,0,0,0,0,'192.168.1.13',1479344020,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(230,3,2,0,0,0,0,'192.168.1.13',1479345302,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(231,3,2,0,0,0,0,'192.168.1.13',1479345365,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(232,3,2,0,0,0,0,'192.168.1.13',1479345367,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(233,3,2,0,0,0,0,'192.168.1.13',1479345371,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(234,3,2,0,0,0,0,'192.168.1.13',1479345385,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"ltest\";}'),(235,3,2,0,0,0,0,'192.168.1.13',1479345390,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"ltest\";}'),(236,3,2,0,0,0,0,'192.168.1.13',1479345394,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"ltest\";}'),(237,3,2,0,0,0,0,'192.168.1.13',1479345402,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"ltest\";}'),(238,3,2,0,0,0,0,'192.168.1.13',1479345466,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(239,3,2,0,0,0,0,'192.168.1.13',1479345506,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(240,3,2,0,0,0,0,'192.168.1.13',1479345922,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"ltest\";}'),(241,3,2,0,0,0,0,'192.168.1.13',1479345926,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"ltest\";}'),(242,3,2,0,0,0,0,'192.168.1.13',1479345995,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(243,3,2,0,0,0,0,'192.168.1.13',1479345996,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(244,3,2,0,0,0,0,'192.168.1.13',1479345998,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(245,3,2,0,0,0,0,'192.168.1.13',1479346002,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(246,3,2,0,0,0,0,'192.168.1.13',1479346004,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(247,3,2,0,0,0,0,'192.168.1.13',1479346160,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(248,3,2,0,0,0,0,'192.168.1.13',1479346163,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(249,3,2,0,0,0,0,'192.168.1.13',1479346171,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(250,3,2,0,0,0,0,'192.168.1.13',1479346173,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(251,3,2,0,0,0,0,'192.168.1.13',1479346176,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(252,3,2,0,0,0,0,'192.168.1.13',1479346179,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(253,3,2,0,0,0,0,'192.168.1.13',1479346181,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(254,3,2,0,0,0,0,'192.168.1.13',1479346183,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:4:\"test\";}'),(255,3,2,0,0,0,0,'192.168.1.13',1479346184,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(256,3,2,0,0,0,0,'192.168.1.13',1479346587,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(257,3,2,0,0,0,0,'192.168.1.13',1479346588,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(258,3,2,0,0,0,0,'192.168.1.13',1479346592,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(259,3,2,0,0,0,0,'192.168.1.13',1479346598,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(260,3,2,0,0,0,0,'192.168.1.13',1479346600,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(261,3,2,0,0,0,0,'192.168.1.13',1479346601,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(262,3,2,0,0,0,0,'192.168.1.13',1479346614,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(263,3,2,0,0,0,0,'192.168.1.13',1479346619,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(264,3,2,0,0,0,0,'192.168.1.13',1479346623,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(265,3,2,0,0,0,0,'192.168.1.13',1479346626,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(266,3,2,0,0,0,0,'192.168.1.13',1479346628,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(267,3,2,0,0,0,0,'192.168.1.13',1479346630,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(268,3,2,0,0,0,0,'192.168.1.13',1479346631,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(269,3,2,0,0,0,0,'192.168.1.13',1479346784,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(270,3,2,0,0,0,0,'192.168.1.13',1479346786,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(271,3,2,0,0,0,0,'192.168.1.13',1479346799,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(272,3,2,0,0,0,0,'192.168.1.13',1479346801,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(273,3,2,0,0,0,0,'192.168.1.13',1479346803,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(274,3,2,0,0,0,0,'192.168.1.13',1479346807,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(275,3,2,0,0,0,0,'192.168.1.13',1479346808,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(276,3,2,0,0,0,0,'192.168.1.13',1479346810,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(277,3,2,0,0,0,0,'192.168.1.13',1479346812,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(278,3,2,0,0,0,0,'192.168.1.13',1479346823,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(279,3,2,0,0,0,0,'192.168.1.13',1479346825,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(280,3,2,0,0,0,0,'192.168.1.13',1479346828,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(281,3,2,0,0,0,0,'192.168.1.13',1479346828,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(282,3,2,0,0,0,0,'192.168.1.13',1479346830,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(283,3,2,0,0,0,0,'192.168.1.13',1479346832,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(284,3,2,0,0,0,0,'192.168.1.13',1479346839,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(285,3,2,0,0,0,0,'192.168.1.13',1479346840,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(286,3,2,0,0,0,0,'192.168.1.13',1479346844,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:5:\"Kison\";}'),(287,3,2,0,0,0,0,'192.168.1.13',1479346845,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:5:\"Kison\";}'),(288,3,2,0,0,0,0,'192.168.1.13',1479346847,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(289,3,2,0,0,0,0,'192.168.1.13',1479346850,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(290,3,2,0,0,0,0,'192.168.1.13',1479346853,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(291,3,2,0,0,0,0,'192.168.1.13',1479346854,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(292,3,2,0,0,0,0,'192.168.1.13',1479346855,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(293,3,2,0,0,0,0,'192.168.1.13',1479346858,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(294,3,2,0,0,0,0,'192.168.1.13',1479346999,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(295,3,2,0,0,0,0,'192.168.1.13',1479347002,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(296,3,2,0,0,0,0,'192.168.1.13',1479347190,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(297,3,2,0,0,0,0,'192.168.1.13',1479347191,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(298,3,2,0,0,0,0,'192.168.1.13',1479347192,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(299,3,2,0,0,0,0,'192.168.1.13',1479347193,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(300,3,2,0,0,0,0,'192.168.1.13',1479347196,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(301,3,2,0,0,0,0,'192.168.1.13',1479347196,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(302,3,2,0,0,0,0,'192.168.1.13',1479347198,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(303,3,2,0,0,0,0,'192.168.1.13',1479347198,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(304,3,2,0,0,0,0,'192.168.1.13',1479347200,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(305,3,2,0,0,0,0,'192.168.1.13',1479347200,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(306,3,48,0,0,0,0,'192.168.1.13',1479347230,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(307,3,48,0,0,0,0,'192.168.1.13',1479347683,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(308,3,48,0,0,0,0,'192.168.1.13',1479347687,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(309,3,48,0,0,0,0,'192.168.1.13',1479348366,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(310,3,48,0,0,0,0,'192.168.1.13',1479348391,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(311,3,48,0,0,0,0,'192.168.1.13',1479348625,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(312,3,48,0,0,0,0,'192.168.1.13',1479348640,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(313,1,2,0,0,0,0,'192.168.1.13',1479348852,'LOG_SC_BAN','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(314,1,2,0,0,0,0,'192.168.1.13',1479349047,'LOG_SC_BAN','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(315,1,2,0,0,0,0,'192.168.1.13',1479349068,'LOG_SC_BAN','a:3:{i:0;s:5:\"added\";i:1;s:4:\"test\";i:2;s:6:\"2 days\";}'),(316,1,2,0,0,0,0,'192.168.1.13',1479349553,'LOG_SC_BAN','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(317,1,2,0,0,0,0,'192.168.1.13',1479349560,'LOG_SC_BAN','a:3:{i:0;s:5:\"added\";i:1;s:4:\"test\";i:2;s:6:\"2 days\";}'),(318,1,2,0,0,0,0,'192.168.1.13',1479349565,'LOG_SC_BAN','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(319,1,2,0,0,0,0,'192.168.1.13',1479349570,'LOG_SC_BAN','a:3:{i:0;s:5:\"added\";i:1;s:4:\"test\";i:2;s:6:\"2 days\";}'),(320,1,2,0,0,0,0,'192.168.1.13',1479349759,'LOG_SC_BAN','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(321,3,2,0,0,0,0,'192.168.1.13',1479350201,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:4:\"test\";}'),(322,3,2,0,0,0,0,'192.168.1.13',1479350202,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(323,3,2,0,0,0,0,'192.168.1.13',1479350260,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(324,3,2,0,0,0,0,'192.168.1.13',1479350261,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(325,3,2,0,0,0,0,'192.168.1.13',1479350269,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(326,3,2,0,0,0,0,'192.168.1.13',1479350334,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(327,3,2,0,0,0,0,'192.168.1.13',1479350336,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(328,3,2,0,0,0,0,'192.168.1.13',1479448229,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(329,3,2,0,0,0,0,'192.168.1.13',1479448994,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(330,3,48,0,0,0,0,'192.168.1.13',1479529418,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(331,3,2,0,0,0,0,'192.168.1.13',1479529713,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(332,3,2,0,0,0,0,'192.168.1.13',1479529878,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(333,3,2,0,0,0,0,'192.168.1.13',1479529881,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:5:\"Kison\";}'),(334,3,2,0,0,0,0,'192.168.1.13',1479529886,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(335,3,2,0,0,0,0,'192.168.1.13',1479529904,'LOG_SC_IGNORE','a:2:{i:0;s:5:\"added\";i:1;s:5:\"Kison\";}'),(336,3,2,0,0,0,0,'192.168.1.13',1479529905,'LOG_SC_IGNORE','a:2:{i:0;s:8:\"modified\";i:1;s:5:\"Kison\";}'),(337,3,2,0,0,0,0,'192.168.1.13',1479529907,'LOG_SC_IGNORE','a:2:{i:0;s:7:\"removed\";i:1;s:5:\"Kison\";}'),(338,1,2,0,0,0,0,'192.168.1.13',1479536153,'LOG_SC_BAN','a:3:{i:0;s:5:\"added\";i:1;s:4:\"test\";i:2;s:6:\"2 days\";}'),(339,1,2,0,0,0,0,'192.168.1.13',1479536159,'LOG_SC_BAN','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(340,2,2,0,0,0,0,'127.0.0.1',1479589081,'LOG_IMAGE_GENERATION_ERROR','a:3:{i:0;s:9:\"/cron.php\";i:1;i:26;i:2;s:93:\"Cannot modify header information - headers already sent by (output started at /config.php:26)\";}'),(341,2,2,0,0,0,0,'127.0.0.1',1479589081,'LOG_IMAGE_GENERATION_ERROR','a:3:{i:0;s:9:\"/cron.php\";i:1;i:27;i:2;s:93:\"Cannot modify header information - headers already sent by (output started at /config.php:26)\";}'),(342,2,2,0,0,0,0,'127.0.0.1',1479589081,'LOG_IMAGE_GENERATION_ERROR','a:3:{i:0;s:9:\"/cron.php\";i:1;i:28;i:2;s:93:\"Cannot modify header information - headers already sent by (output started at /config.php:26)\";}'),(343,0,2,0,0,0,0,'127.0.0.1',1479601854,'LOG_ADMIN_AUTH_FAIL',''),(344,0,2,0,0,0,0,'127.0.0.1',1479602498,'LOG_ADMIN_AUTH_SUCCESS',''),(345,0,2,0,0,0,0,'127.0.0.1',1479615194,'LOG_ADMIN_AUTH_SUCCESS',''),(346,0,2,0,0,0,0,'127.0.0.1',1479615502,'LOG_USERS_ADDED','a:2:{i:0;s:24:\"Banned Users (Site Chat)\";i:1;s:4:\"test\";}'),(347,1,2,0,0,0,0,'192.168.1.13',1479615841,'LOG_SC_BAN','a:2:{i:0;s:7:\"removed\";i:1;s:4:\"test\";}'),(348,0,2,0,0,0,0,'127.0.0.1',1479615973,'LOG_MODS_ADDED','a:2:{i:0;s:24:\"Banned Users (Site Chat)\";i:1;s:4:\"test\";}'),(349,0,2,0,0,0,0,'127.0.0.1',1479616536,'LOG_GROUP_REMOVE','a:2:{i:0;s:24:\"Banned Users (Site Chat)\";i:1;s:4:\"test\";}'),(350,0,2,0,0,0,0,'127.0.0.1',1479616777,'LOG_USERS_ADDED','a:2:{i:0;s:24:\"Banned Users (Site Chat)\";i:1;s:4:\"test\";}'),(351,0,2,0,0,0,0,'127.0.0.1',1479616788,'LOG_GROUP_PROMOTED','a:2:{i:0;s:24:\"Banned Users (Site Chat)\";i:1;s:4:\"test\";}'),(352,0,2,0,0,0,0,'127.0.0.1',1479616814,'LOG_GROUP_REMOVE','a:2:{i:0;s:24:\"Banned Users (Site Chat)\";i:1;s:4:\"test\";}'),(353,0,2,0,0,0,0,'127.0.0.1',1479616828,'LOG_USERS_ADDED','a:2:{i:0;s:24:\"Banned Users (Site Chat)\";i:1;s:4:\"test\";}'),(354,0,2,0,0,0,0,'127.0.0.1',1479616845,'LOG_GROUP_PROMOTED','a:2:{i:0;s:24:\"Banned Users (Site Chat)\";i:1;s:4:\"test\";}'),(355,0,2,0,0,0,0,'127.0.0.1',1479616880,'LOG_GROUP_REMOVE','a:2:{i:0;s:24:\"Banned Users (Site Chat)\";i:1;s:4:\"test\";}'),(356,0,2,0,0,0,0,'127.0.0.1',1479617022,'LOG_MODS_ADDED','a:2:{i:0;s:24:\"Banned Users (Site Chat)\";i:1;s:4:\"test\";}'),(357,0,2,0,0,0,0,'127.0.0.1',1479617035,'LOG_GROUP_DEMOTED','a:2:{i:0;s:24:\"Banned Users (Site Chat)\";i:1;s:4:\"test\";}'),(358,0,2,0,0,0,0,'127.0.0.1',1479617051,'LOG_GROUP_REMOVE','a:2:{i:0;s:24:\"Banned Users (Site Chat)\";i:1;s:4:\"test\";}'),(359,0,2,0,0,0,0,'127.0.0.1',1479617251,'LOG_MODS_ADDED','a:2:{i:0;s:24:\"Banned Users (Site Chat)\";i:1;s:4:\"test\";}'),(360,0,2,0,0,0,0,'127.0.0.1',1479617272,'LOG_GROUP_REMOVE','a:2:{i:0;s:24:\"Banned Users (Site Chat)\";i:1;s:4:\"test\";}'),(361,0,2,0,0,0,0,'127.0.0.1',1479617293,'LOG_MODS_ADDED','a:2:{i:0;s:24:\"Banned Users (Site Chat)\";i:1;s:4:\"test\";}'),(362,0,2,0,0,0,0,'127.0.0.1',1479617308,'LOG_GROUP_REMOVE','a:2:{i:0;s:24:\"Banned Users (Site Chat)\";i:1;s:4:\"test\";}'),(363,0,2,0,0,0,0,'127.0.0.1',1479617326,'LOG_MODS_ADDED','a:2:{i:0;s:4:\"Bots\";i:1;s:4:\"test\";}'),(364,0,2,0,0,0,0,'127.0.0.1',1479617342,'LOG_GROUP_REMOVE','a:2:{i:0;s:4:\"Bots\";i:1;s:4:\"test\";}'),(365,0,2,0,0,0,0,'127.0.0.1',1479632814,'LOG_ADMIN_AUTH_SUCCESS',''),(366,0,2,0,0,0,0,'127.0.0.1',1479632822,'LOG_PURGE_CACHE',''),(367,0,2,0,0,0,0,'127.0.0.1',1479632834,'LOG_PURGE_CACHE',''),(368,0,2,0,0,0,0,'127.0.0.1',1479633256,'LOG_PURGE_CACHE',''),(369,0,2,0,0,0,0,'127.0.0.1',1479633262,'LOG_PURGE_CACHE',''),(370,0,2,0,0,0,0,'127.0.0.1',1479633294,'LOG_THEME_REFRESHED','a:1:{i:0;s:9:\"prosilver\";}'),(371,0,2,0,0,0,0,'127.0.0.1',1479633298,'LOG_THEME_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(372,0,2,0,0,0,0,'127.0.0.1',1479633356,'LOG_THEME_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(373,0,2,0,0,0,0,'127.0.0.1',1479633633,'LOG_THEME_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(374,0,2,0,0,0,0,'127.0.0.1',1479633879,'LOG_THEME_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(375,0,2,0,0,0,0,'127.0.0.1',1479633968,'LOG_THEME_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(376,0,2,0,0,0,0,'127.0.0.1',1479634650,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(377,0,2,0,0,0,0,'127.0.0.1',1479634654,'LOG_THEME_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(378,0,2,0,0,0,0,'127.0.0.1',1479634878,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(379,0,2,0,0,0,0,'127.0.0.1',1479634906,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(380,0,2,0,0,0,0,'127.0.0.1',1479635012,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(381,0,2,0,0,0,0,'127.0.0.1',1479635020,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(382,0,2,0,0,0,0,'127.0.0.1',1479635302,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(383,0,2,0,0,0,0,'127.0.0.1',1479635394,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(384,0,2,0,0,0,0,'127.0.0.1',1479635431,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(385,0,2,0,0,0,0,'127.0.0.1',1479635449,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(386,0,2,0,0,0,0,'127.0.0.1',1479635465,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(387,0,2,0,0,0,0,'127.0.0.1',1479635480,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(388,0,2,0,0,0,0,'127.0.0.1',1479635511,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(389,0,2,0,0,0,0,'127.0.0.1',1479635533,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(390,0,2,0,0,0,0,'127.0.0.1',1479635815,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(391,0,2,0,0,0,0,'127.0.0.1',1479635901,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(392,0,2,0,0,0,0,'127.0.0.1',1479636073,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(393,0,2,0,0,0,0,'127.0.0.1',1479665950,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(394,0,2,0,0,0,0,'127.0.0.1',1479665961,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(395,0,2,0,0,0,0,'127.0.0.1',1479666058,'LOG_THEME_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(396,0,2,0,0,0,0,'127.0.0.1',1479666067,'LOG_PURGE_CACHE',''),(397,0,2,0,0,0,0,'127.0.0.1',1479666085,'LOG_THEME_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(398,0,2,0,0,0,0,'127.0.0.1',1479666141,'LOG_THEME_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(399,0,2,0,0,0,0,'127.0.0.1',1479668986,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(400,0,2,0,0,0,0,'127.0.0.1',1479668990,'LOG_THEME_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(401,0,2,0,0,0,0,'127.0.0.1',1479669304,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(402,0,2,0,0,0,0,'127.0.0.1',1479669308,'LOG_THEME_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(403,0,2,0,0,0,0,'127.0.0.1',1479671562,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(404,0,2,0,0,0,0,'127.0.0.1',1479671565,'LOG_THEME_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(405,0,2,0,0,0,0,'127.0.0.1',1479671838,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(406,0,2,0,0,0,0,'127.0.0.1',1479671842,'LOG_THEME_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(407,0,2,0,0,0,0,'127.0.0.1',1479672238,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(408,0,2,0,0,0,0,'127.0.0.1',1479672243,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:9:\"mafTigers\";}'),(409,0,2,0,0,0,0,'127.0.0.1',1479672248,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:9:\"scumobile\";}'),(410,0,2,0,0,0,0,'127.0.0.1',1479672253,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafSepia\";}'),(411,0,2,0,0,0,0,'127.0.0.1',1479672256,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:9:\"prosilver\";}'),(412,0,2,0,0,0,0,'127.0.0.1',1479672424,'LOG_THEME_REFRESHED','a:1:{i:0;s:8:\"mafSepia\";}'),(413,0,2,0,0,0,0,'127.0.0.1',1479672614,'LOG_THEME_REFRESHED','a:1:{i:0;s:9:\"prosilver\";}'),(414,0,2,0,0,0,0,'127.0.0.1',1479672655,'LOG_THEME_REFRESHED','a:1:{i:0;s:9:\"prosilver\";}'),(415,0,2,0,0,0,0,'127.0.0.1',1479672846,'LOG_THEME_REFRESHED','a:1:{i:0;s:9:\"mafTigers\";}'),(416,0,2,0,0,0,0,'127.0.0.1',1479673044,'LOG_THEME_REFRESHED','a:1:{i:0;s:9:\"scumobile\";}'),(417,0,2,0,0,0,0,'127.0.0.1',1479673058,'LOG_THEME_REFRESHED','a:1:{i:0;s:9:\"scumobile\";}'),(418,0,2,0,0,0,0,'127.0.0.1',1479674237,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:9:\"scumobile\";}'),(419,0,2,0,0,0,0,'127.0.0.1',1479674315,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:9:\"scumobile\";}'),(420,0,2,0,0,0,0,'127.0.0.1',1479674593,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafBlack\";}'),(421,0,2,0,0,0,0,'127.0.0.1',1479674601,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:9:\"scumobile\";}'),(422,0,2,0,0,0,0,'127.0.0.1',1479674606,'LOG_THEME_REFRESHED','a:1:{i:0;s:9:\"scumobile\";}'),(423,0,2,0,0,0,0,'127.0.0.1',1479674778,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:9:\"scumobile\";}'),(424,0,2,0,0,0,0,'127.0.0.1',1479674783,'LOG_THEME_REFRESHED','a:1:{i:0;s:9:\"scumobile\";}'),(425,0,2,0,0,0,0,'127.0.0.1',1479713384,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafSepia\";}'),(426,0,2,0,0,0,0,'127.0.0.1',1479713389,'LOG_THEME_REFRESHED','a:1:{i:0;s:8:\"mafSepia\";}'),(427,0,2,0,0,0,0,'127.0.0.1',1479713519,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafSepia\";}'),(428,0,2,0,0,0,0,'127.0.0.1',1479713526,'LOG_THEME_REFRESHED','a:1:{i:0;s:8:\"mafSepia\";}'),(429,1,2,90,3,0,0,'127.0.0.1',1479785848,'LOG_POST_EDITED','a:2:{i:0;s:4:\"Test\";i:1;s:5:\"Kison\";}'),(430,0,2,0,0,0,0,'127.0.0.1',1479867508,'LOG_IMAGESET_REFRESHED','a:1:{i:0;s:8:\"mafSepia\";}'),(431,1,2,90,14,0,0,'127.0.0.1',1480232847,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(432,1,2,90,14,0,0,'127.0.0.1',1480232925,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(433,1,2,90,13,0,0,'127.0.0.1',1480233940,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT3\";i:1;s:5:\"Kison\";}'),(434,1,2,90,13,0,0,'127.0.0.1',1480233963,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT3\";i:1;s:5:\"Kison\";}'),(435,1,2,90,14,0,0,'127.0.0.1',1480233977,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(436,1,2,90,14,0,0,'127.0.0.1',1480233986,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(437,1,2,90,14,0,0,'127.0.0.1',1480268572,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(438,1,2,90,14,0,0,'127.0.0.1',1480268678,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(439,0,2,0,0,0,0,'127.0.0.1',1480269043,'LOG_ADMIN_AUTH_SUCCESS',''),(440,0,2,0,0,0,0,'127.0.0.1',1480271079,'LOG_CONFIG_EMAIL',''),(441,1,2,90,13,0,0,'127.0.0.1',1480571064,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT3\";i:1;s:5:\"Kison\";}'),(442,1,2,90,13,0,0,'127.0.0.1',1480571088,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT3\";i:1;s:5:\"Kison\";}'),(443,1,2,90,3,0,0,'127.0.0.1',1481480000,'LOG_POST_EDITED','a:2:{i:0;s:4:\"Test\";i:1;s:5:\"Kison\";}'),(444,1,2,90,3,0,0,'127.0.0.1',1481481474,'LOG_POST_EDITED','a:2:{i:0;s:4:\"Test\";i:1;s:5:\"Kison\";}'),(445,1,2,90,3,0,0,'127.0.0.1',1481481488,'LOG_POST_EDITED','a:2:{i:0;s:4:\"Test\";i:1;s:5:\"Kison\";}'),(446,1,2,90,3,0,0,'127.0.0.1',1481481531,'LOG_POST_EDITED','a:2:{i:0;s:4:\"Test\";i:1;s:5:\"Kison\";}'),(447,1,2,90,9,0,0,'127.0.0.1',1481482946,'LOG_POST_EDITED','a:2:{i:0;s:16:\"My Private Topic\";i:1;s:4:\"test\";}'),(448,1,2,90,9,0,0,'127.0.0.1',1481482961,'LOG_POST_EDITED','a:2:{i:0;s:16:\"My Private Topic\";i:1;s:4:\"test\";}'),(449,1,2,90,9,0,0,'127.0.0.1',1481482972,'LOG_POST_EDITED','a:2:{i:0;s:16:\"My Private Topic\";i:1;s:4:\"test\";}'),(450,1,2,90,9,0,0,'127.0.0.1',1481482994,'LOG_POST_EDITED','a:2:{i:0;s:16:\"My Private Topic\";i:1;s:4:\"test\";}'),(451,1,2,90,9,0,0,'127.0.0.1',1481483003,'LOG_POST_EDITED','a:2:{i:0;s:16:\"My Private Topic\";i:1;s:4:\"test\";}'),(452,1,2,90,9,0,0,'127.0.0.1',1481483010,'LOG_POST_EDITED','a:2:{i:0;s:16:\"My Private Topic\";i:1;s:4:\"test\";}'),(453,1,2,90,9,0,0,'127.0.0.1',1481483018,'LOG_POST_EDITED','a:2:{i:0;s:16:\"My Private Topic\";i:1;s:4:\"test\";}'),(454,1,2,90,9,0,0,'127.0.0.1',1481483051,'LOG_POST_EDITED','a:2:{i:0;s:16:\"My Private Topic\";i:1;s:4:\"test\";}'),(455,1,2,90,9,0,0,'127.0.0.1',1481483057,'LOG_POST_EDITED','a:2:{i:0;s:16:\"My Private Topic\";i:1;s:4:\"test\";}'),(456,0,2,0,0,0,0,'127.0.0.1',1481483179,'LOG_ADMIN_AUTH_SUCCESS',''),(457,0,2,0,0,0,0,'127.0.0.1',1481483215,'LOG_FORUM_EDIT','a:1:{i:0;s:14:\"Private Topics\";}'),(458,1,2,90,14,0,0,'127.0.0.1',1482086879,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(459,1,48,90,14,0,0,'127.0.0.1',1482086952,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(460,1,2,90,14,0,0,'127.0.0.1',1482089397,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(461,1,2,90,14,0,0,'127.0.0.1',1482089586,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(462,1,2,90,14,0,0,'127.0.0.1',1482089617,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(463,1,2,90,14,0,0,'127.0.0.1',1482089663,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(464,1,2,90,14,0,0,'127.0.0.1',1482089690,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(465,2,48,0,0,0,0,'127.0.0.1',1482089777,'LOG_IMAGE_GENERATION_ERROR','a:3:{i:0;s:33:\"/includes/functions_messenger.php\";i:1;i:979;i:2;s:67:\"fsockopen(): unable to connect to localhost:25 (Connection refused)\";}'),(466,2,48,0,0,0,0,'127.0.0.1',1482089777,'LOG_ERROR_EMAIL','a:1:{i:0;s:381:\"<strong>EMAIL/SMTP</strong><br /><em>/forum/cron.php</em><br /><br />Could not connect to smtp host : 61 : Connection refused<br /><br />&lt;b&gt;[phpBB Debug] PHP Warning&lt;/b&gt;: in file &lt;b&gt;/includes/functions_messenger.php&lt;/b&gt; on line &lt;b&gt;979&lt;/b&gt;: &lt;b&gt;fsockopen(): unable to connect to localhost:25 (Connection refused)&lt;/b&gt;&lt;br /&gt;\n<br />\";}'),(467,1,2,90,14,0,0,'127.0.0.1',1482089789,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(468,1,2,90,14,0,0,'127.0.0.1',1482249616,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(469,1,2,90,14,0,0,'127.0.0.1',1482249652,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(470,1,2,90,14,0,0,'127.0.0.1',1482249671,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(471,1,2,90,14,0,0,'127.0.0.1',1482249686,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(472,1,2,90,14,0,0,'127.0.0.1',1482249696,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(473,1,2,90,14,0,0,'127.0.0.1',1482249713,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(474,1,2,90,14,0,0,'127.0.0.1',1482249724,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(475,1,2,90,14,0,0,'127.0.0.1',1482249756,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(476,1,2,90,14,0,0,'127.0.0.1',1482249765,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(477,1,2,90,14,0,0,'127.0.0.1',1482249774,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(478,1,2,90,14,0,0,'127.0.0.1',1482249794,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(479,1,2,90,14,0,0,'127.0.0.1',1482709966,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(480,1,2,90,3,0,0,'127.0.0.1',1482710000,'LOG_POST_EDITED','a:2:{i:0;s:4:\"Test\";i:1;s:5:\"Kison\";}'),(481,1,2,90,14,0,0,'127.0.0.1',1482710078,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(482,1,2,90,14,0,0,'127.0.0.1',1482710639,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(483,1,2,90,14,0,0,'127.0.0.1',1482710802,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(484,1,2,90,14,0,0,'127.0.0.1',1482710812,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(485,1,2,90,14,0,0,'127.0.0.1',1482710829,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(486,1,2,90,14,0,0,'127.0.0.1',1482710839,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(487,1,2,90,14,0,0,'127.0.0.1',1482710849,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(488,1,2,90,14,0,0,'127.0.0.1',1482710879,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(489,1,2,90,14,0,0,'127.0.0.1',1482710888,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(490,1,2,90,14,0,0,'127.0.0.1',1482710896,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(491,1,2,90,14,0,0,'127.0.0.1',1482710904,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(492,1,2,90,14,0,0,'127.0.0.1',1482710910,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(493,1,2,90,14,0,0,'127.0.0.1',1482710930,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(494,1,2,90,14,0,0,'127.0.0.1',1482710943,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(495,1,2,90,14,0,0,'127.0.0.1',1482710951,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(496,1,2,90,14,0,0,'127.0.0.1',1482710973,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(497,1,2,90,14,0,0,'127.0.0.1',1482711044,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(498,1,2,90,14,0,0,'127.0.0.1',1482711080,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(499,1,2,90,14,0,0,'127.0.0.1',1482712173,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(500,2,48,0,0,0,0,'127.0.0.1',1482713515,'LOG_IMAGE_GENERATION_ERROR','a:3:{i:0;s:9:\"/cron.php\";i:1;i:26;i:2;s:106:\"Cannot modify header information - headers already sent by (output started at /includes/db/mysqli.php:146)\";}'),(501,2,48,0,0,0,0,'127.0.0.1',1482713515,'LOG_IMAGE_GENERATION_ERROR','a:3:{i:0;s:9:\"/cron.php\";i:1;i:27;i:2;s:106:\"Cannot modify header information - headers already sent by (output started at /includes/db/mysqli.php:146)\";}'),(502,2,48,0,0,0,0,'127.0.0.1',1482713515,'LOG_IMAGE_GENERATION_ERROR','a:3:{i:0;s:9:\"/cron.php\";i:1;i:28;i:2;s:106:\"Cannot modify header information - headers already sent by (output started at /includes/db/mysqli.php:146)\";}'),(503,0,2,0,0,0,0,'127.0.0.1',1482713944,'LOG_ADMIN_AUTH_SUCCESS',''),(504,0,2,0,0,0,0,'127.0.0.1',1482713967,'LOG_CONFIG_SEARCH',''),(505,1,2,90,14,0,0,'127.0.0.1',1482714344,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(506,1,2,90,14,0,0,'127.0.0.1',1482714362,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(507,1,2,90,14,0,0,'127.0.0.1',1482714643,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(508,1,2,90,14,0,0,'127.0.0.1',1482714675,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(509,1,2,90,14,0,0,'127.0.0.1',1482714693,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(510,1,2,90,14,0,0,'127.0.0.1',1482714710,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(511,1,2,90,14,0,0,'127.0.0.1',1482714726,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(512,1,2,90,14,0,0,'127.0.0.1',1482714735,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(513,1,2,90,14,0,0,'127.0.0.1',1482714743,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(514,1,2,90,14,0,0,'127.0.0.1',1482714751,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(515,1,2,90,14,0,0,'127.0.0.1',1482714775,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(516,1,2,90,14,0,0,'127.0.0.1',1482714783,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(517,1,2,90,14,0,0,'127.0.0.1',1482714791,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(518,1,2,90,14,0,0,'127.0.0.1',1482714821,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(519,1,2,90,14,0,0,'127.0.0.1',1482714833,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(520,1,2,90,14,0,0,'127.0.0.1',1482714847,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(521,1,2,90,14,0,0,'127.0.0.1',1482714873,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(522,1,2,90,14,0,0,'127.0.0.1',1482714992,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(523,1,2,90,14,0,0,'127.0.0.1',1482715003,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(524,1,2,90,14,0,0,'127.0.0.1',1482715011,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(525,1,2,90,14,0,0,'127.0.0.1',1482715029,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(526,1,2,90,14,0,0,'127.0.0.1',1482715072,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(527,1,2,90,14,0,0,'127.0.0.1',1482715091,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(528,1,2,90,14,0,0,'127.0.0.1',1482715115,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(529,1,2,90,14,0,0,'127.0.0.1',1482715128,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(530,1,2,90,14,0,0,'127.0.0.1',1482715156,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(531,1,2,90,14,0,0,'127.0.0.1',1482715171,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(532,1,2,90,14,0,0,'127.0.0.1',1482715183,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(533,1,2,90,14,0,0,'127.0.0.1',1482715228,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(534,1,2,90,14,0,0,'127.0.0.1',1482715244,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(535,1,2,90,14,0,0,'127.0.0.1',1482715264,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(536,1,2,90,14,0,0,'127.0.0.1',1482715288,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(537,1,2,90,14,0,0,'127.0.0.1',1482715298,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(538,1,2,90,14,0,0,'127.0.0.1',1482715312,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(539,1,2,90,14,0,0,'127.0.0.1',1482715369,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(540,1,2,90,14,0,0,'127.0.0.1',1482715391,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(541,1,2,90,14,0,0,'127.0.0.1',1482715401,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(542,1,2,90,14,0,0,'127.0.0.1',1482715460,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(543,1,2,90,14,0,0,'127.0.0.1',1482715469,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(544,1,2,90,14,0,0,'127.0.0.1',1482715479,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(545,1,2,90,14,0,0,'127.0.0.1',1482715504,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(546,1,2,90,14,0,0,'127.0.0.1',1482715519,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(547,1,2,90,14,0,0,'127.0.0.1',1482715545,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(548,1,2,90,14,0,0,'127.0.0.1',1482715562,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(549,1,48,90,14,0,0,'127.0.0.1',1482715569,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(550,1,48,90,14,0,0,'127.0.0.1',1482715576,'LOG_LOCK','a:1:{i:0;s:3:\"PT4\";}'),(551,1,48,90,14,0,0,'127.0.0.1',1482715579,'LOG_UNLOCK','a:1:{i:0;s:3:\"PT4\";}'),(552,1,2,90,14,0,0,'127.0.0.1',1482715662,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(553,1,2,90,14,0,0,'127.0.0.1',1482715687,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(554,1,2,90,14,0,0,'127.0.0.1',1482715702,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(555,1,2,90,14,0,0,'127.0.0.1',1482715716,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(556,1,2,90,14,0,0,'127.0.0.1',1482715747,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(557,1,2,90,14,0,0,'127.0.0.1',1482715759,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(558,1,2,90,14,0,0,'127.0.0.1',1482715767,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(559,1,2,90,14,0,0,'127.0.0.1',1482715777,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(560,1,2,90,14,0,0,'127.0.0.1',1482715781,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(561,1,2,90,14,0,0,'127.0.0.1',1482715789,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(562,1,2,90,14,0,0,'127.0.0.1',1482715796,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(563,1,2,90,14,0,0,'127.0.0.1',1482715808,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(564,2,48,0,0,0,0,'127.0.0.1',1482716703,'LOG_IMAGE_GENERATION_ERROR','a:3:{i:0;s:33:\"/includes/functions_messenger.php\";i:1;i:979;i:2;s:67:\"fsockopen(): unable to connect to localhost:25 (Connection refused)\";}'),(565,2,48,0,0,0,0,'127.0.0.1',1482716703,'LOG_ERROR_EMAIL','a:1:{i:0;s:381:\"<strong>EMAIL/SMTP</strong><br /><em>/forum/cron.php</em><br /><br />Could not connect to smtp host : 61 : Connection refused<br /><br />&lt;b&gt;[phpBB Debug] PHP Warning&lt;/b&gt;: in file &lt;b&gt;/includes/functions_messenger.php&lt;/b&gt; on line &lt;b&gt;979&lt;/b&gt;: &lt;b&gt;fsockopen(): unable to connect to localhost:25 (Connection refused)&lt;/b&gt;&lt;br /&gt;\n<br />\";}'),(566,1,2,90,14,0,0,'127.0.0.1',1482716829,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(567,1,2,90,14,0,0,'127.0.0.1',1482716858,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(568,1,2,90,14,0,0,'127.0.0.1',1482716868,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(569,1,2,90,14,0,0,'127.0.0.1',1482716878,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(570,1,2,90,14,0,0,'127.0.0.1',1482718744,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(571,1,2,90,14,0,0,'127.0.0.1',1482718765,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(572,1,2,90,14,0,0,'127.0.0.1',1482718774,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(573,1,2,90,14,0,0,'127.0.0.1',1482718783,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(574,1,2,90,14,0,0,'127.0.0.1',1482718791,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(575,1,2,90,14,0,0,'127.0.0.1',1482718844,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(576,1,2,90,14,0,0,'127.0.0.1',1482718852,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(577,1,2,90,14,0,0,'127.0.0.1',1483324494,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(578,1,2,90,14,0,0,'127.0.0.1',1483325596,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(579,1,48,90,14,0,0,'127.0.0.1',1483325747,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(580,1,48,90,14,0,0,'127.0.0.1',1483325755,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(581,1,48,90,14,0,0,'127.0.0.1',1483325763,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(582,1,48,90,14,0,0,'127.0.0.1',1483325772,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(583,1,48,90,14,0,0,'127.0.0.1',1483325780,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(584,1,48,90,14,0,0,'127.0.0.1',1483325788,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(585,1,48,90,14,0,0,'127.0.0.1',1483325800,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(586,1,48,90,14,0,0,'127.0.0.1',1483325806,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(587,1,2,90,14,0,0,'127.0.0.1',1483325856,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(588,1,2,90,14,0,0,'127.0.0.1',1483325866,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(589,1,2,90,14,0,0,'127.0.0.1',1483325875,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(590,1,2,90,14,0,0,'127.0.0.1',1483325889,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(591,1,2,90,14,0,0,'127.0.0.1',1483325901,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(592,1,2,90,14,0,0,'127.0.0.1',1483325910,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(593,1,2,90,14,0,0,'127.0.0.1',1483325933,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(594,1,2,90,14,0,0,'127.0.0.1',1483326006,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(595,1,2,90,14,0,0,'127.0.0.1',1483326018,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(596,1,2,90,14,0,0,'127.0.0.1',1483326180,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(597,1,2,90,14,0,0,'127.0.0.1',1483326191,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(598,1,2,90,14,0,0,'127.0.0.1',1483326215,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(599,1,2,90,14,0,0,'127.0.0.1',1483326224,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(600,1,2,90,14,0,0,'127.0.0.1',1483326249,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(601,1,2,90,14,0,0,'127.0.0.1',1483326271,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(602,1,2,90,14,0,0,'127.0.0.1',1483326284,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(603,1,2,90,14,0,0,'127.0.0.1',1483326307,'LOG_POST_EDITED','a:2:{i:0;s:3:\"PT4\";i:1;s:5:\"Kison\";}'),(604,2,1,0,0,0,0,'172.20.0.1',1505237581,'LOG_ERROR_EMAIL','a:1:{i:0;s:400:\"<strong>EMAIL/SMTP</strong><br /><em>/ucp.php</em><br /><br />Could not connect to smtp host : 99 : Cannot assign requested address<br /><br />&lt;b&gt;[phpBB Debug] PHP Warning&lt;/b&gt;: in file &lt;b&gt;/includes/functions_messenger.php&lt;/b&gt; on line &lt;b&gt;979&lt;/b&gt;: &lt;b&gt;fsockopen(): unable to connect to localhost:25 (Cannot assign requested address)&lt;/b&gt;&lt;br /&gt;\n<br />\";}'),(605,0,52,0,0,0,0,'172.20.0.1',1505237646,'LOG_ADMIN_AUTH_SUCCESS',''),(606,0,1,0,0,0,0,'',1505238495,'LOG_MODULE_ADD','a:1:{i:0;s:20:\"Extension management\";}'),(607,0,1,0,0,0,0,'',1505238495,'LOG_MODULE_ADD','a:1:{i:0;s:17:\"Manage extensions\";}'),(608,0,1,0,0,0,0,'',1505238498,'LOG_MODULE_ADD','a:1:{i:0;s:22:\"Manage group positions\";}'),(609,0,1,0,0,0,0,'',1505238498,'LOG_MODULE_ADD','a:1:{i:0;s:18:\"Manage attachments\";}'),(610,0,1,0,0,0,0,'',1505238498,'LOG_MODULE_ADD','a:1:{i:0;s:14:\"Install Styles\";}'),(611,0,1,0,0,0,0,'',1505238498,'LOG_MODULE_ADD','a:1:{i:0;s:26:\"UCP_PROFILE_AUTOLOGIN_KEYS\";}'),(612,0,1,0,0,0,0,'',1505238498,'LOG_MODULE_ADD','a:1:{i:0;s:19:\"Language management\";}'),(613,0,1,0,0,0,0,'',1505238499,'LOG_MODULE_ADD','a:1:{i:0;s:20:\"UCP_AUTH_LINK_MANAGE\";}'),(614,0,1,0,0,0,0,'',1505238500,'LOG_MODULE_ADD','a:1:{i:0;s:21:\"UCP_NOTIFICATION_LIST\";}'),(615,0,1,0,0,0,0,'',1505238500,'LOG_MODULE_ADD','a:1:{i:0;s:24:\"UCP_NOTIFICATION_OPTIONS\";}'),(616,0,1,0,0,0,0,'',1505238503,'LOG_MODULE_ADD','a:1:{i:0;s:24:\"MCP_QUEUE_DELETED_TOPICS\";}'),(617,0,1,0,0,0,0,'',1505238503,'LOG_MODULE_ADD','a:1:{i:0;s:23:\"MCP_QUEUE_DELETED_POSTS\";}'),(618,0,1,0,0,0,0,'',1505238512,'LOG_MODULE_ADD','a:1:{i:0;s:21:\"Contact page settings\";}'),(619,0,1,0,0,0,0,'',1505238553,'LOG_MODULE_ADD','a:1:{i:0;s:18:\"Help support phpBB\";}'),(620,0,1,0,0,0,0,'',1505238560,'LOG_UPDATE_DATABASE','a:2:{i:0;s:6:\"3.0.14\";i:1;s:5:\"3.2.1\";}'),(621,0,52,0,0,0,0,'172.20.0.1',1505238561,'LOG_MODULE_ADD','a:1:{i:0;s:20:\"ACP_VIGLINK_SETTINGS\";}'),(622,0,1,0,0,0,0,'',1505238562,'LOG_EXT_UPDATE','a:1:{i:0;s:13:\"phpbb/viglink\";}');
/*!40000 ALTER TABLE `phpbb_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_login_attempts`
--

DROP TABLE IF EXISTS `phpbb_login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_login_attempts` (
  `attempt_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_time` int(11) unsigned NOT NULL DEFAULT 0,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  KEY `att_ip` (`attempt_ip`,`attempt_time`),
  KEY `att_for` (`attempt_forwarded_for`,`attempt_time`),
  KEY `att_time` (`attempt_time`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_login_attempts`
--

LOCK TABLES `phpbb_login_attempts` WRITE;
/*!40000 ALTER TABLE `phpbb_login_attempts` DISABLE KEYS */;
INSERT INTO `phpbb_login_attempts` VALUES ('172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','',1505237279,0,'borkjerfkin','borkjerfkin');
/*!40000 ALTER TABLE `phpbb_login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_migrations`
--

DROP TABLE IF EXISTS `phpbb_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_migrations` (
  `migration_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `migration_depends_on` text COLLATE utf8_bin NOT NULL,
  `migration_schema_done` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `migration_data_done` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `migration_data_state` text COLLATE utf8_bin NOT NULL,
  `migration_start_time` int(11) unsigned NOT NULL DEFAULT 0,
  `migration_end_time` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`migration_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_migrations`
--

LOCK TABLES `phpbb_migrations` WRITE;
/*!40000 ALTER TABLE `phpbb_migrations` DISABLE KEYS */;
INSERT INTO `phpbb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1\";}',1,1,'',1505238495,1505238495),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0','a:0:{}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5','a:1:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module','a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta1\";}',1,1,'',1505238511,1505238511),('\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1505238499,1505238499),('\\phpbb\\db\\migration\\data\\v310\\allow_cdn','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update\";}',1,1,'',1505238499,1505238499),('\\phpbb\\db\\migration\\data\\v310\\alpha1','a:18:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode\";i:1;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12\";i:2;s:57:\"\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module\";i:3;s:39:\"\\phpbb\\db\\migration\\data\\v310\\allow_cdn\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";i:5;s:37:\"\\phpbb\\db\\migration\\data\\v310\\avatars\";i:6;s:40:\"\\phpbb\\db\\migration\\data\\v310\\boardindex\";i:7;s:44:\"\\phpbb\\db\\migration\\data\\v310\\config_db_text\";i:8;s:45:\"\\phpbb\\db\\migration\\data\\v310\\forgot_password\";i:9;s:41:\"\\phpbb\\db\\migration\\data\\v310\\mod_rewrite\";i:10;s:49:\"\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop\";i:11;s:40:\"\\phpbb\\db\\migration\\data\\v310\\namespaces\";i:12;s:48:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron\";i:13;s:60:\"\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert\";i:14;s:38:\"\\phpbb\\db\\migration\\data\\v310\\plupload\";i:15;s:51:\"\\phpbb\\db\\migration\\data\\v310\\signature_module_auth\";i:16;s:52:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules\";i:17;s:38:\"\\phpbb\\db\\migration\\data\\v310\\teampage\";}',1,1,'',1505238503,1505238504),('\\phpbb\\db\\migration\\data\\v310\\alpha2','a:2:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha1\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2\";}',1,1,'',1505238504,1505238504),('\\phpbb\\db\\migration\\data\\v310\\alpha3','a:4:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha2\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v310\\avatar_types\";i:2;s:39:\"\\phpbb\\db\\migration\\data\\v310\\passwords\";i:3;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}',1,1,'',1505238504,1505238504),('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth','a:0:{}',1,1,'',1505238499,1505238499),('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2','a:1:{i:0;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";}',1,1,'',1505238511,1505238511),('\\phpbb\\db\\migration\\data\\v310\\avatar_types','a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v310\\avatars\";}',1,1,'',1505238504,1505238504),('\\phpbb\\db\\migration\\data\\v310\\avatars','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',1505238499,1505238499),('\\phpbb\\db\\migration\\data\\v310\\beta1','a:7:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha3\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v310\\passwords_p2\";i:2;s:52:\"\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop\";i:3;s:63:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings\";i:4;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location\";i:5;s:54:\"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2\";i:6;s:48:\"\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module\";}',1,1,'',1505238511,1505238511),('\\phpbb\\db\\migration\\data\\v310\\beta2','a:3:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta1\";i:1;s:52:\"\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module\";i:2;s:59:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup\";}',1,1,'',1505238511,1505238511),('\\phpbb\\db\\migration\\data\\v310\\beta3','a:6:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta2\";i:1;s:50:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\board_contact_name\";i:3;s:44:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update2\";i:4;s:50:\"\\phpbb\\db\\migration\\data\\v310\\live_searches_config\";i:5;s:49:\"\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics\";}',1,1,'',1505238512,1505238512),('\\phpbb\\db\\migration\\data\\v310\\beta4','a:3:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta3\";i:1;s:69:\"\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable\";i:2;s:58:\"\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin\";}',1,1,'',1505238512,1505238512),('\\phpbb\\db\\migration\\data\\v310\\board_contact_name','a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta2\";}',1,1,'',1505238511,1505238511),('\\phpbb\\db\\migration\\data\\v310\\boardindex','a:0:{}',1,1,'',1505238499,1505238499),('\\phpbb\\db\\migration\\data\\v310\\bot_update','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc6\";}',1,1,'',1505238514,1505238514),('\\phpbb\\db\\migration\\data\\v310\\captcha_plugins','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc2\";}',1,1,'',1505238513,1505238513),('\\phpbb\\db\\migration\\data\\v310\\config_db_text','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',1505238499,1505238499),('\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module','a:0:{}',1,1,'',1505238512,1505238512),('\\phpbb\\db\\migration\\data\\v310\\contact_admin_form','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v310\\config_db_text\";}',1,1,'',1505238512,1505238512),('\\phpbb\\db\\migration\\data\\v310\\dev','a:5:{i:0;s:40:\"\\phpbb\\db\\migration\\data\\v310\\extensions\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v310\\style_update_p2\";i:2;s:41:\"\\phpbb\\db\\migration\\data\\v310\\timezone_p2\";i:3;s:52:\"\\phpbb\\db\\migration\\data\\v310\\reported_posts_display\";i:4;s:46:\"\\phpbb\\db\\migration\\data\\v310\\migrations_table\";}',1,1,'',1505238497,1505238499),('\\phpbb\\db\\migration\\data\\v310\\extensions','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',1505238495,1505238496),('\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1505238512,1505238512),('\\phpbb\\db\\migration\\data\\v310\\forgot_password','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',1505238499,1505238499),('\\phpbb\\db\\migration\\data\\v310\\gold','a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc6\";i:1;s:40:\"\\phpbb\\db\\migration\\data\\v310\\bot_update\";}',1,1,'',1505238514,1505238514),('\\phpbb\\db\\migration\\data\\v310\\jquery_update','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1505238499,1505238499),('\\phpbb\\db\\migration\\data\\v310\\jquery_update2','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update\";}',1,1,'',1505238511,1505238511),('\\phpbb\\db\\migration\\data\\v310\\live_searches_config','a:0:{}',1,1,'',1505238511,1505238511),('\\phpbb\\db\\migration\\data\\v310\\migrations_table','a:0:{}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v310\\mod_rewrite','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1505238499,1505238500),('\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1505238500,1505238500),('\\phpbb\\db\\migration\\data\\v310\\namespaces','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1505238500,1505238500),('\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert','a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix\";}',1,1,'',1505238500,1505238500),('\\phpbb\\db\\migration\\data\\v310\\notifications','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1505238500,1505238500),('\\phpbb\\db\\migration\\data\\v310\\notifications_cron','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\notifications\";}',1,1,'',1505238500,1505238500),('\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron\";}',1,1,'',1505238504,1505238504),('\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\notifications\";}',1,1,'',1505238500,1505238500),('\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";}',1,1,'',1505238514,1505238514),('\\phpbb\\db\\migration\\data\\v310\\passwords','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',1505238504,1505238504),('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1','a:1:{i:0;s:42:\"\\phpbb\\db\\migration\\data\\v310\\passwords_p2\";}',1,1,'',1505238512,1505238512),('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2','a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1\";}',1,1,'',1505238512,1505238512),('\\phpbb\\db\\migration\\data\\v310\\passwords_p2','a:1:{i:0;s:39:\"\\phpbb\\db\\migration\\data\\v310\\passwords\";}',1,1,'',1505238504,1505238504),('\\phpbb\\db\\migration\\data\\v310\\plupload','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1505238500,1505238500),('\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol','a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup\";}',1,1,'',1505238510,1505238510),('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup','a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol\";}',1,1,'',1505238510,1505238510),('\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings','a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup\";}',1,1,'',1505238510,1505238511),('\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup','a:2:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests\";i:1;s:53:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation\";}',1,1,'',1505238504,1505238505),('\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field','a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";}',1,1,'',1505238505,1505238505),('\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook','a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}',1,1,'',1505238512,1505238512),('\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";}',1,1,'',1505238514,1505238514),('\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus','a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}',1,1,'',1505238512,1505238512),('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq','a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";}',1,1,'',1505238505,1505238505),('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup','a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq\";}',1,1,'',1505238505,1505238505),('\\phpbb\\db\\migration\\data\\v310\\profilefield_interests','a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";}',1,1,'',1505238504,1505238504),('\\phpbb\\db\\migration\\data\\v310\\profilefield_location','a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";i:1;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";}',1,1,'',1505238511,1505238511),('\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup','a:1:{i:0;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location\";}',1,1,'',1505238511,1505238511),('\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation','a:1:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests\";}',1,1,'',1505238504,1505238504),('\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist','a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup\";}',1,1,'',1505238505,1505238505),('\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v310\\profilefield_skype','a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}',1,1,'',1505238512,1505238512),('\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter','a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}',1,1,'',1505238513,1505238513),('\\phpbb\\db\\migration\\data\\v310\\profilefield_types','a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha2\";}',1,1,'',1505238504,1505238504),('\\phpbb\\db\\migration\\data\\v310\\profilefield_website','a:2:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup\";}',1,1,'',1505238505,1505238505),('\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup','a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_website\";}',1,1,'',1505238505,1505238505),('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm','a:1:{i:0;s:58:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup\";}',1,1,'',1505238505,1505238506),('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup','a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm\";}',1,1,'',1505238506,1505238506),('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo','a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup\";}',1,1,'',1505238506,1505238510),('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo\";}',1,1,'',1505238510,1505238510),('\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube','a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}',1,1,'',1505238513,1505238513),('\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1505238511,1505238512),('\\phpbb\\db\\migration\\data\\v310\\rc1','a:9:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta4\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form\";i:3;s:50:\"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2\";i:4;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook\";i:5;s:53:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus\";i:6;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_skype\";i:7;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter\";i:8;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube\";}',1,1,'',1505238513,1505238513),('\\phpbb\\db\\migration\\data\\v310\\rc2','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc1\";}',1,1,'',1505238513,1505238513),('\\phpbb\\db\\migration\\data\\v310\\rc3','a:5:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc2\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v310\\captcha_plugins\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes\";i:3;s:41:\"\\phpbb\\db\\migration\\data\\v310\\search_type\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v310\\topic_sort_username\";}',1,1,'',1505238514,1505238514),('\\phpbb\\db\\migration\\data\\v310\\rc4','a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";i:1;s:57:\"\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name\";}',1,1,'',1505238514,1505238514),('\\phpbb\\db\\migration\\data\\v310\\rc5','a:3:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc4\";i:1;s:66:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache\";}',1,1,'',1505238514,1505238514),('\\phpbb\\db\\migration\\data\\v310\\rc6','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc5\";}',1,1,'',1505238514,1505238514),('\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc4\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}',1,1,'',1505238513,1505238513),('\\phpbb\\db\\migration\\data\\v310\\reported_posts_display','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',1505238497,1505238497),('\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1505238512,1505238512),('\\phpbb\\db\\migration\\data\\v310\\search_type','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1505238513,1505238513),('\\phpbb\\db\\migration\\data\\v310\\signature_module_auth','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert','a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha3\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2','a:1:{i:0;s:53:\"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules','a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_p2\";}',1,1,'',1505238503,1505238503),('\\phpbb\\db\\migration\\data\\v310\\softdelete_p1','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1505238501,1505238502),('\\phpbb\\db\\migration\\data\\v310\\softdelete_p2','a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_p1\";}',1,1,'',1505238502,1505238503),('\\phpbb\\db\\migration\\data\\v310\\style_update_p1','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',1505238496,1505238496),('\\phpbb\\db\\migration\\data\\v310\\style_update_p2','a:1:{i:0;s:45:\"\\phpbb\\db\\migration\\data\\v310\\style_update_p1\";}',1,1,'',1505238496,1505238496),('\\phpbb\\db\\migration\\data\\v310\\teampage','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1505238503,1505238503),('\\phpbb\\db\\migration\\data\\v310\\timezone','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',1505238496,1505238497),('\\phpbb\\db\\migration\\data\\v310\\timezone_p2','a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v310\\timezone\";}',1,1,'',1505238497,1505238497),('\\phpbb\\db\\migration\\data\\v310\\topic_sort_username','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1505238513,1505238514),('\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1505238511,1505238511),('\\phpbb\\db\\migration\\data\\v31x\\add_jabber_ssl_context_config_options','a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}',1,1,'',1505238520,1505238520),('\\phpbb\\db\\migration\\data\\v31x\\add_latest_topics_index','a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}',1,1,'',1505238520,1505238520),('\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";}',1,1,'',1505238520,1505238520),('\\phpbb\\db\\migration\\data\\v31x\\add_smtp_ssl_context_config_options','a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}',1,1,'',1505238521,1505238521),('\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v317\";}',1,1,'',1505238519,1505238519),('\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion','a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}',1,1,'',1505238521,1505238521),('\\phpbb\\db\\migration\\data\\v31x\\m_pm_report','a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v316rc1\";}',1,1,'',1505238518,1505238518),('\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";}',1,1,'',1505238515,1505238515),('\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}',1,1,'',1505238516,1505238516),('\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";}',1,1,'',1505238516,1505238516),('\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}',1,1,'',1505238516,1505238516),('\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations','a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}',1,1,'',1505238521,1505238521),('\\phpbb\\db\\migration\\data\\v31x\\style_update','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";}',1,1,'',1505238515,1505238515),('\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}',1,1,'',1505238516,1505238516),('\\phpbb\\db\\migration\\data\\v31x\\update_hashes','a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}',1,1,'',1505238521,1505238521),('\\phpbb\\db\\migration\\data\\v31x\\v311','a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v31x\\style_update\";}',1,1,'',1505238515,1505238515),('\\phpbb\\db\\migration\\data\\v31x\\v3110','a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3110rc1\";}',1,1,'',1505238520,1505238520),('\\phpbb\\db\\migration\\data\\v31x\\v3110rc1','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";}',1,1,'',1505238520,1505238520),('\\phpbb\\db\\migration\\data\\v31x\\v3111','a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3111rc1\";}',1,1,'',1505238522,1505238526),('\\phpbb\\db\\migration\\data\\v31x\\v3111rc1','a:8:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";i:1;s:48:\"\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion\";i:3;s:67:\"\\phpbb\\db\\migration\\data\\v31x\\add_jabber_ssl_context_config_options\";i:4;s:65:\"\\phpbb\\db\\migration\\data\\v31x\\add_smtp_ssl_context_config_options\";i:5;s:43:\"\\phpbb\\db\\migration\\data\\v31x\\update_hashes\";i:6;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations\";i:7;s:53:\"\\phpbb\\db\\migration\\data\\v31x\\add_latest_topics_index\";}',1,1,'',1505238522,1505238522),('\\phpbb\\db\\migration\\data\\v31x\\v312','a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v312rc1\";}',1,1,'',1505238515,1505238515),('\\phpbb\\db\\migration\\data\\v31x\\v312rc1','a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";i:1;s:49:\"\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global\";}',1,1,'',1505238515,1505238515),('\\phpbb\\db\\migration\\data\\v31x\\v313','a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v313rc2\";}',1,1,'',1505238517,1505238517),('\\phpbb\\db\\migration\\data\\v31x\\v313rc1','a:5:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic\";i:2;s:71:\"\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha\";i:3;s:59:\"\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url\";i:4;s:60:\"\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn\";}',1,1,'',1505238516,1505238517),('\\phpbb\\db\\migration\\data\\v31x\\v313rc2','a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v313rc1\";}',1,1,'',1505238517,1505238517),('\\phpbb\\db\\migration\\data\\v31x\\v314','a:2:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v314rc2\";}',1,1,'',1505238518,1505238518),('\\phpbb\\db\\migration\\data\\v31x\\v314rc1','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v313\";}',1,1,'',1505238517,1505238517),('\\phpbb\\db\\migration\\data\\v31x\\v314rc2','a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v314rc1\";}',1,1,'',1505238517,1505238518),('\\phpbb\\db\\migration\\data\\v31x\\v315','a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v315rc1\";}',1,1,'',1505238518,1505238518),('\\phpbb\\db\\migration\\data\\v31x\\v315rc1','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v314\";}',1,1,'',1505238518,1505238518),('\\phpbb\\db\\migration\\data\\v31x\\v316','a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v316rc1\";}',1,1,'',1505238519,1505238519),('\\phpbb\\db\\migration\\data\\v31x\\v316rc1','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v315\";}',1,1,'',1505238518,1505238518),('\\phpbb\\db\\migration\\data\\v31x\\v317','a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317rc1\";}',1,1,'',1505238519,1505238519),('\\phpbb\\db\\migration\\data\\v31x\\v317pl1','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v317\";}',1,1,'',1505238519,1505238519),('\\phpbb\\db\\migration\\data\\v31x\\v317rc1','a:2:{i:0;s:41:\"\\phpbb\\db\\migration\\data\\v31x\\m_pm_report\";i:1;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v316\";}',1,1,'',1505238519,1505238519),('\\phpbb\\db\\migration\\data\\v31x\\v318','a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v318rc1\";}',1,1,'',1505238519,1505238519),('\\phpbb\\db\\migration\\data\\v31x\\v318rc1','a:2:{i:0;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317pl1\";}',1,1,'',1505238519,1505238519),('\\phpbb\\db\\migration\\data\\v31x\\v319','a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v319rc1\";}',1,1,'',1505238519,1505238520),('\\phpbb\\db\\migration\\data\\v31x\\v319rc1','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v318\";}',1,1,'',1505238519,1505238519),('\\phpbb\\db\\migration\\data\\v320\\add_help_phpbb','a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v320\\v320rc1\";}',1,1,'',1505238553,1505238553),('\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}',1,1,'',1505238526,1505238526),('\\phpbb\\db\\migration\\data\\v320\\announce_global_permission','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}',1,1,'',1505238544,1505238544),('\\phpbb\\db\\migration\\data\\v320\\cookie_notice','a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v320\\v320rc2\";}',1,1,'',1505238557,1505238558),('\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids','a:2:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v320\\oauth_states\";}',1,1,'',1505238545,1505238552),('\\phpbb\\db\\migration\\data\\v320\\dev','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v316\";}',1,1,'',1505238526,1505238526),('\\phpbb\\db\\migration\\data\\v320\\font_awesome_update','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}',1,1,'',1505238544,1505238544),('\\phpbb\\db\\migration\\data\\v320\\icons_alt','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}',1,1,'',1505238544,1505238544),('\\phpbb\\db\\migration\\data\\v320\\log_post_id','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}',1,1,'',1505238545,1505238545),('\\phpbb\\db\\migration\\data\\v320\\notifications_board','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}',1,1,'',1505238545,1505238545),('\\phpbb\\db\\migration\\data\\v320\\oauth_states','a:1:{i:0;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";}',1,1,'',1505238545,1505238545),('\\phpbb\\db\\migration\\data\\v320\\remote_upload_validation','a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";}',1,1,'',1505238552,1505238552),('\\phpbb\\db\\migration\\data\\v320\\remove_outdated_media','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}',1,1,'',1505238545,1505238545),('\\phpbb\\db\\migration\\data\\v320\\remove_profilefield_wlm','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}',1,1,'',1505238544,1505238544),('\\phpbb\\db\\migration\\data\\v320\\report_id_auto_increment','a:1:{i:0;s:51:\"\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids\";}',1,1,'',1505238552,1505238552),('\\phpbb\\db\\migration\\data\\v320\\text_reparser','a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links\";}',1,1,'',1505238526,1505238544),('\\phpbb\\db\\migration\\data\\v320\\v320','a:2:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v320\\cookie_notice\";}',1,1,'',1505238558,1505238558),('\\phpbb\\db\\migration\\data\\v320\\v320a1','a:9:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links\";i:2;s:56:\"\\phpbb\\db\\migration\\data\\v320\\announce_global_permission\";i:3;s:53:\"\\phpbb\\db\\migration\\data\\v320\\remove_profilefield_wlm\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v320\\font_awesome_update\";i:5;s:39:\"\\phpbb\\db\\migration\\data\\v320\\icons_alt\";i:6;s:41:\"\\phpbb\\db\\migration\\data\\v320\\log_post_id\";i:7;s:51:\"\\phpbb\\db\\migration\\data\\v320\\remove_outdated_media\";i:8;s:49:\"\\phpbb\\db\\migration\\data\\v320\\notifications_board\";}',1,1,'',1505238545,1505238545),('\\phpbb\\db\\migration\\data\\v320\\v320a2','a:3:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317rc1\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v320\\text_reparser\";i:2;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a1\";}',1,1,'',1505238545,1505238545),('\\phpbb\\db\\migration\\data\\v320\\v320b1','a:4:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317pl1\";i:1;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";i:2;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat\";i:3;s:51:\"\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids\";}',1,1,'',1505238552,1505238552),('\\phpbb\\db\\migration\\data\\v320\\v320b2','a:3:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v318\";i:1;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320b1\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v320\\remote_upload_validation\";}',1,1,'',1505238552,1505238552),('\\phpbb\\db\\migration\\data\\v320\\v320rc1','a:3:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v320\\report_id_auto_increment\";i:2;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320b2\";}',1,1,'',1505238553,1505238553),('\\phpbb\\db\\migration\\data\\v320\\v320rc2','a:3:{i:0;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations\";i:1;s:48:\"\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index\";i:2;s:44:\"\\phpbb\\db\\migration\\data\\v320\\add_help_phpbb\";}',1,1,'',1505238553,1505238557),('\\phpbb\\db\\migration\\data\\v32x\\cookie_notice_p2','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}',1,1,'',0,0),('\\phpbb\\db\\migration\\data\\v32x\\load_user_activity_limit','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}',1,1,'',1505238558,1505238558),('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p1','a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v32x\\cookie_notice_p2\";}',1,1,'',1505238558,1505238558),('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p2','a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p1\";}',1,1,'',1505238558,1505238558),('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p3','a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p2\";}',1,1,'',1505238558,1505238558),('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_reduce_column_sizes','a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p3\";}',1,1,'',1505238559,1505238559),('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_remove_duplicates','a:1:{i:0;s:65:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_temp_index\";}',1,1,'',1505238559,1505238559),('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_temp_index','a:1:{i:0;s:74:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_reduce_column_sizes\";}',1,1,'',1505238559,1505238559),('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_unique_index','a:1:{i:0;s:72:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_remove_duplicates\";}',1,1,'',1505238559,1505238559),('\\phpbb\\db\\migration\\data\\v32x\\v321','a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v321rc1\";}',1,1,'',1505238560,1505238560),('\\phpbb\\db\\migration\\data\\v32x\\v321rc1','a:4:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";i:1;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3111rc1\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v32x\\load_user_activity_limit\";i:3;s:67:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_unique_index\";}',1,1,'',1505238560,1505238560),('\\phpbb\\viglink\\migrations\\viglink_ask_admin','a:1:{i:0;s:41:\"\\phpbb\\viglink\\migrations\\viglink_data_v2\";}',1,1,'',1505238562,1505238562),('\\phpbb\\viglink\\migrations\\viglink_ask_admin_wait','a:1:{i:0;s:43:\"\\phpbb\\viglink\\migrations\\viglink_ask_admin\";}',1,1,'',1505238562,1505238562),('\\phpbb\\viglink\\migrations\\viglink_cron','a:1:{i:0;s:38:\"\\phpbb\\viglink\\migrations\\viglink_data\";}',1,1,'',0,0),('\\phpbb\\viglink\\migrations\\viglink_data','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}',1,1,'',1505238561,1505238561),('\\phpbb\\viglink\\migrations\\viglink_data_v2','a:1:{i:0;s:38:\"\\phpbb\\viglink\\migrations\\viglink_data\";}',1,1,'',1505238561,1505238561);
/*!40000 ALTER TABLE `phpbb_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_moderator_cache`
--

DROP TABLE IF EXISTS `phpbb_moderator_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_moderator_cache` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT 1,
  KEY `disp_idx` (`display_on_index`),
  KEY `forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_moderator_cache`
--

LOCK TABLES `phpbb_moderator_cache` WRITE;
/*!40000 ALTER TABLE `phpbb_moderator_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_moderator_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_modules`
--

DROP TABLE IF EXISTS `phpbb_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_modules` (
  `module_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module_enabled` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `module_display` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`module_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `module_enabled` (`module_enabled`),
  KEY `class_left_id` (`module_class`,`left_id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_modules`
--

LOCK TABLES `phpbb_modules` WRITE;
/*!40000 ALTER TABLE `phpbb_modules` DISABLE KEYS */;
INSERT INTO `phpbb_modules` VALUES (1,1,1,'','acp',0,1,68,'ACP_CAT_GENERAL','',''),(2,1,1,'','acp',1,4,17,'ACP_QUICK_ACCESS','',''),(3,1,1,'','acp',1,18,45,'ACP_BOARD_CONFIGURATION','',''),(4,1,1,'','acp',1,46,53,'ACP_CLIENT_COMMUNICATION','',''),(5,1,1,'','acp',1,54,67,'ACP_SERVER_CONFIGURATION','',''),(6,1,1,'','acp',0,69,88,'ACP_CAT_FORUMS','',''),(7,1,1,'','acp',6,70,75,'ACP_MANAGE_FORUMS','',''),(8,1,1,'','acp',6,76,87,'ACP_FORUM_BASED_PERMISSIONS','',''),(9,1,1,'','acp',0,89,116,'ACP_CAT_POSTING','',''),(10,1,1,'','acp',9,90,103,'ACP_MESSAGES','',''),(11,1,1,'','acp',9,104,115,'ACP_ATTACHMENTS','',''),(12,1,1,'','acp',0,117,174,'ACP_CAT_USERGROUP','',''),(13,1,1,'','acp',12,118,153,'ACP_CAT_USERS','',''),(14,1,1,'','acp',12,154,163,'ACP_GROUPS','',''),(15,1,1,'','acp',12,164,173,'ACP_USER_SECURITY','',''),(16,1,1,'','acp',0,175,224,'ACP_CAT_PERMISSIONS','',''),(17,1,1,'','acp',16,178,187,'ACP_GLOBAL_PERMISSIONS','',''),(18,1,1,'','acp',16,188,199,'ACP_FORUM_BASED_PERMISSIONS','',''),(19,1,1,'','acp',16,200,209,'ACP_PERMISSION_ROLES','',''),(20,1,1,'','acp',16,210,223,'ACP_PERMISSION_MASKS','',''),(21,1,1,'','acp',0,225,240,'ACP_CAT_CUSTOMISE','',''),(22,1,1,'','acp',21,226,231,'ACP_STYLE_MANAGEMENT','',''),(24,1,1,'','acp',0,241,256,'ACP_CAT_MAINTENANCE','',''),(25,1,1,'','acp',24,242,251,'ACP_FORUM_LOGS','',''),(26,1,1,'','acp',24,252,255,'ACP_CAT_DATABASE','',''),(27,1,1,'','acp',0,257,280,'ACP_CAT_SYSTEM','',''),(28,1,1,'','acp',27,258,261,'ACP_AUTOMATION','',''),(29,1,1,'','acp',27,262,271,'ACP_GENERAL_TASKS','',''),(30,1,1,'','acp',27,272,279,'ACP_MODULE_MANAGEMENT','',''),(31,1,1,'','acp',0,281,282,'ACP_CAT_DOT_MODS','',''),(32,1,1,'acp_attachments','acp',3,19,20,'ACP_ATTACHMENT_SETTINGS','attach','acl_a_attach'),(33,1,1,'acp_attachments','acp',11,105,106,'ACP_ATTACHMENT_SETTINGS','attach','acl_a_attach'),(34,1,1,'acp_attachments','acp',11,107,108,'ACP_MANAGE_EXTENSIONS','extensions','acl_a_attach'),(35,1,1,'acp_attachments','acp',11,109,110,'ACP_EXTENSION_GROUPS','ext_groups','acl_a_attach'),(36,1,1,'acp_attachments','acp',11,111,112,'ACP_ORPHAN_ATTACHMENTS','orphan','acl_a_attach'),(37,1,1,'acp_ban','acp',15,165,166,'ACP_BAN_EMAILS','email','acl_a_ban'),(38,1,1,'acp_ban','acp',15,167,168,'ACP_BAN_IPS','ip','acl_a_ban'),(39,1,1,'acp_ban','acp',15,169,170,'ACP_BAN_USERNAMES','user','acl_a_ban'),(40,1,1,'acp_bbcodes','acp',10,91,92,'ACP_BBCODES','bbcodes','acl_a_bbcode'),(41,1,1,'acp_board','acp',3,21,22,'ACP_BOARD_SETTINGS','settings','acl_a_board'),(42,1,1,'acp_board','acp',3,23,24,'ACP_BOARD_FEATURES','features','acl_a_board'),(43,1,1,'acp_board','acp',3,25,26,'ACP_AVATAR_SETTINGS','avatar','acl_a_board'),(44,1,1,'acp_board','acp',3,27,28,'ACP_MESSAGE_SETTINGS','message','acl_a_board'),(45,1,1,'acp_board','acp',10,93,94,'ACP_MESSAGE_SETTINGS','message','acl_a_board'),(46,1,1,'acp_board','acp',3,29,30,'ACP_POST_SETTINGS','post','acl_a_board'),(47,1,1,'acp_board','acp',10,95,96,'ACP_POST_SETTINGS','post','acl_a_board'),(48,1,1,'acp_board','acp',3,31,32,'ACP_SIGNATURE_SETTINGS','signature','acl_a_board'),(49,1,1,'acp_board','acp',3,33,34,'ACP_FEED_SETTINGS','feed','acl_a_board'),(50,1,1,'acp_board','acp',3,35,36,'ACP_REGISTER_SETTINGS','registration','acl_a_board'),(51,1,1,'acp_board','acp',4,47,48,'ACP_AUTH_SETTINGS','auth','acl_a_server'),(52,1,1,'acp_board','acp',4,49,50,'ACP_EMAIL_SETTINGS','email','acl_a_server'),(53,1,1,'acp_board','acp',5,55,56,'ACP_COOKIE_SETTINGS','cookie','acl_a_server'),(54,1,1,'acp_board','acp',5,57,58,'ACP_SERVER_SETTINGS','server','acl_a_server'),(55,1,1,'acp_board','acp',5,59,60,'ACP_SECURITY_SETTINGS','security','acl_a_server'),(56,1,1,'acp_board','acp',5,61,62,'ACP_LOAD_SETTINGS','load','acl_a_server'),(57,1,1,'acp_bots','acp',29,263,264,'ACP_BOTS','bots','acl_a_bots'),(58,1,1,'acp_captcha','acp',3,37,38,'ACP_VC_SETTINGS','visual','acl_a_board'),(59,1,0,'acp_captcha','acp',3,39,40,'ACP_VC_CAPTCHA_DISPLAY','img','acl_a_board'),(62,1,1,'acp_disallow','acp',15,171,172,'ACP_DISALLOW_USERNAMES','usernames','acl_a_names'),(63,1,1,'acp_email','acp',29,265,266,'ACP_MASS_EMAIL','email','acl_a_email && cfg_email_enable'),(64,1,1,'acp_forums','acp',7,71,72,'ACP_MANAGE_FORUMS','manage','acl_a_forum'),(65,1,1,'acp_groups','acp',14,155,156,'ACP_GROUPS_MANAGE','manage','acl_a_group'),(66,1,1,'acp_icons','acp',10,97,98,'ACP_ICONS','icons','acl_a_icons'),(67,1,1,'acp_icons','acp',10,99,100,'ACP_SMILIES','smilies','acl_a_icons'),(68,1,1,'acp_inactive','acp',13,121,122,'ACP_INACTIVE_USERS','list','acl_a_user'),(69,1,1,'acp_jabber','acp',4,51,52,'ACP_JABBER_SETTINGS','settings','acl_a_jabber'),(70,1,1,'acp_language','acp',29,237,238,'ACP_LANGUAGE_PACKS','lang_packs','acl_a_language'),(71,1,1,'acp_logs','acp',25,243,244,'ACP_ADMIN_LOGS','admin','acl_a_viewlogs'),(72,1,1,'acp_logs','acp',25,245,246,'ACP_MOD_LOGS','mod','acl_a_viewlogs'),(73,1,1,'acp_logs','acp',25,247,248,'ACP_USERS_LOGS','users','acl_a_viewlogs'),(74,1,1,'acp_logs','acp',25,249,250,'ACP_CRITICAL_LOGS','critical','acl_a_viewlogs'),(75,1,1,'acp_main','acp',1,2,3,'ACP_INDEX','main',''),(76,1,1,'acp_modules','acp',30,273,274,'ACP','acp','acl_a_modules'),(77,1,1,'acp_modules','acp',30,275,276,'UCP','ucp','acl_a_modules'),(78,1,1,'acp_modules','acp',30,277,278,'MCP','mcp','acl_a_modules'),(79,1,1,'acp_permission_roles','acp',19,201,202,'ACP_ADMIN_ROLES','admin_roles','acl_a_roles && acl_a_aauth'),(80,1,1,'acp_permission_roles','acp',19,203,204,'ACP_USER_ROLES','user_roles','acl_a_roles && acl_a_uauth'),(81,1,1,'acp_permission_roles','acp',19,205,206,'ACP_MOD_ROLES','mod_roles','acl_a_roles && acl_a_mauth'),(82,1,1,'acp_permission_roles','acp',19,207,208,'ACP_FORUM_ROLES','forum_roles','acl_a_roles && acl_a_fauth'),(83,1,1,'acp_permissions','acp',16,176,177,'ACP_PERMISSIONS','intro','acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),(84,1,0,'acp_permissions','acp',20,211,212,'ACP_PERMISSION_TRACE','trace','acl_a_viewauth'),(85,1,1,'acp_permissions','acp',18,189,190,'ACP_FORUM_PERMISSIONS','setting_forum_local','acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),(86,1,1,'acp_permissions','acp',18,191,192,'ACP_FORUM_PERMISSIONS_COPY','setting_forum_copy','acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),(87,1,1,'acp_permissions','acp',18,193,194,'ACP_FORUM_MODERATORS','setting_mod_local','acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),(88,1,1,'acp_permissions','acp',17,179,180,'ACP_USERS_PERMISSIONS','setting_user_global','acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),(89,1,1,'acp_permissions','acp',13,123,124,'ACP_USERS_PERMISSIONS','setting_user_global','acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),(90,1,1,'acp_permissions','acp',18,195,196,'ACP_USERS_FORUM_PERMISSIONS','setting_user_local','acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),(91,1,1,'acp_permissions','acp',13,125,126,'ACP_USERS_FORUM_PERMISSIONS','setting_user_local','acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),(92,1,1,'acp_permissions','acp',17,181,182,'ACP_GROUPS_PERMISSIONS','setting_group_global','acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),(93,1,1,'acp_permissions','acp',14,157,158,'ACP_GROUPS_PERMISSIONS','setting_group_global','acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),(94,1,1,'acp_permissions','acp',18,197,198,'ACP_GROUPS_FORUM_PERMISSIONS','setting_group_local','acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),(95,1,1,'acp_permissions','acp',14,159,160,'ACP_GROUPS_FORUM_PERMISSIONS','setting_group_local','acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),(96,1,1,'acp_permissions','acp',17,183,184,'ACP_ADMINISTRATORS','setting_admin_global','acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),(97,1,1,'acp_permissions','acp',17,185,186,'ACP_GLOBAL_MODERATORS','setting_mod_global','acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),(98,1,1,'acp_permissions','acp',20,213,214,'ACP_VIEW_ADMIN_PERMISSIONS','view_admin_global','acl_a_viewauth'),(99,1,1,'acp_permissions','acp',20,215,216,'ACP_VIEW_USER_PERMISSIONS','view_user_global','acl_a_viewauth'),(100,1,1,'acp_permissions','acp',20,217,218,'ACP_VIEW_GLOBAL_MOD_PERMISSIONS','view_mod_global','acl_a_viewauth'),(101,1,1,'acp_permissions','acp',20,219,220,'ACP_VIEW_FORUM_MOD_PERMISSIONS','view_mod_local','acl_a_viewauth'),(102,1,1,'acp_permissions','acp',20,221,222,'ACP_VIEW_FORUM_PERMISSIONS','view_forum_local','acl_a_viewauth'),(103,1,1,'acp_php_info','acp',29,267,268,'ACP_PHP_INFO','info','acl_a_phpinfo'),(104,1,1,'acp_profile','acp',13,127,128,'ACP_CUSTOM_PROFILE_FIELDS','profile','acl_a_profile'),(105,1,1,'acp_prune','acp',7,73,74,'ACP_PRUNE_FORUMS','forums','acl_a_prune'),(106,1,1,'acp_prune','acp',15,151,152,'ACP_PRUNE_USERS','users','acl_a_userdel'),(107,1,1,'acp_ranks','acp',13,129,130,'ACP_MANAGE_RANKS','ranks','acl_a_ranks'),(108,1,1,'acp_reasons','acp',29,269,270,'ACP_MANAGE_REASONS','main','acl_a_reasons'),(109,1,1,'acp_search','acp',5,63,64,'ACP_SEARCH_SETTINGS','settings','acl_a_search'),(110,1,1,'acp_search','acp',26,253,254,'ACP_SEARCH_INDEX','index','acl_a_search'),(112,1,1,'acp_styles','acp',22,227,228,'ACP_STYLES','style','acl_a_styles'),(116,1,1,'acp_update','acp',28,259,260,'ACP_VERSION_CHECK','version_check','acl_a_board'),(117,1,1,'acp_users','acp',13,119,120,'ACP_MANAGE_USERS','overview','acl_a_user'),(118,1,0,'acp_users','acp',13,131,132,'ACP_USER_FEEDBACK','feedback','acl_a_user'),(119,1,0,'acp_users','acp',13,133,134,'ACP_USER_WARNINGS','warnings','acl_a_user'),(120,1,0,'acp_users','acp',13,135,136,'ACP_USER_PROFILE','profile','acl_a_user'),(121,1,0,'acp_users','acp',13,137,138,'ACP_USER_PREFS','prefs','acl_a_user'),(122,1,0,'acp_users','acp',13,139,140,'ACP_USER_AVATAR','avatar','acl_a_user'),(123,1,0,'acp_users','acp',13,141,142,'ACP_USER_RANK','rank','acl_a_user'),(124,1,0,'acp_users','acp',13,143,144,'ACP_USER_SIG','sig','acl_a_user'),(125,1,0,'acp_users','acp',13,145,146,'ACP_USER_GROUPS','groups','acl_a_user && acl_a_group'),(126,1,0,'acp_users','acp',13,147,148,'ACP_USER_PERM','perm','acl_a_user && acl_a_viewauth'),(127,1,0,'acp_users','acp',13,149,150,'ACP_USER_ATTACH','attach','acl_a_user'),(128,1,1,'acp_words','acp',10,101,102,'ACP_WORDS','words','acl_a_words'),(129,1,1,'acp_users','acp',2,5,6,'ACP_MANAGE_USERS','overview','acl_a_user'),(130,1,1,'acp_groups','acp',2,7,8,'ACP_GROUPS_MANAGE','manage','acl_a_group'),(131,1,1,'acp_forums','acp',2,9,10,'ACP_MANAGE_FORUMS','manage','acl_a_forum'),(132,1,1,'acp_logs','acp',2,11,12,'ACP_MOD_LOGS','mod','acl_a_viewlogs'),(133,1,1,'acp_bots','acp',2,13,14,'ACP_BOTS','bots','acl_a_bots'),(134,1,1,'acp_php_info','acp',2,15,16,'ACP_PHP_INFO','info','acl_a_phpinfo'),(135,1,1,'acp_permissions','acp',8,77,78,'ACP_FORUM_PERMISSIONS','setting_forum_local','acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),(136,1,1,'acp_permissions','acp',8,79,80,'ACP_FORUM_PERMISSIONS_COPY','setting_forum_copy','acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),(137,1,1,'acp_permissions','acp',8,81,82,'ACP_FORUM_MODERATORS','setting_mod_local','acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),(138,1,1,'acp_permissions','acp',8,83,84,'ACP_USERS_FORUM_PERMISSIONS','setting_user_local','acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),(139,1,1,'acp_permissions','acp',8,85,86,'ACP_GROUPS_FORUM_PERMISSIONS','setting_group_local','acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),(140,1,1,'','mcp',0,1,10,'MCP_MAIN','',''),(141,1,1,'','mcp',0,11,22,'MCP_QUEUE','',''),(142,1,1,'','mcp',0,23,36,'MCP_REPORTS','',''),(143,1,1,'','mcp',0,37,42,'MCP_NOTES','',''),(144,1,1,'','mcp',0,43,52,'MCP_WARN','',''),(145,1,1,'','mcp',0,53,60,'MCP_LOGS','',''),(146,1,1,'','mcp',0,61,68,'MCP_BAN','',''),(147,1,1,'mcp_ban','mcp',146,62,63,'MCP_BAN_USERNAMES','user','acl_m_ban'),(148,1,1,'mcp_ban','mcp',146,64,65,'MCP_BAN_IPS','ip','acl_m_ban'),(149,1,1,'mcp_ban','mcp',146,66,67,'MCP_BAN_EMAILS','email','acl_m_ban'),(150,1,1,'mcp_logs','mcp',145,54,55,'MCP_LOGS_FRONT','front','acl_m_ || aclf_m_'),(151,1,1,'mcp_logs','mcp',145,56,57,'MCP_LOGS_FORUM_VIEW','forum_logs','acl_m_,$id'),(152,1,1,'mcp_logs','mcp',145,58,59,'MCP_LOGS_TOPIC_VIEW','topic_logs','acl_m_,$id'),(153,1,1,'mcp_main','mcp',140,2,3,'MCP_MAIN_FRONT','front',''),(154,1,1,'mcp_main','mcp',140,4,5,'MCP_MAIN_FORUM_VIEW','forum_view','acl_m_,$id'),(155,1,1,'mcp_main','mcp',140,6,7,'MCP_MAIN_TOPIC_VIEW','topic_view','acl_m_,$id'),(156,1,1,'mcp_main','mcp',140,8,9,'MCP_MAIN_POST_DETAILS','post_details','acl_m_,$id || (!$id && aclf_m_)'),(157,1,1,'mcp_notes','mcp',143,38,39,'MCP_NOTES_FRONT','front',''),(158,1,1,'mcp_notes','mcp',143,40,41,'MCP_NOTES_USER','user_notes',''),(159,1,1,'mcp_pm_reports','mcp',142,30,31,'MCP_PM_REPORTS_OPEN','pm_reports','acl_m_pm_report'),(160,1,1,'mcp_pm_reports','mcp',142,32,33,'MCP_PM_REPORTS_CLOSED','pm_reports_closed','acl_m_pm_report'),(161,1,1,'mcp_pm_reports','mcp',142,34,35,'MCP_PM_REPORT_DETAILS','pm_report_details','acl_m_pm_report'),(162,1,1,'mcp_queue','mcp',141,12,13,'MCP_QUEUE_UNAPPROVED_TOPICS','unapproved_topics','aclf_m_approve'),(163,1,1,'mcp_queue','mcp',141,14,15,'MCP_QUEUE_UNAPPROVED_POSTS','unapproved_posts','aclf_m_approve'),(164,1,1,'mcp_queue','mcp',141,16,17,'MCP_QUEUE_APPROVE_DETAILS','approve_details','acl_m_approve,$id || (!$id && aclf_m_approve)'),(165,1,1,'mcp_reports','mcp',142,24,25,'MCP_REPORTS_OPEN','reports','aclf_m_report'),(166,1,1,'mcp_reports','mcp',142,26,27,'MCP_REPORTS_CLOSED','reports_closed','aclf_m_report'),(167,1,1,'mcp_reports','mcp',142,28,29,'MCP_REPORT_DETAILS','report_details','acl_m_report,$id || (!$id && aclf_m_report)'),(168,1,1,'mcp_warn','mcp',144,44,45,'MCP_WARN_FRONT','front','aclf_m_warn'),(169,1,1,'mcp_warn','mcp',144,46,47,'MCP_WARN_LIST','list','aclf_m_warn'),(170,1,1,'mcp_warn','mcp',144,48,49,'MCP_WARN_USER','warn_user','aclf_m_warn'),(171,1,1,'mcp_warn','mcp',144,50,51,'MCP_WARN_POST','warn_post','acl_m_warn && acl_f_read,$id'),(172,1,1,'','ucp',0,1,14,'UCP_MAIN','',''),(173,1,1,'','ucp',0,15,28,'UCP_PROFILE','',''),(174,1,1,'','ucp',0,29,38,'UCP_PREFS','',''),(175,1,1,'ucp_pm','ucp',0,39,48,'UCP_PM','',''),(176,1,1,'','ucp',0,49,54,'UCP_USERGROUPS','',''),(177,1,1,'','ucp',0,55,60,'UCP_ZEBRA','',''),(178,1,1,'ucp_attachments','ucp',172,10,11,'UCP_MAIN_ATTACHMENTS','attachments','acl_u_attach'),(179,1,1,'ucp_groups','ucp',176,50,51,'UCP_USERGROUPS_MEMBER','membership',''),(180,1,1,'ucp_groups','ucp',176,52,53,'UCP_USERGROUPS_MANAGE','manage',''),(181,1,1,'ucp_main','ucp',172,2,3,'UCP_MAIN_FRONT','front',''),(182,1,1,'ucp_main','ucp',172,4,5,'UCP_MAIN_SUBSCRIBED','subscribed',''),(183,1,1,'ucp_main','ucp',172,6,7,'UCP_MAIN_BOOKMARKS','bookmarks','cfg_allow_bookmarks'),(184,1,1,'ucp_main','ucp',172,8,9,'UCP_MAIN_DRAFTS','drafts',''),(185,1,0,'ucp_pm','ucp',175,40,41,'UCP_PM_VIEW','view','cfg_allow_privmsg'),(186,1,1,'ucp_pm','ucp',175,42,43,'UCP_PM_COMPOSE','compose','cfg_allow_privmsg'),(187,1,1,'ucp_pm','ucp',175,44,45,'UCP_PM_DRAFTS','drafts','cfg_allow_privmsg'),(188,1,1,'ucp_pm','ucp',175,46,47,'UCP_PM_OPTIONS','options','cfg_allow_privmsg'),(190,1,1,'ucp_prefs','ucp',174,30,31,'UCP_PREFS_PERSONAL','personal',''),(191,1,1,'ucp_prefs','ucp',174,32,33,'UCP_PREFS_POST','post',''),(192,1,1,'ucp_prefs','ucp',174,34,35,'UCP_PREFS_VIEW','view',''),(193,1,1,'ucp_profile','ucp',173,16,17,'UCP_PROFILE_PROFILE_INFO','profile_info','acl_u_chgprofileinfo'),(194,1,1,'ucp_profile','ucp',173,18,19,'UCP_PROFILE_SIGNATURE','signature','acl_u_sig'),(195,1,1,'ucp_profile','ucp',173,20,21,'UCP_PROFILE_AVATAR','avatar','cfg_allow_avatar'),(196,1,1,'ucp_profile','ucp',173,22,23,'UCP_PROFILE_REG_DETAILS','reg_details',''),(197,1,1,'ucp_zebra','ucp',177,56,57,'UCP_ZEBRA_FRIENDS','friends',''),(198,1,1,'ucp_zebra','ucp',177,58,59,'UCP_ZEBRA_FOES','foes',''),(199,1,1,'','acp',21,232,235,'ACP_EXTENSION_MANAGEMENT','',''),(200,1,1,'acp_extensions','acp',199,233,234,'ACP_EXTENSIONS','main','acl_a_extensions'),(201,1,1,'acp_groups','acp',14,161,162,'ACP_GROUPS_POSITION','position','acl_a_group'),(202,1,1,'acp_attachments','acp',11,113,114,'ACP_MANAGE_ATTACHMENTS','manage','acl_a_attach'),(203,1,1,'acp_styles','acp',22,229,230,'ACP_STYLES_INSTALL','install','acl_a_styles'),(204,1,1,'ucp_profile','ucp',173,24,25,'UCP_PROFILE_AUTOLOGIN_KEYS','autologin_keys',''),(205,1,1,'','acp',21,236,239,'ACP_LANGUAGE','',''),(206,1,1,'ucp_auth_link','ucp',173,26,27,'UCP_AUTH_LINK_MANAGE','auth_link','authmethod_oauth'),(207,1,1,'ucp_notifications','ucp',172,12,13,'UCP_NOTIFICATION_LIST','notification_list','cfg_allow_board_notifications'),(208,1,1,'ucp_notifications','ucp',174,36,37,'UCP_NOTIFICATION_OPTIONS','notification_options',''),(209,1,1,'mcp_queue','mcp',141,18,19,'MCP_QUEUE_DELETED_TOPICS','deleted_topics','aclf_m_approve'),(210,1,1,'mcp_queue','mcp',141,20,21,'MCP_QUEUE_DELETED_POSTS','deleted_posts','aclf_m_approve'),(211,1,1,'acp_contact','acp',3,41,42,'ACP_CONTACT_SETTINGS','contact','acl_a_board'),(212,1,1,'acp_help_phpbb','acp',5,65,66,'ACP_HELP_PHPBB','help_phpbb','acl_a_server'),(213,1,1,'\\phpbb\\viglink\\acp\\viglink_module','acp',3,43,44,'ACP_VIGLINK_SETTINGS','settings','ext_phpbb/viglink && acl_a_board');
/*!40000 ALTER TABLE `phpbb_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_notification_types`
--

DROP TABLE IF EXISTS `phpbb_notification_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_notification_types` (
  `notification_type_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notification_type_enabled` tinyint(1) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`notification_type_id`),
  UNIQUE KEY `type` (`notification_type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_notification_types`
--

LOCK TABLES `phpbb_notification_types` WRITE;
/*!40000 ALTER TABLE `phpbb_notification_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_notification_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_notifications`
--

DROP TABLE IF EXISTS `phpbb_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_notifications` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type_id` smallint(4) unsigned NOT NULL DEFAULT 0,
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `item_parent_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `notification_read` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `notification_time` int(11) unsigned NOT NULL DEFAULT 1,
  `notification_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `item_ident` (`notification_type_id`,`item_id`),
  KEY `user` (`user_id`,`notification_read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_notifications`
--

LOCK TABLES `phpbb_notifications` WRITE;
/*!40000 ALTER TABLE `phpbb_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_oauth_accounts`
--

DROP TABLE IF EXISTS `phpbb_oauth_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_oauth_accounts` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_provider_id` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`user_id`,`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_oauth_accounts`
--

LOCK TABLES `phpbb_oauth_accounts` WRITE;
/*!40000 ALTER TABLE `phpbb_oauth_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_oauth_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_oauth_states`
--

DROP TABLE IF EXISTS `phpbb_oauth_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_oauth_states` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_state` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `user_id` (`user_id`),
  KEY `provider` (`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_oauth_states`
--

LOCK TABLES `phpbb_oauth_states` WRITE;
/*!40000 ALTER TABLE `phpbb_oauth_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_oauth_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_oauth_tokens`
--

DROP TABLE IF EXISTS `phpbb_oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_oauth_tokens` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_token` mediumtext COLLATE utf8_bin NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `provider` (`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_oauth_tokens`
--

LOCK TABLES `phpbb_oauth_tokens` WRITE;
/*!40000 ALTER TABLE `phpbb_oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_poll_options`
--

DROP TABLE IF EXISTS `phpbb_poll_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT 0,
  `topic_id` int(10) unsigned NOT NULL DEFAULT 0,
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) unsigned NOT NULL DEFAULT 0,
  KEY `poll_opt_id` (`poll_option_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_poll_options`
--

LOCK TABLES `phpbb_poll_options` WRITE;
/*!40000 ALTER TABLE `phpbb_poll_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_poll_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_poll_votes`
--

DROP TABLE IF EXISTS `phpbb_poll_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_poll_votes` (
  `topic_id` int(10) unsigned NOT NULL DEFAULT 0,
  `poll_option_id` tinyint(4) NOT NULL DEFAULT 0,
  `vote_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `topic_id` (`topic_id`),
  KEY `vote_user_id` (`vote_user_id`),
  KEY `vote_user_ip` (`vote_user_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_poll_votes`
--

LOCK TABLES `phpbb_poll_votes` WRITE;
/*!40000 ALTER TABLE `phpbb_poll_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_poll_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_posts`
--

DROP TABLE IF EXISTS `phpbb_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_posts` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(10) unsigned NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `poster_id` int(10) unsigned NOT NULL DEFAULT 0,
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) unsigned NOT NULL DEFAULT 0,
  `post_reported` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `post_edit_time` int(11) unsigned NOT NULL DEFAULT 0,
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` int(10) unsigned NOT NULL DEFAULT 0,
  `post_edit_count` smallint(4) unsigned NOT NULL DEFAULT 0,
  `post_edit_locked` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `post_visibility` tinyint(3) NOT NULL DEFAULT 0,
  `post_delete_time` int(11) unsigned NOT NULL DEFAULT 0,
  `post_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_delete_user` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_ip` (`poster_ip`),
  KEY `poster_id` (`poster_id`),
  KEY `post_username` (`post_username`),
  KEY `tid_post_time` (`topic_id`,`post_time`),
  KEY `post_visibility` (`post_visibility`),
  FULLTEXT KEY `post_text` (`post_text`),
  FULLTEXT KEY `post_content` (`post_subject`,`post_text`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_posts`
--

LOCK TABLES `phpbb_posts` WRITE;
/*!40000 ALTER TABLE `phpbb_posts` DISABLE KEYS */;
INSERT INTO `phpbb_posts` VALUES (2,1,2,2,0,'172.31.8.159',1446363796,0,1,1,1,1,'','','#1 bro checking in\n\n[vote:v38hczwo]Kison[/vote:v38hczwo]\nThis stud turns 40 in [countdown:v38hczwo]2028-09-30 00:00:00 0.00[/countdown:v38hczwo]','5b6baf69ab75da3c6d461724f137e1f0',0,'AAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACA=','v38hczwo',1,0,'',0,0,0,1,0,'',0),(4,3,90,2,0,'127.0.0.1',1460682724,0,1,1,1,1,'','Test','Test','0cbc6611f5540bd0809a388dc95a615b',0,'','1w5ljnfa',1,0,'',0,0,0,1,0,'',0),(5,4,2,2,0,'127.0.0.1',1461044050,0,1,1,1,1,'','Autolock','test','098f6bcd4621d373cade4e832627b4f6',0,'','f71pnsqu',1,0,'',0,0,0,1,0,'',0),(6,5,2,2,0,'127.0.0.1',1461044185,0,1,1,1,1,'','Autolock 2','test','098f6bcd4621d373cade4e832627b4f6',0,'','igshpyyb',1,0,'',0,0,0,1,0,'',0),(7,6,2,48,0,'127.0.0.1',1461830546,0,1,1,1,0,'','test','test','098f6bcd4621d373cade4e832627b4f6',0,'','10vzxl9j',1,0,'',0,0,0,1,0,'',0),(8,7,2,48,0,'127.0.0.1',1461831257,0,1,1,1,0,'','Test','Here\'s my topic.','a6c1298468f0dd43aed4642d7a991c3a',0,'','32vkmltz',1,0,'',0,0,0,1,0,'',0),(9,8,4,48,0,'127.0.0.1',1461946830,0,1,1,1,0,'','Test','Test','0cbc6611f5540bd0809a388dc95a615b',0,'','2dx9a888',1,0,'',0,0,0,1,0,'',0),(10,9,90,48,0,'127.0.0.1',1461996466,0,1,1,1,0,'','My Private Topic','Hello.','f9776f93ac975cd47b598e34d9242d18',0,'','2m89tyg1',1,0,'',0,0,0,1,0,'',0),(11,10,2,2,0,'127.0.0.1',1462003387,0,1,1,1,1,'','My global.','Sup.','9f2203306e7a16820e27f34476da52cf',0,'','1u60d2jh',1,0,'',0,0,0,1,0,'',0),(12,10,2,2,0,'127.0.0.1',1462003411,0,1,1,1,1,'','','P2','5890595e16cbebb8866e1842e4bd6ec7',0,'','37kib9qi',1,0,'',0,0,0,1,0,'',0),(13,10,2,2,0,'127.0.0.1',1462003416,0,1,1,1,1,'','','P3','bd11537f1bc31e334497ec5463fc575e',0,'','2k5hfbbk',1,0,'',0,0,0,1,0,'',0),(14,10,2,2,0,'127.0.0.1',1462003470,0,1,1,1,1,'','','P4','905ad4f16a809a8f8408ed499e75be09',0,'','19ii9xbz',1,0,'',0,0,0,1,0,'',0),(15,10,2,48,0,'127.0.0.1',1462003487,0,1,1,1,0,'','','P5','c6b1847fa30bd92ff87464e39859e7c0',0,'','37w2eaj0',1,0,'',0,0,0,1,0,'',0),(16,10,2,48,0,'127.0.0.1',1462003494,0,1,1,1,0,'','','P6','53453c482d4d75c2fcc000cda7f2dd81',0,'','1zsw2ki0',1,0,'',0,0,0,1,0,'',0),(17,10,2,48,0,'127.0.0.1',1462003527,0,1,1,1,0,'','','P7','d8db410ef2444bf4b29cd8fbb9b698a3',0,'','9no9ihd2',1,0,'',0,0,0,1,0,'',0),(18,10,2,2,0,'127.0.0.1',1462004234,0,1,1,1,1,'','','P8','d6e72950c12bb200b862f63920a37de8',0,'','1fric9ci',1,0,'',0,0,0,1,0,'',0),(19,10,2,2,0,'127.0.0.1',1462004262,0,1,1,1,1,'','','P9','b82e4eec0372b66f43e88ef342318733',0,'','u065r194',1,0,'',0,0,0,1,0,'',0),(20,10,2,2,0,'127.0.0.1',1462004276,0,1,1,1,1,'','','P10','a8c1f8495e10277718398939ece8a2ae',0,'','o7k8fntt',1,0,'',0,0,0,1,0,'',0),(21,10,2,2,0,'127.0.0.1',1462004319,0,1,1,1,1,'','','P11','d2e94202e3530c10d10e903af0e359a0',0,'','mmdcqlik',1,0,'',0,0,0,1,0,'',0),(22,5,2,2,0,'127.0.0.1',1462072370,0,1,1,1,1,'','','[youtube:2e7ho4lm]RcP91tQ4ZSM[/youtube:2e7ho4lm]','8c2eeae13cd6ede921805ecfec156d31',0,'AAAAAAAAAAg=','2e7ho4lm',1,0,'',0,0,0,1,0,'',0),(23,11,3,2,0,'127.0.0.1',1466053276,0,1,1,1,1,'','Large Theme 1 - Game One','bonus2!','c7c2bcb876efd0a0c53a5ca484e5bd2a',0,'','',0,0,'',0,0,1,1,0,'',0),(24,12,4,2,0,'127.0.0.1',1466058261,0,1,1,1,1,'','Mini Normal 1 - Awesome Game','bonus2!','c7c2bcb876efd0a0c53a5ca484e5bd2a',0,'','',1,0,'',0,0,1,1,0,'',0),(25,4,2,2,0,'127.0.0.1',1478927315,0,1,1,1,1,'','','test','098f6bcd4621d373cade4e832627b4f6',0,'','2qs7xsa5',1,0,'',0,0,0,1,0,'',0),(26,4,2,48,0,'127.0.0.1',1478927350,0,1,1,1,0,'','','test','098f6bcd4621d373cade4e832627b4f6',0,'','3h13tit8',1,0,'',0,0,0,1,0,'',0),(27,12,4,48,0,'127.0.0.1',1478927370,0,1,1,1,0,'','','test','098f6bcd4621d373cade4e832627b4f6',0,'','2nnkua3b',1,0,'',0,0,0,1,0,'',0),(28,4,2,48,0,'127.0.0.1',1479865339,0,1,1,1,0,'','','test','098f6bcd4621d373cade4e832627b4f6',0,'','q576bwhw',1,0,'',0,0,0,1,0,'',0),(29,4,2,48,0,'127.0.0.1',1479865349,0,1,1,1,0,'','','test2','ad0234829205b9033196ba818f7a872b',0,'','1z2mtjh2',1,0,'',0,0,0,1,0,'',0),(30,4,2,48,0,'127.0.0.1',1479865378,0,1,1,1,0,'','','wtwetwetwetw','35db6dfbfc2341d6742bc288c0c8c96f',0,'','24jz5jkg',1,0,'',0,0,0,1,0,'',0),(31,4,2,48,0,'127.0.0.1',1479865393,0,1,1,1,0,'','','gdsgregsgsd','5b0cff406745d1067de13e2d3ebd65a3',0,'','3kywoa6w',1,0,'',0,0,0,1,0,'',0),(32,13,90,2,0,'127.0.0.1',1480232803,0,1,1,1,1,'','PT3','Sup','a20bba554bfa1580a9d4aa2b6879ed46',0,'','22u8dawd',1,0,'',0,0,0,1,0,'',0),(33,14,90,2,0,'127.0.0.1',1480232816,0,1,1,1,1,'','PT4','Sup4','c5c8fcbdddb21361eff672229730af64',0,'','nfsziibq',1,1483325806,'',48,10,0,1,0,'',0),(34,14,90,2,0,'127.0.0.1',1480232939,0,1,1,1,1,'','','Reply','25d8df6e580905091a0d5ef5b9e05bf0',0,'','1b45bxo7',1,0,'',0,0,0,1,0,'',0),(35,14,90,2,0,'127.0.0.1',1480269033,0,1,1,1,1,'','','Test subscription.','93baa533b19a0d09eaf7b30859d18497',0,'','39gvj0g2',1,0,'',0,0,0,1,0,'',0),(36,14,90,48,0,'127.0.0.1',1482089710,0,1,1,1,0,'','','Hey there.','d675cfc8d3f2d80ed5eeb0cc0aab7e4b',0,'','2vt4rhu4',1,0,'',0,0,0,1,0,'',0),(37,14,90,2,0,'127.0.0.1',1482715652,0,1,1,1,1,'','','Unread post.','16a6ebf50e07bf537540a1fff0d226c2',0,'','d0b82zuw',1,0,'',0,0,0,1,0,'',0),(38,14,90,48,0,'127.0.0.1',1482715828,0,1,1,1,0,'','','Answer me.','747a26af6adbff8531e88e379e383d1a',0,'','3lj9p8xm',1,0,'',0,0,0,1,0,'',0);
/*!40000 ALTER TABLE `phpbb_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_privmsgs`
--

DROP TABLE IF EXISTS `phpbb_privmsgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_privmsgs` (
  `msg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `root_level` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `author_id` int(10) unsigned NOT NULL DEFAULT 0,
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) unsigned NOT NULL DEFAULT 0,
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` int(10) unsigned NOT NULL DEFAULT 0,
  `message_attachment` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) unsigned NOT NULL DEFAULT 0,
  `message_edit_count` smallint(4) unsigned NOT NULL DEFAULT 0,
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`msg_id`),
  KEY `author_ip` (`author_ip`),
  KEY `message_time` (`message_time`),
  KEY `author_id` (`author_id`),
  KEY `root_level` (`root_level`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_privmsgs`
--

LOCK TABLES `phpbb_privmsgs` WRITE;
/*!40000 ALTER TABLE `phpbb_privmsgs` DISABLE KEYS */;
INSERT INTO `phpbb_privmsgs` VALUES (1,0,2,0,'127.0.0.1',1478277304,1,1,1,1,'test','test','',0,0,'','20l5pif5',0,0,'u_2','',0),(2,0,2,0,'127.0.0.1',1478277318,1,1,1,1,'test','test','',0,0,'','1wler2kt',0,0,'u_2','',0),(3,0,2,0,'127.0.0.1',1480271033,1,1,1,1,'test','test','',0,0,'','rfe4xr1l',0,0,'u_48','',0),(4,0,2,0,'127.0.0.1',1480271091,1,1,1,1,'test','test','',0,0,'','1cabmsc9',0,0,'u_48','',0);
/*!40000 ALTER TABLE `phpbb_privmsgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_privmsgs_folder`
--

DROP TABLE IF EXISTS `phpbb_privmsgs_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_privmsgs_folder` (
  `folder_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`folder_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_privmsgs_folder`
--

LOCK TABLES `phpbb_privmsgs_folder` WRITE;
/*!40000 ALTER TABLE `phpbb_privmsgs_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_privmsgs_rules`
--

DROP TABLE IF EXISTS `phpbb_privmsgs_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_privmsgs_rules` (
  `rule_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `rule_check` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `rule_connection` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `rule_group_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `rule_action` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `rule_folder_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`rule_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_privmsgs_rules`
--

LOCK TABLES `phpbb_privmsgs_rules` WRITE;
/*!40000 ALTER TABLE `phpbb_privmsgs_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_privmsgs_to`
--

DROP TABLE IF EXISTS `phpbb_privmsgs_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_privmsgs_to` (
  `msg_id` int(10) unsigned NOT NULL DEFAULT 0,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `author_id` int(10) unsigned NOT NULL DEFAULT 0,
  `pm_deleted` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `pm_new` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `pm_unread` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `pm_replied` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `pm_marked` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `pm_forwarded` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `folder_id` int(11) NOT NULL DEFAULT 0,
  KEY `msg_id` (`msg_id`),
  KEY `author_id` (`author_id`),
  KEY `usr_flder_id` (`user_id`,`folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_privmsgs_to`
--

LOCK TABLES `phpbb_privmsgs_to` WRITE;
/*!40000 ALTER TABLE `phpbb_privmsgs_to` DISABLE KEYS */;
INSERT INTO `phpbb_privmsgs_to` VALUES (1,2,2,0,0,0,0,0,0,0),(1,2,2,0,0,0,0,0,0,-1),(2,2,2,0,1,1,0,0,0,-4),(2,2,2,0,0,0,0,0,0,-2),(3,48,2,0,0,0,0,0,0,0),(3,2,2,0,0,0,0,0,0,-1),(4,48,2,0,0,0,0,0,0,0),(4,2,2,0,0,0,0,0,0,-1);
/*!40000 ALTER TABLE `phpbb_privmsgs_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_profile_fields`
--

DROP TABLE IF EXISTS `phpbb_profile_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_profile_fields` (
  `field_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `field_show_novalue` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `field_show_on_reg` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `field_show_on_vt` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `field_show_profile` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `field_hide` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `field_no_view` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `field_active` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `field_order` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `field_show_on_pm` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `field_show_on_ml` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `field_is_contact` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `field_contact_desc` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_contact_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`),
  KEY `fld_type` (`field_type`),
  KEY `fld_ordr` (`field_order`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_profile_fields`
--

LOCK TABLES `phpbb_profile_fields` WRITE;
/*!40000 ALTER TABLE `phpbb_profile_fields` DISABLE KEYS */;
INSERT INTO `phpbb_profile_fields` VALUES (1,'phpbb_interests','profilefields.type.text','phpbb_interests','3|30','2','500','','','.*',0,0,0,0,1,0,0,1,1,0,0,0,'',''),(2,'phpbb_occupation','profilefields.type.text','phpbb_occupation','3|30','2','500','','','.*',0,0,0,0,1,0,0,1,2,0,0,0,'',''),(3,'phpbb_icq','profilefields.type.string','phpbb_icq','20','3','15','','','[0-9]+',0,0,0,1,1,0,0,1,3,1,0,1,'SEND_ICQ_MESSAGE','https://www.icq.com/people/%s/'),(4,'phpbb_website','profilefields.type.url','phpbb_website','40','12','255','','','',0,0,0,1,1,0,0,1,4,1,1,1,'VISIT_WEBSITE','%s'),(6,'phpbb_yahoo','profilefields.type.string','phpbb_yahoo','40','5','255','','','.*',0,0,0,1,1,0,0,1,6,1,0,1,'SEND_YIM_MESSAGE','ymsgr:sendim?%s'),(7,'phpbb_aol','profilefields.type.string','phpbb_aol','40','5','255','','','.*',0,0,0,1,1,0,0,1,7,1,0,1,'',''),(8,'phpbb_location','profilefields.type.string','phpbb_location','20','2','100','','','.*',0,0,0,1,1,0,0,1,8,1,0,0,'',''),(9,'phpbb_facebook','profilefields.type.string','phpbb_facebook','20','5','50','','','[a-zA-Z0-9.]+',0,0,0,1,1,0,0,1,9,1,0,1,'VIEW_FACEBOOK_PROFILE','http://facebook.com/%s/'),(10,'phpbb_googleplus','profilefields.type.googleplus','phpbb_googleplus','20','3','255','','','[a-zA-Z0-9]+',0,0,0,1,1,0,0,1,10,1,0,1,'VIEW_GOOGLEPLUS_PROFILE','http://plus.google.com/%s'),(11,'phpbb_skype','profilefields.type.string','phpbb_skype','20','6','32','','','[a-zA-Z][\\w\\.,\\-]+',0,0,0,1,1,0,0,1,11,1,0,1,'VIEW_SKYPE_PROFILE','skype:%s?userinfo'),(12,'phpbb_twitter','profilefields.type.string','phpbb_twitter','20','1','15','','','[\\w]+',0,0,0,1,1,0,0,1,12,1,0,1,'VIEW_TWITTER_PROFILE','http://twitter.com/%s'),(13,'phpbb_youtube','profilefields.type.string','phpbb_youtube','20','3','60','','','[a-zA-Z][\\w\\.,\\-]+',0,0,0,1,1,0,0,1,13,1,0,1,'VIEW_YOUTUBE_CHANNEL','http://youtube.com/user/%s');
/*!40000 ALTER TABLE `phpbb_profile_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_profile_fields_data`
--

DROP TABLE IF EXISTS `phpbb_profile_fields_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_profile_fields_data` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `pf_numberspam` bigint(20) DEFAULT NULL,
  `pf_textspam` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pf_user_gender` mediumint(8) DEFAULT NULL,
  `pf_user_pronoun` mediumint(8) DEFAULT NULL,
  `pf_phpbb_interests` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_occupation` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_icq` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_website` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_yahoo` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_aol` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_location` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_facebook` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_googleplus` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_skype` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_twitter` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_youtube` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_profile_fields_data`
--

LOCK TABLES `phpbb_profile_fields_data` WRITE;
/*!40000 ALTER TABLE `phpbb_profile_fields_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_profile_fields_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_profile_fields_lang`
--

DROP TABLE IF EXISTS `phpbb_profile_fields_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_profile_fields_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `option_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_profile_fields_lang`
--

LOCK TABLES `phpbb_profile_fields_lang` WRITE;
/*!40000 ALTER TABLE `phpbb_profile_fields_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_profile_fields_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_profile_lang`
--

DROP TABLE IF EXISTS `phpbb_profile_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_profile_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_profile_lang`
--

LOCK TABLES `phpbb_profile_lang` WRITE;
/*!40000 ALTER TABLE `phpbb_profile_lang` DISABLE KEYS */;
INSERT INTO `phpbb_profile_lang` VALUES (1,1,'INTERESTS','',''),(2,1,'OCCUPATION','',''),(3,1,'ICQ','',''),(4,1,'WEBSITE','',''),(6,1,'YAHOO','',''),(7,1,'AOL','',''),(8,1,'LOCATION','',''),(9,1,'FACEBOOK','',''),(10,1,'GOOGLEPLUS','',''),(11,1,'SKYPE','',''),(12,1,'TWITTER','',''),(13,1,'YOUTUBE','','');
/*!40000 ALTER TABLE `phpbb_profile_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_qa_confirm`
--

DROP TABLE IF EXISTS `phpbb_qa_confirm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_qa_confirm` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `question_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `attempts` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `confirm_type` smallint(4) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`confirm_id`),
  KEY `session_id` (`session_id`),
  KEY `lookup` (`confirm_id`,`session_id`,`lang_iso`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_qa_confirm`
--

LOCK TABLES `phpbb_qa_confirm` WRITE;
/*!40000 ALTER TABLE `phpbb_qa_confirm` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_qa_confirm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_ranks`
--

DROP TABLE IF EXISTS `phpbb_ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_ranks`
--

LOCK TABLES `phpbb_ranks` WRITE;
/*!40000 ALTER TABLE `phpbb_ranks` DISABLE KEYS */;
INSERT INTO `phpbb_ranks` VALUES (1,'Site Admin',0,1,'');
/*!40000 ALTER TABLE `phpbb_ranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_reports`
--

DROP TABLE IF EXISTS `phpbb_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_reports` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reason_id` smallint(4) unsigned NOT NULL DEFAULT 0,
  `post_id` int(10) unsigned NOT NULL DEFAULT 0,
  `pm_id` int(10) unsigned NOT NULL DEFAULT 0,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `report_closed` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `report_time` int(11) unsigned NOT NULL DEFAULT 0,
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  `reported_post_enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `reported_post_enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `reported_post_enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `reported_post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `reported_post_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reported_post_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`report_id`),
  KEY `post_id` (`post_id`),
  KEY `pm_id` (`pm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_reports`
--

LOCK TABLES `phpbb_reports` WRITE;
/*!40000 ALTER TABLE `phpbb_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_reports_reasons`
--

DROP TABLE IF EXISTS `phpbb_reports_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_reports_reasons` (
  `reason_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_reports_reasons`
--

LOCK TABLES `phpbb_reports_reasons` WRITE;
/*!40000 ALTER TABLE `phpbb_reports_reasons` DISABLE KEYS */;
INSERT INTO `phpbb_reports_reasons` VALUES (1,'warez','The post contains links to illegal or pirated software.',1),(2,'spam','The reported post has the only purpose to advertise for a website or another product.',2),(3,'off_topic','The reported post is off topic.',3),(4,'other','The reported post does not fit into any other category, please use the further information field.',4);
/*!40000 ALTER TABLE `phpbb_reports_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_search_results`
--

DROP TABLE IF EXISTS `phpbb_search_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) unsigned NOT NULL DEFAULT 0,
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`search_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_search_results`
--

LOCK TABLES `phpbb_search_results` WRITE;
/*!40000 ALTER TABLE `phpbb_search_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_search_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_search_wordlist`
--

DROP TABLE IF EXISTS `phpbb_search_wordlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_search_wordlist` (
  `word_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `word_count` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`word_id`),
  UNIQUE KEY `wrd_txt` (`word_text`),
  KEY `wrd_cnt` (`word_count`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_search_wordlist`
--

LOCK TABLES `phpbb_search_wordlist` WRITE;
/*!40000 ALTER TABLE `phpbb_search_wordlist` DISABLE KEYS */;
INSERT INTO `phpbb_search_wordlist` VALUES (1,'this',0,1),(2,'example',0,0),(3,'post',0,0),(4,'your',0,0),(5,'phpbb3',0,0),(6,'installation',0,0),(7,'everything',0,0),(8,'seems',0,0),(9,'working',0,0),(10,'you',0,0),(11,'may',0,0),(12,'delete',0,0),(13,'like',0,0),(14,'and',0,0),(15,'continue',0,0),(16,'set',0,0),(17,'board',0,0),(18,'during',0,0),(19,'the',0,0),(20,'process',0,0),(21,'first',0,0),(22,'category',0,0),(23,'forum',0,0),(24,'are',0,0),(25,'assigned',0,0),(26,'appropriate',0,0),(27,'permissions',0,0),(28,'for',0,0),(29,'predefined',0,0),(30,'usergroups',0,0),(31,'administrators',0,0),(32,'bots',0,0),(33,'global',0,1),(34,'moderators',0,0),(35,'guests',0,0),(36,'registered',0,0),(37,'users',0,0),(38,'coppa',0,0),(39,'also',0,0),(40,'choose',0,0),(41,'not',0,0),(42,'forget',0,0),(43,'assign',0,0),(44,'all',0,0),(45,'these',0,0),(46,'new',0,0),(47,'categories',0,0),(48,'forums',0,0),(49,'create',0,0),(50,'recommended',0,0),(51,'rename',0,0),(52,'copy',0,0),(53,'from',0,0),(54,'while',0,0),(55,'creating',0,0),(56,'have',0,0),(57,'fun',0,0),(58,'welcome',0,0),(59,'bro',0,1),(60,'checking',0,1),(61,'kison',0,1),(62,'stud',0,1),(63,'turns',0,1),(64,'2028',0,1),(65,'test',0,14),(66,'autolock',0,2),(67,'here',0,1),(68,'topic',0,2),(69,'hello',0,1),(70,'private',0,1),(71,'sup',0,2),(72,'p10',0,1),(73,'p11',0,1),(74,'rcp91tq4zsm',0,1),(75,'bonus2',0,2),(76,'large',0,1),(77,'theme',0,1),(78,'game',0,2),(79,'one',0,1),(80,'mini',0,1),(81,'normal',0,1),(82,'awesome',0,1),(83,'test2',0,1),(84,'wtwetwetwetw',0,1),(85,'gdsgregsgsd',0,1),(86,'pt3',0,1),(87,'sup4',0,1),(88,'pt4',0,1),(89,'reply',0,1),(90,'subscription',0,1),(91,'hey',0,1),(92,'there',0,1);
/*!40000 ALTER TABLE `phpbb_search_wordlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_search_wordmatch`
--

DROP TABLE IF EXISTS `phpbb_search_wordmatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_search_wordmatch` (
  `post_id` int(10) unsigned NOT NULL DEFAULT 0,
  `word_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title_match` tinyint(1) unsigned NOT NULL DEFAULT 0,
  UNIQUE KEY `unq_mtch` (`word_id`,`post_id`,`title_match`),
  UNIQUE KEY `un_mtch` (`word_id`,`post_id`,`title_match`),
  KEY `word_id` (`word_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_search_wordmatch`
--

LOCK TABLES `phpbb_search_wordmatch` WRITE;
/*!40000 ALTER TABLE `phpbb_search_wordmatch` DISABLE KEYS */;
INSERT INTO `phpbb_search_wordmatch` VALUES (2,1,0),(11,33,1),(2,59,0),(2,60,0),(2,61,0),(2,62,0),(2,63,0),(2,64,0),(4,65,0),(4,65,1),(5,65,0),(6,65,0),(7,65,0),(7,65,1),(8,65,1),(9,65,0),(9,65,1),(25,65,0),(26,65,0),(27,65,0),(28,65,0),(35,65,0),(5,66,1),(6,66,1),(8,67,0),(8,68,0),(10,68,1),(10,69,0),(10,70,1),(11,71,0),(32,71,0),(20,72,0),(21,73,0),(22,74,0),(23,75,0),(24,75,0),(23,76,1),(23,77,1),(23,78,1),(24,78,1),(23,79,1),(24,80,1),(24,81,1),(24,82,1),(29,83,0),(30,84,0),(31,85,0),(32,86,1),(33,87,0),(33,88,1),(34,89,0),(35,90,0),(36,91,0),(36,92,0);
/*!40000 ALTER TABLE `phpbb_search_wordmatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_sessions`
--

DROP TABLE IF EXISTS `phpbb_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `session_forum_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `session_last_visit` int(11) unsigned NOT NULL DEFAULT 0,
  `session_start` int(11) unsigned NOT NULL DEFAULT 0,
  `session_time` int(11) unsigned NOT NULL DEFAULT 0,
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `session_autologin` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `session_admin` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`session_id`),
  KEY `session_time` (`session_time`),
  KEY `session_user_id` (`session_user_id`),
  KEY `session_fid` (`session_forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_sessions`
--

LOCK TABLES `phpbb_sessions` WRITE;
/*!40000 ALTER TABLE `phpbb_sessions` DISABLE KEYS */;
INSERT INTO `phpbb_sessions` VALUES ('060f1e353a2baf9a687c48cd212d4cfe',1,0,1505237167,1505237167,1505237167,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','cron.php?cron_type=tidy_cache',1,0,0),('071abf159e777251d6d9137f5b2ae18f',1,0,1505237199,1505237199,1505237199,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=confirm&confirm_id=310005b4c3ec7fb4befcf2fc2c1322f8&type=1',1,0,0),('0a0b956a2b4dc86e84a9ef205677de70',1,0,1505237172,1505237172,1505237172,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','cron.php?cron_type=tidy_search',1,0,0),('1209412658c2539996e24676b14a5ae7',1,0,1505237402,1505237402,1505237402,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=confirm&confirm_id=0940963b0ae26c410be78ae410c3be17&type=1',1,0,0),('16c0a1e995bc30d53bb388febcb73c22',1,0,1505237168,1505237168,1505237168,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=login',1,0,0),('1a0b033dbb71b36703edda47e70993b6',1,0,1505237238,1505237238,1505237238,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=register',1,0,0),('1bf53fdabd67c81f68431b329c711a2f',1,0,1505237288,1505237288,1505237288,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=login',1,0,0),('1f212b240fabb44dcc01da4168d6be10',1,0,1505237423,1505237423,1505237423,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=confirm&confirm_id=5f83ac04ba955673133d30b4fee2457b&type=1',1,0,0),('2c0102d6da4f26b02f663c7f47e5c2c1',1,0,1505237423,1505237423,1505237423,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=register',1,0,0),('458af34d6864a209812afa94fc92d5e5',52,0,1505237646,1505237646,1505238472,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','index.php',1,0,1),('4b034e2eeb99028e13515e86bb898224',1,0,1505237235,1505237235,1505237235,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=login',1,0,0),('4dfefa982485af1901a12e4d6f043204',1,0,1505237402,1505237402,1505237402,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=register',1,0,0),('573ae0b35723a9139281c545eba55ccd',1,0,1505237172,1505237172,1505237172,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=register',1,0,0),('5f6532e294b3240cae23ef45403997e7',1,0,1505237392,1505237392,1505237392,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=login',1,0,0),('60ca798d6eb955e93d7c0318b5533e37',1,0,1505237411,1505237411,1505237411,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=confirm&confirm_id=6e23537dab9105aad9c65344e239b3bd&type=1',1,0,0),('6989cdfad6306c66ab8222ca747d8efb',1,0,1505237172,1505237172,1505237172,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=confirm&confirm_id=7fdcbf6851a93d3ce49e7e77bd910c1c&type=1',1,0,0),('78600b3529a8f97e3ac34560e3092beb',1,0,1505237400,1505237400,1505237400,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=register',1,0,0),('78e632335ca7f1c8fd803024b73412ff',1,0,1505237248,1505237248,1505237248,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=confirm&confirm_id=ea2b8e70a1b2215efa8c3807101dd857&type=1',1,0,0),('7a59093d2cd75170a78c19537c900812',1,0,1505237237,1505237237,1505237237,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=register',1,0,0),('85540be7723805f6d03f1e56d5d95179',1,0,1505237182,1505237182,1505237182,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=confirm&confirm_id=d77008cd0b0060b9b0f48da53beec495&type=1',1,0,0),('8bdcae2fd0fa091b7c39ab8ad8f6e531',1,0,1505237182,1505237182,1505237182,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','cron.php?cron_type=tidy_sessions',1,0,0),('9146b33807d02fb8f41fdc9ae70a6851',1,0,1505237278,1505237278,1505237278,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','index.php',1,0,0),('9161ad2d6e2682aa43ec1ec868ae8ff0',1,0,1505237411,1505237411,1505237411,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=register',1,0,0),('a136991252dce5c426f424c8d3085232',1,0,1505237171,1505237171,1505237171,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=register',1,0,0),('a250c87d7124706db7107efdfc7878de',1,0,1505237279,1505237279,1505237279,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=login',1,0,0),('a87c4c0353a75cc0c76f3cfe3b890c4f',1,0,1505237171,1505237171,1505237171,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','cron.php?cron_type=tidy_database',1,0,0),('b7af4a66d7cfa889b02855baf0ee18c9',1,0,1505237168,1505237168,1505237168,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','cron.php?cron_type=tidy_warnings',1,0,0),('c8e32650883f6e5bc4e4bf81e2247cf6',1,0,1505237239,1505237239,1505237239,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=confirm&confirm_id=74610cf6fe61fa961667fe57de5c0901&type=1',1,0,0),('de05d1391ede0582cb41e312ac7e40e8',1,0,1505237389,1505237389,1505237389,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','index.php',1,0,0),('df6b2d9b30ec8437a075ad21749ef1a6',1,0,1505237199,1505237199,1505237199,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=register',1,0,0),('eba6e2e4d4c8d41009d7f0837b5ed951',1,0,1505237247,1505237247,1505237247,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=register',1,0,0),('ecff53305a67b358e8ed21ced8b94036',1,0,1505237182,1505237182,1505237182,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','ucp.php?mode=register',1,0,0),('fa81aa0b2e26b4d519cc66f284bc9422',1,0,1505237166,1505237166,1505237166,'172.20.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36','','index.php',1,0,0);
/*!40000 ALTER TABLE `phpbb_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_sessions_keys`
--

DROP TABLE IF EXISTS `phpbb_sessions_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`key_id`,`user_id`),
  KEY `last_login` (`last_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_sessions_keys`
--

LOCK TABLES `phpbb_sessions_keys` WRITE;
/*!40000 ALTER TABLE `phpbb_sessions_keys` DISABLE KEYS */;
INSERT INTO `phpbb_sessions_keys` VALUES ('03c6d5a5fa8f47c8dd3f458c78073951',2,'127.0.0.1',1467610400),('0a080c26f97368d305e5cb51b013e6c8',48,'127.0.0.1',1482710100),('0b44b26bae1851ef881a65396b7634e9',2,'127.0.0.1',1466048350),('0df08ca9d8c96f0a4576788b7b6ef3d5',2,'127.0.0.1',1479008487),('0eb4c5422a7a65f70d41ddd493719890',48,'127.0.0.1',1479610414),('1409717763ff6a32c6afd1dbe7e5dd0b',2,'127.0.0.1',1467610927),('167f771143f8af78830e29596a87370c',48,'127.0.0.1',1482086810),('1bb5224daf21b0c1919c98980c0d467b',2,'127.0.0.1',1467610730),('217477ed36643394367f7520c791a9b3',2,'127.0.0.1',1479246402),('278188f8ba184ec627385047f87bef25',2,'127.0.0.1',1479617458),('2b0c12dfd23740cf11b8c481418762ee',48,'127.0.0.1',1482709928),('30781551bd9c0c4ebc26b7d0b1f1fed4',48,'127.0.0.1',1479615934),('37f690f4089c97ea5a5f1387097c337d',48,'127.0.0.1',1479590940),('391b535836bec914df28d563bce60c19',2,'127.0.0.1',1464657835),('47296147ab68eea0d74e23dbbff9047f',2,'127.0.0.1',1479190344),('498f7b7cb8f413b3645e97dffbb025bf',2,'127.0.0.1',1468685437),('4ac71cfe4488328253f7279fa6254109',2,'127.0.0.1',1479617753),('4e2aaeac431a3ec8d30d70503e0b65a4',2,'127.0.0.1',1482709854),('507cfe24be5cc056ab6eb3aa1aa1c33e',48,'127.0.0.1',1479254101),('511b1d7047aead1324a3776ae2391313',2,'127.0.0.1',1479189408),('52e3c315792b25d543dd1ab0c380397d',2,'127.0.0.1',1479617426),('5a74e976a38ee2c82817e48d606d251b',2,'127.0.0.1',1479089322),('5f26b0b21c1b617b9cef38ea25796880',2,'127.0.0.1',1479617737),('5f3804edeaf0aa3773b4e6fa3f52c017',2,'127.0.0.1',1467610808),('5f86890505f00ac3f996424864e16dc2',48,'127.0.0.1',1479595711),('64572cf85e968b72fc4c30a0ee25424d',48,'127.0.0.1',1479190275),('68ed82e7eb7e4816ab54c8b0fad7d9d3',48,'127.0.0.1',1462003449),('6b6232827be883c5f2cfd658b0e4c720',2,'127.0.0.1',1480269043),('6df292392ed4df263fe5bf1da50647e5',2,'127.0.0.1',1461043744),('745c23e5764be322f15ef44e1f43e412',2,'127.0.0.1',1479008526),('7951f13816eb051a483d792cf09e7ecf',48,'127.0.0.1',1479190448),('799862b93640b074298998b1de4b74ee',48,'127.0.0.1',1479019491),('7eb6d9e987b1259ebd296ec2bdf1d0e7',48,'127.0.0.1',1479615491),('84a74814c0b60aeaea10328ef4e6f5fd',48,'127.0.0.1',1479536143),('867a5563372e354efb3701449ec8eb96',48,'127.0.0.1',1479190353),('8931873006c81fdc1636564546c2003e',48,'127.0.0.1',1466051989),('8a8237c00f0ede979e9d1d576b66004f',48,'127.0.0.1',1479339600),('8c737b18b7c743223b83050f046ace8c',48,'127.0.0.1',1482087376),('8e16ba0ffdf6a8d8f064f290d280c0f4',2,'127.0.0.1',1464657729),('905c5af977de714b6dbff2f260f7c56b',48,'127.0.0.1',1482087347),('93bd700349b86c982004e9324d8a315c',48,'127.0.0.1',1482087826),('95ee54106aac0f5ce4b8ce9f8287e04b',48,'127.0.0.1',1482087456),('963170f2288c47cacc86f8ed3616fb62',48,'127.0.0.1',1466057770),('97829bd671a328fb03666ab577bca4e5',2,'127.0.0.1',1482087329),('97be0dd92bab6842979203edcff77459',48,'127.0.0.1',1468806673),('99864fe4e1d54d9891ef9edea6d24896',2,'127.0.0.1',1479595663),('9d53cd08323421351f49267c9cf6135d',48,'127.0.0.1',1479602852),('a049e04ca9caaa1d58391b4c013ab568',48,'127.0.0.1',1482086823),('a68d199d114c7e80b0bfa4e1b1c48726',2,'127.0.0.1',1464567141),('ab20632e703f699c7b3fd5492f958a41',48,'127.0.0.1',1468048515),('b1c612174dfd3e602e55d188dfdbc76e',48,'127.0.0.1',1468183867),('b20c16297be4a4f2711e981dbc6bb319',48,'127.0.0.1',1479190315),('b40a699022967298915ec5a7836ae719',48,'127.0.0.1',1480232787),('bdebf6e6ca4cf5ce41bcfd5ea87ea240',49,'127.0.0.1',1482087480),('ca1e658595636676dbdc814f39191519',2,'127.0.0.1',1483525179),('cabf53e3710b3744e77e2ddc35bf448c',2,'127.0.0.1',1478055682),('d43f8764001781d922fcb0845d8e329c',2,'127.0.0.1',1479609440),('d57c406f7f2d4d904012f34a91f99d3d',2,'127.0.0.1',1462072432),('da020e677ae031d23fcd983b5e70bc97',48,'127.0.0.1',1468711991),('df4b2e20f4288b5ce18b86eff9c8e4d0',2,'127.0.0.1',1464657804),('df822fb7457157f1f931898743f6fa73',2,'127.0.0.1',1479019482),('e032eb9cf3f39714ad93bf0b836427da',2,'127.0.0.1',1479226269),('e380598969de2cf8b027ead630ddbb47',2,'127.0.0.1',1479069483),('e4a18d5e4502f6eb92260b4c6d2fe8af',2,'127.0.0.1',1479617722),('e5045bf9baf0b42a41965938ed43cb28',2,'127.0.0.1',1479008511),('ee667ab8a2296e7a7bc8050e1d310406',2,'127.0.0.1',1479617711),('ee9c791286a8e14202049f430fa4d5dd',2,'127.0.0.1',1479190248),('eec4e4e37c5286be0594a2beba456739',2,'127.0.0.1',1479265510),('eee8faff76fe9a8b29adc93dba92a0c8',48,'127.0.0.1',1479342600),('f5b0bddddb533807396dc768a18ae19a',48,'127.0.0.1',1467673536),('f672a7ed383c4e5959aeff8b065d952a',48,'127.0.0.1',1479069080),('f83f57cf803df1e9619518e7fdbc5d3a',2,'127.0.0.1',1479443571),('fab590ee25399a45a5c6f0891f95ee6b',48,'127.0.0.1',1483324444),('fc0e93361495c512153e84023119b35e',50,'127.0.0.1',1481482593);
/*!40000 ALTER TABLE `phpbb_sessions_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_sitelist`
--

DROP TABLE IF EXISTS `phpbb_sitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_sitelist` (
  `site_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_sitelist`
--

LOCK TABLES `phpbb_sitelist` WRITE;
/*!40000 ALTER TABLE `phpbb_sitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_sitelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_smilies`
--

DROP TABLE IF EXISTS `phpbb_smilies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_smilies` (
  `smiley_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) unsigned NOT NULL DEFAULT 0,
  `smiley_height` smallint(4) unsigned NOT NULL DEFAULT 0,
  `smiley_order` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`smiley_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_smilies`
--

LOCK TABLES `phpbb_smilies` WRITE;
/*!40000 ALTER TABLE `phpbb_smilies` DISABLE KEYS */;
INSERT INTO `phpbb_smilies` VALUES (1,':D','Very Happy','icon_biggrin.gif',15,15,1,1),(2,':-D','Very Happy','icon_biggrin.gif',15,15,2,1),(3,':grin:','Very Happy','icon_biggrin.gif',15,15,3,1),(4,':)','Smile','icon_smile.gif',15,15,4,1),(5,':-)','Smile','icon_smile.gif',15,15,5,1),(6,':smile:','Smile','icon_smile.gif',15,15,6,1),(7,':(','Sad','icon_sad.gif',15,15,29,1),(8,':-(','Sad','icon_sad.gif',15,15,30,1),(9,':sad:','Sad','icon_sad.gif',15,15,31,1),(13,':shock:','Shocked','icon_eek.gif',15,15,28,1),(14,':?','Confused','icon_confused.gif',15,15,32,1),(15,':-?','Confused','icon_confused.gif',15,15,33,1),(16,':???:','Confused','icon_confused.gif',15,15,34,1),(18,'8-)','Cool','icon_cool.gif',15,15,19,1),(19,':cool:','Cool','icon_cool.gif',15,15,18,1),(20,':giggle:','Giggling','icon_lol.gif',15,15,10,1),(21,':x','Mad','icon_mad.gif',15,15,36,1),(22,':-x','Mad','icon_mad.gif',15,15,37,1),(23,':mad:','Mad','icon_mad.gif',15,15,35,1),(24,':P','Razz','icon_razz.gif',15,15,11,1),(25,':-P','Razz','icon_razz.gif',15,15,12,1),(26,':razz:','Razz','icon_razz.gif',15,15,13,1),(27,':oops:','Embarassed','icon_redface.gif',15,15,24,1),(28,':cry:','Crying or Very Sad','icon_cry.gif',15,15,38,1),(29,':evil:','Evil or Very Mad','icon_evil.gif',15,15,39,1),(30,':twisted:','Twisted Evil','icon_twisted.gif',15,15,41,1),(31,':roll:','Rolling Eyes','icon_rolleyes.gif',15,15,14,1),(32,':wink:','Wink','icon_wink.gif',15,15,15,1),(33,';)','Wink','icon_wink.gif',15,15,16,1),(34,';-)','Wink','icon_wink.gif',15,15,17,1),(35,':!:','Exclamation','icon_exclaim.gif',15,15,52,1),(36,':?:','Question','icon_question.gif',15,15,51,1),(37,':idea:','Idea','icon_idea.gif',15,15,53,1),(39,':|','Neutral','icon_neutral.gif',15,15,22,1),(40,':-|','Neutral','icon_neutral.gif',15,15,23,1),(41,':neutral:','Neutral','icon_neutral.gif',15,15,21,1),(42,':mrgreen:','Mr. Green','icon_mrgreen.gif',15,15,20,1),(43,':cop:','Police','icon_police.gif',15,17,45,1),(44,':shifty:','Shifty-Eyed','icon_shifty.gif',15,15,43,1),(49,':-o','Surprised','icon_surprised2.gif',15,15,26,1),(50,':o','Surprised','icon_surprised2.gif',15,15,25,1),(51,':igmeou:','IGMEOU','icon_igmeou.gif',15,15,42,1),(52,':nervous:','Nervous','icon_shifty.gif',15,15,44,1),(53,':eek:','Eek','icon_eek.gif',15,15,27,1),(55,':nerd:','Nerd','icon_geek.png',17,15,50,1),(56,':doctor:','Doc','icon_doctor.png',15,15,47,1),(57,':doc:','Doc','icon_doctor.png',15,15,46,1),(58,':down:','Down Arrow','icon_arrow_down.gif',15,15,56,1),(59,':left:','Left Arrow','icon_arrow_left.gif',15,15,57,1),(60,':right:','Right Arrow','icon_arrow_right.gif',15,15,55,1),(61,':up:','Up Arrow','icon_arrow_up.gif',15,15,54,1),(62,':good:','Good','icon_halo.png',15,15,40,1),(63,':dead:','Death','icon_skull.gif',15,15,48,1),(64,':]','Cheerful Smile','icon_smiling.png',15,15,7,1),(65,':facepalm:','Face, Meet Palm','icon_facepalm.gif',15,15,49,1),(66,':lol:','Laughing','icon_lol2.gif',15,15,8,1),(68,':laugh:','Laughing','icon_lol2.gif',15,15,9,1);
/*!40000 ALTER TABLE `phpbb_smilies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_styles`
--

DROP TABLE IF EXISTS `phpbb_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_styles` (
  `style_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `style_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `style_parent_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `style_parent_tree` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`style_id`),
  UNIQUE KEY `style_name` (`style_name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_styles`
--

LOCK TABLES `phpbb_styles` WRITE;
/*!40000 ALTER TABLE `phpbb_styles` DISABLE KEYS */;
INSERT INTO `phpbb_styles` VALUES (4,'mafSilver','┬® phpBB Group, 2007',1,'prosilver','lNg=',0,''),(12,'prosilver','┬® phpBB Group, 2007',0,'prosilver','lNg=',0,'');
/*!40000 ALTER TABLE `phpbb_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_teampage`
--

DROP TABLE IF EXISTS `phpbb_teampage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_teampage` (
  `teampage_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `teampage_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `teampage_position` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `teampage_parent` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`teampage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_teampage`
--

LOCK TABLES `phpbb_teampage` WRITE;
/*!40000 ALTER TABLE `phpbb_teampage` DISABLE KEYS */;
INSERT INTO `phpbb_teampage` VALUES (1,13637,'',1,0),(2,4,'',2,0);
/*!40000 ALTER TABLE `phpbb_teampage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_topics`
--

DROP TABLE IF EXISTS `phpbb_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_topics` (
  `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `topic_attachment` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `topic_reported` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` int(10) unsigned NOT NULL DEFAULT 0,
  `topic_time` int(11) unsigned NOT NULL DEFAULT 0,
  `topic_time_limit` int(11) unsigned NOT NULL DEFAULT 0,
  `topic_views` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `topic_status` tinyint(3) NOT NULL DEFAULT 0,
  `topic_type` tinyint(3) NOT NULL DEFAULT 0,
  `topic_first_post_id` int(10) unsigned NOT NULL DEFAULT 0,
  `topic_first_poster_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` int(10) unsigned NOT NULL DEFAULT 0,
  `topic_last_poster_id` int(10) unsigned NOT NULL DEFAULT 0,
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) unsigned NOT NULL DEFAULT 0,
  `topic_last_view_time` int(11) unsigned NOT NULL DEFAULT 0,
  `topic_moved_id` int(10) unsigned NOT NULL DEFAULT 0,
  `topic_bumped` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `topic_bumper` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) unsigned NOT NULL DEFAULT 0,
  `poll_length` int(11) unsigned NOT NULL DEFAULT 0,
  `poll_max_options` tinyint(4) NOT NULL DEFAULT 1,
  `poll_last_vote` int(11) unsigned NOT NULL DEFAULT 0,
  `poll_vote_change` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `is_private` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `autolock_time` int(11) unsigned NOT NULL DEFAULT 0,
  `autolock_input` varchar(32) COLLATE utf8_bin DEFAULT '',
  `topic_visibility` tinyint(3) NOT NULL DEFAULT 0,
  `topic_delete_time` int(11) unsigned NOT NULL DEFAULT 0,
  `topic_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_delete_user` int(10) unsigned NOT NULL DEFAULT 0,
  `topic_posts_approved` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `topic_posts_unapproved` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `topic_posts_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `forum_id_type` (`forum_id`,`topic_type`),
  KEY `last_post_time` (`topic_last_post_time`),
  KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`),
  KEY `autolock_time` (`autolock_time`),
  KEY `topic_visibility` (`topic_visibility`),
  KEY `forum_vis_last` (`forum_id`,`topic_visibility`,`topic_last_post_id`),
  KEY `latest_topics` (`forum_id`,`topic_last_post_time`,`topic_last_post_id`,`topic_moved_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_topics`
--

LOCK TABLES `phpbb_topics` WRITE;
/*!40000 ALTER TABLE `phpbb_topics` DISABLE KEYS */;
INSERT INTO `phpbb_topics` VALUES (1,2,0,0,0,'Welcome to phpBB3',2,1446363796,0,15,1,0,2,'Kison','AA0000',2,2,'Kison','AA0000','',1446363796,1478927344,0,0,0,'',0,0,1,0,0,0,0,'',1,0,'',0,1,0,0),(3,90,0,0,0,'Test',2,1460682724,0,11,0,0,4,'Kison','AA0000',4,2,'Kison','AA0000','Test',1460682724,1482710000,0,0,0,'',0,0,1,0,0,1,0,'',1,0,'',0,1,0,0),(4,2,0,0,0,'Autolock',2,1461044050,0,216,0,0,5,'Kison','AA0000',31,48,'test','','',1479865393,1483325138,0,0,0,'',0,0,1,0,0,0,0,'',1,0,'',0,7,0,0),(5,2,0,0,0,'Autolock 2',2,1461044185,0,37,1,0,6,'Kison','AA0000',22,2,'Kison','AA0000','',1462072370,1478927278,0,0,0,'',0,0,1,0,0,0,0,'',1,0,'',0,2,0,0),(6,2,0,0,0,'test',48,1461830546,0,1,0,0,7,'test','',7,48,'test','','test',1461830546,1461831362,0,0,0,'',0,0,1,0,0,0,0,'',1,0,'',0,1,0,0),(7,2,0,0,0,'Test',48,1461831257,0,9,1,0,8,'test','',8,48,'test','','Test',1461831257,1461946227,0,0,0,'',0,0,1,0,0,0,0,'',1,0,'',0,1,0,0),(8,4,0,0,0,'Test',48,1461946830,0,9,1,0,9,'test','',9,48,'test','','Test',1461946830,1481480021,0,0,0,'',0,0,1,0,0,0,1462233600,'2016-05-03 00:00:00 0.00',1,0,'',0,1,0,0),(9,90,0,0,0,'My Private Topic',48,1461996466,0,8,0,0,10,'test','',10,48,'test','','My Private Topic',1461996466,1483325576,0,0,0,'',0,0,1,0,0,1,0,'',1,0,'',0,1,0,0),(10,2,0,0,0,'My global.',2,1462003387,0,9,0,3,11,'Kison','AA0000',21,2,'Kison','AA0000','',1462004319,1462004325,0,0,0,'',0,0,1,0,0,0,0,'',1,0,'',0,11,0,0),(11,3,0,0,0,'Large Theme 1 - Game One',2,1466053276,0,0,0,0,23,'Kison','AA0000',23,2,'Kison','AA0000','Large Theme 1 - Game One',1466053276,1466053276,0,0,0,'',0,0,1,0,0,0,0,'',1,0,'',0,1,0,0),(12,4,0,0,0,'Mini Normal 1 - Awesome Game',2,1466058261,0,7,0,0,24,'Kison','AA0000',27,48,'test','','',1478927370,1482710610,0,0,0,'',0,0,1,0,0,0,0,'',1,0,'',0,2,0,0),(13,90,0,0,0,'PT3',2,1480232803,0,6,0,0,32,'Kison','AA0000',32,2,'Kison','AA0000','PT3',1480232803,1480571088,0,0,0,'',0,0,1,0,0,1,0,'',1,0,'',0,1,0,0),(14,90,0,0,0,'PT4',2,1480232816,0,55,0,0,33,'Kison','AA0000',38,48,'test','','',1482715828,1483523414,0,0,0,'',0,0,1,0,0,1,0,'',1,0,'',0,6,0,0);
/*!40000 ALTER TABLE `phpbb_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_topics_posted`
--

DROP TABLE IF EXISTS `phpbb_topics_posted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_topics_posted` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `topic_id` int(10) unsigned NOT NULL DEFAULT 0,
  `topic_posted` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`,`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_topics_posted`
--

LOCK TABLES `phpbb_topics_posted` WRITE;
/*!40000 ALTER TABLE `phpbb_topics_posted` DISABLE KEYS */;
INSERT INTO `phpbb_topics_posted` VALUES (2,1,1),(2,3,1),(2,4,1),(2,5,1),(2,10,1),(2,11,1),(2,12,1),(2,13,1),(2,14,1),(48,4,1),(48,6,1),(48,7,1),(48,8,1),(48,9,1),(48,10,1),(48,12,1),(48,14,1);
/*!40000 ALTER TABLE `phpbb_topics_posted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_topics_track`
--

DROP TABLE IF EXISTS `phpbb_topics_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_topics_track` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `topic_id` int(10) unsigned NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `mark_time` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`,`topic_id`),
  KEY `topic_id` (`topic_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_topics_track`
--

LOCK TABLES `phpbb_topics_track` WRITE;
/*!40000 ALTER TABLE `phpbb_topics_track` DISABLE KEYS */;
INSERT INTO `phpbb_topics_track` VALUES (2,14,90,1483326307),(48,13,90,1480232803),(48,14,90,1483325806);
/*!40000 ALTER TABLE `phpbb_topics_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_topics_watch`
--

DROP TABLE IF EXISTS `phpbb_topics_watch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_topics_watch` (
  `topic_id` int(10) unsigned NOT NULL DEFAULT 0,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT 0,
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_topics_watch`
--

LOCK TABLES `phpbb_topics_watch` WRITE;
/*!40000 ALTER TABLE `phpbb_topics_watch` DISABLE KEYS */;
INSERT INTO `phpbb_topics_watch` VALUES (12,2,0),(14,2,0),(13,48,0),(9,48,0),(3,48,0),(4,2,0),(4,48,0),(14,48,0);
/*!40000 ALTER TABLE `phpbb_topics_watch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_user_group`
--

DROP TABLE IF EXISTS `phpbb_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_user_group` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `group_leader` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `user_pending` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `auto_remove_time` int(11) NOT NULL DEFAULT 0,
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `group_leader` (`group_leader`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_user_group`
--

LOCK TABLES `phpbb_user_group` WRITE;
/*!40000 ALTER TABLE `phpbb_user_group` DISABLE KEYS */;
INSERT INTO `phpbb_user_group` VALUES (1,1,0,0,0),(2,2,0,0,0),(4,2,0,0,0),(13637,2,1,0,0),(6,3,0,0,0),(6,4,0,0,0),(6,5,0,0,0),(6,6,0,0,0),(6,7,0,0,0),(6,8,0,0,0),(6,9,0,0,0),(6,10,0,0,0),(6,11,0,0,0),(6,12,0,0,0),(6,13,0,0,0),(6,14,0,0,0),(6,15,0,0,0),(6,16,0,0,0),(6,17,0,0,0),(6,18,0,0,0),(6,19,0,0,0),(6,20,0,0,0),(6,21,0,0,0),(6,22,0,0,0),(6,23,0,0,0),(6,24,0,0,0),(6,25,0,0,0),(6,26,0,0,0),(6,27,0,0,0),(6,28,0,0,0),(6,29,0,0,0),(6,30,0,0,0),(6,31,0,0,0),(6,32,0,0,0),(6,33,0,0,0),(6,34,0,0,0),(6,35,0,0,0),(6,36,0,0,0),(6,37,0,0,0),(6,38,0,0,0),(6,39,0,0,0),(6,40,0,0,0),(6,41,0,0,0),(6,42,0,0,0),(6,43,0,0,0),(6,44,0,0,0),(6,45,0,0,0),(6,46,0,0,0),(6,47,0,0,0),(2,48,0,0,0),(8,48,0,0,0),(172,2,0,0,0),(171,2,0,0,0),(2,49,0,0,0),(7,49,0,0,0),(13662,2,1,0,0),(1,48,0,0,0),(13663,2,0,0,0),(13663,48,0,0,0),(2,50,0,0,0),(7,50,0,0,0),(2,51,0,0,0),(7,51,0,0,0),(2,52,0,0,0),(7,52,0,0,0);
/*!40000 ALTER TABLE `phpbb_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_user_notifications`
--

DROP TABLE IF EXISTS `phpbb_user_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_user_notifications` (
  `item_type` varchar(165) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_id` int(10) unsigned NOT NULL DEFAULT 0,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `method` varchar(165) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notify` tinyint(1) unsigned NOT NULL DEFAULT 1,
  UNIQUE KEY `itm_usr_mthd` (`item_type`,`item_id`,`user_id`,`method`),
  KEY `user_id` (`user_id`),
  KEY `uid_itm_id` (`user_id`,`item_id`),
  KEY `usr_itm_tpe` (`user_id`,`item_type`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_user_notifications`
--

LOCK TABLES `phpbb_user_notifications` WRITE;
/*!40000 ALTER TABLE `phpbb_user_notifications` DISABLE KEYS */;
INSERT INTO `phpbb_user_notifications` VALUES ('notification.type.pm',0,1,'notification.method.board',1),('notification.type.pm',0,1,'notification.method.email',1),('notification.type.pm',0,2,'notification.method.board',1),('notification.type.pm',0,2,'notification.method.email',1),('notification.type.pm',0,3,'notification.method.board',1),('notification.type.pm',0,3,'notification.method.email',1),('notification.type.pm',0,4,'notification.method.board',1),('notification.type.pm',0,4,'notification.method.email',1),('notification.type.pm',0,5,'notification.method.board',1),('notification.type.pm',0,5,'notification.method.email',1),('notification.type.pm',0,6,'notification.method.board',1),('notification.type.pm',0,6,'notification.method.email',1),('notification.type.pm',0,7,'notification.method.board',1),('notification.type.pm',0,7,'notification.method.email',1),('notification.type.pm',0,8,'notification.method.board',1),('notification.type.pm',0,8,'notification.method.email',1),('notification.type.pm',0,9,'notification.method.board',1),('notification.type.pm',0,9,'notification.method.email',1),('notification.type.pm',0,10,'notification.method.board',1),('notification.type.pm',0,10,'notification.method.email',1),('notification.type.pm',0,11,'notification.method.board',1),('notification.type.pm',0,11,'notification.method.email',1),('notification.type.pm',0,12,'notification.method.board',1),('notification.type.pm',0,12,'notification.method.email',1),('notification.type.pm',0,13,'notification.method.board',1),('notification.type.pm',0,13,'notification.method.email',1),('notification.type.pm',0,14,'notification.method.board',1),('notification.type.pm',0,14,'notification.method.email',1),('notification.type.pm',0,15,'notification.method.board',1),('notification.type.pm',0,15,'notification.method.email',1),('notification.type.pm',0,16,'notification.method.board',1),('notification.type.pm',0,16,'notification.method.email',1),('notification.type.pm',0,17,'notification.method.board',1),('notification.type.pm',0,17,'notification.method.email',1),('notification.type.pm',0,18,'notification.method.board',1),('notification.type.pm',0,18,'notification.method.email',1),('notification.type.pm',0,19,'notification.method.board',1),('notification.type.pm',0,19,'notification.method.email',1),('notification.type.pm',0,20,'notification.method.board',1),('notification.type.pm',0,20,'notification.method.email',1),('notification.type.pm',0,21,'notification.method.board',1),('notification.type.pm',0,21,'notification.method.email',1),('notification.type.pm',0,22,'notification.method.board',1),('notification.type.pm',0,22,'notification.method.email',1),('notification.type.pm',0,23,'notification.method.board',1),('notification.type.pm',0,23,'notification.method.email',1),('notification.type.pm',0,24,'notification.method.board',1),('notification.type.pm',0,24,'notification.method.email',1),('notification.type.pm',0,25,'notification.method.board',1),('notification.type.pm',0,25,'notification.method.email',1),('notification.type.pm',0,26,'notification.method.board',1),('notification.type.pm',0,26,'notification.method.email',1),('notification.type.pm',0,27,'notification.method.board',1),('notification.type.pm',0,27,'notification.method.email',1),('notification.type.pm',0,28,'notification.method.board',1),('notification.type.pm',0,28,'notification.method.email',1),('notification.type.pm',0,29,'notification.method.board',1),('notification.type.pm',0,29,'notification.method.email',1),('notification.type.pm',0,30,'notification.method.board',1),('notification.type.pm',0,30,'notification.method.email',1),('notification.type.pm',0,31,'notification.method.board',1),('notification.type.pm',0,31,'notification.method.email',1),('notification.type.pm',0,32,'notification.method.board',1),('notification.type.pm',0,32,'notification.method.email',1),('notification.type.pm',0,33,'notification.method.board',1),('notification.type.pm',0,33,'notification.method.email',1),('notification.type.pm',0,34,'notification.method.board',1),('notification.type.pm',0,34,'notification.method.email',1),('notification.type.pm',0,35,'notification.method.board',1),('notification.type.pm',0,35,'notification.method.email',1),('notification.type.pm',0,36,'notification.method.board',1),('notification.type.pm',0,36,'notification.method.email',1),('notification.type.pm',0,37,'notification.method.board',1),('notification.type.pm',0,37,'notification.method.email',1),('notification.type.pm',0,38,'notification.method.board',1),('notification.type.pm',0,38,'notification.method.email',1),('notification.type.pm',0,39,'notification.method.board',1),('notification.type.pm',0,39,'notification.method.email',1),('notification.type.pm',0,40,'notification.method.board',1),('notification.type.pm',0,40,'notification.method.email',1),('notification.type.pm',0,41,'notification.method.board',1),('notification.type.pm',0,41,'notification.method.email',1),('notification.type.pm',0,42,'notification.method.board',1),('notification.type.pm',0,42,'notification.method.email',1),('notification.type.pm',0,43,'notification.method.board',1),('notification.type.pm',0,43,'notification.method.email',1),('notification.type.pm',0,44,'notification.method.board',1),('notification.type.pm',0,44,'notification.method.email',1),('notification.type.pm',0,45,'notification.method.board',1),('notification.type.pm',0,45,'notification.method.email',1),('notification.type.pm',0,46,'notification.method.board',1),('notification.type.pm',0,46,'notification.method.email',1),('notification.type.pm',0,47,'notification.method.board',1),('notification.type.pm',0,47,'notification.method.email',1),('notification.type.pm',0,48,'notification.method.board',1),('notification.type.pm',0,48,'notification.method.email',1),('notification.type.pm',0,49,'notification.method.board',1),('notification.type.pm',0,49,'notification.method.email',1),('notification.type.pm',0,50,'notification.method.board',1),('notification.type.pm',0,50,'notification.method.email',1),('notification.type.pm',0,51,'notification.method.board',1),('notification.type.pm',0,51,'notification.method.email',1),('notification.type.pm',0,52,'notification.method.board',1),('notification.type.pm',0,52,'notification.method.email',1),('notification.type.post',0,1,'notification.method.board',1),('notification.type.post',0,1,'notification.method.email',1),('notification.type.post',0,2,'notification.method.board',1),('notification.type.post',0,2,'notification.method.email',1),('notification.type.post',0,3,'notification.method.board',1),('notification.type.post',0,3,'notification.method.email',1),('notification.type.post',0,4,'notification.method.board',1),('notification.type.post',0,4,'notification.method.email',1),('notification.type.post',0,5,'notification.method.board',1),('notification.type.post',0,5,'notification.method.email',1),('notification.type.post',0,6,'notification.method.board',1),('notification.type.post',0,6,'notification.method.email',1),('notification.type.post',0,7,'notification.method.board',1),('notification.type.post',0,7,'notification.method.email',1),('notification.type.post',0,8,'notification.method.board',1),('notification.type.post',0,8,'notification.method.email',1),('notification.type.post',0,9,'notification.method.board',1),('notification.type.post',0,9,'notification.method.email',1),('notification.type.post',0,10,'notification.method.board',1),('notification.type.post',0,10,'notification.method.email',1),('notification.type.post',0,11,'notification.method.board',1),('notification.type.post',0,11,'notification.method.email',1),('notification.type.post',0,12,'notification.method.board',1),('notification.type.post',0,12,'notification.method.email',1),('notification.type.post',0,13,'notification.method.board',1),('notification.type.post',0,13,'notification.method.email',1),('notification.type.post',0,14,'notification.method.board',1),('notification.type.post',0,14,'notification.method.email',1),('notification.type.post',0,15,'notification.method.board',1),('notification.type.post',0,15,'notification.method.email',1),('notification.type.post',0,16,'notification.method.board',1),('notification.type.post',0,16,'notification.method.email',1),('notification.type.post',0,17,'notification.method.board',1),('notification.type.post',0,17,'notification.method.email',1),('notification.type.post',0,18,'notification.method.board',1),('notification.type.post',0,18,'notification.method.email',1),('notification.type.post',0,19,'notification.method.board',1),('notification.type.post',0,19,'notification.method.email',1),('notification.type.post',0,20,'notification.method.board',1),('notification.type.post',0,20,'notification.method.email',1),('notification.type.post',0,21,'notification.method.board',1),('notification.type.post',0,21,'notification.method.email',1),('notification.type.post',0,22,'notification.method.board',1),('notification.type.post',0,22,'notification.method.email',1),('notification.type.post',0,23,'notification.method.board',1),('notification.type.post',0,23,'notification.method.email',1),('notification.type.post',0,24,'notification.method.board',1),('notification.type.post',0,24,'notification.method.email',1),('notification.type.post',0,25,'notification.method.board',1),('notification.type.post',0,25,'notification.method.email',1),('notification.type.post',0,26,'notification.method.board',1),('notification.type.post',0,26,'notification.method.email',1),('notification.type.post',0,27,'notification.method.board',1),('notification.type.post',0,27,'notification.method.email',1),('notification.type.post',0,28,'notification.method.board',1),('notification.type.post',0,28,'notification.method.email',1),('notification.type.post',0,29,'notification.method.board',1),('notification.type.post',0,29,'notification.method.email',1),('notification.type.post',0,30,'notification.method.board',1),('notification.type.post',0,30,'notification.method.email',1),('notification.type.post',0,31,'notification.method.board',1),('notification.type.post',0,31,'notification.method.email',1),('notification.type.post',0,32,'notification.method.board',1),('notification.type.post',0,32,'notification.method.email',1),('notification.type.post',0,33,'notification.method.board',1),('notification.type.post',0,33,'notification.method.email',1),('notification.type.post',0,34,'notification.method.board',1),('notification.type.post',0,34,'notification.method.email',1),('notification.type.post',0,35,'notification.method.board',1),('notification.type.post',0,35,'notification.method.email',1),('notification.type.post',0,36,'notification.method.board',1),('notification.type.post',0,36,'notification.method.email',1),('notification.type.post',0,37,'notification.method.board',1),('notification.type.post',0,37,'notification.method.email',1),('notification.type.post',0,38,'notification.method.board',1),('notification.type.post',0,38,'notification.method.email',1),('notification.type.post',0,39,'notification.method.board',1),('notification.type.post',0,39,'notification.method.email',1),('notification.type.post',0,40,'notification.method.board',1),('notification.type.post',0,40,'notification.method.email',1),('notification.type.post',0,41,'notification.method.board',1),('notification.type.post',0,41,'notification.method.email',1),('notification.type.post',0,42,'notification.method.board',1),('notification.type.post',0,42,'notification.method.email',1),('notification.type.post',0,43,'notification.method.board',1),('notification.type.post',0,43,'notification.method.email',1),('notification.type.post',0,44,'notification.method.board',1),('notification.type.post',0,44,'notification.method.email',1),('notification.type.post',0,45,'notification.method.board',1),('notification.type.post',0,45,'notification.method.email',1),('notification.type.post',0,46,'notification.method.board',1),('notification.type.post',0,46,'notification.method.email',1),('notification.type.post',0,47,'notification.method.board',1),('notification.type.post',0,47,'notification.method.email',1),('notification.type.post',0,48,'notification.method.board',1),('notification.type.post',0,48,'notification.method.email',1),('notification.type.post',0,49,'notification.method.board',1),('notification.type.post',0,49,'notification.method.email',1),('notification.type.post',0,50,'notification.method.board',1),('notification.type.post',0,50,'notification.method.email',1),('notification.type.post',0,51,'notification.method.board',1),('notification.type.post',0,51,'notification.method.email',1),('notification.type.post',0,52,'notification.method.board',1),('notification.type.post',0,52,'notification.method.email',1),('notification.type.topic',0,1,'notification.method.board',1),('notification.type.topic',0,1,'notification.method.email',1),('notification.type.topic',0,2,'notification.method.board',1),('notification.type.topic',0,2,'notification.method.email',1),('notification.type.topic',0,3,'notification.method.board',1),('notification.type.topic',0,3,'notification.method.email',1),('notification.type.topic',0,4,'notification.method.board',1),('notification.type.topic',0,4,'notification.method.email',1),('notification.type.topic',0,5,'notification.method.board',1),('notification.type.topic',0,5,'notification.method.email',1),('notification.type.topic',0,6,'notification.method.board',1),('notification.type.topic',0,6,'notification.method.email',1),('notification.type.topic',0,7,'notification.method.board',1),('notification.type.topic',0,7,'notification.method.email',1),('notification.type.topic',0,8,'notification.method.board',1),('notification.type.topic',0,8,'notification.method.email',1),('notification.type.topic',0,9,'notification.method.board',1),('notification.type.topic',0,9,'notification.method.email',1),('notification.type.topic',0,10,'notification.method.board',1),('notification.type.topic',0,10,'notification.method.email',1),('notification.type.topic',0,11,'notification.method.board',1),('notification.type.topic',0,11,'notification.method.email',1),('notification.type.topic',0,12,'notification.method.board',1),('notification.type.topic',0,12,'notification.method.email',1),('notification.type.topic',0,13,'notification.method.board',1),('notification.type.topic',0,13,'notification.method.email',1),('notification.type.topic',0,14,'notification.method.board',1),('notification.type.topic',0,14,'notification.method.email',1),('notification.type.topic',0,15,'notification.method.board',1),('notification.type.topic',0,15,'notification.method.email',1),('notification.type.topic',0,16,'notification.method.board',1),('notification.type.topic',0,16,'notification.method.email',1),('notification.type.topic',0,17,'notification.method.board',1),('notification.type.topic',0,17,'notification.method.email',1),('notification.type.topic',0,18,'notification.method.board',1),('notification.type.topic',0,18,'notification.method.email',1),('notification.type.topic',0,19,'notification.method.board',1),('notification.type.topic',0,19,'notification.method.email',1),('notification.type.topic',0,20,'notification.method.board',1),('notification.type.topic',0,20,'notification.method.email',1),('notification.type.topic',0,21,'notification.method.board',1),('notification.type.topic',0,21,'notification.method.email',1),('notification.type.topic',0,22,'notification.method.board',1),('notification.type.topic',0,22,'notification.method.email',1),('notification.type.topic',0,23,'notification.method.board',1),('notification.type.topic',0,23,'notification.method.email',1),('notification.type.topic',0,24,'notification.method.board',1),('notification.type.topic',0,24,'notification.method.email',1),('notification.type.topic',0,25,'notification.method.board',1),('notification.type.topic',0,25,'notification.method.email',1),('notification.type.topic',0,26,'notification.method.board',1),('notification.type.topic',0,26,'notification.method.email',1),('notification.type.topic',0,27,'notification.method.board',1),('notification.type.topic',0,27,'notification.method.email',1),('notification.type.topic',0,28,'notification.method.board',1),('notification.type.topic',0,28,'notification.method.email',1),('notification.type.topic',0,29,'notification.method.board',1),('notification.type.topic',0,29,'notification.method.email',1),('notification.type.topic',0,30,'notification.method.board',1),('notification.type.topic',0,30,'notification.method.email',1),('notification.type.topic',0,31,'notification.method.board',1),('notification.type.topic',0,31,'notification.method.email',1),('notification.type.topic',0,32,'notification.method.board',1),('notification.type.topic',0,32,'notification.method.email',1),('notification.type.topic',0,33,'notification.method.board',1),('notification.type.topic',0,33,'notification.method.email',1),('notification.type.topic',0,34,'notification.method.board',1),('notification.type.topic',0,34,'notification.method.email',1),('notification.type.topic',0,35,'notification.method.board',1),('notification.type.topic',0,35,'notification.method.email',1),('notification.type.topic',0,36,'notification.method.board',1),('notification.type.topic',0,36,'notification.method.email',1),('notification.type.topic',0,37,'notification.method.board',1),('notification.type.topic',0,37,'notification.method.email',1),('notification.type.topic',0,38,'notification.method.board',1),('notification.type.topic',0,38,'notification.method.email',1),('notification.type.topic',0,39,'notification.method.board',1),('notification.type.topic',0,39,'notification.method.email',1),('notification.type.topic',0,40,'notification.method.board',1),('notification.type.topic',0,40,'notification.method.email',1),('notification.type.topic',0,41,'notification.method.board',1),('notification.type.topic',0,41,'notification.method.email',1),('notification.type.topic',0,42,'notification.method.board',1),('notification.type.topic',0,42,'notification.method.email',1),('notification.type.topic',0,43,'notification.method.board',1),('notification.type.topic',0,43,'notification.method.email',1),('notification.type.topic',0,44,'notification.method.board',1),('notification.type.topic',0,44,'notification.method.email',1),('notification.type.topic',0,45,'notification.method.board',1),('notification.type.topic',0,45,'notification.method.email',1),('notification.type.topic',0,46,'notification.method.board',1),('notification.type.topic',0,46,'notification.method.email',1),('notification.type.topic',0,47,'notification.method.board',1),('notification.type.topic',0,47,'notification.method.email',1),('notification.type.topic',0,48,'notification.method.board',1),('notification.type.topic',0,48,'notification.method.email',1),('notification.type.topic',0,49,'notification.method.board',1),('notification.type.topic',0,49,'notification.method.email',1),('notification.type.topic',0,50,'notification.method.board',1),('notification.type.topic',0,50,'notification.method.email',1),('notification.type.topic',0,51,'notification.method.board',1),('notification.type.topic',0,51,'notification.method.email',1),('notification.type.topic',0,52,'notification.method.board',1),('notification.type.topic',0,52,'notification.method.email',1);
/*!40000 ALTER TABLE `phpbb_user_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_users`
--

DROP TABLE IF EXISTS `phpbb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(2) NOT NULL DEFAULT 0,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT 3,
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) unsigned NOT NULL DEFAULT 0,
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) unsigned NOT NULL DEFAULT 0,
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_email_hash` bigint(20) NOT NULL DEFAULT 0,
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) unsigned NOT NULL DEFAULT 0,
  `user_lastmark` int(11) unsigned NOT NULL DEFAULT 0,
  `user_lastpost_time` int(11) unsigned NOT NULL DEFAULT 0,
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) unsigned NOT NULL DEFAULT 0,
  `user_warnings` tinyint(4) NOT NULL DEFAULT 0,
  `user_last_warning` int(11) unsigned NOT NULL DEFAULT 0,
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT 0,
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT 0,
  `user_inactive_time` int(11) unsigned NOT NULL DEFAULT 0,
  `user_posts` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_dateformat` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `user_rank` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT 0,
  `user_unread_privmsg` int(4) NOT NULL DEFAULT 0,
  `user_last_privmsg` int(11) unsigned NOT NULL DEFAULT 0,
  `user_message_rules` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `user_full_folder` int(11) NOT NULL DEFAULT -3,
  `user_emailtime` int(11) unsigned NOT NULL DEFAULT 0,
  `user_topic_show_days` smallint(4) unsigned NOT NULL DEFAULT 0,
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) unsigned NOT NULL DEFAULT 0,
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `user_notify_pm` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `user_notify_type` tinyint(4) NOT NULL DEFAULT 0,
  `user_allow_pm` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `user_allow_viewonline` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `user_allow_viewemail` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `user_allow_massemail` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `user_options` int(11) unsigned NOT NULL DEFAULT 230271,
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_width` smallint(4) unsigned NOT NULL DEFAULT 0,
  `user_avatar_height` smallint(4) unsigned NOT NULL DEFAULT 0,
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_skype` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_facebook` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_twitter` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_newpasswd` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `user_reminded` tinyint(4) NOT NULL DEFAULT 0,
  `user_reminded_time` int(11) unsigned NOT NULL DEFAULT 0,
  `user_topic_preview` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `user_old_emails` text COLLATE utf8_bin NULL,
  `user_vla_start` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_vla_till` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_clean` (`username_clean`),
  KEY `user_birthday` (`user_birthday`),
  KEY `user_email_hash` (`user_email_hash`),
  KEY `user_type` (`user_type`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_users`
--

LOCK TABLES `phpbb_users` WRITE;
/*!40000 ALTER TABLE `phpbb_users` DISABLE KEYS */;
INSERT INTO `phpbb_users` VALUES (1,2,1,'',0,'',1446356056,'Anonymous','anonymous','',0,'',0,'',0,0,0,'','',0,0,0,0,0,0,0,'en','UTC','d M Y H:i',4,0,'',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,230271,'','0',0,0,'','','','','','','','','','caa3d056374e0113',1,0,0,1,'','',''),(2,3,13637,'',0,'127.0.0.1',1446356056,'Kison','kison','$H$95RZYDX.a.15xhdvGuKswSrtxWtgGM0',1446364132,'studmcmuffin@mafiascum.net',361983026626,' 0- 0-   0',1483525180,1479865368,1482715652,'index.php','29J2OR406J',1483523408,0,0,0,0,0,20,'en','Etc/GMT+4','D M d, Y g:i a',4,1,'AA0000',1,1,1476208699,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,1,21201791,'2_1467610518.gif','avatar.driver.upload',80,80,'','','','','','','','','','4d836dc58b9767b3',0,0,0,1,'','',''),(3,2,6,'',0,'',1446356057,'AdsBot [Google]','adsbot [google]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','3397b816c1c63801',0,0,0,1,'','',''),(4,2,6,'',0,'',1446356057,'Alexa [Bot]','alexa [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','85c0b6729c5d2054',0,0,0,1,'','',''),(5,2,6,'',0,'',1446356057,'Alta Vista [Bot]','alta vista [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','a2d60caca52b3ef6',0,0,0,1,'','',''),(6,2,6,'',0,'',1446356057,'Ask Jeeves [Bot]','ask jeeves [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','2c11c3bac865ec23',0,0,0,1,'','',''),(7,2,6,'',0,'',1446356057,'Baidu [Spider]','baidu [spider]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','cdc082f443447cb6',0,0,0,1,'','',''),(8,2,6,'',0,'',1446356057,'Bing [Bot]','bing [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','6f0efeac49a93126',0,0,0,1,'','',''),(9,2,6,'',0,'',1446356057,'Exabot [Bot]','exabot [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','e54c690e2b2cfe6b',0,0,0,1,'','',''),(10,2,6,'',0,'',1446356057,'FAST Enterprise [Crawler]','fast enterprise [crawler]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','108c8504504153d2',0,0,0,1,'','',''),(11,2,6,'',0,'',1446356057,'FAST WebCrawler [Crawler]','fast webcrawler [crawler]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','af220eac82d74c5c',0,0,0,1,'','',''),(12,2,6,'',0,'',1446356057,'Francis [Bot]','francis [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','305772da8f3841fc',0,0,0,1,'','',''),(13,2,6,'',0,'',1446356057,'Gigabot [Bot]','gigabot [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','2c0140bc62da5bd5',0,0,0,1,'','',''),(14,2,6,'',0,'',1446356057,'Google Adsense [Bot]','google adsense [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','5a3e672c50ac14ea',0,0,0,1,'','',''),(15,2,6,'',0,'',1446356057,'Google Desktop','google desktop','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','a01d9387cc6a5752',0,0,0,1,'','',''),(16,2,6,'',0,'',1446356057,'Google Feedfetcher','google feedfetcher','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','826295fdbb5c7c5d',0,0,0,1,'','',''),(17,2,6,'',0,'',1446356057,'Google [Bot]','google [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','4b5c15c4613820d1',0,0,0,1,'','',''),(18,2,6,'',0,'',1446356057,'Heise IT-Markt [Crawler]','heise it-markt [crawler]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','b4f8ee7e749e98c0',0,0,0,1,'','',''),(19,2,6,'',0,'',1446356057,'Heritrix [Crawler]','heritrix [crawler]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','cb22f37b3b693751',0,0,0,1,'','',''),(20,2,6,'',0,'',1446356057,'IBM Research [Bot]','ibm research [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','b881f234db3fde01',0,0,0,1,'','',''),(21,2,6,'',0,'',1446356057,'ICCrawler - ICjobs','iccrawler - icjobs','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','768c75a54a0f28ff',0,0,0,1,'','',''),(22,2,6,'',0,'',1446356057,'ichiro [Crawler]','ichiro [crawler]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','5d4f2f722aec6f6c',0,0,0,1,'','',''),(23,2,6,'',0,'',1446356057,'Majestic-12 [Bot]','majestic-12 [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','5ca04bf488f6a34c',0,0,0,1,'','',''),(24,2,6,'',0,'',1446356057,'Metager [Bot]','metager [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','b2445f3431039a4e',0,0,0,1,'','',''),(25,2,6,'',0,'',1446356057,'MSN NewsBlogs','msn newsblogs','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','4b8ce7f10e67f1a8',0,0,0,1,'','',''),(26,2,6,'',0,'',1446356057,'MSN [Bot]','msn [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','5434b7a868ecb7bc',0,0,0,1,'','',''),(27,2,6,'',0,'',1446356057,'MSNbot Media','msnbot media','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','86c10bf4a811ea16',0,0,0,1,'','',''),(28,2,6,'',0,'',1446356057,'Nutch [Bot]','nutch [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','7acbe806799969f6',0,0,0,1,'','',''),(29,2,6,'',0,'',1446356057,'Online link [Validator]','online link [validator]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','b3f2ab7fa535ce37',0,0,0,1,'','',''),(30,2,6,'',0,'',1446356057,'psbot [Picsearch]','psbot [picsearch]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','9ca162e2447184fb',0,0,0,1,'','',''),(31,2,6,'',0,'',1446356057,'Sensis [Crawler]','sensis [crawler]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','90403ca72e60c8dd',0,0,0,1,'','',''),(32,2,6,'',0,'',1446356057,'SEO Crawler','seo crawler','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','525d982b1476e7b8',0,0,0,1,'','',''),(33,2,6,'',0,'',1446356057,'Seoma [Crawler]','seoma [crawler]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','53ccf78b763941ce',0,0,0,1,'','',''),(34,2,6,'',0,'',1446356057,'SEOSearch [Crawler]','seosearch [crawler]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','84d86fd3d2eb3e4f',0,0,0,1,'','',''),(35,2,6,'',0,'',1446356057,'Snappy [Bot]','snappy [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','acff6111705ef16b',0,0,0,1,'','',''),(36,2,6,'',0,'',1446356057,'Steeler [Crawler]','steeler [crawler]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','f803e1cfdedb720b',0,0,0,1,'','',''),(37,2,6,'',0,'',1446356057,'Telekom [Bot]','telekom [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','61884930ac0a0c54',0,0,0,1,'','',''),(38,2,6,'',0,'',1446356057,'TurnitinBot [Bot]','turnitinbot [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','04850c592413f14a',0,0,0,1,'','',''),(39,2,6,'',0,'',1446356057,'Voyager [Bot]','voyager [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','d8f1e75745b18b7e',0,0,0,1,'','',''),(40,2,6,'',0,'',1446356057,'W3 [Sitesearch]','w3 [sitesearch]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','d3f1f5cb14c3863a',0,0,0,1,'','',''),(41,2,6,'',0,'',1446356057,'W3C [Linkcheck]','w3c [linkcheck]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','7cc3aa796961a01b',0,0,0,1,'','',''),(42,2,6,'',0,'',1446356057,'W3C [Validator]','w3c [validator]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','952475799f4d23cf',0,0,0,1,'','',''),(43,2,6,'',0,'',1446356057,'YaCy [Bot]','yacy [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','8fba3df6e3ffe4b6',0,0,0,1,'','',''),(44,2,6,'',0,'',1446356057,'Yahoo MMCrawler [Bot]','yahoo mmcrawler [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','5b7955b459d260a6',0,0,0,1,'','',''),(45,2,6,'',0,'',1446356057,'Yahoo Slurp [Bot]','yahoo slurp [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','8e764a9dd7d77907',0,0,0,1,'','',''),(46,2,6,'',0,'',1446356057,'Yahoo [Bot]','yahoo [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','38130647697654bd',0,0,0,1,'','',''),(47,2,6,'',0,'',1446356057,'YahooSeeker [Bot]','yahooseeker [bot]','',1446356057,'',0,'',0,1446356057,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','0',0,0,'','','','','','','','','','29c231d9572c92aa',0,0,0,1,'','',''),(48,0,2,'',0,'127.0.0.1',1461818335,'test','test','$H$9u14ZVViERrpK3HHRZ/KM89ruyZx1J.',1461818335,'mikemason930@gmail.com',184102840222,'',1483326334,1478927194,1482715828,'index.php','',1483326314,0,0,0,0,0,15,'en','UTC','D M d, Y g:i a',4,0,'',0,0,1480270027,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,1,7045951,'','0',0,0,'','','','','','','','','','a65d985df505c5f8',0,0,0,1,'','',''),(49,0,2,'',0,'127.0.0.1',1467680055,'ltest','ltest','$H$9K9gZpVaPDlNO/uTguVU1tjpQcgu100',1467680055,'test@mafiascum.net',353258683218,'',1482087480,1467680055,0,'index.php','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,1,7045951,'','0',0,0,'','','','','','','','','','e9d771524947e619',1,0,0,1,'','',''),(50,0,2,'',0,'127.0.0.1',1481482583,'+__+','+__+','$H$9NihBiyLGw80Na8CdIi46CtMFmSy4Q0',1481482583,'test123@mafiascum.net',418173855921,'',1482249717,1481482583,0,'viewforum.php?f=90','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,1,2851647,'','0',0,0,'','','','','','','','','','d562fa06859d36e5',1,0,0,1,'','',''),(51,0,2,'',0,'127.0.0.1',1482249096,'With Spaces','with spaces','$H$9xbbYhuXfKAfuYik3o44y.UqHwQBH51',1482249096,'test20161220@mafiascum.net',184203341326,'',1483525171,1482249096,0,'viewforum.php?f=90','',0,0,0,0,0,0,0,'en','Etc/GMT+5','D M d, Y g:i a',4,0,'',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,1,2851647,'','0',0,0,'','','','','','','','','','2c9cb5f91c19f410',1,0,0,1,'','',''),(52,3,5,'005m9rzik0zdrqeixc3bv4lc\ni1cjyo000000\nqlaq52000000\n\nqlctzq000000\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nqlaq52000000',0,'172.20.0.1',1505237581,'borkjerfkin','borkjerfkin','$H$9uZJIp5AI6n9EcIdvwp77rjPqAaFEg/',1505237581,'cciccia@gmail.com',326772713217,'',0,1505237581,0,'','',0,0,0,0,0,0,0,'en','UTC','D M d, Y g:i a',4,0,'',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,0,1,7045951,'','0',0,0,'','','','','','','','','','fbaafda2be639254',1,0,0,1,'','','');
/*!40000 ALTER TABLE `phpbb_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_warnings`
--

DROP TABLE IF EXISTS `phpbb_warnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_warnings` (
  `warning_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `post_id` int(10) unsigned NOT NULL DEFAULT 0,
  `log_id` int(10) unsigned NOT NULL DEFAULT 0,
  `warning_time` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`warning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_warnings`
--

LOCK TABLES `phpbb_warnings` WRITE;
/*!40000 ALTER TABLE `phpbb_warnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_warnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_words`
--

DROP TABLE IF EXISTS `phpbb_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_words` (
  `word_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_words`
--

LOCK TABLES `phpbb_words` WRITE;
/*!40000 ALTER TABLE `phpbb_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_zebra`
--

DROP TABLE IF EXISTS `phpbb_zebra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_zebra` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `zebra_id` int(10) unsigned NOT NULL DEFAULT 0,
  `friend` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `foe` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`,`zebra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_zebra`
--

LOCK TABLES `phpbb_zebra` WRITE;
/*!40000 ALTER TABLE `phpbb_zebra` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_zebra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siteChatConversation`
--

DROP TABLE IF EXISTS `siteChatConversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siteChatConversation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_bin NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by_user_id` mediumint(8) unsigned NOT NULL,
  `password` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siteChatConversation`
--

LOCK TABLES `siteChatConversation` WRITE;
/*!40000 ALTER TABLE `siteChatConversation` DISABLE KEYS */;
INSERT INTO `siteChatConversation` VALUES (1,'Lobby','2016-04-23 03:33:03',2,NULL),(2,'secret','2016-07-10 17:42:11',48,'e5e9fa1ba31ecd1ae84f75caaa474f3a663f05f4'),(3,'test','2016-11-13 22:41:02',2,NULL);
/*!40000 ALTER TABLE `siteChatConversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siteChatConversationMessage`
--

DROP TABLE IF EXISTS `siteChatConversationMessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siteChatConversationMessage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `site_chat_conversation_id` int(11) unsigned DEFAULT NULL,
  `user_id` mediumint(8) unsigned NOT NULL,
  `created_datetime` datetime NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `recipient_user_id` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `site_chat_conversation_id` (`site_chat_conversation_id`),
  KEY `user_id_recipient_user_id` (`user_id`,`recipient_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siteChatConversationMessage`
--

LOCK TABLES `siteChatConversationMessage` WRITE;
/*!40000 ALTER TABLE `siteChatConversationMessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `siteChatConversationMessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siteChatIgnore`
--

DROP TABLE IF EXISTS `siteChatIgnore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siteChatIgnore` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `ignored_user_id` mediumint(8) unsigned NOT NULL,
  `created_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`ignored_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siteChatIgnore`
--

LOCK TABLES `siteChatIgnore` WRITE;
/*!40000 ALTER TABLE `siteChatIgnore` DISABLE KEYS */;
/*!40000 ALTER TABLE `siteChatIgnore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siteChatUserSettings`
--

DROP TABLE IF EXISTS `siteChatUserSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siteChatUserSettings` (
  `user_id` mediumint(8) unsigned NOT NULL,
  `compact` tinyint(3) unsigned NOT NULL,
  `animate_avatars` tinyint(3) unsigned NOT NULL,
  `timestamp_format` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `invisible` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `disable_emoji` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `sort_option` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siteChatUserSettings`
--

LOCK TABLES `siteChatUserSettings` WRITE;
/*!40000 ALTER TABLE `siteChatUserSettings` DISABLE KEYS */;
INSERT INTO `siteChatUserSettings` VALUES (2,1,1,'HH:mm:ss',0,0,0),(48,1,1,'',1,0,0);
/*!40000 ALTER TABLE `siteChatUserSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valentines_answers`
--

DROP TABLE IF EXISTS `valentines_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `valentines_answers` (
  `question_id` tinyint(3) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `answer` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `prefanswer` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `weight` tinyint(1) unsigned NOT NULL DEFAULT 3,
  PRIMARY KEY (`question_id`,`user_id`),
  KEY `question_id` (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valentines_answers`
--

LOCK TABLES `valentines_answers` WRITE;
/*!40000 ALTER TABLE `valentines_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `valentines_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valentines_questions`
--

DROP TABLE IF EXISTS `valentines_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `valentines_questions` (
  `question_id` int(6) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `Answer1` text DEFAULT NULL,
  `Answer2` text DEFAULT NULL,
  `Answer3` text DEFAULT NULL,
  `Answer4` text DEFAULT NULL,
  `Answer5` text DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valentines_questions`
--

LOCK TABLES `valentines_questions` WRITE;
/*!40000 ALTER TABLE `valentines_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `valentines_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valentines_users`
--

DROP TABLE IF EXISTS `valentines_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `valentines_users` (
  `user_id` int(11) NOT NULL,
  `question_id` smallint(6) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valentines_users`
--

LOCK TABLES `valentines_users` WRITE;
/*!40000 ALTER TABLE `valentines_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `valentines_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-12 17:49:57
