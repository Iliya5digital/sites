-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: sql104.byetcluster.com
-- Время создания: Апр 28 2023 г., 05:18
-- Версия сервера: 10.4.17-MariaDB
-- Версия PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mseet_33517125_643`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wpp0_commentmeta`
--

CREATE TABLE `wpp0_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wpp0_comments`
--

CREATE TABLE `wpp0_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wpp0_comments`
--

INSERT INTO `wpp0_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-02-04 11:21:44', '2023-02-04 11:21:44', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wpp0_links`
--

CREATE TABLE `wpp0_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wpp0_options`
--

CREATE TABLE `wpp0_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wpp0_options`
--

INSERT INTO `wpp0_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://galaxytones.hstn.me', 'yes'),
(2, 'home', 'http://galaxytones.hstn.me', 'yes'),
(3, 'blogname', 'GalaxyTones', 'yes'),
(4, 'blogdescription', 'GalaxyTones music', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'y51iu3n0vv@superblohey.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:96:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'reboot', 'yes'),
(41, 'stylesheet', 'reboot', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1691061704', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wpp0_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1682522881;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1682551304;a:4:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1682551696;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1682594504;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1682594923;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1682595232;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1682853704;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1675510297;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(123, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:36:\"HTTPS запрос неудачен.\";}}', 'yes'),
(445, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1682522307;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-04-21 20:25:42\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(579, '_site_transient_timeout_theme_roots', '1682524095', 'no'),
(580, '_site_transient_theme_roots', 'a:5:{s:6:\"hueman\";s:7:\"/themes\";s:6:\"reboot\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(168, 'downloaded_font_files', 'a:31:{s:83:\"https://fonts.gstatic.com/s/inter/v12/UcC73FwrK3iLTeHuS_fvQtMwCp50KnMa2JL7SUc.woff2\";s:112:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/inter/UcC73FwrK3iLTeHuS_fvQtMwCp50KnMa2JL7SUc.woff2\";s:83:\"https://fonts.gstatic.com/s/inter/v12/UcC73FwrK3iLTeHuS_fvQtMwCp50KnMa0ZL7SUc.woff2\";s:112:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/inter/UcC73FwrK3iLTeHuS_fvQtMwCp50KnMa0ZL7SUc.woff2\";s:83:\"https://fonts.gstatic.com/s/inter/v12/UcC73FwrK3iLTeHuS_fvQtMwCp50KnMa2ZL7SUc.woff2\";s:112:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/inter/UcC73FwrK3iLTeHuS_fvQtMwCp50KnMa2ZL7SUc.woff2\";s:83:\"https://fonts.gstatic.com/s/inter/v12/UcC73FwrK3iLTeHuS_fvQtMwCp50KnMa1pL7SUc.woff2\";s:112:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/inter/UcC73FwrK3iLTeHuS_fvQtMwCp50KnMa1pL7SUc.woff2\";s:83:\"https://fonts.gstatic.com/s/inter/v12/UcC73FwrK3iLTeHuS_fvQtMwCp50KnMa2pL7SUc.woff2\";s:112:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/inter/UcC73FwrK3iLTeHuS_fvQtMwCp50KnMa2pL7SUc.woff2\";s:83:\"https://fonts.gstatic.com/s/inter/v12/UcC73FwrK3iLTeHuS_fvQtMwCp50KnMa25L7SUc.woff2\";s:112:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/inter/UcC73FwrK3iLTeHuS_fvQtMwCp50KnMa25L7SUc.woff2\";s:80:\"https://fonts.gstatic.com/s/inter/v12/UcC73FwrK3iLTeHuS_fvQtMwCp50KnMa1ZL7.woff2\";s:109:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/inter/UcC73FwrK3iLTeHuS_fvQtMwCp50KnMa1ZL7.woff2\";s:92:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIWzD-0qpwxpaWvjeD0X88SAOeauXEOrwuP-Yw.woff2\";s:123:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIWzD-0qpwxpaWvjeD0X88SAOeauXEOrwuP-Yw.woff2\";s:92:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIWzD-0qpwxpaWvjeD0X88SAOeauXEOpguP-Yw.woff2\";s:123:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIWzD-0qpwxpaWvjeD0X88SAOeauXEOpguP-Yw.woff2\";s:92:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIWzD-0qpwxpaWvjeD0X88SAOeauXEOoQuP-Yw.woff2\";s:123:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIWzD-0qpwxpaWvjeD0X88SAOeauXEOoQuP-Yw.woff2\";s:92:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIWzD-0qpwxpaWvjeD0X88SAOeauXEOrQuP-Yw.woff2\";s:123:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIWzD-0qpwxpaWvjeD0X88SAOeauXEOrQuP-Yw.woff2\";s:92:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIWzD-0qpwxpaWvjeD0X88SAOeauXEOrAuP-Yw.woff2\";s:123:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIWzD-0qpwxpaWvjeD0X88SAOeauXEOrAuP-Yw.woff2\";s:89:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIWzD-0qpwxpaWvjeD0X88SAOeauXEOoguP.woff2\";s:120:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIWzD-0qpwxpaWvjeD0X88SAOeauXEOoguP.woff2\";s:96:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIVzD-0qpwxpaWvjeD0X88SAOeauXEGfS-ay60rRrI.woff2\";s:127:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIVzD-0qpwxpaWvjeD0X88SAOeauXEGfS-ay60rRrI.woff2\";s:96:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIVzD-0qpwxpaWvjeD0X88SAOeauXEGfS-awq0rRrI.woff2\";s:127:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIVzD-0qpwxpaWvjeD0X88SAOeauXEGfS-awq0rRrI.woff2\";s:96:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIVzD-0qpwxpaWvjeD0X88SAOeauXEGfS-axa0rRrI.woff2\";s:127:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIVzD-0qpwxpaWvjeD0X88SAOeauXEGfS-axa0rRrI.woff2\";s:96:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIVzD-0qpwxpaWvjeD0X88SAOeauXEGfS-aya0rRrI.woff2\";s:127:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIVzD-0qpwxpaWvjeD0X88SAOeauXEGfS-aya0rRrI.woff2\";s:96:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIVzD-0qpwxpaWvjeD0X88SAOeauXEGfS-ayK0rRrI.woff2\";s:127:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIVzD-0qpwxpaWvjeD0X88SAOeauXEGfS-ayK0rRrI.woff2\";s:93:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIVzD-0qpwxpaWvjeD0X88SAOeauXEGfS-axq0r.woff2\";s:124:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIVzD-0qpwxpaWvjeD0X88SAOeauXEGfS-axq0r.woff2\";s:89:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIQzD-0qpwxpaWvjeD0X88SAOeauXk-oBOL.woff2\";s:120:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIQzD-0qpwxpaWvjeD0X88SAOeauXk-oBOL.woff2\";s:89:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIQzD-0qpwxpaWvjeD0X88SAOeauXA-oBOL.woff2\";s:120:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIQzD-0qpwxpaWvjeD0X88SAOeauXA-oBOL.woff2\";s:89:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIQzD-0qpwxpaWvjeD0X88SAOeauXc-oBOL.woff2\";s:120:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIQzD-0qpwxpaWvjeD0X88SAOeauXc-oBOL.woff2\";s:89:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIQzD-0qpwxpaWvjeD0X88SAOeauXs-oBOL.woff2\";s:120:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIQzD-0qpwxpaWvjeD0X88SAOeauXs-oBOL.woff2\";s:89:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIQzD-0qpwxpaWvjeD0X88SAOeauXo-oBOL.woff2\";s:120:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIQzD-0qpwxpaWvjeD0X88SAOeauXo-oBOL.woff2\";s:87:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIQzD-0qpwxpaWvjeD0X88SAOeauXQ-oA.woff2\";s:118:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIQzD-0qpwxpaWvjeD0X88SAOeauXQ-oA.woff2\";s:93:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIXzD-0qpwxpaWvjeD0X88SAOeasasatSGqxLUv.woff2\";s:124:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIXzD-0qpwxpaWvjeD0X88SAOeasasatSGqxLUv.woff2\";s:93:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIXzD-0qpwxpaWvjeD0X88SAOeasasatSiqxLUv.woff2\";s:124:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIXzD-0qpwxpaWvjeD0X88SAOeasasatSiqxLUv.woff2\";s:93:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIXzD-0qpwxpaWvjeD0X88SAOeasasatS-qxLUv.woff2\";s:124:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIXzD-0qpwxpaWvjeD0X88SAOeasasatS-qxLUv.woff2\";s:93:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIXzD-0qpwxpaWvjeD0X88SAOeasasatSOqxLUv.woff2\";s:124:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIXzD-0qpwxpaWvjeD0X88SAOeasasatSOqxLUv.woff2\";s:93:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIXzD-0qpwxpaWvjeD0X88SAOeasasatSKqxLUv.woff2\";s:124:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIXzD-0qpwxpaWvjeD0X88SAOeasasatSKqxLUv.woff2\";s:91:\"https://fonts.gstatic.com/s/sourceserifpro/v15/neIXzD-0qpwxpaWvjeD0X88SAOeasasatSyqxA.woff2\";s:122:\"/home/vol1_7/hstn.me/mseet_33517125/htdocs/wp-content//fonts/source-serif-pro/neIXzD-0qpwxpaWvjeD0X88SAOeasasatSyqxA.woff2\";}', 'no'),
(327, 'widget_realistic_login_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(328, 'widget_realistic_popular_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(329, 'widget_realistic_recent_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(330, 'widget_social-icons', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(163, 'current_theme', 'Reboot', 'yes'),
(164, 'theme_mods_oceanly-news', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1675972520;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}}}}', 'yes'),
(165, 'theme_switched', '', 'yes'),
(135, 'WPLANG', 'ru_RU', 'yes'),
(145, 'can_compress_scripts', '0', 'no'),
(365, 'theme_mods_reboot', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"header\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(366, 'theme_reboot_version', '1.4.5', 'yes'),
(367, 'reboot_license', '555555-555555-88888888888888888-8888', 'yes'),
(368, 'reboot_license_verify', '************', 'yes'),
(369, 'widget_wpshop_widget_top_commentators', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(370, 'widget_wpshop_widget_subscribe', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(371, 'widget_wpshop_widget_social_links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(372, 'widget_wpshop_widget_articles', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(583, 'auto_updater.lock', '1682522300', 'no'),
(584, 'core_updater.lock', '1682522300', 'no'),
(326, 'theme_mods_realistic', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1675972671;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(340, 'theme_mods_hueman', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"header\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1675973022;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"primary\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"secondary\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:10:\"header-ads\";a:0:{}s:10:\"footer-ads\";a:0:{}}}}', 'yes'),
(341, 'hu_theme_options', 'a:4:{s:13:\"sidebar-areas\";a:8:{i:0;a:6:{s:2:\"id\";s:7:\"primary\";s:5:\"title\";s:16:\"Основные\";s:8:\"contexts\";a:1:{i:0;s:5:\"_all_\";}s:9:\"locations\";a:1:{i:0;s:2:\"s1\";}s:10:\"is_builtin\";b:1;s:11:\"description\";s:284:\"Зона виджетов по всей ширине. Расположена в левом сайдбаре 3-колоночной разметки. Может быть справа в 2-колоночной разметке, когда контент расположен слева.\";}i:1;a:6:{s:2:\"id\";s:9:\"secondary\";s:5:\"title\";s:30:\"Вспомогательный\";s:8:\"contexts\";a:1:{i:0;s:5:\"_all_\";}s:9:\"locations\";a:1:{i:0;s:2:\"s2\";}s:10:\"is_builtin\";b:1;s:11:\"description\";s:150:\"Зона виджетов по всей ширине. Расположена в правом сайдбаре 3-колоночной разметки.\";}i:2;a:6:{s:2:\"id\";s:8:\"footer-1\";s:5:\"title\";s:25:\"Подвал сайта 1\";s:8:\"contexts\";a:1:{i:0;s:5:\"_all_\";}s:9:\"locations\";a:1:{i:0;s:8:\"footer-1\";}s:10:\"is_builtin\";b:1;s:11:\"description\";s:47:\"Подвал сайта с виджетами 1\";}i:3;a:6:{s:2:\"id\";s:8:\"footer-2\";s:5:\"title\";s:25:\"Подвал сайта 2\";s:8:\"contexts\";a:1:{i:0;s:5:\"_all_\";}s:9:\"locations\";a:1:{i:0;s:8:\"footer-2\";}s:10:\"is_builtin\";b:1;s:11:\"description\";s:47:\"Подвал сайта с виджетами 2\";}i:4;a:6:{s:2:\"id\";s:8:\"footer-3\";s:5:\"title\";s:25:\"Подвал сайта 3\";s:8:\"contexts\";a:1:{i:0;s:5:\"_all_\";}s:9:\"locations\";a:1:{i:0;s:8:\"footer-3\";}s:10:\"is_builtin\";b:1;s:11:\"description\";s:47:\"Подвал сайта с виджетами 3\";}i:5;a:6:{s:2:\"id\";s:8:\"footer-4\";s:5:\"title\";s:25:\"Подвал сайта 4\";s:8:\"contexts\";a:1:{i:0;s:5:\"_all_\";}s:9:\"locations\";a:1:{i:0;s:8:\"footer-4\";}s:10:\"is_builtin\";b:1;s:11:\"description\";s:50:\"Подвал сайта с виджетами №4\";}i:6;a:6:{s:2:\"id\";s:10:\"header-ads\";s:5:\"title\";s:75:\"Шапка сайта (рядом с логотипом/названием)\";s:8:\"contexts\";a:1:{i:0;s:5:\"_all_\";}s:9:\"locations\";a:1:{i:0;s:10:\"header-ads\";}s:10:\"is_builtin\";b:1;s:11:\"description\";s:126:\"Эта зона находится в шапке сайта рядом с логотипом и описанием сайта.\";}i:7;a:6:{s:2:\"id\";s:10:\"footer-ads\";s:5:\"title\";s:50:\"Подвал сайта по всей ширине\";s:8:\"contexts\";a:1:{i:0;s:5:\"_all_\";}s:9:\"locations\";a:1:{i:0;s:10:\"footer-ads\";}s:10:\"is_builtin\";b:1;s:11:\"description\";s:305:\"Зона виджетов в нижней части сайта расположена перед другими виджетами колонтитула и занимает 100% ширины. Она хорошо подходит для вывода Google Map или рекламного баннера.\";}}s:15:\"has_been_copied\";b:1;s:8:\"defaults\";a:115:{s:7:\"favicon\";N;s:20:\"display-header-title\";b:1;s:19:\"display-header-logo\";b:0;s:18:\"mobile-header-logo\";N;s:15:\"logo-max-height\";i:60;s:13:\"wrap_in_h_one\";b:1;s:20:\"disable_google_fonts\";b:0;s:4:\"font\";s:13:\"titillium-web\";s:14:\"body-font-size\";i:16;s:15:\"container-width\";i:1380;s:5:\"boxed\";b:0;s:15:\"sidebar-padding\";s:2:\"30\";s:7:\"color-1\";s:7:\"#16cfc1\";s:7:\"color-2\";s:7:\"#efb93f\";s:15:\"body-background\";a:1:{s:16:\"background-color\";s:7:\"#eaeaea\";}s:19:\"image-border-radius\";i:0;s:16:\"links_underlined\";b:1;s:14:\"ext_link_style\";b:0;s:15:\"ext_link_target\";b:0;s:13:\"post-comments\";b:1;s:13:\"page-comments\";b:0;s:10:\"responsive\";b:1;s:7:\"fittext\";b:0;s:21:\"attachments-in-search\";b:0;s:12:\"social-links\";a:0:{}s:12:\"minified-css\";b:1;s:15:\"structured-data\";b:1;s:14:\"smart_load_img\";b:0;s:16:\"js-mobile-detect\";b:0;s:18:\"defer_front_script\";b:0;s:18:\"defer_font_awesome\";b:0;s:10:\"about-page\";b:1;s:11:\"help-button\";b:1;s:16:\"site-description\";b:1;s:30:\"user-header-bg-color-important\";b:0;s:12:\"color-topbar\";s:7:\"#121d30\";s:12:\"color-header\";s:7:\"#454e5c\";s:17:\"color-header-menu\";s:7:\"#454e5c\";s:17:\"color-mobile-menu\";s:7:\"#454e5c\";s:24:\"transparent-fixed-topnav\";b:1;s:16:\"use-header-image\";b:0;s:21:\"header-img-full-width\";b:1;s:25:\"header-img-natural-height\";b:0;s:20:\"header-img-link-home\";b:1;s:26:\"logo-title-on-header-image\";b:0;s:10:\"header-ads\";b:0;s:18:\"header-ads-desktop\";b:1;s:17:\"header-ads-mobile\";b:0;s:19:\"default-menu-header\";b:0;s:21:\"header-desktop-sticky\";s:8:\"stick_up\";s:14:\"desktop-search\";s:6:\"topbar\";s:25:\"header_mobile_menu_layout\";s:8:\"top_menu\";s:20:\"header-mobile-sticky\";s:8:\"stick_up\";s:17:\"header_mobile_btn\";s:8:\"animated\";s:20:\"mobile-submenu-click\";b:1;s:13:\"mobile-search\";b:1;s:20:\"blog-heading-enabled\";b:1;s:12:\"blog-heading\";s:11:\"GalaxyTones\";s:15:\"blog-subheading\";s:8:\"Блог\";s:20:\"blog-restrict-by-cat\";a:0:{}s:13:\"blog-standard\";b:0;s:26:\"blog-standard-full-content\";b:0;s:24:\"blog-standard-show-thumb\";b:1;s:28:\"blog-use-original-image-size\";b:0;s:14:\"excerpt-length\";i:34;s:23:\"archive-title-with-icon\";b:1;s:22:\"featured-posts-enabled\";b:1;s:17:\"featured-category\";s:1:\"0\";s:20:\"featured-posts-count\";i:1;s:27:\"featured-posts-full-content\";b:0;s:18:\"featured-slideshow\";b:0;s:24:\"featured-slideshow-speed\";i:5000;s:22:\"featured-posts-include\";b:0;s:23:\"post-list-meta-category\";b:1;s:19:\"post-list-meta-date\";b:1;s:21:\"post-list-meta-author\";b:0;s:28:\"singular-page-featured-image\";b:0;s:30:\"singular-page-cropped-feat-img\";b:0;s:10:\"author-bio\";b:1;s:28:\"singular-post-featured-image\";b:0;s:30:\"singular-post-cropped-feat-img\";b:0;s:13:\"related-posts\";s:10:\"categories\";s:8:\"post-nav\";s:2:\"s1\";s:9:\"post-tags\";b:1;s:16:\"post-meta-author\";b:1;s:14:\"post-meta-date\";b:1;s:11:\"placeholder\";b:1;s:13:\"comment-count\";b:1;s:13:\"layout-global\";s:7:\"col-3cm\";s:19:\"force-layout-global\";b:0;s:11:\"layout-home\";s:7:\"inherit\";s:13:\"layout-single\";s:7:\"inherit\";s:14:\"layout-archive\";s:7:\"inherit\";s:23:\"layout-archive-category\";s:7:\"inherit\";s:13:\"layout-search\";s:7:\"inherit\";s:10:\"layout-404\";s:7:\"inherit\";s:11:\"layout-page\";s:7:\"inherit\";s:11:\"sidebar-top\";b:1;s:15:\"primary-sb-text\";s:29:\"Следите за нами:\";s:17:\"secondary-sb-text\";s:6:\"Ещё\";s:18:\"sidebar-background\";s:7:\"#f0f0f0\";s:17:\"desktop-sticky-sb\";b:0;s:16:\"mobile-sticky-sb\";b:0;s:19:\"mobile-sidebar-hide\";s:1:\"1\";s:28:\"mobile-sidebar-primary-first\";b:0;s:13:\"sl-in-sidebar\";b:1;s:10:\"footer-ads\";b:0;s:19:\"default-menu-footer\";b:0;s:14:\"footer-widgets\";s:1:\"3\";s:11:\"footer-logo\";N;s:12:\"color-footer\";s:7:\"#33363b\";s:9:\"copyright\";s:67:\"{{site_title}} &copy; {{year}}. Все права защищены.\";s:6:\"credit\";b:1;s:12:\"sl-in-footer\";b:1;s:3:\"ver\";s:6:\"3.7.23\";}s:18:\"last_update_notice\";a:2:{s:7:\"version\";s:6:\"3.7.23\";s:13:\"display_count\";i:0;}}', 'yes'),
(342, '_transient_timeout_started_using_hueman', '1991332671', 'no'),
(343, '_transient_started_using_hueman', 'with|3.7.23', 'no'),
(344, 'widget_alxtabs', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(345, 'widget_alxvideo', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(346, 'widget_alxposts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(347, '_transient_timeout__hu_sidebar_backup', '2306692671', 'no'),
(348, '_transient__hu_sidebar_backup', 'a:0:{}', 'no'),
(159, 'finished_updating_comment_type', '1', 'yes'),
(175, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(585, '_site_transient_timeout_php_check_3dbf48b9658abaee82651209c2ca7be3', '1683127157', 'no'),
(586, '_site_transient_php_check_3dbf48b9658abaee82651209c2ca7be3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(587, '_transient_timeout_global_styles_reboot', '1682522417', 'no');
INSERT INTO `wpp0_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(588, '_transient_global_styles_reboot', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 19.5px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36.5px;--wp--preset--font-size--x-large: 42px;--wp--preset--font-size--normal: 22px;--wp--preset--font-size--huge: 49.5px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(589, '_transient_timeout_global_styles_svg_filters_reboot', '1682522417', 'no'),
(590, '_transient_global_styles_svg_filters_reboot', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.498039215686\" /><feFuncG type=\"table\" tableValues=\"0 0.498039215686\" /><feFuncB type=\"table\" tableValues=\"0 0.498039215686\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.549019607843 0.988235294118\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.717647058824 0.254901960784\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.278431372549\" /><feFuncB type=\"table\" tableValues=\"0.592156862745 0.278431372549\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.647058823529\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.780392156863 1\" /><feFuncG type=\"table\" tableValues=\"0 0.949019607843\" /><feFuncB type=\"table\" tableValues=\"0.352941176471 0.470588235294\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.650980392157 0.403921568627\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.447058823529 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.0980392156863 1\" /><feFuncG type=\"table\" tableValues=\"0 0.662745098039\" /><feFuncB type=\"table\" tableValues=\"0.847058823529 0.419607843137\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no'),
(193, 'category_children', 'a:0:{}', 'yes'),
(194, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(261, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":6,\"critical\":0}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wpp0_postmeta`
--

CREATE TABLE `wpp0_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wpp0_postmeta`
--

INSERT INTO `wpp0_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(226, 81, 'views', '1'),
(6, 7, '_edit_lock', '1675510565:1'),
(7, 7, '_edit_last', '1'),
(8, 7, 'oceanly_settings', 'a:1:{s:17:\"hide_header_title\";b:0;}'),
(9, 10, '_menu_item_type', 'post_type'),
(10, 10, '_menu_item_menu_item_parent', '0'),
(11, 10, '_menu_item_object_id', '7'),
(12, 10, '_menu_item_object', 'page'),
(13, 10, '_menu_item_target', ''),
(14, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(15, 10, '_menu_item_xfn', ''),
(16, 10, '_menu_item_url', ''),
(228, 16, 'views', '1'),
(227, 87, 'views', '3'),
(24, 14, '_wp_attached_file', '2023/02/GalaxyTones-Afterlife-Chillstep-1.mp3'),
(25, 14, '_wp_attachment_metadata', 'a:18:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";d:128011.982345760174212045967578887939453125;s:11:\"channelmode\";s:6:\"stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR128\";s:17:\"compression_ratio\";d:0.09071143873707494809099927124407258816063404083251953125;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:4451412;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:278;s:16:\"length_formatted\";s:4:\"4:38\";s:4:\"text\";s:4:\"isom\";s:16:\"encoder_settings\";s:13:\"Lavf59.27.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(23, 13, '_edit_lock', '1675511510:1'),
(28, 13, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-Afterlife-Chillstep-1.mp3\n4451412\naudio/mpeg\n'),
(29, 16, '_edit_lock', '1675511652:1'),
(30, 17, '_wp_attached_file', '2023/02/Audio-Library-—-Music-for-content-creators-—-Dreaming-Journey-–-GalaxyTones.mp3'),
(31, 17, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";d:230784.96548197392257861793041229248046875;s:12:\"bitrate_mode\";s:3:\"vbr\";s:11:\"channelmode\";s:12:\"joint stereo\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:3:\"VBR\";s:17:\"compression_ratio\";d:0.163538099122713942445983548168442212045192718505859375;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:5889313;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:204;s:16:\"length_formatted\";s:4:\"3:24\";s:16:\"encoder_settings\";s:13:\"Lavf58.20.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(34, 16, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Audio-Library-—-Music-for-content-creators-—-Dreaming-Journey-–-GalaxyTones.mp3\n5889313\naudio/mpeg\n'),
(35, 19, '_edit_lock', '1675511750:1'),
(36, 20, '_wp_attached_file', '2023/02/Abandoned-GalaxyTones-Mendum-feat.-DNAKM-—-Luna.mp3'),
(37, 20, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:8230706;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:206;s:16:\"length_formatted\";s:4:\"3:26\";s:16:\"encoder_settings\";s:13:\"Lavf58.20.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(41, 19, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-Mendum-feat.-DNAKM-—-Luna.mp3\n8230706\naudio/mpeg\n'),
(40, 22, '_edit_lock', '1675511856:1'),
(42, 23, '_wp_attached_file', '2023/02/GalaxyTones-—-Bright-Futures-chill-downtempo-ambient.mp3'),
(43, 23, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";d:246464.89350861101411283016204833984375;s:12:\"bitrate_mode\";s:3:\"vbr\";s:11:\"channelmode\";s:12:\"joint stereo\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:3:\"VBR\";s:17:\"compression_ratio\";d:0.1746491592322923780411514371735393069684505462646484375;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:7890710;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:256;s:16:\"length_formatted\";s:4:\"4:16\";s:16:\"encoder_settings\";s:13:\"Lavf58.76.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(47, 22, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Bright-Futures-chill-downtempo-ambient.mp3\n7890710\naudio/mpeg\n'),
(46, 25, '_edit_lock', '1675511926:1'),
(48, 26, '_wp_attached_file', '2023/02/Audio-Library-—-Music-for-content-creators-—-Feel-It-Now-–-GalaxyTones-No-Copyright-Music.mp3'),
(49, 26, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";d:229049.7664026000420562922954559326171875;s:12:\"bitrate_mode\";s:3:\"vbr\";s:11:\"channelmode\";s:12:\"joint stereo\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:3:\"VBR\";s:17:\"compression_ratio\";d:0.1623085079383503603889238320334698073565959930419921875;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:7357987;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:257;s:16:\"length_formatted\";s:4:\"4:17\";s:16:\"encoder_settings\";s:13:\"Lavf58.76.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(53, 25, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Audio-Library-—-Music-for-content-creators-—-Feel-It-Now-–-GalaxyTones-No-Copyright-Music.mp3\n7357987\naudio/mpeg\n'),
(52, 28, '_edit_lock', '1675512125:1'),
(54, 20, '_wp_old_slug', 'abandoned-galaxytones-mendum-feat-dnakm-luna'),
(57, 28, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-Mendum-feat.-DNAKM-—-Luna.mp3\n8230706\naudio/mpeg\n'),
(58, 30, '_edit_lock', '1675512282:1'),
(59, 31, '_wp_attached_file', '2023/02/Abandoned-GalaxyTones-—-Luna-Feat.-DNAKM-NCS-Release.mp3'),
(60, 31, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";d:227845.15458560665138065814971923828125;s:12:\"bitrate_mode\";s:3:\"vbr\";s:11:\"channelmode\";s:12:\"joint stereo\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:3:\"VBR\";s:17:\"compression_ratio\";d:0.16145489979138794023327818649704568088054656982421875;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:5722501;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:201;s:16:\"length_formatted\";s:4:\"3:21\";s:16:\"encoder_settings\";s:13:\"Lavf58.76.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(64, 30, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-—-Luna-Feat.-DNAKM-NCS-Release.mp3\n5722501\naudio/mpeg\n'),
(63, 33, '_edit_lock', '1675512356:1'),
(65, 34, '_wp_attached_file', '2023/02/Abandoned-GalaxyTones-Mendum-DNAKM-—-Luna-Mendum-Remix.mp3'),
(66, 34, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:8230706;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:206;s:16:\"length_formatted\";s:4:\"3:26\";s:16:\"encoder_settings\";s:13:\"Lavf58.76.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(70, 33, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-Mendum-DNAKM-—-Luna-Mendum-Remix.mp3\n8230706\naudio/mpeg\n'),
(69, 36, '_edit_lock', '1675512436:1'),
(71, 37, '_wp_attached_file', '2023/02/GalaxyTones-DNAKM-—-Gold.mp3'),
(72, 37, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:10437530;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:261;s:16:\"length_formatted\";s:4:\"4:21\";s:16:\"encoder_settings\";s:13:\"Lavf58.20.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(76, 36, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-DNAKM-—-Gold.mp3\n10437530\naudio/mpeg\n'),
(75, 39, '_edit_lock', '1675512501:1'),
(77, 40, '_wp_attached_file', '2023/02/GalaxyTones-—-Wide-Awake-feat.-Dianna.mp3'),
(78, 40, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:8966314;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:224;s:16:\"length_formatted\";s:4:\"3:44\";s:16:\"encoder_settings\";s:13:\"Lavf58.20.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(82, 39, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Wide-Awake-feat.-Dianna.mp3\n8966314\naudio/mpeg\n'),
(81, 42, '_edit_lock', '1675512589:1'),
(83, 43, '_wp_attached_file', '2023/02/Abandoned-GalaxyTones-—-Luna-Feat.-DNAKM-Mendum-Remix.mp3'),
(84, 43, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:48000;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.2083333333333333425851918718763045035302639007568359375;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:7067565;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:177;s:16:\"length_formatted\";s:4:\"2:57\";s:16:\"encoder_settings\";s:13:\"Lavf58.20.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(88, 42, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-—-Luna-Feat.-DNAKM-Mendum-Remix.mp3\n7067565\naudio/mpeg\n'),
(87, 45, '_edit_lock', '1675512664:1'),
(89, 46, '_wp_attached_file', '2023/02/GalaxyTones-Elvya-—-Eldhrimner.mp3'),
(90, 46, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:7699898;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:192;s:16:\"length_formatted\";s:4:\"3:12\";s:16:\"encoder_settings\";s:13:\"Lavf58.76.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(94, 45, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-Elvya-—-Eldhrimner.mp3\n7699898\naudio/mpeg\n'),
(93, 48, '_edit_lock', '1675512738:1'),
(95, 49, '_wp_attached_file', '2023/02/InfiNoise-GalaxyTones-—-Andromeda.mp3'),
(96, 49, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:48000;s:7:\"bitrate\";d:298128.87926590372808277606964111328125;s:12:\"bitrate_mode\";s:3:\"vbr\";s:11:\"channelmode\";s:12:\"joint stereo\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:3:\"VBR\";s:17:\"compression_ratio\";d:0.194094322438739419478537229224457405507564544677734375;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:8674701;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:233;s:16:\"length_formatted\";s:4:\"3:53\";s:16:\"encoder_settings\";s:13:\"Lavf58.20.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(99, 48, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/InfiNoise-GalaxyTones-—-Andromeda.mp3\n8674701\naudio/mpeg\n'),
(100, 51, '_edit_lock', '1675512856:1'),
(101, 52, '_wp_attached_file', '2023/02/Abandoned-GalaxyTones-—-Luna-feat.-DNAKM-Mendum-RemixNightCore.mp3'),
(102, 52, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:48000;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.2083333333333333425851918718763045035302639007568359375;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:7099245;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:177;s:16:\"length_formatted\";s:4:\"2:57\";s:16:\"encoder_settings\";s:13:\"Lavf58.76.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(105, 51, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-—-Luna-feat.-DNAKM-Mendum-RemixNightCore.mp3\n7099245\naudio/mpeg\n'),
(106, 54, '_edit_lock', '1675512932:1'),
(107, 55, '_wp_attached_file', '2023/02/Mendum-Abandoned-GalaxyTones-feat.-DNAKM-—-Luna.mp3'),
(108, 55, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:8230706;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:206;s:16:\"length_formatted\";s:4:\"3:26\";s:16:\"encoder_settings\";s:13:\"Lavf58.20.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(112, 54, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Mendum-Abandoned-GalaxyTones-feat.-DNAKM-—-Luna.mp3\n8230706\naudio/mpeg\n'),
(111, 57, '_edit_lock', '1675513001:1'),
(113, 58, '_wp_attached_file', '2023/02/Abandoned-GalaxyTones-—-Luna-feat.-Dnakm.mp3'),
(114, 58, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:8026951;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:201;s:16:\"length_formatted\";s:4:\"3:21\";s:16:\"encoder_settings\";s:13:\"Lavf58.20.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(118, 57, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-—-Luna-feat.-Dnakm.mp3\n8026951\naudio/mpeg\n'),
(117, 60, '_edit_lock', '1675513078:1'),
(119, 61, '_wp_attached_file', '2023/02/Abandoned-GalaxyTones-Mendum-feat.-DNAKM-—-Luna-Mendum-Remix-Instrumental.mp3'),
(120, 61, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:192000;s:11:\"channelmode\";s:6:\"stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR192\";s:17:\"compression_ratio\";d:0.1360544217687074952660708504481590352952480316162109375;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:4939068;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:206;s:16:\"length_formatted\";s:4:\"3:26\";s:16:\"encoder_settings\";s:13:\"Lavf58.76.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(124, 60, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-Mendum-feat.-DNAKM-—-Luna-Mendum-Remix-Instrumental.mp3\n4939068\naudio/mpeg\n'),
(123, 63, '_edit_lock', '1675513155:1'),
(125, 64, '_wp_attached_file', '2023/02/GalaxyTones-—-Oceans.mp3'),
(126, 64, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:9144992;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:229;s:16:\"length_formatted\";s:4:\"3:49\";s:16:\"encoder_settings\";s:13:\"Lavf58.76.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(130, 63, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Oceans.mp3\n9144992\naudio/mpeg\n'),
(129, 66, '_edit_lock', '1675513230:1'),
(131, 67, '_wp_attached_file', '2023/02/GalaxyTones-—-Floating.mp3'),
(132, 67, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:6634102;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:166;s:16:\"length_formatted\";s:4:\"2:46\";s:16:\"encoder_settings\";s:13:\"Lavf58.20.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(136, 66, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Floating.mp3\n6634102\naudio/mpeg\n'),
(135, 69, '_edit_lock', '1675513303:1'),
(137, 70, '_wp_attached_file', '2023/02/GalaxyTones-—-Lost-City.mp3'),
(138, 70, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:9144992;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:229;s:16:\"length_formatted\";s:4:\"3:49\";s:16:\"encoder_settings\";s:13:\"Lavf58.76.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(142, 69, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Lost-City.mp3\n9144992\naudio/mpeg\n'),
(141, 72, '_edit_lock', '1675513400:1'),
(143, 73, '_wp_attached_file', '2023/02/GalaxyTones-—-Dreaming-Journey.mp3'),
(144, 73, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:8161743;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:204;s:16:\"length_formatted\";s:4:\"3:24\";s:16:\"encoder_settings\";s:13:\"Lavf58.76.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(148, 72, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Dreaming-Journey.mp3\n8161743\naudio/mpeg\n'),
(147, 75, '_edit_lock', '1675513490:1'),
(149, 76, '_wp_attached_file', '2023/02/GalaxyTones-—-Mystery.mp3'),
(150, 76, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:10148094;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:254;s:16:\"length_formatted\";s:4:\"4:14\";s:16:\"encoder_settings\";s:13:\"Lavf58.76.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(154, 75, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Mystery.mp3\n10148094\naudio/mpeg\n'),
(153, 78, '_edit_lock', '1675513570:1'),
(155, 79, '_wp_attached_file', '2023/02/GalaxyTones-—-Stellar-Hills.mp3'),
(156, 79, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:8412518;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:210;s:16:\"length_formatted\";s:4:\"3:30\";s:16:\"encoder_settings\";s:13:\"Lavf58.76.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(160, 78, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Stellar-Hills.mp3\n8412518\naudio/mpeg\n'),
(159, 81, '_edit_lock', '1675513653:1'),
(161, 82, '_wp_attached_file', '2023/02/GalaxyTones-—-Sickness.mp3'),
(162, 82, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:9288143;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:232;s:16:\"length_formatted\";s:4:\"3:52\";s:16:\"encoder_settings\";s:13:\"Lavf58.76.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(166, 81, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Sickness.mp3\n9288143\naudio/mpeg\n'),
(165, 84, '_edit_lock', '1675513732:1'),
(167, 85, '_wp_attached_file', '2023/02/GalaxyTones-—-In-Your-Eyes.mp3'),
(168, 85, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:6869204;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:172;s:16:\"length_formatted\";s:4:\"2:52\";s:16:\"encoder_settings\";s:13:\"Lavf58.76.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(172, 84, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-In-Your-Eyes.mp3\n6869204\naudio/mpeg\n'),
(171, 87, '_edit_lock', '1675513868:1'),
(173, 88, '_wp_attached_file', '2023/02/GalaxyTones-—-Synesthesia.mp3'),
(174, 88, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:7843049;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:196;s:16:\"length_formatted\";s:4:\"3:16\";s:16:\"encoder_settings\";s:13:\"Lavf58.20.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(177, 87, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Synesthesia.mp3\n7843049\naudio/mpeg\n'),
(178, 90, '_edit_lock', '1675513945:1'),
(179, 91, '_wp_attached_file', '2023/02/GalaxyTones-—-Bright-Futures.mp3'),
(180, 91, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:10249449;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:256;s:16:\"length_formatted\";s:4:\"4:16\";s:16:\"encoder_settings\";s:13:\"Lavf58.20.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(183, 90, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Bright-Futures.mp3\n10249449\naudio/mpeg\n'),
(187, 94, '_wp_attached_file', '2023/02/GalaxyTones-—-Far-from-Here-1.mp3'),
(186, 93, '_edit_lock', '1675514115:1'),
(188, 94, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";d:128012.530065776561968959867954254150390625;s:11:\"channelmode\";s:6:\"stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR128\";s:17:\"compression_ratio\";d:0.0907118268606693367583915232899016700685024261474609375;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:4257794;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:266;s:16:\"length_formatted\";s:4:\"4:26\";s:16:\"encoder_settings\";s:13:\"Lavf59.27.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(191, 93, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Far-from-Here-1.mp3\n4257794\naudio/mpeg\n'),
(192, 96, '_edit_lock', '1675514231:1'),
(193, 97, '_wp_attached_file', '2023/02/GalaxyTones-—-Feel-It-Now.mp3'),
(194, 97, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:10264077;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:257;s:16:\"length_formatted\";s:4:\"4:17\";s:16:\"encoder_settings\";s:13:\"Lavf58.20.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(197, 96, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Feel-It-Now.mp3\n10264077\naudio/mpeg\n'),
(198, 99, '_edit_lock', '1675514329:1'),
(199, 100, '_wp_attached_file', '2023/02/Abandoned-GalaxyTones-DNAKM-—-Luna.mp3'),
(200, 100, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:8026951;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:201;s:16:\"length_formatted\";s:4:\"3:21\";s:16:\"encoder_settings\";s:13:\"Lavf58.76.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(204, 99, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-DNAKM-—-Luna.mp3\n8026951\naudio/mpeg\n'),
(203, 102, '_edit_lock', '1675514415:1'),
(205, 103, '_wp_attached_file', '2023/02/GalaxyTones-feat.-Dianna-—-Wide-Awake.mp3'),
(206, 103, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:8966314;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:224;s:16:\"length_formatted\";s:4:\"3:44\";s:16:\"encoder_settings\";s:13:\"Lavf58.20.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(210, 102, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-feat.-Dianna-—-Wide-Awake.mp3\n8966314\naudio/mpeg\n'),
(209, 105, '_edit_lock', '1675514501:1'),
(211, 106, '_wp_attached_file', '2023/02/Неизвестен-—-Abandoned-GalaxyTones-Luna-Feat.-DNAKM-NCS-Release.mp3'),
(212, 106, '_wp_attachment_metadata', 'a:17:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:48000;s:7:\"bitrate\";i:256000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR256\";s:17:\"compression_ratio\";d:0.1666666666666666574148081281236954964697360992431640625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:6433581;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:201;s:16:\"length_formatted\";s:4:\"3:21\";s:16:\"encoder_settings\";s:13:\"Lavf58.76.100\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(215, 105, 'enclosure', 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Неизвестен-—-Abandoned-GalaxyTones-Luna-Feat.-DNAKM-NCS-Release.mp3\n6433581\naudio/mpeg\n'),
(224, 7, 'views', '2'),
(225, 105, 'views', '8');

-- --------------------------------------------------------

--
-- Структура таблицы `wpp0_posts`
--

CREATE TABLE `wpp0_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wpp0_posts`
--

INSERT INTO `wpp0_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-02-04 11:21:44', '2023-02-04 11:21:44', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-02-04 11:21:44', '2023-02-04 11:21:44', '', 0, 'http://galaxytones.hstn.me/?p=1', 0, 'post', '', 1),
(2, 1, '2023-02-04 11:21:44', '2023-02-04 11:21:44', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://galaxytones.hstn.me/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-02-04 11:21:44', '2023-02-04 11:21:44', '', 0, 'http://galaxytones.hstn.me/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-02-04 11:21:44', '2023-02-04 11:21:44', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://galaxytones.hstn.me.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-02-04 11:21:44', '2023-02-04 11:21:44', '', 0, 'http://galaxytones.hstn.me/?page_id=3', 0, 'page', '', 0),
(7, 1, '2023-02-04 11:36:04', '2023-02-04 11:36:04', '<!-- wp:paragraph -->\n<p>GalaxyTones is a Chill/Downtempo music producer and is best known as a Chill Bass composer specializing in atmospheric space theme music.</p>\n<!-- /wp:paragraph -->', 'About GalaxyTones', '', 'publish', 'closed', 'closed', '', 'about-galaxytones', '', '', '2023-02-04 11:36:05', '2023-02-04 11:36:05', '', 0, 'http://galaxytones.hstn.me/?page_id=7', 0, 'page', '', 0),
(8, 1, '2023-02-04 11:36:04', '2023-02-04 11:36:04', '<!-- wp:paragraph -->\n<p>GalaxyTones is a Chill/Downtempo music producer and is best known as a Chill Bass composer specializing in atmospheric space theme music.</p>\n<!-- /wp:paragraph -->', 'About GalaxyTones', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-02-04 11:36:04', '2023-02-04 11:36:04', '', 7, 'http://galaxytones.hstn.me/?p=8', 0, 'revision', '', 0),
(10, 1, '2023-02-04 11:36:37', '2023-02-04 11:36:37', ' ', '', '', 'publish', 'closed', 'closed', '', '10', '', '', '2023-02-04 11:36:37', '2023-02-04 11:36:37', '', 0, 'http://galaxytones.hstn.me/2023/02/04/10/', 1, 'nav_menu_item', '', 0),
(13, 1, '2023-02-04 11:52:43', '2023-02-04 11:52:43', '<!-- wp:audio {\"id\":14} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-Afterlife-Chillstep-1.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones - Afterlife', '', 'publish', 'open', 'open', '', 'galaxytones-afterlife', '', '', '2023-02-04 11:52:43', '2023-02-04 11:52:43', '', 0, 'http://galaxytones.hstn.me/?p=13', 0, 'post', '', 0),
(14, 1, '2023-02-04 11:52:07', '2023-02-04 11:52:07', '«GalaxyTones - Afterlife - Chillstep (1)».', 'GalaxyTones - Afterlife - Chillstep (1)', '', 'inherit', 'open', 'closed', '', 'galaxytones-afterlife-chillstep-1', '', '', '2023-02-04 11:52:12', '2023-02-04 11:52:12', '', 13, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-Afterlife-Chillstep-1.mp3', 0, 'attachment', 'audio/mpeg', 0),
(15, 1, '2023-02-04 11:52:43', '2023-02-04 11:52:43', '<!-- wp:audio {\"id\":14} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-Afterlife-Chillstep-1.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones - Afterlife', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-02-04 11:52:43', '2023-02-04 11:52:43', '', 13, 'http://galaxytones.hstn.me/?p=15', 0, 'revision', '', 0),
(16, 1, '2023-02-04 11:54:34', '2023-02-04 11:54:34', '<!-- wp:audio {\"id\":17} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Audio-Library-—-Music-for-content-creators-—-Dreaming-Journey-–-GalaxyTones.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Dreaming Journey – GalaxyTones', '', 'publish', 'open', 'open', '', 'dreaming-journey-galaxytones', '', '', '2023-02-04 11:54:34', '2023-02-04 11:54:34', '', 0, 'http://galaxytones.hstn.me/?p=16', 0, 'post', '', 0),
(17, 1, '2023-02-04 11:54:22', '2023-02-04 11:54:22', '«Audio Library — Music for content creators — Dreaming Journey – GalaxyTones».', 'Audio Library — Music for content creators — Dreaming Journey – GalaxyTones', '', 'inherit', 'open', 'closed', '', 'audio-library-music-for-content-creators-dreaming-journey-galaxytones', '', '', '2023-02-04 11:54:27', '2023-02-04 11:54:27', '', 16, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Audio-Library-—-Music-for-content-creators-—-Dreaming-Journey-–-GalaxyTones.mp3', 0, 'attachment', 'audio/mpeg', 0),
(18, 1, '2023-02-04 11:54:34', '2023-02-04 11:54:34', '<!-- wp:audio {\"id\":17} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Audio-Library-—-Music-for-content-creators-—-Dreaming-Journey-–-GalaxyTones.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Dreaming Journey – GalaxyTones', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-02-04 11:54:34', '2023-02-04 11:54:34', '', 16, 'http://galaxytones.hstn.me/?p=18', 0, 'revision', '', 0),
(19, 1, '2023-02-04 11:56:29', '2023-02-04 11:56:29', '<!-- wp:audio {\"id\":20} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-Mendum-feat.-DNAKM-—-Luna.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned, GalaxyTones, Mendum feat. DNAKM — Luna', '', 'publish', 'open', 'open', '', 'abandoned-galaxytones-mendum-feat-dnakm-luna', '', '', '2023-02-04 11:56:29', '2023-02-04 11:56:29', '', 0, 'http://galaxytones.hstn.me/?p=19', 0, 'post', '', 0),
(20, 1, '2023-02-04 11:56:18', '2023-02-04 11:56:18', '«Abandoned, GalaxyTones, Mendum feat. DNAKM — Luna».', 'Abandoned, GalaxyTones, Mendum feat. DNAKM — Luna', '', 'inherit', 'open', 'closed', '', 'abandoned-galaxytones-mendum-feat-dnakm-luna-2', '', '', '2023-02-04 12:01:51', '2023-02-04 12:01:51', '', 19, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-Mendum-feat.-DNAKM-—-Luna.mp3', 0, 'attachment', 'audio/mpeg', 0),
(21, 1, '2023-02-04 11:56:29', '2023-02-04 11:56:29', '<!-- wp:audio {\"id\":20} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-Mendum-feat.-DNAKM-—-Luna.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned, GalaxyTones, Mendum feat. DNAKM — Luna', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-02-04 11:56:29', '2023-02-04 11:56:29', '', 19, 'http://galaxytones.hstn.me/?p=21', 0, 'revision', '', 0),
(22, 1, '2023-02-04 11:57:41', '2023-02-04 11:57:41', '<!-- wp:audio {\"id\":23} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Bright-Futures-chill-downtempo-ambient.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Bright Futures', '', 'publish', 'open', 'open', '', 'galaxytones-bright-futures', '', '', '2023-02-04 11:57:41', '2023-02-04 11:57:41', '', 0, 'http://galaxytones.hstn.me/?p=22', 0, 'post', '', 0),
(23, 1, '2023-02-04 11:57:22', '2023-02-04 11:57:22', '«GalaxyTones — Bright Futures [chill downtempo ambient]».', 'GalaxyTones — Bright Futures [chill downtempo ambient]', '', 'inherit', 'open', 'closed', '', 'galaxytones-bright-futures-chill-downtempo-ambient', '', '', '2023-02-04 11:57:26', '2023-02-04 11:57:26', '', 22, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Bright-Futures-chill-downtempo-ambient.mp3', 0, 'attachment', 'audio/mpeg', 0),
(24, 1, '2023-02-04 11:57:41', '2023-02-04 11:57:41', '<!-- wp:audio {\"id\":23} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Bright-Futures-chill-downtempo-ambient.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Bright Futures', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-02-04 11:57:41', '2023-02-04 11:57:41', '', 22, 'http://galaxytones.hstn.me/?p=24', 0, 'revision', '', 0),
(25, 1, '2023-02-04 11:58:56', '2023-02-04 11:58:56', '<!-- wp:audio {\"id\":26} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Audio-Library-—-Music-for-content-creators-—-Feel-It-Now-–-GalaxyTones-No-Copyright-Music.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Feel It Now – GalaxyTones', '', 'publish', 'open', 'open', '', 'feel-it-now-galaxytones', '', '', '2023-02-04 11:58:56', '2023-02-04 11:58:56', '', 0, 'http://galaxytones.hstn.me/?p=25', 0, 'post', '', 0),
(26, 1, '2023-02-04 11:58:39', '2023-02-04 11:58:39', '«Audio Library — Music for content creators — Feel It Now – GalaxyTones (No Copyright Music)».', 'Audio Library — Music for content creators — Feel It Now – GalaxyTones (No Copyright Music)', '', 'inherit', 'open', 'closed', '', 'audio-library-music-for-content-creators-feel-it-now-galaxytones-no-copyright-music', '', '', '2023-02-04 11:58:43', '2023-02-04 11:58:43', '', 25, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Audio-Library-—-Music-for-content-creators-—-Feel-It-Now-–-GalaxyTones-No-Copyright-Music.mp3', 0, 'attachment', 'audio/mpeg', 0),
(27, 1, '2023-02-04 11:58:56', '2023-02-04 11:58:56', '<!-- wp:audio {\"id\":26} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Audio-Library-—-Music-for-content-creators-—-Feel-It-Now-–-GalaxyTones-No-Copyright-Music.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Feel It Now – GalaxyTones', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2023-02-04 11:58:56', '2023-02-04 11:58:56', '', 25, 'http://galaxytones.hstn.me/?p=27', 0, 'revision', '', 0),
(28, 1, '2023-02-04 12:02:13', '2023-02-04 12:02:13', '<!-- wp:audio {\"id\":20} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-Mendum-feat.-DNAKM-—-Luna.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned & GalaxyTones — Luna (Feat. DNAKM) [Mendum Remix]', '', 'publish', 'open', 'open', '', 'abandoned-galaxytones-luna-feat-dnakm-mendum-remix', '', '', '2023-02-04 12:02:13', '2023-02-04 12:02:13', '', 0, 'http://galaxytones.hstn.me/?p=28', 0, 'post', '', 0),
(29, 1, '2023-02-04 12:02:13', '2023-02-04 12:02:13', '<!-- wp:audio {\"id\":20} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-Mendum-feat.-DNAKM-—-Luna.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned & GalaxyTones — Luna (Feat. DNAKM) [Mendum Remix]', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2023-02-04 12:02:13', '2023-02-04 12:02:13', '', 28, 'http://galaxytones.hstn.me/?p=29', 0, 'revision', '', 0),
(30, 1, '2023-02-04 12:04:49', '2023-02-04 12:04:49', '<!-- wp:audio {\"id\":31} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-—-Luna-Feat.-DNAKM-NCS-Release.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned & GalaxyTones — Luna (Feat. DNAKM)', '', 'publish', 'open', 'open', '', 'abandoned-galaxytones-luna-feat-dnakm', '', '', '2023-02-04 12:04:49', '2023-02-04 12:04:49', '', 0, 'http://galaxytones.hstn.me/?p=30', 0, 'post', '', 0),
(31, 1, '2023-02-04 12:04:34', '2023-02-04 12:04:34', '«Abandoned & GalaxyTones — Luna (Feat. DNAKM) [NCS Release]».', 'Abandoned & GalaxyTones — Luna (Feat. DNAKM) [NCS Release]', '', 'inherit', 'open', 'closed', '', 'abandoned-galaxytones-luna-feat-dnakm-ncs-release', '', '', '2023-02-04 12:04:40', '2023-02-04 12:04:40', '', 30, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-—-Luna-Feat.-DNAKM-NCS-Release.mp3', 0, 'attachment', 'audio/mpeg', 0),
(32, 1, '2023-02-04 12:04:49', '2023-02-04 12:04:49', '<!-- wp:audio {\"id\":31} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-—-Luna-Feat.-DNAKM-NCS-Release.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned & GalaxyTones — Luna (Feat. DNAKM)', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2023-02-04 12:04:49', '2023-02-04 12:04:49', '', 30, 'http://galaxytones.hstn.me/?p=32', 0, 'revision', '', 0),
(33, 1, '2023-02-04 12:06:10', '2023-02-04 12:06:10', '<!-- wp:audio {\"id\":34} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-Mendum-DNAKM-—-Luna-Mendum-Remix.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned, GalaxyTones, Mendum, DNAKM — Luna - Mendum Remix', '', 'publish', 'open', 'open', '', 'abandoned-galaxytones-mendum-dnakm-luna-mendum-remix', '', '', '2023-02-04 12:06:10', '2023-02-04 12:06:10', '', 0, 'http://galaxytones.hstn.me/?p=33', 0, 'post', '', 0),
(34, 1, '2023-02-04 12:05:57', '2023-02-04 12:05:57', '«Abandoned, GalaxyTones, Mendum, DNAKM — Luna - Mendum Remix».', 'Abandoned, GalaxyTones, Mendum, DNAKM — Luna - Mendum Remix', '', 'inherit', 'open', 'closed', '', 'abandoned-galaxytones-mendum-dnakm-luna-mendum-remix', '', '', '2023-02-04 12:06:03', '2023-02-04 12:06:03', '', 33, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-Mendum-DNAKM-—-Luna-Mendum-Remix.mp3', 0, 'attachment', 'audio/mpeg', 0),
(35, 1, '2023-02-04 12:06:10', '2023-02-04 12:06:10', '<!-- wp:audio {\"id\":34} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-Mendum-DNAKM-—-Luna-Mendum-Remix.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned, GalaxyTones, Mendum, DNAKM — Luna - Mendum Remix', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-02-04 12:06:10', '2023-02-04 12:06:10', '', 33, 'http://galaxytones.hstn.me/?p=35', 0, 'revision', '', 0),
(36, 1, '2023-02-04 12:07:16', '2023-02-04 12:07:16', '<!-- wp:audio {\"id\":37} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-DNAKM-—-Gold.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones, DNAKM — Gold', '', 'publish', 'open', 'open', '', 'galaxytones-dnakm-gold', '', '', '2023-02-04 12:07:16', '2023-02-04 12:07:16', '', 0, 'http://galaxytones.hstn.me/?p=36', 0, 'post', '', 0),
(37, 1, '2023-02-04 12:07:06', '2023-02-04 12:07:06', '«GalaxyTones, DNAKM — Gold».', 'GalaxyTones, DNAKM — Gold', '', 'inherit', 'open', 'closed', '', 'galaxytones-dnakm-gold', '', '', '2023-02-04 12:07:09', '2023-02-04 12:07:09', '', 36, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-DNAKM-—-Gold.mp3', 0, 'attachment', 'audio/mpeg', 0),
(38, 1, '2023-02-04 12:07:16', '2023-02-04 12:07:16', '<!-- wp:audio {\"id\":37} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-DNAKM-—-Gold.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones, DNAKM — Gold', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2023-02-04 12:07:16', '2023-02-04 12:07:16', '', 36, 'http://galaxytones.hstn.me/?p=38', 0, 'revision', '', 0),
(39, 1, '2023-02-04 12:08:42', '2023-02-04 12:08:42', '<!-- wp:audio {\"id\":40} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Wide-Awake-feat.-Dianna.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Wide Awake (feat. Dianna)', '', 'publish', 'open', 'open', '', 'galaxytones-wide-awake-feat-dianna', '', '', '2023-02-04 12:08:42', '2023-02-04 12:08:42', '', 0, 'http://galaxytones.hstn.me/?p=39', 0, 'post', '', 0),
(40, 1, '2023-02-04 12:08:31', '2023-02-04 12:08:31', '«GalaxyTones — Wide Awake (feat. Dianna)».', 'GalaxyTones — Wide Awake (feat. Dianna)', '', 'inherit', 'open', 'closed', '', 'galaxytones-wide-awake-feat-dianna', '', '', '2023-02-04 12:08:35', '2023-02-04 12:08:35', '', 39, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Wide-Awake-feat.-Dianna.mp3', 0, 'attachment', 'audio/mpeg', 0),
(41, 1, '2023-02-04 12:08:42', '2023-02-04 12:08:42', '<!-- wp:audio {\"id\":40} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Wide-Awake-feat.-Dianna.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Wide Awake (feat. Dianna)', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2023-02-04 12:08:42', '2023-02-04 12:08:42', '', 39, 'http://galaxytones.hstn.me/?p=41', 0, 'revision', '', 0),
(42, 1, '2023-02-04 12:09:58', '2023-02-04 12:09:58', '<!-- wp:audio {\"id\":43} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-—-Luna-Feat.-DNAKM-Mendum-Remix.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned & GalaxyTones — Luna (Feat. DNAKM) [Mendum Remix]', '', 'publish', 'open', 'open', '', 'abandoned-galaxytones-luna-feat-dnakm-mendum-remix-2', '', '', '2023-02-04 12:09:58', '2023-02-04 12:09:58', '', 0, 'http://galaxytones.hstn.me/?p=42', 0, 'post', '', 0),
(43, 1, '2023-02-04 12:09:43', '2023-02-04 12:09:43', '«Abandoned & GalaxyTones — Luna (Feat. DNAKM) [Mendum Remix]».', 'Abandoned & GalaxyTones — Luna (Feat. DNAKM) [Mendum Remix]', '', 'inherit', 'open', 'closed', '', 'abandoned-galaxytones-luna-feat-dnakm-mendum-remix-2', '', '', '2023-02-04 12:09:47', '2023-02-04 12:09:47', '', 42, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-—-Luna-Feat.-DNAKM-Mendum-Remix.mp3', 0, 'attachment', 'audio/mpeg', 0),
(44, 1, '2023-02-04 12:09:58', '2023-02-04 12:09:58', '<!-- wp:audio {\"id\":43} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-—-Luna-Feat.-DNAKM-Mendum-Remix.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned & GalaxyTones — Luna (Feat. DNAKM) [Mendum Remix]', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2023-02-04 12:09:58', '2023-02-04 12:09:58', '', 42, 'http://galaxytones.hstn.me/?p=44', 0, 'revision', '', 0),
(45, 1, '2023-02-04 12:11:11', '2023-02-04 12:11:11', '<!-- wp:audio {\"id\":46} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-Elvya-—-Eldhrimner.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones, Elvya — Eldhrimner', '', 'publish', 'open', 'open', '', 'galaxytones-elvya-eldhrimner', '', '', '2023-02-04 12:11:11', '2023-02-04 12:11:11', '', 0, 'http://galaxytones.hstn.me/?p=45', 0, 'post', '', 0),
(46, 1, '2023-02-04 12:11:01', '2023-02-04 12:11:01', '«GalaxyTones, Elvya — Eldhrimner».', 'GalaxyTones, Elvya — Eldhrimner', '', 'inherit', 'open', 'closed', '', 'galaxytones-elvya-eldhrimner', '', '', '2023-02-04 12:11:04', '2023-02-04 12:11:04', '', 45, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-Elvya-—-Eldhrimner.mp3', 0, 'attachment', 'audio/mpeg', 0),
(47, 1, '2023-02-04 12:11:11', '2023-02-04 12:11:11', '<!-- wp:audio {\"id\":46} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-Elvya-—-Eldhrimner.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones, Elvya — Eldhrimner', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2023-02-04 12:11:11', '2023-02-04 12:11:11', '', 45, 'http://galaxytones.hstn.me/?p=47', 0, 'revision', '', 0),
(48, 1, '2023-02-04 12:12:22', '2023-02-04 12:12:22', '<!-- wp:audio {\"id\":49} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/InfiNoise-GalaxyTones-—-Andromeda.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'InfiNoise & GalaxyTones — Andromeda', '', 'publish', 'open', 'open', '', 'infinoise-galaxytones-andromeda', '', '', '2023-02-04 12:12:22', '2023-02-04 12:12:22', '', 0, 'http://galaxytones.hstn.me/?p=48', 0, 'post', '', 0),
(49, 1, '2023-02-04 12:12:10', '2023-02-04 12:12:10', '«InfiNoise & GalaxyTones — Andromeda».', 'InfiNoise & GalaxyTones — Andromeda', '', 'inherit', 'open', 'closed', '', 'infinoise-galaxytones-andromeda', '', '', '2023-02-04 12:12:13', '2023-02-04 12:12:13', '', 48, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/InfiNoise-GalaxyTones-—-Andromeda.mp3', 0, 'attachment', 'audio/mpeg', 0),
(50, 1, '2023-02-04 12:12:22', '2023-02-04 12:12:22', '<!-- wp:audio {\"id\":49} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/InfiNoise-GalaxyTones-—-Andromeda.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'InfiNoise & GalaxyTones — Andromeda', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2023-02-04 12:12:22', '2023-02-04 12:12:22', '', 48, 'http://galaxytones.hstn.me/?p=50', 0, 'revision', '', 0),
(51, 1, '2023-02-04 12:14:25', '2023-02-04 12:14:25', '<!-- wp:audio {\"id\":52} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-—-Luna-feat.-DNAKM-Mendum-RemixNightCore.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned & GalaxyTones — Luna (feat. DNAKM) [Mendum Remix](NightCore)', '', 'publish', 'open', 'open', '', 'abandoned-galaxytones-luna-feat-dnakm-mendum-remixnightcore', '', '', '2023-02-04 12:14:25', '2023-02-04 12:14:25', '', 0, 'http://galaxytones.hstn.me/?p=51', 0, 'post', '', 0),
(52, 1, '2023-02-04 12:14:03', '2023-02-04 12:14:03', '«Abandoned & GalaxyTones — Luna (feat. DNAKM) [Mendum Remix](NightCore)».', 'Abandoned & GalaxyTones — Luna (feat. DNAKM) [Mendum Remix](NightCore)', '', 'inherit', 'open', 'closed', '', 'abandoned-galaxytones-luna-feat-dnakm-mendum-remixnightcore', '', '', '2023-02-04 12:14:08', '2023-02-04 12:14:08', '', 51, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-—-Luna-feat.-DNAKM-Mendum-RemixNightCore.mp3', 0, 'attachment', 'audio/mpeg', 0),
(53, 1, '2023-02-04 12:14:25', '2023-02-04 12:14:25', '<!-- wp:audio {\"id\":52} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-—-Luna-feat.-DNAKM-Mendum-RemixNightCore.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned & GalaxyTones — Luna (feat. DNAKM) [Mendum Remix](NightCore)', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-02-04 12:14:25', '2023-02-04 12:14:25', '', 51, 'http://galaxytones.hstn.me/?p=53', 0, 'revision', '', 0),
(54, 1, '2023-02-04 12:15:35', '2023-02-04 12:15:35', '<!-- wp:audio {\"id\":55} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Mendum-Abandoned-GalaxyTones-feat.-DNAKM-—-Luna.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Mendum, Abandoned, GalaxyTones feat. DNAKM — Luna', '', 'publish', 'open', 'open', '', 'mendum-abandoned-galaxytones-feat-dnakm-luna', '', '', '2023-02-04 12:15:35', '2023-02-04 12:15:35', '', 0, 'http://galaxytones.hstn.me/?p=54', 0, 'post', '', 0),
(55, 1, '2023-02-04 12:15:25', '2023-02-04 12:15:25', '«Mendum, Abandoned, GalaxyTones feat. DNAKM — Luna».', 'Mendum, Abandoned, GalaxyTones feat. DNAKM — Luna', '', 'inherit', 'open', 'closed', '', 'mendum-abandoned-galaxytones-feat-dnakm-luna', '', '', '2023-02-04 12:15:28', '2023-02-04 12:15:28', '', 54, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Mendum-Abandoned-GalaxyTones-feat.-DNAKM-—-Luna.mp3', 0, 'attachment', 'audio/mpeg', 0),
(56, 1, '2023-02-04 12:15:35', '2023-02-04 12:15:35', '<!-- wp:audio {\"id\":55} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Mendum-Abandoned-GalaxyTones-feat.-DNAKM-—-Luna.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Mendum, Abandoned, GalaxyTones feat. DNAKM — Luna', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2023-02-04 12:15:35', '2023-02-04 12:15:35', '', 54, 'http://galaxytones.hstn.me/?p=56', 0, 'revision', '', 0),
(57, 1, '2023-02-04 12:16:50', '2023-02-04 12:16:50', '<!-- wp:audio {\"id\":58} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-—-Luna-feat.-Dnakm.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned & GalaxyTones — Luna (feat. Dnakm)', '', 'publish', 'open', 'open', '', 'abandoned-galaxytones-luna-feat-dnakm-2', '', '', '2023-02-04 12:16:50', '2023-02-04 12:16:50', '', 0, 'http://galaxytones.hstn.me/?p=57', 0, 'post', '', 0),
(58, 1, '2023-02-04 12:16:37', '2023-02-04 12:16:37', '«Abandoned & GalaxyTones — Luna (feat. Dnakm)».', 'Abandoned & GalaxyTones — Luna (feat. Dnakm)', '', 'inherit', 'open', 'closed', '', 'abandoned-galaxytones-luna-feat-dnakm-2', '', '', '2023-02-04 12:16:43', '2023-02-04 12:16:43', '', 57, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-—-Luna-feat.-Dnakm.mp3', 0, 'attachment', 'audio/mpeg', 0),
(59, 1, '2023-02-04 12:16:50', '2023-02-04 12:16:50', '<!-- wp:audio {\"id\":58} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-—-Luna-feat.-Dnakm.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned & GalaxyTones — Luna (feat. Dnakm)', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2023-02-04 12:16:50', '2023-02-04 12:16:50', '', 57, 'http://galaxytones.hstn.me/?p=59', 0, 'revision', '', 0),
(60, 1, '2023-02-04 12:18:09', '2023-02-04 12:18:09', '<!-- wp:audio {\"id\":61} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-Mendum-feat.-DNAKM-—-Luna-Mendum-Remix-Instrumental.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned, GalaxyTones, Mendum feat. DNAKM — Luna Mendum Remix (Instrumental)', '', 'publish', 'open', 'open', '', 'abandoned-galaxytones-mendum-feat-dnakm-luna-mendum-remix-instrumental', '', '', '2023-02-04 12:18:09', '2023-02-04 12:18:09', '', 0, 'http://galaxytones.hstn.me/?p=60', 0, 'post', '', 0),
(61, 1, '2023-02-04 12:17:56', '2023-02-04 12:17:56', '«Abandoned, GalaxyTones, Mendum feat. DNAKM — Luna Mendum Remix (Instrumental)».', 'Abandoned, GalaxyTones, Mendum feat. DNAKM — Luna Mendum Remix (Instrumental)', '', 'inherit', 'open', 'closed', '', 'abandoned-galaxytones-mendum-feat-dnakm-luna-mendum-remix-instrumental', '', '', '2023-02-04 12:18:00', '2023-02-04 12:18:00', '', 60, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-Mendum-feat.-DNAKM-—-Luna-Mendum-Remix-Instrumental.mp3', 0, 'attachment', 'audio/mpeg', 0),
(62, 1, '2023-02-04 12:18:09', '2023-02-04 12:18:09', '<!-- wp:audio {\"id\":61} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-Mendum-feat.-DNAKM-—-Luna-Mendum-Remix-Instrumental.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned, GalaxyTones, Mendum feat. DNAKM — Luna Mendum Remix (Instrumental)', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2023-02-04 12:18:09', '2023-02-04 12:18:09', '', 60, 'http://galaxytones.hstn.me/?p=62', 0, 'revision', '', 0),
(63, 1, '2023-02-04 12:19:23', '2023-02-04 12:19:23', '<!-- wp:audio {\"id\":64} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Oceans.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Oceans', '', 'publish', 'open', 'open', '', 'galaxytones-oceans', '', '', '2023-02-04 12:19:23', '2023-02-04 12:19:23', '', 0, 'http://galaxytones.hstn.me/?p=63', 0, 'post', '', 0),
(64, 1, '2023-02-04 12:19:11', '2023-02-04 12:19:11', '«GalaxyTones — Oceans».', 'GalaxyTones — Oceans', '', 'inherit', 'open', 'closed', '', 'galaxytones-oceans', '', '', '2023-02-04 12:19:14', '2023-02-04 12:19:14', '', 63, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Oceans.mp3', 0, 'attachment', 'audio/mpeg', 0),
(65, 1, '2023-02-04 12:19:23', '2023-02-04 12:19:23', '<!-- wp:audio {\"id\":64} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Oceans.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Oceans', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2023-02-04 12:19:23', '2023-02-04 12:19:23', '', 63, 'http://galaxytones.hstn.me/?p=65', 0, 'revision', '', 0),
(66, 1, '2023-02-04 12:20:35', '2023-02-04 12:20:35', '<!-- wp:audio {\"id\":67} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Floating.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Floating', '', 'publish', 'open', 'open', '', 'galaxytones-floating', '', '', '2023-02-04 12:20:35', '2023-02-04 12:20:35', '', 0, 'http://galaxytones.hstn.me/?p=66', 0, 'post', '', 0),
(67, 1, '2023-02-04 12:20:26', '2023-02-04 12:20:26', '«GalaxyTones — Floating».', 'GalaxyTones — Floating', '', 'inherit', 'open', 'closed', '', 'galaxytones-floating', '', '', '2023-02-04 12:20:29', '2023-02-04 12:20:29', '', 66, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Floating.mp3', 0, 'attachment', 'audio/mpeg', 0),
(68, 1, '2023-02-04 12:20:35', '2023-02-04 12:20:35', '<!-- wp:audio {\"id\":67} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Floating.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Floating', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2023-02-04 12:20:35', '2023-02-04 12:20:35', '', 66, 'http://galaxytones.hstn.me/?p=68', 0, 'revision', '', 0),
(69, 1, '2023-02-04 12:22:13', '2023-02-04 12:22:13', '<!-- wp:audio {\"id\":70} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Lost-City.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Lost City', '', 'publish', 'open', 'open', '', 'galaxytones-lost-city', '', '', '2023-02-04 12:22:13', '2023-02-04 12:22:13', '', 0, 'http://galaxytones.hstn.me/?p=69', 0, 'post', '', 0),
(70, 1, '2023-02-04 12:22:03', '2023-02-04 12:22:03', '«GalaxyTones — Lost City».', 'GalaxyTones — Lost City', '', 'inherit', 'open', 'closed', '', 'galaxytones-lost-city', '', '', '2023-02-04 12:22:06', '2023-02-04 12:22:06', '', 69, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Lost-City.mp3', 0, 'attachment', 'audio/mpeg', 0),
(71, 1, '2023-02-04 12:22:13', '2023-02-04 12:22:13', '<!-- wp:audio {\"id\":70} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Lost-City.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Lost City', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2023-02-04 12:22:13', '2023-02-04 12:22:13', '', 69, 'http://galaxytones.hstn.me/?p=71', 0, 'revision', '', 0),
(72, 1, '2023-02-04 12:23:42', '2023-02-04 12:23:42', '<!-- wp:audio {\"id\":73} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Dreaming-Journey.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Dreaming Journey', '', 'publish', 'open', 'open', '', 'galaxytones-dreaming-journey', '', '', '2023-02-04 12:23:42', '2023-02-04 12:23:42', '', 0, 'http://galaxytones.hstn.me/?p=72', 0, 'post', '', 0),
(73, 1, '2023-02-04 12:23:31', '2023-02-04 12:23:31', '«GalaxyTones — Dreaming Journey».', 'GalaxyTones — Dreaming Journey', '', 'inherit', 'open', 'closed', '', 'galaxytones-dreaming-journey', '', '', '2023-02-04 12:23:36', '2023-02-04 12:23:36', '', 72, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Dreaming-Journey.mp3', 0, 'attachment', 'audio/mpeg', 0),
(74, 1, '2023-02-04 12:23:42', '2023-02-04 12:23:42', '<!-- wp:audio {\"id\":73} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Dreaming-Journey.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Dreaming Journey', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2023-02-04 12:23:42', '2023-02-04 12:23:42', '', 72, 'http://galaxytones.hstn.me/?p=74', 0, 'revision', '', 0),
(75, 1, '2023-02-04 12:24:58', '2023-02-04 12:24:58', '<!-- wp:audio {\"id\":76} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Mystery.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Mystery', '', 'publish', 'open', 'open', '', 'galaxytones-mystery', '', '', '2023-02-04 12:24:58', '2023-02-04 12:24:58', '', 0, 'http://galaxytones.hstn.me/?p=75', 0, 'post', '', 0),
(76, 1, '2023-02-04 12:24:50', '2023-02-04 12:24:50', '«GalaxyTones — Mystery».', 'GalaxyTones — Mystery', '', 'inherit', 'open', 'closed', '', 'galaxytones-mystery', '', '', '2023-02-04 12:24:53', '2023-02-04 12:24:53', '', 75, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Mystery.mp3', 0, 'attachment', 'audio/mpeg', 0),
(77, 1, '2023-02-04 12:24:58', '2023-02-04 12:24:58', '<!-- wp:audio {\"id\":76} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Mystery.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Mystery', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2023-02-04 12:24:58', '2023-02-04 12:24:58', '', 75, 'http://galaxytones.hstn.me/?p=77', 0, 'revision', '', 0),
(78, 1, '2023-02-04 12:26:20', '2023-02-04 12:26:20', '<!-- wp:audio {\"id\":79} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Stellar-Hills.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Stellar Hills', '', 'publish', 'open', 'open', '', 'galaxytones-stellar-hills', '', '', '2023-02-04 12:26:20', '2023-02-04 12:26:20', '', 0, 'http://galaxytones.hstn.me/?p=78', 0, 'post', '', 0),
(79, 1, '2023-02-04 12:26:10', '2023-02-04 12:26:10', '«GalaxyTones — Stellar Hills».', 'GalaxyTones — Stellar Hills', '', 'inherit', 'open', 'closed', '', 'galaxytones-stellar-hills', '', '', '2023-02-04 12:26:14', '2023-02-04 12:26:14', '', 78, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Stellar-Hills.mp3', 0, 'attachment', 'audio/mpeg', 0),
(80, 1, '2023-02-04 12:26:20', '2023-02-04 12:26:20', '<!-- wp:audio {\"id\":79} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Stellar-Hills.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Stellar Hills', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-02-04 12:26:20', '2023-02-04 12:26:20', '', 78, 'http://galaxytones.hstn.me/?p=80', 0, 'revision', '', 0),
(81, 1, '2023-02-04 12:27:45', '2023-02-04 12:27:45', '<!-- wp:audio {\"id\":82} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Sickness.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Sickness', '', 'publish', 'open', 'open', '', 'galaxytones-sickness', '', '', '2023-02-04 12:27:45', '2023-02-04 12:27:45', '', 0, 'http://galaxytones.hstn.me/?p=81', 0, 'post', '', 0),
(82, 1, '2023-02-04 12:27:33', '2023-02-04 12:27:33', '«GalaxyTones — Sickness».', 'GalaxyTones — Sickness', '', 'inherit', 'open', 'closed', '', 'galaxytones-sickness', '', '', '2023-02-04 12:27:36', '2023-02-04 12:27:36', '', 81, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Sickness.mp3', 0, 'attachment', 'audio/mpeg', 0),
(83, 1, '2023-02-04 12:27:45', '2023-02-04 12:27:45', '<!-- wp:audio {\"id\":82} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Sickness.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Sickness', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2023-02-04 12:27:45', '2023-02-04 12:27:45', '', 81, 'http://galaxytones.hstn.me/?p=83', 0, 'revision', '', 0),
(84, 1, '2023-02-04 12:28:59', '2023-02-04 12:28:59', '<!-- wp:audio {\"id\":85} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-In-Your-Eyes.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — In Your Eyes', '', 'publish', 'open', 'open', '', 'galaxytones-in-your-eyes', '', '', '2023-02-04 12:28:59', '2023-02-04 12:28:59', '', 0, 'http://galaxytones.hstn.me/?p=84', 0, 'post', '', 0),
(85, 1, '2023-02-04 12:28:50', '2023-02-04 12:28:50', '«GalaxyTones — In Your Eyes».', 'GalaxyTones — In Your Eyes', '', 'inherit', 'open', 'closed', '', 'galaxytones-in-your-eyes', '', '', '2023-02-04 12:28:53', '2023-02-04 12:28:53', '', 84, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-In-Your-Eyes.mp3', 0, 'attachment', 'audio/mpeg', 0),
(86, 1, '2023-02-04 12:28:59', '2023-02-04 12:28:59', '<!-- wp:audio {\"id\":85} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-In-Your-Eyes.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — In Your Eyes', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2023-02-04 12:28:59', '2023-02-04 12:28:59', '', 84, 'http://galaxytones.hstn.me/?p=86', 0, 'revision', '', 0),
(87, 1, '2023-02-04 12:31:18', '2023-02-04 12:31:18', '<!-- wp:audio {\"id\":88} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Synesthesia.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Synesthesia', '', 'publish', 'open', 'open', '', 'galaxytones-synesthesia', '', '', '2023-02-04 12:31:18', '2023-02-04 12:31:18', '', 0, 'http://galaxytones.hstn.me/?p=87', 0, 'post', '', 0),
(88, 1, '2023-02-04 12:31:08', '2023-02-04 12:31:08', '«GalaxyTones — Synesthesia».', 'GalaxyTones — Synesthesia', '', 'inherit', 'open', 'closed', '', 'galaxytones-synesthesia', '', '', '2023-02-04 12:31:12', '2023-02-04 12:31:12', '', 87, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Synesthesia.mp3', 0, 'attachment', 'audio/mpeg', 0),
(89, 1, '2023-02-04 12:31:18', '2023-02-04 12:31:18', '<!-- wp:audio {\"id\":88} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Synesthesia.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Synesthesia', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2023-02-04 12:31:18', '2023-02-04 12:31:18', '', 87, 'http://galaxytones.hstn.me/?p=89', 0, 'revision', '', 0),
(90, 1, '2023-02-04 12:32:50', '2023-02-04 12:32:50', '<!-- wp:audio {\"id\":91} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Bright-Futures.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Bright Futures', '', 'publish', 'open', 'open', '', 'galaxytones-bright-futures-2', '', '', '2023-02-04 12:33:05', '2023-02-04 12:33:05', '', 0, 'http://galaxytones.hstn.me/?p=90', 0, 'post', '', 0),
(91, 1, '2023-02-04 12:32:29', '2023-02-04 12:32:29', '«GalaxyTones — Bright Futures».', 'GalaxyTones — Bright Futures', '', 'inherit', 'open', 'closed', '', 'galaxytones-bright-futures-2', '', '', '2023-02-04 12:32:37', '2023-02-04 12:32:37', '', 90, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Bright-Futures.mp3', 0, 'attachment', 'audio/mpeg', 0),
(92, 1, '2023-02-04 12:32:50', '2023-02-04 12:32:50', '<!-- wp:audio {\"id\":91} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Bright-Futures.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Bright Futures', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2023-02-04 12:32:50', '2023-02-04 12:32:50', '', 90, 'http://galaxytones.hstn.me/?p=92', 0, 'revision', '', 0),
(93, 1, '2023-02-04 12:36:03', '2023-02-04 12:36:03', '<!-- wp:audio {\"id\":94} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Far-from-Here-1.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Far from Here', '', 'publish', 'open', 'open', '', 'galaxytones-far-from-here', '', '', '2023-02-04 12:36:03', '2023-02-04 12:36:03', '', 0, 'http://galaxytones.hstn.me/?p=93', 0, 'post', '', 0),
(94, 1, '2023-02-04 12:35:47', '2023-02-04 12:35:47', '«GalaxyTones — Far from Here (1)».', 'GalaxyTones — Far from Here (1)', '', 'inherit', 'open', 'closed', '', 'galaxytones-far-from-here-1', '', '', '2023-02-04 12:35:51', '2023-02-04 12:35:51', '', 93, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Far-from-Here-1.mp3', 0, 'attachment', 'audio/mpeg', 0),
(95, 1, '2023-02-04 12:36:03', '2023-02-04 12:36:03', '<!-- wp:audio {\"id\":94} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Far-from-Here-1.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Far from Here', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2023-02-04 12:36:03', '2023-02-04 12:36:03', '', 93, 'http://galaxytones.hstn.me/?p=95', 0, 'revision', '', 0),
(96, 1, '2023-02-04 12:37:36', '2023-02-04 12:37:36', '<!-- wp:audio {\"id\":97} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Feel-It-Now.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Feel It Now', '', 'publish', 'open', 'open', '', 'galaxytones-feel-it-now', '', '', '2023-02-04 12:37:36', '2023-02-04 12:37:36', '', 0, 'http://galaxytones.hstn.me/?p=96', 0, 'post', '', 0),
(97, 1, '2023-02-04 12:37:28', '2023-02-04 12:37:28', '«GalaxyTones — Feel It Now».', 'GalaxyTones — Feel It Now', '', 'inherit', 'open', 'closed', '', 'galaxytones-feel-it-now', '', '', '2023-02-04 12:37:31', '2023-02-04 12:37:31', '', 96, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Feel-It-Now.mp3', 0, 'attachment', 'audio/mpeg', 0),
(98, 1, '2023-02-04 12:37:36', '2023-02-04 12:37:36', '<!-- wp:audio {\"id\":97} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-—-Feel-It-Now.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones — Feel It Now', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2023-02-04 12:37:36', '2023-02-04 12:37:36', '', 96, 'http://galaxytones.hstn.me/?p=98', 0, 'revision', '', 0);
INSERT INTO `wpp0_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(99, 1, '2023-02-04 12:39:08', '2023-02-04 12:39:08', '<!-- wp:audio {\"id\":100} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-DNAKM-—-Luna.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned, GalaxyTones, DNAKM — Luna', '', 'publish', 'open', 'open', '', 'abandoned-galaxytones-dnakm-luna', '', '', '2023-02-04 12:39:08', '2023-02-04 12:39:08', '', 0, 'http://galaxytones.hstn.me/?p=99', 0, 'post', '', 0),
(100, 1, '2023-02-04 12:38:59', '2023-02-04 12:38:59', '«Abandoned, GalaxyTones, DNAKM — Luna».', 'Abandoned, GalaxyTones, DNAKM — Luna', '', 'inherit', 'open', 'closed', '', 'abandoned-galaxytones-dnakm-luna', '', '', '2023-02-04 12:39:02', '2023-02-04 12:39:02', '', 99, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-DNAKM-—-Luna.mp3', 0, 'attachment', 'audio/mpeg', 0),
(101, 1, '2023-02-04 12:39:08', '2023-02-04 12:39:08', '<!-- wp:audio {\"id\":100} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Abandoned-GalaxyTones-DNAKM-—-Luna.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned, GalaxyTones, DNAKM — Luna', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2023-02-04 12:39:08', '2023-02-04 12:39:08', '', 99, 'http://galaxytones.hstn.me/?p=101', 0, 'revision', '', 0),
(102, 1, '2023-02-04 12:40:30', '2023-02-04 12:40:30', '<!-- wp:audio {\"id\":103} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-feat.-Dianna-—-Wide-Awake.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones feat. Dianna — Wide Awake', '', 'publish', 'open', 'open', '', 'galaxytones-feat-dianna-wide-awake', '', '', '2023-02-04 12:40:30', '2023-02-04 12:40:30', '', 0, 'http://galaxytones.hstn.me/?p=102', 0, 'post', '', 0),
(103, 1, '2023-02-04 12:40:21', '2023-02-04 12:40:21', '«GalaxyTones feat. Dianna — Wide Awake».', 'GalaxyTones feat. Dianna — Wide Awake', '', 'inherit', 'open', 'closed', '', 'galaxytones-feat-dianna-wide-awake', '', '', '2023-02-04 12:40:25', '2023-02-04 12:40:25', '', 102, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-feat.-Dianna-—-Wide-Awake.mp3', 0, 'attachment', 'audio/mpeg', 0),
(104, 1, '2023-02-04 12:40:30', '2023-02-04 12:40:30', '<!-- wp:audio {\"id\":103} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/GalaxyTones-feat.-Dianna-—-Wide-Awake.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'GalaxyTones feat. Dianna — Wide Awake', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2023-02-04 12:40:30', '2023-02-04 12:40:30', '', 102, 'http://galaxytones.hstn.me/?p=104', 0, 'revision', '', 0),
(105, 1, '2023-02-04 12:42:04', '2023-02-04 12:42:04', '<!-- wp:audio {\"id\":106} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Неизвестен-—-Abandoned-GalaxyTones-Luna-Feat.-DNAKM-NCS-Release.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned & GalaxyTones - Luna (Feat. DNAKM)', '', 'publish', 'open', 'open', '', 'abandoned-galaxytones-luna-feat-dnakm-3', '', '', '2023-02-04 12:42:04', '2023-02-04 12:42:04', '', 0, 'http://galaxytones.hstn.me/?p=105', 0, 'post', '', 0),
(106, 1, '2023-02-04 12:41:51', '2023-02-04 12:41:51', '«Неизвестен — Abandoned & GalaxyTones - Luna (Feat. DNAKM) [NCS Release]».', 'Неизвестен — Abandoned & GalaxyTones - Luna (Feat. DNAKM) [NCS Release]', '', 'inherit', 'open', 'closed', '', '%d0%bd%d0%b5%d0%b8%d0%b7%d0%b2%d0%b5%d1%81%d1%82%d0%b5%d0%bd-abandoned-galaxytones-luna-feat-dnakm-ncs-release', '', '', '2023-02-04 12:41:58', '2023-02-04 12:41:58', '', 105, 'http://galaxytones.hstn.me/wp-content/uploads/2023/02/Неизвестен-—-Abandoned-GalaxyTones-Luna-Feat.-DNAKM-NCS-Release.mp3', 0, 'attachment', 'audio/mpeg', 0),
(107, 1, '2023-02-04 12:42:04', '2023-02-04 12:42:04', '<!-- wp:audio {\"id\":106} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"http://galaxytones.hstn.me/wp-content/uploads/2023/02/Неизвестен-—-Abandoned-GalaxyTones-Luna-Feat.-DNAKM-NCS-Release.mp3\"></audio></figure>\n<!-- /wp:audio -->', 'Abandoned & GalaxyTones - Luna (Feat. DNAKM)', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2023-02-04 12:42:04', '2023-02-04 12:42:04', '', 105, 'http://galaxytones.hstn.me/?p=107', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wpp0_termmeta`
--

CREATE TABLE `wpp0_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wpp0_terms`
--

CREATE TABLE `wpp0_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wpp0_terms`
--

INSERT INTO `wpp0_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'About', 'about', 0),
(3, 'Music', 'music', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wpp0_term_relationships`
--

CREATE TABLE `wpp0_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wpp0_term_relationships`
--

INSERT INTO `wpp0_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0),
(13, 3, 0),
(16, 3, 0),
(19, 3, 0),
(22, 3, 0),
(25, 3, 0),
(28, 3, 0),
(30, 3, 0),
(33, 3, 0),
(36, 3, 0),
(39, 3, 0),
(42, 3, 0),
(45, 3, 0),
(48, 3, 0),
(51, 3, 0),
(54, 3, 0),
(57, 3, 0),
(60, 3, 0),
(63, 3, 0),
(66, 3, 0),
(69, 3, 0),
(72, 3, 0),
(75, 3, 0),
(78, 3, 0),
(81, 3, 0),
(84, 3, 0),
(87, 3, 0),
(90, 3, 0),
(93, 3, 0),
(96, 3, 0),
(99, 3, 0),
(102, 3, 0),
(105, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wpp0_term_taxonomy`
--

CREATE TABLE `wpp0_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wpp0_term_taxonomy`
--

INSERT INTO `wpp0_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 1),
(3, 3, 'category', '', 0, 32);

-- --------------------------------------------------------

--
-- Структура таблицы `wpp0_usermeta`
--

CREATE TABLE `wpp0_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wpp0_usermeta`
--

INSERT INTO `wpp0_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'GalaxyTones'),
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
(12, 1, 'wpp0_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wpp0_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'rec-notice-hueman-0321'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"edb921944348b39a79d93d604e43182043db0f7308ac6d042a44dfd64c2f98e0\";a:4:{s:10:\"expiration\";i:1677181152;s:2:\"ip\";s:12:\"37.215.68.42\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Linux; Android 7.1.2; Redmi 4A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Mobile Safari/537.36\";s:5:\"login\";i:1675971552;}}'),
(17, 1, 'wpp0_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"37.215.68.0\";}'),
(19, 1, 'wpp0_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:12:\"welcomeGuide\";b:0;s:26:\"isComplementaryAreaVisible\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";}}s:9:\"_modified\";s:24:\"2023-02-04T12:29:48.359Z\";}'),
(21, 1, 'wpp0_user-settings', 'libraryContent=browse'),
(22, 1, 'wpp0_user-settings-time', '1675511581');

-- --------------------------------------------------------

--
-- Структура таблицы `wpp0_users`
--

CREATE TABLE `wpp0_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wpp0_users`
--

INSERT INTO `wpp0_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'GalaxyTones', '$P$Bp6nRGNzctkh/Bb7mTalwiU2GaGAoZ0', 'galaxytones', 'y51iu3n0vv@superblohey.com', 'http://galaxytones.hstn.me', '2023-02-04 11:21:44', '', 0, 'GalaxyTones');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wpp0_commentmeta`
--
ALTER TABLE `wpp0_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wpp0_comments`
--
ALTER TABLE `wpp0_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wpp0_links`
--
ALTER TABLE `wpp0_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wpp0_options`
--
ALTER TABLE `wpp0_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wpp0_postmeta`
--
ALTER TABLE `wpp0_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wpp0_posts`
--
ALTER TABLE `wpp0_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wpp0_termmeta`
--
ALTER TABLE `wpp0_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wpp0_terms`
--
ALTER TABLE `wpp0_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wpp0_term_relationships`
--
ALTER TABLE `wpp0_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wpp0_term_taxonomy`
--
ALTER TABLE `wpp0_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wpp0_usermeta`
--
ALTER TABLE `wpp0_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wpp0_users`
--
ALTER TABLE `wpp0_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wpp0_commentmeta`
--
ALTER TABLE `wpp0_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wpp0_comments`
--
ALTER TABLE `wpp0_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wpp0_links`
--
ALTER TABLE `wpp0_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wpp0_options`
--
ALTER TABLE `wpp0_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=591;

--
-- AUTO_INCREMENT для таблицы `wpp0_postmeta`
--
ALTER TABLE `wpp0_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT для таблицы `wpp0_posts`
--
ALTER TABLE `wpp0_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT для таблицы `wpp0_termmeta`
--
ALTER TABLE `wpp0_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wpp0_terms`
--
ALTER TABLE `wpp0_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wpp0_term_taxonomy`
--
ALTER TABLE `wpp0_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wpp0_usermeta`
--
ALTER TABLE `wpp0_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `wpp0_users`
--
ALTER TABLE `wpp0_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
