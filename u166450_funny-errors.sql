-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 02 2024 г., 10:51
-- Версия сервера: 10.4.30-MariaDB-cll-lve-log
-- Версия PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u166450_funny-errors`
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
) ENGINE=MyISAM AUTO_INCREMENT=210 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `piwigo_activity`
--

INSERT INTO `piwigo_activity` (`activity_id`, `object`, `object_id`, `action`, `performed_by`, `session_idx`, `ip_address`, `occured_on`, `details`, `user_agent`) VALUES
(1, 'system', 3, 'activate', 0, 'none', '37.215.74.95', '2024-05-02 07:42:47', 'a:3:{s:8:"theme_id";s:11:"smartpocket";s:7:"version";s:6:"14.4.0";s:6:"script";s:7:"install";}', NULL),
(2, 'system', 3, 'activate', 0, 'none', '37.215.74.95', '2024-05-02 07:42:47', 'a:3:{s:8:"theme_id";s:5:"modus";s:7:"version";s:6:"14.4.0";s:6:"script";s:7:"install";}', NULL),
(3, 'system', 1, 'install', 0, 'none', '37.215.74.95', '2024-05-02 07:42:47', 'a:2:{s:7:"version";s:6:"14.4.0";s:6:"script";s:7:"install";}', NULL),
(4, 'user', 1, 'login', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:42:47', 'a:1:{s:6:"script";s:7:"install";}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36'),
(5, 'album', 1, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:46:41', 'a:1:{s:6:"method";s:18:"pwg.categories.add";}', NULL),
(6, 'album', 2, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:46:52', 'a:1:{s:6:"method";s:18:"pwg.categories.add";}', NULL),
(7, 'album', 3, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:47:09', 'a:1:{s:6:"method";s:18:"pwg.categories.add";}', NULL),
(8, 'album', 4, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:47:15', 'a:1:{s:6:"method";s:18:"pwg.categories.add";}', NULL),
(9, 'album', 5, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:47:21', 'a:1:{s:6:"method";s:18:"pwg.categories.add";}', NULL),
(10, 'album', 6, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:47:28', 'a:1:{s:6:"method";s:18:"pwg.categories.add";}', NULL),
(11, 'album', 7, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:47:34', 'a:1:{s:6:"method";s:18:"pwg.categories.add";}', NULL),
(12, 'album', 8, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:47:41', 'a:1:{s:6:"method";s:18:"pwg.categories.add";}', NULL),
(13, 'photo', 1, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:12', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(14, 'photo', 2, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:12', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(15, 'photo', 3, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:12', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(16, 'photo', 4, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:12', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(17, 'photo', 5, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:12', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(18, 'photo', 6, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:12', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(19, 'photo', 7, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:12', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(20, 'photo', 8, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:12', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(21, 'photo', 9, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:12', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(22, 'photo', 10, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:13', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(23, 'photo', 11, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:13', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(24, 'photo', 12, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:13', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(25, 'photo', 13, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:42', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(26, 'photo', 14, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:42', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(27, 'photo', 15, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:43', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(28, 'photo', 16, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:43', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(29, 'photo', 17, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:43', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(30, 'photo', 18, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:43', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(31, 'photo', 19, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:43', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(32, 'photo', 20, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:43', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(33, 'photo', 21, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:43', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(34, 'photo', 22, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:43', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(35, 'photo', 23, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:43', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(36, 'photo', 24, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:43', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(37, 'photo', 25, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:43', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(38, 'photo', 26, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:43', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(39, 'photo', 27, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(40, 'photo', 28, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(41, 'photo', 29, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(42, 'photo', 30, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(43, 'photo', 31, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(44, 'photo', 32, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(45, 'photo', 33, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(46, 'photo', 34, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(47, 'photo', 35, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(48, 'photo', 36, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(49, 'photo', 37, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(50, 'photo', 38, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(51, 'photo', 39, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:45', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(52, 'photo', 40, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:45', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(53, 'photo', 41, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:45', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(54, 'photo', 42, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:45', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(55, 'photo', 43, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:45', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(56, 'photo', 44, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:45', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(57, 'photo', 45, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:45', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(58, 'photo', 46, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:45', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(59, 'photo', 47, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:45', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(60, 'photo', 48, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:45', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(61, 'photo', 49, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:45', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(62, 'photo', 50, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:46', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(63, 'photo', 51, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:46', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(64, 'photo', 52, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:46', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(65, 'photo', 53, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:46', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(66, 'photo', 54, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:47', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(67, 'photo', 55, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:47', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(68, 'photo', 56, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:48', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(69, 'photo', 57, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:48', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(70, 'photo', 58, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:48:48', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(71, 'photo', 59, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:02', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(72, 'photo', 60, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:02', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(73, 'photo', 61, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:02', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(74, 'photo', 62, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:02', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(75, 'photo', 63, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:02', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(76, 'photo', 64, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:02', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(77, 'photo', 65, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:02', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(78, 'photo', 66, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:02', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(79, 'photo', 67, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:02', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(80, 'photo', 68, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:02', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(81, 'photo', 69, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:02', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(82, 'photo', 70, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:02', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(83, 'photo', 71, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:03', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(84, 'photo', 72, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:03', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(85, 'photo', 73, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:03', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(86, 'photo', 74, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:03', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(87, 'photo', 75, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:03', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(88, 'photo', 76, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:03', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(89, 'photo', 77, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:03', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(90, 'photo', 78, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:03', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(91, 'photo', 79, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:03', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(92, 'photo', 80, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:03', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(93, 'photo', 81, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:03', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(94, 'photo', 82, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:03', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(95, 'photo', 83, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:03', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(96, 'photo', 84, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:15', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(97, 'photo', 85, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:15', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(98, 'photo', 86, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:15', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(99, 'photo', 87, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:15', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(100, 'photo', 88, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:15', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(101, 'photo', 89, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(102, 'photo', 90, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(103, 'photo', 91, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(104, 'photo', 92, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(105, 'photo', 93, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(106, 'photo', 94, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(107, 'photo', 95, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(108, 'photo', 96, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(109, 'photo', 97, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(110, 'photo', 98, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(111, 'photo', 99, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(112, 'photo', 100, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(113, 'photo', 101, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(114, 'photo', 102, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(115, 'photo', 103, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(116, 'photo', 104, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(117, 'photo', 105, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(118, 'photo', 106, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(119, 'photo', 107, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:31', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(120, 'photo', 108, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:31', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(121, 'photo', 109, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:31', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(122, 'photo', 110, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:31', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(123, 'photo', 111, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:31', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(124, 'photo', 112, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:31', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(125, 'photo', 113, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:31', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(126, 'photo', 114, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:31', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(127, 'photo', 115, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:31', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(128, 'photo', 116, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:31', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(129, 'photo', 117, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:31', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(130, 'photo', 118, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:31', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(131, 'photo', 119, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:31', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(132, 'photo', 120, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:31', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(133, 'photo', 121, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:32', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(134, 'photo', 122, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:32', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(135, 'photo', 123, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:32', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(136, 'photo', 124, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:32', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(137, 'photo', 125, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:32', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(138, 'photo', 126, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:32', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(139, 'photo', 127, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:32', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(140, 'photo', 128, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:32', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(141, 'photo', 129, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:43', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(142, 'photo', 130, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:43', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(143, 'photo', 131, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:43', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(144, 'photo', 132, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:43', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(145, 'photo', 133, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:43', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(146, 'photo', 134, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(147, 'photo', 135, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(148, 'photo', 136, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(149, 'photo', 137, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(150, 'photo', 138, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(151, 'photo', 139, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(152, 'photo', 140, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(153, 'photo', 141, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(154, 'photo', 142, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(155, 'photo', 143, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(156, 'photo', 144, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(157, 'photo', 145, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(158, 'photo', 146, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(159, 'photo', 147, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:44', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(160, 'photo', 148, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:45', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(161, 'photo', 149, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:45', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(162, 'photo', 150, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:45', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(163, 'photo', 151, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:45', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(164, 'photo', 152, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:45', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(165, 'photo', 153, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:58', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(166, 'photo', 154, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:58', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(167, 'photo', 155, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:58', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(168, 'photo', 156, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:58', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(169, 'photo', 157, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:58', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(170, 'photo', 158, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:58', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(171, 'photo', 159, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:59', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(172, 'photo', 160, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:59', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(173, 'photo', 161, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:59', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(174, 'photo', 162, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:59', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(175, 'photo', 163, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:59', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(176, 'photo', 164, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:59', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(177, 'photo', 165, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:59', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(178, 'photo', 166, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:49:59', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(179, 'photo', 167, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(180, 'photo', 168, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(181, 'photo', 169, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(182, 'photo', 170, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:16', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(183, 'photo', 171, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(184, 'photo', 172, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(185, 'photo', 173, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(186, 'photo', 174, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(187, 'photo', 175, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(188, 'photo', 176, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(189, 'photo', 177, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(190, 'photo', 178, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(191, 'photo', 179, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(192, 'photo', 180, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(193, 'photo', 181, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(194, 'photo', 182, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(195, 'photo', 183, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:17', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(196, 'photo', 184, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:18', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(197, 'photo', 185, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:18', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(198, 'photo', 186, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:18', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(199, 'photo', 187, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:18', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(200, 'photo', 188, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:18', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(201, 'photo', 189, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:18', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(202, 'photo', 190, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:18', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(203, 'photo', 191, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:18', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(204, 'photo', 192, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:18', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(205, 'photo', 193, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:18', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(206, 'photo', 194, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:18', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(207, 'photo', 195, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:18', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(208, 'photo', 196, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:18', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL),
(209, 'photo', 197, 'add', 1, 'moj7g1hkc6t5bfmskco14g0jaj', '37.215.74.95', '2024-05-02 07:50:19', 'a:2:{s:6:"method";s:17:"pwg.images.upload";s:10:"added_with";s:7:"browser";}', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `piwigo_categories`
--

INSERT INTO `piwigo_categories` (`id`, `name`, `id_uppercat`, `comment`, `dir`, `rank`, `status`, `site_id`, `visible`, `representative_picture_id`, `uppercats`, `commentable`, `global_rank`, `image_order`, `permalink`, `lastmodified`) VALUES
(1, '1 серия', NULL, NULL, NULL, 8, 'public', NULL, 'true', 10, '1', 'true', '8', NULL, NULL, '2024-05-02 07:48:13'),
(2, 'Виндовые библии 2 серия', NULL, NULL, NULL, 7, 'public', NULL, 'true', 15, '2', 'true', '7', NULL, NULL, '2024-05-02 07:48:49'),
(3, '3 серия', NULL, NULL, NULL, 6, 'public', NULL, 'true', 73, '3', 'true', '6', NULL, NULL, '2024-05-02 07:49:03'),
(4, '4 серия', NULL, NULL, NULL, 5, 'public', NULL, 'true', 98, '4', 'true', '5', NULL, NULL, '2024-05-02 07:49:17'),
(5, '5 серия', NULL, NULL, NULL, 4, 'public', NULL, 'true', 120, '5', 'true', '4', NULL, NULL, '2024-05-02 07:49:32'),
(6, '6 серия', NULL, NULL, NULL, 3, 'public', NULL, 'true', 129, '6', 'true', '3', NULL, NULL, '2024-05-02 07:49:45'),
(7, '7 серия', NULL, NULL, NULL, 2, 'public', NULL, 'true', 161, '7', 'true', '2', NULL, NULL, '2024-05-02 07:49:59'),
(8, '8 серия', NULL, NULL, NULL, 1, 'public', NULL, 'true', 168, '8', 'true', '1', NULL, NULL, '2024-05-02 07:50:19');

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
('secret_key', 'ac63a5f2ee51c387e2db2a387ed0cc31', 'a secret key specific to the gallery for internal use'),
('piwigo_db_version', '14', NULL),
('smartpocket', 'a:2:{s:4:"loop";b:1;s:8:"autohide";i:5000;}', NULL),
('modus_theme', 'a:5:{s:4:"skin";s:9:"newspaper";s:16:"album_thumb_size";i:250;s:17:"index_photo_deriv";s:6:"2small";s:22:"index_photo_deriv_hdpi";s:6:"xsmall";s:19:"display_page_banner";b:0;}', NULL),
('data_dir_checked', '1', NULL),
('derivatives', 'a:4:{s:1:"d";a:9:{s:6:"square";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714635769;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:120;i:1;i:120;}s:8:"max_crop";i:1;s:8:"min_size";a:2:{i:0;i:120;i:1;i:120;}}s:7:"sharpen";i:0;}s:5:"thumb";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714635769;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:144;i:1;i:144;}s:8:"max_crop";i:0;s:8:"min_size";N;}s:7:"sharpen";i:0;}s:6:"2small";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714635769;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:240;i:1;i:240;}s:8:"max_crop";i:0;s:8:"min_size";N;}s:7:"sharpen";i:0;}s:6:"xsmall";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714635769;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:432;i:1;i:324;}s:8:"max_crop";i:0;s:8:"min_size";N;}s:7:"sharpen";i:0;}s:5:"small";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714635769;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:576;i:1;i:432;}s:8:"max_crop";i:0;s:8:"min_size";N;}s:7:"sharpen";i:0;}s:6:"medium";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714635769;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:792;i:1;i:594;}s:8:"max_crop";i:0;s:8:"min_size";N;}s:7:"sharpen";i:0;}s:5:"large";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714635769;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:1008;i:1;i:756;}s:8:"max_crop";i:0;s:8:"min_size";N;}s:7:"sharpen";i:0;}s:6:"xlarge";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714635769;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:1224;i:1;i:918;}s:8:"max_crop";i:0;s:8:"min_size";N;}s:7:"sharpen";i:0;}s:7:"xxlarge";O:16:"DerivativeParams":3:{s:13:"last_mod_time";i:1714635769;s:6:"sizing";O:12:"SizingParams":3:{s:10:"ideal_size";a:2:{i:0;i:1656;i:1;i:1242;}s:8:"max_crop";i:0;s:8:"min_size";N;}s:7:"sharpen";i:0;}}s:1:"q";i:95;s:1:"w";O:15:"WatermarkParams":7:{s:4:"file";s:0:"";s:8:"min_size";a:2:{i:0;i:500;i:1;i:500;}s:4:"xpos";i:50;s:4:"ypos";i:50;s:7:"xrepeat";i:0;s:7:"yrepeat";i:0;s:7:"opacity";i:100;}s:1:"c";a:1:{s:4:"e250";i:1714636221;}}', NULL),
('piwigo_installed_version', '14.4.0', NULL),
('no_photo_yet', 'false', NULL),
('update_notify_last_check', '2024-05-02T10:42:52+03:00', NULL),
('fs_quick_check_last_check', '2024-05-02T10:42:54+03:00', NULL),
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
) ENGINE=MyISAM AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `piwigo_images`
--

INSERT INTO `piwigo_images` (`id`, `file`, `date_available`, `date_creation`, `name`, `comment`, `author`, `hit`, `filesize`, `width`, `height`, `coi`, `representative_ext`, `date_metadata_update`, `rating_score`, `path`, `storage_category_id`, `level`, `md5sum`, `added_by`, `rotation`, `latitude`, `longitude`, `lastmodified`) VALUES
(1, '0201.png', '2024-05-02 10:48:12', NULL, '0201', NULL, NULL, 0, 1, 655, 119, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104812-4d7b8be0.png', NULL, 0, '4d7b8be01c8fb615ef678640ad90022a', 1, 0, NULL, NULL, '2024-05-02 07:48:12'),
(2, '0202.png', '2024-05-02 10:48:12', NULL, '0202', NULL, NULL, 0, 2, 705, 156, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104812-d809b8ea.png', NULL, 0, 'd809b8ea17dc8b9664e441bb9a3397e5', 1, 0, NULL, NULL, '2024-05-02 07:48:12'),
(3, '0203.png', '2024-05-02 10:48:12', NULL, '0203', NULL, NULL, 0, 1, 705, 120, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104812-207fb6de.png', NULL, 0, '207fb6de0a16ee39339bbcbd98f59ef0', 1, 0, NULL, NULL, '2024-05-02 07:48:12'),
(4, '0204.png', '2024-05-02 10:48:12', NULL, '0204', NULL, NULL, 0, 9, 491, 132, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104812-cb50e0ef.png', NULL, 0, 'cb50e0efe80d083ea60d64da768cdfda', 1, 0, NULL, NULL, '2024-05-02 07:48:12'),
(5, '0205.png', '2024-05-02 10:48:12', NULL, '0205', NULL, NULL, 0, 10, 436, 132, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104812-fd43d938.png', NULL, 0, 'fd43d93895ec47ebaa6a915d660d25b5', 1, 0, NULL, NULL, '2024-05-02 07:48:12'),
(6, '0206.png', '2024-05-02 10:48:12', NULL, '0206', NULL, NULL, 0, 17, 491, 172, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104812-e7f11f6e.png', NULL, 0, 'e7f11f6eb4487fac4a7638074444cd2c', 1, 0, NULL, NULL, '2024-05-02 07:48:12'),
(7, '0207.png', '2024-05-02 10:48:12', NULL, '0207', NULL, NULL, 0, 10, 491, 132, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104812-7d3d8011.png', NULL, 0, '7d3d8011b71453f5ec9990df922016c6', 1, 0, NULL, NULL, '2024-05-02 07:48:12'),
(8, '0208.png', '2024-05-02 10:48:12', NULL, '0208', NULL, NULL, 0, 11, 491, 132, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104812-c4d2ba3f.png', NULL, 0, 'c4d2ba3ff0652dff412bff546f7dc2b1', 1, 0, NULL, NULL, '2024-05-02 07:48:12'),
(9, '0209.png', '2024-05-02 10:48:12', NULL, '0209', NULL, NULL, 0, 17, 491, 197, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104812-8ad5fd73.png', NULL, 0, '8ad5fd73ad20df9077c636e4a5d92369', 1, 0, NULL, NULL, '2024-05-02 07:48:12'),
(10, '0210.png', '2024-05-02 10:48:13', NULL, '0210', NULL, NULL, 0, 12, 491, 145, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104813-0215d9ba.png', NULL, 0, '0215d9ba7cf5e781cee28927ae1f1572', 1, 0, NULL, NULL, '2024-05-02 07:48:13'),
(11, '0211.png', '2024-05-02 10:48:13', NULL, '0211', NULL, NULL, 0, 12, 491, 146, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104813-f7e997ea.png', NULL, 0, 'f7e997ea9619fd66a6d2f442d74df8ab', 1, 0, NULL, NULL, '2024-05-02 07:48:13'),
(12, '0212.png', '2024-05-02 10:48:13', NULL, '0212', NULL, NULL, 0, 1, 274, 255, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104813-0352e80f.png', NULL, 0, '0352e80fb976c9e88fa801fa200e242a', 1, 0, NULL, NULL, '2024-05-02 07:48:13'),
(13, 'S02E1.png', '2024-05-02 10:48:42', NULL, 'S02E1', NULL, NULL, 0, 4, 658, 336, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104842-1874c8d4.png', NULL, 0, '1874c8d48e409787930079c432325d19', 1, 0, NULL, NULL, '2024-05-02 07:48:42'),
(14, 'S02E2.png', '2024-05-02 10:48:42', NULL, 'S02E2', NULL, NULL, 0, 7, 606, 623, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104842-f06e0ee7.png', NULL, 0, 'f06e0ee73a92646d261e091bad43601f', 1, 0, NULL, NULL, '2024-05-02 07:48:42'),
(15, 'S02E3.png', '2024-05-02 10:48:43', NULL, 'S02E3', NULL, NULL, 0, 17, 397, 698, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104843-fd21535e.png', NULL, 0, 'fd21535e5796847af4ff1243b76b41d8', 1, 0, NULL, NULL, '2024-05-02 07:48:43'),
(16, 'S02E4.png', '2024-05-02 10:48:43', NULL, 'S02E4', NULL, NULL, 0, 12, 330, 1739, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104843-3049ad45.png', NULL, 0, '3049ad4539c0f19cb7444285e91267d0', 1, 0, NULL, NULL, '2024-05-02 07:48:43'),
(17, 'S02E5.png', '2024-05-02 10:48:43', NULL, 'S02E5', NULL, NULL, 0, 5, 533, 414, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104843-fe57ba95.png', NULL, 0, 'fe57ba9500a19f79128147c58ac7eeec', 1, 0, NULL, NULL, '2024-05-02 07:48:43'),
(18, 'S02E6.png', '2024-05-02 10:48:43', NULL, 'S02E6', NULL, NULL, 0, 5, 533, 304, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104843-30bf8f25.png', NULL, 0, '30bf8f25e7c840c57f4d3ca329b49223', 1, 0, NULL, NULL, '2024-05-02 07:48:43'),
(19, 'S02E7.png', '2024-05-02 10:48:43', NULL, 'S02E7', NULL, NULL, 0, 5, 533, 343, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104843-1e6d7659.png', NULL, 0, '1e6d7659247470719fd5b106c75caab8', 1, 0, NULL, NULL, '2024-05-02 07:48:43'),
(20, 'S02E8.png', '2024-05-02 10:48:43', NULL, 'S02E8', NULL, NULL, 0, 8, 482, 452, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104843-97e9ca17.png', NULL, 0, '97e9ca17a06aae8b614075a4e4755940', 1, 0, NULL, NULL, '2024-05-02 07:48:43'),
(21, 'S02E9.png', '2024-05-02 10:48:43', NULL, 'S02E9', NULL, NULL, 0, 8, 482, 453, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104843-19431404.png', NULL, 0, '19431404d1eee8b1b78610fd5d366181', 1, 0, NULL, NULL, '2024-05-02 07:48:43'),
(22, 'S02E10.png', '2024-05-02 10:48:43', NULL, 'S02E10', NULL, NULL, 0, 7, 482, 453, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104843-b6949898.png', NULL, 0, 'b6949898a2a21438d4a69e1b2ccedcd7', 1, 0, NULL, NULL, '2024-05-02 07:48:43'),
(23, 'S02E11.png', '2024-05-02 10:48:43', NULL, 'S02E11', NULL, NULL, 0, 8, 482, 453, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104843-25d3b7bd.png', NULL, 0, '25d3b7bdb4223c4a388b6fc9a5c28752', 1, 0, NULL, NULL, '2024-05-02 07:48:43'),
(24, 'S02E12.png', '2024-05-02 10:48:43', NULL, 'S02E12', NULL, NULL, 0, 10, 482, 453, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104843-a10f8584.png', NULL, 0, 'a10f858412d28ea13e71feb30bf5381f', 1, 0, NULL, NULL, '2024-05-02 07:48:43'),
(25, 'S02E13.png', '2024-05-02 10:48:43', NULL, 'S02E13', NULL, NULL, 0, 10, 482, 453, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104843-976f1225.png', NULL, 0, '976f1225a467646eb422a8ae41406603', 1, 0, NULL, NULL, '2024-05-02 07:48:43'),
(26, 'S02E14.png', '2024-05-02 10:48:43', NULL, 'S02E14', NULL, NULL, 0, 10, 482, 453, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104843-904b3703.png', NULL, 0, '904b37034af101796b817091d603e09a', 1, 0, NULL, NULL, '2024-05-02 07:48:43'),
(27, 'S02E15.png', '2024-05-02 10:48:44', NULL, 'S02E15', NULL, NULL, 0, 12, 482, 466, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104844-cbbaa824.png', NULL, 0, 'cbbaa824043bf349286cafcbebf9bb38', 1, 0, NULL, NULL, '2024-05-02 07:48:44'),
(28, 'S02E16.png', '2024-05-02 10:48:44', NULL, 'S02E16', NULL, NULL, 0, 15, 482, 588, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104844-41539333.png', NULL, 0, '4153933318e1b30368a90b42fb067583', 1, 0, NULL, NULL, '2024-05-02 07:48:44'),
(29, 'S02E17.png', '2024-05-02 10:48:44', NULL, 'S02E17', NULL, NULL, 0, 13, 482, 492, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104844-31c78062.png', NULL, 0, '31c780626df8b132c6645cf70f5ab0ab', 1, 0, NULL, NULL, '2024-05-02 07:48:44'),
(30, 'S02E18.png', '2024-05-02 10:48:44', NULL, 'S02E18', NULL, NULL, 0, 16, 497, 553, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104844-a1d63e07.png', NULL, 0, 'a1d63e0715aa79c36a642bc68a2f3a73', 1, 0, NULL, NULL, '2024-05-02 07:48:44'),
(31, 'S02E19.png', '2024-05-02 10:48:44', NULL, 'S02E19', NULL, NULL, 0, 16, 497, 557, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104844-84e8dbd8.png', NULL, 0, '84e8dbd808b83a374df9f380ea7e33b8', 1, 0, NULL, NULL, '2024-05-02 07:48:44'),
(32, 'S02E20.png', '2024-05-02 10:48:44', NULL, 'S02E20', NULL, NULL, 0, 17, 497, 570, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104844-150f9e40.png', NULL, 0, '150f9e4092b618cabc192a311fa5d9f4', 1, 0, NULL, NULL, '2024-05-02 07:48:44'),
(33, 'S02E21.png', '2024-05-02 10:48:44', NULL, 'S02E21', NULL, NULL, 0, 16, 497, 544, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104844-13a0861a.png', NULL, 0, '13a0861a87ad295959254832d628d9d9', 1, 0, NULL, NULL, '2024-05-02 07:48:44'),
(34, 'S02E22.png', '2024-05-02 10:48:44', NULL, 'S02E22', NULL, NULL, 0, 12, 497, 388, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104844-c7463c5f.png', NULL, 0, 'c7463c5f8d05e434d73d8c632a596c65', 1, 0, NULL, NULL, '2024-05-02 07:48:44'),
(35, 'S02E23.png', '2024-05-02 10:48:44', NULL, 'S02E23', NULL, NULL, 0, 15, 497, 531, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104844-f3e813df.png', NULL, 0, 'f3e813df3648674856e31e61ddca8fa9', 1, 0, NULL, NULL, '2024-05-02 07:48:44'),
(36, 'S02E24.png', '2024-05-02 10:48:44', NULL, 'S02E24', NULL, NULL, 0, 9, 362, 792, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104844-4270a8d9.png', NULL, 0, '4270a8d950bdc3045f2ed64edce7fc6e', 1, 0, NULL, NULL, '2024-05-02 07:48:44'),
(37, 'S02E25.png', '2024-05-02 10:48:44', NULL, 'S02E25', NULL, NULL, 0, 8, 362, 804, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104844-2383ced4.png', NULL, 0, '2383ced43f349652ef6c51b0338e259b', 1, 0, NULL, NULL, '2024-05-02 07:48:44'),
(38, 'S02E26.png', '2024-05-02 10:48:44', NULL, 'S02E26', NULL, NULL, 0, 9, 705, 494, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104844-1d219523.png', NULL, 0, '1d219523df90c49cd935fd08733b2dd9', 1, 0, NULL, NULL, '2024-05-02 07:48:44'),
(39, 'S02E27.png', '2024-05-02 10:48:45', NULL, 'S02E27', NULL, NULL, 0, 8, 705, 429, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104845-8fcd406d.png', NULL, 0, '8fcd406d8dc3a417bd846747c1a7c186', 1, 0, NULL, NULL, '2024-05-02 07:48:45'),
(40, 'S02E28.png', '2024-05-02 10:48:45', NULL, 'S02E28', NULL, NULL, 0, 8, 705, 403, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104845-7077ecfd.png', NULL, 0, '7077ecfd2048fb2b8670501fc69ddc42', 1, 0, NULL, NULL, '2024-05-02 07:48:45'),
(41, 'S02E29.png', '2024-05-02 10:48:45', NULL, 'S02E29', NULL, NULL, 0, 7, 705, 364, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104845-4d913058.png', NULL, 0, '4d9130583007964bbd01539655403f73', 1, 0, NULL, NULL, '2024-05-02 07:48:45'),
(42, 'S02E30.png', '2024-05-02 10:48:45', NULL, 'S02E30', NULL, NULL, 0, 14, 475, 201, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104845-dc4e108f.png', NULL, 0, 'dc4e108fe4659be0bef5a53ad89f6828', 1, 0, NULL, NULL, '2024-05-02 07:48:45'),
(43, 'S02E31ME.png', '2024-05-02 10:48:45', NULL, 'S02E31ME', NULL, NULL, 0, 16, 475, 214, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104845-437b1af5.png', NULL, 0, '437b1af51606bcc16805b5a3708a6aa7', 1, 0, NULL, NULL, '2024-05-02 07:48:45'),
(44, 'S02E32ME.png', '2024-05-02 10:48:45', NULL, 'S02E32ME', NULL, NULL, 0, 17, 475, 267, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104845-e200c929.png', NULL, 0, 'e200c929a2bf3c8ff476fe7db7129a57', 1, 0, NULL, NULL, '2024-05-02 07:48:45'),
(45, 'S02E33.png', '2024-05-02 10:48:45', NULL, 'S02E33', NULL, NULL, 0, 23, 491, 317, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104845-7df7721d.png', NULL, 0, '7df7721da4a453eaf7f018b7cc16255e', 1, 0, NULL, NULL, '2024-05-02 07:48:45'),
(46, 'S02E34.png', '2024-05-02 10:48:45', NULL, 'S02E34', NULL, NULL, 0, 22, 491, 314, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104845-aaf40ceb.png', NULL, 0, 'aaf40ceb8ea5b60ff3206921065b8f2c', 1, 0, NULL, NULL, '2024-05-02 07:48:45'),
(47, 'S02E35.png', '2024-05-02 10:48:45', NULL, 'S02E35', NULL, NULL, 0, 23, 491, 353, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104845-9eba451c.png', NULL, 0, '9eba451c1e5d45a4dd4a4b1897e2f88f', 1, 0, NULL, NULL, '2024-05-02 07:48:45'),
(48, 'S02E36.png', '2024-05-02 10:48:45', NULL, 'S02E36', NULL, NULL, 0, 24, 491, 394, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104845-5897151c.png', NULL, 0, '5897151cf22a831f9450c2e2500a7397', 1, 0, NULL, NULL, '2024-05-02 07:48:45'),
(49, 'S02E37.png', '2024-05-02 10:48:45', NULL, 'S02E37', NULL, NULL, 0, 58, 491, 1138, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104845-d4a1bc3a.png', NULL, 0, 'd4a1bc3ab8d2a4697e5bd918c2efaba4', 1, 0, NULL, NULL, '2024-05-02 07:48:45'),
(50, 'S02E38.png', '2024-05-02 10:48:46', NULL, 'S02E38', NULL, NULL, 0, 139, 665, 1447, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104846-0c49abe5.png', NULL, 0, '0c49abe5e47b760c48c376695e4ad200', 1, 0, NULL, NULL, '2024-05-02 07:48:46'),
(51, 'S02E39.png', '2024-05-02 10:48:46', NULL, 'S02E39', NULL, NULL, 0, 139, 664, 1138, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104846-1af50c16.png', NULL, 0, '1af50c1690bdb72d31def98d0c64ae2e', 1, 0, NULL, NULL, '2024-05-02 07:48:46'),
(52, 'S02E40.png', '2024-05-02 10:48:46', NULL, 'S02E40', NULL, NULL, 0, 59, 512, 570, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104846-4f502e9b.png', NULL, 0, '4f502e9be76de70eb2d904975668fdb3', 1, 0, NULL, NULL, '2024-05-02 07:48:46'),
(53, 'S02E41.png', '2024-05-02 10:48:46', NULL, 'S02E41', NULL, NULL, 0, 158, 686, 1725, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104846-31c45874.png', NULL, 0, '31c45874eb982f5f18ce66adc9c0a4ce', 1, 0, NULL, NULL, '2024-05-02 07:48:46'),
(54, 'S02E42.png', '2024-05-02 10:48:47', NULL, 'S02E42', NULL, NULL, 0, 221, 686, 1783, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104847-0105817c.png', NULL, 0, '0105817c81cd90e1be092ac6c9089c12', 1, 0, NULL, NULL, '2024-05-02 07:48:47'),
(55, 'S02E43.png', '2024-05-02 10:48:47', NULL, 'S02E43', NULL, NULL, 0, 89, 582, 1301, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104847-bc8a70fa.png', NULL, 0, 'bc8a70fab76264823eb7529db0012877', 1, 0, NULL, NULL, '2024-05-02 07:48:47'),
(56, 'S02E44.png', '2024-05-02 10:48:48', NULL, 'S02E44', NULL, NULL, 0, 77, 596, 1100, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104848-6e52ad09.png', NULL, 0, '6e52ad097ba2c03526fcc5870bb45870', 1, 0, NULL, NULL, '2024-05-02 07:48:48'),
(57, 'S02E45.png', '2024-05-02 10:48:48', NULL, 'S02E45', NULL, NULL, 0, 73, 652, 967, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104848-3bb055fa.png', NULL, 0, '3bb055fa13913bd572552675b92f6ee1', 1, 0, NULL, NULL, '2024-05-02 07:48:48'),
(58, 'S02E46.png', '2024-05-02 10:48:48', NULL, 'S02E46', NULL, NULL, 0, 117, 652, 1441, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104848-1b483b46.png', NULL, 0, '1b483b468f2866e79a2edd2459aacd7a', 1, 0, NULL, NULL, '2024-05-02 07:48:48'),
(59, '0301.png', '2024-05-02 10:49:02', NULL, '0301', NULL, NULL, 0, 26, 514, 216, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104902-91c9188b.png', NULL, 0, '91c9188bce4bbe6fa2cf70635993f07d', 1, 0, NULL, NULL, '2024-05-02 07:49:02'),
(60, '0302.png', '2024-05-02 10:49:02', NULL, '0302', NULL, NULL, 0, 19, 514, 159, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104902-ea76cb2a.png', NULL, 0, 'ea76cb2a4bc9ce9b43ca9646c86f3654', 1, 0, NULL, NULL, '2024-05-02 07:49:02'),
(61, '0303.png', '2024-05-02 10:49:02', NULL, '0303', NULL, NULL, 0, 25, 514, 203, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104902-b69d806b.png', NULL, 0, 'b69d806b4c59f94734e3fe63c0d015eb', 1, 0, NULL, NULL, '2024-05-02 07:49:02'),
(62, '0304.png', '2024-05-02 10:49:02', NULL, '0304', NULL, NULL, 0, 21, 508, 173, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104902-4c41095c.png', NULL, 0, '4c41095cb30c89d818c2941acf268d0b', 1, 0, NULL, NULL, '2024-05-02 07:49:02'),
(63, '0305.png', '2024-05-02 10:49:02', NULL, '0305', NULL, NULL, 0, 27, 514, 215, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104902-b5a4ec3c.png', NULL, 0, 'b5a4ec3cd19e099b05b0a1de6285d3ac', 1, 0, NULL, NULL, '2024-05-02 07:49:02'),
(64, '0306.png', '2024-05-02 10:49:02', NULL, '0306', NULL, NULL, 0, 22, 514, 187, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104902-14f3f05a.png', NULL, 0, '14f3f05a32bc30cd7fd817cba1699e37', 1, 0, NULL, NULL, '2024-05-02 07:49:02'),
(65, '0307.png', '2024-05-02 10:49:02', NULL, '0307', NULL, NULL, 0, 28, 514, 223, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104902-bd86dd97.png', NULL, 0, 'bd86dd970778e7bcf8dc25e730fe183c', 1, 0, NULL, NULL, '2024-05-02 07:49:02'),
(66, '0308.png', '2024-05-02 10:49:02', NULL, '0308', NULL, NULL, 0, 21, 514, 173, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104902-ceaeb528.png', NULL, 0, 'ceaeb52880bc8fddbefeabad26109584', 1, 0, NULL, NULL, '2024-05-02 07:49:02'),
(67, '0309.png', '2024-05-02 10:49:02', NULL, '0309', NULL, NULL, 0, 27, 514, 216, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104902-1e2aefea.png', NULL, 0, '1e2aefeaef34ca1c5db626f5ead41be4', 1, 0, NULL, NULL, '2024-05-02 07:49:02'),
(68, '0310.png', '2024-05-02 10:49:02', NULL, '0310', NULL, NULL, 0, 21, 514, 172, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104902-af492df2.png', NULL, 0, 'af492df2d3b9359a9978ae36645640d1', 1, 0, NULL, NULL, '2024-05-02 07:49:02'),
(69, '0311.png', '2024-05-02 10:49:02', NULL, '0311', NULL, NULL, 0, 26, 514, 216, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104902-6df20ba3.png', NULL, 0, '6df20ba371709481662c22d38bc4e420', 1, 0, NULL, NULL, '2024-05-02 07:49:02'),
(70, '0312.png', '2024-05-02 10:49:02', NULL, '0312', NULL, NULL, 0, 20, 514, 159, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104902-40de7b41.png', NULL, 0, '40de7b4172a68d35196ea8a00b0f3fe2', 1, 0, NULL, NULL, '2024-05-02 07:49:02'),
(71, '0313.png', '2024-05-02 10:49:03', NULL, '0313', NULL, NULL, 0, 21, 514, 173, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104903-52ef24c9.png', NULL, 0, '52ef24c96eb1d500a511ee79bc9ce945', 1, 0, NULL, NULL, '2024-05-02 07:49:03'),
(72, '0314.png', '2024-05-02 10:49:03', NULL, '0314', NULL, NULL, 0, 2, 639, 136, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104903-fac79caf.png', NULL, 0, 'fac79cafc9f00fd18a288289ad9cf8d2', 1, 0, NULL, NULL, '2024-05-02 07:49:03'),
(73, '0315.png', '2024-05-02 10:49:03', NULL, '0315', NULL, NULL, 0, 4, 639, 135, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104903-638d5253.png', NULL, 0, '638d5253c31285c22c3c1c5244a9e8c6', 1, 0, NULL, NULL, '2024-05-02 07:49:03'),
(74, '0316.png', '2024-05-02 10:49:03', NULL, '0316', NULL, NULL, 0, 2, 639, 136, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104903-1940cf90.png', NULL, 0, '1940cf90ecf62e3e3abf602510e4e12c', 1, 0, NULL, NULL, '2024-05-02 07:49:03'),
(75, '0317.png', '2024-05-02 10:49:03', NULL, '0317', NULL, NULL, 0, 3, 639, 136, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104903-9cdcf37b.png', NULL, 0, '9cdcf37bb716066531eb934dfb094ce9', 1, 0, NULL, NULL, '2024-05-02 07:49:03'),
(76, '0318.png', '2024-05-02 10:49:03', NULL, '0318', NULL, NULL, 0, 2, 639, 98, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104903-1a088a61.png', NULL, 0, '1a088a61ff14ddd9b6f2b7d880141db8', 1, 0, NULL, NULL, '2024-05-02 07:49:03'),
(77, '0319.png', '2024-05-02 10:49:03', NULL, '0319', NULL, NULL, 0, 4, 639, 150, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104903-e4122108.png', NULL, 0, 'e412210827e8855b4c2563a05d3ca9bc', 1, 0, NULL, NULL, '2024-05-02 07:49:03'),
(78, '0320.png', '2024-05-02 10:49:03', NULL, '0320', NULL, NULL, 0, 4, 639, 122, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104903-ef865450.png', NULL, 0, 'ef8654507b36dc06921d576ac8722557', 1, 0, NULL, NULL, '2024-05-02 07:49:03'),
(79, '0321.png', '2024-05-02 10:49:03', NULL, '0321', NULL, NULL, 0, 3, 639, 122, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104903-0c24d768.png', NULL, 0, '0c24d76807c7393bb140d47550811e84', 1, 0, NULL, NULL, '2024-05-02 07:49:03'),
(80, '0322.png', '2024-05-02 10:49:03', NULL, '0322', NULL, NULL, 0, 4, 639, 122, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104903-5766281b.png', NULL, 0, '5766281b2d3d18e75128a019c0516897', 1, 0, NULL, NULL, '2024-05-02 07:49:03'),
(81, '0323.png', '2024-05-02 10:49:03', NULL, '0323', NULL, NULL, 0, 2, 639, 136, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104903-bfd256eb.png', NULL, 0, 'bfd256eb5afc4cd6ce624996b994cc42', 1, 0, NULL, NULL, '2024-05-02 07:49:03'),
(82, '0324.png', '2024-05-02 10:49:03', NULL, '0324', NULL, NULL, 0, 3, 639, 136, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104903-c8f1c11b.png', NULL, 0, 'c8f1c11b2ac665ecb9c466f441cb1b7d', 1, 0, NULL, NULL, '2024-05-02 07:49:03'),
(83, '0325.png', '2024-05-02 10:49:03', NULL, '0325', NULL, NULL, 0, 4, 639, 136, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104903-bb8ee89d.png', NULL, 0, 'bb8ee89dbfe60b15fcceb1e5863fcd01', 1, 0, NULL, NULL, '2024-05-02 07:49:03'),
(84, '0401.png', '2024-05-02 10:49:15', NULL, '0401', NULL, NULL, 0, 10, 491, 132, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104915-ae2b8211.png', NULL, 0, 'ae2b82119eb42b0f21c29c2a66ff23e4', 1, 0, NULL, NULL, '2024-05-02 07:49:15'),
(85, '0402.png', '2024-05-02 10:49:15', NULL, '0402', NULL, NULL, 0, 15, 491, 184, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104915-5487ce76.png', NULL, 0, '5487ce761cc24698c239d359885e83a5', 1, 0, NULL, NULL, '2024-05-02 07:49:15'),
(86, '0403.png', '2024-05-02 10:49:15', NULL, '0403', NULL, NULL, 0, 13, 491, 158, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104915-37ea6b56.png', NULL, 0, '37ea6b56951cce19ee46e1ee603754a4', 1, 0, NULL, NULL, '2024-05-02 07:49:15'),
(87, '0404.png', '2024-05-02 10:49:15', NULL, '0404', NULL, NULL, 0, 13, 491, 135, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104915-c831b1f6.png', NULL, 0, 'c831b1f6dcdc5ca70a694e695cbd5840', 1, 0, NULL, NULL, '2024-05-02 07:49:15'),
(88, '0405.png', '2024-05-02 10:49:15', NULL, '0405', NULL, NULL, 0, 9, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104915-8ac1b33d.png', NULL, 0, '8ac1b33d171a89913c18f0754c8b22c6', 1, 0, NULL, NULL, '2024-05-02 07:49:15'),
(89, '0406.png', '2024-05-02 10:49:16', NULL, '0406', NULL, NULL, 0, 17, 600, 159, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104916-cccefe0d.png', NULL, 0, 'cccefe0d57d6138a1d3efa768ed5293e', 1, 0, NULL, NULL, '2024-05-02 07:49:16'),
(90, '0407.png', '2024-05-02 10:49:16', NULL, '0407', NULL, NULL, 0, 7, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104916-b30937c6.png', NULL, 0, 'b30937c6395dbd6bb0da14d8e95ecd2f', 1, 0, NULL, NULL, '2024-05-02 07:49:16'),
(91, '0408.png', '2024-05-02 10:49:16', NULL, '0408', NULL, NULL, 0, 19, 800, 158, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104916-70b3e716.png', NULL, 0, '70b3e716ff12a0177c441b6da133c259', 1, 0, NULL, NULL, '2024-05-02 07:49:16'),
(92, '0409.png', '2024-05-02 10:49:16', NULL, '0409', NULL, NULL, 0, 10, 491, 119, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104916-6a38babc.png', NULL, 0, '6a38babc0e9f35b491456701b2d42c60', 1, 0, NULL, NULL, '2024-05-02 07:49:16'),
(93, '0410.png', '2024-05-02 10:49:16', NULL, '0410', NULL, NULL, 0, 11, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104916-d88e12cb.png', NULL, 0, 'd88e12cbbdf5e597f997a04a532a5133', 1, 0, NULL, NULL, '2024-05-02 07:49:16'),
(94, '0411.png', '2024-05-02 10:49:16', NULL, '0411', NULL, NULL, 0, 7, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104916-a295faaf.png', NULL, 0, 'a295faafa3e7bc982e3777cae8031fe8', 1, 0, NULL, NULL, '2024-05-02 07:49:16'),
(95, '0412.png', '2024-05-02 10:49:16', NULL, '0412', NULL, NULL, 0, 13, 689, 132, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104916-984ba73c.png', NULL, 0, '984ba73caabf5a8b3065e30981eac861', 1, 0, NULL, NULL, '2024-05-02 07:49:16'),
(96, '0413.png', '2024-05-02 10:49:16', NULL, '0413', NULL, NULL, 0, 10, 491, 119, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104916-7bbb4839.png', NULL, 0, '7bbb483991bbd71dc4d076a3d698c17d', 1, 0, NULL, NULL, '2024-05-02 07:49:16'),
(97, '0414.png', '2024-05-02 10:49:16', NULL, '0414', NULL, NULL, 0, 12, 491, 119, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104916-dedfc943.png', NULL, 0, 'dedfc943cc98b0dacfcea3c6dd9381c7', 1, 0, NULL, NULL, '2024-05-02 07:49:16'),
(98, '0414_1.png', '2024-05-02 10:49:16', NULL, '0414 1', NULL, NULL, 0, 7, 491, 107, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104916-80833dfa.png', NULL, 0, '80833dfa72393bacd39842d539cd3a2e', 1, 0, NULL, NULL, '2024-05-02 07:49:16'),
(99, '0415.png', '2024-05-02 10:49:16', NULL, '0415', NULL, NULL, 0, 10, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104916-294a65dd.png', NULL, 0, '294a65dd2f04a84c3a50d4c5d2db1514', 1, 0, NULL, NULL, '2024-05-02 07:49:16'),
(100, '0416.png', '2024-05-02 10:49:16', NULL, '0416', NULL, NULL, 0, 9, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104916-501c2968.png', NULL, 0, '501c296806386f75f7dbeadf6e79aa46', 1, 0, NULL, NULL, '2024-05-02 07:49:16'),
(101, '0417.png', '2024-05-02 10:49:16', NULL, '0417', NULL, NULL, 0, 9, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104916-b3120a7a.png', NULL, 0, 'b3120a7a3d11b7d649ca262f2829e1a0', 1, 0, NULL, NULL, '2024-05-02 07:49:16'),
(102, '0418.png', '2024-05-02 10:49:16', NULL, '0418', NULL, NULL, 0, 11, 491, 119, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104916-dac9d7e6.png', NULL, 0, 'dac9d7e6f1314c77ec6f1a19ec134f7d', 1, 0, NULL, NULL, '2024-05-02 07:49:16'),
(103, '0419.png', '2024-05-02 10:49:17', NULL, '0419', NULL, NULL, 0, 11, 491, 122, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104917-c0b8d639.png', NULL, 0, 'c0b8d639a9333cb85efa971a80e293cb', 1, 0, NULL, NULL, '2024-05-02 07:49:17'),
(104, '0420.png', '2024-05-02 10:49:17', NULL, '0420', NULL, NULL, 0, 8, 491, 119, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104917-5c3f9a99.png', NULL, 0, '5c3f9a992e52eb9a3705a87f0df485ed', 1, 0, NULL, NULL, '2024-05-02 07:49:17'),
(105, '0421.png', '2024-05-02 10:49:17', NULL, '0421', NULL, NULL, 0, 11, 491, 132, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104917-020a9ee6.png', NULL, 0, '020a9ee6104fb6cebf95b5e7c4ffa93e', 1, 0, NULL, NULL, '2024-05-02 07:49:17'),
(106, '0422.png', '2024-05-02 10:49:17', NULL, '0422', NULL, NULL, 0, 1, 149, 84, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104917-5e9e75fe.png', NULL, 0, '5e9e75fe59c690090052daa73ee2c08c', 1, 0, NULL, NULL, '2024-05-02 07:49:17'),
(107, '0501.png', '2024-05-02 10:49:31', NULL, '0501', NULL, NULL, 0, 9, 596, 187, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104931-888c0ac8.png', NULL, 0, '888c0ac81486919b50f082e6a4888c1d', 1, 0, NULL, NULL, '2024-05-02 07:49:31'),
(108, '0502.png', '2024-05-02 10:49:31', NULL, '0502', NULL, NULL, 0, 8, 596, 172, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104931-fee3684f.png', NULL, 0, 'fee3684f773e753e2684bff34982747e', 1, 0, NULL, NULL, '2024-05-02 07:49:31'),
(109, '0503.png', '2024-05-02 10:49:31', NULL, '0503', NULL, NULL, 0, 6, 596, 157, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104931-1cbbfe87.png', NULL, 0, '1cbbfe87406703d02d1f00d436594ee0', 1, 0, NULL, NULL, '2024-05-02 07:49:31'),
(110, '0504.png', '2024-05-02 10:49:31', NULL, '0504', NULL, NULL, 0, 8, 596, 172, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104931-5697d819.png', NULL, 0, '5697d8195c95dabc490f1a1eeb206373', 1, 0, NULL, NULL, '2024-05-02 07:49:31'),
(111, '0505.png', '2024-05-02 10:49:31', NULL, '0505', NULL, NULL, 0, 4, 596, 157, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104931-9e65eec1.png', NULL, 0, '9e65eec15004a197e1f141a4921f00aa', 1, 0, NULL, NULL, '2024-05-02 07:49:31'),
(112, '0506.png', '2024-05-02 10:49:31', NULL, '0506', NULL, NULL, 0, 8, 596, 172, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104931-0543b4e6.png', NULL, 0, '0543b4e6cb16d1379f14e7e326187f03', 1, 0, NULL, NULL, '2024-05-02 07:49:31'),
(113, '0507.png', '2024-05-02 10:49:31', NULL, '0507', NULL, NULL, 0, 5, 596, 162, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104931-9fbccd5e.png', NULL, 0, '9fbccd5e3ade8ac42f36630df8e6d84c', 1, 0, NULL, NULL, '2024-05-02 07:49:31'),
(114, '0508.png', '2024-05-02 10:49:31', NULL, '0508', NULL, NULL, 0, 11, 596, 207, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104931-63ee2975.png', NULL, 0, '63ee297589be7c464cb576eeb4ca4624', 1, 0, NULL, NULL, '2024-05-02 07:49:31'),
(115, '0509.png', '2024-05-02 10:49:31', NULL, '0509', NULL, NULL, 0, 6, 596, 157, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104931-65346d4c.png', NULL, 0, '65346d4cfe6d82f251a5dc63e3ea8327', 1, 0, NULL, NULL, '2024-05-02 07:49:31'),
(116, '0510.1.png', '2024-05-02 10:49:31', NULL, '0510.1', NULL, NULL, 0, 5, 596, 157, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104931-6cec7bd5.png', NULL, 0, '6cec7bd5508524928e71d6a0cd812374', 1, 0, NULL, NULL, '2024-05-02 07:49:31'),
(117, '0510.png', '2024-05-02 10:49:31', NULL, '0510', NULL, NULL, 0, 7, 596, 178, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104931-6cdcd096.png', NULL, 0, '6cdcd096d9c648f270b9c3abedcb7866', 1, 0, NULL, NULL, '2024-05-02 07:49:31'),
(118, '0511.png', '2024-05-02 10:49:31', NULL, '0511', NULL, NULL, 0, 7, 596, 172, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104931-e878447f.png', NULL, 0, 'e878447f4192aa5df618a61e196d96d2', 1, 0, NULL, NULL, '2024-05-02 07:49:31'),
(119, '0512.png', '2024-05-02 10:49:31', NULL, '0512', NULL, NULL, 0, 5, 596, 161, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104931-2fd37759.png', NULL, 0, '2fd377593c22eeda4481e8bcf656e4c3', 1, 0, NULL, NULL, '2024-05-02 07:49:31'),
(120, '0513.png', '2024-05-02 10:49:31', NULL, '0513', NULL, NULL, 0, 10, 596, 187, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104931-2fe81940.png', NULL, 0, '2fe8194076b8db3d792160c43c63556c', 1, 0, NULL, NULL, '2024-05-02 07:49:31'),
(121, '0514.png', '2024-05-02 10:49:32', NULL, '0514', NULL, NULL, 0, 5, 596, 161, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104932-5d06a230.png', NULL, 0, '5d06a2305f875b05747bfafea1ca79f9', 1, 0, NULL, NULL, '2024-05-02 07:49:32'),
(122, '0515.png', '2024-05-02 10:49:32', NULL, '0515', NULL, NULL, 0, 5, 596, 157, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104932-c82dc6c9.png', NULL, 0, 'c82dc6c97d21411684c8c9fd53629f02', 1, 0, NULL, NULL, '2024-05-02 07:49:32'),
(123, '0516.png', '2024-05-02 10:49:32', NULL, '0516', NULL, NULL, 0, 8, 596, 219, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104932-89523f56.png', NULL, 0, '89523f564f8fef8373bbb7af65ac29f3', 1, 0, NULL, NULL, '2024-05-02 07:49:32'),
(124, '0517.png', '2024-05-02 10:49:32', NULL, '0517', NULL, NULL, 0, 7, 596, 176, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104932-6f6a264f.png', NULL, 0, '6f6a264f183f35bebea4d09a77049bc0', 1, 0, NULL, NULL, '2024-05-02 07:49:32'),
(125, '0518.png', '2024-05-02 10:49:32', NULL, '0518', NULL, NULL, 0, 5, 596, 157, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104932-f44991a4.png', NULL, 0, 'f44991a4ec1f0f0fd2baa11c8018816d', 1, 0, NULL, NULL, '2024-05-02 07:49:32'),
(126, '0519.png', '2024-05-02 10:49:32', NULL, '0519', NULL, NULL, 0, 6, 596, 160, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104932-5c821126.png', NULL, 0, '5c82112607cc34413c9a9f8927d13cdb', 1, 0, NULL, NULL, '2024-05-02 07:49:32'),
(127, '0520.png', '2024-05-02 10:49:32', NULL, '0520', NULL, NULL, 0, 5, 596, 174, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104932-f650207c.png', NULL, 0, 'f650207cd1e550953b04f48a6b52ad18', 1, 0, NULL, NULL, '2024-05-02 07:49:32'),
(128, '0521.png', '2024-05-02 10:49:32', NULL, '0521', NULL, NULL, 0, 5, 596, 162, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104932-c19671a0.png', NULL, 0, 'c19671a0fb69385971cd0474e2cca68c', 1, 0, NULL, NULL, '2024-05-02 07:49:32'),
(129, '0601.png', '2024-05-02 10:49:43', NULL, '0601', NULL, NULL, 0, 2, 497, 115, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104943-bfd0577f.png', NULL, 0, 'bfd0577f1cf1ae22ae1628c5c0a7928b', 1, 0, NULL, NULL, '2024-05-02 07:49:43'),
(130, '0602 2.png', '2024-05-02 10:49:43', NULL, '0602 2', NULL, NULL, 0, 3, 497, 128, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104943-cc9ab192.png', NULL, 0, 'cc9ab19211aaef5cf55f68a1149a357d', 1, 0, NULL, NULL, '2024-05-02 07:49:43'),
(131, '0602.png', '2024-05-02 10:49:43', NULL, '0602', NULL, NULL, 0, 2, 497, 116, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104943-49622937.png', NULL, 0, '49622937fc790c42b065d2840b29d7f3', 1, 0, NULL, NULL, '2024-05-02 07:49:43'),
(132, '0603.png', '2024-05-02 10:49:43', NULL, '0603', NULL, NULL, 0, 3, 497, 134, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104943-41f5cddc.png', NULL, 0, '41f5cddc283504477e3b5fd4fdf7c7ce', 1, 0, NULL, NULL, '2024-05-02 07:49:43'),
(133, '0604.png', '2024-05-02 10:49:43', NULL, '0604', NULL, NULL, 0, 4, 497, 147, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104943-11478e21.png', NULL, 0, '11478e217362000c34a3b7cce5269090', 1, 0, NULL, NULL, '2024-05-02 07:49:43'),
(134, '0605.png', '2024-05-02 10:49:44', NULL, '0605', NULL, NULL, 0, 5, 497, 183, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104944-84c6d266.png', NULL, 0, '84c6d2666b7d920b606e4893d07c6d94', 1, 0, NULL, NULL, '2024-05-02 07:49:44'),
(135, '0606.png', '2024-05-02 10:49:44', NULL, '0606', NULL, NULL, 0, 2, 497, 103, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104944-f7ff419b.png', NULL, 0, 'f7ff419b11fe795911e6840e609fd1c1', 1, 0, NULL, NULL, '2024-05-02 07:49:44'),
(136, '0607.png', '2024-05-02 10:49:44', NULL, '0607', NULL, NULL, 0, 2, 497, 102, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104944-33920e11.png', NULL, 0, '33920e11243b674a7da4c04cde0be5ad', 1, 0, NULL, NULL, '2024-05-02 07:49:44'),
(137, '0608.png', '2024-05-02 10:49:44', NULL, '0608', NULL, NULL, 0, 2, 497, 103, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104944-34883be6.png', NULL, 0, '34883be6683ee6f7c309aff3a70f8645', 1, 0, NULL, NULL, '2024-05-02 07:49:44'),
(138, '0609.png', '2024-05-02 10:49:44', NULL, '0609', NULL, NULL, 0, 2, 497, 102, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104944-da3d797f.png', NULL, 0, 'da3d797f73bba189bbed9d7b5a4f662a', 1, 0, NULL, NULL, '2024-05-02 07:49:44'),
(139, '0610.png', '2024-05-02 10:49:44', NULL, '0610', NULL, NULL, 0, 2, 497, 103, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104944-fb429152.png', NULL, 0, 'fb429152b25515b777751722c6b9210c', 1, 0, NULL, NULL, '2024-05-02 07:49:44'),
(140, '0611.png', '2024-05-02 10:49:44', NULL, '0611', NULL, NULL, 0, 2, 497, 102, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104944-00c2e685.png', NULL, 0, '00c2e68527b36025d5b45ea194e8f88e', 1, 0, NULL, NULL, '2024-05-02 07:49:44'),
(141, '0612.png', '2024-05-02 10:49:44', NULL, '0612', NULL, NULL, 0, 2, 497, 119, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104944-677832d3.png', NULL, 0, '677832d3d63ee5681f400979f4a53c75', 1, 0, NULL, NULL, '2024-05-02 07:49:44'),
(142, '0613.png', '2024-05-02 10:49:44', NULL, '0613', NULL, NULL, 0, 2, 497, 115, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104944-4175e298.png', NULL, 0, '4175e2982839252d89664221a1d74290', 1, 0, NULL, NULL, '2024-05-02 07:49:44'),
(143, '0614.png', '2024-05-02 10:49:44', NULL, '0614', NULL, NULL, 0, 2, 497, 103, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104944-ef4a4dab.png', NULL, 0, 'ef4a4dab0bb12224212b5b58f74e6b51', 1, 0, NULL, NULL, '2024-05-02 07:49:44'),
(144, '0615.png', '2024-05-02 10:49:44', NULL, '0615', NULL, NULL, 0, 2, 497, 102, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104944-337ad362.png', NULL, 0, '337ad3625ea88c005a7edf815875dd3e', 1, 0, NULL, NULL, '2024-05-02 07:49:44'),
(145, '0616.png', '2024-05-02 10:49:44', NULL, '0616', NULL, NULL, 0, 2, 497, 103, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104944-d2f6b61f.png', NULL, 0, 'd2f6b61f8cc683f35fa8dd475bb277f3', 1, 0, NULL, NULL, '2024-05-02 07:49:44'),
(146, '0617.png', '2024-05-02 10:49:44', NULL, '0617', NULL, NULL, 0, 2, 497, 102, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104944-67b08427.png', NULL, 0, '67b084272d2c0e9459c576003702f8c9', 1, 0, NULL, NULL, '2024-05-02 07:49:44'),
(147, '0618.png', '2024-05-02 10:49:44', NULL, '0618', NULL, NULL, 0, 2, 497, 103, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104944-69de5891.png', NULL, 0, '69de5891cab1da8489d26f3d2c8863e8', 1, 0, NULL, NULL, '2024-05-02 07:49:44'),
(148, '0619.png', '2024-05-02 10:49:45', NULL, '0619', NULL, NULL, 0, 2, 497, 102, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104945-3716e6d2.png', NULL, 0, '3716e6d299f70a8d18ab88b68f66ad82', 1, 0, NULL, NULL, '2024-05-02 07:49:45'),
(149, '0620.png', '2024-05-02 10:49:45', NULL, '0620', NULL, NULL, 0, 2, 497, 103, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104945-110ceaaa.png', NULL, 0, '110ceaaa6d6b71ab81de4d8b35da18a1', 1, 0, NULL, NULL, '2024-05-02 07:49:45'),
(150, '0621.png', '2024-05-02 10:49:45', NULL, '0621', NULL, NULL, 0, 2, 497, 115, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104945-794ca4d4.png', NULL, 0, '794ca4d4e32c679279360cd1fbe95fe6', 1, 0, NULL, NULL, '2024-05-02 07:49:45'),
(151, '0622.png', '2024-05-02 10:49:45', NULL, '0622', NULL, NULL, 0, 0, 482, 103, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104945-338ea326.png', NULL, 0, '338ea32635010e7a1033d2be4f970871', 1, 0, NULL, NULL, '2024-05-02 07:49:45'),
(152, '0623.png', '2024-05-02 10:49:45', NULL, '0623', NULL, NULL, 0, 1, 482, 102, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104945-3303547a.png', NULL, 0, '3303547a505e69aed9283cb05281d5bf', 1, 0, NULL, NULL, '2024-05-02 07:49:45'),
(153, '0701.png', '2024-05-02 10:49:58', NULL, '0701', NULL, NULL, 0, 4, 776, 130, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104958-470939b3.png', NULL, 0, '470939b3dc9d5ceeead0977b409e1f87', 1, 0, NULL, NULL, '2024-05-02 07:49:58'),
(154, '0702.png', '2024-05-02 10:49:58', NULL, '0702', NULL, NULL, 0, 3, 776, 117, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104958-7251cb5a.png', NULL, 0, '7251cb5ace671e43db93a94a158a5695', 1, 0, NULL, NULL, '2024-05-02 07:49:58'),
(155, '0703.png', '2024-05-02 10:49:58', NULL, '0703', NULL, NULL, 0, 2, 776, 121, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104958-18d4c359.png', NULL, 0, '18d4c35901cc9f7980508d2e152f4dcc', 1, 0, NULL, NULL, '2024-05-02 07:49:58'),
(156, '0704.png', '2024-05-02 10:49:58', NULL, '0704', NULL, NULL, 0, 2, 776, 121, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104958-97f9a3d0.png', NULL, 0, '97f9a3d03b931b2f1dbf1b62c7e330bf', 1, 0, NULL, NULL, '2024-05-02 07:49:58'),
(157, '0705.png', '2024-05-02 10:49:58', NULL, '0705', NULL, NULL, 0, 2, 776, 121, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104958-0a778259.png', NULL, 0, '0a778259832a62a0b040a1d5777c58c1', 1, 0, NULL, NULL, '2024-05-02 07:49:58'),
(158, '0706.png', '2024-05-02 10:49:58', NULL, '0706', NULL, NULL, 0, 9, 491, 132, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104958-b406597f.png', NULL, 0, 'b406597f3b3c71a80b3515e753e9c767', 1, 0, NULL, NULL, '2024-05-02 07:49:58'),
(159, '0707.png', '2024-05-02 10:49:59', NULL, '0707', NULL, NULL, 0, 11, 491, 145, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104959-c8189c90.png', NULL, 0, 'c8189c90f9bb450634bae5b63cb649ad', 1, 0, NULL, NULL, '2024-05-02 07:49:59'),
(160, '0708.png', '2024-05-02 10:49:59', NULL, '0708', NULL, NULL, 0, 7, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104959-7a3d7778.png', NULL, 0, '7a3d7778229217d6cdeb4d841f5aaebc', 1, 0, NULL, NULL, '2024-05-02 07:49:59'),
(161, '0709.png', '2024-05-02 10:49:59', NULL, '0709', NULL, NULL, 0, 11, 491, 132, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104959-bb31ca40.png', NULL, 0, 'bb31ca40f812919c60f255c2fb5c56c2', 1, 0, NULL, NULL, '2024-05-02 07:49:59'),
(162, '0710.png', '2024-05-02 10:49:59', NULL, '0710', NULL, NULL, 0, 23, 491, 355, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104959-626f7da3.png', NULL, 0, '626f7da33f3cffcc8fda43c221e82529', 1, 0, NULL, NULL, '2024-05-02 07:49:59'),
(163, '0711.png', '2024-05-02 10:49:59', NULL, '0711', NULL, NULL, 0, 10, 491, 108, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104959-d11b0e83.png', NULL, 0, 'd11b0e8325f8a18bd0028859089d6f1a', 1, 0, NULL, NULL, '2024-05-02 07:49:59'),
(164, '0712.png', '2024-05-02 10:49:59', NULL, '0712', NULL, NULL, 0, 12, 491, 145, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104959-f244b6f1.png', NULL, 0, 'f244b6f122bb4802e25dec4c73fc56f9', 1, 0, NULL, NULL, '2024-05-02 07:49:59'),
(165, '0713.png', '2024-05-02 10:49:59', NULL, '0713', NULL, NULL, 0, 8, 491, 119, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104959-52442f7a.png', NULL, 0, '52442f7a03400608f02336281c1aa48b', 1, 0, NULL, NULL, '2024-05-02 07:49:59'),
(166, '0714.png', '2024-05-02 10:49:59', NULL, '0714', NULL, NULL, 0, 10, 491, 145, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502104959-e8267219.png', NULL, 0, 'e8267219d436a93b78c6686da40e45e0', 1, 0, NULL, NULL, '2024-05-02 07:49:59'),
(167, '0801.png', '2024-05-02 10:50:16', NULL, '0801', NULL, NULL, 0, 12, 491, 148, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105016-51895068.png', NULL, 0, '5189506808acb13c360bc4343f634363', 1, 0, NULL, NULL, '2024-05-02 07:50:16'),
(168, '0802.png', '2024-05-02 10:50:16', NULL, '0802', NULL, NULL, 0, 15, 491, 171, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105016-37787897.png', NULL, 0, '37787897b54124eac08fca397ec116ab', 1, 0, NULL, NULL, '2024-05-02 07:50:16'),
(169, '0803.png', '2024-05-02 10:50:16', NULL, '0803', NULL, NULL, 0, 11, 491, 132, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105016-0ac86cc9.png', NULL, 0, '0ac86cc9e601bc345b3f0a39f353b758', 1, 0, NULL, NULL, '2024-05-02 07:50:16'),
(170, '0804.png', '2024-05-02 10:50:16', NULL, '0804', NULL, NULL, 0, 7, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105016-ee8652ab.png', NULL, 0, 'ee8652ab49d0350aa9cc65cc605beef1', 1, 0, NULL, NULL, '2024-05-02 07:50:16'),
(171, '0805.png', '2024-05-02 10:50:17', NULL, '0805', NULL, NULL, 0, 10, 491, 119, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105017-fbc1d36d.png', NULL, 0, 'fbc1d36d7348a76e9214fb7521422738', 1, 0, NULL, NULL, '2024-05-02 07:50:17'),
(172, '0806.png', '2024-05-02 10:50:17', NULL, '0806', NULL, NULL, 0, 12, 491, 132, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105017-f7aab0f2.png', NULL, 0, 'f7aab0f2faa9b29f3497e9802dbeca32', 1, 0, NULL, NULL, '2024-05-02 07:50:17'),
(173, '0807.png', '2024-05-02 10:50:17', NULL, '0807', NULL, NULL, 0, 10, 491, 120, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105017-bc1c2f2d.png', NULL, 0, 'bc1c2f2de25941c23bb53c0334e59b66', 1, 0, NULL, NULL, '2024-05-02 07:50:17'),
(174, '0808.png', '2024-05-02 10:50:17', NULL, '0808', NULL, NULL, 0, 7, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105017-e0893cce.png', NULL, 0, 'e0893cce11c9e542303c17446dc1d490', 1, 0, NULL, NULL, '2024-05-02 07:50:17'),
(175, '0809.png', '2024-05-02 10:50:17', NULL, '0809', NULL, NULL, 0, 16, 491, 210, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105017-21b67fe7.png', NULL, 0, '21b67fe7a77963fc834fb3311961a51b', 1, 0, NULL, NULL, '2024-05-02 07:50:17'),
(176, '0810.png', '2024-05-02 10:50:17', NULL, '0810', NULL, NULL, 0, 7, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105017-90a22bc9.png', NULL, 0, '90a22bc945059ab8611057b225350a9a', 1, 0, NULL, NULL, '2024-05-02 07:50:17'),
(177, '0811.png', '2024-05-02 10:50:17', NULL, '0811', NULL, NULL, 0, 10, 491, 119, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105017-bee45d0a.png', NULL, 0, 'bee45d0a791f8c88cc442f0b3259c75d', 1, 0, NULL, NULL, '2024-05-02 07:50:17'),
(178, '0812.png', '2024-05-02 10:50:17', NULL, '0812', NULL, NULL, 0, 11, 491, 119, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105017-22ef90b6.png', NULL, 0, '22ef90b6517a31d06c453d3cb93c98a1', 1, 0, NULL, NULL, '2024-05-02 07:50:17'),
(179, '0813.png', '2024-05-02 10:50:17', NULL, '0813', NULL, NULL, 0, 11, 491, 132, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105017-75fc5a9d.png', NULL, 0, '75fc5a9d8e5c3b75a77673ed9c46eed5', 1, 0, NULL, NULL, '2024-05-02 07:50:17'),
(180, '0814.png', '2024-05-02 10:50:17', NULL, '0814', NULL, NULL, 0, 11, 491, 120, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105017-b067ee29.png', NULL, 0, 'b067ee29ee367bce7186da31dc1494f3', 1, 0, NULL, NULL, '2024-05-02 07:50:17'),
(181, '0815.png', '2024-05-02 10:50:17', NULL, '0815', NULL, NULL, 0, 29, 491, 405, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105017-40f44c54.png', NULL, 0, '40f44c54fdde691fc0cad6f13512236f', 1, 0, NULL, NULL, '2024-05-02 07:50:17'),
(182, '0816.png', '2024-05-02 10:50:17', NULL, '0816', NULL, NULL, 0, 7, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105017-d93156b2.png', NULL, 0, 'd93156b27122d71eec0f1ea91efabd28', 1, 0, NULL, NULL, '2024-05-02 07:50:17'),
(183, '0817.png', '2024-05-02 10:50:17', NULL, '0817', NULL, NULL, 0, 11, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105017-7bacc1bd.png', NULL, 0, '7bacc1bdbc9455bfedc4c7b89f3cda01', 1, 0, NULL, NULL, '2024-05-02 07:50:17'),
(184, '0819.png', '2024-05-02 10:50:18', NULL, '0819', NULL, NULL, 1, 10, 491, 119, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105018-d1396c92.png', NULL, 0, 'd1396c926f159bc877d8068f9bd7e62f', 1, 0, NULL, NULL, '2024-05-02 07:50:18'),
(185, '0820.png', '2024-05-02 10:50:18', NULL, '0820', NULL, NULL, 2, 10, 491, 119, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105018-3bf8068b.png', NULL, 0, '3bf8068b0130571de0be750628b54915', 1, 0, NULL, NULL, '2024-05-02 07:50:18'),
(186, '0821.png', '2024-05-02 10:50:18', NULL, '0821', NULL, NULL, 1, 8, 491, 120, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105018-732b43d4.png', NULL, 0, '732b43d4bbc2fc8d84068a9010a57abb', 1, 0, NULL, NULL, '2024-05-02 07:50:18'),
(187, '0822.png', '2024-05-02 10:50:18', NULL, '0822', NULL, NULL, 0, 9, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105018-a99860bb.png', NULL, 0, 'a99860bb07115909bb205b887acadb3f', 1, 0, NULL, NULL, '2024-05-02 07:50:18'),
(188, '0823.png', '2024-05-02 10:50:18', NULL, '0823', NULL, NULL, 0, 10, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105018-e8fdca29.png', NULL, 0, 'e8fdca29c601edba34bd57ecd2c45232', 1, 0, NULL, NULL, '2024-05-02 07:50:18'),
(189, '0824.png', '2024-05-02 10:50:18', NULL, '0824', NULL, NULL, 0, 10, 491, 119, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105018-422be802.png', NULL, 0, '422be802ca4e12806ecdd079ebb09791', 1, 0, NULL, NULL, '2024-05-02 07:50:18'),
(190, '0825.png', '2024-05-02 10:50:18', NULL, '0825', NULL, NULL, 0, 8, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105018-352296ee.png', NULL, 0, '352296eec956d80a20af8ad175d05ed9', 1, 0, NULL, NULL, '2024-05-02 07:50:18'),
(191, '0826.png', '2024-05-02 10:50:18', NULL, '0826', NULL, NULL, 0, 9, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105018-333be825.png', NULL, 0, '333be8259977f6d881d51fd089ab221d', 1, 0, NULL, NULL, '2024-05-02 07:50:18'),
(192, '0827.png', '2024-05-02 10:50:18', NULL, '0827', NULL, NULL, 0, 8, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105018-874870ad.png', NULL, 0, '874870ad40029c4b6ba0209841f7e6b5', 1, 0, NULL, NULL, '2024-05-02 07:50:18'),
(193, '0828.png', '2024-05-02 10:50:18', NULL, '0828', NULL, NULL, 0, 9, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105018-0fe8f86f.png', NULL, 0, '0fe8f86fe72a2dd8b3236718e5d38d2a', 1, 0, NULL, NULL, '2024-05-02 07:50:18'),
(194, '0829.png', '2024-05-02 10:50:18', NULL, '0829', NULL, NULL, 0, 7, 491, 106, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105018-e328d96a.png', NULL, 0, 'e328d96a4ae5a1ac29b0bbcf06a5f969', 1, 0, NULL, NULL, '2024-05-02 07:50:18'),
(195, '0830.png', '2024-05-02 10:50:18', NULL, '0830', NULL, NULL, 0, 8, 491, 119, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105018-44b76d42.png', NULL, 0, '44b76d4248ff4aecb713be70888b9462', 1, 0, NULL, NULL, '2024-05-02 07:50:18'),
(196, '0831.png', '2024-05-02 10:50:18', NULL, '0831', NULL, NULL, 0, 8, 491, 120, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105018-acd4fb58.png', NULL, 0, 'acd4fb5883e66bebd01d761a09bd1e98', 1, 0, NULL, NULL, '2024-05-02 07:50:18'),
(197, '0832.png', '2024-05-02 10:50:19', NULL, '0832', NULL, NULL, 1, 11, 491, 145, NULL, NULL, '2024-05-02', NULL, './upload/2024/05/02/20240502105019-6874ea14.png', NULL, 0, '6874ea14dbb85a0b1037bbd4e663056f', 1, 0, NULL, NULL, '2024-05-02 07:50:19');

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
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 2, 1),
(14, 2, 2),
(15, 2, 3),
(16, 2, 4),
(17, 2, 5),
(18, 2, 6),
(19, 2, 7),
(20, 2, 8),
(21, 2, 9),
(22, 2, 10),
(23, 2, 11),
(24, 2, 12),
(25, 2, 13),
(26, 2, 14),
(27, 2, 15),
(28, 2, 16),
(29, 2, 17),
(30, 2, 18),
(31, 2, 19),
(32, 2, 20),
(33, 2, 21),
(34, 2, 22),
(35, 2, 23),
(36, 2, 24),
(37, 2, 25),
(38, 2, 26),
(39, 2, 27),
(40, 2, 28),
(41, 2, 29),
(42, 2, 30),
(43, 2, 31),
(44, 2, 32),
(45, 2, 33),
(46, 2, 34),
(47, 2, 35),
(48, 2, 36),
(49, 2, 37),
(50, 2, 38),
(51, 2, 39),
(52, 2, 40),
(53, 2, 41),
(54, 2, 42),
(55, 2, 43),
(56, 2, 44),
(57, 2, 45),
(58, 2, 46),
(59, 3, 1),
(60, 3, 2),
(61, 3, 3),
(62, 3, 4),
(63, 3, 5),
(64, 3, 6),
(65, 3, 7),
(66, 3, 8),
(67, 3, 9),
(68, 3, 10),
(69, 3, 11),
(70, 3, 12),
(71, 3, 13),
(72, 3, 14),
(73, 3, 15),
(74, 3, 16),
(75, 3, 17),
(76, 3, 18),
(77, 3, 19),
(78, 3, 20),
(79, 3, 21),
(80, 3, 22),
(81, 3, 23),
(82, 3, 24),
(83, 3, 25),
(84, 4, 1),
(85, 4, 2),
(86, 4, 3),
(87, 4, 4),
(88, 4, 5),
(89, 4, 6),
(90, 4, 7),
(91, 4, 8),
(92, 4, 9),
(93, 4, 10),
(94, 4, 11),
(95, 4, 12),
(96, 4, 13),
(97, 4, 14),
(98, 4, 15),
(99, 4, 16),
(100, 4, 17),
(101, 4, 18),
(102, 4, 19),
(103, 4, 20),
(104, 4, 21),
(105, 4, 22),
(106, 4, 23),
(107, 5, 1),
(108, 5, 2),
(109, 5, 3),
(110, 5, 4),
(111, 5, 5),
(112, 5, 6),
(113, 5, 7),
(114, 5, 8),
(115, 5, 9),
(116, 5, 10),
(117, 5, 11),
(118, 5, 12),
(119, 5, 13),
(120, 5, 14),
(121, 5, 15),
(122, 5, 16),
(123, 5, 17),
(124, 5, 18),
(125, 5, 19),
(126, 5, 20),
(127, 5, 21),
(128, 5, 22),
(129, 6, 1),
(130, 6, 2),
(131, 6, 3),
(132, 6, 4),
(133, 6, 5),
(134, 6, 6),
(135, 6, 7),
(136, 6, 8),
(137, 6, 9),
(138, 6, 10),
(139, 6, 11),
(140, 6, 12),
(141, 6, 13),
(142, 6, 14),
(143, 6, 15),
(144, 6, 16),
(145, 6, 17),
(146, 6, 18),
(147, 6, 19),
(148, 6, 20),
(149, 6, 21),
(150, 6, 22),
(151, 6, 23),
(152, 6, 24),
(153, 7, 1),
(154, 7, 2),
(155, 7, 3),
(156, 7, 4),
(157, 7, 5),
(158, 7, 6),
(159, 7, 7),
(160, 7, 8),
(161, 7, 9),
(162, 7, 10),
(163, 7, 11),
(164, 7, 12),
(165, 7, 13),
(166, 7, 14),
(167, 8, 1),
(168, 8, 2),
(169, 8, 3),
(170, 8, 4),
(171, 8, 5),
(172, 8, 6),
(173, 8, 7),
(174, 8, 8),
(175, 8, 9),
(176, 8, 10),
(177, 8, 11),
(178, 8, 12),
(179, 8, 13),
(180, 8, 14),
(181, 8, 15),
(182, 8, 16),
(183, 8, 17),
(184, 8, 18),
(185, 8, 19),
(186, 8, 20),
(187, 8, 21),
(188, 8, 22),
(189, 8, 23),
(190, 8, 24),
(191, 8, 25),
(192, 8, 26),
(193, 8, 27),
(194, 8, 28),
(195, 8, 29),
(196, 8, 30),
(197, 8, 31);

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
('25D7moj7g1hkc6t5bfmskco14g0jaj', 'pwg_uid|i:1;pwg_device|s:7:"desktop";pwg_mobile_theme|b:0;cache_activity_last_weeks|a:2:{s:13:"calculated_on";i:1714635775;s:4:"data";a:1:{i:3;a:1:{i:4;a:3:{s:7:"details";a:2:{s:6:"System";a:2:{s:8:"Activate";s:1:"2";s:7:"Install";s:1:"1";}s:4:"User";a:1:{s:5:"Login";s:1:"1";}}s:6:"number";i:4;s:4:"date";s:18:"Чт 2 Май 2024";}}}}pwg_caps|a:3:{i:0;s:1:"1";i:1;s:4:"1920";i:2;s:3:"911";}need_update14.4.0|b:0;extensions_need_update|a:0:{}pwg_referer_image_id|s:3:"185";', '2024-05-02 10:50:36');

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
('61', '2024-05-02 10:42:47', 'upgrade included in installation'),
('62', '2024-05-02 10:42:47', 'upgrade included in installation'),
('63', '2024-05-02 10:42:47', 'upgrade included in installation'),
('64', '2024-05-02 10:42:47', 'upgrade included in installation'),
('65', '2024-05-02 10:42:47', 'upgrade included in installation'),
('66', '2024-05-02 10:42:47', 'upgrade included in installation'),
('67', '2024-05-02 10:42:47', 'upgrade included in installation'),
('68', '2024-05-02 10:42:47', 'upgrade included in installation'),
('69', '2024-05-02 10:42:47', 'upgrade included in installation'),
('70', '2024-05-02 10:42:47', 'upgrade included in installation'),
('71', '2024-05-02 10:42:47', 'upgrade included in installation'),
('72', '2024-05-02 10:42:47', 'upgrade included in installation'),
('73', '2024-05-02 10:42:47', 'upgrade included in installation'),
('74', '2024-05-02 10:42:47', 'upgrade included in installation'),
('75', '2024-05-02 10:42:47', 'upgrade included in installation'),
('76', '2024-05-02 10:42:47', 'upgrade included in installation'),
('77', '2024-05-02 10:42:47', 'upgrade included in installation'),
('78', '2024-05-02 10:42:47', 'upgrade included in installation'),
('79', '2024-05-02 10:42:47', 'upgrade included in installation'),
('80', '2024-05-02 10:42:47', 'upgrade included in installation'),
('81', '2024-05-02 10:42:47', 'upgrade included in installation'),
('82', '2024-05-02 10:42:47', 'upgrade included in installation'),
('83', '2024-05-02 10:42:47', 'upgrade included in installation'),
('84', '2024-05-02 10:42:47', 'upgrade included in installation'),
('85', '2024-05-02 10:42:47', 'upgrade included in installation'),
('86', '2024-05-02 10:42:47', 'upgrade included in installation'),
('87', '2024-05-02 10:42:47', 'upgrade included in installation'),
('88', '2024-05-02 10:42:47', 'upgrade included in installation'),
('89', '2024-05-02 10:42:47', 'upgrade included in installation'),
('90', '2024-05-02 10:42:47', 'upgrade included in installation'),
('91', '2024-05-02 10:42:47', 'upgrade included in installation'),
('92', '2024-05-02 10:42:47', 'upgrade included in installation'),
('93', '2024-05-02 10:42:47', 'upgrade included in installation'),
('94', '2024-05-02 10:42:47', 'upgrade included in installation'),
('95', '2024-05-02 10:42:47', 'upgrade included in installation'),
('96', '2024-05-02 10:42:47', 'upgrade included in installation'),
('97', '2024-05-02 10:42:47', 'upgrade included in installation'),
('98', '2024-05-02 10:42:47', 'upgrade included in installation'),
('99', '2024-05-02 10:42:47', 'upgrade included in installation'),
('100', '2024-05-02 10:42:47', 'upgrade included in installation'),
('101', '2024-05-02 10:42:47', 'upgrade included in installation'),
('102', '2024-05-02 10:42:47', 'upgrade included in installation'),
('103', '2024-05-02 10:42:47', 'upgrade included in installation'),
('104', '2024-05-02 10:42:47', 'upgrade included in installation'),
('105', '2024-05-02 10:42:47', 'upgrade included in installation'),
('106', '2024-05-02 10:42:47', 'upgrade included in installation'),
('107', '2024-05-02 10:42:47', 'upgrade included in installation'),
('108', '2024-05-02 10:42:47', 'upgrade included in installation'),
('109', '2024-05-02 10:42:47', 'upgrade included in installation'),
('110', '2024-05-02 10:42:47', 'upgrade included in installation'),
('111', '2024-05-02 10:42:47', 'upgrade included in installation'),
('112', '2024-05-02 10:42:47', 'upgrade included in installation'),
('113', '2024-05-02 10:42:47', 'upgrade included in installation'),
('114', '2024-05-02 10:42:47', 'upgrade included in installation'),
('115', '2024-05-02 10:42:47', 'upgrade included in installation'),
('116', '2024-05-02 10:42:47', 'upgrade included in installation'),
('117', '2024-05-02 10:42:47', 'upgrade included in installation'),
('118', '2024-05-02 10:42:47', 'upgrade included in installation'),
('119', '2024-05-02 10:42:47', 'upgrade included in installation'),
('120', '2024-05-02 10:42:47', 'upgrade included in installation'),
('121', '2024-05-02 10:42:47', 'upgrade included in installation'),
('122', '2024-05-02 10:42:47', 'upgrade included in installation'),
('123', '2024-05-02 10:42:47', 'upgrade included in installation'),
('124', '2024-05-02 10:42:47', 'upgrade included in installation'),
('125', '2024-05-02 10:42:47', 'upgrade included in installation'),
('126', '2024-05-02 10:42:47', 'upgrade included in installation'),
('127', '2024-05-02 10:42:47', 'upgrade included in installation'),
('128', '2024-05-02 10:42:47', 'upgrade included in installation'),
('129', '2024-05-02 10:42:47', 'upgrade included in installation'),
('130', '2024-05-02 10:42:47', 'upgrade included in installation'),
('131', '2024-05-02 10:42:47', 'upgrade included in installation'),
('132', '2024-05-02 10:42:47', 'upgrade included in installation'),
('133', '2024-05-02 10:42:47', 'upgrade included in installation'),
('134', '2024-05-02 10:42:47', 'upgrade included in installation'),
('135', '2024-05-02 10:42:47', 'upgrade included in installation'),
('136', '2024-05-02 10:42:47', 'upgrade included in installation'),
('137', '2024-05-02 10:42:47', 'upgrade included in installation'),
('138', '2024-05-02 10:42:47', 'upgrade included in installation'),
('139', '2024-05-02 10:42:47', 'upgrade included in installation'),
('140', '2024-05-02 10:42:47', 'upgrade included in installation'),
('141', '2024-05-02 10:42:47', 'upgrade included in installation'),
('142', '2024-05-02 10:42:47', 'upgrade included in installation'),
('143', '2024-05-02 10:42:47', 'upgrade included in installation'),
('144', '2024-05-02 10:42:47', 'upgrade included in installation'),
('145', '2024-05-02 10:42:47', 'upgrade included in installation'),
('146', '2024-05-02 10:42:47', 'upgrade included in installation'),
('147', '2024-05-02 10:42:47', 'upgrade included in installation'),
('148', '2024-05-02 10:42:47', 'upgrade included in installation'),
('149', '2024-05-02 10:42:47', 'upgrade included in installation'),
('150', '2024-05-02 10:42:47', 'upgrade included in installation'),
('151', '2024-05-02 10:42:47', 'upgrade included in installation'),
('152', '2024-05-02 10:42:47', 'upgrade included in installation'),
('153', '2024-05-02 10:42:47', 'upgrade included in installation'),
('154', '2024-05-02 10:42:47', 'upgrade included in installation'),
('155', '2024-05-02 10:42:47', 'upgrade included in installation'),
('156', '2024-05-02 10:42:47', 'upgrade included in installation'),
('157', '2024-05-02 10:42:47', 'upgrade included in installation'),
('158', '2024-05-02 10:42:47', 'upgrade included in installation'),
('159', '2024-05-02 10:42:47', 'upgrade included in installation'),
('160', '2024-05-02 10:42:47', 'upgrade included in installation'),
('161', '2024-05-02 10:42:47', 'upgrade included in installation'),
('162', '2024-05-02 10:42:47', 'upgrade included in installation'),
('163', '2024-05-02 10:42:47', 'upgrade included in installation'),
('164', '2024-05-02 10:42:47', 'upgrade included in installation'),
('165', '2024-05-02 10:42:47', 'upgrade included in installation'),
('166', '2024-05-02 10:42:47', 'upgrade included in installation'),
('167', '2024-05-02 10:42:47', 'upgrade included in installation'),
('168', '2024-05-02 10:42:47', 'upgrade included in installation'),
('169', '2024-05-02 10:42:47', 'upgrade included in installation'),
('170', '2024-05-02 10:42:47', 'upgrade included in installation');

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
(1, 'funny-errors', '65d1f7ddbe4e0e471c9dac1b21a66578', 'nifed5002@rambler.ru'),
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
(1, 'false', 1714636221, '0', 197, '2024-05-02 10:50:19', 0, NULL, 'NOT IN', '0');

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
(1, 8, '2024-05-02 10:50:19', '2024-05-02 10:50:19', 31, 31, 0, 0, 168),
(1, 7, '2024-05-02 10:49:59', '2024-05-02 10:49:59', 14, 14, 0, 0, 161),
(1, 6, '2024-05-02 10:49:45', '2024-05-02 10:49:45', 24, 24, 0, 0, 129),
(1, 5, '2024-05-02 10:49:32', '2024-05-02 10:49:32', 22, 22, 0, 0, 120),
(1, 4, '2024-05-02 10:49:17', '2024-05-02 10:49:17', 23, 23, 0, 0, 98),
(1, 3, '2024-05-02 10:49:03', '2024-05-02 10:49:03', 25, 25, 0, 0, 73),
(1, 2, '2024-05-02 10:48:48', '2024-05-02 10:48:48', 46, 46, 0, 0, 15),
(1, 1, '2024-05-02 10:48:13', '2024-05-02 10:48:13', 12, 12, 0, 0, 10);

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
(1, 15, 'webmaster', 'ru_RU', 'false', 'false', 'false', 7, 'modus', '2024-05-02 10:42:47', 'true', 8, NULL, NULL, '2024-05-02 10:42:52', 'false', '2024-05-02 07:42:47', NULL),
(2, 15, 'guest', 'ru_RU', 'false', 'false', 'false', 7, 'modus', '2024-05-02 10:42:47', 'true', 0, NULL, NULL, NULL, 'false', '2024-05-02 07:42:47', NULL);

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
  MODIFY `activity_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=210;
--
-- AUTO_INCREMENT для таблицы `piwigo_categories`
--
ALTER TABLE `piwigo_categories`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=198;
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
