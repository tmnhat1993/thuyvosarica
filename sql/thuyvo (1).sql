-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2018 at 08:08 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thuyvo`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-17 12:24:36', '2018-07-17 12:24:36', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/thuyvo', 'yes'),
(2, 'home', 'http://localhost/thuyvo', 'yes'),
(3, 'blogname', 'The Sarica Shop', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tmnhat1993@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:133:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:8:\"watch/?$\";s:25:\"index.php?post_type=watch\";s:38:\"watch/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=watch&feed=$matches[1]\";s:33:\"watch/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=watch&feed=$matches[1]\";s:25:\"watch/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=watch&paged=$matches[1]\";s:8:\"glass/?$\";s:25:\"index.php?post_type=glass\";s:38:\"glass/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=glass&feed=$matches[1]\";s:33:\"glass/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=glass&feed=$matches[1]\";s:25:\"glass/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=glass&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"watch/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"watch/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"watch/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"watch/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"watch/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"watch/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"watch/([^/]+)/embed/?$\";s:38:\"index.php?watch=$matches[1]&embed=true\";s:26:\"watch/([^/]+)/trackback/?$\";s:32:\"index.php?watch=$matches[1]&tb=1\";s:46:\"watch/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?watch=$matches[1]&feed=$matches[2]\";s:41:\"watch/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?watch=$matches[1]&feed=$matches[2]\";s:34:\"watch/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?watch=$matches[1]&paged=$matches[2]\";s:41:\"watch/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?watch=$matches[1]&cpage=$matches[2]\";s:30:\"watch/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?watch=$matches[1]&page=$matches[2]\";s:22:\"watch/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"watch/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"watch/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"watch/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"watch/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"watch/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"glass/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"glass/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"glass/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"glass/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"glass/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"glass/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"glass/([^/]+)/embed/?$\";s:38:\"index.php?glass=$matches[1]&embed=true\";s:26:\"glass/([^/]+)/trackback/?$\";s:32:\"index.php?glass=$matches[1]&tb=1\";s:46:\"glass/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?glass=$matches[1]&feed=$matches[2]\";s:41:\"glass/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?glass=$matches[1]&feed=$matches[2]\";s:34:\"glass/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?glass=$matches[1]&paged=$matches[2]\";s:41:\"glass/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?glass=$matches[1]&cpage=$matches[2]\";s:30:\"glass/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?glass=$matches[1]&page=$matches[2]\";s:22:\"glass/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"glass/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"glass/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"glass/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"glass/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"glass/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=30&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:39:\"manual-image-crop/manual-image-crop.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'the-sarica-theme', 'yes'),
(41, 'stylesheet', 'the-sarica-theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '38', 'yes'),
(84, 'page_on_front', '30', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1532328096;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1532348693;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1532348724;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1532348768;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.7-partial-6.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.7\";s:7:\"version\";s:5:\"4.9.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.6\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.7-partial-6.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.7-rollback-6.zip\";}s:7:\"current\";s:5:\"4.9.7\";s:7:\"version\";s:5:\"4.9.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.6\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1532312416;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(117, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1532312642;s:7:\"checked\";a:1:{s:16:\"the-sarica-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(118, '_site_transient_timeout_browser_f9d97daae4bfc87faa966e34c03c6f54', '1532435107', 'no'),
(119, '_site_transient_browser_f9d97daae4bfc87faa966e34c03c6f54', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.99\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(121, 'can_compress_scripts', '1', 'no'),
(136, 'recently_activated', 'a:0:{}', 'yes'),
(138, 'acf_version', '4.4.12', 'yes'),
(139, 'mic_make2x', 'true', 'yes'),
(140, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531830340;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(141, 'current_theme', 'The Sarica Shop', 'yes'),
(142, 'theme_mods_the-sarica-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(150, 'ai1wm_secret_key', 'vaJpcbOKYHg0', 'yes'),
(151, 'ai1wm_status', 'a:3:{s:4:\"type\";s:5:\"error\";s:5:\"title\";s:16:\"Unable to export\";s:7:\"message\";s:132:\"Unable to open /Applications/XAMPP/xamppfiles/htdocs/thuyvo/wp-content/plugins/all-in-one-wp-migration/storage/error.log with mode a\";}', 'yes'),
(154, 'ai1wm_updater', 'a:0:{}', 'yes'),
(158, '_site_transient_timeout_browser_9aac439d521303fb976b379ca55697eb', '1532617520', 'no'),
(159, '_site_transient_browser_9aac439d521303fb976b379ca55697eb', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.99\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(209, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1532312637;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.72\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.72.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1268186\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=1268186\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1876524\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=1876524\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(263, '_site_transient_timeout_theme_roots', '1532314441', 'no'),
(264, '_site_transient_theme_roots', 'a:2:{s:12:\"node_modules\";s:7:\"/themes\";s:16:\"the-sarica-theme\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1531838753:1'),
(5, 6, '_edit_last', '1'),
(6, 6, 'field_5b4de0e6348c1', 'a:15:{s:3:\"key\";s:19:\"field_5b4de0e6348c1\";s:5:\"label\";s:23:\"Giá của sản phẩm\";s:4:\"name\";s:13:\"product_price\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:55:\"Nhập số tương ứng với giá của sản phẩm\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:1:\"0\";s:11:\"placeholder\";s:22:\"Giá bán sản phẩm\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:4:\"VNĐ\";s:3:\"min\";s:1:\"0\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:5:\"10000\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b4de1e5348c3\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"white\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(7, 6, 'field_5b4de16b348c2', 'a:15:{s:3:\"key\";s:19:\"field_5b4de16b348c2\";s:5:\"label\";s:27:\"Khuyến mãi - giảm giá\";s:4:\"name\";s:12:\"product_sale\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:162:\"Discount sẽ hiển thị trên trang sản phẩm sau khi trừ giá gốc. Nhập vào số phần trăm giảm giá, hệ thống sẽ tự tính giá tiền.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:1:\"0\";s:11:\"placeholder\";s:1:\"0\";s:7:\"prepend\";s:13:\"Giảm giá :\";s:6:\"append\";s:1:\"%\";s:3:\"min\";s:1:\"0\";s:3:\"max\";s:2:\"95\";s:4:\"step\";s:1:\"1\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b4de1e5348c3\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"white\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(8, 6, 'field_5b4de1e5348c3', 'a:11:{s:3:\"key\";s:19:\"field_5b4de1e5348c3\";s:5:\"label\";s:10:\"Màu sắc\";s:4:\"name\";s:13:\"product_color\";s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:23:\"Màu sắc sản phẩm\";s:8:\"required\";s:1:\"0\";s:7:\"choices\";a:8:{s:5:\"white\";s:7:\"Trắng\";s:3:\"red\";s:5:\"Đỏ\";s:5:\"green\";s:8:\"Xanh lá\";s:4:\"blue\";s:12:\"Xanh dương\";s:6:\"yellow\";s:5:\"Vàng\";s:6:\"purple\";s:4:\"Tím\";s:5:\"black\";s:4:\"Đen\";s:6:\"orange\";s:3:\"Cam\";}s:13:\"default_value\";s:5:\"white\";s:6:\"layout\";s:8:\"vertical\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(9, 6, 'field_5b4de327348c4', 'a:15:{s:3:\"key\";s:19:\"field_5b4de327348c4\";s:5:\"label\";s:24:\"Số lượng còn lại\";s:4:\"name\";s:16:\"product_quantity\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:76:\"Số lượng sản phẩm sẽ không hiển thị trên trang sản phẩm\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:4:\"Cái\";s:3:\"min\";s:1:\"0\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:1:\"1\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b4de1e5348c3\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"white\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(10, 6, 'field_5b4de3ab348c5', 'a:11:{s:3:\"key\";s:19:\"field_5b4de3ab348c5\";s:5:\"label\";s:26:\"Hình ảnh sản phẩm 1\";s:4:\"name\";s:15:\"product_image_1\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:101:\"Nếu không có hình ảnh nào được upload, hệ thống sẽ sử dụng hình mặc định.\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b4de1e5348c3\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"white\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(11, 6, 'field_5b4de3ff348c6', 'a:11:{s:3:\"key\";s:19:\"field_5b4de3ff348c6\";s:5:\"label\";s:26:\"Hình ảnh sản phẩm 2\";s:4:\"name\";s:15:\"product_image_2\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b4de1e5348c3\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"white\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(12, 6, 'field_5b4de468348c7', 'a:11:{s:3:\"key\";s:19:\"field_5b4de468348c7\";s:5:\"label\";s:26:\"Hình ảnh sản phẩm 3\";s:4:\"name\";s:15:\"product_image_3\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:26:\"Hình ảnh sản phẩm 3\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b4de1e5348c3\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"white\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(13, 6, 'field_5b4de49a348c8', 'a:11:{s:3:\"key\";s:19:\"field_5b4de49a348c8\";s:5:\"label\";s:26:\"Hình ảnh sản phẩm 4\";s:4:\"name\";s:15:\"product_image_4\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b4de1e5348c3\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"white\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(16, 6, 'position', 'side'),
(17, 6, 'layout', 'default'),
(18, 6, 'hide_on_screen', ''),
(19, 6, '_edit_lock', '1532017092:1'),
(20, 7, '_wp_attached_file', '2018/07/IMG_8358.jpg'),
(21, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2018/07/IMG_8358.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8358-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8358-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8358-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(22, 8, '_wp_attached_file', '2018/07/IMG_6955.jpg'),
(23, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:683;s:6:\"height\";i:447;s:4:\"file\";s:20:\"2018/07/IMG_6955.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_6955-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_6955-300x196.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:196;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(24, 9, '_wp_attached_file', '2018/07/IMG_8339.jpg'),
(25, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:742;s:6:\"height\";i:742;s:4:\"file\";s:20:\"2018/07/IMG_8339.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8339-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8339-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(26, 10, '_wp_attached_file', '2018/07/IMG_8347.jpg'),
(27, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:960;s:4:\"file\";s:20:\"2018/07/IMG_8347.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8347-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8347-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8347-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(28, 11, '_wp_attached_file', '2018/07/IMG_8348.jpg'),
(29, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:959;s:6:\"height\";i:959;s:4:\"file\";s:20:\"2018/07/IMG_8348.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8348-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8348-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8348-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(30, 12, '_wp_attached_file', '2018/07/IMG_8349.jpg'),
(31, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:960;s:4:\"file\";s:20:\"2018/07/IMG_8349.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8349-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8349-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8349-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(32, 13, '_wp_attached_file', '2018/07/IMG_8350.jpg'),
(33, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:959;s:6:\"height\";i:959;s:4:\"file\";s:20:\"2018/07/IMG_8350.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8350-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8350-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8350-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(34, 14, '_wp_attached_file', '2018/07/IMG_8351.jpg'),
(35, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:720;s:4:\"file\";s:20:\"2018/07/IMG_8351.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8351-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8351-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(36, 15, '_wp_attached_file', '2018/07/IMG_8352.jpg'),
(37, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:720;s:4:\"file\";s:20:\"2018/07/IMG_8352.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8352-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8352-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(38, 16, '_wp_attached_file', '2018/07/IMG_6435.jpg'),
(39, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1136;s:6:\"height\";i:1136;s:4:\"file\";s:20:\"2018/07/IMG_6435.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_6435-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_6435-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_6435-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"IMG_6435-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(40, 17, '_wp_attached_file', '2018/07/IMG_6941.jpg'),
(41, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:750;s:4:\"file\";s:20:\"2018/07/IMG_6941.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_6941-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_6941-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(42, 18, '_wp_attached_file', '2018/07/IMG_6956.jpg'),
(43, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:690;s:6:\"height\";i:433;s:4:\"file\";s:20:\"2018/07/IMG_6956.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_6956-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_6956-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(44, 19, '_wp_attached_file', '2018/07/IMG_6957.jpg'),
(45, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:662;s:6:\"height\";i:444;s:4:\"file\";s:20:\"2018/07/IMG_6957.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_6957-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_6957-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(46, 20, '_wp_attached_file', '2018/07/IMG_6965.jpg'),
(47, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:420;s:4:\"file\";s:20:\"2018/07/IMG_6965.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_6965-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_6965-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(48, 21, '_wp_attached_file', '2018/07/IMG_6966.jpg'),
(49, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:402;s:4:\"file\";s:20:\"2018/07/IMG_6966.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_6966-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_6966-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(50, 22, '_wp_attached_file', '2018/07/IMG_6967.jpg'),
(51, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:430;s:4:\"file\";s:20:\"2018/07/IMG_6967.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_6967-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_6967-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(52, 5, 'product_price', '320000'),
(53, 5, '_product_price', 'field_5b4de0e6348c1'),
(54, 5, 'product_discount', '10'),
(55, 5, '_product_discount', 'field_5b4de16b348c2'),
(56, 5, 'product_color', 'a:5:{i:0;s:5:\"white\";i:1;s:3:\"red\";i:2;s:5:\"green\";i:3;s:4:\"blue\";i:4;s:6:\"yellow\";}'),
(57, 5, '_product_color', 'field_5b4de1e5348c3'),
(58, 5, 'product_quantity', '1'),
(59, 5, '_product_quantity', 'field_5b4de327348c4'),
(60, 5, 'product_image_1', '21'),
(61, 5, '_product_image_1', 'field_5b4de3ab348c5'),
(62, 5, 'product_image_2', '22'),
(63, 5, '_product_image_2', 'field_5b4de3ff348c6'),
(64, 5, 'product_image_3', '18'),
(65, 5, '_product_image_3', 'field_5b4de468348c7'),
(66, 5, 'product_image_4', '19'),
(67, 5, '_product_image_4', 'field_5b4de49a348c8'),
(70, 5, 'product_sale', '10'),
(71, 5, '_product_sale', 'field_5b4de16b348c2'),
(76, 6, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"watch\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(77, 6, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"glass\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:1;}'),
(78, 23, '_edit_last', '1'),
(79, 23, 'field_5b4decd53a3f9', 'a:15:{s:3:\"key\";s:19:\"field_5b4decd53a3f9\";s:5:\"label\";s:23:\"Thời gian bảo hành\";s:4:\"name\";s:16:\"product_maintain\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:23:\"Số tháng bảo hành\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:1:\"0\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:1:\"0\";s:3:\"max\";s:2:\"48\";s:4:\"step\";s:1:\"1\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(80, 23, 'field_5b4ded693a3fa', 'a:14:{s:3:\"key\";s:19:\"field_5b4ded693a3fa\";s:5:\"label\";s:23:\"Đặc tính đi kèm 1\";s:4:\"name\";s:15:\"product_extra_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:115:\"Đặc tính đi kèm theo sản phẩm (chất liệu, hãng sản xuất ...) - ngắn gọn, dưới 45 ký tự\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:25:\"Đặc tính sản phẩm\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:2:\"40\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(81, 23, 'field_5b4dedf63a3fb', 'a:14:{s:3:\"key\";s:19:\"field_5b4dedf63a3fb\";s:5:\"label\";s:23:\"Đặc tính đi kèm 2\";s:4:\"name\";s:15:\"product_extra_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:115:\"Đặc tính đi kèm theo sản phẩm (chất liệu, hãng sản xuất ...) - ngắn gọn, dưới 45 ký tự\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:25:\"Đặc tính sản phẩm\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:2:\"40\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(82, 23, 'field_5b4dee033a3fc', 'a:14:{s:3:\"key\";s:19:\"field_5b4dee033a3fc\";s:5:\"label\";s:23:\"Đặc tính đi kèm 3\";s:4:\"name\";s:15:\"product_extra_3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:115:\"Đặc tính đi kèm theo sản phẩm (chất liệu, hãng sản xuất ...) - ngắn gọn, dưới 45 ký tự\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:25:\"Đặc tính sản phẩm\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:2:\"40\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(83, 23, 'field_5b4dee373a3fe', 'a:14:{s:3:\"key\";s:19:\"field_5b4dee373a3fe\";s:5:\"label\";s:23:\"Đặc tính đi kèm 4\";s:4:\"name\";s:15:\"product_extra_4\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:115:\"Đặc tính đi kèm theo sản phẩm (chất liệu, hãng sản xuất ...) - ngắn gọn, dưới 45 ký tự\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:25:\"Đặc tính sản phẩm\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:2:\"40\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(84, 23, 'field_5b4dee453a3ff', 'a:14:{s:3:\"key\";s:19:\"field_5b4dee453a3ff\";s:5:\"label\";s:23:\"Đặc tính đi kèm 5\";s:4:\"name\";s:15:\"product_extra_5\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:115:\"Đặc tính đi kèm theo sản phẩm (chất liệu, hãng sản xuất ...) - ngắn gọn, dưới 45 ký tự\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:25:\"Đặc tính sản phẩm\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:2:\"40\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(85, 23, 'field_5b4dee513a400', 'a:14:{s:3:\"key\";s:19:\"field_5b4dee513a400\";s:5:\"label\";s:23:\"Đặc tính đi kèm 6\";s:4:\"name\";s:15:\"product_extra_6\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:115:\"Đặc tính đi kèm theo sản phẩm (chất liệu, hãng sản xuất ...) - ngắn gọn, dưới 45 ký tự\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:25:\"Đặc tính sản phẩm\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:2:\"40\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(88, 23, 'position', 'normal'),
(89, 23, 'layout', 'default'),
(90, 23, 'hide_on_screen', ''),
(91, 23, '_edit_lock', '1532016303:1'),
(92, 5, 'product_maintain', '6'),
(93, 5, '_product_maintain', 'field_5b4decd53a3f9'),
(94, 5, 'product_extra_1', 'Mặt kính saphire'),
(95, 5, '_product_extra_1', 'field_5b4dedf63a3fb'),
(96, 5, 'product_extra_3', 'Chống nước quân đội'),
(97, 5, '_product_extra_3', 'field_5b4dee033a3fc'),
(98, 5, 'product_extra_4', ''),
(99, 5, '_product_extra_4', 'field_5b4dee373a3fe'),
(100, 5, 'product_extra_5', ''),
(101, 5, '_product_extra_5', 'field_5b4dee453a3ff'),
(102, 5, 'product_extra_6', ''),
(103, 5, '_product_extra_6', 'field_5b4dee513a400'),
(104, 24, '_edit_last', '1'),
(105, 24, '_edit_lock', '1531835454:1'),
(106, 24, 'product_price', '220000'),
(107, 24, '_product_price', 'field_5b4de0e6348c1'),
(108, 24, 'product_sale', '0'),
(109, 24, '_product_sale', 'field_5b4de16b348c2'),
(110, 24, 'product_color', 'a:3:{i:0;s:5:\"white\";i:1;s:3:\"red\";i:2;s:5:\"green\";}'),
(111, 24, '_product_color', 'field_5b4de1e5348c3'),
(112, 24, 'product_quantity', '10'),
(113, 24, '_product_quantity', 'field_5b4de327348c4'),
(114, 24, 'product_image_1', '16'),
(115, 24, '_product_image_1', 'field_5b4de3ab348c5'),
(116, 24, 'product_image_2', ''),
(117, 24, '_product_image_2', 'field_5b4de3ff348c6'),
(118, 24, 'product_image_3', ''),
(119, 24, '_product_image_3', 'field_5b4de468348c7'),
(120, 24, 'product_image_4', ''),
(121, 24, '_product_image_4', 'field_5b4de49a348c8'),
(122, 24, 'product_maintain', '36'),
(123, 24, '_product_maintain', 'field_5b4decd53a3f9'),
(124, 24, 'product_extra_1', 'Mặt kính saphire'),
(125, 24, '_product_extra_1', 'field_5b4dedf63a3fb'),
(126, 24, 'product_extra_3', ''),
(127, 24, '_product_extra_3', 'field_5b4dee033a3fc'),
(128, 24, 'product_extra_4', ''),
(129, 24, '_product_extra_4', 'field_5b4dee373a3fe'),
(130, 24, 'product_extra_5', ''),
(131, 24, '_product_extra_5', 'field_5b4dee453a3ff'),
(132, 24, 'product_extra_6', ''),
(133, 24, '_product_extra_6', 'field_5b4dee513a400'),
(134, 25, '_edit_last', '1'),
(135, 25, '_edit_lock', '1531835546:1'),
(136, 25, 'product_price', '550000'),
(137, 25, '_product_price', 'field_5b4de0e6348c1'),
(138, 25, 'product_sale', '12'),
(139, 25, '_product_sale', 'field_5b4de16b348c2'),
(140, 25, 'product_color', 'a:5:{i:0;s:5:\"white\";i:1;s:6:\"yellow\";i:2;s:6:\"purple\";i:3;s:5:\"black\";i:4;s:6:\"orange\";}'),
(141, 25, '_product_color', 'field_5b4de1e5348c3'),
(142, 25, 'product_quantity', '1'),
(143, 25, '_product_quantity', 'field_5b4de327348c4'),
(144, 25, 'product_image_1', ''),
(145, 25, '_product_image_1', 'field_5b4de3ab348c5'),
(146, 25, 'product_image_2', ''),
(147, 25, '_product_image_2', 'field_5b4de3ff348c6'),
(148, 25, 'product_image_3', ''),
(149, 25, '_product_image_3', 'field_5b4de468348c7'),
(150, 25, 'product_image_4', ''),
(151, 25, '_product_image_4', 'field_5b4de49a348c8'),
(152, 25, 'product_maintain', '12'),
(153, 25, '_product_maintain', 'field_5b4decd53a3f9'),
(154, 25, 'product_extra_1', 'Dây da'),
(155, 25, '_product_extra_1', 'field_5b4dedf63a3fb'),
(156, 25, 'product_extra_3', 'Cao cấp'),
(157, 25, '_product_extra_3', 'field_5b4dee033a3fc'),
(158, 25, 'product_extra_4', ''),
(159, 25, '_product_extra_4', 'field_5b4dee373a3fe'),
(160, 25, 'product_extra_5', ''),
(161, 25, '_product_extra_5', 'field_5b4dee453a3ff'),
(162, 25, 'product_extra_6', ''),
(163, 25, '_product_extra_6', 'field_5b4dee513a400'),
(164, 26, '_edit_last', '1'),
(165, 26, '_edit_lock', '1531835635:1'),
(166, 26, 'product_price', '150000'),
(167, 26, '_product_price', 'field_5b4de0e6348c1'),
(168, 26, 'product_sale', '0'),
(169, 26, '_product_sale', 'field_5b4de16b348c2'),
(170, 26, 'product_color', 'a:3:{i:0;s:5:\"white\";i:1;s:3:\"red\";i:2;s:5:\"green\";}'),
(171, 26, '_product_color', 'field_5b4de1e5348c3'),
(172, 26, 'product_quantity', '1'),
(173, 26, '_product_quantity', 'field_5b4de327348c4'),
(174, 26, 'product_image_1', '17'),
(175, 26, '_product_image_1', 'field_5b4de3ab348c5'),
(176, 26, 'product_image_2', ''),
(177, 26, '_product_image_2', 'field_5b4de3ff348c6'),
(178, 26, 'product_image_3', ''),
(179, 26, '_product_image_3', 'field_5b4de468348c7'),
(180, 26, 'product_image_4', ''),
(181, 26, '_product_image_4', 'field_5b4de49a348c8'),
(182, 26, 'product_maintain', '6'),
(183, 26, '_product_maintain', 'field_5b4decd53a3f9'),
(184, 26, 'product_extra_1', ''),
(185, 26, '_product_extra_1', 'field_5b4dedf63a3fb'),
(186, 26, 'product_extra_3', ''),
(187, 26, '_product_extra_3', 'field_5b4dee033a3fc'),
(188, 26, 'product_extra_4', ''),
(189, 26, '_product_extra_4', 'field_5b4dee373a3fe'),
(190, 26, 'product_extra_5', ''),
(191, 26, '_product_extra_5', 'field_5b4dee453a3ff'),
(192, 26, 'product_extra_6', ''),
(193, 26, '_product_extra_6', 'field_5b4dee513a400'),
(194, 27, '_edit_last', '1'),
(195, 27, '_edit_lock', '1531835695:1'),
(196, 27, 'product_price', '160000'),
(197, 27, '_product_price', 'field_5b4de0e6348c1'),
(198, 27, 'product_sale', '10'),
(199, 27, '_product_sale', 'field_5b4de16b348c2'),
(200, 27, 'product_color', 'a:1:{i:0;s:5:\"white\";}'),
(201, 27, '_product_color', 'field_5b4de1e5348c3'),
(202, 27, 'product_quantity', '1'),
(203, 27, '_product_quantity', 'field_5b4de327348c4'),
(204, 27, 'product_image_1', '12'),
(205, 27, '_product_image_1', 'field_5b4de3ab348c5'),
(206, 27, 'product_image_2', '13'),
(207, 27, '_product_image_2', 'field_5b4de3ff348c6'),
(208, 27, 'product_image_3', '10'),
(209, 27, '_product_image_3', 'field_5b4de468348c7'),
(210, 27, 'product_image_4', ''),
(211, 27, '_product_image_4', 'field_5b4de49a348c8'),
(212, 27, 'product_maintain', '0'),
(213, 27, '_product_maintain', 'field_5b4decd53a3f9'),
(214, 27, 'product_extra_1', 'Chong loa'),
(215, 27, '_product_extra_1', 'field_5b4dedf63a3fb'),
(216, 27, 'product_extra_3', 'San Pham Thoi Trang'),
(217, 27, '_product_extra_3', 'field_5b4dee033a3fc'),
(218, 27, 'product_extra_4', ''),
(219, 27, '_product_extra_4', 'field_5b4dee373a3fe'),
(220, 27, 'product_extra_5', ''),
(221, 27, '_product_extra_5', 'field_5b4dee453a3ff'),
(222, 27, 'product_extra_6', ''),
(223, 27, '_product_extra_6', 'field_5b4dee513a400'),
(224, 28, '_edit_last', '1'),
(225, 28, '_edit_lock', '1531835758:1'),
(226, 28, 'product_price', '220000'),
(227, 28, '_product_price', 'field_5b4de0e6348c1'),
(228, 28, 'product_sale', '15'),
(229, 28, '_product_sale', 'field_5b4de16b348c2'),
(230, 28, 'product_color', 'a:8:{i:0;s:5:\"white\";i:1;s:3:\"red\";i:2;s:5:\"green\";i:3;s:4:\"blue\";i:4;s:6:\"yellow\";i:5;s:6:\"purple\";i:6;s:5:\"black\";i:7;s:6:\"orange\";}'),
(231, 28, '_product_color', 'field_5b4de1e5348c3'),
(232, 28, 'product_quantity', '1'),
(233, 28, '_product_quantity', 'field_5b4de327348c4'),
(234, 28, 'product_image_1', '7'),
(235, 28, '_product_image_1', 'field_5b4de3ab348c5'),
(236, 28, 'product_image_2', '9'),
(237, 28, '_product_image_2', 'field_5b4de3ff348c6'),
(238, 28, 'product_image_3', ''),
(239, 28, '_product_image_3', 'field_5b4de468348c7'),
(240, 28, 'product_image_4', ''),
(241, 28, '_product_image_4', 'field_5b4de49a348c8'),
(242, 28, 'product_maintain', '0'),
(243, 28, '_product_maintain', 'field_5b4decd53a3f9'),
(244, 28, 'product_extra_1', 'Bo'),
(245, 28, '_product_extra_1', 'field_5b4dedf63a3fb'),
(246, 28, 'product_extra_3', 'Re'),
(247, 28, '_product_extra_3', 'field_5b4dee033a3fc'),
(248, 28, 'product_extra_4', ''),
(249, 28, '_product_extra_4', 'field_5b4dee373a3fe'),
(250, 28, 'product_extra_5', ''),
(251, 28, '_product_extra_5', 'field_5b4dee453a3ff'),
(252, 28, 'product_extra_6', ''),
(253, 28, '_product_extra_6', 'field_5b4dee513a400'),
(254, 29, '_edit_last', '1'),
(255, 29, '_edit_lock', '1531835803:1'),
(256, 29, 'product_price', '990000'),
(257, 29, '_product_price', 'field_5b4de0e6348c1'),
(258, 29, 'product_sale', '10'),
(259, 29, '_product_sale', 'field_5b4de16b348c2'),
(260, 29, 'product_color', 'a:4:{i:0;s:5:\"white\";i:1;s:6:\"purple\";i:2;s:5:\"black\";i:3;s:6:\"orange\";}'),
(261, 29, '_product_color', 'field_5b4de1e5348c3'),
(262, 29, 'product_quantity', '1'),
(263, 29, '_product_quantity', 'field_5b4de327348c4'),
(264, 29, 'product_image_1', ''),
(265, 29, '_product_image_1', 'field_5b4de3ab348c5'),
(266, 29, 'product_image_2', ''),
(267, 29, '_product_image_2', 'field_5b4de3ff348c6'),
(268, 29, 'product_image_3', ''),
(269, 29, '_product_image_3', 'field_5b4de468348c7'),
(270, 29, 'product_image_4', ''),
(271, 29, '_product_image_4', 'field_5b4de49a348c8'),
(272, 29, 'product_maintain', '0'),
(273, 29, '_product_maintain', 'field_5b4decd53a3f9'),
(274, 29, 'product_extra_1', 'Mặt kính saphire'),
(275, 29, '_product_extra_1', 'field_5b4dedf63a3fb'),
(276, 29, 'product_extra_3', 'Chống nước quân đội'),
(277, 29, '_product_extra_3', 'field_5b4dee033a3fc'),
(278, 29, 'product_extra_4', ''),
(279, 29, '_product_extra_4', 'field_5b4dee373a3fe'),
(280, 29, 'product_extra_5', ''),
(281, 29, '_product_extra_5', 'field_5b4dee453a3ff'),
(282, 29, 'product_extra_6', ''),
(283, 29, '_product_extra_6', 'field_5b4dee513a400'),
(284, 30, '_edit_last', '1'),
(285, 30, '_edit_lock', '1532150728:1'),
(286, 32, '_edit_last', '1'),
(287, 32, '_edit_lock', '1532012801:1'),
(288, 34, '_edit_last', '1'),
(289, 34, '_edit_lock', '1532012847:1'),
(290, 3, '_wp_trash_meta_status', 'draft'),
(291, 3, '_wp_trash_meta_time', '1532013541'),
(292, 3, '_wp_desired_post_slug', 'privacy-policy'),
(293, 2, '_wp_trash_meta_status', 'publish'),
(294, 2, '_wp_trash_meta_time', '1532013543'),
(295, 2, '_wp_desired_post_slug', 'sample-page'),
(296, 38, '_edit_last', '1'),
(297, 38, '_edit_lock', '1532013460:1'),
(298, 40, '_edit_last', '1'),
(299, 40, '_edit_lock', '1532013598:1'),
(300, 23, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"watch\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(301, 23, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"glass\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:1;}'),
(302, 42, '_edit_last', '1'),
(303, 42, '_edit_lock', '1532088387:1'),
(304, 44, '_edit_last', '1'),
(305, 44, '_edit_lock', '1532089941:1'),
(306, 44, 'product_price', '500000'),
(307, 44, '_product_price', 'field_5b4de0e6348c1'),
(308, 44, 'product_sale', '5'),
(309, 44, '_product_sale', 'field_5b4de16b348c2'),
(310, 44, 'product_color', 'a:3:{i:0;s:5:\"white\";i:1;s:6:\"yellow\";i:2;s:6:\"purple\";}'),
(311, 44, '_product_color', 'field_5b4de1e5348c3'),
(312, 44, 'product_quantity', '1'),
(313, 44, '_product_quantity', 'field_5b4de327348c4'),
(314, 44, 'product_image_1', '16'),
(315, 44, '_product_image_1', 'field_5b4de3ab348c5'),
(316, 44, 'product_image_2', ''),
(317, 44, '_product_image_2', 'field_5b4de3ff348c6'),
(318, 44, 'product_image_3', ''),
(319, 44, '_product_image_3', 'field_5b4de468348c7'),
(320, 44, 'product_image_4', ''),
(321, 44, '_product_image_4', 'field_5b4de49a348c8'),
(322, 44, 'product_maintain', '12'),
(323, 44, '_product_maintain', 'field_5b4decd53a3f9'),
(324, 44, 'product_extra_1', 'Dây da'),
(325, 44, '_product_extra_1', 'field_5b4ded693a3fa'),
(326, 44, 'product_extra_2', ''),
(327, 44, '_product_extra_2', 'field_5b4dedf63a3fb'),
(328, 44, 'product_extra_3', ''),
(329, 44, '_product_extra_3', 'field_5b4dee033a3fc'),
(330, 44, 'product_extra_4', ''),
(331, 44, '_product_extra_4', 'field_5b4dee373a3fe'),
(332, 44, 'product_extra_5', ''),
(333, 44, '_product_extra_5', 'field_5b4dee453a3ff'),
(334, 44, 'product_extra_6', ''),
(335, 44, '_product_extra_6', 'field_5b4dee513a400'),
(336, 1, '_wp_trash_meta_status', 'publish'),
(337, 1, '_wp_trash_meta_time', '1532092792'),
(338, 1, '_wp_desired_post_slug', 'hello-world'),
(339, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(340, 46, '_edit_last', '1'),
(341, 46, 'field_5b52b99debb61', 'a:14:{s:3:\"key\";s:19:\"field_5b52b99debb61\";s:5:\"label\";s:12:\"Youtube Clip\";s:4:\"name\";s:12:\"youtube_clip\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:23:\"Enter Youtube Code Here\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:11:\"6ZfuNTqbHE8\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:10:\"Youtube ID\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"12\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(342, 46, 'field_5b52b9e9ebb62', 'a:13:{s:3:\"key\";s:19:\"field_5b52b9e9ebb62\";s:5:\"label\";s:27:\"Home Page News Section Show\";s:4:\"name\";s:14:\"home_page_news\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:48:\"Choose whether to show youtube clip or blog post\";s:8:\"required\";s:1:\"1\";s:7:\"choices\";a:2:{s:7:\"youtube\";s:12:\"Youtube Clip\";s:4:\"news\";s:4:\"Blog\";}s:12:\"other_choice\";s:1:\"0\";s:17:\"save_other_choice\";s:1:\"0\";s:13:\"default_value\";s:7:\"youtube\";s:6:\"layout\";s:10:\"horizontal\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(343, 46, 'field_5b52ba37ebb63', 'a:14:{s:3:\"key\";s:19:\"field_5b52ba37ebb63\";s:5:\"label\";s:17:\"Home Banner Title\";s:4:\"name\";s:17:\"home_banner_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:2:\"50\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b52b9e9ebb62\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"youtube\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(344, 46, 'field_5b52ba4aebb64', 'a:14:{s:3:\"key\";s:19:\"field_5b52ba4aebb64\";s:5:\"label\";s:21:\"Home Sub Banner Title\";s:4:\"name\";s:21:\"home_sub_banner_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b52b9e9ebb62\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"youtube\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(345, 46, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"30\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(346, 46, 'position', 'acf_after_title'),
(347, 46, 'layout', 'default'),
(348, 46, 'hide_on_screen', ''),
(349, 46, '_edit_lock', '1532148660:1'),
(350, 47, 'youtube_clip', '6ZfuNTqbHE8'),
(351, 47, '_youtube_clip', 'field_5b52b99debb61'),
(352, 47, 'home_page_news', 'youtube'),
(353, 47, '_home_page_news', 'field_5b52b9e9ebb62'),
(354, 47, 'home_banner_title', 'The Saric Shop Welcom'),
(355, 47, '_home_banner_title', 'field_5b52ba37ebb63'),
(356, 47, 'home_sub_banner_title', ''),
(357, 47, '_home_sub_banner_title', 'field_5b52ba4aebb64'),
(358, 30, 'youtube_clip', '6ZfuNTqbHE8'),
(359, 30, '_youtube_clip', 'field_5b52b99debb61'),
(360, 30, 'home_page_news', 'youtube'),
(361, 30, '_home_page_news', 'field_5b52b9e9ebb62'),
(362, 30, 'home_banner_title', 'The Saric Shop Welcom'),
(363, 30, '_home_banner_title', 'field_5b52ba37ebb63'),
(364, 30, 'home_sub_banner_title', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in volufficia deserunt mollit anim id est laborum.\"'),
(365, 30, '_home_sub_banner_title', 'field_5b52ba4aebb64'),
(366, 48, 'youtube_clip', '6ZfuNTqbHE8'),
(367, 48, '_youtube_clip', 'field_5b52b99debb61'),
(368, 48, 'home_page_news', 'youtube'),
(369, 48, '_home_page_news', 'field_5b52b9e9ebb62'),
(370, 48, 'home_banner_title', 'The Saric Shop Welcom'),
(371, 48, '_home_banner_title', 'field_5b52ba37ebb63'),
(372, 48, 'home_sub_banner_title', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in volufficia deserunt mollit anim id est laborum.\"'),
(373, 48, '_home_sub_banner_title', 'field_5b52ba4aebb64'),
(374, 49, '_edit_last', '1'),
(376, 49, '_edit_lock', '1532163889:1'),
(377, 49, '_thumbnail_id', '11'),
(379, 51, '_edit_last', '1'),
(380, 51, '_edit_lock', '1532166306:1'),
(382, 53, '_edit_last', '1'),
(383, 53, '_edit_lock', '1532163994:1'),
(385, 53, '_thumbnail_id', '10'),
(387, 55, '_edit_last', '1'),
(388, 55, '_edit_lock', '1532164055:1'),
(389, 55, '_thumbnail_id', '17'),
(391, 57, '_edit_last', '1'),
(392, 57, '_edit_lock', '1532164086:1'),
(393, 57, '_thumbnail_id', '18'),
(395, 59, '_edit_last', '1'),
(396, 59, '_edit_lock', '1532164098:1'),
(398, 61, '_edit_last', '1'),
(400, 61, '_edit_lock', '1532164260:1'),
(403, 64, '_edit_last', '1'),
(404, 64, '_edit_lock', '1532166400:1'),
(406, 64, '_thumbnail_id', '15'),
(408, 66, '_edit_last', '1'),
(409, 66, '_edit_lock', '1532166443:1'),
(411, 68, '_edit_last', '1'),
(412, 68, '_thumbnail_id', '17'),
(414, 68, '_edit_lock', '1532166470:1'),
(415, 70, '_edit_last', '1'),
(416, 70, '_edit_lock', '1532166504:1'),
(418, 72, '_edit_last', '1'),
(419, 72, '_edit_lock', '1532166586:1'),
(421, 74, '_edit_last', '1'),
(422, 74, '_thumbnail_id', '9'),
(424, 74, '_edit_lock', '1532166611:1'),
(425, 76, '_edit_last', '1'),
(426, 76, '_edit_lock', '1532166635:1'),
(428, 78, '_edit_last', '1'),
(429, 78, '_edit_lock', '1532166667:1'),
(430, 78, '_thumbnail_id', '17'),
(432, 80, '_edit_last', '1'),
(433, 80, '_edit_lock', '1532166698:1'),
(435, 82, '_edit_last', '1'),
(436, 82, '_edit_lock', '1532166745:1'),
(438, 84, '_edit_last', '1'),
(439, 84, '_edit_lock', '1532166804:1'),
(441, 84, '_thumbnail_id', '19'),
(443, 86, '_edit_last', '1'),
(444, 86, '_edit_lock', '1532166830:1'),
(446, 88, '_edit_last', '1'),
(447, 88, '_edit_lock', '1532166855:1'),
(449, 90, '_edit_last', '1'),
(450, 90, '_edit_lock', '1532166882:1'),
(451, 90, '_thumbnail_id', '16');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-07-17 12:24:36', '2018-07-17 12:24:36', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-07-20 13:19:52', '2018-07-20 13:19:52', '', 0, 'http://localhost/thuyvo/?p=1', 0, 'post', '', 1),
(2, 1, '2018-07-17 12:24:36', '2018-07-17 12:24:36', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/thuyvo/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-07-19 15:19:03', '2018-07-19 15:19:03', '', 0, 'http://localhost/thuyvo/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-07-17 12:24:36', '2018-07-17 12:24:36', '<h2>Who we are</h2><p>Our website address is: http://localhost/thuyvo.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-07-19 15:19:01', '2018-07-19 15:19:01', '', 0, 'http://localhost/thuyvo/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-07-17 12:25:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-17 12:25:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/thuyvo/?p=4', 0, 'post', '', 0),
(5, 1, '2018-07-17 12:27:29', '2018-07-17 12:27:29', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Watch Number 1', '', 'publish', 'closed', 'closed', '', 'watch-number-1', '', '', '2018-07-17 13:26:48', '2018-07-17 13:26:48', '', 0, 'http://localhost/thuyvo/?post_type=watch&#038;p=5', 0, 'watch', '', 0),
(6, 1, '2018-07-17 12:45:45', '2018-07-17 12:45:45', '', 'Product Main Detail', '', 'publish', 'closed', 'closed', '', 'acf_product-main-detail', '', '', '2018-07-17 13:19:02', '2018-07-17 13:19:02', '', 0, 'http://localhost/thuyvo/?post_type=acf&#038;p=6', 0, 'acf', '', 0),
(7, 1, '2018-07-17 12:57:58', '2018-07-17 12:57:58', '', 'IMG_8358', '', 'inherit', 'open', 'closed', '', 'img_8358', '', '', '2018-07-17 12:57:58', '2018-07-17 12:57:58', '', 0, 'http://localhost/thuyvo/wp-content/uploads/2018/07/IMG_8358.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2018-07-17 12:58:08', '2018-07-17 12:58:08', '', 'IMG_6955', '', 'inherit', 'open', 'closed', '', 'img_6955', '', '', '2018-07-17 12:58:08', '2018-07-17 12:58:08', '', 0, 'http://localhost/thuyvo/wp-content/uploads/2018/07/IMG_6955.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2018-07-17 12:58:08', '2018-07-17 12:58:08', '', 'IMG_8339', '', 'inherit', 'open', 'closed', '', 'img_8339', '', '', '2018-07-17 12:58:08', '2018-07-17 12:58:08', '', 0, 'http://localhost/thuyvo/wp-content/uploads/2018/07/IMG_8339.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2018-07-17 12:58:25', '2018-07-17 12:58:25', '', 'IMG_8347', '', 'inherit', 'open', 'closed', '', 'img_8347', '', '', '2018-07-17 12:58:25', '2018-07-17 12:58:25', '', 0, 'http://localhost/thuyvo/wp-content/uploads/2018/07/IMG_8347.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2018-07-17 12:58:25', '2018-07-17 12:58:25', '', 'IMG_8348', '', 'inherit', 'open', 'closed', '', 'img_8348', '', '', '2018-07-17 12:58:25', '2018-07-17 12:58:25', '', 0, 'http://localhost/thuyvo/wp-content/uploads/2018/07/IMG_8348.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2018-07-17 12:58:26', '2018-07-17 12:58:26', '', 'IMG_8349', '', 'inherit', 'open', 'closed', '', 'img_8349', '', '', '2018-07-17 12:58:26', '2018-07-17 12:58:26', '', 0, 'http://localhost/thuyvo/wp-content/uploads/2018/07/IMG_8349.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-07-17 12:58:26', '2018-07-17 12:58:26', '', 'IMG_8350', '', 'inherit', 'open', 'closed', '', 'img_8350', '', '', '2018-07-17 12:58:26', '2018-07-17 12:58:26', '', 0, 'http://localhost/thuyvo/wp-content/uploads/2018/07/IMG_8350.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-07-17 12:58:27', '2018-07-17 12:58:27', '', 'IMG_8351', '', 'inherit', 'open', 'closed', '', 'img_8351', '', '', '2018-07-17 12:58:27', '2018-07-17 12:58:27', '', 0, 'http://localhost/thuyvo/wp-content/uploads/2018/07/IMG_8351.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-07-17 12:58:27', '2018-07-17 12:58:27', '', 'IMG_8352', '', 'inherit', 'open', 'closed', '', 'img_8352', '', '', '2018-07-17 12:58:27', '2018-07-17 12:58:27', '', 0, 'http://localhost/thuyvo/wp-content/uploads/2018/07/IMG_8352.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-07-17 12:58:54', '2018-07-17 12:58:54', '', 'IMG_6435', '', 'inherit', 'open', 'closed', '', 'img_6435', '', '', '2018-07-17 12:58:54', '2018-07-17 12:58:54', '', 0, 'http://localhost/thuyvo/wp-content/uploads/2018/07/IMG_6435.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-07-17 12:58:54', '2018-07-17 12:58:54', '', 'IMG_6941', '', 'inherit', 'open', 'closed', '', 'img_6941', '', '', '2018-07-17 12:58:54', '2018-07-17 12:58:54', '', 0, 'http://localhost/thuyvo/wp-content/uploads/2018/07/IMG_6941.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-07-17 12:58:55', '2018-07-17 12:58:55', '', 'IMG_6956', '', 'inherit', 'open', 'closed', '', 'img_6956', '', '', '2018-07-17 12:58:55', '2018-07-17 12:58:55', '', 0, 'http://localhost/thuyvo/wp-content/uploads/2018/07/IMG_6956.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-07-17 12:58:55', '2018-07-17 12:58:55', '', 'IMG_6957', '', 'inherit', 'open', 'closed', '', 'img_6957', '', '', '2018-07-17 12:58:55', '2018-07-17 12:58:55', '', 0, 'http://localhost/thuyvo/wp-content/uploads/2018/07/IMG_6957.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-07-17 12:58:55', '2018-07-17 12:58:55', '', 'IMG_6965', '', 'inherit', 'open', 'closed', '', 'img_6965', '', '', '2018-07-17 12:58:55', '2018-07-17 12:58:55', '', 0, 'http://localhost/thuyvo/wp-content/uploads/2018/07/IMG_6965.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-07-17 12:58:56', '2018-07-17 12:58:56', '', 'IMG_6966', '', 'inherit', 'open', 'closed', '', 'img_6966', '', '', '2018-07-17 12:58:56', '2018-07-17 12:58:56', '', 0, 'http://localhost/thuyvo/wp-content/uploads/2018/07/IMG_6966.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-07-17 12:58:56', '2018-07-17 12:58:56', '', 'IMG_6967', '', 'inherit', 'open', 'closed', '', 'img_6967', '', '', '2018-07-17 12:58:56', '2018-07-17 12:58:56', '', 0, 'http://localhost/thuyvo/wp-content/uploads/2018/07/IMG_6967.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-07-17 13:26:06', '2018-07-17 13:26:06', '', 'Product Sub Detail', '', 'publish', 'closed', 'closed', '', 'acf_product-sub-detail', '', '', '2018-07-19 15:53:06', '2018-07-19 15:53:06', '', 0, 'http://localhost/thuyvo/?post_type=acf&#038;p=23', 0, 'acf', '', 0),
(24, 1, '2018-07-17 13:53:16', '2018-07-17 13:53:16', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Watch Number 2', '', 'publish', 'closed', 'closed', '', 'watch-number-2', '', '', '2018-07-17 13:53:16', '2018-07-17 13:53:16', '', 0, 'http://localhost/thuyvo/?post_type=watch&#038;p=24', 0, 'watch', '', 0),
(25, 1, '2018-07-17 13:54:17', '2018-07-17 13:54:17', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Watch Number 3', '', 'publish', 'closed', 'closed', '', 'watch-number-3', '', '', '2018-07-17 13:54:17', '2018-07-17 13:54:17', '', 0, 'http://localhost/thuyvo/?post_type=watch&#038;p=25', 0, 'watch', '', 0),
(26, 1, '2018-07-17 13:55:51', '2018-07-17 13:55:51', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Watch Number 4', '', 'publish', 'closed', 'closed', '', 'watch-number-4', '', '', '2018-07-17 13:56:07', '2018-07-17 13:56:07', '', 0, 'http://localhost/thuyvo/?post_type=watch&#038;p=26', 0, 'watch', '', 0),
(27, 1, '2018-07-17 13:57:17', '2018-07-17 13:57:17', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Glass Number 1', '', 'publish', 'closed', 'closed', '', 'glass-number-1', '', '', '2018-07-17 13:57:17', '2018-07-17 13:57:17', '', 0, 'http://localhost/thuyvo/?post_type=glass&#038;p=27', 0, 'glass', '', 0),
(28, 1, '2018-07-17 13:58:21', '2018-07-17 13:58:21', '', 'Glass Number 2', '', 'publish', 'closed', 'closed', '', 'glass-number-2', '', '', '2018-07-17 13:58:21', '2018-07-17 13:58:21', '', 0, 'http://localhost/thuyvo/?post_type=glass&#038;p=28', 0, 'glass', '', 0),
(29, 1, '2018-07-17 13:59:04', '2018-07-17 13:59:04', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Glass Number 3', '', 'publish', 'closed', 'closed', '', 'glass-number-3', '', '', '2018-07-17 13:59:04', '2018-07-17 13:59:04', '', 0, 'http://localhost/thuyvo/?post_type=glass&#038;p=29', 0, 'glass', '', 0),
(30, 1, '2018-07-19 15:08:19', '2018-07-19 15:08:19', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-21 04:53:35', '2018-07-21 04:53:35', '', 0, 'http://localhost/thuyvo/?page_id=30', 0, 'page', '', 0),
(31, 1, '2018-07-19 15:08:19', '2018-07-19 15:08:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-07-19 15:08:19', '2018-07-19 15:08:19', '', 30, 'http://localhost/thuyvo/?p=31', 0, 'revision', '', 0),
(32, 1, '2018-07-19 15:08:37', '2018-07-19 15:08:37', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-07-19 15:08:37', '2018-07-19 15:08:37', '', 0, 'http://localhost/thuyvo/?page_id=32', 0, 'page', '', 0),
(33, 1, '2018-07-19 15:08:37', '2018-07-19 15:08:37', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-07-19 15:08:37', '2018-07-19 15:08:37', '', 32, 'http://localhost/thuyvo/?p=33', 0, 'revision', '', 0),
(34, 1, '2018-07-19 15:09:31', '2018-07-19 15:09:31', '', 'Discount Watches', '', 'publish', 'closed', 'closed', '', 'discount-watches', '', '', '2018-07-19 15:09:31', '2018-07-19 15:09:31', '', 0, 'http://localhost/thuyvo/?page_id=34', 0, 'page', '', 0),
(35, 1, '2018-07-19 15:09:31', '2018-07-19 15:09:31', '', 'Discount Watches', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-07-19 15:09:31', '2018-07-19 15:09:31', '', 34, 'http://localhost/thuyvo/?p=35', 0, 'revision', '', 0),
(36, 1, '2018-07-19 15:19:01', '2018-07-19 15:19:01', '<h2>Who we are</h2><p>Our website address is: http://localhost/thuyvo.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-07-19 15:19:01', '2018-07-19 15:19:01', '', 3, 'http://localhost/thuyvo/3-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-07-19 15:19:03', '2018-07-19 15:19:03', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/thuyvo/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-07-19 15:19:03', '2018-07-19 15:19:03', '', 2, 'http://localhost/thuyvo/2-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-07-19 15:20:03', '2018-07-19 15:20:03', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-07-19 15:20:03', '2018-07-19 15:20:03', '', 0, 'http://localhost/thuyvo/?page_id=38', 0, 'page', '', 0),
(39, 1, '2018-07-19 15:19:22', '2018-07-19 15:19:22', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-07-19 15:19:22', '2018-07-19 15:19:22', '', 38, 'http://localhost/thuyvo/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-07-19 15:21:36', '2018-07-19 15:21:36', '', 'Discount Glasses', '', 'publish', 'closed', 'closed', '', 'discount-glasses', '', '', '2018-07-19 15:21:36', '2018-07-19 15:21:36', '', 0, 'http://localhost/thuyvo/?page_id=40', 0, 'page', '', 0),
(41, 1, '2018-07-19 15:21:36', '2018-07-19 15:21:36', '', 'Discount Glasses', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-07-19 15:21:36', '2018-07-19 15:21:36', '', 40, 'http://localhost/thuyvo/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-07-20 12:04:52', '2018-07-20 12:04:52', '', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2018-07-20 12:04:52', '2018-07-20 12:04:52', '', 0, 'http://localhost/thuyvo/?page_id=42', 0, 'page', '', 0),
(43, 1, '2018-07-20 12:04:52', '2018-07-20 12:04:52', '', 'Products', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-07-20 12:04:52', '2018-07-20 12:04:52', '', 42, 'http://localhost/thuyvo/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-07-20 12:19:57', '2018-07-20 12:19:57', '', 'Watch Number 5', '', 'publish', 'closed', 'closed', '', 'watch-number-5', '', '', '2018-07-20 12:19:57', '2018-07-20 12:19:57', '', 0, 'http://localhost/thuyvo/?post_type=watch&#038;p=44', 0, 'watch', '', 0),
(45, 1, '2018-07-20 13:19:52', '2018-07-20 13:19:52', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-07-20 13:19:52', '2018-07-20 13:19:52', '', 1, 'http://localhost/thuyvo/1-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-07-21 04:45:42', '2018-07-21 04:45:42', '', 'Home Page Detail', '', 'publish', 'closed', 'closed', '', 'acf_home-page-detail', '', '', '2018-07-21 04:45:42', '2018-07-21 04:45:42', '', 0, 'http://localhost/thuyvo/?post_type=acf&#038;p=46', 0, 'acf', '', 0),
(47, 1, '2018-07-21 04:46:16', '2018-07-21 04:46:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-07-21 04:46:16', '2018-07-21 04:46:16', '', 30, 'http://localhost/thuyvo/30-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-07-21 04:53:35', '2018-07-21 04:53:35', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Home', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-07-21 04:53:35', '2018-07-21 04:53:35', '', 30, 'http://localhost/thuyvo/30-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-07-21 09:06:51', '2018-07-21 09:06:51', 'Không CLB nào có thể thu về toàn bộ số tiền bán đấu bởi phần lớn doanh thu đều thuộc về nhà sản xuất. Còn nhớ khi Zlatan Ibrahimovic cập bến M.U, nhiều người nhầm lẫn \"Quỷ đỏ\" bội thu khi có được 98 triệu USD từ tiền bán áo đấu chỉ trong 1 tuần. Song, con số thực chỉ tầm 10 triệu USD mà thôi, số còn lại sẽ thuộc về Adidas.', 'CLB Juventus thu được bao nhiêu từ tiền bán đấu Ronaldo?', '', 'publish', 'open', 'open', '', 'clb-juventus-thu-duoc-bao-nhieu-tu-tien-ban-dau-ronaldo', '', '', '2018-07-21 09:07:10', '2018-07-21 09:07:10', '', 0, 'http://localhost/thuyvo/?p=49', 0, 'post', '', 0),
(50, 1, '2018-07-21 09:06:51', '2018-07-21 09:06:51', 'Không CLB nào có thể thu về toàn bộ số tiền bán đấu bởi phần lớn doanh thu đều thuộc về nhà sản xuất. Còn nhớ khi Zlatan Ibrahimovic cập bến M.U, nhiều người nhầm lẫn \"Quỷ đỏ\" bội thu khi có được 98 triệu USD từ tiền bán áo đấu chỉ trong 1 tuần. Song, con số thực chỉ tầm 10 triệu USD mà thôi, số còn lại sẽ thuộc về Adidas.', 'CLB Juventus thu được bao nhiêu từ tiền bán đấu Ronaldo?', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-07-21 09:06:51', '2018-07-21 09:06:51', '', 49, 'http://localhost/thuyvo/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-07-21 09:07:48', '2018-07-21 09:07:48', '<div>Chuyện các nhân vật bóng đá nói riêng và thể thao nói chung ở Tây Ban Nha dính dáng đến nghi án trốn thuế được khui ra rất nhiều trong những năm qua.</div>\r\n<div>Riêng ở Real, không chỉ Ronaldo mà còn những cái tên đình đám khác như cựu chủ tịch Lorenzo Sanz, cựu HLV Jose Mourinho, các ngôi sao từng chơi bóng ở Bernabeu như Xabi Alonso, Di Maria và cả những đồng đội hiện tại của CR7 (Marcelo, Modric) cũng đã bị cơ quan thuế sờ gáy.</div>\r\n<div>Theo tuyên bố chính thức mới nhất của Cơ quan thuế vụ Tây Ban Nha, Ronaldo sẽ phải nộp tổng cộng 28 triệu euro (tiền hoàn thuế đã trốn, tiền phạt cùng các chi phí liên quan) muộn nhất là vào ngày 15.6 tới nếu không muốn phải ra hầu tòa.</div>', 'Không nộp đủ 28 triệu euro, Ronaldo sẽ phải ra hầu tòa vì tội trốn thuế', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n', 'publish', 'open', 'open', '', 'khong-nop-du-28-trieu-euro-ronaldo-se-phai-ra-hau-toa-vi-toi-tron-thue', '', '', '2018-07-21 09:22:46', '2018-07-21 09:22:46', '', 0, 'http://localhost/thuyvo/?p=51', 0, 'post', '', 0),
(52, 1, '2018-07-21 09:07:48', '2018-07-21 09:07:48', '<div>Chuyện các nhân vật bóng đá nói riêng và thể thao nói chung ở Tây Ban Nha dính dáng đến nghi án trốn thuế được khui ra rất nhiều trong những năm qua.</div>\r\n<div>Riêng ở Real, không chỉ Ronaldo mà còn những cái tên đình đám khác như cựu chủ tịch Lorenzo Sanz, cựu HLV Jose Mourinho, các ngôi sao từng chơi bóng ở Bernabeu như Xabi Alonso, Di Maria và cả những đồng đội hiện tại của CR7 (Marcelo, Modric) cũng đã bị cơ quan thuế sờ gáy.</div>\r\n<div>Theo tuyên bố chính thức mới nhất của Cơ quan thuế vụ Tây Ban Nha, Ronaldo sẽ phải nộp tổng cộng 28 triệu euro (tiền hoàn thuế đã trốn, tiền phạt cùng các chi phí liên quan) muộn nhất là vào ngày 15.6 tới nếu không muốn phải ra hầu tòa.</div>', 'Không nộp đủ 28 triệu euro, Ronaldo sẽ phải ra hầu tòa vì tội trốn thuế', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2018-07-21 09:07:48', '2018-07-21 09:07:48', '', 51, 'http://localhost/thuyvo/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-07-21 09:08:45', '2018-07-21 09:08:45', 'Tài khoản Bảo Yến quay cảnh nước lũ nhấn chìm gần như hoàn toàn một khu vực tại Ba Chẽ (Quảng Ninh), rồi đặc tả nụ cười buồn của anh thanh niên ngồi chóc ngóc trên mái nhà khiến cư dân mạng không thể đau lòng hơn', 'Nóng trên mạng xã hội: Gian lận thi cử và hiệu ứng domino', '', 'publish', 'open', 'open', '', 'nong-tren-mang-xa-hoi-gian-lan-thi-cu-va-hieu-ung-domino', '', '', '2018-07-21 09:08:53', '2018-07-21 09:08:53', '', 0, 'http://localhost/thuyvo/?p=53', 0, 'post', '', 0),
(54, 1, '2018-07-21 09:08:45', '2018-07-21 09:08:45', 'Tài khoản Bảo Yến quay cảnh nước lũ nhấn chìm gần như hoàn toàn một khu vực tại Ba Chẽ (Quảng Ninh), rồi đặc tả nụ cười buồn của anh thanh niên ngồi chóc ngóc trên mái nhà khiến cư dân mạng không thể đau lòng hơn', 'Nóng trên mạng xã hội: Gian lận thi cử và hiệu ứng domino', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-07-21 09:08:45', '2018-07-21 09:08:45', '', 53, 'http://localhost/thuyvo/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-07-21 09:09:57', '2018-07-21 09:09:57', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?', '', 'publish', 'open', 'open', '', 'what-is-lorem-ipsum', '', '', '2018-07-21 09:09:57', '2018-07-21 09:09:57', '', 0, 'http://localhost/thuyvo/?p=55', 0, 'post', '', 0),
(56, 1, '2018-07-21 09:09:57', '2018-07-21 09:09:57', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-07-21 09:09:57', '2018-07-21 09:09:57', '', 55, 'http://localhost/thuyvo/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-07-21 09:10:21', '2018-07-21 09:10:21', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Where does it come from?', '', 'publish', 'open', 'open', '', 'where-does-it-come-from', '', '', '2018-07-21 09:10:21', '2018-07-21 09:10:21', '', 0, 'http://localhost/thuyvo/?p=57', 0, 'post', '', 0),
(58, 1, '2018-07-21 09:10:21', '2018-07-21 09:10:21', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Where does it come from?', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-07-21 09:10:21', '2018-07-21 09:10:21', '', 57, 'http://localhost/thuyvo/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-07-21 09:10:39', '2018-07-21 09:10:39', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Why do we use it?', '', 'publish', 'open', 'open', '', 'why-do-we-use-it', '', '', '2018-07-21 09:10:39', '2018-07-21 09:10:39', '', 0, 'http://localhost/thuyvo/?p=59', 0, 'post', '', 0),
(60, 1, '2018-07-21 09:10:39', '2018-07-21 09:10:39', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Why do we use it?', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-07-21 09:10:39', '2018-07-21 09:10:39', '', 59, 'http://localhost/thuyvo/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-07-21 09:10:54', '2018-07-21 09:10:54', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Where can I get some?', '', 'publish', 'open', 'open', '', 'where-can-i-get-some', '', '', '2018-07-21 09:13:17', '2018-07-21 09:13:17', '', 0, 'http://localhost/thuyvo/?p=61', 0, 'post', '', 0),
(62, 1, '2018-07-21 09:10:54', '2018-07-21 09:10:54', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Where can I get some?', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-07-21 09:10:54', '2018-07-21 09:10:54', '', 61, 'http://localhost/thuyvo/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-07-21 09:22:46', '2018-07-21 09:22:46', '<div>Chuyện các nhân vật bóng đá nói riêng và thể thao nói chung ở Tây Ban Nha dính dáng đến nghi án trốn thuế được khui ra rất nhiều trong những năm qua.</div>\r\n<div>Riêng ở Real, không chỉ Ronaldo mà còn những cái tên đình đám khác như cựu chủ tịch Lorenzo Sanz, cựu HLV Jose Mourinho, các ngôi sao từng chơi bóng ở Bernabeu như Xabi Alonso, Di Maria và cả những đồng đội hiện tại của CR7 (Marcelo, Modric) cũng đã bị cơ quan thuế sờ gáy.</div>\r\n<div>Theo tuyên bố chính thức mới nhất của Cơ quan thuế vụ Tây Ban Nha, Ronaldo sẽ phải nộp tổng cộng 28 triệu euro (tiền hoàn thuế đã trốn, tiền phạt cùng các chi phí liên quan) muộn nhất là vào ngày 15.6 tới nếu không muốn phải ra hầu tòa.</div>', 'Không nộp đủ 28 triệu euro, Ronaldo sẽ phải ra hầu tòa vì tội trốn thuế', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2018-07-21 09:22:46', '2018-07-21 09:22:46', '', 51, 'http://localhost/thuyvo/51-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-07-21 09:48:38', '2018-07-21 09:48:38', '<div>Không chỉ chị H. mà nhiều học sinh lớp 12 <a href=\"https://thanhnien.vn/giao-duc/to-cong-tac-cua-bo-gddt-cham-tham-dinh-o-son-la-suot-dem-985070.html\" target=\"_blank\" rel=\"noopener\">Trường THPT chuyên Sơn La</a> năm học 2017 - 2018 khi nói chuyện với chúng tôi đều nhắc đến L. như một \"điển hình\" về “điểm cao bất thường”. Em Lan (đã đổi tên - phóng viên), một học sinh chuyên văn, cho biết, sau khi có kết quả thi, đi đâu em cũng nghe mọi người bàn tán về việc có một số học sinh trường Tô Hiệu “mua điểm”.</div>\r\n<div>“Chẳng hạn bạn V.H.L. từng học lớp chuyên địa lý trường em nhưng vì học lực trung bình nên năm ngoái phải chuyển về trường Tô Hiệu, có điểm khối B cao thứ 4 nước (28,4 điểm), ai nghe tin cũng sửng sốt”, Lan chia sẻ.</div>\r\n<div>Còn Hải (đã đổi tên - phóng viên), một học sinh lớp chuyên sinh, thì dẫn thêm một trường hợp bị người dân đồn “mua điểm” là H, cũng học ở trường Tô Hiệu. “Bạn này cũng học trường em, vì học lực kém, hạnh kiểm kém do lêu lổng, ham chơi nên phải về trường Tô Hiệu từ hồi lớp 10. Vậy mà giờ lại lọt vào tốp 15 bạn điểm cao nhất tỉnh Sơn La khối A1”, Hải nói.</div>', 'Nhiều học sinh, phụ huynh Sơn La bất ngờ về điểm thi của thí sinh tỉnh nhà', 'Còn Hải (đã đổi tên - phóng viên), một học sinh lớp chuyên sinh, thì dẫn thêm một trường hợp bị người dân đồn “mua điểm” là H, cũng học ở trường Tô Hiệu. “Bạn này cũng học trường em, vì học lực kém, hạnh kiểm kém do lêu lổng, ham chơi nên phải về trường Tô Hiệu từ hồi lớp 10. Vậy mà giờ lại lọt vào tốp 15 bạn điểm cao nhất tỉnh Sơn La khối A1”, Hải nói.', 'publish', 'open', 'open', '', 'nhieu-hoc-sinh-phu-huynh-son-la-bat-ngo-ve-diem-thi-cua-thi-sinh-tinh-nha', '', '', '2018-07-21 09:49:01', '2018-07-21 09:49:01', '', 0, 'http://localhost/thuyvo/?p=64', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(65, 1, '2018-07-21 09:48:38', '2018-07-21 09:48:38', '<div>Không chỉ chị H. mà nhiều học sinh lớp 12 <a href=\"https://thanhnien.vn/giao-duc/to-cong-tac-cua-bo-gddt-cham-tham-dinh-o-son-la-suot-dem-985070.html\" target=\"_blank\" rel=\"noopener\">Trường THPT chuyên Sơn La</a> năm học 2017 - 2018 khi nói chuyện với chúng tôi đều nhắc đến L. như một \"điển hình\" về “điểm cao bất thường”. Em Lan (đã đổi tên - phóng viên), một học sinh chuyên văn, cho biết, sau khi có kết quả thi, đi đâu em cũng nghe mọi người bàn tán về việc có một số học sinh trường Tô Hiệu “mua điểm”.</div>\r\n<div>“Chẳng hạn bạn V.H.L. từng học lớp chuyên địa lý trường em nhưng vì học lực trung bình nên năm ngoái phải chuyển về trường Tô Hiệu, có điểm khối B cao thứ 4 nước (28,4 điểm), ai nghe tin cũng sửng sốt”, Lan chia sẻ.</div>\r\n<div>Còn Hải (đã đổi tên - phóng viên), một học sinh lớp chuyên sinh, thì dẫn thêm một trường hợp bị người dân đồn “mua điểm” là H, cũng học ở trường Tô Hiệu. “Bạn này cũng học trường em, vì học lực kém, hạnh kiểm kém do lêu lổng, ham chơi nên phải về trường Tô Hiệu từ hồi lớp 10. Vậy mà giờ lại lọt vào tốp 15 bạn điểm cao nhất tỉnh Sơn La khối A1”, Hải nói.</div>', 'Nhiều học sinh, phụ huynh Sơn La bất ngờ về điểm thi của thí sinh tỉnh nhà', 'Còn Hải (đã đổi tên - phóng viên), một học sinh lớp chuyên sinh, thì dẫn thêm một trường hợp bị người dân đồn “mua điểm” là H, cũng học ở trường Tô Hiệu. “Bạn này cũng học trường em, vì học lực kém, hạnh kiểm kém do lêu lổng, ham chơi nên phải về trường Tô Hiệu từ hồi lớp 10. Vậy mà giờ lại lọt vào tốp 15 bạn điểm cao nhất tỉnh Sơn La khối A1”, Hải nói.', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-07-21 09:48:38', '2018-07-21 09:48:38', '', 64, 'http://localhost/thuyvo/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-07-21 09:49:32', '2018-07-21 09:49:32', 'Báo cáo của Ban cán sự đảng UBND tỉnh Hà Giang đề ngày 18.7 cho biết, ngày 7.7, lãnh đạo Hội đồng thi phát hiện ông Vũ Trọng Lương, Phó trưởng phòng Khảo thí và Quản lý chất lương, Phó trưởng Ban Thư ký của Hội đồng thi, có hành vi di chuyển các hòm đựng bài thi trắc nghiệm đã quét xong và một số thiết bị phục vụ công tác chấm thi trắc nghiệm (gồm máy tính và 2 máy quét bài thi) về Phòng Khảo thí và Quản lý chất lượng giáo dục, Sở GD-ĐT tỉnh Hà Giang khi chưa được sự cho phép của Chủ tịch Hội đồng thi', 'Trưởng phòng khảo thí đã đưa chìa khóa lưu giữ bài thi cho ông Vũ Trọng Lương', 'Báo cáo của Ban cán sự đảng UBND tỉnh Hà Giang đề ngày 18.7 cho biết, ngày 7.7, lãnh đạo Hội đồng thi phát hiện ông Vũ Trọng Lương, Phó trưởng phòng Khảo thí và Quản lý chất lương, Phó trưởng Ban Thư ký của Hội đồng thi, có hành vi di chuyển các hòm đựng bài thi trắc nghiệm đã quét xong và một số thiết bị phục vụ công tác chấm thi trắc nghiệm (gồm máy tính và 2 máy quét bài thi) về Phòng Khảo thí và Quản lý chất lượng giáo dục, Sở GD-ĐT tỉnh Hà Giang khi chưa được sự cho phép của Chủ tịch Hội đồng thi', 'publish', 'open', 'open', '', 'truong-phong-khao-thi-da-dua-chia-khoa-luu-giu-bai-thi-cho-ong-vu-trong-luong', '', '', '2018-07-21 09:49:32', '2018-07-21 09:49:32', '', 0, 'http://localhost/thuyvo/?p=66', 0, 'post', '', 0),
(67, 1, '2018-07-21 09:49:32', '2018-07-21 09:49:32', 'Báo cáo của Ban cán sự đảng UBND tỉnh Hà Giang đề ngày 18.7 cho biết, ngày 7.7, lãnh đạo Hội đồng thi phát hiện ông Vũ Trọng Lương, Phó trưởng phòng Khảo thí và Quản lý chất lương, Phó trưởng Ban Thư ký của Hội đồng thi, có hành vi di chuyển các hòm đựng bài thi trắc nghiệm đã quét xong và một số thiết bị phục vụ công tác chấm thi trắc nghiệm (gồm máy tính và 2 máy quét bài thi) về Phòng Khảo thí và Quản lý chất lượng giáo dục, Sở GD-ĐT tỉnh Hà Giang khi chưa được sự cho phép của Chủ tịch Hội đồng thi', 'Trưởng phòng khảo thí đã đưa chìa khóa lưu giữ bài thi cho ông Vũ Trọng Lương', 'Báo cáo của Ban cán sự đảng UBND tỉnh Hà Giang đề ngày 18.7 cho biết, ngày 7.7, lãnh đạo Hội đồng thi phát hiện ông Vũ Trọng Lương, Phó trưởng phòng Khảo thí và Quản lý chất lương, Phó trưởng Ban Thư ký của Hội đồng thi, có hành vi di chuyển các hòm đựng bài thi trắc nghiệm đã quét xong và một số thiết bị phục vụ công tác chấm thi trắc nghiệm (gồm máy tính và 2 máy quét bài thi) về Phòng Khảo thí và Quản lý chất lượng giáo dục, Sở GD-ĐT tỉnh Hà Giang khi chưa được sự cho phép của Chủ tịch Hội đồng thi', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-07-21 09:49:32', '2018-07-21 09:49:32', '', 66, 'http://localhost/thuyvo/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-07-21 09:50:10', '2018-07-21 09:50:10', '<div>Sau 2 ngày 2 đêm làm việc tại Sở GD-ĐT Sơn La, ông Mai Văn Trinh, Cục trưởng Cục quản lý chất lượng, Bộ GD-ĐT, người được Bộ trưởng Bộ GD-ĐT giao phụ trách tổ công tác xác minh kết quả chấm thi Kỳ thi THPT quốc gia 2018 tại Sơn La, đã chính thức trả lời báo chí.</div>\r\n<div>Ông Trinh cho biết, với tinh thần nghiêm túc, trách nhiệm cao trước xã hội và đặc biệt với thí sinh trong cả nước, Bộ GD-ĐT đã thành lập tổ công tác lên công tác Hội đồng thi Sở GD-ĐT Sơn La. Nhiệm vụ của tổ công tác là chỉ đạo, giám sát việc rà soát các <a href=\"https://thanhnien.vn/giao-duc/thi-sinh-diem-cao-nhat-tinh-son-la-co-nguyen-vong-1-vao-nghiep-vu-canh-sat-985147.html\" target=\"_blank\" rel=\"noopener\">dấu hiệu điểm thi bất thường </a>tại Hội đồng thi Sở GD-ĐT Sơn La</div>', 'Chậm nhất thứ hai tuần tới sẽ có kết quả rà soát điểm thi ở Sơn La', 'Sau 2 ngày 2 đêm làm việc tại Sở GD-ĐT Sơn La, ông Mai Văn Trinh, Cục trưởng Cục quản lý chất lượng, Bộ GD-ĐT, người được Bộ trưởng Bộ GD-ĐT giao phụ trách tổ công tác xác minh kết quả chấm thi Kỳ thi THPT quốc gia 2018 tại Sơn La, đã chính thức trả lời báo chí.', 'publish', 'open', 'open', '', 'cham-nhat-thu-hai-tuan-toi-se-co-ket-qua-ra-soat-diem-thi-o-son-la', '', '', '2018-07-21 09:50:10', '2018-07-21 09:50:10', '', 0, 'http://localhost/thuyvo/?p=68', 0, 'post', '', 0),
(69, 1, '2018-07-21 09:50:10', '2018-07-21 09:50:10', '<div>Sau 2 ngày 2 đêm làm việc tại Sở GD-ĐT Sơn La, ông Mai Văn Trinh, Cục trưởng Cục quản lý chất lượng, Bộ GD-ĐT, người được Bộ trưởng Bộ GD-ĐT giao phụ trách tổ công tác xác minh kết quả chấm thi Kỳ thi THPT quốc gia 2018 tại Sơn La, đã chính thức trả lời báo chí.</div>\r\n<div>Ông Trinh cho biết, với tinh thần nghiêm túc, trách nhiệm cao trước xã hội và đặc biệt với thí sinh trong cả nước, Bộ GD-ĐT đã thành lập tổ công tác lên công tác Hội đồng thi Sở GD-ĐT Sơn La. Nhiệm vụ của tổ công tác là chỉ đạo, giám sát việc rà soát các <a href=\"https://thanhnien.vn/giao-duc/thi-sinh-diem-cao-nhat-tinh-son-la-co-nguyen-vong-1-vao-nghiep-vu-canh-sat-985147.html\" target=\"_blank\" rel=\"noopener\">dấu hiệu điểm thi bất thường </a>tại Hội đồng thi Sở GD-ĐT Sơn La</div>', 'Chậm nhất thứ hai tuần tới sẽ có kết quả rà soát điểm thi ở Sơn La', 'Sau 2 ngày 2 đêm làm việc tại Sở GD-ĐT Sơn La, ông Mai Văn Trinh, Cục trưởng Cục quản lý chất lượng, Bộ GD-ĐT, người được Bộ trưởng Bộ GD-ĐT giao phụ trách tổ công tác xác minh kết quả chấm thi Kỳ thi THPT quốc gia 2018 tại Sơn La, đã chính thức trả lời báo chí.', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2018-07-21 09:50:10', '2018-07-21 09:50:10', '', 68, 'http://localhost/thuyvo/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-07-21 09:50:46', '2018-07-21 09:50:46', '<strong>Là gái mại dâm?</strong>\r\n\r\nRất khó khăn để có thể tiếp cận với những cô gái làm PG tiệc, dù là tiệc A hay tiệc B. Bởi lẽ trên Facebook, mỗi lần H. đăng tin tuyển PG tiệc, thường tag (đánh dấu) hàng chục tài khoản Facebook là những cô gái làm nghề này. Tuy nhiên, phần lớn trong số các PG tiệc ấy đều sử dụng tài khoản ảo. Ngay cả H. cũng chỉ sử dụng một tài khoản ảo, không để bất kỳ thông tin gì, chỉ đăng hình những cô gái gợi cảm, khỏa thân.', 'PG tiệc A, từ A đến… Z', '\r\n\r\nTiệc A là \'tiệc nhạy cảm\', và nếu chấp nhận làm PG tiệc A đồng nghĩa phải chiều chuộng khách… tới bến. Và, những điều nghe thấy mà đau đớn lòng...', 'publish', 'open', 'open', '', 'pg-tiec-a-tu-a-den-z', '', '', '2018-07-21 09:50:46', '2018-07-21 09:50:46', '', 0, 'http://localhost/thuyvo/?p=70', 0, 'post', '', 0),
(71, 1, '2018-07-21 09:50:46', '2018-07-21 09:50:46', '<strong>Là gái mại dâm?</strong>\r\n\r\nRất khó khăn để có thể tiếp cận với những cô gái làm PG tiệc, dù là tiệc A hay tiệc B. Bởi lẽ trên Facebook, mỗi lần H. đăng tin tuyển PG tiệc, thường tag (đánh dấu) hàng chục tài khoản Facebook là những cô gái làm nghề này. Tuy nhiên, phần lớn trong số các PG tiệc ấy đều sử dụng tài khoản ảo. Ngay cả H. cũng chỉ sử dụng một tài khoản ảo, không để bất kỳ thông tin gì, chỉ đăng hình những cô gái gợi cảm, khỏa thân.', 'PG tiệc A, từ A đến… Z', '\r\n\r\nTiệc A là \'tiệc nhạy cảm\', và nếu chấp nhận làm PG tiệc A đồng nghĩa phải chiều chuộng khách… tới bến. Và, những điều nghe thấy mà đau đớn lòng...', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-07-21 09:50:46', '2018-07-21 09:50:46', '', 70, 'http://localhost/thuyvo/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-07-21 09:51:57', '2018-07-21 09:51:57', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'ABC XYZ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'publish', 'open', 'open', '', 'abc-xyz', '', '', '2018-07-21 09:51:57', '2018-07-21 09:51:57', '', 0, 'http://localhost/thuyvo/?p=72', 0, 'post', '', 0),
(73, 1, '2018-07-21 09:51:57', '2018-07-21 09:51:57', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'ABC XYZ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-07-21 09:51:57', '2018-07-21 09:51:57', '', 72, 'http://localhost/thuyvo/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-07-21 09:52:26', '2018-07-21 09:52:26', 'Ông Nguyễn Đức Hùng, 43 tuổi, trú ở phố Kênh Đồng, thành phố Hạ Long, Quảng Ninh vẫn chưa thể quên vụ tai nạn xảy ra với con trai mới 8 tuổi vào 10 năm trước. Nhà ông Hùng nuôi một con chó giống beggie, bình thường vẫn xích ở cổng để trông nhà. Một lần, con trai ông Hùng lại gần, đột nhiên con chó lao vào tấn công, rất may mắn ông Hùng có mặt ở gần đã can thiệp được, bé trai bị thương nặng ở đầu gối, mất máu nhiều, phải đi cấp cứ', 'Em bé bị chó ngao cắn chết: Nuôi chó dữ như nuôi sư tử trong nhà', '', 'publish', 'open', 'open', '', 'em-be-bi-cho-ngao-can-chet-nuoi-cho-du-nhu-nuoi-su-tu-trong-nha', '', '', '2018-07-21 09:52:26', '2018-07-21 09:52:26', '', 0, 'http://localhost/thuyvo/?p=74', 0, 'post', '', 0),
(75, 1, '2018-07-21 09:52:26', '2018-07-21 09:52:26', 'Ông Nguyễn Đức Hùng, 43 tuổi, trú ở phố Kênh Đồng, thành phố Hạ Long, Quảng Ninh vẫn chưa thể quên vụ tai nạn xảy ra với con trai mới 8 tuổi vào 10 năm trước. Nhà ông Hùng nuôi một con chó giống beggie, bình thường vẫn xích ở cổng để trông nhà. Một lần, con trai ông Hùng lại gần, đột nhiên con chó lao vào tấn công, rất may mắn ông Hùng có mặt ở gần đã can thiệp được, bé trai bị thương nặng ở đầu gối, mất máu nhiều, phải đi cấp cứ', 'Em bé bị chó ngao cắn chết: Nuôi chó dữ như nuôi sư tử trong nhà', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-07-21 09:52:26', '2018-07-21 09:52:26', '', 74, 'http://localhost/thuyvo/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-07-21 09:52:56', '2018-07-21 09:52:56', 'Với chiều dài hơn 50 km, cung đường rừng Tà Năng - Phan Dũng trải qua 3 tỉnh Lâm Đồng, Ninh Thuận, Bình Thuận và được giới trẻ mê phượt mệnh danh là cung đường trekking (chuyến đi bộ chinh phục đồi núi) đẹp nhất Việt Nam.\r\n\r\nNhưng ngoài những vẻ đẹp mà thiên nhiên ban tặng thì nơi đây luôn tiềm ẩn những nguy hiểm khôn lường. Thậm chí đã có nhiều vụ tai nạn thương tâm đã xảy ra khi chinh phục cung đường này.\r\n\r\nThế nhưng, mới đây, anh chàng Huỳnh Quốc Huy đã chia sẻ câu chuyện chinh phục cung đường này bằng xe đạp. Câu chuyện nhanh chóng thu hút được sự quan tâm và ngưỡng mộ của nhiều bạn trẻ.', 'Chàng trai đạp xe đạp chinh phục Tà Năng – Phan Dũng', '\r\n\r\nTà Năng – Phan Dũng cung đường được rất nhiều bạn trẻ mê đắm, nhưng cũng vô cùng nguy hiểm khi chinh phục. Thế nhưng, chàng trai Huỳnh Quốc Huy, sinh viên Trường ĐH Quốc tế Hồng Bàng, đã chinh phục cung đường này bằng xe đạp.', 'publish', 'open', 'open', '', 'chang-trai-dap-xe-dap-chinh-phuc-ta-nang-phan-dung', '', '', '2018-07-21 09:52:56', '2018-07-21 09:52:56', '', 0, 'http://localhost/thuyvo/?p=76', 0, 'post', '', 0),
(77, 1, '2018-07-21 09:52:56', '2018-07-21 09:52:56', 'Với chiều dài hơn 50 km, cung đường rừng Tà Năng - Phan Dũng trải qua 3 tỉnh Lâm Đồng, Ninh Thuận, Bình Thuận và được giới trẻ mê phượt mệnh danh là cung đường trekking (chuyến đi bộ chinh phục đồi núi) đẹp nhất Việt Nam.\r\n\r\nNhưng ngoài những vẻ đẹp mà thiên nhiên ban tặng thì nơi đây luôn tiềm ẩn những nguy hiểm khôn lường. Thậm chí đã có nhiều vụ tai nạn thương tâm đã xảy ra khi chinh phục cung đường này.\r\n\r\nThế nhưng, mới đây, anh chàng Huỳnh Quốc Huy đã chia sẻ câu chuyện chinh phục cung đường này bằng xe đạp. Câu chuyện nhanh chóng thu hút được sự quan tâm và ngưỡng mộ của nhiều bạn trẻ.', 'Chàng trai đạp xe đạp chinh phục Tà Năng – Phan Dũng', '\r\n\r\nTà Năng – Phan Dũng cung đường được rất nhiều bạn trẻ mê đắm, nhưng cũng vô cùng nguy hiểm khi chinh phục. Thế nhưng, chàng trai Huỳnh Quốc Huy, sinh viên Trường ĐH Quốc tế Hồng Bàng, đã chinh phục cung đường này bằng xe đạp.', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-07-21 09:52:56', '2018-07-21 09:52:56', '', 76, 'http://localhost/thuyvo/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-07-21 09:53:30', '2018-07-21 09:53:30', 'Trong những ngày tháng 7 lịch sử, khi nhiều cơ quan đoàn thể trong khắp cả nước đang hướng về ngày thương binh liệt sĩ, tri ân người có công, thì những bạn trẻ của Huyện đoàn Triệu Phong (Quảng Trị) và Đoàn thanh niên Viễn thông Quảng Trị đã âm thầm đi về nhà những Mẹ Việt Nam anh hùng còn lại ở địa bàn H.Triệu Phong để làm 1 việc hết sức đơn giản mà vẫn rất đặc biệt: nấu và ăn cùng các Mẹ một bữa cơm.', 'Nấu cơm cho Mẹ', 'Trong những ngày tháng 7 lịch sử, khi nhiều cơ quan đoàn thể trong khắp cả nước đang hướng về ngày thương binh liệt sĩ, tri ân người có công, thì những bạn trẻ của Huyện đoàn Triệu Phong (Quảng Trị) và Đoàn thanh niên Viễn thông Quảng Trị đã âm thầm đi về nhà những Mẹ Việt Nam anh hùng còn lại ở địa bàn H.Triệu Phong để làm 1 việc hết sức đơn giản mà vẫn rất đặc biệt: nấu và ăn cùng các Mẹ một bữa cơm.', 'publish', 'open', 'open', '', 'nau-com-cho-me', '', '', '2018-07-21 09:53:30', '2018-07-21 09:53:30', '', 0, 'http://localhost/thuyvo/?p=78', 0, 'post', '', 0),
(79, 1, '2018-07-21 09:53:30', '2018-07-21 09:53:30', 'Trong những ngày tháng 7 lịch sử, khi nhiều cơ quan đoàn thể trong khắp cả nước đang hướng về ngày thương binh liệt sĩ, tri ân người có công, thì những bạn trẻ của Huyện đoàn Triệu Phong (Quảng Trị) và Đoàn thanh niên Viễn thông Quảng Trị đã âm thầm đi về nhà những Mẹ Việt Nam anh hùng còn lại ở địa bàn H.Triệu Phong để làm 1 việc hết sức đơn giản mà vẫn rất đặc biệt: nấu và ăn cùng các Mẹ một bữa cơm.', 'Nấu cơm cho Mẹ', 'Trong những ngày tháng 7 lịch sử, khi nhiều cơ quan đoàn thể trong khắp cả nước đang hướng về ngày thương binh liệt sĩ, tri ân người có công, thì những bạn trẻ của Huyện đoàn Triệu Phong (Quảng Trị) và Đoàn thanh niên Viễn thông Quảng Trị đã âm thầm đi về nhà những Mẹ Việt Nam anh hùng còn lại ở địa bàn H.Triệu Phong để làm 1 việc hết sức đơn giản mà vẫn rất đặc biệt: nấu và ăn cùng các Mẹ một bữa cơm.', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-07-21 09:53:30', '2018-07-21 09:53:30', '', 78, 'http://localhost/thuyvo/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-07-21 09:54:00', '2018-07-21 09:54:00', '<div>Mỗi mùa thi không thể thiếu vắng các hoạt động hỗ trợ của các tình nguyện viên. Họ đã tham gia đảm bảo an toàn, trật tự kỳ thi, giúp đỡ thí sinh (TS) và người nhà bớt lo âu, căng thẳng. Đặc biệt, năm nay chương trình hướng đến các đối tượng khó khăn, tìm hiểu và hỗ trợ từng hoàn cảnh éo le, giúp đỡ các TS thực hiện ước mơ của mình.</div>\r\n<div>Năm nay, 59/63 tỉnh, thành đoàn, Hội Sinh viên VN cấp tỉnh, TP đã rà soát, lên phương án hỗ trợ các TS có hoàn cảnh khó khăn với nhiều hình thức như: thăm hỏi, tặng quà động viên TS và gia đình; chia sẻ, trao đổi kinh nghiệm ôn tập và làm bài thi; hướng dẫn nộp hồ sơ đăng ký; giới thiệu chỗ ăn, nghỉ miễn phí; đưa đón, hỗ trợ TS di chuyển, vào phòng thi...</div>\r\n<div><article class=\"story story--left clearfix\">\r\n<figure><a class=\"thumb\" href=\"https://thanhnien.vn/gioi-tre/dua-chuyen-mon-vao-tiep-suc-mua-thi-977568.html\" target=\"_blank\" rel=\"noopener\"><img src=\"https://image.thanhnien.vn/160x105/uploaded/nuvuong/2018_06_27/csc_0886_fjqu.jpg\" alt=\" Dấu ấn trong lòng thí sinh - ảnh 1\" /></a></figure>\r\n<header>\r\n<h4 class=\"label\">TIN LIÊN QUAN</h4>\r\n<a class=\"title\" title=\"Đưa chuyên môn vào tiếp sức mùa thi\" href=\"https://thanhnien.vn/gioi-tre/dua-chuyen-mon-vao-tiep-suc-mua-thi-977568.html\" target=\"_blank\" rel=\"noopener\">Đưa chuyên môn vào tiếp sức mùa thi</a></header></article>\r\nTrong những ngày diễn ra đợt cao điểm kỳ thi, các đội hình sinh viên tình nguyện túc trực tại các điểm thi luôn sẵn sàng hướng dẫn, hỗ trợ TS. Nhiều hình ảnh xúc động của tình nguyện viên đã để lại dấu ấn trong lòng các TS và lan truyền lòng nhân ái với xã hội như: che nắng che mưa, cõng TS khuyết tật hoặc không may bị tai nạn đau chân vào tận điểm thi... Các tình nguyện viên còn tận tình hướng dẫn, chỉ dẫn sơ đồ phòng thi; trông giữ hành lý, đồ đạc cá nhân cho TS; giới thiệu các địa điểm ăn uống giá rẻ, đảm bảo an toàn vệ sinh thực phẩm; phát các vật dụng, cung cấp các suất ăn, nước uống miễn phí cho TS và người nhà TS...</div>', 'Dấu ấn trong lòng thí sinh', '\r\n\r\nMột mùa thi đã đi qua với biết bao căng thẳng lo âu, nhưng điều còn ghi dấu ấn trong lòng các thí sinh và xã hội là những hành động đẹp, sáng tạo của các tình nguyện viên trong chương trình Tiếp sức mùa thi.', 'publish', 'open', 'open', '', 'dau-an-trong-long-thi-sinh', '', '', '2018-07-21 09:54:00', '2018-07-21 09:54:00', '', 0, 'http://localhost/thuyvo/?p=80', 0, 'post', '', 0),
(81, 1, '2018-07-21 09:54:00', '2018-07-21 09:54:00', '<div>Mỗi mùa thi không thể thiếu vắng các hoạt động hỗ trợ của các tình nguyện viên. Họ đã tham gia đảm bảo an toàn, trật tự kỳ thi, giúp đỡ thí sinh (TS) và người nhà bớt lo âu, căng thẳng. Đặc biệt, năm nay chương trình hướng đến các đối tượng khó khăn, tìm hiểu và hỗ trợ từng hoàn cảnh éo le, giúp đỡ các TS thực hiện ước mơ của mình.</div>\r\n<div>Năm nay, 59/63 tỉnh, thành đoàn, Hội Sinh viên VN cấp tỉnh, TP đã rà soát, lên phương án hỗ trợ các TS có hoàn cảnh khó khăn với nhiều hình thức như: thăm hỏi, tặng quà động viên TS và gia đình; chia sẻ, trao đổi kinh nghiệm ôn tập và làm bài thi; hướng dẫn nộp hồ sơ đăng ký; giới thiệu chỗ ăn, nghỉ miễn phí; đưa đón, hỗ trợ TS di chuyển, vào phòng thi...</div>\r\n<div><article class=\"story story--left clearfix\">\r\n<figure><a class=\"thumb\" href=\"https://thanhnien.vn/gioi-tre/dua-chuyen-mon-vao-tiep-suc-mua-thi-977568.html\" target=\"_blank\" rel=\"noopener\"><img src=\"https://image.thanhnien.vn/160x105/uploaded/nuvuong/2018_06_27/csc_0886_fjqu.jpg\" alt=\" Dấu ấn trong lòng thí sinh - ảnh 1\" /></a></figure>\r\n<header>\r\n<h4 class=\"label\">TIN LIÊN QUAN</h4>\r\n<a class=\"title\" title=\"Đưa chuyên môn vào tiếp sức mùa thi\" href=\"https://thanhnien.vn/gioi-tre/dua-chuyen-mon-vao-tiep-suc-mua-thi-977568.html\" target=\"_blank\" rel=\"noopener\">Đưa chuyên môn vào tiếp sức mùa thi</a></header></article>\r\nTrong những ngày diễn ra đợt cao điểm kỳ thi, các đội hình sinh viên tình nguyện túc trực tại các điểm thi luôn sẵn sàng hướng dẫn, hỗ trợ TS. Nhiều hình ảnh xúc động của tình nguyện viên đã để lại dấu ấn trong lòng các TS và lan truyền lòng nhân ái với xã hội như: che nắng che mưa, cõng TS khuyết tật hoặc không may bị tai nạn đau chân vào tận điểm thi... Các tình nguyện viên còn tận tình hướng dẫn, chỉ dẫn sơ đồ phòng thi; trông giữ hành lý, đồ đạc cá nhân cho TS; giới thiệu các địa điểm ăn uống giá rẻ, đảm bảo an toàn vệ sinh thực phẩm; phát các vật dụng, cung cấp các suất ăn, nước uống miễn phí cho TS và người nhà TS...</div>', 'Dấu ấn trong lòng thí sinh', '\r\n\r\nMột mùa thi đã đi qua với biết bao căng thẳng lo âu, nhưng điều còn ghi dấu ấn trong lòng các thí sinh và xã hội là những hành động đẹp, sáng tạo của các tình nguyện viên trong chương trình Tiếp sức mùa thi.', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-07-21 09:54:00', '2018-07-21 09:54:00', '', 80, 'http://localhost/thuyvo/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-07-21 09:54:47', '2018-07-21 09:54:47', '<div>Với điểm đến là Trường đại học Buôn Mê Thuột, làng cà phê, thành phố cà phê, nhà văn hóa cộng đồng… để trao tặng 6.000 cuốn sách quý đến thanh niên Tây nguyên.</div>\r\n<div>Theo ông Nông Văn Hiếu - Phó chủ nhiệm CLB Khởi nghiệp Buôn Mê Thuột, Hành trình từ Trái tim là một chương trình rất ý nghĩa khi kiến tạo khát vọng lớn, xây dựng tri thức cho thanh niên để làm giàu bền vững, khởi nghiệp với chí lớn. Hành trình mong muốn giúp cho các bạn thanh niên có khát vọng lớn hãy vượt qua chính mình, dấn thân, không sợ thất bại và đừng trông chờ vào người khác.</div>\r\n<div>Có mặt để giao lưu và ký tặng cho các bạn Buôn Mê Thuột, Hoa hậu Đỗ Mỹ Linh tỏ ra rất phấn khởi, hạnh phúc và vinh dự bởi đây là lần thứ 3 cô được đồng hành cùng hành trình để gửi tặng đến các bạn trẻ những cuốn sách đổi đời.</div>\r\n<div>“Các bạn trẻ hiện nay rất may mắn khi được Chủ tịch Đặng Lê Nguyên Vũ chọn sẵn cho mình những cuốn sách quý, sách hay. Đối với Mỹ Linh, câu chuyện thần kỳ về nền kinh tế Israel trong cuốn <em>Quốc gia Khởi nghiệp</em> là nguồn cảm hứng rất lớn giúp Linh đam mê đọc sách và xây dựng khát vọng lớn để lập nghiệp với chí lớn. Vì vậy, các bạn trẻ nên đọc <em>Quốc gia khởi nghiệp</em> bởi không có cuốn sách nào có thể thổi tinh thần đam mê lập nghiệp, làm giàu cho các bạn trẻ mạnh mẽ và hay hơn cuốn sách này”, Mỹ Linh tâm sự.</div>', 'Xây dựng khát vọng lớn để lập chí vĩ đại', '\r\n\r\nNgày 19.7, Hành trình từ Trái tim - Hành trình Lập chí vĩ đại - Khởi nghiệp kiến quốc cho 30 triệu thanh niên Việt đã đến thành phố cà phê - thủ phủ cà phê Buôn Mê Thuột.', 'publish', 'open', 'open', '', 'xay-dung-khat-vong-lon-de-lap-chi-vi-dai', '', '', '2018-07-21 09:54:47', '2018-07-21 09:54:47', '', 0, 'http://localhost/thuyvo/?p=82', 0, 'post', '', 0),
(83, 1, '2018-07-21 09:54:47', '2018-07-21 09:54:47', '<div>Với điểm đến là Trường đại học Buôn Mê Thuột, làng cà phê, thành phố cà phê, nhà văn hóa cộng đồng… để trao tặng 6.000 cuốn sách quý đến thanh niên Tây nguyên.</div>\r\n<div>Theo ông Nông Văn Hiếu - Phó chủ nhiệm CLB Khởi nghiệp Buôn Mê Thuột, Hành trình từ Trái tim là một chương trình rất ý nghĩa khi kiến tạo khát vọng lớn, xây dựng tri thức cho thanh niên để làm giàu bền vững, khởi nghiệp với chí lớn. Hành trình mong muốn giúp cho các bạn thanh niên có khát vọng lớn hãy vượt qua chính mình, dấn thân, không sợ thất bại và đừng trông chờ vào người khác.</div>\r\n<div>Có mặt để giao lưu và ký tặng cho các bạn Buôn Mê Thuột, Hoa hậu Đỗ Mỹ Linh tỏ ra rất phấn khởi, hạnh phúc và vinh dự bởi đây là lần thứ 3 cô được đồng hành cùng hành trình để gửi tặng đến các bạn trẻ những cuốn sách đổi đời.</div>\r\n<div>“Các bạn trẻ hiện nay rất may mắn khi được Chủ tịch Đặng Lê Nguyên Vũ chọn sẵn cho mình những cuốn sách quý, sách hay. Đối với Mỹ Linh, câu chuyện thần kỳ về nền kinh tế Israel trong cuốn <em>Quốc gia Khởi nghiệp</em> là nguồn cảm hứng rất lớn giúp Linh đam mê đọc sách và xây dựng khát vọng lớn để lập nghiệp với chí lớn. Vì vậy, các bạn trẻ nên đọc <em>Quốc gia khởi nghiệp</em> bởi không có cuốn sách nào có thể thổi tinh thần đam mê lập nghiệp, làm giàu cho các bạn trẻ mạnh mẽ và hay hơn cuốn sách này”, Mỹ Linh tâm sự.</div>', 'Xây dựng khát vọng lớn để lập chí vĩ đại', '\r\n\r\nNgày 19.7, Hành trình từ Trái tim - Hành trình Lập chí vĩ đại - Khởi nghiệp kiến quốc cho 30 triệu thanh niên Việt đã đến thành phố cà phê - thủ phủ cà phê Buôn Mê Thuột.', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2018-07-21 09:54:47', '2018-07-21 09:54:47', '', 82, 'http://localhost/thuyvo/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-07-21 09:55:23', '2018-07-21 09:55:23', '\"Tuy nhiên, khi <a class=\"title\" title=\"Nhiều khách hàng tố công ty Đại Việt bán đất lừa đảo\" href=\"https://thanhnien.vn/tai-chinh-kinh-doanh/nhieu-khach-hang-to-cong-ty-dai-viet-ban-dat-lua-dao-982309.html\" rel=\"\">vào trong thì các giấy tờ, bằng khen, giấy chứng nhận đều là của Công ty Đại Việt\", chị Vân - một người mua đất bên Công ty Đại Việt nói.</a> Đáng nói,tại đây, một người tên Tiến, tự xưng là đại diện cho bên thứ ba giải quyết về việc mua bán đất giữa Công ty Đại Việt và người dân lớn tiếng nói: “Các anh chị thừa hiểu ông Khải đang trong tình trạng như thế nào rồi. Nếu anh chị mà không gặp tôi thì cũng khó có thể nào xử lý được vấn đề. Bây giờ anh chị đi thu hồi tiền thì phải thu hồi người còn tiền mới thu được. Bây giờ người ta hết tài sản rồi anh chị thu kiểu gì? Tôi ngồi đây nói chuyện với anh chị trên tinh thần cùng tháo gỡ vấn đề, nhưng anh chị đang cố tình không hiểu, cố tình làm to chuyện lên. Anh chị có làm rùm beng lên thì thiệt thòi nhất là các anh chị. Làm rùm beng lên là các anh chị phải đi kiện, đi kiện thì mình đúng 100% nhưng anh Khải không còn gì để anh chị thu”.', 'Vụ Công ty Đại Việt lừa bán đất: Khách hàng bị hăm dọa', 'Ngày 20.7, các khách hàng mua đất nền của Công ty Đại Việt kéo đến trụ sở công ty này tại số 38, đường số 5 Phạm Hùng, xã Bình Hưng, huyện Bình Chánh, TP.HCM để đòi đất, đòi tiền nhưng các nhân viên ở đây cho biết, địa chỉ này không còn là trụ sở Công ty Đại Việt nữa.', 'publish', 'open', 'open', '', 'vu-cong-ty-dai-viet-lua-ban-dat-khach-hang-bi-ham-doa', '', '', '2018-07-21 09:55:47', '2018-07-21 09:55:47', '', 0, 'http://localhost/thuyvo/?p=84', 0, 'post', '', 0),
(85, 1, '2018-07-21 09:55:23', '2018-07-21 09:55:23', '\"Tuy nhiên, khi <a class=\"title\" title=\"Nhiều khách hàng tố công ty Đại Việt bán đất lừa đảo\" href=\"https://thanhnien.vn/tai-chinh-kinh-doanh/nhieu-khach-hang-to-cong-ty-dai-viet-ban-dat-lua-dao-982309.html\" rel=\"\">vào trong thì các giấy tờ, bằng khen, giấy chứng nhận đều là của Công ty Đại Việt\", chị Vân - một người mua đất bên Công ty Đại Việt nói.</a> Đáng nói,tại đây, một người tên Tiến, tự xưng là đại diện cho bên thứ ba giải quyết về việc mua bán đất giữa Công ty Đại Việt và người dân lớn tiếng nói: “Các anh chị thừa hiểu ông Khải đang trong tình trạng như thế nào rồi. Nếu anh chị mà không gặp tôi thì cũng khó có thể nào xử lý được vấn đề. Bây giờ anh chị đi thu hồi tiền thì phải thu hồi người còn tiền mới thu được. Bây giờ người ta hết tài sản rồi anh chị thu kiểu gì? Tôi ngồi đây nói chuyện với anh chị trên tinh thần cùng tháo gỡ vấn đề, nhưng anh chị đang cố tình không hiểu, cố tình làm to chuyện lên. Anh chị có làm rùm beng lên thì thiệt thòi nhất là các anh chị. Làm rùm beng lên là các anh chị phải đi kiện, đi kiện thì mình đúng 100% nhưng anh Khải không còn gì để anh chị thu”.', 'Vụ Công ty Đại Việt lừa bán đất: Khách hàng bị hăm dọa', 'Ngày 20.7, các khách hàng mua đất nền của Công ty Đại Việt kéo đến trụ sở công ty này tại số 38, đường số 5 Phạm Hùng, xã Bình Hưng, huyện Bình Chánh, TP.HCM để đòi đất, đòi tiền nhưng các nhân viên ở đây cho biết, địa chỉ này không còn là trụ sở Công ty Đại Việt nữa.', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-07-21 09:55:23', '2018-07-21 09:55:23', '', 84, 'http://localhost/thuyvo/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-07-21 09:56:11', '2018-07-21 09:56:11', '<div>Cuối phiên hôm nay 20.7, chỉ số VN-Index mất 10,58 điểm xuống 933,39 điểm. Ngược lại chỉ số HNX-Index tăng khá khi ghi thêm 2,03 điểm lên 107,62 điểm.</div>\r\n<div>Thị trường đã có các phiên liên tục hồi phục kể từ đầu tuần nên việc đột ngột quay đầu đi xuống mạnh phiên hôm nay gây bất ngờ cho các nhà đầu tư.</div>\r\n<div><article class=\"story story--left clearfix\">\r\n<figure><a class=\"thumb\" href=\"https://thanhnien.vn/tai-chinh-kinh-doanh/co-phieu-hoi-phuc-thot-tim-nha-dau-tu-979732.html\" target=\"_blank\" rel=\"noopener\"><img src=\"https://image.thanhnien.vn/160x105/uploaded/maiphuong/2018_07_04/ck_bkdb.jpg\" alt=\"VN-Index bất ngờ chốt tuần trong sắc đỏ - ảnh 1\" /></a></figure>\r\n<header>\r\n<h4 class=\"label\">TIN LIÊN QUAN</h4>\r\n<a class=\"title\" title=\"Cổ phiếu hồi phục, \'thót tim\' nhà đầu tư\" href=\"https://thanhnien.vn/tai-chinh-kinh-doanh/co-phieu-hoi-phuc-thot-tim-nha-dau-tu-979732.html\" target=\"_blank\" rel=\"noopener\">Cổ phiếu hồi phục, \'thót tim\' nhà đầu tư</a></header></article>Trước đó, lực cầu có dấu hiệu gia tăng trong đầu phiên chiều ở nhóm ngân hàng giúp mức giảm của VN-Index thu hẹp so với đợt sáng và về gần mức tham chiếu. Tuy nhiên lực bán ra lại đột ngột gia tăng trong đợt khớp lệnh đóng cửa, nhất là nhóm cổ phiếu lớn trong rổ VN30.</div>\r\n<div>Hàng loạt cổ phiếu blue-chips như VNM, VIC, VJC, ROS, GAS, FPT, BVH… đều lao dốc mạnh khiến thị trường không thể phục hồi. Thậm chí cổ phiếu SAB của Tổng công ty bia rượu nước giải khát Sài Gòn (Sabeco) còn rơi về giá sàn khi đóng cửa thị trường, về mức 200.000 đồng/cổ phiếu. Điều này đưa chỉ số VN30-Index giảm mạnh hơn khi mất 14,59 điểm xuống 926,5 điểm.</div>', 'VN-Index bất ngờ chốt tuần trong sắc đỏ', '\r\n\r\nGiằng co mạnh trong suốt phiên giao dịch, VN-Index cuối phiên bất ngờ mất đi 1,12% trong khi HNX-Index lại tăng gần 2%.', 'publish', 'open', 'open', '', 'vn-index-bat-ngo-chot-tuan-trong-sac-do', '', '', '2018-07-21 09:56:11', '2018-07-21 09:56:11', '', 0, 'http://localhost/thuyvo/?p=86', 0, 'post', '', 0),
(87, 1, '2018-07-21 09:56:11', '2018-07-21 09:56:11', '<div>Cuối phiên hôm nay 20.7, chỉ số VN-Index mất 10,58 điểm xuống 933,39 điểm. Ngược lại chỉ số HNX-Index tăng khá khi ghi thêm 2,03 điểm lên 107,62 điểm.</div>\r\n<div>Thị trường đã có các phiên liên tục hồi phục kể từ đầu tuần nên việc đột ngột quay đầu đi xuống mạnh phiên hôm nay gây bất ngờ cho các nhà đầu tư.</div>\r\n<div><article class=\"story story--left clearfix\">\r\n<figure><a class=\"thumb\" href=\"https://thanhnien.vn/tai-chinh-kinh-doanh/co-phieu-hoi-phuc-thot-tim-nha-dau-tu-979732.html\" target=\"_blank\" rel=\"noopener\"><img src=\"https://image.thanhnien.vn/160x105/uploaded/maiphuong/2018_07_04/ck_bkdb.jpg\" alt=\"VN-Index bất ngờ chốt tuần trong sắc đỏ - ảnh 1\" /></a></figure>\r\n<header>\r\n<h4 class=\"label\">TIN LIÊN QUAN</h4>\r\n<a class=\"title\" title=\"Cổ phiếu hồi phục, \'thót tim\' nhà đầu tư\" href=\"https://thanhnien.vn/tai-chinh-kinh-doanh/co-phieu-hoi-phuc-thot-tim-nha-dau-tu-979732.html\" target=\"_blank\" rel=\"noopener\">Cổ phiếu hồi phục, \'thót tim\' nhà đầu tư</a></header></article>Trước đó, lực cầu có dấu hiệu gia tăng trong đầu phiên chiều ở nhóm ngân hàng giúp mức giảm của VN-Index thu hẹp so với đợt sáng và về gần mức tham chiếu. Tuy nhiên lực bán ra lại đột ngột gia tăng trong đợt khớp lệnh đóng cửa, nhất là nhóm cổ phiếu lớn trong rổ VN30.</div>\r\n<div>Hàng loạt cổ phiếu blue-chips như VNM, VIC, VJC, ROS, GAS, FPT, BVH… đều lao dốc mạnh khiến thị trường không thể phục hồi. Thậm chí cổ phiếu SAB của Tổng công ty bia rượu nước giải khát Sài Gòn (Sabeco) còn rơi về giá sàn khi đóng cửa thị trường, về mức 200.000 đồng/cổ phiếu. Điều này đưa chỉ số VN30-Index giảm mạnh hơn khi mất 14,59 điểm xuống 926,5 điểm.</div>', 'VN-Index bất ngờ chốt tuần trong sắc đỏ', '\r\n\r\nGiằng co mạnh trong suốt phiên giao dịch, VN-Index cuối phiên bất ngờ mất đi 1,12% trong khi HNX-Index lại tăng gần 2%.', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-07-21 09:56:11', '2018-07-21 09:56:11', '', 86, 'http://localhost/thuyvo/86-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-07-21 09:56:36', '2018-07-21 09:56:36', '<div>Một “phù thủy” mới cũng vừa xuất hiện, khi hệ thống Giải thưởng Bảo hiểm châu Á 2018 lần đầu tiên vinh danh một công ty đến từ Việt Nam cho hạng mục “Sáng kiến Marketing của năm”: FWD Việt Nam.</div>\r\n<div>Giải thưởng Bảo hiểm châu Á 2018 được tổ chức tại Singapore nhằm tôn vinh các công ty vượt qua những thách thức và ghi nhận những sáng kiến của họ trong việc “đọc vị” khách hàng cũng như tận dụng tối đa các cơ hội trên thị trường. FWD là công ty đầu tiên đến từ Việt Nam được vinh danh tại hạng mục “Sáng kiến Marketing của năm” nhờ vào chiến lược khác biệt và các hoạt động marketing xuất sắc mà công ty này đã triển khai trong năm qua.</div>\r\n<div><strong>Khác biệt</strong></div>\r\n<div>Bảo hiểm được xem là một “ngành khó” cho các ý tưởng marketing, đặc biệt tại Việt Nam khi tình cảm của người tiêu dùng dành cho ngành còn cần nhiều thời gian để bồi đắp. FWD ra mắt vào năm 2016 đã thổi vào thị trường một làn gió thanh xuân tươi mát với sắc cam trẻ trung và thông điệp rộn rã “Sống đầy từ hôm nay”.</div>\r\n<div>Dưới bàn tay “hóa phép” của FWD, bảo hiểm không còn là nỗi sợ hãi hay lo âu mà trái lại, đã truyền cảm hứng để mọi người thêm tin yêu cuộc sống, khơi dậy sự lạc quan và tin tưởng. Những câu chuyện của FWD đã mang bảo hiểm đến gần hơn với mọi người, giúp mọi người hân hoan vui sống và không ngần ngại tận hưởng từng khoảnh khắc. Điều này thể hiện xuyên suốt từ thông điệp “Sống đầy từ hôm nay” cho tới các hoạt động marketing mới mẻ, sáng tạo, năng động và gần gũi.</div>\r\n<div>“Cách làm marketing của FWD mở ra cho chúng ta thấy cuộc sống luôn đầy ắp những điều kỳ diệu để khám phá và nhiều mục tiêu để vững bước chinh phục, do đó “hãy sống trong niềm vui, để hạnh phúc luôn mỉm cười”. Đó là lý do vì sao chúng ta cảm nhận được rằng FWD đang có những bước đầu rất thành công khi theo đuổi và quyết tâm thực hiện tầm nhìn “thay đổi cảm nhận của mọi người về bảo hiểm”, một chuyên gia marketing bình luận.</div>', '‘Phù thủy’ mới của làng marketing Việt Nam', 'Unilever, P&G, Vinamilk… được biết đến như những tên tuổi lớn trong làng marketing Việt Nam với những chiến dịch độc đáo, khác biệt và hấp dẫn người tiêu dùng.  ', 'publish', 'open', 'open', '', 'phu-thuy-moi-cua-lang-marketing-viet-nam', '', '', '2018-07-21 09:56:36', '2018-07-21 09:56:36', '', 0, 'http://localhost/thuyvo/?p=88', 0, 'post', '', 0),
(89, 1, '2018-07-21 09:56:36', '2018-07-21 09:56:36', '<div>Một “phù thủy” mới cũng vừa xuất hiện, khi hệ thống Giải thưởng Bảo hiểm châu Á 2018 lần đầu tiên vinh danh một công ty đến từ Việt Nam cho hạng mục “Sáng kiến Marketing của năm”: FWD Việt Nam.</div>\r\n<div>Giải thưởng Bảo hiểm châu Á 2018 được tổ chức tại Singapore nhằm tôn vinh các công ty vượt qua những thách thức và ghi nhận những sáng kiến của họ trong việc “đọc vị” khách hàng cũng như tận dụng tối đa các cơ hội trên thị trường. FWD là công ty đầu tiên đến từ Việt Nam được vinh danh tại hạng mục “Sáng kiến Marketing của năm” nhờ vào chiến lược khác biệt và các hoạt động marketing xuất sắc mà công ty này đã triển khai trong năm qua.</div>\r\n<div><strong>Khác biệt</strong></div>\r\n<div>Bảo hiểm được xem là một “ngành khó” cho các ý tưởng marketing, đặc biệt tại Việt Nam khi tình cảm của người tiêu dùng dành cho ngành còn cần nhiều thời gian để bồi đắp. FWD ra mắt vào năm 2016 đã thổi vào thị trường một làn gió thanh xuân tươi mát với sắc cam trẻ trung và thông điệp rộn rã “Sống đầy từ hôm nay”.</div>\r\n<div>Dưới bàn tay “hóa phép” của FWD, bảo hiểm không còn là nỗi sợ hãi hay lo âu mà trái lại, đã truyền cảm hứng để mọi người thêm tin yêu cuộc sống, khơi dậy sự lạc quan và tin tưởng. Những câu chuyện của FWD đã mang bảo hiểm đến gần hơn với mọi người, giúp mọi người hân hoan vui sống và không ngần ngại tận hưởng từng khoảnh khắc. Điều này thể hiện xuyên suốt từ thông điệp “Sống đầy từ hôm nay” cho tới các hoạt động marketing mới mẻ, sáng tạo, năng động và gần gũi.</div>\r\n<div>“Cách làm marketing của FWD mở ra cho chúng ta thấy cuộc sống luôn đầy ắp những điều kỳ diệu để khám phá và nhiều mục tiêu để vững bước chinh phục, do đó “hãy sống trong niềm vui, để hạnh phúc luôn mỉm cười”. Đó là lý do vì sao chúng ta cảm nhận được rằng FWD đang có những bước đầu rất thành công khi theo đuổi và quyết tâm thực hiện tầm nhìn “thay đổi cảm nhận của mọi người về bảo hiểm”, một chuyên gia marketing bình luận.</div>', '‘Phù thủy’ mới của làng marketing Việt Nam', 'Unilever, P&G, Vinamilk… được biết đến như những tên tuổi lớn trong làng marketing Việt Nam với những chiến dịch độc đáo, khác biệt và hấp dẫn người tiêu dùng.  ', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-07-21 09:56:36', '2018-07-21 09:56:36', '', 88, 'http://localhost/thuyvo/88-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-07-21 09:57:04', '2018-07-21 09:57:04', '<div><strong>Bị từ chối ở thị trường nội địa</strong></div>\r\n<div>Tại cuộc gặp với Chủ tịch UBND TP.HCM Nguyễn Thành Phong vào ngày 18.7, ông Đỗ Phước Tống, Chủ tịch Hội Doanh nghiệp (DN) cơ khí - điện TP.HCM, cho rằng nhiều DN nước ngoài như Samsung cũng làm khó DN trong nước.</div>\r\n<div>Trả lời Thanh Niên, ông Tống ví dụ cụ thể, Công ty cơ khí Duy Khanh là DN có tuổi đời hơn 30 năm sản xuất hàng cơ khí tại VN, trong đó đã có hơn 20 năm chuyên cung cấp các khuôn mẫu và các chi tiết máy cho nhiều tập đoàn nước ngoài, sản phẩm đã xuất khẩu đến các quốc gia Mỹ, Canada... Thế nhưng, ngay trong nước, rất nhiều lần công ty nỗ lực thi thố để có thể lọt vào danh sách nhà cung ứng cho một số tập đoàn sản xuất điện tử đến từ Hàn Quốc và Nhật Bản như Samsung, nhưng thất bại.</div>', 'Doanh nghiệp Việt bị \'gạt\' ra ngoài chuỗi giá trị: Linh kiện chạy lòng vòng', '\r\n\r\nNhiều doanh nghiệp VN bị các tập đoàn đầu tư nước ngoài (FDI) từ chối dù sản phẩm của họ đang được xuất khẩu cho nhiều khách hàng tại các nước phát triển.', 'publish', 'open', 'open', '', 'doanh-nghiep-viet-bi-gat-ra-ngoai-chuoi-gia-tri-linh-kien-chay-long-vong', '', '', '2018-07-21 09:57:04', '2018-07-21 09:57:04', '', 0, 'http://localhost/thuyvo/?p=90', 0, 'post', '', 0),
(91, 1, '2018-07-21 09:57:04', '2018-07-21 09:57:04', '<div><strong>Bị từ chối ở thị trường nội địa</strong></div>\r\n<div>Tại cuộc gặp với Chủ tịch UBND TP.HCM Nguyễn Thành Phong vào ngày 18.7, ông Đỗ Phước Tống, Chủ tịch Hội Doanh nghiệp (DN) cơ khí - điện TP.HCM, cho rằng nhiều DN nước ngoài như Samsung cũng làm khó DN trong nước.</div>\r\n<div>Trả lời Thanh Niên, ông Tống ví dụ cụ thể, Công ty cơ khí Duy Khanh là DN có tuổi đời hơn 30 năm sản xuất hàng cơ khí tại VN, trong đó đã có hơn 20 năm chuyên cung cấp các khuôn mẫu và các chi tiết máy cho nhiều tập đoàn nước ngoài, sản phẩm đã xuất khẩu đến các quốc gia Mỹ, Canada... Thế nhưng, ngay trong nước, rất nhiều lần công ty nỗ lực thi thố để có thể lọt vào danh sách nhà cung ứng cho một số tập đoàn sản xuất điện tử đến từ Hàn Quốc và Nhật Bản như Samsung, nhưng thất bại.</div>', 'Doanh nghiệp Việt bị \'gạt\' ra ngoài chuỗi giá trị: Linh kiện chạy lòng vòng', '\r\n\r\nNhiều doanh nghiệp VN bị các tập đoàn đầu tư nước ngoài (FDI) từ chối dù sản phẩm của họ đang được xuất khẩu cho nhiều khách hàng tại các nước phát triển.', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-07-21 09:57:04', '2018-07-21 09:57:04', '', 90, 'http://localhost/thuyvo/90-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(49, 1, 0),
(51, 1, 0),
(53, 1, 0),
(55, 1, 0),
(57, 1, 0),
(59, 1, 0),
(61, 1, 0),
(64, 1, 0),
(66, 1, 0),
(68, 1, 0),
(70, 1, 0),
(72, 1, 0),
(74, 1, 0),
(76, 1, 0),
(78, 1, 0),
(80, 1, 0),
(82, 1, 0),
(84, 1, 0),
(86, 1, 0),
(88, 1, 0),
(90, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 21);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'thuyvo'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"620e7dbccd214ad3e573cda6b8c55327c20334aa5b7d41669fee7027f6bcab69\";a:4:{s:10:\"expiration\";i:1533039903;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1531830303;}s:64:\"8f8891b39f8a5b018ab11edeb85cbcd787876353d452584b8e20c35002b8fc6c\";a:4:{s:10:\"expiration\";i:1532185518;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532012718;}s:64:\"0c0729f206f4269bbad672bca601307ca93abd781ef4913e0d59a20afc292f40\";a:4:{s:10:\"expiration\";i:1533297424;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532087824;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1531831807'),
(20, 1, 'wp_media_library_mode', 'grid'),
(21, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(22, 1, 'closedpostboxes_acf', 'a:1:{i:0;s:12:\"acf_location\";}'),
(23, 1, 'metaboxhidden_acf', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(24, 1, 'closedpostboxes_post', 'a:0:{}'),
(25, 1, 'metaboxhidden_post', 'a:9:{i:0;s:6:\"acf_46\";i:1;s:5:\"acf_6\";i:2;s:6:\"acf_23\";i:3;s:13:\"trackbacksdiv\";i:4;s:10:\"postcustom\";i:5;s:16:\"commentstatusdiv\";i:6;s:11:\"commentsdiv\";i:7;s:7:\"slugdiv\";i:8;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'thuyvo', '$P$BTHFt3Mh2ewnwgxnfDnIgRDSKKt6M1/', 'thuyvo', 'tmnhat1993@gmail.com', '', '2018-07-17 12:24:36', '', 0, 'thuyvo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
