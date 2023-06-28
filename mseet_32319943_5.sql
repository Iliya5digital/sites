-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: sql306.byetcluster.com
-- Время создания: Апр 28 2023 г., 04:34
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
-- База данных: `mseet_32319943_5`
--

-- --------------------------------------------------------

--
-- Структура таблицы `mycal_categories`
--

CREATE TABLE `mycal_categories` (
  `ID` int(11) NOT NULL,
  `name` varchar(48) DEFAULT NULL,
  `symbol` varchar(8) DEFAULT NULL,
  `sequence` tinyint(4) NOT NULL DEFAULT 1,
  `repeat` tinyint(4) NOT NULL DEFAULT 0,
  `noverlap` tinyint(4) NOT NULL DEFAULT 0,
  `olapGap` tinyint(4) NOT NULL DEFAULT 0,
  `olErrMsg` varchar(56) DEFAULT NULL,
  `defSlot` smallint(6) NOT NULL DEFAULT 0,
  `fixSlot` tinyint(4) NOT NULL DEFAULT 0,
  `approve` tinyint(4) NOT NULL DEFAULT 0,
  `dayColor` tinyint(4) NOT NULL DEFAULT 0,
  `color` varchar(8) DEFAULT NULL,
  `bgColor` varchar(8) DEFAULT NULL,
  `checkBx` tinyint(4) NOT NULL DEFAULT 0,
  `checkLb` varchar(16) NOT NULL DEFAULT 'approved',
  `checkMk` varchar(8) NOT NULL DEFAULT '&#x2713;',
  `subCats` text DEFAULT NULL,
  `urlLink` varchar(120) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mycal_categories`
--

INSERT INTO `mycal_categories` (`ID`, `name`, `symbol`, `sequence`, `repeat`, `noverlap`, `olapGap`, `olErrMsg`, `defSlot`, `fixSlot`, `approve`, `dayColor`, `color`, `bgColor`, `checkBx`, `checkLb`, `checkMk`, `subCats`, `urlLink`, `status`) VALUES
(1, 'no cat', NULL, 1, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, 0, 'approved', '&#x2713;', '[]', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `mycal_events`
--

CREATE TABLE `mycal_events` (
  `ID` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `private` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `venue` varchar(128) DEFAULT NULL,
  `text1` text DEFAULT NULL,
  `text2` varchar(255) DEFAULT NULL,
  `text3` varchar(255) DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `catID` mediumint(9) NOT NULL DEFAULT 1,
  `scatID` tinyint(4) NOT NULL DEFAULT 0,
  `userID` mediumint(9) DEFAULT NULL,
  `editor` varchar(48) DEFAULT NULL,
  `approved` tinyint(4) NOT NULL DEFAULT 0,
  `checked` text DEFAULT NULL,
  `notEml` tinyint(4) NOT NULL DEFAULT -1,
  `notSms` tinyint(4) NOT NULL DEFAULT -1,
  `notRecip` varchar(255) DEFAULT NULL,
  `sDate` varchar(10) DEFAULT NULL,
  `eDate` varchar(10) NOT NULL DEFAULT '9999-00-00',
  `xDates` text DEFAULT NULL,
  `sTime` varchar(5) DEFAULT NULL,
  `eTime` varchar(5) NOT NULL DEFAULT '99:00',
  `rType` tinyint(4) NOT NULL DEFAULT 0,
  `rInterval` tinyint(4) NOT NULL DEFAULT 0,
  `rPeriod` tinyint(4) NOT NULL DEFAULT 0,
  `rMonth` tinyint(4) NOT NULL DEFAULT 0,
  `rUntil` varchar(10) NOT NULL DEFAULT '9999-00-00',
  `aDateTime` varchar(16) NOT NULL DEFAULT '9999-00-00 00:00',
  `mDateTime` varchar(16) NOT NULL DEFAULT '9999-00-00 00:00',
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mycal_events`
--

INSERT INTO `mycal_events` (`ID`, `type`, `private`, `title`, `venue`, `text1`, `text2`, `text3`, `attach`, `catID`, `scatID`, `userID`, `editor`, `approved`, `checked`, `notEml`, `notSms`, `notRecip`, `sDate`, `eDate`, `xDates`, `sTime`, `eTime`, `rType`, `rInterval`, `rPeriod`, `rMonth`, `rUntil`, `aDateTime`, `mDateTime`, `status`) VALUES
(1, 0, 0, 'CrossConf — главная IT-конференция осени 2022', '', '9–10 сентября в Иннополисе пройдет конференция CrossConf для разработчиков, техногиков и управленцев. Она соберет более тысячи участников — лидеров IT-сообщества, представителей ведущих компаний, журналистов и IT-блогеров. Компания REG.RU выступит информационным партнером события.', '', '', '', 1, 0, 2, NULL, 0, NULL, -1, -1, 'oenykd@fexpost.com', '2022-09-09', '2022-09-10', NULL, '00:00', '00:00', 0, 0, 0, 0, '9999-00-00', '2022-08-05 17:55', '9999-00-00 00:00', 0),
(2, 0, 0, 'E2.by Stream', '', '', '', '', '', 1, 0, 2, 'Admin', 0, NULL, -1, -1, 'oenykd@fexpost.com', '2022-08-04', '9999-00-00', NULL, '18:30', '20:30', 0, 0, 0, 0, '9999-00-00', '2022-08-05 17:58', '2022-08-05 19:14', 0),
(3, 0, 0, 'Антиконференция Summer Merge', '', '26–28 августа в экопарке «Русский берег» в Ульяновской области пройдет антиконференция Summer Merge для специалистов IT-отрасли. Компания REG.RU выступит информационным партнером события.<br><br>Антиконференция Summer Merge 2022 — та самая летняя айти-тусовка, где соберутся все, чтобы вырваться из рабочей рутины, поболтать со старыми друзьями и как следует проводить лето.<br><br>Что будет в программе:<br>— Спорт. Турнир по футболу и волейболу, пилатесу, йоге, стрельбе из лука и сапсерфингу. И это ещё далеко не полный список.<br>— Активности. Вас ждет интеллектуальный квиз, захватывающие квесты, мастер-классы и, конечно же, жаркое летнее afterparty.<br>— Фуд-корт. Сможете перекусить бургерами и салатами, попробовать вкуснейшую пиццу, настоящий узбекский плов и джелато.<br>— Природа. Песни у костра под звездным небом.', '', '', '', 1, 0, 2, NULL, 0, NULL, -1, -1, 'oenykd@fexpost.com', '2022-08-26', '2022-08-28', NULL, '00:00', '00:00', 0, 0, 0, 0, '9999-00-00', '2022-08-05 19:04', '9999-00-00 00:00', 0),
(4, 0, 0, 'Как разместить рекламу на вашем сайте и не потерять клиентов', '', '11 августа в 14:00 по московскому времени проведем вебинар «Как разместить рекламу на вашем сайте и не потерять клиентов», где вместе с коллегами из RTBSape расскажем, что нужно помнить, если вы решили разместить рекламу на сайте.<br><br>Дизайнер-проектировщик интерфейсов REG.RU Артём Кокшаров расскажет, почему «Рекламы много бывает» и покажет примеры того, как надо делать. Поговорим о типичных ошибках и их последствиях:<br>— баннерная слепота;<br>— чрезмерная интеграция;<br>— потеря нити повествования и поискового запроса среди баннеров на сайте;<br>— решение покинуть сайт из-за pop-up;<br>— формы регистраций.<br><br>CEO RTBSape Сергей Самонин представит исследование «Топ-5 категорий рекламы по интересам рекламодателей в 2022 году», а также в рамках темы разберет следующие вопросы:<br>— монетизация сайта, с чего начать;<br>— как выбрать рекламную сеть для монетизации;<br>— как работают рекламные сети.<br><br>Мероприятие будет полезно владельцам сайтов и web-мастерам. Регистрируйтесь на вебинар, чтобы мы отправили вам напоминание и ссылку на трансляцию. Участвуйте в прямом эфире, задавайте все интересующие вопросы экспертам и выигрывайте призы.', '', '', '', 1, 0, 2, NULL, 0, NULL, -1, -1, 'oenykd@fexpost.com', '2022-08-11', '9999-00-00', NULL, '14:00', '99:00', 0, 0, 0, 0, '9999-00-00', '2022-08-05 19:06', '9999-00-00 00:00', 0),
(5, 0, 0, 'Counter Strike', '', '', '', '', '', 1, 0, 2, NULL, 0, NULL, -1, -1, 'oenykd@fexpost.com', '2022-08-05', '2022-08-31', NULL, '00:00', '00:00', 0, 0, 0, 0, '9999-00-00', '2022-08-05 22:21', '9999-00-00 00:00', 0),
(6, 0, 0, 'SSL Certificate Installation', '', '', '', '', '', 1, 0, 2, NULL, 0, NULL, -1, -1, 'oenykd@fexpost.com', '2022-08-05', '9999-00-00', NULL, '19:20', '22:24', 0, 0, 0, 0, '9999-00-00', '2022-08-05 22:25', '9999-00-00 00:00', 0),
(7, 0, 0, 'Продажа в аукционе доменов', '', '', '', '', '', 1, 0, 2, NULL, 0, NULL, -1, -1, 'oenykd@fexpost.com', '2022-08-01', '2022-08-04', NULL, '00:00', '23:59', 0, 0, 0, 0, '9999-00-00', '2022-08-05 22:29', '9999-00-00 00:00', 0),
(8, 0, 0, 'Продажа в аукционе доменов', '', '', '', '', '', 1, 0, 2, NULL, 0, NULL, -1, -1, 'oenykd@fexpost.com', '2022-07-11', '2022-07-14', NULL, '10:00', '10:00', 0, 0, 0, 0, '9999-00-00', '2022-08-06 16:54', '9999-00-00 00:00', 0),
(9, 0, 0, 'День Кошки', '', '', '', '', '', 1, 0, 2, NULL, 0, NULL, -1, -1, 'oenykd@fexpost.com', '2022-08-09', '9999-00-00', NULL, '00:00', '23:59', 0, 0, 0, 0, '9999-00-00', '2022-08-07 11:26', '9999-00-00 00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `mycal_groups`
--

CREATE TABLE `mycal_groups` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `privs` tinyint(4) NOT NULL DEFAULT 0,
  `vCatIDs` varchar(128) NOT NULL DEFAULT '0',
  `eCatIDs` varchar(128) NOT NULL DEFAULT '0',
  `rEvents` tinyint(4) NOT NULL DEFAULT 1,
  `mEvents` tinyint(4) NOT NULL DEFAULT 1,
  `pEvents` tinyint(4) NOT NULL DEFAULT 1,
  `upload` tinyint(4) NOT NULL DEFAULT 0,
  `sendSms` tinyint(4) NOT NULL DEFAULT 0,
  `tnPrivs` varchar(2) NOT NULL DEFAULT '00',
  `color` varchar(8) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mycal_groups`
--

INSERT INTO `mycal_groups` (`ID`, `name`, `privs`, `vCatIDs`, `eCatIDs`, `rEvents`, `mEvents`, `pEvents`, `upload`, `sendSms`, `tnPrivs`, `color`, `status`) VALUES
(1, 'No access', 0, '0', '0', 1, 1, 1, 0, 0, '00', NULL, 0),
(2, 'Admin', 9, '0', '0', 1, 1, 1, 1, 1, '22', NULL, 0),
(3, 'Read access', 1, '0', '0', 1, 1, 1, 0, 0, '00', NULL, 0),
(4, 'Post Own', 2, '0', '0', 1, 1, 1, 0, 0, '20', NULL, 0),
(5, 'Post All', 3, '0', '0', 1, 1, 1, 0, 0, '21', NULL, 0),
(6, 'Manager', 4, '0', '0', 1, 1, 1, 1, 1, '22', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `mycal_settings`
--

CREATE TABLE `mycal_settings` (
  `name` varchar(16) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `outline` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mycal_settings`
--

INSERT INTO `mycal_settings` (`name`, `value`, `outline`) VALUES
('calendarTitle', 'Mycal', 'Calendar title displayed in the top bar'),
('calendarUrl', 'http://calendar.hstn.me/?cal=mycal', 'Calendar link (URL)'),
('backLinkUrl', '', 'Nav bar back link URL (blank: no link, url: link)'),
('logoPath', '', 'Path/name of optional left upper corner logo image'),
('timeZone', 'Europe/Minsk', 'Calendar time zone'),
('notifChange', '0', 'Send a notification when event added/edited/deleted (0:no, 1:yes)'),
('chgRecipList', '', 'List of notification email/SMS addresses'),
('maxXsWidth', '800', 'Upper limit responsive calendar mode'),
('rssFeed', '1', 'Display RSS feed links in footer and HTML head (0:no, 1:yes)'),
('logWarnings', '1', 'Log calendar warning messages (0:no, 1:yes)'),
('logNotices', '0', 'Log calendar notice messages (0:no, 1:yes)'),
('logVisitors', '0', 'Log calendar visitors data (0:no, 1:yes)'),
('maintMode', '0', 'Run calendar in maintenance mode (0:no, 1:yes)'),
('contButton', '1', 'Display Contact button in side menu (0:no, 1:yes)'),
('viewMenu', '1', 'Display view menu in options panel (0:no, 1:yes)'),
('groupMenu', '1', 'Display group filter menu in options panel (0:no, 1:yes)'),
('userMenu', '1', 'Display user filter menu in options panel (0:no, 1:yes)'),
('catMenu', '1', 'Display category filter menu in options panel(0:no, 1:yes)'),
('langMenu', '0', 'Display ui-language selection menu in options panel (0:no, 1:yes)'),
('birthdayCal', '0', 'Display option PDF File - Birthdays in side menu (0:no, 1:yes)'),
('viewsPublic', '1,2,3,4,5,6,7,8,9,10,11', 'Calendar views available to the public users'),
('viewsLogged', '1,2,3,4,5,6,7,8,9,10,11', 'Calendar views available to the logged-in users'),
('viewButsPub', '', 'View buttons on the navbar (1:year, ... 11:gantt) - public user'),
('viewButsLog', '', 'View buttons on the navbar (1:year, ... 11:gantt) - logged in user'),
('defViewPubL', '2', 'View large display at start-up (1:year, ... 8:changes) - public user'),
('defViewPubS', '7', 'View small display at start-up (1:year, ... 8:changes) - public user'),
('defViewLogL', '2', 'View large display at start-up (1:year, ... 8:changes) - logged in user'),
('defViewLogS', '7', 'View small display at start-up (1:year, ... 8:changes) - logged in user'),
('language', 'russian', 'Default user interface language'),
('privEvents', '1', 'Private events (0:disabled 1:enabled, 2:default, 3:always)'),
('timeDefault', '0', 'Time default for new events (0:time fields 1:all day 2: no time)'),
('details4All', '1', 'Show event details to x users (0:none, 1:all, 2:logged-in users)'),
('evtDelButton', '1', 'Display Delete button in Event window (0:no, 1:yes, 2:manager)'),
('eventColor', '1', 'Event colors (0:no color, 1:cat color, 2:user group color)'),
('defVenue', '', 'Default venue in the venue field of the event form'),
('xField1Label', '', 'Label optional extra event field 1'),
('xField2Label', '', 'Label optional extra event field 2'),
('xField1Rights', '1', 'Extra event field 1 minimum required rights to see'),
('xField2Rights', '1', 'Extra event field 2 minimum required rights to see'),
('selfReg', '0', 'Self-registration (0:no, 1:yes)'),
('selfRegGrp', '4', 'Self-registration user group ID'),
('selfRegQ', '', 'Self-registration question to answer'),
('selfRegA', '', 'Self-registration answer to selfregQ'),
('selfRegNot', '0', 'User self-reg notification to admin (0:no, 1:yes)'),
('restLastSel', '1', 'Restore last session when user revisits calendar'),
('cookieExp', '30', 'Number of days before a Remember Me cookie expires'),
('evtTemplGen', '12345678', 'Event fields and order of fields in general views'),
('evtTemplUpc', '123458', 'Event fields and order of fields in upcoming events view'),
('evtTemplPop', '123458', 'Event fields and order of fields in hover box'),
('evtSorting', '0', 'Sort events on times or cat. seq. nr (0:times, 1:cat seq nr)'),
('yearStart', '0', 'Start month in year view (1-12 or 0, 0:current month)'),
('YvColsToShow', '3', 'Number of months to show per row in year view'),
('YvRowsToShow', '4', 'Number of rows to show in year view'),
('MvWeeksToShow', '10', 'Number of weeks to show in month view'),
('XvWeeksToShow', '8', 'Number of weeks to show in matrix view'),
('GvWeeksToShow', '8', 'Number of weeks to show in gantt view'),
('workWeekDays', '12345', 'Working days (0: su - 6: sa)'),
('weekStart', '1', 'First day of the week (0: su - 6: sa)'),
('lookbackDays', '30', 'Days to look back in the todo list'),
('lookaheadDays', '14', 'Days to look ahead in upcoming view, todo list and RSS feeds'),
('searchBackDays', '365', 'Default days to look back on Search page'),
('searchAheadDays', '365', 'Defalt days to look ahead on Search page'),
('dwStartHour', '6', 'Day/week view start hour'),
('dwEndHour', '18', 'Day/week view end hour'),
('dwTimeSlot', '30', 'Day/week time slot in minutes'),
('dwTsHeight', '20', 'Day/week time slot height in pixels'),
('evtHeadM', '#ts #e', 'Event fields / layout template for month view'),
('evtHeadW', '#ts #e', 'Event fields / layout template for week and day views'),
('ownerTitle', '0', 'Prepend owner to event title (0:disabled 1:enabled)'),
('spMiniCal', '', 'Show mini calendar in side panel (csv-list with views)'),
('spImages', '', 'Show images in side panel (csv-list with views)'),
('spInfoArea', '', 'Show info area in side panel (csv-list with views)'),
('spDateFixed', '0', 'Side panel date fixed (0:cD is taken, 1:date of today)'),
('topBarDate', '1', 'Show current date on top bar in calendar views (0:no, 1:yes)'),
('showImgInMV', '0', 'Show images in month view (0:no, 1:yes)'),
('monthInDCell', '0', 'Show in month view month for each day (0:no, 1:yes)'),
('evtWinSmall', '0', 'Show reduced Event window (0:no, 1:yes)'),
('mapViewer', 'https://maps.google.com/maps?q=', 'map viewer for the event address button'),
('dateFormat', 'd.m.y', 'Date format: yyyy-mm-dd (y:yyyy, m:mm, d:dd)'),
('MdFormat', 'd M', 'Date format: dd month (d:dd, M:month)'),
('MdyFormat', 'd M y', 'Date format: dd month yyyy (d:dd, M:month, y:yyyy)'),
('MyFormat', 'M y', 'Date format: month yyyy (M:month, y:yyyy)'),
('DMdFormat', 'WD d M', 'Date format: weekday dd month (WD:weekday d:dd, M:month)'),
('DMdyFormat', 'WD d M y', 'Date format: weekday dd month yyyy (WD:weekday d:dd, M:month, y:yyyy)'),
('timeFormat', 'h:m', 'Time format (H:hh, h:h, m:mm, a:am|pm, A:AM|PM)'),
('weekNumber', '1', 'Week numbers on(1) or off(0)'),
('maxUplSize', '2', 'Max. size of uploaded attachment and thumbnail files in MBs'),
('attTypes', '.pdf,.jpg,.gif,.png,.mp4,.avi', 'Valid types of uploaded attachments'),
('tnlTypes', '.jpg,.jpeg,.gif,.png', 'Valid types of uploaded thumbnails'),
('tnlMaxW', '160', 'Max. width of uploaded thumbnails image in pixels'),
('tnlMaxH', '120', 'Max. height of uploaded thumbnails image in pixels'),
('tnlDelDays', '20', 'thumbnails used since last 20 days cannot be deleted'),
('emlService', '1', 'Mail service (0:no, 1:yes)'),
('smsService', '0', 'SMS service (0:no, 1:yes)'),
('defRecips', '', 'Default recipients list for email and SMS notifications'),
('maxEmlCc', '10', 'Default max. number of recipients in email Cc field'),
('notSenderEml', '0', 'Sender of notification emails (0:calendar, 1:user)'),
('emlFootnote', '', 'Footnote text added to email reminders'),
('calendarEmail', 'oenykd@fexpost.com', 'Sender of email notifications'),
('smtpServer', '', 'SMTP mail server name'),
('smtpPort', '465', 'SMTP port number'),
('smtpSsl', '1', 'Use SSL (Secure Sockets Layer) (0:no, 1:yes)'),
('smtpAuth', '1', 'Use SMTP authentication (0:no, 1:yes)'),
('smtpUser', '', 'SMTP username'),
('smtpPass', '', 'SMTP password'),
('notSenderSms', '0', 'Sender of notification SMSes (0:calendar, 1:user)'),
('calendarPhone', '', 'Sender of SMS notifications'),
('smsCarrier', '', 'SMS carrier template (# = mob. phone number)'),
('smsCountry', '', 'SMS country code'),
('cCodePrefix', '1', 'Country code starts with prefix + or 00 (0:no, 1:yes)'),
('smsSubject', '', 'Subject field template for SMS emails to the carrier'),
('maxLenSms', '70', 'Maximum length of SMS messages (bytes)'),
('smsAddLink', '0', 'Add event report link to SMS (0:no, 1:yes)'),
('mailServer', '1', 'Mail server (1:PHP mail, 2:SMTP mail)'),
('adminCronSum', '1', 'Send cron job summary to admin (0:no, 1:yes)'),
('chgNofDays', '0', 'Days to look back for calendar changes summary'),
('chgSumRecips', '', 'Recipient list for calendar change summaries'),
('icsExport', '0', 'Daily export of events in iCal format (0:no 1:yes)'),
('eventExp', '0', 'Number of days after due when an event expires / can be deleted (0:never)'),
('maxNoLogin', '0', 'Number of days not logged in, before deleting user account (0:never delete)'),
('popFieldsSbar', '12345', 'Event fields in sidebar hover box (none: no box)'),
('showLinkInSB', '1', 'Show URL-links in sidebar (0:no, 1:yes)'),
('sideBarDays', '14', 'Days to look ahead in sidebar');

-- --------------------------------------------------------

--
-- Структура таблицы `mycal_styles`
--

CREATE TABLE `mycal_styles` (
  `name` varchar(8) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mycal_styles`
--

INSERT INTO `mycal_styles` (`name`, `value`) VALUES
('THEME', 'Mycal'),
('BXXXX', '#E0E0E0'),
('BTBAR', '#FDFDFD'),
('BBHAR', '#96B4FF'),
('BBUTS', '#FFFFFF'),
('BDROP', '#FFFFFF'),
('BXWIN', '#FFFFEE'),
('BINBX', '#FFFFEE'),
('BOVBX', '#FEFEFE'),
('BFFLD', '#FFFFFF'),
('BCONF', '#A0D070'),
('BWARN', '#FFF0A0'),
('BERRO', '#F0A070'),
('BHLIT', '#FF2222'),
('CXXXX', '#2B3856'),
('CTBAR', '#2B3856'),
('CBHAR', '#2B3856'),
('CBUTS', '#2B3856'),
('CDROP', '#2B3856'),
('CXWIN', '#2B3856'),
('CINBX', '#2B3856'),
('COVBX', '#2B3856'),
('CFFLD', '#2B3856'),
('CCONF', '#2B3856'),
('CWARN', '#2B3856'),
('CERRO', '#2B3856'),
('CHLIT', '#2B3856'),
('EXXXX', '#808080'),
('EOVBX', '#96B4FF'),
('EBUTS', '#0080FE'),
('FFXXX', 'arial,sans-serif'),
('PSXXX', '12'),
('PTBAR', '13'),
('PPGTL', '14'),
('PTHDL', '13'),
('MTHDM', '1.0'),
('MDTHD', '1.0'),
('MSNHD', '1.0'),
('MOVBX', '1.0'),
('MFFLD', '1.0'),
('MBUTS', '0.9'),
('MPWIN', '1.1'),
('MSMAL', '0.8'),
('sTbSw', '1'),
('sCtOf', '0'),
('BGCTH', '#F2F2F2'),
('BGTFD', '#96B4FF'),
('BGWTC', '#FFFFBB'),
('BGWD1', '#FFFFEE'),
('BGWD2', '#FFFFDD'),
('BGWE1', '#FFFFCC'),
('BGWE2', '#FFFFBB'),
('BGOUT', '#FEFEFE'),
('BGTOD', '#EEEEFF'),
('BGSEL', '#FFEEEE'),
('BLINK', '#FFFFFF'),
('BCHBX', '#FFFFDD'),
('CGWTC', '#666666'),
('CGTFD', '#2B3856'),
('CGWD1', '#2B3856'),
('CGWD2', '#2B3856'),
('CGWE1', '#2B3856'),
('CGWE2', '#2B3856'),
('CGOUT', '#2B3856'),
('CGTOD', '#2B3856'),
('CGSEL', '#2B3856'),
('CLINK', '#C02020'),
('CCHBX', '#FF0000'),
('EGTOD', '#0000FF'),
('EGSEL', '#FF0000'),
('MEVTI', '1.0'),
('BHNOR', '#FFFFE0'),
('BHPRI', '#CCFFCC'),
('BHREP', '#FFFFE0'),
('CHNOR', '#2B3856'),
('CHPRI', '#2B3856'),
('CHREP', '#2B3856'),
('EHNOR', '#808080'),
('EHPRI', '#808080'),
('EHREP', '#E00060'),
('MPOPU', '1.0');

-- --------------------------------------------------------

--
-- Структура таблицы `mycal_users`
--

CREATE TABLE `mycal_users` (
  `ID` int(11) NOT NULL,
  `token` varchar(32) DEFAULT NULL,
  `name` varchar(48) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `tPassword` varchar(32) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `msingID` varchar(16) DEFAULT NULL,
  `groupID` mediumint(9) NOT NULL DEFAULT 3,
  `language` varchar(24) DEFAULT '',
  `login0` varchar(10) NOT NULL DEFAULT '9999-00-00',
  `login1` varchar(10) NOT NULL DEFAULT '9999-00-00',
  `loginCnt` mediumint(9) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mycal_users`
--

INSERT INTO `mycal_users` (`ID`, `token`, `name`, `password`, `tPassword`, `email`, `phone`, `msingID`, `groupID`, `language`, `login0`, `login1`, `loginCnt`, `status`) VALUES
(1, NULL, 'Public Access', '', NULL, '', NULL, NULL, 3, '', '2022-08-05', '2023-04-26', 37, 0),
(2, 'ea863f386b672cfceae3f0b48337683a', 'Admin', 'ed612e5517a0fb5a5d04ead807550608', '', 'oenykd@fexpost.com', NULL, NULL, 2, 'english', '2022-08-05', '2022-11-02', 63, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `mycal_categories`
--
ALTER TABLE `mycal_categories`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `mycal_events`
--
ALTER TABLE `mycal_events`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `mycal_groups`
--
ALTER TABLE `mycal_groups`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `mycal_users`
--
ALTER TABLE `mycal_users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `mycal_categories`
--
ALTER TABLE `mycal_categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `mycal_events`
--
ALTER TABLE `mycal_events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `mycal_groups`
--
ALTER TABLE `mycal_groups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `mycal_users`
--
ALTER TABLE `mycal_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
