-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 01 2024 г., 14:07
-- Версия сервера: 10.4.30-MariaDB-cll-lve-log
-- Версия PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u166450_dark-room`
--

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_activity`
--

CREATE TABLE IF NOT EXISTS `piwigo_activity` (
  `activity_id` int(11) unsigned NOT NULL,
  `object` varchar(255) NOT NULL,
  `object_id` int(11) unsigned NOT NULL,
  `action` varchar(255) NOT NULL,
  `performed_by` mediumint(8) unsigned NOT NULL,
  `session_idx` varchar(255) NOT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `occured_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `details` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `piwigo_activity`
--

INSERT INTO `piwigo_activity` (`activity_id`, `object`, `object_id`, `action`, `performed_by`, `session_idx`, `ip_address`, `occured_on`, `details`, `user_agent`) VALUES
(1, 'system', 3, 'activate', 0, 'none', '37.215.74.95', '2024-05-01 11:05:31', 'a:3:{s:8:"theme_id";s:11:"smartpocket";s:7:"version";s:6:"14.4.0";s:6:"script";s:7:"install";}', NULL),
(2, 'system', 3, 'activate', 0, 'none', '37.215.74.95', '2024-05-01 11:05:31', 'a:3:{s:8:"theme_id";s:5:"modus";s:7:"version";s:6:"14.4.0";s:6:"script";s:7:"install";}', NULL),
(3, 'system', 1, 'install', 0, 'none', '37.215.74.95', '2024-05-01 11:05:31', 'a:2:{s:7:"version";s:6:"14.4.0";s:6:"script";s:7:"install";}', NULL),
(4, 'user', 1, 'login', 1, 'o9gefijhenj7ke8ee6hj2pbk93', '37.215.74.95', '2024-05-01 11:05:31', 'a:1:{s:6:"script";s:7:"install";}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36'),
(5, 'album', 1, 'add', 1, 'o9gefijhenj7ke8ee6hj2pbk93', '37.215.74.95', '2024-05-01 11:05:53', 'a:1:{s:6:"method";s:18:"pwg.categories.add";}', NULL),
(6, 'photo', 1, 'add', 1, 'o9gefijhenj7ke8ee6hj2pbk93', '37.215.74.95', '2024-05-01 11:06:05', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(7, 'photo', 2, 'add', 1, 'o9gefijhenj7ke8ee6hj2pbk93', '37.215.74.95', '2024-05-01 11:06:07', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(8, 'photo', 3, 'add', 1, 'o9gefijhenj7ke8ee6hj2pbk93', '37.215.74.95', '2024-05-01 11:06:08', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(9, 'photo', 4, 'add', 1, 'o9gefijhenj7ke8ee6hj2pbk93', '37.215.74.95', '2024-05-01 11:06:10', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(10, 'photo', 5, 'add', 1, 'o9gefijhenj7ke8ee6hj2pbk93', '37.215.74.95', '2024-05-01 11:06:11', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(11, 'photo', 6, 'add', 1, 'o9gefijhenj7ke8ee6hj2pbk93', '37.215.74.95', '2024-05-01 11:06:12', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(12, 'photo', 7, 'add', 1, 'o9gefijhenj7ke8ee6hj2pbk93', '37.215.74.95', '2024-05-01 11:06:14', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(13, 'photo', 8, 'add', 1, 'o9gefijhenj7ke8ee6hj2pbk93', '37.215.74.95', '2024-05-01 11:06:15', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(14, 'photo', 9, 'add', 1, 'o9gefijhenj7ke8ee6hj2pbk93', '37.215.74.95', '2024-05-01 11:06:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(15, 'photo', 10, 'add', 1, 'o9gefijhenj7ke8ee6hj2pbk93', '37.215.74.95', '2024-05-01 11:06:18', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_caddie`
--

CREATE TABLE IF NOT EXISTS `piwigo_caddie` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `element_id` mediumint(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_categories`
--

CREATE TABLE IF NOT EXISTS `piwigo_categories` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `id_uppercat` smallint(5) unsigned DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `dir` varchar(255) DEFAULT NULL,
  `rank` smallint(5) unsigned DEFAULT NULL,
  `status` enum('public','private') NOT NULL DEFAULT 'public',
  `site_id` tinyint(4) unsigned DEFAULT NULL,
  `visible` enum('true','false') NOT NULL DEFAULT 'true',
  `representative_picture_id` mediumint(8) unsigned DEFAULT NULL,
  `uppercats` varchar(255) NOT NULL DEFAULT '',
  `commentable` enum('true','false') NOT NULL DEFAULT 'true',
  `global_rank` varchar(255) DEFAULT NULL,
  `image_order` varchar(128) DEFAULT NULL,
  `permalink` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `lastmodified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `piwigo_categories`
--

INSERT INTO `piwigo_categories` (`id`, `name`, `id_uppercat`, `comment`, `dir`, `rank`, `status`, `site_id`, `visible`, `representative_picture_id`, `uppercats`, `commentable`, `global_rank`, `image_order`, `permalink`, `lastmodified`) VALUES
(1, 'dark-room', NULL, NULL, NULL, 1, 'public', NULL, 'true', 10, '1', 'true', '1', NULL, NULL, '2024-05-01 11:06:19');

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_comments`
--

CREATE TABLE IF NOT EXISTS `piwigo_comments` (
  `id` int(11) unsigned NOT NULL,
  `image_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `author` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `author_id` mediumint(8) unsigned DEFAULT NULL,
  `anonymous_id` varchar(45) NOT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `validated` enum('true','false') NOT NULL DEFAULT 'false',
  `validation_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_config`
--

CREATE TABLE IF NOT EXISTS `piwigo_config` (
  `param` varchar(40) NOT NULL DEFAULT '',
  `value` text DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='configuration table';

--
-- Дамп данных таблицы `piwigo_config`
--

INSERT INTO `piwigo_config` (`param`, `value`, `comment`) VALUES
('activate_comments', 'false', 'Global parameter for usage of comments system'),
('nb_comment_page', '10', 'number of comments to display on each page'),
('log', 'true', 'keep an history of visits on your website'),
('comments_validation', 'false', 'administrators validate users comments before becoming visible'),
('comments_forall', 'false', 'even guest not registered can post comments'),
('comments_order', 'ASC', 'comments order on picture page and cie'),
('comments_author_mandatory', 'false', 'Comment author is mandatory'),
('comments_email_mandatory', 'false', 'Comment email is mandatory'),
('comments_enable_website', 'true', 'Enable "website" field on add comment form'),
('user_can_delete_comment', 'false', 'administrators can allow user delete their own comments'),
('user_can_edit_comment', 'false', 'administrators can allow user edit their own comments'),
('email_admin_on_comment_edition', 'false', 'Send an email to the administrators when a comment is modified'),
('email_admin_on_comment_deletion', 'false', 'Send an email to the administrators when a comment is deleted'),
('gallery_locked', 'false', 'Lock your gallery temporary for non admin users'),
('gallery_title', 'Еще одна галерея Piwigo', 'Title at top of each page and for RSS feed'),
('rate', 'false', 'Rating pictures feature is enabled'),
('rate_anonymous', 'true', 'Rating pictures feature is also enabled for visitors'),
('page_banner', '<h1>%gallery_title%</h1>\n\n<p>Добро пожаловать в мою фотогалерею</p>', 'html displayed on the top each page of your gallery'),
('history_admin', 'false', 'keep a history of administrator visits on your website'),
('history_guest', 'true', 'keep a history of guest visits on your website'),
('allow_user_registration', 'true', 'allow visitors to register?'),
('allow_user_customization', 'true', 'allow users to customize their gallery?'),
('nb_categories_page', '12', 'Param for categories pagination'),
('nbm_send_html_mail', 'true', 'Send mail on HTML format for notification by mail'),
('nbm_send_mail_as', '', 'Send mail as param value for notification by mail'),
('nbm_send_detailed_content', 'true', 'Send detailed content for notification by mail'),
('nbm_complementary_mail_content', '', 'Complementary mail content for notification by mail'),
('nbm_send_recent_post_dates', 'true', 'Send recent post by dates for notification by mail'),
('email_admin_on_new_user', 'none', 'Send an email to theadministrators when a user registers'),
('email_admin_on_comment', 'false', 'Send an email to the administrators when a valid comment is entered'),
('email_admin_on_comment_validation', 'true', 'Send an email to the administrators when a comment requires validation'),
('obligatory_user_mail_address', 'false', 'Mail address is obligatory for users'),
('c13y_ignore', 'a:2:{s:7:"version";s:6:"14.4.0";s:4:"list";a:0:{}}', 'List of ignored anomalies'),
('extents_for_templates', 'a:0:{}', 'Actived template-extension(s)'),
('blk_menubar', '', 'Menubar options'),
('menubar_filter_icon', 'false', 'Display filter icon'),
('index_sort_order_input', 'true', 'Display image order selection list'),
('index_flat_icon', 'false', 'Display flat icon'),
('index_posted_date_icon', 'true', 'Display calendar by posted date'),
('index_created_date_icon', 'true', 'Display calendar by creation date icon'),
('index_slideshow_icon', 'true', 'Display slideshow icon'),
('index_new_icon', 'true', 'Display new icons next albums and pictures'),
('picture_metadata_icon', 'true', 'Display metadata icon on picture page'),
('picture_slideshow_icon', 'true', 'Display slideshow icon on picture page'),
('picture_favorite_icon', 'true', 'Display favorite icon on picture page'),
('picture_download_icon', 'true', 'Display download icon on picture page'),
('picture_navigation_icons', 'true', 'Display navigation icons on picture page'),
('picture_navigation_thumb', 'true', 'Display navigation thumbnails on picture page'),
('picture_menu', 'false', 'Show menubar on picture page'),
('picture_informations', 'a:11:{s:6:"author";b:1;s:10:"created_on";b:1;s:9:"posted_on";b:1;s:10:"dimensions";b:0;s:4:"file";b:0;s:8:"filesize";b:0;s:4:"tags";b:1;s:10:"categories";b:1;s:6:"visits";b:1;s:12:"rating_score";b:1;s:13:"privacy_level";b:1;}', 'Information displayed on picture page'),
('week_starts_on', 'monday', 'Monday may not be the first day of the week'),
('updates_ignored', 'a:3:{s:7:"plugins";a:0:{}s:6:"themes";a:0:{}s:9:"languages";a:0:{}}', 'Extensions ignored for update'),
('order_by', 'ORDER BY date_available DESC, file ASC, id ASC', 'default photo order'),
('order_by_inside_category', 'ORDER BY date_available DESC, file ASC, id ASC', 'default photo order inside category'),
('original_resize', 'false', NULL),
('original_resize_maxwidth', '2016', NULL),
('original_resize_maxheight', '2016', NULL),
('original_resize_quality', '95', NULL),
('mobile_theme', 'smartpocket', NULL),
('mail_theme', 'clear', NULL),
('picture_sizes_icon', 'true', NULL),
('index_sizes_icon', 'true', NULL),
('index_edit_icon', 'true', NULL),
('index_caddie_icon', 'true', NULL),
('display_fromto', 'false', NULL),
('picture_edit_icon', 'true', NULL),
('picture_caddie_icon', 'true', NULL),
('picture_representative_icon', 'true', NULL),
('show_mobile_app_banner_in_admin', 'true', NULL),
('show_mobile_app_banner_in_gallery', 'false', NULL),
('index_search_in_set_button', 'false', NULL),
('index_search_in_set_action', 'true', NULL),
('upload_detect_duplicate', 'true', NULL),
('secret_key', 'e9aa561af973a23901dfa27ddb3a45b4', 'a secret key specific to the gallery for internal use'),
('piwigo_db_version', '14', NULL),
('smartpocket', 'a:2:{s:4:"loop";b:1;s:8:"autohide";i:5000;}', NULL),
('modus_theme', 'a:5:{s:4:"skin";s:9:"newspaper";s:16:"album_thumb_size";i:250;s:17:"index_photo_deriv";s:6:"2small";s:22:"index_photo_deriv_hdpi";s:6:"xsmall";s:19:"display_page_banner";b:0;}', NULL),
('data_dir_checked', '1', NULL),
('derivatives', 'a:4:{s:1:"d";a:9:{s:6:"square";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714561534;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:120;i:1;i:120;}s:8:"max_crop";i:1;s:8:"min_size";a:2:{i:0;i:120;i:1;i:120;}}s:7:"sharpen";i:0;}s:5:"thumb";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714561534;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:144;i:1;i:144;}s:8:"max_crop";i:0;s:8:"min_size";N;}s:7:"sharpen";i:0;}s:6:"2small";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714561534;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:240;i:1;i:240;}s:8:"max_crop";i:0;s:8:"min_size";N;}s:7:"sharpen";i:0;}s:6:"xsmall";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714561534;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:432;i:1;i:324;}s:8:"max_crop";i:0;s:8:"min_size";N;}s:7:"sharpen";i:0;}s:5:"small";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714561534;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:576;i:1;i:432;}s:8:"max_crop";i:0;s:8:"min_size";N;}s:7:"sharpen";i:0;}s:6:"medium";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714561534;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:792;i:1;i:594;}s:8:"max_crop";i:0;s:8:"min_size";N;}s:7:"sharpen";i:0;}s:5:"large";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714561534;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:1008;i:1;i:756;}s:8:"max_crop";i:0;s:8:"min_size";N;}s:7:"sharpen";i:0;}s:6:"xlarge";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714561534;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:1224;i:1;i:918;}s:8:"max_crop";i:0;s:8:"min_size";N;}s:7:"sharpen";i:0;}s:7:"xxlarge";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714561534;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:1656;i:1;i:1242;}s:8:"max_crop";i:0;s:8:"min_size";N;}s:7:"sharpen";i:0;}}s:1:"q";i:95;s:1:"w";O:15:"WatermarkParams":7:{s:4:"file";s:0:"";s:8:"min_size";a:2:{i:0;i:500;i:1;i:500;}s:4:"xpos";i:50;s:4:"ypos";i:50;s:7:"xrepeat";i:0;s:7:"yrepeat";i:0;s:7:"opacity";i:100;}s:1:"c";a:1:{s:4:"e250";i:1714561581;}}', NULL),
('piwigo_installed_version', '14.4.0', NULL),
('no_photo_yet', 'false', NULL),
('update_notify_last_check', '2024-05-01T14:05:41+03:00', NULL),
('fs_quick_check_last_check', '2024-05-01T14:05:44+03:00', NULL),
('lounge_active', 'true', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_favorites`
--

CREATE TABLE IF NOT EXISTS `piwigo_favorites` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `image_id` mediumint(8) unsigned NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_groups`
--

CREATE TABLE IF NOT EXISTS `piwigo_groups` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `is_default` enum('true','false') NOT NULL DEFAULT 'false',
  `lastmodified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_group_access`
--

CREATE TABLE IF NOT EXISTS `piwigo_group_access` (
  `group_id` smallint(5) unsigned NOT NULL DEFAULT 0,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_history`
--

CREATE TABLE IF NOT EXISTS `piwigo_history` (
  `id` int(10) unsigned NOT NULL,
  `date` date NOT NULL DEFAULT '1970-01-01',
  `time` time NOT NULL DEFAULT '00:00:00',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `IP` varchar(15) NOT NULL DEFAULT '',
  `section` enum('categories','tags','search','list','favorites','most_visited','best_rated','recent_pics','recent_cats') DEFAULT NULL,
  `category_id` smallint(5) DEFAULT NULL,
  `search_id` int(10) unsigned DEFAULT NULL,
  `tag_ids` varchar(50) DEFAULT NULL,
  `image_id` mediumint(8) DEFAULT NULL,
  `image_type` enum('picture','high','other') DEFAULT NULL,
  `format_id` int(11) unsigned DEFAULT NULL,
  `auth_key_id` int(11) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_history_summary`
--

CREATE TABLE IF NOT EXISTS `piwigo_history_summary` (
  `year` smallint(4) NOT NULL DEFAULT 0,
  `month` tinyint(2) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `nb_pages` int(11) DEFAULT NULL,
  `history_id_from` int(10) unsigned DEFAULT NULL,
  `history_id_to` int(10) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_images`
--

CREATE TABLE IF NOT EXISTS `piwigo_images` (
  `id` mediumint(8) unsigned NOT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `date_available` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `date_creation` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `hit` int(10) unsigned NOT NULL DEFAULT 0,
  `filesize` mediumint(9) unsigned DEFAULT NULL,
  `width` smallint(9) unsigned DEFAULT NULL,
  `height` smallint(9) unsigned DEFAULT NULL,
  `coi` char(4) DEFAULT NULL COMMENT 'center of interest',
  `representative_ext` varchar(4) DEFAULT NULL,
  `date_metadata_update` date DEFAULT NULL,
  `rating_score` float(5,2) unsigned DEFAULT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `storage_category_id` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `md5sum` char(32) DEFAULT NULL,
  `added_by` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `rotation` tinyint(3) unsigned DEFAULT NULL,
  `latitude` double(8,6) DEFAULT NULL,
  `longitude` double(9,6) DEFAULT NULL,
  `lastmodified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `piwigo_images`
--

INSERT INTO `piwigo_images` (`id`, `file`, `date_available`, `date_creation`, `name`, `comment`, `author`, `hit`, `filesize`, `width`, `height`, `coi`, `representative_ext`, `date_metadata_update`, `rating_score`, `path`, `storage_category_id`, `level`, `md5sum`, `added_by`, `rotation`, `latitude`, `longitude`, `lastmodified`) VALUES
(1, 'IMG_20240413_211019.jpg', '2024-05-01 14:06:05', '2024-04-13 21:10:19', 'IMG 20240413 211019', NULL, NULL, 0, 922, 2340, 4160, NULL, NULL, '2024-05-01', NULL, './upload/2024/05/01/20240501140605-dc6d18e3.jpg', NULL, 0, 'dc6d18e362c8a995e71a593bea0ef496', 1, 0, NULL, NULL, '2024-05-01 11:06:05'),
(2, 'IMG_20240413_211025_HDR.jpg', '2024-05-01 14:06:07', '2024-04-13 21:10:25', 'IMG 20240413 211025 HDR', NULL, NULL, 0, 2203, 2340, 4160, NULL, NULL, '2024-05-01', NULL, './upload/2024/05/01/20240501140607-7fb4926a.jpg', NULL, 0, '7fb4926a5a31d9c31313cb75f08c48e5', 1, 0, NULL, NULL, '2024-05-01 11:06:07'),
(3, 'IMG_20240413_211031.jpg', '2024-05-01 14:06:08', '2024-04-13 21:10:31', 'IMG 20240413 211031', NULL, NULL, 0, 663, 2340, 4160, NULL, NULL, '2024-05-01', NULL, './upload/2024/05/01/20240501140608-165b5a54.jpg', NULL, 0, '165b5a54362ef1909041c2323c92c29f', 1, 0, NULL, NULL, '2024-05-01 11:06:08'),
(4, 'IMG_20240413_211036_HDR.jpg', '2024-05-01 14:06:10', '2024-04-13 21:10:36', 'IMG 20240413 211036 HDR', NULL, NULL, 0, 1711, 2340, 4160, NULL, NULL, '2024-05-01', NULL, './upload/2024/05/01/20240501140610-4f3eedb7.jpg', NULL, 0, '4f3eedb72aa57f1cc335630bbfb54661', 1, 0, NULL, NULL, '2024-05-01 11:06:10'),
(5, 'IMG_20240413_211518_HDR.jpg', '2024-05-01 14:06:11', '2024-04-13 21:15:18', 'IMG 20240413 211518 HDR', NULL, NULL, 0, 1294, 4160, 2340, NULL, NULL, '2024-05-01', NULL, './upload/2024/05/01/20240501140611-ac226a9d.jpg', NULL, 0, 'ac226a9d959e0ee0f819a60b80151743', 1, 0, NULL, NULL, '2024-05-01 11:06:11'),
(6, 'IMG_20240413_211531.jpg', '2024-05-01 14:06:12', '2024-04-13 21:15:31', 'IMG 20240413 211531', NULL, NULL, 0, 1360, 4160, 2340, NULL, NULL, '2024-05-01', NULL, './upload/2024/05/01/20240501140612-9dc84e67.jpg', NULL, 0, '9dc84e67a2f8b89a4eda05f453d2cb06', 1, 0, NULL, NULL, '2024-05-01 11:06:12'),
(7, 'IMG_20240413_211538_HDR.jpg', '2024-05-01 14:06:14', '2024-04-13 21:15:38', 'IMG 20240413 211538 HDR', NULL, NULL, 1, 1529, 4160, 2340, NULL, NULL, '2024-05-01', NULL, './upload/2024/05/01/20240501140614-d4a4eba3.jpg', NULL, 0, 'd4a4eba302460345529eaaa285af0526', 1, 0, NULL, NULL, '2024-05-01 11:06:14'),
(8, 'IMG_20240413_211543_HDR.jpg', '2024-05-01 14:06:15', '2024-04-13 21:15:43', 'IMG 20240413 211543 HDR', NULL, NULL, 0, 1372, 4160, 2340, NULL, NULL, '2024-05-01', NULL, './upload/2024/05/01/20240501140615-9b25c9f8.jpg', NULL, 0, '9b25c9f8bbbe78a3e80b2f413c1b0994', 1, 0, NULL, NULL, '2024-05-01 11:06:15'),
(9, 'IMG_20240413_211548.jpg', '2024-05-01 14:06:17', '2024-04-13 21:15:48', 'IMG 20240413 211548', NULL, NULL, 0, 1274, 4160, 2340, NULL, NULL, '2024-05-01', NULL, './upload/2024/05/01/20240501140617-27ed5498.jpg', NULL, 0, '27ed54984dbaf9b8a6f97fb0357a78a1', 1, 0, NULL, NULL, '2024-05-01 11:06:17'),
(10, 'IMG_20240413_211550.jpg', '2024-05-01 14:06:18', '2024-04-13 21:15:50', 'IMG 20240413 211550', NULL, NULL, 0, 1294, 4160, 2340, NULL, NULL, '2024-05-01', NULL, './upload/2024/05/01/20240501140618-3019f200.jpg', NULL, 0, '3019f2004f4e28b1c2ebf60a25bc6b7f', 1, 0, NULL, NULL, '2024-05-01 11:06:18');

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_image_category`
--

CREATE TABLE IF NOT EXISTS `piwigo_image_category` (
  `image_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `category_id` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rank` mediumint(8) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `piwigo_image_category`
--

INSERT INTO `piwigo_image_category` (`image_id`, `category_id`, `rank`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_image_format`
--

CREATE TABLE IF NOT EXISTS `piwigo_image_format` (
  `format_id` int(11) unsigned NOT NULL,
  `image_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `ext` varchar(255) NOT NULL,
  `filesize` mediumint(9) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_image_tag`
--

CREATE TABLE IF NOT EXISTS `piwigo_image_tag` (
  `image_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `tag_id` smallint(5) unsigned NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_languages`
--

CREATE TABLE IF NOT EXISTS `piwigo_languages` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `version` varchar(64) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `piwigo_languages`
--

INSERT INTO `piwigo_languages` (`id`, `version`, `name`) VALUES
('ru_RU', '14.4.0', 'Русский [RU]');

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_lounge`
--

CREATE TABLE IF NOT EXISTS `piwigo_lounge` (
  `image_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `category_id` smallint(5) unsigned NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_old_permalinks`
--

CREATE TABLE IF NOT EXISTS `piwigo_old_permalinks` (
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT 0,
  `permalink` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `date_deleted` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `last_hit` datetime DEFAULT NULL,
  `hit` int(10) unsigned NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_plugins`
--

CREATE TABLE IF NOT EXISTS `piwigo_plugins` (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` enum('inactive','active') NOT NULL DEFAULT 'inactive',
  `version` varchar(64) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_rate`
--

CREATE TABLE IF NOT EXISTS `piwigo_rate` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `element_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `anonymous_id` varchar(45) NOT NULL DEFAULT '',
  `rate` tinyint(2) unsigned NOT NULL DEFAULT 0,
  `date` date NOT NULL DEFAULT '1970-01-01'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_search`
--

CREATE TABLE IF NOT EXISTS `piwigo_search` (
  `id` int(10) unsigned NOT NULL,
  `search_uuid` char(23) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` mediumint(8) unsigned DEFAULT NULL,
  `forked_from` int(10) unsigned DEFAULT NULL,
  `rules` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_sessions`
--

CREATE TABLE IF NOT EXISTS `piwigo_sessions` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `data` mediumtext NOT NULL,
  `expiration` datetime NOT NULL DEFAULT '1970-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `piwigo_sessions`
--

INSERT INTO `piwigo_sessions` (`id`, `data`, `expiration`) VALUES
('25D7o9gefijhenj7ke8ee6hj2pbk93', 'pwg_uid|i:1;pwg_device|s:7:"desktop";pwg_mobile_theme|b:0;cache_activity_last_weeks|a:2:{s:13:"calculated_on";i:1714561544;s:4:"data";a:1:{i:3;a:1:{i:3;a:3:{s:7:"details";a:2:{s:6:"System";a:2:{s:8:"Activate";s:1:"2";s:7:"Install";s:1:"1";}s:4:"User";a:1:{s:5:"Login";s:1:"1";}}s:6:"number";i:4;s:4:"date";s:18:"Ср 1 Май 2024";}}}}pwg_caps|a:3:{i:0;s:1:"1";i:1;s:4:"1920";i:2;s:3:"911";}need_update14.4.0|b:0;extensions_need_update|a:0:{}pwg_referer_image_id|s:1:"7";', '2024-05-01 14:06:27');

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_sites`
--

CREATE TABLE IF NOT EXISTS `piwigo_sites` (
  `id` tinyint(4) NOT NULL,
  `galleries_url` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `piwigo_sites`
--

INSERT INTO `piwigo_sites` (`id`, `galleries_url`) VALUES
(1, './galleries/');

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_tags`
--

CREATE TABLE IF NOT EXISTS `piwigo_tags` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastmodified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_themes`
--

CREATE TABLE IF NOT EXISTS `piwigo_themes` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `version` varchar(64) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `piwigo_themes`
--

INSERT INTO `piwigo_themes` (`id`, `version`, `name`) VALUES
('smartpocket', '14.4.0', 'Smart Pocket'),
('modus', '14.4.0', 'modus');

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_upgrade`
--

CREATE TABLE IF NOT EXISTS `piwigo_upgrade` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `applied` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `piwigo_upgrade`
--

INSERT INTO `piwigo_upgrade` (`id`, `applied`, `description`) VALUES
('61', '2024-05-01 14:05:31', 'upgrade included in installation'),
('62', '2024-05-01 14:05:31', 'upgrade included in installation'),
('63', '2024-05-01 14:05:31', 'upgrade included in installation'),
('64', '2024-05-01 14:05:31', 'upgrade included in installation'),
('65', '2024-05-01 14:05:31', 'upgrade included in installation'),
('66', '2024-05-01 14:05:31', 'upgrade included in installation'),
('67', '2024-05-01 14:05:31', 'upgrade included in installation'),
('68', '2024-05-01 14:05:31', 'upgrade included in installation'),
('69', '2024-05-01 14:05:31', 'upgrade included in installation'),
('70', '2024-05-01 14:05:31', 'upgrade included in installation'),
('71', '2024-05-01 14:05:31', 'upgrade included in installation'),
('72', '2024-05-01 14:05:31', 'upgrade included in installation'),
('73', '2024-05-01 14:05:31', 'upgrade included in installation'),
('74', '2024-05-01 14:05:31', 'upgrade included in installation'),
('75', '2024-05-01 14:05:31', 'upgrade included in installation'),
('76', '2024-05-01 14:05:31', 'upgrade included in installation'),
('77', '2024-05-01 14:05:31', 'upgrade included in installation'),
('78', '2024-05-01 14:05:31', 'upgrade included in installation'),
('79', '2024-05-01 14:05:31', 'upgrade included in installation'),
('80', '2024-05-01 14:05:31', 'upgrade included in installation'),
('81', '2024-05-01 14:05:31', 'upgrade included in installation'),
('82', '2024-05-01 14:05:31', 'upgrade included in installation'),
('83', '2024-05-01 14:05:31', 'upgrade included in installation'),
('84', '2024-05-01 14:05:31', 'upgrade included in installation'),
('85', '2024-05-01 14:05:31', 'upgrade included in installation'),
('86', '2024-05-01 14:05:31', 'upgrade included in installation'),
('87', '2024-05-01 14:05:31', 'upgrade included in installation'),
('88', '2024-05-01 14:05:31', 'upgrade included in installation'),
('89', '2024-05-01 14:05:31', 'upgrade included in installation'),
('90', '2024-05-01 14:05:31', 'upgrade included in installation'),
('91', '2024-05-01 14:05:31', 'upgrade included in installation'),
('92', '2024-05-01 14:05:31', 'upgrade included in installation'),
('93', '2024-05-01 14:05:31', 'upgrade included in installation'),
('94', '2024-05-01 14:05:31', 'upgrade included in installation'),
('95', '2024-05-01 14:05:31', 'upgrade included in installation'),
('96', '2024-05-01 14:05:31', 'upgrade included in installation'),
('97', '2024-05-01 14:05:31', 'upgrade included in installation'),
('98', '2024-05-01 14:05:31', 'upgrade included in installation'),
('99', '2024-05-01 14:05:31', 'upgrade included in installation'),
('100', '2024-05-01 14:05:31', 'upgrade included in installation'),
('101', '2024-05-01 14:05:31', 'upgrade included in installation'),
('102', '2024-05-01 14:05:31', 'upgrade included in installation'),
('103', '2024-05-01 14:05:31', 'upgrade included in installation'),
('104', '2024-05-01 14:05:31', 'upgrade included in installation'),
('105', '2024-05-01 14:05:31', 'upgrade included in installation'),
('106', '2024-05-01 14:05:31', 'upgrade included in installation'),
('107', '2024-05-01 14:05:31', 'upgrade included in installation'),
('108', '2024-05-01 14:05:31', 'upgrade included in installation'),
('109', '2024-05-01 14:05:31', 'upgrade included in installation'),
('110', '2024-05-01 14:05:31', 'upgrade included in installation'),
('111', '2024-05-01 14:05:31', 'upgrade included in installation'),
('112', '2024-05-01 14:05:31', 'upgrade included in installation'),
('113', '2024-05-01 14:05:31', 'upgrade included in installation'),
('114', '2024-05-01 14:05:31', 'upgrade included in installation'),
('115', '2024-05-01 14:05:31', 'upgrade included in installation'),
('116', '2024-05-01 14:05:31', 'upgrade included in installation'),
('117', '2024-05-01 14:05:31', 'upgrade included in installation'),
('118', '2024-05-01 14:05:31', 'upgrade included in installation'),
('119', '2024-05-01 14:05:31', 'upgrade included in installation'),
('120', '2024-05-01 14:05:31', 'upgrade included in installation'),
('121', '2024-05-01 14:05:31', 'upgrade included in installation'),
('122', '2024-05-01 14:05:31', 'upgrade included in installation'),
('123', '2024-05-01 14:05:31', 'upgrade included in installation'),
('124', '2024-05-01 14:05:31', 'upgrade included in installation'),
('125', '2024-05-01 14:05:31', 'upgrade included in installation'),
('126', '2024-05-01 14:05:31', 'upgrade included in installation'),
('127', '2024-05-01 14:05:31', 'upgrade included in installation'),
('128', '2024-05-01 14:05:31', 'upgrade included in installation'),
('129', '2024-05-01 14:05:31', 'upgrade included in installation'),
('130', '2024-05-01 14:05:31', 'upgrade included in installation'),
('131', '2024-05-01 14:05:31', 'upgrade included in installation'),
('132', '2024-05-01 14:05:31', 'upgrade included in installation'),
('133', '2024-05-01 14:05:31', 'upgrade included in installation'),
('134', '2024-05-01 14:05:31', 'upgrade included in installation'),
('135', '2024-05-01 14:05:31', 'upgrade included in installation'),
('136', '2024-05-01 14:05:31', 'upgrade included in installation'),
('137', '2024-05-01 14:05:31', 'upgrade included in installation'),
('138', '2024-05-01 14:05:31', 'upgrade included in installation'),
('139', '2024-05-01 14:05:31', 'upgrade included in installation'),
('140', '2024-05-01 14:05:31', 'upgrade included in installation'),
('141', '2024-05-01 14:05:31', 'upgrade included in installation'),
('142', '2024-05-01 14:05:31', 'upgrade included in installation'),
('143', '2024-05-01 14:05:31', 'upgrade included in installation'),
('144', '2024-05-01 14:05:31', 'upgrade included in installation'),
('145', '2024-05-01 14:05:31', 'upgrade included in installation'),
('146', '2024-05-01 14:05:31', 'upgrade included in installation'),
('147', '2024-05-01 14:05:31', 'upgrade included in installation'),
('148', '2024-05-01 14:05:31', 'upgrade included in installation'),
('149', '2024-05-01 14:05:31', 'upgrade included in installation'),
('150', '2024-05-01 14:05:31', 'upgrade included in installation'),
('151', '2024-05-01 14:05:31', 'upgrade included in installation'),
('152', '2024-05-01 14:05:31', 'upgrade included in installation'),
('153', '2024-05-01 14:05:31', 'upgrade included in installation'),
('154', '2024-05-01 14:05:31', 'upgrade included in installation'),
('155', '2024-05-01 14:05:31', 'upgrade included in installation'),
('156', '2024-05-01 14:05:31', 'upgrade included in installation'),
('157', '2024-05-01 14:05:31', 'upgrade included in installation'),
('158', '2024-05-01 14:05:31', 'upgrade included in installation'),
('159', '2024-05-01 14:05:31', 'upgrade included in installation'),
('160', '2024-05-01 14:05:31', 'upgrade included in installation'),
('161', '2024-05-01 14:05:31', 'upgrade included in installation'),
('162', '2024-05-01 14:05:31', 'upgrade included in installation'),
('163', '2024-05-01 14:05:31', 'upgrade included in installation'),
('164', '2024-05-01 14:05:31', 'upgrade included in installation'),
('165', '2024-05-01 14:05:31', 'upgrade included in installation'),
('166', '2024-05-01 14:05:31', 'upgrade included in installation'),
('167', '2024-05-01 14:05:31', 'upgrade included in installation'),
('168', '2024-05-01 14:05:31', 'upgrade included in installation'),
('169', '2024-05-01 14:05:31', 'upgrade included in installation'),
('170', '2024-05-01 14:05:31', 'upgrade included in installation');

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_users`
--

CREATE TABLE IF NOT EXISTS `piwigo_users` (
  `id` mediumint(8) unsigned NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT NULL,
  `mail_address` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `piwigo_users`
--

INSERT INTO `piwigo_users` (`id`, `username`, `password`, `mail_address`) VALUES
(1, 'dark-room', '10af0fb890807d5f9739e4fe305a1afc', 'nifed5002@rambler.ru'),
(2, 'guest', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_user_access`
--

CREATE TABLE IF NOT EXISTS `piwigo_user_access` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_user_auth_keys`
--

CREATE TABLE IF NOT EXISTS `piwigo_user_auth_keys` (
  `auth_key_id` int(11) unsigned NOT NULL,
  `auth_key` varchar(255) NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL,
  `created_on` datetime NOT NULL,
  `duration` int(11) unsigned DEFAULT NULL,
  `expired_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_user_cache`
--

CREATE TABLE IF NOT EXISTS `piwigo_user_cache` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `need_update` enum('true','false') NOT NULL DEFAULT 'true',
  `cache_update_time` int(10) unsigned NOT NULL DEFAULT 0,
  `forbidden_categories` mediumtext DEFAULT NULL,
  `nb_total_images` mediumint(8) unsigned DEFAULT NULL,
  `last_photo_date` datetime DEFAULT NULL,
  `nb_available_tags` int(5) DEFAULT NULL,
  `nb_available_comments` int(5) DEFAULT NULL,
  `image_access_type` enum('NOT IN','IN') NOT NULL DEFAULT 'NOT IN',
  `image_access_list` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `piwigo_user_cache`
--

INSERT INTO `piwigo_user_cache` (`user_id`, `need_update`, `cache_update_time`, `forbidden_categories`, `nb_total_images`, `last_photo_date`, `nb_available_tags`, `nb_available_comments`, `image_access_type`, `image_access_list`) VALUES
(1, 'false', 1714561581, '0', 10, '2024-05-01 14:06:18', 0, NULL, 'NOT IN', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_user_cache_categories`
--

CREATE TABLE IF NOT EXISTS `piwigo_user_cache_categories` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT 0,
  `date_last` datetime DEFAULT NULL,
  `max_date_last` datetime DEFAULT NULL,
  `nb_images` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `count_images` mediumint(8) unsigned DEFAULT 0,
  `nb_categories` mediumint(8) unsigned DEFAULT 0,
  `count_categories` mediumint(8) unsigned DEFAULT 0,
  `user_representative_picture_id` mediumint(8) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `piwigo_user_cache_categories`
--

INSERT INTO `piwigo_user_cache_categories` (`user_id`, `cat_id`, `date_last`, `max_date_last`, `nb_images`, `count_images`, `nb_categories`, `count_categories`, `user_representative_picture_id`) VALUES
(1, 1, '2024-05-01 14:06:18', '2024-05-01 14:06:18', 10, 10, 0, 0, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_user_feed`
--

CREATE TABLE IF NOT EXISTS `piwigo_user_feed` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `last_check` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_user_group`
--

CREATE TABLE IF NOT EXISTS `piwigo_user_group` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `group_id` smallint(5) unsigned NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_user_infos`
--

CREATE TABLE IF NOT EXISTS `piwigo_user_infos` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `nb_image_page` smallint(3) unsigned NOT NULL DEFAULT 15,
  `status` enum('webmaster','admin','normal','generic','guest') NOT NULL DEFAULT 'guest',
  `language` varchar(50) NOT NULL DEFAULT 'en_UK',
  `expand` enum('true','false') NOT NULL DEFAULT 'false',
  `show_nb_comments` enum('true','false') NOT NULL DEFAULT 'false',
  `show_nb_hits` enum('true','false') NOT NULL DEFAULT 'false',
  `recent_period` tinyint(3) unsigned NOT NULL DEFAULT 7,
  `theme` varchar(255) NOT NULL DEFAULT 'modus',
  `registration_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `enabled_high` enum('true','false') NOT NULL DEFAULT 'true',
  `level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `activation_key` varchar(255) DEFAULT NULL,
  `activation_key_expire` datetime DEFAULT NULL,
  `last_visit` datetime DEFAULT NULL,
  `last_visit_from_history` enum('true','false') NOT NULL DEFAULT 'false',
  `lastmodified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `preferences` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `piwigo_user_infos`
--

INSERT INTO `piwigo_user_infos` (`user_id`, `nb_image_page`, `status`, `language`, `expand`, `show_nb_comments`, `show_nb_hits`, `recent_period`, `theme`, `registration_date`, `enabled_high`, `level`, `activation_key`, `activation_key_expire`, `last_visit`, `last_visit_from_history`, `lastmodified`, `preferences`) VALUES
(1, 15, 'webmaster', 'ru_RU', 'false', 'false', 'false', 7, 'modus', '2024-05-01 14:05:31', 'true', 8, NULL, NULL, '2024-05-01 14:05:41', 'false', '2024-05-01 11:05:32', 'a:1:{s:28:"show_newsletter_subscription";b:0;}'),
(2, 15, 'guest', 'ru_RU', 'false', 'false', 'false', 7, 'modus', '2024-05-01 14:05:31', 'true', 0, NULL, NULL, NULL, 'false', '2024-05-01 11:05:31', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `piwigo_user_mail_notification`
--

CREATE TABLE IF NOT EXISTS `piwigo_user_mail_notification` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `check_key` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `enabled` enum('true','false') NOT NULL DEFAULT 'false',
  `last_send` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `piwigo_activity`
--
ALTER TABLE `piwigo_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Индексы таблицы `piwigo_caddie`
--
ALTER TABLE `piwigo_caddie`
  ADD PRIMARY KEY (`user_id`,`element_id`);

--
-- Индексы таблицы `piwigo_categories`
--
ALTER TABLE `piwigo_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_i3` (`permalink`),
  ADD KEY `categories_i2` (`id_uppercat`),
  ADD KEY `lastmodified` (`lastmodified`);

--
-- Индексы таблицы `piwigo_comments`
--
ALTER TABLE `piwigo_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_i2` (`validation_date`),
  ADD KEY `comments_i1` (`image_id`);

--
-- Индексы таблицы `piwigo_config`
--
ALTER TABLE `piwigo_config`
  ADD PRIMARY KEY (`param`);

--
-- Индексы таблицы `piwigo_favorites`
--
ALTER TABLE `piwigo_favorites`
  ADD PRIMARY KEY (`user_id`,`image_id`);

--
-- Индексы таблицы `piwigo_groups`
--
ALTER TABLE `piwigo_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_ui1` (`name`),
  ADD KEY `lastmodified` (`lastmodified`);

--
-- Индексы таблицы `piwigo_group_access`
--
ALTER TABLE `piwigo_group_access`
  ADD PRIMARY KEY (`group_id`,`cat_id`);

--
-- Индексы таблицы `piwigo_history`
--
ALTER TABLE `piwigo_history`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `piwigo_history_summary`
--
ALTER TABLE `piwigo_history_summary`
  ADD UNIQUE KEY `history_summary_ymdh` (`year`,`month`,`day`,`hour`);

--
-- Индексы таблицы `piwigo_images`
--
ALTER TABLE `piwigo_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_i2` (`date_available`),
  ADD KEY `images_i3` (`rating_score`),
  ADD KEY `images_i4` (`hit`),
  ADD KEY `images_i5` (`date_creation`),
  ADD KEY `images_i1` (`storage_category_id`),
  ADD KEY `images_i6` (`latitude`),
  ADD KEY `images_i7` (`path`),
  ADD KEY `lastmodified` (`lastmodified`);

--
-- Индексы таблицы `piwigo_image_category`
--
ALTER TABLE `piwigo_image_category`
  ADD PRIMARY KEY (`image_id`,`category_id`),
  ADD KEY `image_category_i1` (`category_id`);

--
-- Индексы таблицы `piwigo_image_format`
--
ALTER TABLE `piwigo_image_format`
  ADD PRIMARY KEY (`format_id`);

--
-- Индексы таблицы `piwigo_image_tag`
--
ALTER TABLE `piwigo_image_tag`
  ADD PRIMARY KEY (`image_id`,`tag_id`),
  ADD KEY `image_tag_i1` (`tag_id`);

--
-- Индексы таблицы `piwigo_languages`
--
ALTER TABLE `piwigo_languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `piwigo_lounge`
--
ALTER TABLE `piwigo_lounge`
  ADD PRIMARY KEY (`image_id`,`category_id`);

--
-- Индексы таблицы `piwigo_old_permalinks`
--
ALTER TABLE `piwigo_old_permalinks`
  ADD PRIMARY KEY (`permalink`);

--
-- Индексы таблицы `piwigo_plugins`
--
ALTER TABLE `piwigo_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `piwigo_rate`
--
ALTER TABLE `piwigo_rate`
  ADD PRIMARY KEY (`element_id`,`user_id`,`anonymous_id`);

--
-- Индексы таблицы `piwigo_search`
--
ALTER TABLE `piwigo_search`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `piwigo_sessions`
--
ALTER TABLE `piwigo_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `piwigo_sites`
--
ALTER TABLE `piwigo_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sites_ui1` (`galleries_url`);

--
-- Индексы таблицы `piwigo_tags`
--
ALTER TABLE `piwigo_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_i1` (`url_name`),
  ADD KEY `lastmodified` (`lastmodified`);

--
-- Индексы таблицы `piwigo_themes`
--
ALTER TABLE `piwigo_themes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `piwigo_upgrade`
--
ALTER TABLE `piwigo_upgrade`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `piwigo_users`
--
ALTER TABLE `piwigo_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_ui1` (`username`);

--
-- Индексы таблицы `piwigo_user_access`
--
ALTER TABLE `piwigo_user_access`
  ADD PRIMARY KEY (`user_id`,`cat_id`);

--
-- Индексы таблицы `piwigo_user_auth_keys`
--
ALTER TABLE `piwigo_user_auth_keys`
  ADD PRIMARY KEY (`auth_key_id`);

--
-- Индексы таблицы `piwigo_user_cache`
--
ALTER TABLE `piwigo_user_cache`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `piwigo_user_cache_categories`
--
ALTER TABLE `piwigo_user_cache_categories`
  ADD PRIMARY KEY (`user_id`,`cat_id`);

--
-- Индексы таблицы `piwigo_user_feed`
--
ALTER TABLE `piwigo_user_feed`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `piwigo_user_group`
--
ALTER TABLE `piwigo_user_group`
  ADD PRIMARY KEY (`group_id`,`user_id`);

--
-- Индексы таблицы `piwigo_user_infos`
--
ALTER TABLE `piwigo_user_infos`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `lastmodified` (`lastmodified`);

--
-- Индексы таблицы `piwigo_user_mail_notification`
--
ALTER TABLE `piwigo_user_mail_notification`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_mail_notification_ui1` (`check_key`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `piwigo_activity`
--
ALTER TABLE `piwigo_activity`
  MODIFY `activity_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `piwigo_categories`
--
ALTER TABLE `piwigo_categories`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `piwigo_comments`
--
ALTER TABLE `piwigo_comments`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `piwigo_groups`
--
ALTER TABLE `piwigo_groups`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `piwigo_history`
--
ALTER TABLE `piwigo_history`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `piwigo_images`
--
ALTER TABLE `piwigo_images`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `piwigo_image_format`
--
ALTER TABLE `piwigo_image_format`
  MODIFY `format_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `piwigo_search`
--
ALTER TABLE `piwigo_search`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `piwigo_sites`
--
ALTER TABLE `piwigo_sites`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `piwigo_tags`
--
ALTER TABLE `piwigo_tags`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `piwigo_users`
--
ALTER TABLE `piwigo_users`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `piwigo_user_auth_keys`
--
ALTER TABLE `piwigo_user_auth_keys`
  MODIFY `auth_key_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
