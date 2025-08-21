-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2025-08-05 11:07:20','2025-08-05 11:07:20','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_e_events`
--

DROP TABLE IF EXISTS `wp_e_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_e_events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `event_data` text COLLATE utf8mb4_unicode_520_ci,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_e_events`
--

LOCK TABLES `wp_e_events` WRITE;
/*!40000 ALTER TABLE `wp_e_events` DISABLE KEYS */;
INSERT INTO `wp_e_events` VALUES (1,'{\"event\":\"modal load\",\"version\":\"\",\"details\":\"{\\\"placement\\\":\\\"Onboarding wizard\\\",\\\"step\\\":\\\"account\\\",\\\"user_state\\\":\\\"anon\\\"}\",\"ts\":\"2025-08-07T14:28:30.695-06:45\"}','2025-08-07 14:28:31');
INSERT INTO `wp_e_events` VALUES (2,'{\"event\":\"close modal\",\"version\":\"\",\"details\":\"{\\\"placement\\\":\\\"Onboarding wizard\\\",\\\"step\\\":\\\"account\\\"}\",\"ts\":\"2025-08-07T14:28:48.316-06:45\"}','2025-08-08 02:58:48');
/*!40000 ALTER TABLE `wp_e_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gap_configs`
--

DROP TABLE IF EXISTS `wp_gap_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_gap_configs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `config_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `api_key` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gap_configs`
--

LOCK TABLES `wp_gap_configs` WRITE;
/*!40000 ALTER TABLE `wp_gap_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gap_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=589 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'cron','a:12:{i:1754997477;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1754998108;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1754998190;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1755000438;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1755000442;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1755004039;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1755023385;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1755040180;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1755074603;a:1:{s:28:\"elementor/tracker/send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1755083242;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1755083380;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','on');
INSERT INTO `wp_options` VALUES (2,'siteurl','http://cheap-medscards.local','on');
INSERT INTO `wp_options` VALUES (3,'home','http://cheap-medscards.local','on');
INSERT INTO `wp_options` VALUES (4,'blogname','cheap medscards','on');
INSERT INTO `wp_options` VALUES (5,'blogdescription','','on');
INSERT INTO `wp_options` VALUES (6,'users_can_register','0','on');
INSERT INTO `wp_options` VALUES (7,'admin_email','dev-email@wpengine.local','on');
INSERT INTO `wp_options` VALUES (8,'start_of_week','1','on');
INSERT INTO `wp_options` VALUES (9,'use_balanceTags','0','on');
INSERT INTO `wp_options` VALUES (10,'use_smilies','1','on');
INSERT INTO `wp_options` VALUES (11,'require_name_email','1','on');
INSERT INTO `wp_options` VALUES (12,'comments_notify','1','on');
INSERT INTO `wp_options` VALUES (13,'posts_per_rss','10','on');
INSERT INTO `wp_options` VALUES (14,'rss_use_excerpt','0','on');
INSERT INTO `wp_options` VALUES (15,'mailserver_url','mail.example.com','on');
INSERT INTO `wp_options` VALUES (16,'mailserver_login','login@example.com','on');
INSERT INTO `wp_options` VALUES (17,'mailserver_pass','','on');
INSERT INTO `wp_options` VALUES (18,'mailserver_port','110','on');
INSERT INTO `wp_options` VALUES (19,'default_category','1','on');
INSERT INTO `wp_options` VALUES (20,'default_comment_status','open','on');
INSERT INTO `wp_options` VALUES (21,'default_ping_status','open','on');
INSERT INTO `wp_options` VALUES (22,'default_pingback_flag','1','on');
INSERT INTO `wp_options` VALUES (23,'posts_per_page','10','on');
INSERT INTO `wp_options` VALUES (24,'date_format','F j, Y','on');
INSERT INTO `wp_options` VALUES (25,'time_format','g:i a','on');
INSERT INTO `wp_options` VALUES (26,'links_updated_date_format','F j, Y g:i a','on');
INSERT INTO `wp_options` VALUES (27,'comment_moderation','0','on');
INSERT INTO `wp_options` VALUES (28,'moderation_notify','1','on');
INSERT INTO `wp_options` VALUES (29,'permalink_structure','/%postname%/','on');
INSERT INTO `wp_options` VALUES (30,'rewrite_rules','a:117:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:60:\"dispensary-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?dispensary-category=$matches[1]&feed=$matches[2]\";s:55:\"dispensary-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?dispensary-category=$matches[1]&feed=$matches[2]\";s:36:\"dispensary-category/([^/]+)/embed/?$\";s:52:\"index.php?dispensary-category=$matches[1]&embed=true\";s:48:\"dispensary-category/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?dispensary-category=$matches[1]&paged=$matches[2]\";s:30:\"dispensary-category/([^/]+)/?$\";s:41:\"index.php?dispensary-category=$matches[1]\";s:38:\"dispensary/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"dispensary/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"dispensary/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"dispensary/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"dispensary/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"dispensary/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"dispensary/([^/]+)/embed/?$\";s:43:\"index.php?dispensary=$matches[1]&embed=true\";s:31:\"dispensary/([^/]+)/trackback/?$\";s:37:\"index.php?dispensary=$matches[1]&tb=1\";s:39:\"dispensary/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?dispensary=$matches[1]&paged=$matches[2]\";s:46:\"dispensary/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?dispensary=$matches[1]&cpage=$matches[2]\";s:35:\"dispensary/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?dispensary=$matches[1]&page=$matches[2]\";s:27:\"dispensary/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"dispensary/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"dispensary/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"dispensary/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"dispensary/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"dispensary/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on');
INSERT INTO `wp_options` VALUES (31,'hack_file','0','on');
INSERT INTO `wp_options` VALUES (32,'blog_charset','UTF-8','on');
INSERT INTO `wp_options` VALUES (33,'moderation_keys','','off');
INSERT INTO `wp_options` VALUES (34,'active_plugins','a:3:{i:0;s:59:\"autocomplete-google-address/autocomplete-google-address.php\";i:1;s:23:\"elementor/elementor.php\";i:2;s:45:\"secure-custom-fields/secure-custom-fields.php\";}','on');
INSERT INTO `wp_options` VALUES (35,'category_base','','on');
INSERT INTO `wp_options` VALUES (36,'ping_sites','https://rpc.pingomatic.com/','on');
INSERT INTO `wp_options` VALUES (37,'comment_max_links','2','on');
INSERT INTO `wp_options` VALUES (38,'gmt_offset','0','on');
INSERT INTO `wp_options` VALUES (39,'default_email_category','1','on');
INSERT INTO `wp_options` VALUES (40,'recently_edited','','off');
INSERT INTO `wp_options` VALUES (41,'template','hello-elementor-child','on');
INSERT INTO `wp_options` VALUES (42,'stylesheet','hello-elementor-child','on');
INSERT INTO `wp_options` VALUES (43,'comment_registration','0','on');
INSERT INTO `wp_options` VALUES (44,'html_type','text/html','on');
INSERT INTO `wp_options` VALUES (45,'use_trackback','0','on');
INSERT INTO `wp_options` VALUES (46,'default_role','subscriber','on');
INSERT INTO `wp_options` VALUES (47,'db_version','60421','on');
INSERT INTO `wp_options` VALUES (48,'uploads_use_yearmonth_folders','1','on');
INSERT INTO `wp_options` VALUES (49,'upload_path','','on');
INSERT INTO `wp_options` VALUES (50,'blog_public','1','on');
INSERT INTO `wp_options` VALUES (51,'default_link_category','2','on');
INSERT INTO `wp_options` VALUES (52,'show_on_front','page','on');
INSERT INTO `wp_options` VALUES (53,'tag_base','','on');
INSERT INTO `wp_options` VALUES (54,'show_avatars','1','on');
INSERT INTO `wp_options` VALUES (55,'avatar_rating','G','on');
INSERT INTO `wp_options` VALUES (56,'upload_url_path','','on');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_w','150','on');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_h','150','on');
INSERT INTO `wp_options` VALUES (59,'thumbnail_crop','1','on');
INSERT INTO `wp_options` VALUES (60,'medium_size_w','300','on');
INSERT INTO `wp_options` VALUES (61,'medium_size_h','300','on');
INSERT INTO `wp_options` VALUES (62,'avatar_default','mystery','on');
INSERT INTO `wp_options` VALUES (63,'large_size_w','1024','on');
INSERT INTO `wp_options` VALUES (64,'large_size_h','1024','on');
INSERT INTO `wp_options` VALUES (65,'image_default_link_type','none','on');
INSERT INTO `wp_options` VALUES (66,'image_default_size','','on');
INSERT INTO `wp_options` VALUES (67,'image_default_align','','on');
INSERT INTO `wp_options` VALUES (68,'close_comments_for_old_posts','0','on');
INSERT INTO `wp_options` VALUES (69,'close_comments_days_old','14','on');
INSERT INTO `wp_options` VALUES (70,'thread_comments','1','on');
INSERT INTO `wp_options` VALUES (71,'thread_comments_depth','5','on');
INSERT INTO `wp_options` VALUES (72,'page_comments','0','on');
INSERT INTO `wp_options` VALUES (73,'comments_per_page','50','on');
INSERT INTO `wp_options` VALUES (74,'default_comments_page','newest','on');
INSERT INTO `wp_options` VALUES (75,'comment_order','asc','on');
INSERT INTO `wp_options` VALUES (76,'sticky_posts','a:0:{}','on');
INSERT INTO `wp_options` VALUES (77,'widget_categories','a:0:{}','on');
INSERT INTO `wp_options` VALUES (78,'widget_text','a:0:{}','on');
INSERT INTO `wp_options` VALUES (79,'widget_rss','a:0:{}','on');
INSERT INTO `wp_options` VALUES (80,'uninstall_plugins','a:2:{s:45:\"secure-custom-fields/secure-custom-fields.php\";s:20:\"scf_plugin_uninstall\";s:23:\"elementor/elementor.php\";a:2:{i:0;s:21:\"Elementor\\Maintenance\";i:1;s:9:\"uninstall\";}}','off');
INSERT INTO `wp_options` VALUES (81,'timezone_string','','on');
INSERT INTO `wp_options` VALUES (82,'page_for_posts','0','on');
INSERT INTO `wp_options` VALUES (83,'page_on_front','2','on');
INSERT INTO `wp_options` VALUES (84,'default_post_format','0','on');
INSERT INTO `wp_options` VALUES (85,'link_manager_enabled','0','on');
INSERT INTO `wp_options` VALUES (86,'finished_splitting_shared_terms','1','on');
INSERT INTO `wp_options` VALUES (87,'site_icon','0','on');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_w','768','on');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_h','0','on');
INSERT INTO `wp_options` VALUES (90,'wp_page_for_privacy_policy','3','on');
INSERT INTO `wp_options` VALUES (91,'show_comments_cookies_opt_in','1','on');
INSERT INTO `wp_options` VALUES (92,'admin_email_lifespan','1769944039','on');
INSERT INTO `wp_options` VALUES (93,'disallowed_keys','','off');
INSERT INTO `wp_options` VALUES (94,'comment_previously_approved','1','on');
INSERT INTO `wp_options` VALUES (95,'auto_plugin_theme_update_emails','a:0:{}','off');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_dev','enabled','on');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_minor','enabled','on');
INSERT INTO `wp_options` VALUES (98,'auto_update_core_major','enabled','on');
INSERT INTO `wp_options` VALUES (99,'wp_force_deactivated_plugins','a:0:{}','on');
INSERT INTO `wp_options` VALUES (100,'wp_attachment_pages_enabled','0','on');
INSERT INTO `wp_options` VALUES (101,'initial_db_version','60421','on');
INSERT INTO `wp_options` VALUES (102,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','on');
INSERT INTO `wp_options` VALUES (103,'fresh_site','0','off');
INSERT INTO `wp_options` VALUES (104,'user_count','1','off');
INSERT INTO `wp_options` VALUES (105,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','auto');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.8.2\";s:5:\"files\";a:536:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:26:\"post-content/style-rtl.css\";i:309;s:30:\"post-content/style-rtl.min.css\";i:310;s:22:\"post-content/style.css\";i:311;s:26:\"post-content/style.min.css\";i:312;s:23:\"post-date/style-rtl.css\";i:313;s:27:\"post-date/style-rtl.min.css\";i:314;s:19:\"post-date/style.css\";i:315;s:23:\"post-date/style.min.css\";i:316;s:27:\"post-excerpt/editor-rtl.css\";i:317;s:31:\"post-excerpt/editor-rtl.min.css\";i:318;s:23:\"post-excerpt/editor.css\";i:319;s:27:\"post-excerpt/editor.min.css\";i:320;s:26:\"post-excerpt/style-rtl.css\";i:321;s:30:\"post-excerpt/style-rtl.min.css\";i:322;s:22:\"post-excerpt/style.css\";i:323;s:26:\"post-excerpt/style.min.css\";i:324;s:34:\"post-featured-image/editor-rtl.css\";i:325;s:38:\"post-featured-image/editor-rtl.min.css\";i:326;s:30:\"post-featured-image/editor.css\";i:327;s:34:\"post-featured-image/editor.min.css\";i:328;s:33:\"post-featured-image/style-rtl.css\";i:329;s:37:\"post-featured-image/style-rtl.min.css\";i:330;s:29:\"post-featured-image/style.css\";i:331;s:33:\"post-featured-image/style.min.css\";i:332;s:34:\"post-navigation-link/style-rtl.css\";i:333;s:38:\"post-navigation-link/style-rtl.min.css\";i:334;s:30:\"post-navigation-link/style.css\";i:335;s:34:\"post-navigation-link/style.min.css\";i:336;s:27:\"post-template/style-rtl.css\";i:337;s:31:\"post-template/style-rtl.min.css\";i:338;s:23:\"post-template/style.css\";i:339;s:27:\"post-template/style.min.css\";i:340;s:24:\"post-terms/style-rtl.css\";i:341;s:28:\"post-terms/style-rtl.min.css\";i:342;s:20:\"post-terms/style.css\";i:343;s:24:\"post-terms/style.min.css\";i:344;s:24:\"post-title/style-rtl.css\";i:345;s:28:\"post-title/style-rtl.min.css\";i:346;s:20:\"post-title/style.css\";i:347;s:24:\"post-title/style.min.css\";i:348;s:26:\"preformatted/style-rtl.css\";i:349;s:30:\"preformatted/style-rtl.min.css\";i:350;s:22:\"preformatted/style.css\";i:351;s:26:\"preformatted/style.min.css\";i:352;s:24:\"pullquote/editor-rtl.css\";i:353;s:28:\"pullquote/editor-rtl.min.css\";i:354;s:20:\"pullquote/editor.css\";i:355;s:24:\"pullquote/editor.min.css\";i:356;s:23:\"pullquote/style-rtl.css\";i:357;s:27:\"pullquote/style-rtl.min.css\";i:358;s:19:\"pullquote/style.css\";i:359;s:23:\"pullquote/style.min.css\";i:360;s:23:\"pullquote/theme-rtl.css\";i:361;s:27:\"pullquote/theme-rtl.min.css\";i:362;s:19:\"pullquote/theme.css\";i:363;s:23:\"pullquote/theme.min.css\";i:364;s:39:\"query-pagination-numbers/editor-rtl.css\";i:365;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:366;s:35:\"query-pagination-numbers/editor.css\";i:367;s:39:\"query-pagination-numbers/editor.min.css\";i:368;s:31:\"query-pagination/editor-rtl.css\";i:369;s:35:\"query-pagination/editor-rtl.min.css\";i:370;s:27:\"query-pagination/editor.css\";i:371;s:31:\"query-pagination/editor.min.css\";i:372;s:30:\"query-pagination/style-rtl.css\";i:373;s:34:\"query-pagination/style-rtl.min.css\";i:374;s:26:\"query-pagination/style.css\";i:375;s:30:\"query-pagination/style.min.css\";i:376;s:25:\"query-title/style-rtl.css\";i:377;s:29:\"query-title/style-rtl.min.css\";i:378;s:21:\"query-title/style.css\";i:379;s:25:\"query-title/style.min.css\";i:380;s:25:\"query-total/style-rtl.css\";i:381;s:29:\"query-total/style-rtl.min.css\";i:382;s:21:\"query-total/style.css\";i:383;s:25:\"query-total/style.min.css\";i:384;s:20:\"query/editor-rtl.css\";i:385;s:24:\"query/editor-rtl.min.css\";i:386;s:16:\"query/editor.css\";i:387;s:20:\"query/editor.min.css\";i:388;s:19:\"quote/style-rtl.css\";i:389;s:23:\"quote/style-rtl.min.css\";i:390;s:15:\"quote/style.css\";i:391;s:19:\"quote/style.min.css\";i:392;s:19:\"quote/theme-rtl.css\";i:393;s:23:\"quote/theme-rtl.min.css\";i:394;s:15:\"quote/theme.css\";i:395;s:19:\"quote/theme.min.css\";i:396;s:23:\"read-more/style-rtl.css\";i:397;s:27:\"read-more/style-rtl.min.css\";i:398;s:19:\"read-more/style.css\";i:399;s:23:\"read-more/style.min.css\";i:400;s:18:\"rss/editor-rtl.css\";i:401;s:22:\"rss/editor-rtl.min.css\";i:402;s:14:\"rss/editor.css\";i:403;s:18:\"rss/editor.min.css\";i:404;s:17:\"rss/style-rtl.css\";i:405;s:21:\"rss/style-rtl.min.css\";i:406;s:13:\"rss/style.css\";i:407;s:17:\"rss/style.min.css\";i:408;s:21:\"search/editor-rtl.css\";i:409;s:25:\"search/editor-rtl.min.css\";i:410;s:17:\"search/editor.css\";i:411;s:21:\"search/editor.min.css\";i:412;s:20:\"search/style-rtl.css\";i:413;s:24:\"search/style-rtl.min.css\";i:414;s:16:\"search/style.css\";i:415;s:20:\"search/style.min.css\";i:416;s:20:\"search/theme-rtl.css\";i:417;s:24:\"search/theme-rtl.min.css\";i:418;s:16:\"search/theme.css\";i:419;s:20:\"search/theme.min.css\";i:420;s:24:\"separator/editor-rtl.css\";i:421;s:28:\"separator/editor-rtl.min.css\";i:422;s:20:\"separator/editor.css\";i:423;s:24:\"separator/editor.min.css\";i:424;s:23:\"separator/style-rtl.css\";i:425;s:27:\"separator/style-rtl.min.css\";i:426;s:19:\"separator/style.css\";i:427;s:23:\"separator/style.min.css\";i:428;s:23:\"separator/theme-rtl.css\";i:429;s:27:\"separator/theme-rtl.min.css\";i:430;s:19:\"separator/theme.css\";i:431;s:23:\"separator/theme.min.css\";i:432;s:24:\"shortcode/editor-rtl.css\";i:433;s:28:\"shortcode/editor-rtl.min.css\";i:434;s:20:\"shortcode/editor.css\";i:435;s:24:\"shortcode/editor.min.css\";i:436;s:24:\"site-logo/editor-rtl.css\";i:437;s:28:\"site-logo/editor-rtl.min.css\";i:438;s:20:\"site-logo/editor.css\";i:439;s:24:\"site-logo/editor.min.css\";i:440;s:23:\"site-logo/style-rtl.css\";i:441;s:27:\"site-logo/style-rtl.min.css\";i:442;s:19:\"site-logo/style.css\";i:443;s:23:\"site-logo/style.min.css\";i:444;s:27:\"site-tagline/editor-rtl.css\";i:445;s:31:\"site-tagline/editor-rtl.min.css\";i:446;s:23:\"site-tagline/editor.css\";i:447;s:27:\"site-tagline/editor.min.css\";i:448;s:26:\"site-tagline/style-rtl.css\";i:449;s:30:\"site-tagline/style-rtl.min.css\";i:450;s:22:\"site-tagline/style.css\";i:451;s:26:\"site-tagline/style.min.css\";i:452;s:25:\"site-title/editor-rtl.css\";i:453;s:29:\"site-title/editor-rtl.min.css\";i:454;s:21:\"site-title/editor.css\";i:455;s:25:\"site-title/editor.min.css\";i:456;s:24:\"site-title/style-rtl.css\";i:457;s:28:\"site-title/style-rtl.min.css\";i:458;s:20:\"site-title/style.css\";i:459;s:24:\"site-title/style.min.css\";i:460;s:26:\"social-link/editor-rtl.css\";i:461;s:30:\"social-link/editor-rtl.min.css\";i:462;s:22:\"social-link/editor.css\";i:463;s:26:\"social-link/editor.min.css\";i:464;s:27:\"social-links/editor-rtl.css\";i:465;s:31:\"social-links/editor-rtl.min.css\";i:466;s:23:\"social-links/editor.css\";i:467;s:27:\"social-links/editor.min.css\";i:468;s:26:\"social-links/style-rtl.css\";i:469;s:30:\"social-links/style-rtl.min.css\";i:470;s:22:\"social-links/style.css\";i:471;s:26:\"social-links/style.min.css\";i:472;s:21:\"spacer/editor-rtl.css\";i:473;s:25:\"spacer/editor-rtl.min.css\";i:474;s:17:\"spacer/editor.css\";i:475;s:21:\"spacer/editor.min.css\";i:476;s:20:\"spacer/style-rtl.css\";i:477;s:24:\"spacer/style-rtl.min.css\";i:478;s:16:\"spacer/style.css\";i:479;s:20:\"spacer/style.min.css\";i:480;s:20:\"table/editor-rtl.css\";i:481;s:24:\"table/editor-rtl.min.css\";i:482;s:16:\"table/editor.css\";i:483;s:20:\"table/editor.min.css\";i:484;s:19:\"table/style-rtl.css\";i:485;s:23:\"table/style-rtl.min.css\";i:486;s:15:\"table/style.css\";i:487;s:19:\"table/style.min.css\";i:488;s:19:\"table/theme-rtl.css\";i:489;s:23:\"table/theme-rtl.min.css\";i:490;s:15:\"table/theme.css\";i:491;s:19:\"table/theme.min.css\";i:492;s:24:\"tag-cloud/editor-rtl.css\";i:493;s:28:\"tag-cloud/editor-rtl.min.css\";i:494;s:20:\"tag-cloud/editor.css\";i:495;s:24:\"tag-cloud/editor.min.css\";i:496;s:23:\"tag-cloud/style-rtl.css\";i:497;s:27:\"tag-cloud/style-rtl.min.css\";i:498;s:19:\"tag-cloud/style.css\";i:499;s:23:\"tag-cloud/style.min.css\";i:500;s:28:\"template-part/editor-rtl.css\";i:501;s:32:\"template-part/editor-rtl.min.css\";i:502;s:24:\"template-part/editor.css\";i:503;s:28:\"template-part/editor.min.css\";i:504;s:27:\"template-part/theme-rtl.css\";i:505;s:31:\"template-part/theme-rtl.min.css\";i:506;s:23:\"template-part/theme.css\";i:507;s:27:\"template-part/theme.min.css\";i:508;s:30:\"term-description/style-rtl.css\";i:509;s:34:\"term-description/style-rtl.min.css\";i:510;s:26:\"term-description/style.css\";i:511;s:30:\"term-description/style.min.css\";i:512;s:27:\"text-columns/editor-rtl.css\";i:513;s:31:\"text-columns/editor-rtl.min.css\";i:514;s:23:\"text-columns/editor.css\";i:515;s:27:\"text-columns/editor.min.css\";i:516;s:26:\"text-columns/style-rtl.css\";i:517;s:30:\"text-columns/style-rtl.min.css\";i:518;s:22:\"text-columns/style.css\";i:519;s:26:\"text-columns/style.min.css\";i:520;s:19:\"verse/style-rtl.css\";i:521;s:23:\"verse/style-rtl.min.css\";i:522;s:15:\"verse/style.css\";i:523;s:19:\"verse/style.min.css\";i:524;s:20:\"video/editor-rtl.css\";i:525;s:24:\"video/editor-rtl.min.css\";i:526;s:16:\"video/editor.css\";i:527;s:20:\"video/editor.min.css\";i:528;s:19:\"video/style-rtl.css\";i:529;s:23:\"video/style-rtl.min.css\";i:530;s:15:\"video/style.css\";i:531;s:19:\"video/style.min.css\";i:532;s:19:\"video/theme-rtl.css\";i:533;s:23:\"video/theme-rtl.min.css\";i:534;s:15:\"video/theme.css\";i:535;s:19:\"video/theme.min.css\";}}','on');
INSERT INTO `wp_options` VALUES (125,'recovery_keys','a:0:{}','off');
INSERT INTO `wp_options` VALUES (126,'WPLANG','','auto');
INSERT INTO `wp_options` VALUES (127,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.8.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.2\";s:7:\"version\";s:5:\"6.8.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1754987701;s:15:\"version_checked\";s:5:\"6.8.2\";s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (128,'theme_mods_twentytwentyfive','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1754394030;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES (129,'_transient_wp_styles_for_blocks','a:2:{s:4:\"hash\";s:32:\"1a7f8946efbf284a4c14585980ade540\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:0:\"\";s:12:\"core/columns\";s:0:\"\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}','on');
INSERT INTO `wp_options` VALUES (143,'can_compress_scripts','0','on');
INSERT INTO `wp_options` VALUES (156,'finished_updating_comment_type','1','auto');
INSERT INTO `wp_options` VALUES (157,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','off');
INSERT INTO `wp_options` VALUES (158,'recently_activated','a:0:{}','off');
INSERT INTO `wp_options` VALUES (169,'acf_first_activated_version','6.5.5','on');
INSERT INTO `wp_options` VALUES (170,'acf_site_health','{\"version\":\"6.5.5\",\"wp_version\":\"6.8.2\",\"mysql_version\":\"8.0.35\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Twenty Twenty-Five\",\"version\":\"1.3\",\"theme_uri\":\"https:\\/\\/wordpress.org\\/themes\\/twentytwentyfive\\/\",\"stylesheet\":false},\"active_plugins\":{\"secure-custom-fields\\/secure-custom-fields.php\":{\"name\":\"Secure Custom Fields\",\"version\":\"6.5.5\",\"plugin_uri\":\"https:\\/\\/developer.wordpress.org\\/secure-custom-fields\\/\"}},\"ui_field_groups\":\"0\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":[],\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"3\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"ui_options_pages_enabled\":true,\"ui_options_pages\":\"0\",\"json_options_pages\":\"0\",\"php_options_pages\":\"0\",\"rest_api_format\":\"light\",\"blocks_per_api_version\":[],\"blocks_per_acf_block_version\":[],\"blocks_using_post_meta\":\"0\",\"preload_blocks\":true,\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1754393309,\"last_updated\":1754393345,\"event_first_created_field_group\":1754393344,\"event_first_created_taxonomy\":1754393345,\"event_first_created_post_type\":1754393345}','off');
INSERT INTO `wp_options` VALUES (172,'acf_version','6.5.5','auto');
INSERT INTO `wp_options` VALUES (185,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1754980299;s:7:\"checked\";a:5:{s:21:\"hello-elementor-child\";s:5:\"2.0.0\";s:15:\"hello-elementor\";s:5:\"3.4.4\";s:16:\"twentytwentyfive\";s:3:\"1.3\";s:16:\"twentytwentyfour\";s:3:\"1.3\";s:17:\"twentytwentythree\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:15:\"hello-elementor\";a:6:{s:5:\"theme\";s:15:\"hello-elementor\";s:11:\"new_version\";s:5:\"3.4.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/hello-elementor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/hello-elementor.3.4.4.zip\";s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";}s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.3.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (186,'current_theme','Hello Elementor child','auto');
INSERT INTO `wp_options` VALUES (187,'theme_mods_hello-elementor','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1754394159;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES (188,'theme_switched','','auto');
INSERT INTO `wp_options` VALUES (189,'hello_theme_version','3.4.4','auto');
INSERT INTO `wp_options` VALUES (192,'elementor_connect_site_key','d6727a673f50ca1515b7c888e1a44788','auto');
INSERT INTO `wp_options` VALUES (193,'_hello-elementor_notifications','a:2:{s:7:\"timeout\";i:1755023425;s:5:\"value\";s:7532:\"[{\"id\":\"hello-theme-3.4.4\",\"title\":\"3.4.4 - 2025-06-08\",\"description\":\"\\n            <ul>\\n\\t\\t\\t\\t<li>Tweak: Improve Header\\/Footer edit access from theme Home<\\/li>\\n            <\\/ul>\"},{\"id\":\"hello-theme-3.4.3\",\"title\":\"3.4.3 - 2025-05-26\",\"description\":\"\\n            <ul>\\n\\t\\t\\t\\t<li>Fix: Settings page empty after 3.4.0 in translated sites<\\/li>\\n\\t\\t\\t\\t<li>Fix: PHP 8.4 deprecation notice<\\/li>\\n            <\\/ul>\"},{\"id\":\"hello-theme-3.4.2\",\"title\":\"3.4.2 - 2025-05-19\",\"description\":\"\\n            <ul>\\n\\t\\t\\t\\t<li>Tweak: Set Home links font weight to regular<\\/li>\\n  \\t\\t        <li>Tweak: Dart SASS 3.0.0 - resolve scss deprecated warnings<\\/li>\\n    \\t\\t    <li>Fix: Settings page empty after 3.4.0<\\/li>\\n            <\\/ul>\"},{\"id\":\"hello-theme-3.4.0\",\"title\":\"3.4.0 - 2025-05-05\",\"description\":\"\\n            <ul>\\n                <li>New: Added Theme Home<\\/li>\\n\\t\\t\\t\\t<li>Tweak: Update theme settings page style<\\/li>\\n\\t\\t\\t\\t<li>Tweak: Update tested up to version 6.8<\\/li>\\n            <\\/ul>\"},{\"id\":\"hello-theme-3.3.0\",\"title\":\"3.3.0 - 2025-01-21\",\"description\":\"\\n            <ul>\\n                <li>Tweak: Added changelog link in theme settings<\\/li>\\n\\t\\t\\t\\t<li>Tweak: Updated minimum required Safari version to 15.5<\\/li>\\n  \\t\\t        <li>Tweak: Update autoprefixer to latest versions<\\/li>\\n            <\\/ul>\"},{\"id\":\"hello-theme-3.2.1\",\"title\":\"3.2.1 - 2024-12-16\",\"description\":\"\\n            <ul>\\n                <li>\\n                    Fix: Gutenberg editor expanded disproportionately after adding support for <code>theme.json<\\/code>\\n                    (<a href=\\\"https:\\/\\/github.com\\/elementor\\/hello-theme\\/issues\\/430\\\" target=\\\"_blank\\\">#430<\\/a>)\\n                <\\/li>\\n                <li>Fix: Use CSS logical properties in the theme<\\/li>\\n                <li>Fix: Add ARIA attributes to header nav menu<\\/li>\\n            <\\/ul>\"},{\"id\":\"hello-theme-3.2.0\",\"title\":\"3.2.0 - 2024-12-15\",\"description\":\"\\n            <ul>\\n                <li>Tweak: Convert classic to hybrid theme with block-editor support<\\/li>\\n                <li>Tweak: Added new design options to header\\/footer<\\/li>\\n                <li>Tweak: Update <code>Tested up to 6.7<\\/code><\\/li>\\n                <li>\\n                    Fix: Minify JS files\\n                    (<a href=\\\"https:\\/\\/github.com\\/elementor\\/hello-theme\\/issues\\/419\\\" target=\\\"_blank\\\">#419<\\/a>)\\n                <\\/li>\\n            <\\/ul>\"},{\"id\":\"hello-theme-3.1.1\",\"title\":\"3.1.1 - 2024-07-30\",\"description\":\"\\n            <ul>\\n                <li>Fix: Use consistent <code>&lt;h2&gt;<\\/code> for comments title and comment form<\\/li>\\n            <\\/ul>\"},{\"id\":\"hello-theme-3.1.0\",\"title\":\"3.1.0 - 2024-06-19\",\"description\":\"\\n            <ul>\\n                <li>Tweak: Update <code>Requires PHP 7.4<\\/code><\\/li>\\n                <li>Tweak: Update <code>Tested up to 6.5<\\/code><\\/li>\\n                <li>Tweak: Add the ability to style the brand layout<\\/li>\\n                <li>Tweak: Remove deprecated Elementor code<\\/li>\\n                <li>Tweak: Restore default focus styling inside the theme<\\/li>\\n                <li>Tweak: Add <code>aria-label<\\/code> attribute to various <code>&lt;nav&gt;<\\/code> elements<\\/li>\\n                <li>Tweak: Improve mobile menu keyboard accessibility<\\/li>\\n                <li>Tweak: Semantic mobile menu toggle button<\\/li>\\n                <li>Fix: The header renders redundant <code>&lt;p&gt;<\\/code> when tagline is empty<\\/li>\\n                <li>Fix: Single post renders redundant wrapping <code>&lt;div&gt;<\\/code> when it has no tags<\\/li>\\n                <li>Fix: Remove redundant wrapping <code>&lt;div&gt;<\\/code> from <code>wp_nav_menu()<\\/code> output<\\/li>\\n                <li>Fix: Wrap page <code>&lt;h1&gt;<\\/code> with <code>&lt;div&gt;<\\/code>, not <code>&lt;header&gt;<\\/code><\\/li>\\n                <li>Fix: Use consistent <code>&lt;h3&gt;<\\/code> for comments title and comment form<\\/li>\\n                <li>Fix: Remove heading tags from dynamic header\\/footer<\\/li>\\n                <li>\\n                    Fix: Mobile Menu hamburger is not visible for logged-out users in some cases\\n                    (<a href=\\\"https:\\/\\/github.com\\/elementor\\/hello-theme\\/issues\\/369\\\" target=\\\"_blank\\\">#369<\\/a>)\\n                <\\/li>\\n                <li>Fix: Remove duplicate ID attributes in the header mobile menu<\\/li>\\n                <li>\\n                    Fix: Remove redundant table styles\\n                    (<a href=\\\"https:\\/\\/github.com\\/elementor\\/hello-theme\\/issues\\/311\\\" target=\\\"_blank\\\">#311<\\/a>)\\n                <\\/li>\\n                <li>Fix: Remove redundant space below Site Logo in the header\\/footer<\\/li>\\n                <li>Fix: Remove redundant CSS from dynamic header\\/footer layout<\\/li>\\n                <li>\\n                    Fix: Separate post tags in single post\\n                    (<a href=\\\"https:\\/\\/github.com\\/elementor\\/hello-theme\\/issues\\/304\\\" target=\\\"_blank\\\">#304<\\/a>)\\n                <\\/li>\\n                <li>Fix: Display <code>the_tags()<\\/code> after <code>wp_link_pages()<\\/code><\\/li>\\n                <li>Fix: Remove page break navigation from archives when using <code>&lt;!--nextpage--&gt;<\\/code><\\/li>\\n                <li>Fix: Style posts pagination component layout<\\/li>\\n                <li>Fix: Add RTL support to pagination arrows in archive pages<\\/li>\\n                <li>\\n                    Fix: Update pagination prev\\/next labels and positions\\n                    (<a href=\\\"https:\\/\\/github.com\\/elementor\\/hello-theme\\/issues\\/404\\\" target=\\\"_blank\\\">#404<\\/a>)\\n                <\\/li>\\n                <li>Fix: Check if Elementor is loaded when using dynamic header & footer<\\/li>\\n            <\\/ul>\"},{\"id\":\"hello-theme-3.0.2\",\"title\":\"3.0.2 - 2024-05-28\",\"description\":\"\\n            <ul>\\n                <li>Internal: Version bump release to refresh WordPress repository<\\/li>\\n            <\\/ul>\"},{\"id\":\"hello-theme-3.0.1\",\"title\":\"3.0.1 - 2024-01-24\",\"description\":\"\\n            <ul>\\n                <li>Fix: Harden security for admin notice dismiss button<\\/li>\\n                <li>Fix: Add <code>alt<\\/code> attribute to all the images in the dashboard<\\/li>\\n            <\\/ul>\"},{\"id\":\"hello-theme-3.0.0\",\"title\":\"3.0.0 - 2023-12-26\",\"description\":\"\\n            <ul>\\n                <li>New: Option to disable cross-site header & footer<\\/li>\\n                <li>Tweak: Update <code>Requires PHP 7.3<\\/code><\\/li>\\n                <li>Tweak: Update <code>Tested up to 6.4<\\/code><\\/li>\\n                <li>Tweak: Move cross-site header & footer styles to a separate CSS file<\\/li>\\n                <li>Tweak: Don\'t load <code>header-footer.min.css<\\/code> when disabling header & footer<\\/li>\\n                <li>Tweak: Don\'t load <code>hello-frontend.min.js<\\/code> when disabling header & footer<\\/li>\\n                <li>Tweak: Replace jQuery code with vanilla JS in the frontend<\\/li>\\n                <li>Tweak: Replace jQuery code with vanilla JS in WordPress admin<\\/li>\\n                <li>Tweak: Remove unused JS code from the frontend<\\/li>\\n                <li>Tweak: Remove unused CSS code from the editor<\\/li>\\n                <li>Tweak: Remove unnecessary <code>role<\\/code> attributes from HTML landmark elements<\\/li>\\n                <li>Tweak: Link from Elementor Site Settings to Hello Theme Settings<\\/li>\\n                <li>Fix: Dynamic script version for better caching<\\/li>\\n            <\\/ul>\"}]\";}','off');
INSERT INTO `wp_options` VALUES (195,'theme_mods_hello-elementor-child','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1754394156;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:18:\"custom_css_post_id\";i:-1;}','on');
INSERT INTO `wp_options` VALUES (305,'_transient_health-check-site-status-result','{\"good\":16,\"recommended\":3,\"critical\":1}','on');
INSERT INTO `wp_options` VALUES (314,'elementor_active_kit','83','auto');
INSERT INTO `wp_options` VALUES (315,'elementor_font_display','swap','auto');
INSERT INTO `wp_options` VALUES (318,'elementor_landing_pages_activation','0','auto');
INSERT INTO `wp_options` VALUES (319,'elementor_checklist','{\"last_opened_timestamp\":null,\"first_closed_checklist_in_editor\":false,\"is_popup_minimized\":false,\"steps\":{\"add_logo\":{\"is_marked_completed\":false,\"is_immutable_completed\":false},\"set_fonts_and_colors\":{\"is_marked_completed\":false,\"is_immutable_completed\":false},\"create_pages\":{\"is_marked_completed\":false,\"is_immutable_completed\":false},\"setup_header\":{\"is_marked_completed\":false,\"is_immutable_completed\":false},\"assign_homepage\":{\"is_marked_completed\":false,\"is_immutable_completed\":false}},\"should_open_in_editor\":false}','auto');
INSERT INTO `wp_options` VALUES (320,'elementor_version','3.31.1','auto');
INSERT INTO `wp_options` VALUES (321,'elementor_install_history','a:1:{s:6:\"3.31.1\";i:1754556204;}','auto');
INSERT INTO `wp_options` VALUES (322,'elementor_events_db_version','1.0.0','off');
INSERT INTO `wp_options` VALUES (324,'_elementor_installed_time','1754556228','auto');
INSERT INTO `wp_options` VALUES (325,'elementor_remote_info_library','a:3:{s:10:\"types_data\";a:4:{s:5:\"block\";a:2:{s:10:\"categories\";a:30:{i:0;s:8:\"404 page\";i:1;s:5:\"about\";i:2;s:7:\"archive\";i:3;s:8:\"Benefits\";i:4;s:14:\"call to action\";i:5;s:7:\"clients\";i:6;s:7:\"contact\";i:7;s:4:\"Data\";i:8;s:10:\"ehp-footer\";i:9;s:10:\"ehp-header\";i:10;s:3:\"faq\";i:11;s:8:\"features\";i:12;s:6:\"footer\";i:13;s:7:\"Gallery\";i:14;s:6:\"header\";i:15;s:4:\"hero\";i:16;s:11:\"Link in Bio\";i:17;s:9:\"portfolio\";i:18;s:7:\"pricing\";i:19;s:15:\"product archive\";i:20;s:5:\"Quote\";i:21;s:15:\"Service Details\";i:22;s:8:\"services\";i:23;s:11:\"single page\";i:24;s:11:\"single post\";i:25;s:14:\"single product\";i:26;s:5:\"stats\";i:27;s:9:\"subscribe\";i:28;s:4:\"team\";i:29;s:12:\"testimonials\";}s:4:\"sets\";a:5:{i:0;s:11:\"Boxing Club\";i:1;s:19:\"Business Consultant\";i:2;s:16:\"Marketing Agency\";i:3;s:9:\"Wireframe\";i:4;s:15:\"Workshop Center\";}}s:5:\"popup\";a:1:{s:10:\"categories\";a:6:{i:0;s:10:\"bottom bar\";i:1;s:7:\"classic\";i:2;s:6:\"fly-in\";i:3;s:11:\"full screen\";i:4;s:9:\"hello bar\";i:5;s:8:\"slide-in\";}}s:2:\"lp\";a:1:{s:10:\"categories\";a:15:{i:0;s:8:\"Business\";i:1;s:16:\"Coming Soon Page\";i:2;s:9:\"eCommerce\";i:3;s:9:\"Education\";i:4;s:6:\"Events\";i:5;s:18:\"Health and Fitness\";i:6;s:3:\"NFT\";i:7;s:14:\"Online Service\";i:8;s:7:\"Product\";i:9;s:11:\"Real Estate\";i:10;s:18:\"Social Involvement\";i:11;s:14:\"Thank You Page\";i:12;s:6:\"Travel\";i:13;s:18:\"Under Construction\";i:14;s:9:\"Wireframe\";}}s:2:\"lb\";a:1:{s:10:\"categories\";a:2:{i:0;s:4:\"post\";i:1;s:7:\"product\";}}}s:10:\"categories\";a:30:{i:0;s:8:\"404 page\";i:1;s:5:\"about\";i:2;s:7:\"archive\";i:3;s:8:\"Benefits\";i:4;s:14:\"call to action\";i:5;s:7:\"clients\";i:6;s:7:\"contact\";i:7;s:4:\"Data\";i:8;s:10:\"ehp-footer\";i:9;s:10:\"ehp-header\";i:10;s:3:\"faq\";i:11;s:8:\"features\";i:12;s:6:\"footer\";i:13;s:7:\"Gallery\";i:14;s:6:\"header\";i:15;s:4:\"hero\";i:16;s:11:\"Link in Bio\";i:17;s:9:\"portfolio\";i:18;s:7:\"pricing\";i:19;s:15:\"product archive\";i:20;s:5:\"Quote\";i:21;s:15:\"Service Details\";i:22;s:8:\"services\";i:23;s:11:\"single page\";i:24;s:11:\"single post\";i:25;s:14:\"single product\";i:26;s:5:\"stats\";i:27;s:9:\"subscribe\";i:28;s:4:\"team\";i:29;s:12:\"testimonials\";}s:9:\"templates\";a:4:{i:0;a:20:{s:4:\"tmpl\";i:1254;s:2:\"id\";i:20472;s:5:\"title\";s:10:\"test ido f\";s:9:\"thumbnail\";s:153:\"https://library.stg.elementor.red/wp-content/uploads/2025/01/png-clipart-logo-harry-potter-literary-series-lord-voldemort-film-harry-potter-thumbnail.png\";s:12:\"tmpl_created\";i:1751356263;s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:120:\"https://library.stg.elementor.red/blocks/test-ido-f/?utm_source=template-library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:11:\"access_tier\";s:4:\"free\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";i:0;s:16:\"popularity_index\";i:-1;s:11:\"trend_index\";i:-1;s:18:\"editor_layout_type\";s:0:\"\";s:15:\"minimum_version\";s:5:\"0.0.0\";s:8:\"products\";s:7:\"regular\";s:17:\"has_page_settings\";s:1:\"0\";s:6:\"is_pro\";s:1:\"0\";s:12:\"access_level\";i:0;}i:1;a:20:{s:4:\"tmpl\";i:1227;s:2:\"id\";i:19968;s:5:\"title\";s:12:\"Zeyad Test 1\";s:9:\"thumbnail\";s:83:\"https://library.stg.elementor.red/wp-content/uploads/2022/09/boxking_hero_img_2.jpg\";s:12:\"tmpl_created\";i:1670765723;s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:122:\"https://library.stg.elementor.red/blocks/zeyad-test-1/?utm_source=template-library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:11:\"access_tier\";s:9:\"essential\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";i:1;s:16:\"popularity_index\";i:-1;s:11:\"trend_index\";i:-1;s:18:\"editor_layout_type\";s:0:\"\";s:15:\"minimum_version\";s:5:\"0.0.0\";s:8:\"products\";s:7:\"regular\";s:17:\"has_page_settings\";s:1:\"0\";s:6:\"is_pro\";s:1:\"1\";s:12:\"access_level\";i:20;}i:2;a:20:{s:4:\"tmpl\";i:1231;s:2:\"id\";i:19494;s:5:\"title\";s:5:\"test2\";s:9:\"thumbnail\";s:83:\"https://library.stg.elementor.red/wp-content/uploads/2022/09/boxking_hero_img_4.jpg\";s:12:\"tmpl_created\";i:1672308146;s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.stg.elementor.red/blocks/test2/?utm_source=template-library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:11:\"access_tier\";s:9:\"essential\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";i:2;s:16:\"popularity_index\";i:-1;s:11:\"trend_index\";i:-1;s:18:\"editor_layout_type\";s:0:\"\";s:15:\"minimum_version\";s:5:\"0.0.0\";s:8:\"products\";s:7:\"regular\";s:17:\"has_page_settings\";s:1:\"1\";s:6:\"is_pro\";s:1:\"1\";s:12:\"access_level\";i:20;}i:3;a:20:{s:4:\"tmpl\";i:1209;s:2:\"id\";i:9631;s:5:\"title\";s:38:\"Slide-in | Sale | Register | Subscribe\";s:9:\"thumbnail\";s:87:\"https://library.stg.elementor.red/wp-content/uploads/2019/01/Slide-in_Sale_small_01.png\";s:12:\"tmpl_created\";i:1660034300;s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:126:\"https://library.stg.elementor.red/popups/slide-in-sale-01/?utm_source=template-library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"popup\";s:11:\"access_tier\";s:9:\"essential\";s:7:\"subtype\";s:8:\"slide-in\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";i:142;s:16:\"popularity_index\";i:-1;s:11:\"trend_index\";i:-1;s:18:\"editor_layout_type\";s:0:\"\";s:15:\"minimum_version\";s:5:\"0.0.0\";s:8:\"products\";s:7:\"regular\";s:17:\"has_page_settings\";s:1:\"1\";s:6:\"is_pro\";s:1:\"1\";s:12:\"access_level\";i:1;}}}','off');
INSERT INTO `wp_options` VALUES (326,'elementor_remote_info_feed_data','a:3:{i:0;a:5:{s:5:\"title\";s:67:\"What Is an MCP? The AI Breakthrough Web Creators Shouldn’t Ignore\";s:7:\"excerpt\";s:143:\"Discover how Model Context Protocol (MCP) is shaping AI-tool interaction and redefining how pro web creators build, manage, and scale websites.\";s:7:\"created\";i:1754310811;s:5:\"badge\";s:0:\"\";s:3:\"url\";s:130:\"https://elementor.com/blog/mcp-explained-for-web-creators/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed\";}i:1;a:5:{s:5:\"title\";s:100:\"Introducing Elementor 3.30: new Editor V4 capabilities, full Website Templates in the cloud, & more!\";s:7:\"excerpt\";s:361:\"Elementor 3.30 is here and it includes upgrades that accelerate your workflow, bring you a step closer to the full power of Editor V4, and help you deliver beautiful, accessible websites faster than ever. From advanced styling tools and smarter editing to full Website Templates in the cloud, this release enhances both the way you design and the way you scale.\";s:7:\"created\";i:1751974442;s:5:\"badge\";s:3:\"NEW\";s:3:\"url\";s:140:\"https://elementor.com/blog/elementor-330-v4-alpha-website-templates/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed\";}i:2;a:5:{s:5:\"title\";s:57:\"Introducing Cloud Templates: your personal design library\";s:7:\"excerpt\";s:153:\"Transform your workflow with Elementor\'s new Cloud Templates – create, save, and access your templates across all your websites with just a few clicks.\";s:7:\"created\";i:1749048239;s:5:\"badge\";s:3:\"NEW\";s:3:\"url\";s:127:\"https://elementor.com/blog/introducing-cloud-templates/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed\";}}','off');
INSERT INTO `wp_options` VALUES (339,'_elementor_local_google_fonts','a:2:{s:6:\"roboto\";a:2:{s:3:\"url\";s:85:\"http://cheap-medscards.local/wp-content/uploads/elementor/google-fonts/css/roboto.css\";s:7:\"version\";i:1754556358;}s:10:\"robotoslab\";a:2:{s:3:\"url\";s:89:\"http://cheap-medscards.local/wp-content/uploads/elementor/google-fonts/css/robotoslab.css\";s:7:\"version\";i:1754556385;}}','auto');
INSERT INTO `wp_options` VALUES (341,'elementor_onboarded','1','auto');
INSERT INTO `wp_options` VALUES (344,'e_editor_counter','8','auto');
INSERT INTO `wp_options` VALUES (345,'_elementor_free_to_pro_upsell','a:2:{s:7:\"timeout\";i:1754560150;s:5:\"value\";s:593:\"[{\"id\":\"animated_headline\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/free-to-pro-upsell\\/v1\\/images\\/animated_headline.jpg\"},{\"id\":\"video_playlist\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/free-to-pro-upsell\\/v1\\/images\\/video_playlist.jpg\"},{\"id\":\"cta\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/free-to-pro-upsell\\/v1\\/images\\/cta.jpg\"},{\"id\":\"testimonial_widget\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/free-to-pro-upsell\\/v1\\/images\\/testimonial_widget.jpg\"},{\"id\":\"image_carousel\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/free-to-pro-upsell\\/v1\\/images\\/image_carousel.jpg\"}]\";}','off');
INSERT INTO `wp_options` VALUES (346,'_elementor_notifications_data','a:2:{s:7:\"timeout\";i:1754560151;s:5:\"value\";s:15287:\"[{\"id\":\"send-cart-widget\",\"title\":\"Introducing: Cart Widget\",\"description\":\"Show customers exactly what they left behind\\u2014visually. The new Cart Widget adds product images to your emails for smarter, higher-converting cart recovery.\",\"topic\":\"Send: Email & SMS built for WooCommerce\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/cart-widget-send.png\",\"chipTags\":[\"New Feature\"],\"cta\":\"Explore Cart Widget\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/WN_CartW\",\"conditions\":[[{\"type\":\"plugin\",\"operator\":\"!=\",\"plugin\":\"send-app\\/send-app.php\"}]]},{\"id\":\"classes-3.30\",\"title\":\"Better class control\",\"description\":\"Get popovers with your class name, breakpoint, state and possible conflicts. Plus, the exact class names you define are now reflected in the code, making debugging and working with external tools easier!\",\"topic\":\"Editor V4 Alpha\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/classes-3.30.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.39-v4-blog\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"cloud-websites-3.30\",\"title\":\"Full Website Templates in the cloud\",\"description\":\"Save and apply entire websites, including multiple pages, styles, site settings, media, and layout configurations - directly from the cloud.\",\"topic\":\"Elementor Pro 3.30\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/cloud-3.30.png\",\"chipPlan\":\"Pro\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.39-v4-blog\\/\",\"readMoreText\":\"Learn More\",\"conditions\":[[{\"type\":\"plugin\",\"plugin\":\"elementor-pro\\/elementor-pro.php\"}]]},{\"id\":\"cloud-websites-3.30\",\"title\":\"Full Website Templates in the cloud\",\"description\":\"Save and apply entire websites, including multiple pages, styles, site settings, media, and layout configurations - directly from the cloud.\",\"topic\":\"Elementor Pro 3.30\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/cloud-3.30.png\",\"chipTags\":[\"New Feature\"],\"cta\":\"Upgrade now\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.30-cloud-websites\\/\"},{\"id\":\"tools-3.30\",\"title\":\"Essential Editor tools\",\"description\":\"V4 now includes a long list of essential V3 capabilities, re-engineered to fit the new framework - IDs, custom unit, anchor offset, display none, object fit, clear icons and more!\",\"topic\":\"Editor V4 Alpha\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/tools-3.30.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.39-v4-blog\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"youtube-3.30\",\"title\":\"YouTube Element\",\"description\":\"The new YouTube Element is purpose-built to support V4 capabilities with faster rendering, better performance, and familiar controls like autoplay, loop, mute, and aspect ratio.\",\"topic\":\"Editor V4 Alpha\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/youtube-3.30.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.39-v4-blog\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"host-google-cloud\",\"title\":\"Deliver fast, secure websites at scale - free migration included!\",\"description\":\"Host your site on Elementor\\u2019s infrastructure - built for speed, security, and scale. Powered by Google Cloud, with free migration and 24\\/7 expert support.\",\"topic\":\"Host\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/host-google-cloud.png\",\"chipTags\":[\"Cloud Hosting\"],\"link\":\"https:\\/\\/go.elementor.com\\/elementor-host-google-cloud\",\"readMoreText\":\"Read More\"},{\"id\":\"send-notification-june\",\"title\":\"A whole new onboarding experience\",\"description\":\"Try the new onboarding now: Launch abandoned cart recovery, welcome flows & more in minutes. No setup stress\\u2014just smarter automation from day one.\",\"topic\":\"Send: Email & SMS built for WooCommerce\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/send-june.png\",\"chipTags\":[\"New Features\"],\"cta\":\"Check Out\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/New_June\",\"conditions\":[[{\"type\":\"plugin\",\"operator\":\"!=\",\"plugin\":\"send-app\\/send-app.php\"}]]},{\"id\":\"cloud-templates-3.29\",\"title\":\"Your Templates, available everywhere\",\"description\":\"Store sections, containers, and full pages in the cloud\\u2014making them accessible across all your Pro-connected sites. Style once, reuse anywhere!\",\"topic\":\"Elementor Pro 3.29\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/cloud-templates.png\",\"chipPlan\":\"Pro\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.29-cloud-templates-blog\\/\",\"readMoreText\":\"Learn More\",\"conditions\":[[{\"type\":\"plugin\",\"plugin\":\"elementor-pro\\/elementor-pro.php\"}]]},{\"id\":\"cloud-templates-3.29\",\"title\":\"Your Templates, available everywhere\",\"description\":\"Store sections, containers, and full pages in the cloud\\u2014making them accessible across all your Pro-connected sites. Style once, reuse anywhere!\",\"topic\":\"Elementor Pro 3.29\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/cloud-templates.png\",\"chipTags\":[\"New Feature\"],\"cta\":\"Upgrade\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.29-cloud-templates\\/\"},{\"id\":\"classes-3.29\",\"title\":\"Classes: Style Once, Apply Everywhere\",\"description\":\"Create Classes to define styling patterns once and apply them across your entire site with a single click. Add States for stunning hover and focus effects\\u2014no coding needed!\",\"topic\":\"Editor V4 Alpha\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/v4-classes.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.29-editor-v4\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"style-tab-3.29\",\"title\":\"Consistent Styling Everywhere\",\"description\":\"Every V4 element shares the same styling capabilities in the same logical order and location. Plus, we\'ve streamlined from 3 tabs to just 2\\u2014content in one, styling in the other!\",\"topic\":\"Editor V4 Alpha\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/v4-style-tab.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.29-editor-v4\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"responsive-3.29\",\"title\":\"Fully Responsive Design\",\"description\":\"With Editor V4, every single style property can be customized per device. Complete creative control for desktop, tablet, and mobile!\",\"topic\":\"Editor V4 Alpha\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/v4-responsive.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.29-editor-v4\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"performance-3.29\",\"title\":\"Blazing fast performance\",\"description\":\"In Editor V4, each element uses one clean div instead of multiple nested divs like in the current version\\u2014your sites will load lightning-fast with cleaner code!\",\"topic\":\"Editor V4 Alpha\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/v4-performance.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.29-editor-v4\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"migration-host\",\"title\":\"Move to Better Cloud Hosting, Painlessly\",\"description\":\"Migrate your Elementor website for free to a home that\\u2019s perfect for it, in minutes, with a combination of\\u2028advanced automation and free expert support\",\"topic\":\"Host\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/migration-host.png\",\"chipTags\":[\"Cloud Hosting\"],\"link\":\"https:\\/\\/go.elementor.com\\/hosting-free-migration\",\"readMoreText\":\"Learn More\",\"cta\":\"Migrate for free\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/hosting-free-migration\"},{\"id\":\"ai-isolate-object\",\"title\":\"Sharper product images, instantly\",\"description\":\"Remove distractions and reframe your shots with the new Isolate Object tool powered by Elementor AI \\u2014 perfect for a polished, uniform Woo storefront.\",\"topic\":\"Elementor AI\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/isolate-object-ai.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/Isolateobjectblog\",\"readMoreText\":\"Learn More\",\"conditions\":[[{\"type\":\"introduction_meta\",\"meta\":\"ai_get_started\"}]],\"cta\":\"Start Free Trial\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/Isolateobjectblog\"},{\"id\":\"ai-isolate-object\",\"title\":\"Sharper product images, instantly\",\"description\":\"Remove distractions and reframe your shots with the new Isolate Object tool powered by Elementor AI \\u2014 perfect for a polished, uniform Woo storefront.\",\"topic\":\"Elementor AI\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/isolate-object-ai.png\",\"chipTags\":[\"New Feature\"],\"cta\":\"Start Free Trial\",\"link\":\"https:\\/\\/go.elementor.com\\/Isolateobjectblog\",\"readMoreText\":\"Learn More\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/Isolateobjectblog\"},{\"id\":\"hello-biz-contact\",\"title\":\"New Contact Widget, Visual Layout Presets & more\",\"description\":\"Hello Biz just got an update! Explore the new Contact Widget, Visual Layout Presets, Form Submissions integration, and fresh new kits.\",\"topic\":\"Hello Biz\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/hello-biz-contact.png\",\"chipTags\":[\"New Features\"],\"link\":\"https:\\/\\/go.elementor.com\\/hello-biz-updates\",\"readMoreText\":\"Learn More\"},{\"id\":\"ai-site-planner-colors\",\"title\":\"Style Your Wireframe, Speed Up Your Store Build\",\"description\":\"Site Planner now lets you style your wireframe with fonts and colors - instantly visualizing your site\\u2019s look and feel. Plus, it predesigns pages for WooCommerce like Cart and Checkout, so you can dive straight into customizations\",\"topic\":\"Elementor AI\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/site-planner-colors.png\",\"chipTags\":[\"New Feature\"],\"link\":\"http:\\/\\/www.elementor.com\\/ai-site-planner\",\"readMoreText\":\"Learn More\"},{\"id\":\"ally-notification\",\"title\":\"Just released! Ally - a new plugin for web accessibility & usability\",\"description\":\"Ally simplifies the complexities of making your website more accessible. With new regulations here and coming, making your website more usable and inclusive is no longer just an option, but a must.\",\"topic\":\"Ally by Elementor\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/ally-notification.png\",\"chipTags\":[\"New plugin\"],\"cta\":\"Get it free\",\"ctaLink\":\"https:\\/\\/wordpress.org\\/plugins\\/pojo-accessibility\\/\",\"conditions\":[[{\"type\":\"plugin\",\"operator\":\"!=\",\"plugin\":\"pojo-accessibility\\/pojo-accessibility.php\"}]]},{\"id\":\"ai-site-planner\",\"title\":\"Instant Sitemaps & Wireframes\",\"description\":\"Get your website plan in minutes with AI Site Planner. Describe your desired site and AI will generate a sitemap, brief and wireframe populated with initial content, ready for you to customize.\",\"topic\":\"Elementor AI\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/aI-site-planner.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/ai-notification-site-planner\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"grid-span-3.27\",\"title\":\"Design Grid layouts that fit your exact vision\",\"description\":\"Advanced column and row span controls give you the power to design Grid Container layouts that fit your exact vision.\",\"topic\":\"Elementor 3.27\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/grid-span-3.27.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.27-grid-span-blog\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"local-fonts-3.27\",\"title\":\"Load Google Fonts safer and faster\",\"description\":\"Once enabled, Google Fonts are served directly from your server, streamlining the loading process and enhancing security.\",\"topic\":\"Elementor 3.27\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/local-google-fonts-3.27.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.27-local-fonts-blog\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"video-shorts-3.27\",\"title\":\"Showcase short-form, vertical videos\",\"description\":\"The Video widget now supports YouTube Shorts in a vertical 9:16 ratio, the go-to format for engaging audiences.\",\"topic\":\"Elementor 3.27\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/video-shorts-3.27.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.27-video-shorts-blog\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"dynamic-off-canvas-3.26\",\"title\":\"Dynamic Off-Canvas for Loop Grids\",\"description\":\"Create richer, more interactive designs by linking Dynamic Content to the Off Canvas widget, delivering seamless user experiences.\",\"topic\":\"Elementor Pro 3.26\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/off-canvas-loop-grids.png\",\"chipPlan\":\"Pro\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.26-blog\\/\",\"readMoreText\":\"Learn More\",\"conditions\":[[{\"type\":\"plugin\",\"plugin\":\"elementor-pro\\/elementor-pro.php\"}]]},{\"id\":\"dynamic-off-canvas-3.26\",\"title\":\"Dynamic Off-Canvas for Loop Grids\",\"description\":\"Create richer, more interactive designs by linking Dynamic Content to the Off Canvas widget, delivering seamless user experiences.\",\"topic\":\"Elementor Pro 3.26\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/off-canvas-loop-grids.png\",\"chipTags\":[\"New Feature\"],\"cta\":\"Upgrade\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.26-loop-off-canvas\\/\"},{\"id\":\"image-optimizer-3.19\",\"title\":\"Effortlessly optimize images for a stunning, high-speed website with the Image Optimizer plugin.\",\"description\":\"Image Optimizer perfectly balances between image quality and performance to boost your website.  Resize, compress, and convert images to WebP, for faster loading times and and better user experience.\",\"topic\":\"Image Optimizer Plugin by Elementor\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/image-optimizer-3.19.png\",\"chipTags\":[\"New plugin\"],\"cta\":\"Get the Image Optimizer\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/io-notification-wp-dash-learn-more\\/\",\"conditions\":[[{\"type\":\"plugin\",\"operator\":\"!=\",\"plugin\":\"image-optimization\\/image-optimization.php\"}]]},{\"id\":\"5-star-rating-prompt\",\"title\":\"Love the New Features? Let Us Know with 5 Stars!\",\"description\":\"Help spread the word by telling the world what you love about Elementor.\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/5-star-rating-prompt.png\",\"cta\":\"Leave a Review\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/wp-dash-notification-five-stars\\/\"},{\"id\":\"site-mailer-introducing\",\"title\":\"Introducing Site Mailer\",\"description\":\"Keep your WordPress emails out of the spam folder with improved deliverability and an easy setup\\u2014no need for an SMTP plugin or complicated configurations.\",\"topic\":\"Site Mailer Plugin by Elementor\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/Site-mailer.png\",\"chipTags\":[\"New plugin\"],\"cta\":\"Start Free Trial\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/sm-wp-dash-whatsnew\\/\",\"conditions\":[[{\"type\":\"plugin\",\"operator\":\"!=\",\"plugin\":\"site-mailer\\/site-mailer.php\"}]]}]\";}','off');
INSERT INTO `wp_options` VALUES (349,'_elementor_settings_update_time','1754557039','auto');
INSERT INTO `wp_options` VALUES (350,'elementor_cpt_support','a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"dispensary\";}','auto');
INSERT INTO `wp_options` VALUES (351,'elementor_disable_color_schemes','','auto');
INSERT INTO `wp_options` VALUES (352,'elementor_disable_typography_schemes','','auto');
INSERT INTO `wp_options` VALUES (353,'elementor_allow_tracking_last_update','1754557039','auto');
INSERT INTO `wp_options` VALUES (354,'elementor_allow_tracking','no','auto');
INSERT INTO `wp_options` VALUES (355,'elementor_google_maps_api_key','','auto');
INSERT INTO `wp_options` VALUES (356,'elementor_editor_break_lines','','auto');
INSERT INTO `wp_options` VALUES (357,'elementor_unfiltered_files_upload','','auto');
INSERT INTO `wp_options` VALUES (358,'elementor_google_font','1','auto');
INSERT INTO `wp_options` VALUES (359,'elementor_load_fa4_shim','','auto');
INSERT INTO `wp_options` VALUES (360,'elementor_meta_generator_tag','','auto');
INSERT INTO `wp_options` VALUES (361,'elementor_css_print_method','external','auto');
INSERT INTO `wp_options` VALUES (362,'elementor_optimized_image_loading','1','auto');
INSERT INTO `wp_options` VALUES (363,'elementor_optimized_gutenberg_loading','1','auto');
INSERT INTO `wp_options` VALUES (364,'elementor_lazy_load_background_images','1','auto');
INSERT INTO `wp_options` VALUES (365,'elementor_element_cache_ttl','24','auto');
INSERT INTO `wp_options` VALUES (366,'elementor_experiment-cloud-library','default','auto');
INSERT INTO `wp_options` VALUES (367,'elementor_experiment-e_font_icon_svg','default','auto');
INSERT INTO `wp_options` VALUES (368,'elementor_experiment-additional_custom_breakpoints','default','auto');
INSERT INTO `wp_options` VALUES (369,'elementor_experiment-container','default','auto');
INSERT INTO `wp_options` VALUES (370,'elementor_experiment-e_optimized_markup','default','auto');
INSERT INTO `wp_options` VALUES (371,'elementor_experiment-hello-theme-header-footer','default','auto');
INSERT INTO `wp_options` VALUES (372,'elementor_experiment-nested-elements','default','auto');
INSERT INTO `wp_options` VALUES (373,'elementor_experiment-e_element_cache','default','auto');
INSERT INTO `wp_options` VALUES (380,'_elementor_element_cache_unique_id','678842bf76fbc6916adf5f9500fc4d95','auto');
INSERT INTO `wp_options` VALUES (381,'recovery_mode_email_last_sent','1754557588','auto');
INSERT INTO `wp_options` VALUES (510,'_transient_timeout_elementor_remote_info_api_data_3.31.1','1755023427','off');
INSERT INTO `wp_options` VALUES (511,'_transient_elementor_remote_info_api_data_3.31.1','a:4:{s:9:\"timestamp\";s:10:\"1754978007\";s:14:\"upgrade_notice\";a:3:{s:7:\"version\";s:5:\"2.0.0\";s:7:\"message\";s:0:\"\";s:11:\"update_link\";s:0:\"\";}s:11:\"pro_widgets\";a:82:{i:0;a:4:{s:4:\"name\";s:6:\"search\";s:5:\"title\";s:6:\"Search\";s:4:\"icon\";s:17:\"eicon-site-search\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:1;a:4:{s:4:\"name\";s:5:\"posts\";s:5:\"title\";s:5:\"Posts\";s:4:\"icon\";s:15:\"eicon-post-list\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:2;a:4:{s:4:\"name\";s:9:\"portfolio\";s:5:\"title\";s:9:\"Portfolio\";s:4:\"icon\";s:18:\"eicon-gallery-grid\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:3;a:4:{s:4:\"name\";s:17:\"link-in-bio-var-2\";s:5:\"title\";s:7:\"Classic\";s:4:\"icon\";s:19:\"eicon-site-identity\";s:10:\"categories\";s:15:\"[\"link-in-bio\"]\";}i:4;a:4:{s:4:\"name\";s:9:\"mega-menu\";s:5:\"title\";s:4:\"Menu\";s:4:\"icon\";s:15:\"eicon-mega-menu\";s:10:\"categories\";s:33:\"[\"pro-elements\",\"theme-elements\"]\";}i:5;a:4:{s:4:\"name\";s:17:\"link-in-bio-var-3\";s:5:\"title\";s:8:\"Showcase\";s:4:\"icon\";s:19:\"eicon-site-identity\";s:10:\"categories\";s:15:\"[\"link-in-bio\"]\";}i:6;a:4:{s:4:\"name\";s:4:\"form\";s:5:\"title\";s:4:\"Form\";s:4:\"icon\";s:21:\"eicon-form-horizontal\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:7;a:4:{s:4:\"name\";s:17:\"link-in-bio-var-4\";s:5:\"title\";s:5:\"Links\";s:4:\"icon\";s:19:\"eicon-site-identity\";s:10:\"categories\";s:15:\"[\"link-in-bio\"]\";}i:8;a:4:{s:4:\"name\";s:9:\"loop-grid\";s:5:\"title\";s:9:\"Loop Grid\";s:4:\"icon\";s:18:\"eicon-loop-builder\";s:10:\"categories\";s:33:\"[\"pro-elements\",\"theme-elements\"]\";}i:9;a:4:{s:4:\"name\";s:17:\"link-in-bio-var-5\";s:5:\"title\";s:8:\"Services\";s:4:\"icon\";s:19:\"eicon-site-identity\";s:10:\"categories\";s:15:\"[\"link-in-bio\"]\";}i:10;a:4:{s:4:\"name\";s:13:\"loop-carousel\";s:5:\"title\";s:13:\"Loop Carousel\";s:4:\"icon\";s:19:\"eicon-carousel-loop\";s:10:\"categories\";s:33:\"[\"pro-elements\",\"theme-elements\"]\";}i:11;a:4:{s:4:\"name\";s:17:\"link-in-bio-var-6\";s:5:\"title\";s:9:\"Portfolio\";s:4:\"icon\";s:19:\"eicon-site-identity\";s:10:\"categories\";s:15:\"[\"link-in-bio\"]\";}i:12;a:4:{s:4:\"name\";s:7:\"gallery\";s:5:\"title\";s:7:\"Gallery\";s:4:\"icon\";s:23:\"eicon-gallery-justified\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:13;a:4:{s:4:\"name\";s:17:\"link-in-bio-var-7\";s:5:\"title\";s:13:\"Business Card\";s:4:\"icon\";s:19:\"eicon-site-identity\";s:10:\"categories\";s:15:\"[\"link-in-bio\"]\";}i:14;a:4:{s:4:\"name\";s:17:\"animated-headline\";s:5:\"title\";s:17:\"Animated Headline\";s:4:\"icon\";s:23:\"eicon-animated-headline\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:15;a:4:{s:4:\"name\";s:10:\"price-list\";s:5:\"title\";s:10:\"Price List\";s:4:\"icon\";s:16:\"eicon-price-list\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:16;a:4:{s:4:\"name\";s:11:\"price-table\";s:5:\"title\";s:11:\"Price Table\";s:4:\"icon\";s:17:\"eicon-price-table\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:17;a:4:{s:4:\"name\";s:8:\"flip-box\";s:5:\"title\";s:8:\"Flip Box\";s:4:\"icon\";s:14:\"eicon-flip-box\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:18;a:4:{s:4:\"name\";s:14:\"call-to-action\";s:5:\"title\";s:14:\"Call to Action\";s:4:\"icon\";s:20:\"eicon-image-rollover\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:19;a:4:{s:4:\"name\";s:14:\"media-carousel\";s:5:\"title\";s:14:\"Media Carousel\";s:4:\"icon\";s:20:\"eicon-media-carousel\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:20;a:4:{s:4:\"name\";s:15:\"nested-carousel\";s:5:\"title\";s:8:\"Carousel\";s:4:\"icon\";s:21:\"eicon-nested-carousel\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:21;a:4:{s:4:\"name\";s:10:\"off-canvas\";s:5:\"title\";s:10:\"Off-Canvas\";s:4:\"icon\";s:16:\"eicon-off-canvas\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:22;a:4:{s:4:\"name\";s:9:\"countdown\";s:5:\"title\";s:9:\"Countdown\";s:4:\"icon\";s:15:\"eicon-countdown\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:23;a:4:{s:4:\"name\";s:13:\"share-buttons\";s:5:\"title\";s:13:\"Share Buttons\";s:4:\"icon\";s:11:\"eicon-share\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:24;a:4:{s:4:\"name\";s:10:\"blockquote\";s:5:\"title\";s:10:\"Blockquote\";s:4:\"icon\";s:16:\"eicon-blockquote\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:25;a:4:{s:4:\"name\";s:6:\"lottie\";s:5:\"title\";s:6:\"Lottie\";s:4:\"icon\";s:12:\"eicon-lottie\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:26;a:4:{s:4:\"name\";s:7:\"hotspot\";s:5:\"title\";s:7:\"Hotspot\";s:4:\"icon\";s:19:\"eicon-image-hotspot\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:27;a:4:{s:4:\"name\";s:13:\"paypal-button\";s:5:\"title\";s:13:\"PayPal Button\";s:4:\"icon\";s:19:\"eicon-paypal-button\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:28;a:4:{s:4:\"name\";s:14:\"code-highlight\";s:5:\"title\";s:14:\"Code Highlight\";s:4:\"icon\";s:20:\"eicon-code-highlight\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:29;a:4:{s:4:\"name\";s:14:\"video-playlist\";s:5:\"title\";s:14:\"Video Playlist\";s:4:\"icon\";s:20:\"eicon-video-playlist\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:30;a:4:{s:4:\"name\";s:8:\"template\";s:5:\"title\";s:8:\"Template\";s:4:\"icon\";s:19:\"eicon-document-file\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:31;a:4:{s:4:\"name\";s:13:\"stripe-button\";s:5:\"title\";s:13:\"Stripe Button\";s:4:\"icon\";s:19:\"eicon-stripe-button\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:32;a:4:{s:4:\"name\";s:16:\"progress-tracker\";s:5:\"title\";s:16:\"Progress Tracker\";s:4:\"icon\";s:22:\"eicon-progress-tracker\";s:10:\"categories\";s:40:\"[\"pro-elements\",\"theme-elements-single\"]\";}i:33;a:4:{s:4:\"name\";s:8:\"nav-menu\";s:5:\"title\";s:8:\"Nav Menu\";s:4:\"icon\";s:14:\"eicon-nav-menu\";s:10:\"categories\";s:33:\"[\"pro-elements\",\"theme-elements\"]\";}i:34;a:4:{s:4:\"name\";s:17:\"table-of-contents\";s:5:\"title\";s:17:\"Table of Contents\";s:4:\"icon\";s:23:\"eicon-table-of-contents\";s:10:\"categories\";s:33:\"[\"pro-elements\",\"theme-elements\"]\";}i:35;a:4:{s:4:\"name\";s:5:\"login\";s:5:\"title\";s:5:\"Login\";s:4:\"icon\";s:15:\"eicon-lock-user\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:36;a:4:{s:4:\"name\";s:6:\"slides\";s:5:\"title\";s:6:\"Slides\";s:4:\"icon\";s:12:\"eicon-slides\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:37;a:4:{s:4:\"name\";s:20:\"testimonial-carousel\";s:5:\"title\";s:20:\"Testimonial Carousel\";s:4:\"icon\";s:26:\"eicon-testimonial-carousel\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:38;a:4:{s:4:\"name\";s:7:\"reviews\";s:5:\"title\";s:7:\"Reviews\";s:4:\"icon\";s:12:\"eicon-review\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:39;a:4:{s:4:\"name\";s:15:\"facebook-button\";s:5:\"title\";s:15:\"Facebook Button\";s:4:\"icon\";s:23:\"eicon-facebook-like-box\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:40;a:4:{s:4:\"name\";s:17:\"facebook-comments\";s:5:\"title\";s:17:\"Facebook Comments\";s:4:\"icon\";s:23:\"eicon-facebook-comments\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:41;a:4:{s:4:\"name\";s:14:\"facebook-embed\";s:5:\"title\";s:14:\"Facebook Embed\";s:4:\"icon\";s:14:\"eicon-fb-embed\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:42;a:4:{s:4:\"name\";s:13:\"facebook-page\";s:5:\"title\";s:13:\"Facebook Page\";s:4:\"icon\";s:13:\"eicon-fb-feed\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:43;a:4:{s:4:\"name\";s:15:\"theme-site-logo\";s:5:\"title\";s:9:\"Site Logo\";s:4:\"icon\";s:15:\"eicon-site-logo\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:44;a:4:{s:4:\"name\";s:16:\"theme-site-title\";s:5:\"title\";s:10:\"Site Title\";s:4:\"icon\";s:16:\"eicon-site-title\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:45;a:4:{s:4:\"name\";s:16:\"theme-page-title\";s:5:\"title\";s:10:\"Page Title\";s:4:\"icon\";s:19:\"eicon-archive-title\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:46;a:4:{s:4:\"name\";s:16:\"theme-post-title\";s:5:\"title\";s:10:\"Post Title\";s:4:\"icon\";s:16:\"eicon-post-title\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:47;a:4:{s:4:\"name\";s:18:\"theme-post-excerpt\";s:5:\"title\";s:12:\"Post Excerpt\";s:4:\"icon\";s:18:\"eicon-post-excerpt\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:48;a:4:{s:4:\"name\";s:25:\"theme-post-featured-image\";s:5:\"title\";s:14:\"Featured Image\";s:4:\"icon\";s:20:\"eicon-featured-image\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:49;a:4:{s:4:\"name\";s:19:\"theme-archive-title\";s:5:\"title\";s:13:\"Archive Title\";s:4:\"icon\";s:19:\"eicon-archive-title\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:50;a:4:{s:4:\"name\";s:13:\"archive-posts\";s:5:\"title\";s:13:\"Archive Posts\";s:4:\"icon\";s:19:\"eicon-archive-posts\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:51;a:4:{s:4:\"name\";s:10:\"author-box\";s:5:\"title\";s:10:\"Author Box\";s:4:\"icon\";s:12:\"eicon-person\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:52;a:4:{s:4:\"name\";s:13:\"post-comments\";s:5:\"title\";s:13:\"Post Comments\";s:4:\"icon\";s:14:\"eicon-comments\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:53;a:4:{s:4:\"name\";s:15:\"post-navigation\";s:5:\"title\";s:15:\"Post Navigation\";s:4:\"icon\";s:21:\"eicon-post-navigation\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:54;a:4:{s:4:\"name\";s:9:\"post-info\";s:5:\"title\";s:9:\"Post Info\";s:4:\"icon\";s:15:\"eicon-post-info\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:55;a:4:{s:4:\"name\";s:7:\"sitemap\";s:5:\"title\";s:7:\"Sitemap\";s:4:\"icon\";s:13:\"eicon-sitemap\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:56;a:4:{s:4:\"name\";s:11:\"breadcrumbs\";s:5:\"title\";s:11:\"Breadcrumbs\";s:4:\"icon\";s:11:\"eicon-yoast\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:57;a:4:{s:4:\"name\";s:21:\"woocommerce-menu-cart\";s:5:\"title\";s:9:\"Menu Cart\";s:4:\"icon\";s:10:\"eicon-cart\";s:10:\"categories\";s:41:\"[\"theme-elements\",\"woocommerce-elements\"]\";}i:58;a:4:{s:4:\"name\";s:19:\"wc-archive-products\";s:5:\"title\";s:16:\"Archive Products\";s:4:\"icon\";s:14:\"eicon-products\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:59;a:4:{s:4:\"name\";s:31:\"woocommerce-archive-description\";s:5:\"title\";s:19:\"Archive Description\";s:4:\"icon\";s:25:\"eicon-product-description\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:60;a:4:{s:4:\"name\";s:20:\"woocommerce-products\";s:5:\"title\";s:8:\"Products\";s:4:\"icon\";s:14:\"eicon-products\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:61;a:4:{s:4:\"name\";s:22:\"woocommerce-breadcrumb\";s:5:\"title\";s:23:\"WooCommerce Breadcrumbs\";s:4:\"icon\";s:25:\"eicon-product-breadcrumbs\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:62;a:4:{s:4:\"name\";s:14:\"wc-add-to-cart\";s:5:\"title\";s:18:\"Custom Add To Cart\";s:4:\"icon\";s:17:\"eicon-woocommerce\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:63;a:4:{s:4:\"name\";s:11:\"wc-elements\";s:5:\"title\";s:17:\"WooCommerce Pages\";s:4:\"icon\";s:19:\"eicon-product-pages\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:64;a:4:{s:4:\"name\";s:13:\"wc-categories\";s:5:\"title\";s:18:\"Product Categories\";s:4:\"icon\";s:24:\"eicon-product-categories\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:65;a:4:{s:4:\"name\";s:25:\"woocommerce-product-title\";s:5:\"title\";s:13:\"Product Title\";s:4:\"icon\";s:19:\"eicon-product-title\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:66;a:4:{s:4:\"name\";s:26:\"woocommerce-product-images\";s:5:\"title\";s:14:\"Product Images\";s:4:\"icon\";s:20:\"eicon-product-images\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:67;a:4:{s:4:\"name\";s:25:\"woocommerce-product-price\";s:5:\"title\";s:13:\"Product Price\";s:4:\"icon\";s:19:\"eicon-product-price\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:68;a:4:{s:4:\"name\";s:31:\"woocommerce-product-add-to-cart\";s:5:\"title\";s:11:\"Add To Cart\";s:4:\"icon\";s:25:\"eicon-product-add-to-cart\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:69;a:4:{s:4:\"name\";s:26:\"woocommerce-product-rating\";s:5:\"title\";s:14:\"Product Rating\";s:4:\"icon\";s:20:\"eicon-product-rating\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:70;a:4:{s:4:\"name\";s:25:\"woocommerce-product-stock\";s:5:\"title\";s:13:\"Product Stock\";s:4:\"icon\";s:19:\"eicon-product-stock\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:71;a:4:{s:4:\"name\";s:24:\"woocommerce-product-meta\";s:5:\"title\";s:12:\"Product Meta\";s:4:\"icon\";s:18:\"eicon-product-meta\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:72;a:4:{s:4:\"name\";s:37:\"woocommerce-product-short-description\";s:5:\"title\";s:17:\"Short Description\";s:4:\"icon\";s:25:\"eicon-product-description\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:73;a:4:{s:4:\"name\";s:29:\"woocommerce-product-data-tabs\";s:5:\"title\";s:17:\"Product Data Tabs\";s:4:\"icon\";s:18:\"eicon-product-tabs\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:74;a:4:{s:4:\"name\";s:42:\"woocommerce-product-additional-information\";s:5:\"title\";s:22:\"Additional Information\";s:4:\"icon\";s:19:\" eicon-product-info\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:75;a:4:{s:4:\"name\";s:27:\"woocommerce-product-related\";s:5:\"title\";s:15:\"Product Related\";s:4:\"icon\";s:21:\"eicon-product-related\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:76;a:4:{s:4:\"name\";s:26:\"woocommerce-product-upsell\";s:5:\"title\";s:7:\"Upsells\";s:4:\"icon\";s:20:\"eicon-product-upsell\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:77;a:4:{s:4:\"name\";s:25:\"woocommerce-checkout-page\";s:5:\"title\";s:8:\"Checkout\";s:4:\"icon\";s:14:\"eicon-checkout\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:78;a:4:{s:4:\"name\";s:16:\"woocommerce-cart\";s:5:\"title\";s:4:\"Cart\";s:4:\"icon\";s:14:\"eicon-woo-cart\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:79;a:4:{s:4:\"name\";s:22:\"woocommerce-my-account\";s:5:\"title\";s:10:\"My Account\";s:4:\"icon\";s:16:\"eicon-my-account\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:80;a:4:{s:4:\"name\";s:28:\"woocommerce-purchase-summary\";s:5:\"title\";s:16:\"Purchase Summary\";s:4:\"icon\";s:22:\"eicon-purchase-summary\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:81;a:4:{s:4:\"name\";s:19:\"woocommerce-notices\";s:5:\"title\";s:19:\"WooCommerce Notices\";s:4:\"icon\";s:25:\"eicon-woocommerce-notices\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}}s:17:\"canary_deployment\";a:2:{s:11:\"plugin_info\";a:11:{s:2:\"id\";s:23:\"w.org/plugins/elementor\";s:4:\"slug\";s:9:\"elementor\";s:6:\"plugin\";s:23:\"elementor/elementor.php\";s:11:\"new_version\";s:5:\"3.6.0\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/elementor.3.6.0.zip\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/elementor/\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/elementor/assets/icon-256x256.png?rev=1427768\";s:2:\"1x\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=1426809\";s:3:\"svg\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=1426809\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/elementor/assets/banner-1544x500.png?rev=1475479\";s:2:\"1x\";s:64:\"https://ps.w.org/elementor/assets/banner-772x250.png?rev=1475479\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"6.8.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:10:\"conditions\";a:0:{}}}','off');
INSERT INTO `wp_options` VALUES (515,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1754980312;s:8:\"response\";a:1:{s:23:\"elementor/elementor.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:23:\"w.org/plugins/elementor\";s:4:\"slug\";s:9:\"elementor\";s:6:\"plugin\";s:23:\"elementor/elementor.php\";s:11:\"new_version\";s:6:\"3.31.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/elementor/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/elementor.3.31.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/elementor/assets/icon-256x256.gif?rev=3111597\";s:2:\"1x\";s:62:\"https://ps.w.org/elementor/assets/icon-128x128.gif?rev=3111597\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/elementor/assets/banner-1544x500.png?rev=3164133\";s:2:\"1x\";s:64:\"https://ps.w.org/elementor/assets/banner-772x250.png?rev=3164133\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";s:6:\"tested\";s:5:\"6.8.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:59:\"autocomplete-google-address/autocomplete-google-address.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/autocomplete-google-address\";s:4:\"slug\";s:27:\"autocomplete-google-address\";s:6:\"plugin\";s:59:\"autocomplete-google-address/autocomplete-google-address.php\";s:11:\"new_version\";s:5:\"3.0.8\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/autocomplete-google-address/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/autocomplete-google-address.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:80:\"https://ps.w.org/autocomplete-google-address/assets/icon-128x128.png?rev=2133698\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/autocomplete-google-address/assets/banner-772x250.png?rev=2133698\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:45:\"secure-custom-fields/secure-custom-fields.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:34:\"w.org/plugins/secure-custom-fields\";s:4:\"slug\";s:20:\"secure-custom-fields\";s:6:\"plugin\";s:45:\"secure-custom-fields/secure-custom-fields.php\";s:11:\"new_version\";s:5:\"6.5.5\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/secure-custom-fields/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/secure-custom-fields.6.5.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/secure-custom-fields/assets/icon.svg?rev=3194494\";s:3:\"svg\";s:65:\"https://ps.w.org/secure-custom-fields/assets/icon.svg?rev=3194494\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/secure-custom-fields/assets/banner-1544x500.jpg?rev=3194494\";s:2:\"1x\";s:75:\"https://ps.w.org/secure-custom-fields/assets/banner-772x250.jpg?rev=3194494\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}}s:7:\"checked\";a:3:{s:59:\"autocomplete-google-address/autocomplete-google-address.php\";s:5:\"3.0.8\";s:23:\"elementor/elementor.php\";s:6:\"3.31.1\";s:45:\"secure-custom-fields/secure-custom-fields.php\";s:5:\"6.5.5\";}}','off');
INSERT INTO `wp_options` VALUES (516,'fs_active_plugins','O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:36:\"autocomplete-google-address/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.9.0\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1754980312;s:11:\"plugin_path\";s:59:\"autocomplete-google-address/autocomplete-google-address.php\";}}s:7:\"abspath\";s:66:\"C:\\Users\\gokarna chaudhary\\Local Sites\\cheap-medscards\\app\\public/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:59:\"autocomplete-google-address/autocomplete-google-address.php\";s:8:\"sdk_path\";s:36:\"autocomplete-google-address/freemius\";s:7:\"version\";s:5:\"2.9.0\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1754980312;}}','auto');
INSERT INTO `wp_options` VALUES (517,'fs_debug_mode','','auto');
INSERT INTO `wp_options` VALUES (518,'fs_accounts','a:8:{s:21:\"id_slug_type_path_map\";a:1:{i:6886;a:3:{s:4:\"slug\";s:22:\"form-autocomplete-nish\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:59:\"autocomplete-google-address/autocomplete-google-address.php\";}}s:11:\"plugin_data\";a:1:{s:22:\"form-autocomplete-nish\";a:17:{s:19:\"last_load_timestamp\";i:1754980312;s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:59:\"autocomplete-google-address/autocomplete-google-address.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1754980312;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.9.0\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"3.0.8\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";N;s:4:\"host\";s:21:\"cheap-medscards.local\";s:9:\"server_ip\";s:9:\"127.0.0.1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1754980312;s:7:\"version\";s:5:\"3.0.8\";}s:15:\"prev_is_premium\";b:0;s:21:\"is_pending_activation\";b:1;}}s:13:\"file_slug_map\";a:1:{s:59:\"autocomplete-google-address/autocomplete-google-address.php\";s:22:\"form-autocomplete-nish\";}s:7:\"plugins\";a:1:{s:22:\"form-autocomplete-nish\";O:9:\"FS_Plugin\":24:{s:2:\"id\";s:4:\"6886\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_f939b69fc6977108e74fa9e7e3136\";s:10:\"secret_key\";N;s:16:\"parent_plugin_id\";N;s:5:\"title\";s:27:\"Autocomplete Google Address\";s:4:\"slug\";s:22:\"form-autocomplete-nish\";s:12:\"premium_slug\";s:27:\"google-autocomplete-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:3:\"all\";s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:59:\"autocomplete-google-address/autocomplete-google-address.php\";s:7:\"version\";s:5:\"3.0.8\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:17:\"opt_in_moderation\";N;}}s:12:\"gc_timestamp\";a:0:{}s:10:\"theme_data\";a:0:{}s:9:\"unique_id\";s:32:\"af0705fd033b69632cad2524994c8de0\";s:13:\"admin_notices\";a:1:{s:22:\"form-autocomplete-nish\";a:1:{s:18:\"activation_pending\";a:10:{s:7:\"message\";s:206:\"You should receive a confirmation email for <b>Autocomplete Google Address</b> to your mailbox at <b>dev-email@wpengine.local</b>. Please make sure you click the button in that email to complete the opt-in.\";s:5:\"title\";s:7:\"Thanks!\";s:4:\"type\";s:7:\"success\";s:6:\"sticky\";b:1;s:2:\"id\";s:18:\"activation_pending\";s:10:\"manager_id\";s:22:\"form-autocomplete-nish\";s:6:\"plugin\";s:27:\"Autocomplete Google Address\";s:10:\"wp_user_id\";N;s:11:\"dismissible\";b:1;s:4:\"data\";a:0:{}}}}}','auto');
INSERT INTO `wp_options` VALUES (519,'fs_api_cache','a:2:{s:115:\"get:/v1/plugins/6886/pricing.json?is_enriched=1&trial=0&sandbox=0&s_ctx_type=0&s_ctx_id=0&s_ctx_ts=0&s_ctx_secure=0\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":12:{s:6:\"plugin\";O:8:\"stdClass\":12:{s:16:\"parent_plugin_id\";N;s:4:\"slug\";s:22:\"form-autocomplete-nish\";s:5:\"title\";s:22:\"Form Autocomplete Nish\";s:4:\"icon\";s:99:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/6886/icons/27e6877af9ac9762bddb27b4c366e6e4.png\";s:17:\"money_back_period\";N;s:13:\"refund_policy\";N;s:22:\"renewals_discount_type\";s:10:\"percentage\";s:19:\"is_wp_org_compliant\";b:1;s:4:\"type\";s:6:\"plugin\";s:10:\"public_key\";s:32:\"pk_f939b69fc6977108e74fa9e7e3136\";s:2:\"id\";s:4:\"6886\";s:19:\"has_premium_version\";b:1;}s:5:\"plans\";a:5:{i:0;O:8:\"stdClass\":24:{s:9:\"plugin_id\";s:4:\"6886\";s:4:\"name\";s:3:\"pro\";s:5:\"title\";s:3:\"Pro\";s:11:\"description\";s:54:\"Advanced autocomplete for small businesses and stores.\";s:17:\"is_free_localhost\";b:1;s:17:\"is_block_features\";b:1;s:25:\"is_block_features_monthly\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";i:3;s:23:\"is_require_subscription\";b:1;s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:1;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"28620\";s:7:\"created\";s:19:\"2024-11-25 10:28:17\";s:7:\"updated\";s:19:\"2024-11-25 10:38:58\";s:7:\"pricing\";a:3:{i:0;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"28620\";s:8:\"licenses\";i:1;s:13:\"monthly_price\";N;s:12:\"annual_price\";i:19;s:14:\"lifetime_price\";i:79;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"35719\";s:7:\"created\";s:19:\"2024-11-25 10:29:01\";s:7:\"updated\";s:19:\"2024-11-26 16:21:42\";s:8:\"currency\";s:3:\"usd\";}i:1;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"28620\";s:8:\"licenses\";i:5;s:13:\"monthly_price\";N;s:12:\"annual_price\";i:49;s:14:\"lifetime_price\";i:179;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"35770\";s:7:\"created\";s:19:\"2024-11-26 16:19:40\";s:7:\"updated\";s:19:\"2024-11-26 16:20:21\";s:8:\"currency\";s:3:\"usd\";}i:2;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"28620\";s:8:\"licenses\";N;s:13:\"monthly_price\";N;s:12:\"annual_price\";i:99;s:14:\"lifetime_price\";i:299;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"35771\";s:7:\"created\";s:19:\"2024-11-26 16:19:51\";s:7:\"updated\";s:19:\"2024-11-26 16:20:21\";s:8:\"currency\";s:3:\"usd\";}}s:8:\"features\";a:7:{i:0;O:8:\"stdClass\":9:{s:5:\"value\";N;s:7:\"plan_id\";s:5:\"28620\";s:9:\"plugin_id\";s:4:\"6886\";s:5:\"title\";s:16:\"Language Support\";s:11:\"description\";s:16:\"Language Support\";s:11:\"is_featured\";b:1;s:2:\"id\";s:5:\"18760\";s:7:\"created\";s:19:\"2024-11-25 10:31:07\";s:7:\"updated\";s:19:\"2024-11-25 10:31:54\";}i:1;O:8:\"stdClass\":9:{s:5:\"value\";s:0:\"\";s:7:\"plan_id\";s:5:\"28620\";s:9:\"plugin_id\";s:4:\"6886\";s:5:\"title\";s:32:\"Accurate Address with Map Picker\";s:11:\"description\";s:32:\"Accurate Address with Map Picker\";s:11:\"is_featured\";b:1;s:2:\"id\";s:5:\"18761\";s:7:\"created\";s:19:\"2024-11-25 10:31:18\";s:7:\"updated\";s:19:\"2024-11-25 10:31:58\";}i:2;O:8:\"stdClass\":9:{s:5:\"value\";s:0:\"\";s:7:\"plan_id\";s:5:\"28620\";s:9:\"plugin_id\";s:4:\"6886\";s:5:\"title\";s:32:\"Restrict Autocomplete by Country\";s:11:\"description\";s:32:\"Restrict Autocomplete by Country\";s:11:\"is_featured\";b:1;s:2:\"id\";s:5:\"18762\";s:7:\"created\";s:19:\"2024-11-25 10:31:24\";s:7:\"updated\";s:19:\"2024-11-25 10:32:01\";}i:3;O:8:\"stdClass\":9:{s:5:\"value\";s:0:\"\";s:7:\"plan_id\";s:5:\"28620\";s:9:\"plugin_id\";s:4:\"6886\";s:5:\"title\";s:57:\"Many Search Types (e.g., Cities, Regions, Establishments)\";s:11:\"description\";s:57:\"Many Search Types (e.g., Cities, Regions, Establishments)\";s:11:\"is_featured\";b:1;s:2:\"id\";s:5:\"18763\";s:7:\"created\";s:19:\"2024-11-25 10:31:28\";s:7:\"updated\";s:19:\"2024-11-25 10:32:04\";}i:4;O:8:\"stdClass\":9:{s:5:\"value\";s:0:\"\";s:7:\"plan_id\";s:5:\"28620\";s:9:\"plugin_id\";s:4:\"6886\";s:5:\"title\";s:36:\"Short &amp;amp; Long Address Formats\";s:11:\"description\";s:40:\"Short &amp;amp;amp; Long Address Formats\";s:11:\"is_featured\";b:1;s:2:\"id\";s:5:\"18764\";s:7:\"created\";s:19:\"2024-11-25 10:31:34\";s:7:\"updated\";s:19:\"2024-11-25 10:32:07\";}i:5;O:8:\"stdClass\":9:{s:5:\"value\";s:0:\"\";s:7:\"plan_id\";s:5:\"28620\";s:9:\"plugin_id\";s:4:\"6886\";s:5:\"title\";s:39:\"Customize Map Styles &amp;amp; Features\";s:11:\"description\";s:43:\"Customize Map Styles &amp;amp;amp; Features\";s:11:\"is_featured\";b:1;s:2:\"id\";s:5:\"18765\";s:7:\"created\";s:19:\"2024-11-25 10:31:39\";s:7:\"updated\";s:19:\"2024-11-25 10:32:09\";}i:6;O:8:\"stdClass\":9:{s:5:\"value\";s:0:\"\";s:7:\"plan_id\";s:5:\"28620\";s:9:\"plugin_id\";s:4:\"6886\";s:5:\"title\";s:33:\"Pre-Setup WooCommerce Integration\";s:11:\"description\";s:33:\"Pre-Setup WooCommerce Integration\";s:11:\"is_featured\";b:1;s:2:\"id\";s:5:\"18766\";s:7:\"created\";s:19:\"2024-11-25 10:31:45\";s:7:\"updated\";s:19:\"2024-11-25 10:32:13\";}}}i:1;O:8:\"stdClass\":23:{s:9:\"plugin_id\";s:4:\"6886\";s:4:\"name\";s:5:\"smart\";s:5:\"title\";s:5:\"Smart\";s:11:\"description\";s:0:\"\";s:17:\"is_free_localhost\";b:1;s:17:\"is_block_features\";b:1;s:25:\"is_block_features_monthly\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";i:7;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";s:24:\"wpprodeveloper@gmail.com\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:0;s:9:\"is_hidden\";b:1;s:2:\"id\";s:5:\"11211\";s:7:\"created\";s:19:\"2020-09-12 20:13:22\";s:7:\"updated\";s:19:\"2024-11-25 10:38:58\";s:7:\"pricing\";a:2:{i:0;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"11211\";s:8:\"licenses\";i:1;s:13:\"monthly_price\";N;s:12:\"annual_price\";N;s:14:\"lifetime_price\";i:30;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"11448\";s:7:\"created\";s:19:\"2020-09-12 20:14:45\";s:7:\"updated\";N;s:8:\"currency\";s:3:\"usd\";}i:1;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"11211\";s:8:\"licenses\";N;s:13:\"monthly_price\";N;s:12:\"annual_price\";N;s:14:\"lifetime_price\";i:50;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"11449\";s:7:\"created\";s:19:\"2020-09-12 20:14:51\";s:7:\"updated\";s:19:\"2020-10-12 09:36:54\";s:8:\"currency\";s:3:\"usd\";}}}i:2;O:8:\"stdClass\":23:{s:9:\"plugin_id\";s:4:\"6886\";s:4:\"name\";s:4:\"free\";s:5:\"title\";s:4:\"Free\";s:11:\"description\";N;s:17:\"is_free_localhost\";b:1;s:17:\"is_block_features\";b:1;s:25:\"is_block_features_monthly\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";N;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";s:24:\"wpprodeveloper@gmail.com\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"11483\";s:7:\"created\";s:19:\"2020-10-12 09:44:14\";s:7:\"updated\";s:19:\"2024-11-25 10:38:44\";s:8:\"features\";a:1:{i:0;O:8:\"stdClass\":9:{s:5:\"value\";s:0:\"\";s:7:\"plan_id\";s:5:\"11483\";s:9:\"plugin_id\";s:4:\"6886\";s:5:\"title\";s:16:\"Language Support\";s:11:\"description\";s:16:\"Language Support\";s:11:\"is_featured\";b:1;s:2:\"id\";s:5:\"18760\";s:7:\"created\";s:19:\"2024-11-25 10:31:07\";s:7:\"updated\";s:19:\"2024-11-25 10:31:54\";}}}i:3;O:8:\"stdClass\":23:{s:9:\"plugin_id\";s:4:\"6886\";s:4:\"name\";s:8:\"new_pro1\";s:5:\"title\";s:14:\"Professional 1\";s:11:\"description\";N;s:17:\"is_free_localhost\";b:0;s:17:\"is_block_features\";b:1;s:25:\"is_block_features_monthly\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";N;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:0;s:9:\"is_hidden\";b:1;s:2:\"id\";s:5:\"17381\";s:7:\"created\";s:19:\"2022-04-30 05:49:02\";s:7:\"updated\";s:19:\"2024-11-25 10:27:44\";s:7:\"pricing\";a:14:{i:0;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"17381\";s:8:\"licenses\";i:1;s:13:\"monthly_price\";N;s:12:\"annual_price\";N;s:14:\"lifetime_price\";i:10;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"19561\";s:7:\"created\";s:19:\"2022-04-30 05:50:15\";s:7:\"updated\";s:19:\"2022-04-30 05:54:33\";s:8:\"currency\";s:3:\"usd\";}i:1;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"17381\";s:8:\"licenses\";i:2;s:13:\"monthly_price\";N;s:12:\"annual_price\";N;s:14:\"lifetime_price\";i:20;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"19563\";s:7:\"created\";s:19:\"2022-04-30 05:54:27\";s:7:\"updated\";s:19:\"2022-04-30 05:54:45\";s:8:\"currency\";s:3:\"usd\";}i:2;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"17381\";s:8:\"licenses\";i:3;s:13:\"monthly_price\";N;s:12:\"annual_price\";N;s:14:\"lifetime_price\";i:30;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"19564\";s:7:\"created\";s:19:\"2022-04-30 05:54:53\";s:7:\"updated\";s:19:\"2022-04-30 05:55:01\";s:8:\"currency\";s:3:\"usd\";}i:3;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"17381\";s:8:\"licenses\";i:4;s:13:\"monthly_price\";N;s:12:\"annual_price\";N;s:14:\"lifetime_price\";i:40;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"19565\";s:7:\"created\";s:19:\"2022-04-30 05:55:05\";s:7:\"updated\";s:19:\"2022-04-30 05:55:12\";s:8:\"currency\";s:3:\"usd\";}i:4;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"17381\";s:8:\"licenses\";i:5;s:13:\"monthly_price\";N;s:12:\"annual_price\";N;s:14:\"lifetime_price\";i:50;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"19566\";s:7:\"created\";s:19:\"2022-04-30 05:55:17\";s:7:\"updated\";s:19:\"2022-04-30 05:55:24\";s:8:\"currency\";s:3:\"usd\";}i:5;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"17381\";s:8:\"licenses\";i:6;s:13:\"monthly_price\";N;s:12:\"annual_price\";N;s:14:\"lifetime_price\";i:60;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"19567\";s:7:\"created\";s:19:\"2022-04-30 05:55:27\";s:7:\"updated\";s:19:\"2022-04-30 05:55:35\";s:8:\"currency\";s:3:\"usd\";}i:6;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"17381\";s:8:\"licenses\";i:7;s:13:\"monthly_price\";N;s:12:\"annual_price\";N;s:14:\"lifetime_price\";i:70;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"19568\";s:7:\"created\";s:19:\"2022-04-30 05:55:37\";s:7:\"updated\";s:19:\"2022-04-30 05:55:44\";s:8:\"currency\";s:3:\"usd\";}i:7;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"17381\";s:8:\"licenses\";i:8;s:13:\"monthly_price\";N;s:12:\"annual_price\";N;s:14:\"lifetime_price\";i:80;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"19569\";s:7:\"created\";s:19:\"2022-04-30 05:55:45\";s:7:\"updated\";s:19:\"2022-04-30 05:55:53\";s:8:\"currency\";s:3:\"usd\";}i:8;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"17381\";s:8:\"licenses\";i:9;s:13:\"monthly_price\";N;s:12:\"annual_price\";N;s:14:\"lifetime_price\";i:90;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"19570\";s:7:\"created\";s:19:\"2022-04-30 05:55:54\";s:7:\"updated\";s:19:\"2022-04-30 05:56:01\";s:8:\"currency\";s:3:\"usd\";}i:9;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"17381\";s:8:\"licenses\";i:10;s:13:\"monthly_price\";N;s:12:\"annual_price\";N;s:14:\"lifetime_price\";i:100;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"19571\";s:7:\"created\";s:19:\"2022-04-30 05:56:02\";s:7:\"updated\";s:19:\"2022-04-30 05:56:11\";s:8:\"currency\";s:3:\"usd\";}i:10;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"17381\";s:8:\"licenses\";i:15;s:13:\"monthly_price\";N;s:12:\"annual_price\";N;s:14:\"lifetime_price\";i:150;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"19572\";s:7:\"created\";s:19:\"2022-04-30 05:56:41\";s:7:\"updated\";s:19:\"2022-04-30 05:56:49\";s:8:\"currency\";s:3:\"usd\";}i:11;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"17381\";s:8:\"licenses\";i:20;s:13:\"monthly_price\";N;s:12:\"annual_price\";N;s:14:\"lifetime_price\";i:200;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"19573\";s:7:\"created\";s:19:\"2022-04-30 05:56:53\";s:7:\"updated\";s:19:\"2022-04-30 05:57:02\";s:8:\"currency\";s:3:\"usd\";}i:12;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"17381\";s:8:\"licenses\";i:25;s:13:\"monthly_price\";N;s:12:\"annual_price\";N;s:14:\"lifetime_price\";i:240;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"19897\";s:7:\"created\";s:19:\"2022-05-29 17:39:16\";s:7:\"updated\";s:19:\"2022-05-29 17:39:36\";s:8:\"currency\";s:3:\"usd\";}i:13;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"17381\";s:8:\"licenses\";i:30;s:13:\"monthly_price\";N;s:12:\"annual_price\";N;s:14:\"lifetime_price\";i:250;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"19898\";s:7:\"created\";s:19:\"2022-05-29 17:39:37\";s:7:\"updated\";s:19:\"2022-05-29 17:39:56\";s:8:\"currency\";s:3:\"usd\";}}}i:4;O:8:\"stdClass\":23:{s:9:\"plugin_id\";s:4:\"6886\";s:4:\"name\";s:6:\"custom\";s:5:\"title\";s:14:\"For USA Client\";s:11:\"description\";N;s:17:\"is_free_localhost\";b:1;s:17:\"is_block_features\";b:1;s:25:\"is_block_features_monthly\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";N;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:0;s:9:\"is_hidden\";b:1;s:2:\"id\";s:5:\"18471\";s:7:\"created\";s:19:\"2022-08-19 18:31:54\";s:7:\"updated\";s:19:\"2022-08-19 18:32:59\";s:7:\"pricing\";a:1:{i:0;O:8:\"stdClass\":11:{s:7:\"plan_id\";s:5:\"18471\";s:8:\"licenses\";i:1;s:13:\"monthly_price\";N;s:12:\"annual_price\";N;s:14:\"lifetime_price\";i:50;s:15:\"is_whitelabeled\";b:0;s:9:\"is_hidden\";b:1;s:2:\"id\";s:5:\"21004\";s:7:\"created\";s:19:\"2022-08-19 18:32:12\";s:7:\"updated\";s:19:\"2022-08-19 18:32:54\";s:8:\"currency\";s:3:\"usd\";}}}}s:7:\"reviews\";a:7:{i:0;O:8:\"stdClass\":22:{s:5:\"first\";s:6:\"Benoit\";s:4:\"last\";s:6:\"Picard\";s:5:\"email\";s:17:\"jesus@foubrak.com\";s:9:\"plugin_id\";s:4:\"6886\";s:11:\"external_id\";N;s:7:\"user_id\";s:7:\"9091369\";s:4:\"rate\";i:100;s:5:\"title\";s:56:\"Absolutely Perfect – Seamless and Accurate Every Time!\";s:4:\"text\";s:408:\"I’m 100% satisfied with the Google Address Autocomplete plugin. It’s incredibly fast, super accurate, and saves so much time for both me and my users. The integration was smooth, and the suggestions are spot-on, even for tricky or international addresses. It really enhances the user experience and adds a professional touch to my forms. Highly recommend it to anyone looking to streamline address input!\";s:4:\"name\";s:13:\"Benoit Picard\";s:9:\"job_title\";N;s:7:\"company\";N;s:11:\"company_url\";N;s:7:\"picture\";N;s:11:\"profile_url\";N;s:10:\"license_id\";s:7:\"1705965\";s:11:\"is_verified\";b:1;s:11:\"is_featured\";b:1;s:11:\"environment\";i:0;s:2:\"id\";s:5:\"16715\";s:7:\"created\";s:19:\"2025-05-01 22:15:13\";s:7:\"updated\";s:19:\"2025-05-01 23:19:52\";}i:1;O:8:\"stdClass\":22:{s:5:\"first\";s:4:\"Ngoc\";s:4:\"last\";s:2:\"Ho\";s:5:\"email\";s:20:\"kenokg1235@gmail.com\";s:9:\"plugin_id\";s:4:\"6886\";s:11:\"external_id\";N;s:7:\"user_id\";s:7:\"5837704\";s:4:\"rate\";i:100;s:5:\"title\";s:48:\"Flawless Experience – A Must-Have for Any Form\";s:4:\"text\";s:364:\"This plugin exceeded my expectations! Google Address Autocomplete works like magic—instantly suggesting accurate addresses and reducing user input errors. It made my forms faster to fill out and more user-friendly. Setup was quick and simple, and it worked perfectly right out of the box. I’m completely satisfied and will definitely use it in future projects.\";s:4:\"name\";s:7:\"Ngoc Ho\";s:9:\"job_title\";N;s:7:\"company\";N;s:11:\"company_url\";N;s:7:\"picture\";N;s:11:\"profile_url\";N;s:10:\"license_id\";s:6:\"941751\";s:11:\"is_verified\";b:1;s:11:\"is_featured\";b:1;s:11:\"environment\";i:0;s:2:\"id\";s:4:\"9872\";s:7:\"created\";s:19:\"2022-05-21 03:53:47\";s:7:\"updated\";s:19:\"2025-05-01 23:19:49\";}i:2;O:8:\"stdClass\":22:{s:5:\"first\";s:5:\"Bahij\";s:4:\"last\";s:8:\"Barhoumi\";s:5:\"email\";s:27:\"webmaster@a1distribution.ca\";s:9:\"plugin_id\";s:4:\"6886\";s:11:\"external_id\";N;s:7:\"user_id\";s:7:\"5704573\";s:4:\"rate\";i:100;s:5:\"title\";s:7:\"Love it\";s:4:\"text\";s:98:\"Great plugin and easy to use, WPML compatible when we use the advanced custom field multi language\";s:4:\"name\";s:11:\"B. Barhoumi\";s:9:\"job_title\";s:9:\"Webmaster\";s:7:\"company\";s:2:\"A1\";s:11:\"company_url\";s:16:\"aquamarinasup.ca\";s:7:\"picture\";N;s:11:\"profile_url\";N;s:10:\"license_id\";s:6:\"905923\";s:11:\"is_verified\";b:1;s:11:\"is_featured\";b:1;s:11:\"environment\";i:0;s:2:\"id\";s:4:\"9551\";s:7:\"created\";s:19:\"2022-03-27 03:09:31\";s:7:\"updated\";s:19:\"2022-06-06 18:07:13\";}i:3;O:8:\"stdClass\":22:{s:5:\"first\";s:4:\"Idan\";s:4:\"last\";s:13:\"Golomb Shamir\";s:5:\"email\";s:18:\"ingaid29@gmail.com\";s:9:\"plugin_id\";s:4:\"6886\";s:11:\"external_id\";N;s:7:\"user_id\";s:7:\"5311765\";s:4:\"rate\";i:100;s:5:\"title\";s:11:\"Very useful\";s:4:\"text\";s:32:\"amazing plugin and Great support\";s:4:\"name\";s:18:\"Idan Golomb Shamir\";s:9:\"job_title\";N;s:7:\"company\";N;s:11:\"company_url\";N;s:7:\"picture\";N;s:11:\"profile_url\";N;s:10:\"license_id\";s:6:\"886559\";s:11:\"is_verified\";b:1;s:11:\"is_featured\";b:1;s:11:\"environment\";i:0;s:2:\"id\";s:4:\"9305\";s:7:\"created\";s:19:\"2022-02-18 04:07:34\";s:7:\"updated\";s:19:\"2022-06-06 18:07:12\";}i:4;O:8:\"stdClass\":22:{s:5:\"first\";s:4:\"Dean\";s:4:\"last\";s:5:\"Hodge\";s:5:\"email\";s:24:\"deanpeterhodge@gmail.com\";s:9:\"plugin_id\";s:4:\"6886\";s:11:\"external_id\";N;s:7:\"user_id\";s:7:\"4933108\";s:4:\"rate\";i:100;s:5:\"title\";s:20:\"Best plugin support!\";s:4:\"text\";s:159:\"This plugin works exactly as promised, and even better, Nish responds quickly and helpfully to requests for help or feature requests for integration. A++++++++\";s:4:\"name\";s:10:\"Dean Hodge\";s:9:\"job_title\";N;s:7:\"company\";N;s:11:\"company_url\";N;s:7:\"picture\";N;s:11:\"profile_url\";N;s:10:\"license_id\";s:6:\"726059\";s:11:\"is_verified\";b:1;s:11:\"is_featured\";b:1;s:11:\"environment\";i:0;s:2:\"id\";s:4:\"7962\";s:7:\"created\";s:19:\"2021-07-27 00:37:11\";s:7:\"updated\";s:19:\"2022-02-11 14:41:45\";}i:5;O:8:\"stdClass\":22:{s:5:\"first\";s:3:\"Bal\";s:4:\"last\";s:8:\"Sanghera\";s:5:\"email\";s:22:\"bal@midlandsnotary.com\";s:9:\"plugin_id\";s:4:\"6886\";s:11:\"external_id\";N;s:7:\"user_id\";s:7:\"4831638\";s:4:\"rate\";i:100;s:5:\"title\";s:32:\"Really simple and easy to setup!\";s:4:\"text\";s:131:\"Tried a a few plugins to achieve this and this has to be the best one which is simple to setup and works great with contact form 7.\";s:4:\"name\";s:3:\"Bal\";s:9:\"job_title\";N;s:7:\"company\";N;s:11:\"company_url\";N;s:7:\"picture\";N;s:11:\"profile_url\";N;s:10:\"license_id\";s:6:\"720965\";s:11:\"is_verified\";b:1;s:11:\"is_featured\";b:1;s:11:\"environment\";i:0;s:2:\"id\";s:4:\"7672\";s:7:\"created\";s:19:\"2021-06-08 13:35:13\";s:7:\"updated\";s:19:\"2022-02-11 14:41:45\";}i:6;O:8:\"stdClass\":22:{s:5:\"first\";N;s:4:\"last\";N;s:5:\"email\";N;s:9:\"plugin_id\";s:4:\"6886\";s:11:\"external_id\";N;s:7:\"user_id\";N;s:4:\"rate\";i:100;s:5:\"title\";s:12:\"Great Plugin\";s:4:\"text\";s:33:\"It\'s working as I wanting. Thanks\";s:4:\"name\";s:9:\"Jhon Kary\";s:9:\"job_title\";N;s:7:\"company\";N;s:11:\"company_url\";N;s:7:\"picture\";N;s:11:\"profile_url\";N;s:10:\"license_id\";N;s:11:\"is_verified\";b:0;s:11:\"is_featured\";b:1;s:11:\"environment\";i:0;s:2:\"id\";s:4:\"7425\";s:7:\"created\";s:19:\"2021-05-04 17:35:04\";s:7:\"updated\";s:19:\"2021-05-04 17:35:08\";}}s:15:\"active_installs\";s:4:\"2302\";s:9:\"downloads\";N;s:29:\"all_plans_single_site_pricing\";O:8:\"stdClass\":5:{s:5:\"28620\";O:8:\"stdClass\":3:{s:13:\"monthly_price\";O:8:\"stdClass\":3:{s:3:\"usd\";d:1.5833333333333;s:3:\"gbp\";i:0;s:3:\"eur\";i:0;}s:12:\"annual_price\";O:8:\"stdClass\":3:{s:3:\"usd\";i:19;s:3:\"gbp\";i:0;s:3:\"eur\";i:0;}s:14:\"lifetime_price\";O:8:\"stdClass\":3:{s:3:\"usd\";i:79;s:3:\"gbp\";i:0;s:3:\"eur\";i:0;}}s:5:\"11211\";O:8:\"stdClass\":3:{s:13:\"monthly_price\";O:8:\"stdClass\":3:{s:3:\"usd\";i:0;s:3:\"gbp\";i:0;s:3:\"eur\";i:0;}s:12:\"annual_price\";O:8:\"stdClass\":3:{s:3:\"usd\";i:0;s:3:\"gbp\";i:0;s:3:\"eur\";i:0;}s:14:\"lifetime_price\";O:8:\"stdClass\":3:{s:3:\"usd\";i:30;s:3:\"gbp\";i:0;s:3:\"eur\";i:0;}}s:5:\"11483\";O:8:\"stdClass\":3:{s:13:\"monthly_price\";O:8:\"stdClass\":3:{s:3:\"usd\";i:0;s:3:\"gbp\";i:0;s:3:\"eur\";i:0;}s:12:\"annual_price\";O:8:\"stdClass\":3:{s:3:\"usd\";i:0;s:3:\"gbp\";i:0;s:3:\"eur\";i:0;}s:14:\"lifetime_price\";O:8:\"stdClass\":3:{s:3:\"usd\";i:0;s:3:\"gbp\";i:0;s:3:\"eur\";i:0;}}s:5:\"17381\";O:8:\"stdClass\":3:{s:13:\"monthly_price\";O:8:\"stdClass\":3:{s:3:\"usd\";i:0;s:3:\"gbp\";i:0;s:3:\"eur\";i:0;}s:12:\"annual_price\";O:8:\"stdClass\":3:{s:3:\"usd\";i:0;s:3:\"gbp\";i:0;s:3:\"eur\";i:0;}s:14:\"lifetime_price\";O:8:\"stdClass\":3:{s:3:\"usd\";i:10;s:3:\"gbp\";i:0;s:3:\"eur\";i:0;}}s:5:\"18471\";O:8:\"stdClass\":3:{s:13:\"monthly_price\";O:8:\"stdClass\":3:{s:3:\"usd\";i:0;s:3:\"gbp\";i:0;s:3:\"eur\";i:0;}s:12:\"annual_price\";O:8:\"stdClass\":3:{s:3:\"usd\";i:0;s:3:\"gbp\";i:0;s:3:\"eur\";i:0;}s:14:\"lifetime_price\";O:8:\"stdClass\":3:{s:3:\"usd\";i:50;s:3:\"gbp\";i:0;s:3:\"eur\";i:0;}}}s:12:\"checkout_url\";s:29:\"https://checkout.freemius.com\";s:18:\"fs_wp_endpoint_url\";s:23:\"https://wp.freemius.com\";s:10:\"trial_mode\";b:0;s:14:\"trial_utilized\";b:0;s:23:\"skip_directly_to_paypal\";b:0;s:19:\"is_paypal_supported\";b:1;}s:7:\"created\";i:1754980413;s:9:\"timestamp\";i:1755066813;}s:46:\"get:/v1/plugins/6886/aff.json?type=affiliation\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":26:{s:25:\"plugin_affiliate_terms_id\";s:3:\"550\";s:9:\"plugin_id\";s:4:\"6886\";s:10:\"moderation\";s:3:\"all\";s:13:\"pending_count\";i:0;s:6:\"status\";N;s:12:\"plugin_title\";s:22:\"Form Autocomplete Nish\";s:9:\"is_active\";b:1;s:4:\"type\";s:11:\"affiliation\";s:11:\"reward_type\";s:6:\"payout\";s:20:\"referral_attribution\";s:5:\"first\";s:11:\"cookie_days\";i:30;s:10:\"commission\";i:20;s:15:\"commission_type\";s:10:\"percentage\";s:24:\"commission_renewals_days\";i:0;s:18:\"install_commission\";N;s:11:\"default_url\";s:47:\"https://nishelement.com/form-autocomplete-nish/\";s:20:\"reward_customer_type\";s:3:\"all\";s:20:\"future_payments_days\";N;s:17:\"is_social_allowed\";b:1;s:14:\"is_app_allowed\";b:0;s:19:\"is_any_site_allowed\";b:1;s:9:\"is_hidden\";b:0;s:2:\"id\";s:3:\"925\";s:7:\"created\";s:19:\"2020-12-25 22:08:18\";s:7:\"updated\";s:19:\"2021-02-26 12:03:51\";s:11:\"commissions\";O:8:\"stdClass\":1:{s:3:\"usd\";i:20;}}s:7:\"created\";i:1754981400;s:9:\"timestamp\";i:1755067800;}}','off');
INSERT INTO `wp_options` VALUES (522,'_site_transient_timeout_fs_garbage_collection','1755066713','off');
INSERT INTO `wp_options` VALUES (523,'_site_transient_fs_garbage_collection','1','off');
INSERT INTO `wp_options` VALUES (524,'google_api_key','AIzaSyDkosVn9dU1dVmSwS9gehPbAK4IqJR2L7E','auto');
INSERT INTO `wp_options` VALUES (525,'gap_language','en-us','auto');
INSERT INTO `wp_options` VALUES (528,'new_admin_email','gokarnachy28@gmail.com','auto');
INSERT INTO `wp_options` VALUES (529,'adminhash','a:2:{s:4:\"hash\";s:32:\"4e43983e4c6abcb5433bbbec2b5cdf15\";s:8:\"newemail\";s:22:\"gokarnachy28@gmail.com\";}','off');
INSERT INTO `wp_options` VALUES (537,'gap_configs','a:1:{i:0;a:21:{s:2:\"id\";i:1754986503;s:4:\"name\";s:6:\"test 1\";s:17:\"street_address_id\";s:18:\"dispensay_location\";s:12:\"sub_locality\";s:0:\"\";s:6:\"county\";s:0:\"\";s:8:\"latitude\";s:9:\"34.052235\";s:9:\"longitude\";s:11:\"-118.243683\";s:19:\"country_restriction\";a:0:{}s:12:\"country_type\";s:5:\"short\";s:10:\"state_type\";s:5:\"short\";s:12:\"address_type\";s:4:\"long\";s:8:\"show_map\";b:0;s:10:\"optional_1\";s:0:\"\";s:10:\"optional_2\";s:0:\"\";s:11:\"search_type\";a:1:{i:0;s:7:\"address\";}s:9:\"map_width\";i:100;s:10:\"map_height\";s:3:\"250\";s:14:\"map_display_id\";s:6:\"parent\";s:10:\"zoom_level\";i:18;s:4:\"type\";s:7:\"regular\";s:11:\"config_name\";s:0:\"\";}}','auto');
INSERT INTO `wp_options` VALUES (578,'_site_transient_timeout_wp_theme_files_patterns-dffe7c2e92b57ae64b6a4804693f5dc3','1754998884','off');
INSERT INTO `wp_options` VALUES (579,'_site_transient_wp_theme_files_patterns-dffe7c2e92b57ae64b6a4804693f5dc3','a:2:{s:7:\"version\";s:5:\"2.0.0\";s:8:\"patterns\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (582,'_site_transient_timeout_wp_theme_files_patterns-64df509167700c309f74c674e3cc15c5','1754998884','off');
INSERT INTO `wp_options` VALUES (583,'_site_transient_wp_theme_files_patterns-64df509167700c309f74c674e3cc15c5','a:2:{s:7:\"version\";s:5:\"3.4.4\";s:8:\"patterns\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (587,'_site_transient_timeout_theme_roots','1754998886','off');
INSERT INTO `wp_options` VALUES (588,'_site_transient_theme_roots','a:5:{s:21:\"hello-elementor-child\";s:7:\"/themes\";s:15:\"hello-elementor\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";}','off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1536 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (13,48,'_edit_lock','1754987835:1');
INSERT INTO `wp_postmeta` VALUES (14,48,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (15,48,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (16,48,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (17,48,'debit_card_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (18,48,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (19,48,'pickup_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (20,48,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (21,48,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (22,48,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (23,48,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (24,48,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (25,48,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (26,48,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (27,48,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (28,48,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (29,48,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (30,48,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (31,48,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (32,48,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (33,48,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (34,48,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (35,48,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (36,48,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (37,48,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (38,48,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (39,48,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (40,48,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (41,48,'state','West Virginia');
INSERT INTO `wp_postmeta` VALUES (42,48,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (43,48,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (44,48,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (45,48,'country','USA');
INSERT INTO `wp_postmeta` VALUES (46,48,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (47,48,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (48,48,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (49,50,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (50,50,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (51,50,'debit_card_option','');
INSERT INTO `wp_postmeta` VALUES (52,50,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (53,50,'pickup_option','');
INSERT INTO `wp_postmeta` VALUES (54,50,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (55,50,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (56,50,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (57,50,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (58,50,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (59,50,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (60,50,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (61,50,'wheelchair_accissibility_option','');
INSERT INTO `wp_postmeta` VALUES (62,50,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (63,50,'dispensary_logo','');
INSERT INTO `wp_postmeta` VALUES (64,50,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (65,50,'dispensary_name','');
INSERT INTO `wp_postmeta` VALUES (66,50,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (67,50,'dispensary_phone','');
INSERT INTO `wp_postmeta` VALUES (68,50,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (69,50,'dispensary_full_address','');
INSERT INTO `wp_postmeta` VALUES (70,50,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (71,50,'street','');
INSERT INTO `wp_postmeta` VALUES (72,50,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (73,50,'city','');
INSERT INTO `wp_postmeta` VALUES (74,50,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (75,50,'state','');
INSERT INTO `wp_postmeta` VALUES (76,50,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (77,50,'zip_code','');
INSERT INTO `wp_postmeta` VALUES (78,50,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (79,50,'country','');
INSERT INTO `wp_postmeta` VALUES (80,50,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (81,50,'social_links','');
INSERT INTO `wp_postmeta` VALUES (82,50,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (83,52,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (84,52,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (85,52,'debit_card_option','');
INSERT INTO `wp_postmeta` VALUES (86,52,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (87,52,'pickup_option','');
INSERT INTO `wp_postmeta` VALUES (88,52,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (89,52,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (90,52,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (91,52,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (92,52,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (93,52,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (94,52,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (95,52,'wheelchair_accissibility_option','');
INSERT INTO `wp_postmeta` VALUES (96,52,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (97,52,'dispensary_logo','');
INSERT INTO `wp_postmeta` VALUES (98,52,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (99,52,'dispensary_name','');
INSERT INTO `wp_postmeta` VALUES (100,52,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (101,52,'dispensary_phone','');
INSERT INTO `wp_postmeta` VALUES (102,52,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (103,52,'dispensary_full_address','');
INSERT INTO `wp_postmeta` VALUES (104,52,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (105,52,'street','');
INSERT INTO `wp_postmeta` VALUES (106,52,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (107,52,'city','');
INSERT INTO `wp_postmeta` VALUES (108,52,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (109,52,'state','');
INSERT INTO `wp_postmeta` VALUES (110,52,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (111,52,'zip_code','');
INSERT INTO `wp_postmeta` VALUES (112,52,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (113,52,'country','');
INSERT INTO `wp_postmeta` VALUES (114,52,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (115,52,'social_links','');
INSERT INTO `wp_postmeta` VALUES (116,52,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (117,53,'_wp_attached_file','2025/08/logo-1-1.png');
INSERT INTO `wp_postmeta` VALUES (118,53,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:823;s:6:\"height\";i:432;s:4:\"file\";s:20:\"2025/08/logo-1-1.png\";s:8:\"filesize\";i:356706;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"logo-1-1-300x157.png\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21306;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"logo-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11315;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"logo-1-1-768x403.png\";s:5:\"width\";i:768;s:6:\"height\";i:403;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:232047;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (122,48,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (124,55,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (126,48,'wheelchair_accessibility','There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (127,48,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (128,55,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (129,55,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (130,55,'debit_card_option','');
INSERT INTO `wp_postmeta` VALUES (131,55,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (132,55,'pickup_option','');
INSERT INTO `wp_postmeta` VALUES (133,55,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (134,55,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (135,55,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (136,55,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (137,55,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (138,55,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (139,55,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (140,55,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (141,55,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (142,55,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (143,55,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (144,55,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (145,55,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (146,55,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (147,55,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (148,55,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (149,55,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (150,55,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (151,55,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (152,55,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (153,55,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (154,55,'state','MD');
INSERT INTO `wp_postmeta` VALUES (155,55,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (156,55,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (157,55,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (158,55,'country','USA');
INSERT INTO `wp_postmeta` VALUES (159,55,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (160,55,'social_links','');
INSERT INTO `wp_postmeta` VALUES (161,55,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (162,55,'wheelchair_accessibility','<img src=\"/wp-content/uploads/2025/08/icon-img12.png\" alt=\"Image\" />\r\n\r\nThere is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (163,55,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (164,56,'_wp_attached_file','2025/08/aniket-deole-M6XC789HLe8-unsplash-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (165,56,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1708;s:4:\"file\";s:52:\"2025/08/aniket-deole-M6XC789HLe8-unsplash-scaled.jpg\";s:8:\"filesize\";i:773233;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:45:\"aniket-deole-M6XC789HLe8-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15884;}s:5:\"large\";a:5:{s:4:\"file\";s:46:\"aniket-deole-M6XC789HLe8-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:131282;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:45:\"aniket-deole-M6XC789HLe8-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8898;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:45:\"aniket-deole-M6XC789HLe8-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76190;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:47:\"aniket-deole-M6XC789HLe8-unsplash-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:287453;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:47:\"aniket-deole-M6XC789HLe8-unsplash-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:502233;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:37:\"aniket-deole-M6XC789HLe8-unsplash.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (166,48,'_thumbnail_id','56');
INSERT INTO `wp_postmeta` VALUES (167,48,'_wp_old_slug','dispensary');
INSERT INTO `wp_postmeta` VALUES (168,11,'_edit_lock','1754913956:1');
INSERT INTO `wp_postmeta` VALUES (169,30,'_edit_lock','1754463825:1');
INSERT INTO `wp_postmeta` VALUES (170,26,'_edit_lock','1754412530:1');
INSERT INTO `wp_postmeta` VALUES (175,58,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (177,48,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (178,48,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (179,48,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (180,48,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (181,58,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (182,58,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (183,58,'debit_card_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (184,58,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (185,58,'pickup_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (186,58,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (187,58,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (188,58,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (189,58,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (190,58,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (191,58,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (192,58,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (193,58,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (194,58,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (195,58,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (196,58,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (197,58,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (198,58,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (199,58,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (200,58,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (201,58,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (202,58,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (203,58,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (204,58,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (205,58,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (206,58,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (207,58,'state','MD');
INSERT INTO `wp_postmeta` VALUES (208,58,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (209,58,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (210,58,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (211,58,'country','USA');
INSERT INTO `wp_postmeta` VALUES (212,58,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (213,58,'social_links','');
INSERT INTO `wp_postmeta` VALUES (214,58,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (215,58,'wheelchair_accessibility','<img src=\"/wp-content/uploads/2025/08/icon-img12.png\" alt=\"Image\" />\r\n\r\nThere is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (216,58,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (217,58,'debit_cards','<img src=\"/wp-content/uploads/2025/08/icon-img11.png\" alt=\"Image\" />\r\n\r\nDebit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (218,58,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (219,58,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (220,58,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (223,59,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (225,48,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (226,48,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (227,59,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (228,59,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (229,59,'debit_card_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (230,59,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (231,59,'pickup_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (232,59,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (233,59,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (234,59,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (235,59,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (236,59,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (237,59,'onsite_security_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (238,59,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (239,59,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (240,59,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (241,59,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (242,59,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (243,59,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (244,59,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (245,59,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (246,59,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (247,59,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (248,59,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (249,59,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (250,59,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (251,59,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (252,59,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (253,59,'state','MD');
INSERT INTO `wp_postmeta` VALUES (254,59,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (255,59,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (256,59,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (257,59,'country','USA');
INSERT INTO `wp_postmeta` VALUES (258,59,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (259,59,'social_links','');
INSERT INTO `wp_postmeta` VALUES (260,59,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (261,59,'wheelchair_accessibility','<img src=\"/wp-content/uploads/2025/08/icon-img12.png\" alt=\"Image\" />\r\n\r\nThere is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (262,59,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (263,59,'debit_cards','<img src=\"/wp-content/uploads/2025/08/icon-img11.png\" alt=\"Image\" />\r\n\r\nDebit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (264,59,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (265,59,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (266,59,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (267,59,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (268,59,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (269,41,'_edit_lock','1754417185:1');
INSERT INTO `wp_postmeta` VALUES (270,60,'_wp_attached_file','2025/08/image.png');
INSERT INTO `wp_postmeta` VALUES (271,60,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:4:\"file\";s:17:\"2025/08/image.png\";s:8:\"filesize\";i:2104494;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"image-200x300.png\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30022;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"image-683x1024.png\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:256580;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"image-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14200;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"image-768x1152.png\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:323751;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (276,62,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (278,48,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (279,48,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (280,48,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (281,48,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (282,48,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (283,48,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (284,62,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (285,62,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (286,62,'debit_card_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (287,62,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (288,62,'pickup_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (289,62,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (290,62,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (291,62,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (292,62,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (293,62,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (294,62,'onsite_security_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (295,62,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (296,62,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (297,62,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (298,62,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (299,62,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (300,62,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (301,62,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (302,62,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (303,62,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (304,62,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (305,62,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (306,62,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (307,62,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (308,62,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (309,62,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (310,62,'state','MD');
INSERT INTO `wp_postmeta` VALUES (311,62,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (312,62,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (313,62,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (314,62,'country','USA');
INSERT INTO `wp_postmeta` VALUES (315,62,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (316,62,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (317,62,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (318,62,'wheelchair_accessibility','<img src=\"/wp-content/uploads/2025/08/icon-img12.png\" alt=\"Image\" />\r\n\r\nThere is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (319,62,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (320,62,'debit_cards','<img src=\"/wp-content/uploads/2025/08/icon-img11.png\" alt=\"Image\" />\r\n\r\nDebit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (321,62,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (322,62,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (323,62,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (324,62,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (325,62,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (326,62,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (327,62,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (328,62,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (329,62,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (330,62,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (331,62,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (332,35,'_edit_lock','1754996940:1');
INSERT INTO `wp_postmeta` VALUES (335,63,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (337,63,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (338,63,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (339,63,'debit_card_option','');
INSERT INTO `wp_postmeta` VALUES (340,63,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (341,63,'pickup_option','');
INSERT INTO `wp_postmeta` VALUES (342,63,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (343,63,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (344,63,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (345,63,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (346,63,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (347,63,'onsite_security_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (348,63,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (349,63,'wheelchair_accissibility_option','');
INSERT INTO `wp_postmeta` VALUES (350,63,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (351,63,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (352,63,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (353,63,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (354,63,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (355,63,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (356,63,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (357,63,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (358,63,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (359,63,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (360,63,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (361,63,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (362,63,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (363,63,'state','MD');
INSERT INTO `wp_postmeta` VALUES (364,63,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (365,63,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (366,63,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (367,63,'country','USA');
INSERT INTO `wp_postmeta` VALUES (368,63,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (369,63,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (370,63,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (371,63,'wheelchair_accessibility','<img src=\"/wp-content/uploads/2025/08/icon-img12.png\" alt=\"Image\" />\r\n\r\nThere is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (372,63,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (373,63,'debit_cards','<img src=\"/wp-content/uploads/2025/08/icon-img11.png\" alt=\"Image\" />\r\n\r\nDebit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (374,63,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (375,63,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (376,63,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (377,63,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (378,63,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (379,63,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (380,63,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (381,63,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (382,63,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (383,63,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (384,63,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (389,65,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (391,65,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (392,65,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (393,65,'debit_card_option','');
INSERT INTO `wp_postmeta` VALUES (394,65,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (395,65,'pickup_option','');
INSERT INTO `wp_postmeta` VALUES (396,65,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (397,65,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (398,65,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (399,65,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (400,65,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (401,65,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (402,65,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (403,65,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (404,65,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (405,65,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (406,65,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (407,65,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (408,65,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (409,65,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (410,65,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (411,65,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (412,65,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (413,65,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (414,65,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (415,65,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (416,65,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (417,65,'state','MD');
INSERT INTO `wp_postmeta` VALUES (418,65,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (419,65,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (420,65,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (421,65,'country','USA');
INSERT INTO `wp_postmeta` VALUES (422,65,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (423,65,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (424,65,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (425,65,'wheelchair_accessibility','<img src=\"/wp-content/uploads/2025/08/icon-img12.png\" alt=\"Image\" />\r\n\r\nThere is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (426,65,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (427,65,'debit_cards','<img src=\"/wp-content/uploads/2025/08/icon-img11.png\" alt=\"Image\" />\r\n\r\nDebit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (428,65,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (429,65,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (430,65,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (431,65,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (432,65,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (433,65,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (434,65,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (435,65,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (436,65,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (437,65,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (438,65,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (441,66,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (443,66,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (444,66,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (445,66,'debit_card_option','');
INSERT INTO `wp_postmeta` VALUES (446,66,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (447,66,'pickup_option','');
INSERT INTO `wp_postmeta` VALUES (448,66,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (449,66,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (450,66,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (451,66,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (452,66,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (453,66,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (454,66,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (455,66,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (456,66,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (457,66,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (458,66,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (459,66,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (460,66,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (461,66,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (462,66,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (463,66,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (464,66,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (465,66,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (466,66,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (467,66,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (468,66,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (469,66,'state','MD');
INSERT INTO `wp_postmeta` VALUES (470,66,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (471,66,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (472,66,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (473,66,'country','USA');
INSERT INTO `wp_postmeta` VALUES (474,66,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (475,66,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (476,66,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (477,66,'wheelchair_accessibility','There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (478,66,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (479,66,'debit_cards','<img src=\"/wp-content/uploads/2025/08/icon-img11.png\" alt=\"Image\" />\r\n\r\nDebit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (480,66,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (481,66,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (482,66,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (483,66,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (484,66,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (485,66,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (486,66,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (487,66,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (488,66,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (489,66,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (490,66,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (493,67,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (495,67,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (496,67,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (497,67,'debit_card_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (498,67,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (499,67,'pickup_option','');
INSERT INTO `wp_postmeta` VALUES (500,67,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (501,67,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (502,67,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (503,67,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (504,67,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (505,67,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (506,67,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (507,67,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (508,67,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (509,67,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (510,67,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (511,67,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (512,67,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (513,67,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (514,67,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (515,67,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (516,67,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (517,67,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (518,67,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (519,67,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (520,67,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (521,67,'state','MD');
INSERT INTO `wp_postmeta` VALUES (522,67,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (523,67,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (524,67,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (525,67,'country','USA');
INSERT INTO `wp_postmeta` VALUES (526,67,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (527,67,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (528,67,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (529,67,'wheelchair_accessibility','There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (530,67,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (531,67,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (532,67,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (533,67,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (534,67,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (535,67,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (536,67,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (537,67,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (538,67,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (539,67,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (540,67,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (541,67,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (542,67,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (545,68,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (547,68,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (548,68,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (549,68,'debit_card_option','');
INSERT INTO `wp_postmeta` VALUES (550,68,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (551,68,'pickup_option','');
INSERT INTO `wp_postmeta` VALUES (552,68,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (553,68,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (554,68,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (555,68,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (556,68,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (557,68,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (558,68,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (559,68,'wheelchair_accissibility_option','');
INSERT INTO `wp_postmeta` VALUES (560,68,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (561,68,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (562,68,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (563,68,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (564,68,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (565,68,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (566,68,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (567,68,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (568,68,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (569,68,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (570,68,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (571,68,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (572,68,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (573,68,'state','MD');
INSERT INTO `wp_postmeta` VALUES (574,68,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (575,68,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (576,68,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (577,68,'country','USA');
INSERT INTO `wp_postmeta` VALUES (578,68,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (579,68,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (580,68,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (581,68,'wheelchair_accessibility','There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (582,68,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (583,68,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (584,68,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (585,68,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (586,68,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (587,68,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (588,68,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (589,68,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (590,68,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (591,68,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (592,68,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (593,68,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (594,68,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (599,70,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (601,48,'cash_payment','<img src=\"/wp-content/uploads/2025/08/cash-icon.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary is able to accept cash as a form of payment for medicinal marijuana products.');
INSERT INTO `wp_postmeta` VALUES (602,48,'_cash_payment','field_6891898cef01a');
INSERT INTO `wp_postmeta` VALUES (603,70,'cash_payment_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (604,70,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (605,70,'debit_card_option','');
INSERT INTO `wp_postmeta` VALUES (606,70,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (607,70,'pickup_option','');
INSERT INTO `wp_postmeta` VALUES (608,70,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (609,70,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (610,70,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (611,70,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (612,70,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (613,70,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (614,70,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (615,70,'wheelchair_accissibility_option','');
INSERT INTO `wp_postmeta` VALUES (616,70,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (617,70,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (618,70,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (619,70,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (620,70,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (621,70,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (622,70,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (623,70,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (624,70,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (625,70,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (626,70,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (627,70,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (628,70,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (629,70,'state','MD');
INSERT INTO `wp_postmeta` VALUES (630,70,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (631,70,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (632,70,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (633,70,'country','USA');
INSERT INTO `wp_postmeta` VALUES (634,70,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (635,70,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (636,70,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (637,70,'wheelchair_accessibility','There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (638,70,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (639,70,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (640,70,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (641,70,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (642,70,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (643,70,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (644,70,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (645,70,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (646,70,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (647,70,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (648,70,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (649,70,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (650,70,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (651,70,'cash_payment','<img src=\"/wp-content/uploads/2025/08/cash-icon.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary is able to accept cash as a form of payment for medicinal marijuana products.');
INSERT INTO `wp_postmeta` VALUES (652,70,'_cash_payment','field_6891898cef01a');
INSERT INTO `wp_postmeta` VALUES (655,71,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (657,71,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (658,71,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (659,71,'debit_card_option','');
INSERT INTO `wp_postmeta` VALUES (660,71,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (661,71,'pickup_option','');
INSERT INTO `wp_postmeta` VALUES (662,71,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (663,71,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (664,71,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (665,71,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (666,71,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (667,71,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (668,71,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (669,71,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (670,71,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (671,71,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (672,71,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (673,71,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (674,71,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (675,71,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (676,71,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (677,71,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (678,71,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (679,71,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (680,71,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (681,71,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (682,71,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (683,71,'state','MD');
INSERT INTO `wp_postmeta` VALUES (684,71,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (685,71,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (686,71,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (687,71,'country','USA');
INSERT INTO `wp_postmeta` VALUES (688,71,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (689,71,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (690,71,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (691,71,'wheelchair_accessibility','There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (692,71,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (693,71,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (694,71,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (695,71,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (696,71,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (697,71,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (698,71,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (699,71,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (700,71,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (701,71,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (702,71,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (703,71,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (704,71,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (705,71,'cash_payment','<img src=\"/wp-content/uploads/2025/08/cash-icon.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary is able to accept cash as a form of payment for medicinal marijuana products.');
INSERT INTO `wp_postmeta` VALUES (706,71,'_cash_payment','field_6891898cef01a');
INSERT INTO `wp_postmeta` VALUES (709,72,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (711,72,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (712,72,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (713,72,'debit_card_option','');
INSERT INTO `wp_postmeta` VALUES (714,72,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (715,72,'pickup_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (716,72,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (717,72,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (718,72,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (719,72,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (720,72,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (721,72,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (722,72,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (723,72,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (724,72,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (725,72,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (726,72,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (727,72,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (728,72,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (729,72,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (730,72,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (731,72,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (732,72,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (733,72,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (734,72,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (735,72,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (736,72,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (737,72,'state','MD');
INSERT INTO `wp_postmeta` VALUES (738,72,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (739,72,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (740,72,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (741,72,'country','USA');
INSERT INTO `wp_postmeta` VALUES (742,72,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (743,72,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (744,72,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (745,72,'wheelchair_accessibility','There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (746,72,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (747,72,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (748,72,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (749,72,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (750,72,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (751,72,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (752,72,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (753,72,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (754,72,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (755,72,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (756,72,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (757,72,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (758,72,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (759,72,'cash_payment','<img src=\"/wp-content/uploads/2025/08/cash-icon.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary is able to accept cash as a form of payment for medicinal marijuana products.');
INSERT INTO `wp_postmeta` VALUES (760,72,'_cash_payment','field_6891898cef01a');
INSERT INTO `wp_postmeta` VALUES (763,73,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (765,73,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (766,73,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (767,73,'debit_card_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (768,73,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (769,73,'pickup_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (770,73,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (771,73,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (772,73,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (773,73,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (774,73,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (775,73,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (776,73,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (777,73,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (778,73,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (779,73,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (780,73,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (781,73,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (782,73,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (783,73,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (784,73,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (785,73,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (786,73,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (787,73,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (788,73,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (789,73,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (790,73,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (791,73,'state','MD');
INSERT INTO `wp_postmeta` VALUES (792,73,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (793,73,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (794,73,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (795,73,'country','USA');
INSERT INTO `wp_postmeta` VALUES (796,73,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (797,73,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (798,73,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (799,73,'wheelchair_accessibility','There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (800,73,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (801,73,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (802,73,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (803,73,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (804,73,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (805,73,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (806,73,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (807,73,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (808,73,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (809,73,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (810,73,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (811,73,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (812,73,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (813,73,'cash_payment','<img src=\"/wp-content/uploads/2025/08/cash-icon.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary is able to accept cash as a form of payment for medicinal marijuana products.');
INSERT INTO `wp_postmeta` VALUES (814,73,'_cash_payment','field_6891898cef01a');
INSERT INTO `wp_postmeta` VALUES (815,30,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (816,75,'_wp_attached_file','2025/08/ChatGPT-Image-Apr-12-2025-07_12_40-PM.png');
INSERT INTO `wp_postmeta` VALUES (817,75,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:4:\"file\";s:49:\"2025/08/ChatGPT-Image-Apr-12-2025-07_12_40-PM.png\";s:8:\"filesize\";i:2529863;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:49:\"ChatGPT-Image-Apr-12-2025-07_12_40-PM-200x300.png\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42671;}s:5:\"large\";a:5:{s:4:\"file\";s:50:\"ChatGPT-Image-Apr-12-2025-07_12_40-PM-683x1024.png\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:403950;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:49:\"ChatGPT-Image-Apr-12-2025-07_12_40-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18172;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:50:\"ChatGPT-Image-Apr-12-2025-07_12_40-PM-768x1152.png\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:513070;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (820,76,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (822,48,'about_content_image','75');
INSERT INTO `wp_postmeta` VALUES (823,48,'_about_content_image','field_6892fb5a5ee57');
INSERT INTO `wp_postmeta` VALUES (824,76,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (825,76,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (826,76,'debit_card_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (827,76,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (828,76,'pickup_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (829,76,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (830,76,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (831,76,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (832,76,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (833,76,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (834,76,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (835,76,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (836,76,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (837,76,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (838,76,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (839,76,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (840,76,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (841,76,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (842,76,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (843,76,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (844,76,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (845,76,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (846,76,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (847,76,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (848,76,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (849,76,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (850,76,'state','MD');
INSERT INTO `wp_postmeta` VALUES (851,76,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (852,76,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (853,76,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (854,76,'country','USA');
INSERT INTO `wp_postmeta` VALUES (855,76,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (856,76,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (857,76,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (858,76,'wheelchair_accessibility','There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (859,76,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (860,76,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (861,76,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (862,76,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (863,76,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (864,76,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (865,76,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (866,76,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (867,76,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (868,76,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (869,76,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (870,76,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (871,76,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (872,76,'cash_payment','<img src=\"/wp-content/uploads/2025/08/cash-icon.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary is able to accept cash as a form of payment for medicinal marijuana products.');
INSERT INTO `wp_postmeta` VALUES (873,76,'_cash_payment','field_6891898cef01a');
INSERT INTO `wp_postmeta` VALUES (874,76,'about_content_image','75');
INSERT INTO `wp_postmeta` VALUES (875,76,'_about_content_image','field_6892f99b2a1d7');
INSERT INTO `wp_postmeta` VALUES (876,81,'_edit_lock','1754558023:1');
INSERT INTO `wp_postmeta` VALUES (877,83,'_elementor_edit_mode','builder');
INSERT INTO `wp_postmeta` VALUES (878,83,'_elementor_template_type','kit');
INSERT INTO `wp_postmeta` VALUES (880,2,'_edit_lock','1754556554:1');
INSERT INTO `wp_postmeta` VALUES (881,2,'_elementor_edit_mode','builder');
INSERT INTO `wp_postmeta` VALUES (882,2,'_elementor_template_type','wp-page');
INSERT INTO `wp_postmeta` VALUES (883,2,'_elementor_version','3.31.1');
INSERT INTO `wp_postmeta` VALUES (885,81,'_elementor_template_type','wp-page');
INSERT INTO `wp_postmeta` VALUES (886,81,'_elementor_version','3.31.1');
INSERT INTO `wp_postmeta` VALUES (894,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (895,81,'_wp_page_template','elementor_header_footer');
INSERT INTO `wp_postmeta` VALUES (896,81,'_elementor_edit_mode','builder');
INSERT INTO `wp_postmeta` VALUES (897,89,'_elementor_template_type','wp-page');
INSERT INTO `wp_postmeta` VALUES (898,89,'_elementor_version','3.31.1');
INSERT INTO `wp_postmeta` VALUES (899,89,'_wp_page_template','elementor_header_footer');
INSERT INTO `wp_postmeta` VALUES (900,89,'_elementor_edit_mode','builder');
INSERT INTO `wp_postmeta` VALUES (901,90,'_elementor_template_type','wp-page');
INSERT INTO `wp_postmeta` VALUES (902,90,'_elementor_version','3.31.1');
INSERT INTO `wp_postmeta` VALUES (903,90,'_wp_page_template','elementor_header_footer');
INSERT INTO `wp_postmeta` VALUES (904,90,'_elementor_edit_mode','builder');
INSERT INTO `wp_postmeta` VALUES (905,81,'_elementor_data','[{\"id\":\"dd69ae3\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\"},\"elements\":[],\"isInner\":false},{\"id\":\"040d675\",\"elType\":\"container\",\"settings\":[],\"elements\":[{\"id\":\"3e28e9c\",\"elType\":\"widget\",\"settings\":{\"shortcode\":\"[dispensary_filter]\"},\"elements\":[],\"widgetType\":\"shortcode\"}],\"isInner\":false}]');
INSERT INTO `wp_postmeta` VALUES (906,91,'_elementor_template_type','wp-page');
INSERT INTO `wp_postmeta` VALUES (907,91,'_elementor_version','3.31.1');
INSERT INTO `wp_postmeta` VALUES (908,91,'_wp_page_template','elementor_header_footer');
INSERT INTO `wp_postmeta` VALUES (909,91,'_elementor_edit_mode','builder');
INSERT INTO `wp_postmeta` VALUES (910,91,'_elementor_data','[{\"id\":\"dd69ae3\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\"},\"elements\":[],\"isInner\":false},{\"id\":\"040d675\",\"elType\":\"container\",\"settings\":[],\"elements\":[{\"id\":\"3e28e9c\",\"elType\":\"widget\",\"settings\":{\"shortcode\":\"[dispensary_filter]\"},\"elements\":[],\"widgetType\":\"shortcode\"}],\"isInner\":false}]');
INSERT INTO `wp_postmeta` VALUES (915,48,'_elementor_edit_mode','');
INSERT INTO `wp_postmeta` VALUES (916,48,'_elementor_template_type','');
INSERT INTO `wp_postmeta` VALUES (917,48,'_elementor_data','');
INSERT INTO `wp_postmeta` VALUES (919,92,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (921,48,'open_time','06:00:00');
INSERT INTO `wp_postmeta` VALUES (922,48,'_open_time','field_68945bf58433c');
INSERT INTO `wp_postmeta` VALUES (923,48,'close_time','17:00:00');
INSERT INTO `wp_postmeta` VALUES (924,48,'_close_time','field_68945c1b8433d');
INSERT INTO `wp_postmeta` VALUES (925,92,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (926,92,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (927,92,'debit_card_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (928,92,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (929,92,'pickup_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (930,92,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (931,92,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (932,92,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (933,92,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (934,92,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (935,92,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (936,92,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (937,92,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (938,92,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (939,92,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (940,92,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (941,92,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (942,92,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (943,92,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (944,92,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (945,92,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (946,92,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (947,92,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (948,92,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (949,92,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (950,92,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (951,92,'state','MD');
INSERT INTO `wp_postmeta` VALUES (952,92,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (953,92,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (954,92,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (955,92,'country','USA');
INSERT INTO `wp_postmeta` VALUES (956,92,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (957,92,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (958,92,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (959,92,'wheelchair_accessibility','There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (960,92,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (961,92,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (962,92,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (963,92,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (964,92,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (965,92,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (966,92,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (967,92,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (968,92,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (969,92,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (970,92,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (971,92,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (972,92,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (973,92,'cash_payment','<img src=\"/wp-content/uploads/2025/08/cash-icon.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary is able to accept cash as a form of payment for medicinal marijuana products.');
INSERT INTO `wp_postmeta` VALUES (974,92,'_cash_payment','field_6891898cef01a');
INSERT INTO `wp_postmeta` VALUES (975,92,'about_content_image','75');
INSERT INTO `wp_postmeta` VALUES (976,92,'_about_content_image','field_6892fb5a5ee57');
INSERT INTO `wp_postmeta` VALUES (977,92,'open_time','06:00:00');
INSERT INTO `wp_postmeta` VALUES (978,92,'_open_time','field_68945bf58433c');
INSERT INTO `wp_postmeta` VALUES (979,92,'close_time','17:00:00');
INSERT INTO `wp_postmeta` VALUES (980,92,'_close_time','field_68945c1b8433d');
INSERT INTO `wp_postmeta` VALUES (981,77,'_edit_lock','1754566668:1');
INSERT INTO `wp_postmeta` VALUES (984,93,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (986,93,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (987,93,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (988,93,'debit_card_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (989,93,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (990,93,'pickup_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (991,93,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (992,93,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (993,93,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (994,93,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (995,93,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (996,93,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (997,93,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (998,93,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (999,93,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (1000,93,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (1001,93,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (1002,93,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (1003,93,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (1004,93,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (1005,93,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (1006,93,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (1007,93,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (1008,93,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (1009,93,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (1010,93,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (1011,93,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (1012,93,'state','MD');
INSERT INTO `wp_postmeta` VALUES (1013,93,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (1014,93,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (1015,93,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (1016,93,'country','USA');
INSERT INTO `wp_postmeta` VALUES (1017,93,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (1018,93,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (1019,93,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (1020,93,'wheelchair_accessibility','There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (1021,93,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (1022,93,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (1023,93,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (1024,93,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (1025,93,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (1026,93,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (1027,93,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (1028,93,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (1029,93,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (1030,93,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (1031,93,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (1032,93,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (1033,93,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (1034,93,'cash_payment','<img src=\"/wp-content/uploads/2025/08/cash-icon.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary is able to accept cash as a form of payment for medicinal marijuana products.');
INSERT INTO `wp_postmeta` VALUES (1035,93,'_cash_payment','field_6891898cef01a');
INSERT INTO `wp_postmeta` VALUES (1036,93,'about_content_image','75');
INSERT INTO `wp_postmeta` VALUES (1037,93,'_about_content_image','field_6892fb5a5ee57');
INSERT INTO `wp_postmeta` VALUES (1038,93,'open_time','06:00:00');
INSERT INTO `wp_postmeta` VALUES (1039,93,'_open_time','field_68945bf58433c');
INSERT INTO `wp_postmeta` VALUES (1040,93,'close_time','15:00:00');
INSERT INTO `wp_postmeta` VALUES (1041,93,'_close_time','field_68945c1b8433d');
INSERT INTO `wp_postmeta` VALUES (1044,94,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1046,94,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (1047,94,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (1048,94,'debit_card_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1049,94,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (1050,94,'pickup_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1051,94,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (1052,94,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (1053,94,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (1054,94,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (1055,94,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (1056,94,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (1057,94,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (1058,94,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1059,94,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (1060,94,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (1061,94,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (1062,94,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (1063,94,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (1064,94,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (1065,94,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (1066,94,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (1067,94,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (1068,94,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (1069,94,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (1070,94,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (1071,94,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (1072,94,'state','MD');
INSERT INTO `wp_postmeta` VALUES (1073,94,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (1074,94,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (1075,94,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (1076,94,'country','USA');
INSERT INTO `wp_postmeta` VALUES (1077,94,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (1078,94,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (1079,94,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (1080,94,'wheelchair_accessibility','There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (1081,94,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (1082,94,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (1083,94,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (1084,94,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (1085,94,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (1086,94,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (1087,94,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (1088,94,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (1089,94,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (1090,94,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (1091,94,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (1092,94,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (1093,94,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (1094,94,'cash_payment','<img src=\"/wp-content/uploads/2025/08/cash-icon.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary is able to accept cash as a form of payment for medicinal marijuana products.');
INSERT INTO `wp_postmeta` VALUES (1095,94,'_cash_payment','field_6891898cef01a');
INSERT INTO `wp_postmeta` VALUES (1096,94,'about_content_image','75');
INSERT INTO `wp_postmeta` VALUES (1097,94,'_about_content_image','field_6892fb5a5ee57');
INSERT INTO `wp_postmeta` VALUES (1098,94,'open_time','');
INSERT INTO `wp_postmeta` VALUES (1099,94,'_open_time','field_68945bf58433c');
INSERT INTO `wp_postmeta` VALUES (1100,94,'close_time','');
INSERT INTO `wp_postmeta` VALUES (1101,94,'_close_time','field_68945c1b8433d');
INSERT INTO `wp_postmeta` VALUES (1104,95,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1106,95,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (1107,95,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (1108,95,'debit_card_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1109,95,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (1110,95,'pickup_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1111,95,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (1112,95,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (1113,95,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (1114,95,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (1115,95,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (1116,95,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (1117,95,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (1118,95,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1119,95,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (1120,95,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (1121,95,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (1122,95,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (1123,95,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (1124,95,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (1125,95,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (1126,95,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (1127,95,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (1128,95,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (1129,95,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (1130,95,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (1131,95,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (1132,95,'state','Maine');
INSERT INTO `wp_postmeta` VALUES (1133,95,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (1134,95,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (1135,95,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (1136,95,'country','USA');
INSERT INTO `wp_postmeta` VALUES (1137,95,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (1138,95,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (1139,95,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (1140,95,'wheelchair_accessibility','There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (1141,95,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (1142,95,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (1143,95,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (1144,95,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (1145,95,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (1146,95,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (1147,95,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (1148,95,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (1149,95,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (1150,95,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (1151,95,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (1152,95,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (1153,95,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (1154,95,'cash_payment','<img src=\"/wp-content/uploads/2025/08/cash-icon.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary is able to accept cash as a form of payment for medicinal marijuana products.');
INSERT INTO `wp_postmeta` VALUES (1155,95,'_cash_payment','field_6891898cef01a');
INSERT INTO `wp_postmeta` VALUES (1156,95,'about_content_image','75');
INSERT INTO `wp_postmeta` VALUES (1157,95,'_about_content_image','field_6892fb5a5ee57');
INSERT INTO `wp_postmeta` VALUES (1158,95,'open_time','06:00:00');
INSERT INTO `wp_postmeta` VALUES (1159,95,'_open_time','field_68945bf58433c');
INSERT INTO `wp_postmeta` VALUES (1160,95,'close_time','17:00:00');
INSERT INTO `wp_postmeta` VALUES (1161,95,'_close_time','field_68945c1b8433d');
INSERT INTO `wp_postmeta` VALUES (1162,35,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1165,96,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1167,96,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (1168,96,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (1169,96,'debit_card_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1170,96,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (1171,96,'pickup_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1172,96,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (1173,96,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (1174,96,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (1175,96,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (1176,96,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (1177,96,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (1178,96,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (1179,96,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1180,96,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (1181,96,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (1182,96,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (1183,96,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (1184,96,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (1185,96,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (1186,96,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (1187,96,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (1188,96,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (1189,96,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (1190,96,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (1191,96,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (1192,96,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (1193,96,'state','West Virginia');
INSERT INTO `wp_postmeta` VALUES (1194,96,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (1195,96,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (1196,96,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (1197,96,'country','USA');
INSERT INTO `wp_postmeta` VALUES (1198,96,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (1199,96,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (1200,96,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (1201,96,'wheelchair_accessibility','There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (1202,96,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (1203,96,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (1204,96,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (1205,96,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (1206,96,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (1207,96,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (1208,96,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (1209,96,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (1210,96,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (1211,96,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (1212,96,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (1213,96,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (1214,96,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (1215,96,'cash_payment','<img src=\"/wp-content/uploads/2025/08/cash-icon.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary is able to accept cash as a form of payment for medicinal marijuana products.');
INSERT INTO `wp_postmeta` VALUES (1216,96,'_cash_payment','field_6891898cef01a');
INSERT INTO `wp_postmeta` VALUES (1217,96,'about_content_image','75');
INSERT INTO `wp_postmeta` VALUES (1218,96,'_about_content_image','field_6892fb5a5ee57');
INSERT INTO `wp_postmeta` VALUES (1219,96,'open_time','06:00:00');
INSERT INTO `wp_postmeta` VALUES (1220,96,'_open_time','field_68945bf58433c');
INSERT INTO `wp_postmeta` VALUES (1221,96,'close_time','17:00:00');
INSERT INTO `wp_postmeta` VALUES (1222,96,'_close_time','field_68945c1b8433d');
INSERT INTO `wp_postmeta` VALUES (1223,97,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1224,97,'_edit_lock','1754989896:1');
INSERT INTO `wp_postmeta` VALUES (1227,99,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1229,48,'categories','a:1:{i:0;s:10:\"Dispensary\";}');
INSERT INTO `wp_postmeta` VALUES (1230,48,'_categories','field_6899b1f273661');
INSERT INTO `wp_postmeta` VALUES (1231,99,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (1232,99,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (1233,99,'debit_card_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1234,99,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (1235,99,'pickup_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1236,99,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (1237,99,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (1238,99,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (1239,99,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (1240,99,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (1241,99,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (1242,99,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (1243,99,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1244,99,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (1245,99,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (1246,99,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (1247,99,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (1248,99,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (1249,99,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (1250,99,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (1251,99,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (1252,99,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (1253,99,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (1254,99,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (1255,99,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (1256,99,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (1257,99,'state','West Virginia');
INSERT INTO `wp_postmeta` VALUES (1258,99,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (1259,99,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (1260,99,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (1261,99,'country','USA');
INSERT INTO `wp_postmeta` VALUES (1262,99,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (1263,99,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (1264,99,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (1265,99,'wheelchair_accessibility','There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (1266,99,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (1267,99,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (1268,99,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (1269,99,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (1270,99,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (1271,99,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (1272,99,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (1273,99,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (1274,99,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (1275,99,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (1276,99,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (1277,99,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (1278,99,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (1279,99,'cash_payment','<img src=\"/wp-content/uploads/2025/08/cash-icon.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary is able to accept cash as a form of payment for medicinal marijuana products.');
INSERT INTO `wp_postmeta` VALUES (1280,99,'_cash_payment','field_6891898cef01a');
INSERT INTO `wp_postmeta` VALUES (1281,99,'about_content_image','75');
INSERT INTO `wp_postmeta` VALUES (1282,99,'_about_content_image','field_6892fb5a5ee57');
INSERT INTO `wp_postmeta` VALUES (1283,99,'open_time','06:00:00');
INSERT INTO `wp_postmeta` VALUES (1284,99,'_open_time','field_68945bf58433c');
INSERT INTO `wp_postmeta` VALUES (1285,99,'close_time','17:00:00');
INSERT INTO `wp_postmeta` VALUES (1286,99,'_close_time','field_68945c1b8433d');
INSERT INTO `wp_postmeta` VALUES (1287,99,'categories','a:1:{i:0;s:12:\"Dispensaries\";}');
INSERT INTO `wp_postmeta` VALUES (1288,99,'_categories','field_6899b1f273661');
INSERT INTO `wp_postmeta` VALUES (1291,100,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1293,100,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (1294,100,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (1295,100,'debit_card_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1296,100,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (1297,100,'pickup_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1298,100,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (1299,100,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (1300,100,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (1301,100,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (1302,100,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (1303,100,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (1304,100,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (1305,100,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1306,100,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (1307,100,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (1308,100,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (1309,100,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (1310,100,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (1311,100,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (1312,100,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (1313,100,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (1314,100,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (1315,100,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (1316,100,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (1317,100,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (1318,100,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (1319,100,'state','West Virginia');
INSERT INTO `wp_postmeta` VALUES (1320,100,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (1321,100,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (1322,100,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (1323,100,'country','USA');
INSERT INTO `wp_postmeta` VALUES (1324,100,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (1325,100,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (1326,100,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (1327,100,'wheelchair_accessibility','There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (1328,100,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (1329,100,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (1330,100,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (1331,100,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (1332,100,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (1333,100,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (1334,100,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (1335,100,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (1336,100,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (1337,100,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (1338,100,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (1339,100,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (1340,100,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (1341,100,'cash_payment','<img src=\"/wp-content/uploads/2025/08/cash-icon.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary is able to accept cash as a form of payment for medicinal marijuana products.');
INSERT INTO `wp_postmeta` VALUES (1342,100,'_cash_payment','field_6891898cef01a');
INSERT INTO `wp_postmeta` VALUES (1343,100,'about_content_image','75');
INSERT INTO `wp_postmeta` VALUES (1344,100,'_about_content_image','field_6892fb5a5ee57');
INSERT INTO `wp_postmeta` VALUES (1345,100,'open_time','06:00:00');
INSERT INTO `wp_postmeta` VALUES (1346,100,'_open_time','field_68945bf58433c');
INSERT INTO `wp_postmeta` VALUES (1347,100,'close_time','17:00:00');
INSERT INTO `wp_postmeta` VALUES (1348,100,'_close_time','field_68945c1b8433d');
INSERT INTO `wp_postmeta` VALUES (1349,100,'categories','a:2:{i:0;s:12:\"Dispensaries\";i:1;s:5:\"Brand\";}');
INSERT INTO `wp_postmeta` VALUES (1350,100,'_categories','field_6899b1f273661');
INSERT INTO `wp_postmeta` VALUES (1351,101,'_edit_lock','1754997086:1');
INSERT INTO `wp_postmeta` VALUES (1352,102,'_wp_attached_file','2025/08/smartphone.png');
INSERT INTO `wp_postmeta` VALUES (1353,102,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:22:\"2025/08/smartphone.png\";s:8:\"filesize\";i:6025;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"smartphone-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:882;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"smartphone-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:519;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1355,101,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1356,101,'_elementor_edit_mode','');
INSERT INTO `wp_postmeta` VALUES (1357,101,'_elementor_template_type','');
INSERT INTO `wp_postmeta` VALUES (1358,101,'_elementor_data','');
INSERT INTO `wp_postmeta` VALUES (1360,103,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1362,101,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1363,101,'categories','a:1:{i:0;s:12:\"Dispensaries\";}');
INSERT INTO `wp_postmeta` VALUES (1364,101,'_categories','field_6899b1f273661');
INSERT INTO `wp_postmeta` VALUES (1365,101,'open_time','06:00:00');
INSERT INTO `wp_postmeta` VALUES (1366,101,'_open_time','field_68945bf58433c');
INSERT INTO `wp_postmeta` VALUES (1367,101,'close_time','23:00:00');
INSERT INTO `wp_postmeta` VALUES (1368,101,'_close_time','field_68945c1b8433d');
INSERT INTO `wp_postmeta` VALUES (1369,101,'cash_payment_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1370,101,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (1371,101,'debit_card_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1372,101,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (1373,101,'pickup_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1374,101,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (1375,101,'online_order_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1376,101,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (1377,101,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (1378,101,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (1379,101,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (1380,101,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (1381,101,'wheelchair_accissibility_option','');
INSERT INTO `wp_postmeta` VALUES (1382,101,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (1383,101,'cash_payment','This Medical Marijuana Dispensary is able to accept cash as a form of payment for medicinal marijuana products.');
INSERT INTO `wp_postmeta` VALUES (1384,101,'_cash_payment','field_6891898cef01a');
INSERT INTO `wp_postmeta` VALUES (1385,101,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (1386,101,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (1387,101,'pickup','This Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (1388,101,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (1389,101,'online_order','Order products online for pickup with this Medical Marijuana Dispensary location. Purchase medicine from the comfort of your own home.');
INSERT INTO `wp_postmeta` VALUES (1390,101,'_online_order','field_68918a7511136');
INSERT INTO `wp_postmeta` VALUES (1391,101,'dispensary_logo','60');
INSERT INTO `wp_postmeta` VALUES (1392,101,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (1393,101,'dispensary_name','Trulieve – Philadelphia, PA');
INSERT INTO `wp_postmeta` VALUES (1394,101,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (1395,101,'dispensary_phone','9849158973');
INSERT INTO `wp_postmeta` VALUES (1396,101,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (1397,101,'dispensary_full_address','Deudhakalaa300 Packer Ave, Philadelphia, PA 19148, USA');
INSERT INTO `wp_postmeta` VALUES (1398,101,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (1399,101,'about_content_image','102');
INSERT INTO `wp_postmeta` VALUES (1400,101,'_about_content_image','field_6892fb5a5ee57');
INSERT INTO `wp_postmeta` VALUES (1401,101,'street','300 Packer Ave');
INSERT INTO `wp_postmeta` VALUES (1402,101,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (1403,101,'city','Philadelphia');
INSERT INTO `wp_postmeta` VALUES (1404,101,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (1405,101,'state','Pennsylvania');
INSERT INTO `wp_postmeta` VALUES (1406,101,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (1407,101,'zip_code','19173');
INSERT INTO `wp_postmeta` VALUES (1408,101,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (1409,101,'country','USA');
INSERT INTO `wp_postmeta` VALUES (1410,101,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (1411,101,'social_links','');
INSERT INTO `wp_postmeta` VALUES (1412,101,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (1413,103,'categories','a:1:{i:0;s:12:\"Dispensaries\";}');
INSERT INTO `wp_postmeta` VALUES (1414,103,'_categories','field_6899b1f273661');
INSERT INTO `wp_postmeta` VALUES (1415,103,'open_time','06:00:00');
INSERT INTO `wp_postmeta` VALUES (1416,103,'_open_time','field_68945bf58433c');
INSERT INTO `wp_postmeta` VALUES (1417,103,'close_time','23:00:00');
INSERT INTO `wp_postmeta` VALUES (1418,103,'_close_time','field_68945c1b8433d');
INSERT INTO `wp_postmeta` VALUES (1419,103,'cash_payment_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1420,103,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (1421,103,'debit_card_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1422,103,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (1423,103,'pickup_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1424,103,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (1425,103,'online_order_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1426,103,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (1427,103,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (1428,103,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (1429,103,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (1430,103,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (1431,103,'wheelchair_accissibility_option','');
INSERT INTO `wp_postmeta` VALUES (1432,103,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (1433,103,'cash_payment','This Medical Marijuana Dispensary is able to accept cash as a form of payment for medicinal marijuana products.');
INSERT INTO `wp_postmeta` VALUES (1434,103,'_cash_payment','field_6891898cef01a');
INSERT INTO `wp_postmeta` VALUES (1435,103,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (1436,103,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (1437,103,'pickup','This Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (1438,103,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (1439,103,'online_order','Order products online for pickup with this Medical Marijuana Dispensary location. Purchase medicine from the comfort of your own home.');
INSERT INTO `wp_postmeta` VALUES (1440,103,'_online_order','field_68918a7511136');
INSERT INTO `wp_postmeta` VALUES (1441,103,'dispensary_logo','60');
INSERT INTO `wp_postmeta` VALUES (1442,103,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (1443,103,'dispensary_name','Trulieve – Philadelphia, PA');
INSERT INTO `wp_postmeta` VALUES (1444,103,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (1445,103,'dispensary_phone','9849158973');
INSERT INTO `wp_postmeta` VALUES (1446,103,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (1447,103,'dispensary_full_address','Deudhakalaa300 Packer Ave, Philadelphia, PA 19148, USA');
INSERT INTO `wp_postmeta` VALUES (1448,103,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (1449,103,'about_content_image','102');
INSERT INTO `wp_postmeta` VALUES (1450,103,'_about_content_image','field_6892fb5a5ee57');
INSERT INTO `wp_postmeta` VALUES (1451,103,'street','300 Packer Ave');
INSERT INTO `wp_postmeta` VALUES (1452,103,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (1453,103,'city','Philadelphia');
INSERT INTO `wp_postmeta` VALUES (1454,103,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (1455,103,'state','Pennsylvania');
INSERT INTO `wp_postmeta` VALUES (1456,103,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (1457,103,'zip_code','19173');
INSERT INTO `wp_postmeta` VALUES (1458,103,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (1459,103,'country','USA');
INSERT INTO `wp_postmeta` VALUES (1460,103,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (1461,103,'social_links','');
INSERT INTO `wp_postmeta` VALUES (1462,103,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (1463,104,'_wp_attached_file','2025/08/logo_site.png');
INSERT INTO `wp_postmeta` VALUES (1464,104,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:626;s:6:\"height\";i:198;s:4:\"file\";s:21:\"2025/08/logo_site.png\";s:8:\"filesize\";i:23974;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"logo_site-300x95.png\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5826;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"logo_site-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4267;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1465,101,'_thumbnail_id','104');
INSERT INTO `wp_postmeta` VALUES (1468,105,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1470,105,'cash_payment_option','');
INSERT INTO `wp_postmeta` VALUES (1471,105,'_cash_payment_option','field_68918b7e04ccd');
INSERT INTO `wp_postmeta` VALUES (1472,105,'debit_card_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1473,105,'_debit_card_option','field_68918bbf04ccf');
INSERT INTO `wp_postmeta` VALUES (1474,105,'pickup_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1475,105,'_pickup_option','field_68918c39da73d');
INSERT INTO `wp_postmeta` VALUES (1476,105,'online_order_option','');
INSERT INTO `wp_postmeta` VALUES (1477,105,'_online_order_option','field_68918c54da73e');
INSERT INTO `wp_postmeta` VALUES (1478,105,'onsite_atm_option','');
INSERT INTO `wp_postmeta` VALUES (1479,105,'_onsite_atm_option','field_68918c6cda73f');
INSERT INTO `wp_postmeta` VALUES (1480,105,'onsite_security_option','');
INSERT INTO `wp_postmeta` VALUES (1481,105,'_onsite_security_option','field_68918c91da740');
INSERT INTO `wp_postmeta` VALUES (1482,105,'wheelchair_accissibility_option','a:1:{i:0;s:3:\"yes\";}');
INSERT INTO `wp_postmeta` VALUES (1483,105,'_wheelchair_accissibility_option','field_68918ca2da741');
INSERT INTO `wp_postmeta` VALUES (1484,105,'dispensary_logo','53');
INSERT INTO `wp_postmeta` VALUES (1485,105,'_dispensary_logo','field_689095d2cf7df');
INSERT INTO `wp_postmeta` VALUES (1486,105,'dispensary_name','Ritual Dispensary – Curtis Bay, MD');
INSERT INTO `wp_postmeta` VALUES (1487,105,'_dispensary_name','field_689095f7cf7e0');
INSERT INTO `wp_postmeta` VALUES (1488,105,'dispensary_phone','(443) 817-2842');
INSERT INTO `wp_postmeta` VALUES (1489,105,'_dispensary_phone','field_68909604cf7e1');
INSERT INTO `wp_postmeta` VALUES (1490,105,'dispensary_full_address','7609 Energy Pkwy STE 901, Curtis Bay, MD 21226, USA');
INSERT INTO `wp_postmeta` VALUES (1491,105,'_dispensary_full_address','field_6890960ecf7e2');
INSERT INTO `wp_postmeta` VALUES (1492,105,'street','7609 Energy Pkwy STE 901');
INSERT INTO `wp_postmeta` VALUES (1493,105,'_street','field_689098e5e409a');
INSERT INTO `wp_postmeta` VALUES (1494,105,'city','Curtis Bay');
INSERT INTO `wp_postmeta` VALUES (1495,105,'_city','field_689098efe409b');
INSERT INTO `wp_postmeta` VALUES (1496,105,'state','West Virginia');
INSERT INTO `wp_postmeta` VALUES (1497,105,'_state','field_689098f4e409c');
INSERT INTO `wp_postmeta` VALUES (1498,105,'zip_code','21226');
INSERT INTO `wp_postmeta` VALUES (1499,105,'_zip_code','field_689098fbe409d');
INSERT INTO `wp_postmeta` VALUES (1500,105,'country','USA');
INSERT INTO `wp_postmeta` VALUES (1501,105,'_country','field_68909907e409e');
INSERT INTO `wp_postmeta` VALUES (1502,105,'social_links','1');
INSERT INTO `wp_postmeta` VALUES (1503,105,'_social_links','field_68909b1053087');
INSERT INTO `wp_postmeta` VALUES (1504,105,'wheelchair_accessibility','There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.');
INSERT INTO `wp_postmeta` VALUES (1505,105,'_wheelchair_accessibility','field_68918ae111139');
INSERT INTO `wp_postmeta` VALUES (1506,105,'debit_cards','Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!');
INSERT INTO `wp_postmeta` VALUES (1507,105,'_debit_cards','field_68918a3e11134');
INSERT INTO `wp_postmeta` VALUES (1508,105,'pickup','<img src=\"/wp-content/uploads/2025/08/icon-img3.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!');
INSERT INTO `wp_postmeta` VALUES (1509,105,'_pickup','field_68918a6111135');
INSERT INTO `wp_postmeta` VALUES (1510,105,'onsite_security','<img src=\"/wp-content/uploads/2025/08/icon-img7.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.');
INSERT INTO `wp_postmeta` VALUES (1511,105,'_onsite_security','field_68918ac111138');
INSERT INTO `wp_postmeta` VALUES (1512,105,'social_links_0_social_logo','60');
INSERT INTO `wp_postmeta` VALUES (1513,105,'_social_links_0_social_logo','field_68909b1753088');
INSERT INTO `wp_postmeta` VALUES (1514,105,'social_links_0_social_name','facebook');
INSERT INTO `wp_postmeta` VALUES (1515,105,'_social_links_0_social_name','field_68909b2053089');
INSERT INTO `wp_postmeta` VALUES (1516,105,'social_links_0_social_link','https://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (1517,105,'_social_links_0_social_link','field_68909b285308a');
INSERT INTO `wp_postmeta` VALUES (1518,105,'cash_payment','<img src=\"/wp-content/uploads/2025/08/cash-icon.png\" alt=\"Image\" />\r\n\r\nThis Medical Marijuana Dispensary is able to accept cash as a form of payment for medicinal marijuana products.');
INSERT INTO `wp_postmeta` VALUES (1519,105,'_cash_payment','field_6891898cef01a');
INSERT INTO `wp_postmeta` VALUES (1520,105,'about_content_image','75');
INSERT INTO `wp_postmeta` VALUES (1521,105,'_about_content_image','field_6892fb5a5ee57');
INSERT INTO `wp_postmeta` VALUES (1522,105,'open_time','06:00:00');
INSERT INTO `wp_postmeta` VALUES (1523,105,'_open_time','field_68945bf58433c');
INSERT INTO `wp_postmeta` VALUES (1524,105,'close_time','17:00:00');
INSERT INTO `wp_postmeta` VALUES (1525,105,'_close_time','field_68945c1b8433d');
INSERT INTO `wp_postmeta` VALUES (1526,105,'categories','a:1:{i:0;s:10:\"Dispensary\";}');
INSERT INTO `wp_postmeta` VALUES (1527,105,'_categories','field_6899b1f273661');
INSERT INTO `wp_postmeta` VALUES (1528,83,'_elementor_css','a:6:{s:4:\"time\";i:1754981056;s:5:\"fonts\";a:2:{i:0;s:6:\"Roboto\";i:1;s:11:\"Roboto Slab\";}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1529,81,'_elementor_page_assets','a:1:{s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}');
INSERT INTO `wp_postmeta` VALUES (1530,81,'_elementor_css','a:6:{s:4:\"time\";i:1754981066;s:5:\"fonts\";a:0:{}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1531,81,'_elementor_element_cache','{\"timeout\":1755067466,\"value\":{\"content\":\"<div class=\\\"elementor-element elementor-element-dd69ae3 e-flex e-con-boxed e-con e-parent\\\" data-id=\\\"dd69ae3\\\" data-element_type=\\\"container\\\">\\n\\t\\t\\t\\t\\t<div class=\\\"e-con-inner\\\">\\n\\t\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t<div class=\\\"elementor-element elementor-element-040d675 e-flex e-con-boxed e-con e-parent\\\" data-id=\\\"040d675\\\" data-element_type=\\\"container\\\">\\n\\t\\t\\t\\t\\t<div class=\\\"e-con-inner\\\">\\n\\t\\t[elementor-element k=\\\"678842bf76fbc6916adf5f9500fc4d95\\\" data=\\\"eyJpZCI6IjNlMjhlOWMiLCJlbFR5cGUiOiJ3aWRnZXQiLCJzZXR0aW5ncyI6eyJzaG9ydGNvZGUiOiJbZGlzcGVuc2FyeV9maWx0ZXJdIn0sImVsZW1lbnRzIjpbXSwid2lkZ2V0VHlwZSI6InNob3J0Y29kZSJ9\\\"]\\t\\t\\t<\\/div>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\",\"scripts\":[],\"styles\":[]}}');
INSERT INTO `wp_postmeta` VALUES (1532,2,'_elementor_page_assets','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1533,2,'_elementor_css','a:7:{s:4:\"time\";i:1754988558;s:5:\"fonts\";a:0:{}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:5:\"empty\";i:0;s:0:\"\";s:3:\"css\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1534,107,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1535,107,'_acf_changed','1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2025-08-05 11:07:20','2025-08-05 11:07:20','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2025-08-05 11:07:20','2025-08-05 11:07:20','',0,'http://cheap-medscards.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2025-08-05 11:07:20','2025-08-05 11:07:20','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://cheap-medscards.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2025-08-05 11:07:20','2025-08-05 11:07:20','',0,'http://cheap-medscards.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2025-08-05 11:07:20','2025-08-05 11:07:20','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://cheap-medscards.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','draft','closed','open','','privacy-policy','','','2025-08-05 11:07:20','2025-08-05 11:07:20','',0,'http://cheap-medscards.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2025-08-05 11:09:22','2025-08-05 11:09:22','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2025-08-05 11:09:22','2025-08-05 11:09:22','',0,'http://cheap-medscards.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2025-08-05 11:09:46','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2025-08-05 11:09:46','0000-00-00 00:00:00','',0,'http://cheap-medscards.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"dispensary\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Amenities Options','amenities-options','publish','closed','closed','','group_6891898b53c9c','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',0,'http://cheap-medscards.local/?p=11',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:1:{s:3:\"yes\";s:3:\"Yes\";}s:13:\"default_value\";a:0:{}s:13:\"return_format\";s:5:\"value\";s:12:\"allow_custom\";i:0;s:17:\"allow_in_bindings\";i:0;s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:11:\"save_custom\";i:0;s:25:\"custom_choice_button_text\";s:14:\"Add new choice\";}','Cash Payment Option','cash_payment_option','publish','closed','closed','','field_68918b7e04ccd','','','2025-08-07 08:39:05','2025-08-07 08:39:05','',11,'http://cheap-medscards.local/?post_type=acf-field&#038;p=12',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:1:{s:3:\"yes\";s:3:\"Yes\";}s:13:\"default_value\";a:0:{}s:13:\"return_format\";s:5:\"value\";s:12:\"allow_custom\";i:0;s:17:\"allow_in_bindings\";i:0;s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:11:\"save_custom\";i:0;s:25:\"custom_choice_button_text\";s:14:\"Add new choice\";}','Debit Card Option','debit_card_option','publish','closed','closed','','field_68918bbf04ccf','','','2025-08-07 08:39:05','2025-08-07 08:39:05','',11,'http://cheap-medscards.local/?post_type=acf-field&#038;p=13',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:1:{s:3:\"yes\";s:3:\"Yes\";}s:13:\"default_value\";a:0:{}s:13:\"return_format\";s:5:\"value\";s:12:\"allow_custom\";i:0;s:17:\"allow_in_bindings\";i:0;s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:11:\"save_custom\";i:0;s:25:\"custom_choice_button_text\";s:14:\"Add new choice\";}','Pickup Option','pickup_option','publish','closed','closed','','field_68918c39da73d','','','2025-08-07 08:39:05','2025-08-07 08:39:05','',11,'http://cheap-medscards.local/?post_type=acf-field&#038;p=14',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:1:{s:3:\"yes\";s:3:\"Yes\";}s:13:\"default_value\";a:0:{}s:13:\"return_format\";s:5:\"value\";s:12:\"allow_custom\";i:0;s:17:\"allow_in_bindings\";i:0;s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:11:\"save_custom\";i:0;s:25:\"custom_choice_button_text\";s:14:\"Add new choice\";}','Online Order Option','online_order_option','publish','closed','closed','','field_68918c54da73e','','','2025-08-07 08:39:05','2025-08-07 08:39:05','',11,'http://cheap-medscards.local/?post_type=acf-field&#038;p=15',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:1:{s:3:\"yes\";s:3:\"Yes\";}s:13:\"default_value\";a:0:{}s:13:\"return_format\";s:5:\"value\";s:12:\"allow_custom\";i:0;s:17:\"allow_in_bindings\";i:0;s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:11:\"save_custom\";i:0;s:25:\"custom_choice_button_text\";s:14:\"Add new choice\";}','Onsite ATM Option','onsite_atm_option','publish','closed','closed','','field_68918c6cda73f','','','2025-08-07 08:39:05','2025-08-07 08:39:05','',11,'http://cheap-medscards.local/?post_type=acf-field&#038;p=16',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:1:{s:3:\"yes\";s:3:\"Yes\";}s:13:\"default_value\";a:0:{}s:13:\"return_format\";s:5:\"value\";s:12:\"allow_custom\";i:0;s:17:\"allow_in_bindings\";i:0;s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:11:\"save_custom\";i:0;s:25:\"custom_choice_button_text\";s:14:\"Add new choice\";}','Onsite Security Option','onsite_security_option','publish','closed','closed','','field_68918c91da740','','','2025-08-07 08:39:05','2025-08-07 08:39:05','',11,'http://cheap-medscards.local/?post_type=acf-field&#038;p=17',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:1:{s:3:\"yes\";s:3:\"Yes\";}s:13:\"default_value\";a:0:{}s:13:\"return_format\";s:5:\"value\";s:12:\"allow_custom\";i:0;s:17:\"allow_in_bindings\";i:0;s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:11:\"save_custom\";i:0;s:25:\"custom_choice_button_text\";s:14:\"Add new choice\";}','Wheelchair Accissibility Option','wheelchair_accissibility_option','publish','closed','closed','','field_68918ca2da741','','','2025-08-07 08:39:05','2025-08-07 08:39:05','',11,'http://cheap-medscards.local/?post_type=acf-field&#038;p=18',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_68918b7e04ccd\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"yes\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:111:\"This Medical Marijuana Dispensary is able to accept cash as a form of payment for medicinal marijuana products.\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Cash Payment','cash_payment','publish','closed','closed','','field_6891898cef01a','','','2025-08-07 08:39:05','2025-08-07 08:39:05','',11,'http://cheap-medscards.local/?post_type=acf-field&#038;p=19',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_68918bbf04ccf\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"yes\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:140:\"Debit Cards are an accepted form of payment at this Medical Marijuana Dispensary. Come on in and shop with confidence when you shop with us!\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Debit Cards','debit_cards','publish','closed','closed','','field_68918a3e11134','','','2025-08-07 08:39:05','2025-08-07 08:39:05','',11,'http://cheap-medscards.local/?post_type=acf-field&#038;p=20',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_68918c39da73d\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"yes\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:139:\"This Medical Marijuana Dispensary currently offers a curbside-pickup service at their location. Order ahead and pickup at your convenience!\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Pickup','pickup','publish','closed','closed','','field_68918a6111135','','','2025-08-07 08:39:05','2025-08-07 08:39:05','',11,'http://cheap-medscards.local/?post_type=acf-field&#038;p=21',9,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_68918c54da73e\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"yes\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:134:\"Order products online for pickup with this Medical Marijuana Dispensary location. Purchase medicine from the comfort of your own home.\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Online Order','online_order','publish','closed','closed','','field_68918a7511136','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',11,'http://cheap-medscards.local/?post_type=acf-field&#038;p=22',10,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_68918c6cda73f\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"yes\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:142:\"There is an ATM available onsite at this Medical Marijuana Dispensary. You can grab some cash and make your purchases all in one simple place.\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Onsite ATM','onsite_atm','publish','closed','closed','','field_68918aa111137','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',11,'http://cheap-medscards.local/?post_type=acf-field&#038;p=23',11,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_68918c91da740\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"yes\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:131:\"This Medical Marijuana Dispensary keeps its customers feeling safe by providing stellar Onsite Security during all operating hours.\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Onsite Security','onsite_security','publish','closed','closed','','field_68918ac111138','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',11,'http://cheap-medscards.local/?post_type=acf-field&#038;p=24',12,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_68918ca2da741\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"yes\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:132:\"There is Wheelchair Accessibility at this Medical Marijuana Dispensary location. Providing access to all Medical Marijuana patients.\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Wheelchair Accessibility','wheelchair_accessibility','publish','closed','closed','','field_68918ae111139','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',11,'http://cheap-medscards.local/?post_type=acf-field&#038;p=25',13,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"dispensary\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Dispensary Amenities','dispensary-amenities','acf-disabled','closed','closed','','group_68909951c8dd8','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',0,'http://cheap-medscards.local/?p=26',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";i:0;s:3:\"max\";i:0;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}','Dispensary Amenities','dispensary_amenities','publish','closed','closed','','field_689099536efb0','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',26,'http://cheap-medscards.local/?post_type=acf-field&#038;p=27',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:18:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";s:15:\"parent_repeater\";s:19:\"field_689099536efb0\";}','Amenities Image','amenities_image','publish','closed','closed','','field_689099756efb1','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',27,'http://cheap-medscards.local/?post_type=acf-field&#038;p=28',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_689099536efb0\";}','Amenities Detail','amenities_detail','publish','closed','closed','','field_689099826efb2','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',27,'http://cheap-medscards.local/?post_type=acf-field&#038;p=29',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"dispensary\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Dispensary Basic Info','dispensary-basic-info','publish','closed','closed','','group_689095d106583','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',0,'http://cheap-medscards.local/?p=30',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}','Dispensary Logo','dispensary_logo','publish','closed','closed','','field_689095d2cf7df','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',30,'http://cheap-medscards.local/?post_type=acf-field&#038;p=31',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Dispensary Name','dispensary_name','publish','closed','closed','','field_689095f7cf7e0','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',30,'http://cheap-medscards.local/?post_type=acf-field&#038;p=32',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Dispensary Phone','dispensary_phone','publish','closed','closed','','field_68909604cf7e1','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',30,'http://cheap-medscards.local/?post_type=acf-field&#038;p=33',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2025-08-05 11:29:04','2025-08-05 11:29:04','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Dispensary Full Address','dispensary_full_address','publish','closed','closed','','field_6890960ecf7e2','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',30,'http://cheap-medscards.local/?post_type=acf-field&#038;p=34',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2025-08-05 11:29:05','2025-08-05 11:29:05','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"dispensary\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Dispensary Full Address','dispensary-full-address','publish','closed','closed','','group_689098e41853e','','','2025-08-12 09:20:57','2025-08-12 09:20:57','',0,'http://cheap-medscards.local/?p=35',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2025-08-05 11:29:05','2025-08-05 11:29:05','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Street','street','publish','closed','closed','','field_689098e5e409a','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',35,'http://cheap-medscards.local/?post_type=acf-field&#038;p=36',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2025-08-05 11:29:05','2025-08-05 11:29:05','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','City','city','publish','closed','closed','','field_689098efe409b','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',35,'http://cheap-medscards.local/?post_type=acf-field&#038;p=37',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2025-08-05 11:29:05','2025-08-05 11:29:05','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:5:\"Maine\";s:5:\"Maine\";s:8:\"Oklahoma\";s:8:\"Oklahoma\";s:8:\"Virginia\";s:8:\"Virginia\";s:13:\"West Virginia\";s:13:\"West Virginia\";s:7:\"Florida\";s:7:\"Florida\";s:12:\"Pennsylvania\";s:12:\"Pennsylvania\";}s:13:\"default_value\";s:5:\"maine\";s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:17:\"allow_in_bindings\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";s:14:\"create_options\";i:0;s:12:\"save_options\";i:0;}','State','state','publish','closed','closed','','field_689098f4e409c','','','2025-08-07 11:49:59','2025-08-07 11:49:59','',35,'http://cheap-medscards.local/?post_type=acf-field&#038;p=38',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2025-08-05 11:29:05','2025-08-05 11:29:05','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Zip Code','zip_code','publish','closed','closed','','field_689098fbe409d','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',35,'http://cheap-medscards.local/?post_type=acf-field&#038;p=39',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2025-08-05 11:29:05','2025-08-05 11:29:05','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Country','country','publish','closed','closed','','field_68909907e409e','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',35,'http://cheap-medscards.local/?post_type=acf-field&#038;p=40',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2025-08-05 11:29:05','2025-08-05 11:29:05','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"dispensary\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Dispensary Social Links','dispensary-social-links','publish','closed','closed','','group_6890991def4b3','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',0,'http://cheap-medscards.local/?p=41',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2025-08-05 11:29:05','2025-08-05 11:29:05','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";i:0;s:3:\"max\";i:0;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}','Social Links','social_links','publish','closed','closed','','field_68909b1053087','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',41,'http://cheap-medscards.local/?post_type=acf-field&#038;p=42',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2025-08-05 11:29:05','2025-08-05 11:29:05','a:18:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";s:15:\"parent_repeater\";s:19:\"field_68909b1053087\";}','Social Logo','social_logo','publish','closed','closed','','field_68909b1753088','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',42,'http://cheap-medscards.local/?post_type=acf-field&#038;p=43',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2025-08-05 11:29:05','2025-08-05 11:29:05','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_68909b1053087\";}','Social Name','social_name','publish','closed','closed','','field_68909b2053089','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',42,'http://cheap-medscards.local/?post_type=acf-field&#038;p=44',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2025-08-05 11:29:05','2025-08-05 11:29:05','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_68909b1053087\";}','Social Link','social_link','publish','closed','closed','','field_68909b285308a','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',42,'http://cheap-medscards.local/?post_type=acf-field&#038;p=45',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2025-08-05 11:29:05','2025-08-05 11:29:05','a:29:{s:8:\"taxonomy\";s:19:\"dispensary-category\";s:11:\"object_type\";a:1:{i:0;s:10:\"dispensary\";}s:22:\"advanced_configuration\";i:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:25:{s:4:\"name\";s:10:\"Categories\";s:13:\"singular_name\";s:8:\"Category\";s:9:\"menu_name\";s:10:\"Categories\";s:9:\"all_items\";s:14:\"All Categories\";s:9:\"edit_item\";s:13:\"Edit Category\";s:9:\"view_item\";s:13:\"View Category\";s:11:\"update_item\";s:15:\"Update Category\";s:12:\"add_new_item\";s:16:\"Add New Category\";s:13:\"new_item_name\";s:17:\"New Category Name\";s:12:\"search_items\";s:17:\"Search Categories\";s:13:\"popular_items\";s:18:\"Popular Categories\";s:26:\"separate_items_with_commas\";s:31:\"Separate categories with commas\";s:19:\"add_or_remove_items\";s:24:\"Add or remove categories\";s:21:\"choose_from_most_used\";s:36:\"Choose from the most used categories\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:19:\"No categories found\";s:8:\"no_terms\";s:13:\"No categories\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:21:\"items_list_navigation\";s:26:\"Categories list navigation\";s:10:\"items_list\";s:15:\"Categories list\";s:13:\"back_to_items\";s:20:\"← Go to categories\";s:9:\"item_link\";s:13:\"Category Link\";s:21:\"item_link_description\";s:20:\"A link to a category\";}s:11:\"description\";s:0:\"\";s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:0;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:13:\"show_tagcloud\";i:1;s:18:\"show_in_quick_edit\";i:1;s:17:\"show_admin_column\";i:1;s:7:\"rewrite\";a:3:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:10:\"with_front\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}','Categories','categories','publish','closed','closed','','taxonomy_68905fd34a5d2','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',0,'http://cheap-medscards.local/?post_type=acf-taxonomy&#038;p=46',0,'acf-taxonomy','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2025-08-05 11:29:05','2025-08-05 11:29:05','a:35:{s:9:\"post_type\";s:10:\"dispensary\";s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:12:\"Dispensaries\";s:13:\"singular_name\";s:10:\"Dispensary\";s:9:\"menu_name\";s:12:\"Dispensaries\";s:9:\"all_items\";s:16:\"All Dispensaries\";s:9:\"edit_item\";s:15:\"Edit dispensary\";s:9:\"view_item\";s:15:\"View dispensary\";s:10:\"view_items\";s:17:\"View Dispensaries\";s:12:\"add_new_item\";s:14:\"Add dispensary\";s:7:\"add_new\";s:14:\"Add dispensary\";s:8:\"new_item\";s:14:\"New dispensary\";s:17:\"parent_item_colon\";s:18:\"Parent dispensary:\";s:12:\"search_items\";s:19:\"Search Dispensaries\";s:9:\"not_found\";s:21:\"No dispensaries found\";s:18:\"not_found_in_trash\";s:30:\"No dispensaries found in Trash\";s:8:\"archives\";s:19:\"dispensary Archives\";s:10:\"attributes\";s:21:\"dispensary Attributes\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:22:\"Insert into dispensary\";s:21:\"uploaded_to_this_item\";s:27:\"Uploaded to this dispensary\";s:17:\"filter_items_list\";s:24:\"Filter dispensaries list\";s:14:\"filter_by_date\";s:27:\"Filter dispensaries by date\";s:21:\"items_list_navigation\";s:28:\"Dispensaries list navigation\";s:10:\"items_list\";s:17:\"Dispensaries list\";s:14:\"item_published\";s:21:\"dispensary published.\";s:24:\"item_published_privately\";s:31:\"dispensary published privately.\";s:22:\"item_reverted_to_draft\";s:29:\"dispensary reverted to draft.\";s:14:\"item_scheduled\";s:21:\"dispensary scheduled.\";s:12:\"item_updated\";s:19:\"dispensary updated.\";s:9:\"item_link\";s:15:\"dispensary Link\";s:21:\"item_link_description\";s:23:\"A link to a dispensary.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";a:2:{s:4:\"type\";s:9:\"dashicons\";s:5:\"value\";s:17:\"dashicons-archive\";}s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:5:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"revisions\";i:3;s:9:\"thumbnail\";i:4;s:13:\"custom-fields\";}s:10:\"taxonomies\";s:0:\"\";s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}','Dispensaries','dispensaries','publish','closed','closed','','post_type_68905ee0f313c','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',0,'http://cheap-medscards.local/?post_type=acf-post-type&#038;p=47',0,'acf-post-type','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2025-08-05 11:30:18','2025-08-05 11:30:18','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','publish','closed','closed','','ritual-dispensary-curtis-bay-md','','','2025-08-11 12:15:19','2025-08-11 12:15:19','',0,'http://cheap-medscards.local/?post_type=dispensary&#038;p=48',0,'dispensary','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2025-08-05 11:29:50','2025-08-05 11:29:50','{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentyfive','','','2025-08-05 11:29:50','2025-08-05 11:29:50','',0,'http://cheap-medscards.local/wp-global-styles-twentytwentyfive/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2025-08-05 11:30:18','2025-08-05 11:30:18','','Dispensary','','inherit','closed','closed','','48-revision-v1','','','2025-08-05 11:30:18','2025-08-05 11:30:18','',48,'http://cheap-medscards.local/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2025-08-05 11:43:22','2025-08-05 11:43:22','{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-hello-elementor-child','','','2025-08-05 11:43:22','2025-08-05 11:43:22','',0,'http://cheap-medscards.local/wp-global-styles-hello-elementor-child/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2025-08-05 11:45:57','2025-08-05 11:45:57','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-05 11:45:57','2025-08-05 11:45:57','',48,'http://cheap-medscards.local/?p=52',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2025-08-05 11:46:51','2025-08-05 11:46:51','','logo-1-1','','inherit','open','closed','','logo-1-1','','','2025-08-05 11:46:51','2025-08-05 11:46:51','',48,'http://cheap-medscards.local/wp-content/uploads/2025/08/logo-1-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (55,1,'2025-08-05 11:49:48','2025-08-05 11:49:48','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-05 11:49:48','2025-08-05 11:49:48','',48,'http://cheap-medscards.local/?p=55',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2025-08-05 11:50:19','2025-08-05 11:50:19','','aniket-deole-M6XC789HLe8-unsplash','','inherit','open','closed','','aniket-deole-m6xc789hle8-unsplash','','','2025-08-05 11:50:19','2025-08-05 11:50:19','',48,'http://cheap-medscards.local/wp-content/uploads/2025/08/aniket-deole-M6XC789HLe8-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (58,1,'2025-08-05 17:18:22','2025-08-05 17:18:22','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-05 17:18:22','2025-08-05 17:18:22','',48,'http://cheap-medscards.local/?p=58',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2025-08-05 17:19:15','2025-08-05 17:19:15','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-05 17:19:15','2025-08-05 17:19:15','',48,'http://cheap-medscards.local/?p=59',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2025-08-05 17:34:19','2025-08-05 17:34:19','','image','','inherit','open','closed','','image','','','2025-08-05 17:34:19','2025-08-05 17:34:19','',48,'http://cheap-medscards.local/wp-content/uploads/2025/08/image.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (62,1,'2025-08-05 17:35:50','2025-08-05 17:35:50','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-05 17:35:50','2025-08-05 17:35:50','',48,'http://cheap-medscards.local/?p=62',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2025-08-06 04:04:57','2025-08-06 04:04:57','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-06 04:04:57','2025-08-06 04:04:57','',48,'http://cheap-medscards.local/?p=63',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2025-08-06 05:07:02','2025-08-06 05:07:02','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-06 05:07:02','2025-08-06 05:07:02','',48,'http://cheap-medscards.local/?p=65',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2025-08-06 05:19:03','2025-08-06 05:19:03','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-06 05:19:03','2025-08-06 05:19:03','',48,'http://cheap-medscards.local/?p=66',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2025-08-06 05:19:54','2025-08-06 05:19:54','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-06 05:19:54','2025-08-06 05:19:54','',48,'http://cheap-medscards.local/?p=67',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2025-08-06 05:20:03','2025-08-06 05:20:03','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-06 05:20:03','2025-08-06 05:20:03','',48,'http://cheap-medscards.local/?p=68',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2025-08-06 06:13:05','2025-08-06 06:13:05','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-06 06:13:05','2025-08-06 06:13:05','',48,'http://cheap-medscards.local/?p=70',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2025-08-06 06:14:24','2025-08-06 06:14:24','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-06 06:14:24','2025-08-06 06:14:24','',48,'http://cheap-medscards.local/?p=71',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2025-08-06 06:23:13','2025-08-06 06:23:13','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-06 06:23:13','2025-08-06 06:23:13','',48,'http://cheap-medscards.local/?p=72',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2025-08-06 06:27:48','2025-08-06 06:27:48','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-06 06:27:48','2025-08-06 06:27:48','',48,'http://cheap-medscards.local/?p=73',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2025-08-06 06:47:43','2025-08-06 06:47:43','','ChatGPT Image Apr 12, 2025, 07_12_40 PM','','inherit','open','closed','','chatgpt-image-apr-12-2025-07_12_40-pm','','','2025-08-06 06:47:43','2025-08-06 06:47:43','',48,'http://cheap-medscards.local/wp-content/uploads/2025/08/ChatGPT-Image-Apr-12-2025-07_12_40-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (76,1,'2025-08-06 06:47:56','2025-08-06 06:47:56','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-06 06:47:56','2025-08-06 06:47:56','',48,'http://cheap-medscards.local/?p=76',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2025-08-07 08:39:06','2025-08-07 08:39:06','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"dispensary\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Dispensary Available Times','dispensary-available-times','publish','closed','closed','','group_68945bf450da0','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',0,'http://cheap-medscards.local/?p=77',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2025-08-07 08:39:06','2025-08-07 08:39:06','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"g:i a\";s:13:\"return_format\";s:5:\"g:i a\";s:17:\"allow_in_bindings\";i:0;}','Open Time','open_time','publish','closed','closed','','field_68945bf58433c','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',77,'http://cheap-medscards.local/?post_type=acf-field&p=78',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2025-08-07 08:39:06','2025-08-07 08:39:06','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"g:i a\";s:13:\"return_format\";s:5:\"g:i a\";s:17:\"allow_in_bindings\";i:0;}','Close Time','close_time','publish','closed','closed','','field_68945c1b8433d','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',77,'http://cheap-medscards.local/?post_type=acf-field&p=79',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2025-08-07 08:39:06','2025-08-07 08:39:06','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}','About Content Image','about_content_image','publish','closed','closed','','field_6892fb5a5ee57','','','2025-08-07 08:39:06','2025-08-07 08:39:06','',30,'http://cheap-medscards.local/?post_type=acf-field&p=80',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2025-08-07 08:41:39','2025-08-07 08:41:39','[dispensary_filter]','Dispensaries','','publish','closed','closed','','dispensaries','','','2025-08-07 09:03:55','2025-08-07 09:03:55','',0,'http://cheap-medscards.local/?page_id=81',0,'page','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2025-08-07 08:41:39','2025-08-07 08:41:39','','Dispensaries','','inherit','closed','closed','','81-revision-v1','','','2025-08-07 08:41:39','2025-08-07 08:41:39','',81,'http://cheap-medscards.local/?p=82',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2025-08-07 08:43:24','2025-08-07 08:43:24','','Default Kit','','publish','closed','closed','','default-kit','','','2025-08-07 08:43:24','2025-08-07 08:43:24','',0,'http://cheap-medscards.local/?p=83',0,'elementor_library','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2025-08-07 08:50:37','2025-08-07 08:50:37','<!-- wp:paragraph -->\n<p>ashdfjklhasjkfgjklasgjklhdfsag</p>\n<!-- /wp:paragraph -->','Dispensaries','','inherit','closed','closed','','81-revision-v1','','','2025-08-07 08:50:37','2025-08-07 08:50:37','',81,'http://cheap-medscards.local/?p=84',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2025-08-07 08:51:27','2025-08-07 08:51:27','<!-- wp:paragraph -->\n<p>ashdfjklhasjkfgjklasgjklhdfsag</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[dispensary_filter]\n<!-- /wp:shortcode -->','Dispensaries','','inherit','closed','closed','','81-revision-v1','','','2025-08-07 08:51:27','2025-08-07 08:51:27','',81,'http://cheap-medscards.local/?p=85',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2025-08-07 08:52:30','2025-08-07 08:52:30','<!-- wp:paragraph -->\n<p>ashdfjklhasjkfgjklasgjklhdfsag</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[dispensary_filter]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Dispensaries','','inherit','closed','closed','','81-revision-v1','','','2025-08-07 08:52:30','2025-08-07 08:52:30','',81,'http://cheap-medscards.local/?p=87',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2025-08-07 09:01:07','2025-08-07 09:01:07','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Dispensaries','','inherit','closed','closed','','81-revision-v1','','','2025-08-07 09:01:07','2025-08-07 09:01:07','',81,'http://cheap-medscards.local/?p=88',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2025-08-07 09:03:55','2025-08-07 09:03:55','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Dispensaries','','inherit','closed','closed','','81-revision-v1','','','2025-08-07 09:03:55','2025-08-07 09:03:55','',81,'http://cheap-medscards.local/?p=89',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2025-08-07 09:03:55','2025-08-07 09:03:55','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Dispensaries','','inherit','closed','closed','','81-revision-v1','','','2025-08-07 09:03:55','2025-08-07 09:03:55','',81,'http://cheap-medscards.local/?p=90',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2025-08-07 09:03:55','2025-08-07 09:03:55','[dispensary_filter]','Dispensaries','','inherit','closed','closed','','81-revision-v1','','','2025-08-07 09:03:55','2025-08-07 09:03:55','',81,'http://cheap-medscards.local/?p=91',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2025-08-07 09:13:37','2025-08-07 09:13:37','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-07 09:13:37','2025-08-07 09:13:37','',48,'http://cheap-medscards.local/?p=92',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2025-08-07 10:35:39','2025-08-07 10:35:39','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-07 10:35:39','2025-08-07 10:35:39','',48,'http://cheap-medscards.local/?p=93',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2025-08-07 10:36:28','2025-08-07 10:36:28','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-07 10:36:28','2025-08-07 10:36:28','',48,'http://cheap-medscards.local/?p=94',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2025-08-07 10:36:59','2025-08-07 10:36:59','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-07 10:36:59','2025-08-07 10:36:59','',48,'http://cheap-medscards.local/?p=95',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2025-08-07 11:51:03','2025-08-07 11:51:03','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-07 11:51:03','2025-08-07 11:51:03','',48,'http://cheap-medscards.local/?p=96',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2025-08-11 09:07:43','2025-08-11 09:07:43','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"dispensary\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Dispensaries Categories','dispensaries-categories','publish','closed','closed','','group_6899b1f09c84b','','','2025-08-11 12:18:15','2025-08-11 12:18:15','',0,'http://cheap-medscards.local/?post_type=acf-field-group&#038;p=97',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2025-08-11 09:07:43','2025-08-11 09:07:43','a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:8:\"operator\";s:0:\"\";s:5:\"value\";s:0:\"\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:10:\"Dispensary\";s:10:\"Dispensary\";s:5:\"Brand\";s:5:\"Brand\";s:7:\"Clinics\";s:7:\"Clinics\";}s:13:\"default_value\";a:3:{i:0;s:10:\"dispensary\";i:1;s:5:\"brand\";i:2;s:7:\"clinics\";}s:13:\"return_format\";s:5:\"value\";s:12:\"allow_custom\";i:0;s:17:\"allow_in_bindings\";i:0;s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:11:\"save_custom\";i:0;s:25:\"custom_choice_button_text\";s:14:\"Add new choice\";}','Categories','categories','publish','closed','closed','','field_6899b1f273661','','','2025-08-11 12:12:01','2025-08-11 12:12:01','',97,'http://cheap-medscards.local/?post_type=acf-field&#038;p=98',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2025-08-11 09:08:04','2025-08-11 09:08:04','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-11 09:08:04','2025-08-11 09:08:04','',48,'http://cheap-medscards.local/?p=99',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2025-08-11 10:12:06','2025-08-11 10:12:06','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-11 10:12:06','2025-08-11 10:12:06','',48,'http://cheap-medscards.local/?p=100',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2025-08-11 10:35:32','2025-08-11 10:35:32','<!-- wp:paragraph -->\n<p>Trulieve Philadelphia dispensary provides exceptional medical cannabis products to qualified patients in our service area.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>With over 180 dispensaries nationwide, Trulieve is one of the foremost medical cannabis dispensaries in the country. We value our patients. And our experienced cannabists provide high-quality medical cannabis, thoughtful service, and expertise you can trust.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our plants are hand-grown in a facility with a controlled environment designed to lessen unwanted chemicals and pests, keeping the process as natural as possible from seed to sprout to dispensary.</p>\n<!-- /wp:paragraph -->','Trulieve – Philadelphia, PA','','publish','closed','closed','','trulieve-philadelphia-pa','','','2025-08-11 10:36:27','2025-08-11 10:36:27','',0,'http://cheap-medscards.local/?post_type=dispensary&#038;p=101',0,'dispensary','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2025-08-11 10:34:27','2025-08-11 10:34:27','','smartphone','','inherit','open','closed','','smartphone','','','2025-08-11 10:34:27','2025-08-11 10:34:27','',101,'http://cheap-medscards.local/wp-content/uploads/2025/08/smartphone.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (103,1,'2025-08-11 10:35:32','2025-08-11 10:35:32','<!-- wp:paragraph -->\n<p>Trulieve Philadelphia dispensary provides exceptional medical cannabis products to qualified patients in our service area.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>With over 180 dispensaries nationwide, Trulieve is one of the foremost medical cannabis dispensaries in the country. We value our patients. And our experienced cannabists provide high-quality medical cannabis, thoughtful service, and expertise you can trust.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our plants are hand-grown in a facility with a controlled environment designed to lessen unwanted chemicals and pests, keeping the process as natural as possible from seed to sprout to dispensary.</p>\n<!-- /wp:paragraph -->','Trulieve – Philadelphia, PA','','inherit','closed','closed','','101-revision-v1','','','2025-08-11 10:35:32','2025-08-11 10:35:32','',101,'http://cheap-medscards.local/?p=103',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2025-08-11 10:36:23','2025-08-11 10:36:23','','logo_site','','inherit','open','closed','','logo_site','','','2025-08-11 10:36:23','2025-08-11 10:36:23','',101,'http://cheap-medscards.local/wp-content/uploads/2025/08/logo_site.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (105,1,'2025-08-11 12:13:24','2025-08-11 12:13:24','<!-- wp:paragraph -->\n<p><strong>Ritual is a safe and friendly Medical/Adult-use Cannabis dispensary serving the greater Pasadena/Glen Burnie area.&nbsp;</strong>&nbsp;We strive to elevate the patient/consumer experience by offering best-in-class Cannabis products coupled with customer service that is second to none. We partner with the State’s best cultivators and processors to provide patients with access to a wide range of Cannabis products at an incredible value.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and knowledgeable staff make it their priority to make everyone visiting Ritual feel welcome and at home as they assist with the selection of products that best suit your individual needs.&nbsp; We look forward to being a part of your Cannabis Ritual!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>STANDING DISCOUNTS (Not stackable with other discounts):</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>20% Off For Medical Patients on non-sale items</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wisdom Wednesdays: 15% Off For Medical Seniors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Veterans: 22% Off For Medical Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adult-use: 10% off for Seniors and Veterans</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ree-fer A Friend: Bring a friend with you to Ritual and you both will receive 20% off your purchase (regularly priced items only). The friend must be an MMCC-certified patient and new to Ritual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>LOYALTY PROGRAM:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every time you make a purchase with us, you accrue loyalty points. Every dollar spent equals one point accrued. 100 Points = $5 store credit* and 500 Points = $30 store credit*</p>\n<!-- /wp:paragraph -->','Ritual Dispensary – Curtis Bay, MD','','inherit','closed','closed','','48-revision-v1','','','2025-08-11 12:13:24','2025-08-11 12:13:24','',48,'http://cheap-medscards.local/?p=105',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2025-08-12 09:19:34','2025-08-12 09:19:34','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:7:\"45.2538\";s:10:\"center_lng\";s:7:\"69.4455\";s:4:\"zoom\";i:14;s:6:\"height\";i:400;s:17:\"allow_in_bindings\";i:0;}','Location','location','publish','closed','closed','','field_689b05fc79eef','','','2025-08-12 09:20:57','2025-08-12 09:20:57','',35,'http://cheap-medscards.local/?post_type=acf-field&#038;p=106',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2025-08-12 09:20:48','2025-08-12 09:20:48','<!-- wp:paragraph -->\n<p>Trulieve Philadelphia dispensary provides exceptional medical cannabis products to qualified patients in our service area.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>With over 180 dispensaries nationwide, Trulieve is one of the foremost medical cannabis dispensaries in the country. We value our patients. And our experienced cannabists provide high-quality medical cannabis, thoughtful service, and expertise you can trust.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our plants are hand-grown in a facility with a controlled environment designed to lessen unwanted chemicals and pests, keeping the process as natural as possible from seed to sprout to dispensary.</p>\n<!-- /wp:paragraph -->','Trulieve – Philadelphia, PA','','inherit','closed','closed','','101-autosave-v1','','','2025-08-12 09:20:48','2025-08-12 09:20:48','',101,'http://cheap-medscards.local/?p=107',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (11,1,0);
INSERT INTO `wp_term_relationships` VALUES (26,1,0);
INSERT INTO `wp_term_relationships` VALUES (30,1,0);
INSERT INTO `wp_term_relationships` VALUES (35,1,0);
INSERT INTO `wp_term_relationships` VALUES (41,1,0);
INSERT INTO `wp_term_relationships` VALUES (49,2,0);
INSERT INTO `wp_term_relationships` VALUES (51,3,0);
INSERT INTO `wp_term_relationships` VALUES (77,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'dispensary-category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'dispensary-category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'dispensary-category','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'twentytwentyfive','twentytwentyfive',0);
INSERT INTO `wp_terms` VALUES (3,'hello-elementor-child','hello-elementor-child',0);
INSERT INTO `wp_terms` VALUES (4,'Dispensaries','dispensaries',0);
INSERT INTO `wp_terms` VALUES (5,'Brand','brand',0);
INSERT INTO `wp_terms` VALUES (6,'Clinics','clinics',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','cheap');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"a354e6f327a030aa15400f1f57ceaf9f0e06d028b7804c366bd7f5dc4dbb5bc3\";a:4:{s:10:\"expiration\";i:1754564980;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36\";s:5:\"login\";i:1754392180;}s:64:\"d4e8eb80ebaa91c2bf03c3c0e53e3cf1e6314e459be3b38e64f7873a68b88163\";a:4:{s:10:\"expiration\";i:1755601784;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36\";s:5:\"login\";i:1754392184;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','5');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:3:{s:4:\"core\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:14:\"renderingModes\";a:1:{s:16:\"twentytwentyfive\";a:1:{s:10:\"dispensary\";s:9:\"post-only\";}}s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:34:\"taxonomy-panel-dispensary-category\";}}s:14:\"core/edit-post\";a:3:{s:12:\"welcomeGuide\";b:0;s:20:\"welcomeGuideTemplate\";b:0;s:23:\"metaBoxesMainOpenHeight\";i:704;}s:9:\"_modified\";s:24:\"2025-08-12T10:26:48.979Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'closedpostboxes_dispensary','a:1:{i:0;s:23:\"acf-group_6899b1f09c84b\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_dispensary','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (21,1,'meta-box-order_dispensary','a:4:{s:6:\"normal\";s:143:\"acf-group_68945bf450da0,acf-group_6891898b53c9c,acf-group_6899b1f09c84b,acf-group_689095d106583,acf-group_689098e41853e,acf-group_6890991def4b3\";s:8:\"advanced\";s:0:\"\";s:4:\"side\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings','libraryContent=browse&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings-time','1754557318');
INSERT INTO `wp_usermeta` VALUES (24,1,'_hello_elementor_install_notice','1');
INSERT INTO `wp_usermeta` VALUES (25,1,'manageedit-acf-post-typecolumnshidden','a:1:{i:0;s:7:\"acf-key\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'acf_user_settings','a:1:{s:19:\"post-type-first-run\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (27,1,'elementor_introduction','a:1:{s:27:\"ai-get-started-announcement\";b:1;}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'cheap','$wp$2y$10$IoIiDYH6Jbs3i19MOEk.V.hxcZ/waABQXCJ0Q20NsWfZT2ICmxV6m','cheap','dev-email@wpengine.local','http://cheap-medscards.local','2025-08-05 11:07:19','',0,'cheap');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-12 16:57:50
