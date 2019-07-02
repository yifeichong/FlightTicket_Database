-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2019-06-12 19:46:35
-- 服务器版本： 5.7.26-log
-- PHP Version: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Flight1`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'flight_admin'),
(3, 'order_admin'),
(1, 'user_admin');

-- --------------------------------------------------------

--
-- 表的结构 `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(2, 1, 13),
(3, 1, 14),
(4, 1, 15),
(1, 1, 16),
(5, 2, 25),
(6, 2, 26),
(7, 2, 27),
(8, 2, 28),
(10, 3, 29),
(11, 3, 30),
(12, 3, 31),
(9, 3, 32);

-- --------------------------------------------------------

--
-- 表的结构 `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add flight', 7, 'add_flight'),
(26, 'Can change flight', 7, 'change_flight'),
(27, 'Can delete flight', 7, 'delete_flight'),
(28, 'Can view flight', 7, 'view_flight'),
(29, 'Can add order', 8, 'add_order'),
(30, 'Can change order', 8, 'change_order'),
(31, 'Can delete order', 8, 'delete_order'),
(32, 'Can view order', 8, 'view_order');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$Vo5jOPRAlhVO$r/vwqdhG/Yr1Kj6OZvCTWzZSDq/1/SebWSszGMbUGkI=', '2019-06-07 10:47:57.000000', 1, 'admin', '', '', '', 1, 1, '2019-06-06 09:12:33.000000'),
(2, 'pbkdf2_sha256$150000$JbkByOnFZgvw$B3eCivuxJmH0KNFM+FJE/KKYEE3mwnWe6vtgDMspGGQ=', '2019-06-11 17:40:11.220661', 0, 'xuxiaogang', '', '', '169506187@qq.com', 0, 1, '2019-06-06 16:22:19.183471'),
(3, 'pbkdf2_sha256$150000$ZfIpp74ClW8P$IWWlf9WlgMHwM98hyVqxEX002ECB9UxV1yIE3ePRhgs=', '2019-06-07 10:46:52.202853', 0, 'xuxiaogang1', '', '', '', 0, 1, '2019-06-07 10:46:50.902585'),
(4, 'pbkdf2_sha256$150000$Fm4Oc8Sa563h$4pmVYc/9fY2MBfyqVpDI7jyC8zBpN8+Vz+YFDfch+lw=', '2019-06-07 11:05:48.000000', 0, 'flight', '', '', '', 1, 1, '2019-06-07 11:02:35.000000'),
(5, 'pbkdf2_sha256$150000$M3jSsdgUTtNY$8jDYhyt4D2tkvVimtmezcdcRfQhhPQwwWTS88Eu2k/w=', '2019-06-07 11:09:40.165992', 0, 'order', '', '', '', 1, 1, '2019-06-07 11:09:03.000000'),
(6, 'pbkdf2_sha256$150000$uNAracs35X5d$OPjeNwu6clOlNEt+MEnM6guemZ6NDL+A/YiAZfj9I9k=', '2019-06-07 11:10:30.133729', 0, 'user', '', '', '', 1, 1, '2019-06-07 11:10:04.000000');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 4, 2),
(2, 5, 3),
(3, 6, 1);

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `booksystem_flight`
--

CREATE TABLE IF NOT EXISTS `booksystem_flight` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `leave_city` varchar(100) DEFAULT NULL,
  `arrive_city` varchar(100) DEFAULT NULL,
  `leave_airport` varchar(100) DEFAULT NULL,
  `arrive_airport` varchar(100) DEFAULT NULL,
  `leave_time` datetime(6) DEFAULT NULL,
  `arrive_time` datetime(6) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `book_sum` int(11) DEFAULT NULL,
  `income` double DEFAULT NULL,
  `seat_type` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `booksystem_flight`
--

INSERT INTO `booksystem_flight` (`id`, `name`, `leave_city`, `arrive_city`, `leave_airport`, `arrive_airport`, `leave_time`, `arrive_time`, `capacity`, `price`, `book_sum`, `income`, `seat_type`) VALUES
(4, '海南航空HU7818', '武汉', '上海', '武汉天河机场T1', '浦东国际机场T2', '2019-06-07 10:07:35.000000', '2019-06-07 12:07:37.000000', 100, 570, 2, 1140, '经济舱'),
(5, '海南航空HU7818', '武汉', '上海', '武汉天河机场T1', '浦东国际机场T2', '2019-06-07 10:07:24.000000', '2019-06-07 12:07:35.000000', 50, 1020, 0, 0, '公务舱'),
(6, '海南航空HU7818', '武汉', '上海', '武汉天河机场T1', '浦东国际机场T2', '2019-06-07 10:07:26.000000', '2019-06-07 12:07:31.000000', 30, 2120, 0, 0, '头等舱'),
(7, '厦门航空MF8147', '长沙', '北京', '黄花国际机场T2', '首都国际机场T2', '2019-06-08 10:16:08.000000', '2019-06-08 12:16:27.000000', 150, 580, 0, 0, '经济舱'),
(8, '厦门航空MF8147', '长沙', '北京', '黄花国际机场T2', '首都国际机场T2', '2019-06-08 10:16:19.000000', '2019-06-08 12:16:25.000000', 50, 1560, 0, 0, '公务舱'),
(9, '山东航空SC4786', '武汉', '厦门', '武汉天河机场T1', '高崎国际机场T4', '2019-06-09 15:18:52.000000', '2019-06-07 17:18:57.000000', 80, 680, 0, 0, '经济舱'),
(10, '山东航空SC4786', '武汉', '厦门', '武汉天河机场T1', '高崎国际机场T4', '2019-06-09 15:18:42.000000', '2019-06-09 17:18:37.000000', 40, 2150, 0, 0, '头等舱'),
(11, '东方航空MU2384', '武汉', '西安', '武汉天河机场T1', '咸阳国际机场T3', '2019-06-10 10:27:15.000000', '2019-06-10 12:27:19.000000', 130, 560, 0, 0, '经济舱'),
(12, '东方航空MU2384', '武汉', '西安', '武汉天河机场T1', '咸阳国际机场T3', '2019-06-10 10:27:03.000000', '2019-06-10 12:27:07.000000', 30, 1280, 0, 0, '公务舱'),
(13, '东方航空MU2384', '武汉', '西安', '武汉天河机场T1', '咸阳国际机场T3', '2019-06-10 10:27:03.000000', '2019-06-10 12:27:07.000000', 30, 2390, 0, 0, '头等舱'),
(14, '奥凯航空BK2779', '武汉', '成都', '武汉天河机场T2', '双流国际机场T2', '2019-06-11 10:30:21.000000', '2019-06-11 11:30:22.000000', 110, 890, 1, 890, '经济舱'),
(15, '奥凯航空BK2779', '武汉', '成都', '武汉天河机场T2', '双流国际机场T2', '2019-06-11 10:30:46.000000', '2019-06-11 11:30:47.000000', 50, 1430, 0, 0, '公务舱'),
(16, '奥凯航空BK2779', '武汉', '成都', '武汉天河机场T2', '双流国际机场T2', '2019-06-11 10:30:05.000000', '2019-06-11 11:30:09.000000', 20, 2630, 0, 0, '头等舱'),
(17, '南方航空CZ3387', '武汉', '广州', '武汉天河机场T2', '白云国际机场T1', '2019-06-13 10:38:08.000000', '2019-06-07 12:38:11.000000', 90, 792, 0, 0, '经济舱'),
(18, '南方航空CZ3387', '武汉', '广州', '武汉天河机场T2', '白云国际机场T1', '2019-06-13 10:38:22.000000', '2019-06-13 12:38:32.000000', 40, 1680, 0, 0, '公务舱'),
(19, '南方航空CZ3387', '武汉', '广州', '武汉天河机场T2', '白云国际机场T1', '2019-06-13 10:38:36.000000', '2019-06-13 12:38:42.000000', 30, 2540, 0, 0, '头等舱');

-- --------------------------------------------------------

--
-- 表的结构 `booksystem_flight_user`
--

CREATE TABLE IF NOT EXISTS `booksystem_flight_user` (
  `id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `booksystem_flight_user`
--

INSERT INTO `booksystem_flight_user` (`id`, `flight_id`, `user_id`) VALUES
(58, 4, 2),
(59, 4, 3),
(60, 14, 2);

-- --------------------------------------------------------

--
-- 表的结构 `booksystem_order`
--

CREATE TABLE IF NOT EXISTS `booksystem_order` (
  `id` int(11) NOT NULL,
  `is_fetch` tinyint(1) NOT NULL,
  `is_refund` tinyint(1) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `creat_time` datetime(6),
  `fetch_time` datetime(6),
  `refund_time` datetime(6),
  `can_modify` tinyint(1) NOT NULL,
  `is_pay` tinyint(1) NOT NULL,
  `pay_time` datetime(6) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `booksystem_order`
--

INSERT INTO `booksystem_order` (`id`, `is_fetch`, `is_refund`, `flight_id`, `user_id`, `creat_time`, `fetch_time`, `refund_time`, `can_modify`, `is_pay`, `pay_time`) VALUES
(49, 0, 1, 19, 2, '2019-06-07 10:42:05.530468', NULL, '2019-06-07 10:43:06.086357', 0, 1, '2019-06-07 10:42:13.352884'),
(50, 1, 0, 4, 2, '2019-06-07 10:43:23.892109', '2019-06-07 10:43:38.411315', NULL, 0, 1, '2019-06-07 10:43:31.309385'),
(51, 1, 0, 4, 3, '2019-06-07 10:47:11.402422', '2019-06-07 10:47:23.584719', NULL, 0, 1, '2019-06-07 10:47:16.601496'),
(52, 0, 0, 14, 2, '2019-06-07 10:54:43.359805', NULL, NULL, 1, 0, NULL),
(53, 0, 1, 14, 4, '2019-06-07 11:06:08.042777', NULL, '2019-06-07 11:06:13.885113', 0, 0, NULL),
(54, 0, 1, 4, 1, '2019-06-07 11:34:55.612565', NULL, '2019-06-07 11:35:25.487364', 0, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-06-06 09:13:38.289499', '1', '1', 1, '[{"added": {}}]', 7, 1),
(2, '2019-06-06 09:39:47.833864', '1', 'Order object (1)', 1, '[{"added": {}}]', 8, 1),
(3, '2019-06-06 09:58:41.683299', '3', 'admin1', 1, '[{"added": {}}]', 8, 1),
(4, '2019-06-06 09:59:03.781445', '3', 'admin1', 3, '', 8, 1),
(5, '2019-06-06 10:00:53.033833', '1', '1', 2, '[{"changed": {"fields": ["book_sum"]}}]', 7, 1),
(6, '2019-06-06 10:02:14.562019', '1', '1', 2, '[{"changed": {"fields": ["capacity"]}}]', 7, 1),
(7, '2019-06-06 10:02:23.900788', '1', '1', 2, '[{"changed": {"fields": ["income"]}}]', 7, 1),
(8, '2019-06-06 10:16:15.386888', '4', 'admin1', 3, '', 8, 1),
(9, '2019-06-06 10:33:25.508374', '5', 'admin1', 3, '', 8, 1),
(10, '2019-06-06 10:45:12.575759', '1', '1', 2, '[{"changed": {"fields": ["capacity", "book_sum", "income"]}}]', 7, 1),
(11, '2019-06-06 11:35:54.008605', '14', 'admin1', 3, '', 8, 1),
(12, '2019-06-06 11:35:54.023827', '13', 'admin1', 3, '', 8, 1),
(13, '2019-06-06 11:35:54.044816', '12', 'admin1', 3, '', 8, 1),
(14, '2019-06-06 11:35:54.061184', '11', 'admin1', 3, '', 8, 1),
(15, '2019-06-06 11:35:54.078342', '10', 'admin1', 3, '', 8, 1),
(16, '2019-06-06 11:35:54.091774', '9', 'admin1', 3, '', 8, 1),
(17, '2019-06-06 11:35:54.108270', '8', 'admin1', 3, '', 8, 1),
(18, '2019-06-06 11:35:54.128166', '7', 'admin1', 3, '', 8, 1),
(19, '2019-06-06 11:35:54.144120', '6', 'admin1', 3, '', 8, 1),
(20, '2019-06-06 11:37:53.854476', '15', 'admin1', 2, '[{"changed": {"fields": ["is_refund"]}}]', 8, 1),
(21, '2019-06-06 11:37:59.224419', '15', 'admin1', 2, '[{"changed": {"fields": ["is_refund"]}}]', 8, 1),
(22, '2019-06-06 11:51:31.326517', '17', 'admin1', 3, '', 8, 1),
(23, '2019-06-06 11:51:31.400712', '16', 'admin1', 3, '', 8, 1),
(24, '2019-06-06 11:51:31.427092', '15', 'admin1', 3, '', 8, 1),
(25, '2019-06-06 15:43:31.700574', '22', 'admin1', 3, '', 8, 1),
(26, '2019-06-06 15:43:31.718783', '21', 'admin1', 3, '', 8, 1),
(27, '2019-06-06 15:43:31.735920', '20', 'admin1', 3, '', 8, 1),
(28, '2019-06-06 15:43:31.756992', '19', 'admin1', 3, '', 8, 1),
(29, '2019-06-06 15:43:31.778160', '18', 'admin1', 3, '', 8, 1),
(30, '2019-06-06 15:43:49.559314', '1', '1', 2, '[{"changed": {"fields": ["book_sum", "income"]}}]', 7, 1),
(31, '2019-06-06 15:44:09.503402', '1', '1', 2, '[{"changed": {"fields": ["capacity"]}}]', 7, 1),
(32, '2019-06-06 15:45:31.470130', '23', 'admin1', 3, '', 8, 1),
(33, '2019-06-06 15:48:02.892218', '1', '1', 2, '[{"changed": {"fields": ["capacity", "income"]}}]', 7, 1),
(34, '2019-06-06 16:04:52.599574', '1', '1', 2, '[{"changed": {"fields": ["capacity", "book_sum", "income"]}}]', 7, 1),
(35, '2019-06-06 17:18:54.483817', '28', 'xuxiaogang1', 3, '', 8, 1),
(36, '2019-06-06 17:18:54.557715', '27', 'admin1', 3, '', 8, 1),
(37, '2019-06-06 17:18:54.654259', '26', 'admin1', 3, '', 8, 1),
(38, '2019-06-06 17:18:54.687041', '25', 'admin1', 3, '', 8, 1),
(39, '2019-06-06 17:18:54.764478', '24', 'admin1', 3, '', 8, 1),
(40, '2019-06-06 17:32:05.137962', '29', 'admin1', 3, '', 8, 1),
(41, '2019-06-06 17:32:20.477681', '1', '1', 2, '[{"changed": {"fields": ["capacity", "price", "book_sum", "income"]}}]', 7, 1),
(42, '2019-06-06 17:32:38.786462', '1', '1', 2, '[{"changed": {"fields": ["price"]}}]', 7, 1),
(43, '2019-06-06 19:39:03.344859', '2', '2', 1, '[{"added": {}}]', 7, 1),
(44, '2019-06-06 19:39:28.957959', '2', '2', 2, '[{"changed": {"fields": ["leave_city", "arrive_city"]}}]', 7, 1),
(45, '2019-06-06 21:35:06.981844', '3', '3', 1, '[{"added": {}}]', 7, 1),
(46, '2019-06-07 10:02:51.582987', '48', 'xuxiaogang3', 3, '', 8, 1),
(47, '2019-06-07 10:02:51.648502', '47', 'xuxiaogang3', 3, '', 8, 1),
(48, '2019-06-07 10:02:51.722436', '46', 'admin3', 3, '', 8, 1),
(49, '2019-06-07 10:02:51.796579', '45', 'admin1', 3, '', 8, 1),
(50, '2019-06-07 10:02:51.822136', '44', 'admin1', 3, '', 8, 1),
(51, '2019-06-07 10:02:51.899457', '43', 'admin1', 3, '', 8, 1),
(52, '2019-06-07 10:02:51.978488', '42', 'admin1', 3, '', 8, 1),
(53, '2019-06-07 10:02:52.050474', '41', 'admin1', 3, '', 8, 1),
(54, '2019-06-07 10:02:52.145586', '40', 'admin1', 3, '', 8, 1),
(55, '2019-06-07 10:02:52.217456', '39', 'admin1', 3, '', 8, 1),
(56, '2019-06-07 10:02:52.290446', '38', 'admin1', 3, '', 8, 1),
(57, '2019-06-07 10:02:52.363558', '37', 'admin3', 3, '', 8, 1),
(58, '2019-06-07 10:02:52.435450', '36', 'admin3', 3, '', 8, 1),
(59, '2019-06-07 10:02:52.508456', '35', 'admin3', 3, '', 8, 1),
(60, '2019-06-07 10:02:52.563783', '34', 'admin1', 3, '', 8, 1),
(61, '2019-06-07 10:02:52.582598', '33', 'admin2', 3, '', 8, 1),
(62, '2019-06-07 10:02:52.601174', '32', 'admin1', 3, '', 8, 1),
(63, '2019-06-07 10:02:52.620992', '31', 'admin1', 3, '', 8, 1),
(64, '2019-06-07 10:02:52.640327', '30', 'admin1', 3, '', 8, 1),
(65, '2019-06-07 10:03:00.917227', '3', '3', 3, '', 7, 1),
(66, '2019-06-07 10:03:00.935557', '2', '2', 3, '', 7, 1),
(67, '2019-06-07 10:03:00.951843', '1', '1', 3, '', 7, 1),
(68, '2019-06-07 10:08:03.733400', '4', '海南航空HU7818', 1, '[{"added": {}}]', 7, 1),
(69, '2019-06-07 10:08:53.077077', '5', '海南航空HU7818', 1, '[{"added": {}}]', 7, 1),
(70, '2019-06-07 10:09:49.622495', '6', '海南航空HU7815', 1, '[{"added": {}}]', 7, 1),
(71, '2019-06-07 10:14:45.268113', '6', '海南航空HU7818', 2, '[{"changed": {"fields": ["name"]}}]', 7, 1),
(72, '2019-06-07 10:16:44.213402', '7', '厦门航空MF8147', 1, '[{"added": {}}]', 7, 1),
(73, '2019-06-07 10:17:47.964544', '8', '厦门航空MF8147', 1, '[{"added": {}}]', 7, 1),
(74, '2019-06-07 10:19:17.080265', '9', '山东航空SC4786', 1, '[{"added": {}}]', 7, 1),
(75, '2019-06-07 10:20:59.661179', '10', '山东航空SC4786', 1, '[{"added": {}}]', 7, 1),
(76, '2019-06-07 10:27:36.654038', '11', '东方航空MU2384', 1, '[{"added": {}}]', 7, 1),
(77, '2019-06-07 10:28:18.837448', '12', '东方航空MU2384', 1, '[{"added": {}}]', 7, 1),
(78, '2019-06-07 10:28:37.043384', '13', '东方航空MU2384', 1, '[{"added": {}}]', 7, 1),
(79, '2019-06-07 10:29:23.136860', '12', '东方航空MU2384', 2, '[{"changed": {"fields": ["price", "seat_type"]}}]', 7, 1),
(80, '2019-06-07 10:30:42.567185', '14', '奥凯航空BK2779', 1, '[{"added": {}}]', 7, 1),
(81, '2019-06-07 10:32:11.266493', '15', '奥凯航空BK2779', 1, '[{"added": {}}]', 7, 1),
(82, '2019-06-07 10:33:24.375677', '16', '奥凯航空BK2779', 1, '[{"added": {}}]', 7, 1),
(83, '2019-06-07 10:38:30.457547', '17', '南方航空CZ3387', 1, '[{"added": {}}]', 7, 1),
(84, '2019-06-07 10:39:50.374358', '18', '南方航空CZ3387', 1, '[{"added": {}}]', 7, 1),
(85, '2019-06-07 10:40:57.904182', '19', '南方航空CZ3387', 1, '[{"added": {}}]', 7, 1),
(86, '2019-06-07 10:41:19.782352', '19', '南方航空CZ3387', 2, '[{"changed": {"fields": ["arrive_time"]}}]', 7, 1),
(87, '2019-06-07 10:41:22.146181', '19', '南方航空CZ3387', 2, '[]', 7, 1),
(88, '2019-06-07 10:41:30.925941', '18', '南方航空CZ3387', 2, '[{"changed": {"fields": ["arrive_time"]}}]', 7, 1),
(89, '2019-06-07 10:59:34.103726', '1', 'user_admin', 1, '[{"added": {}}]', 3, 1),
(90, '2019-06-07 10:59:55.245320', '2', 'flight_admin', 1, '[{"added": {}}]', 3, 1),
(91, '2019-06-07 11:00:20.875412', '3', 'order_admin', 1, '[{"added": {}}]', 3, 1),
(92, '2019-06-07 11:02:35.706996', '4', 'flight_admin', 1, '[{"added": {}}]', 4, 1),
(93, '2019-06-07 11:02:53.301301', '4', 'flight_admin', 2, '[{"changed": {"fields": ["groups"]}}]', 4, 1),
(94, '2019-06-07 11:05:17.344577', '4', 'flight_admin', 2, '[{"changed": {"fields": ["password"]}}]', 4, 1),
(95, '2019-06-07 11:05:38.192108', '4', 'flight', 2, '[{"changed": {"fields": ["username"]}}]', 4, 1),
(96, '2019-06-07 11:08:17.339161', '4', 'flight', 2, '[{"changed": {"fields": ["is_staff"]}}]', 4, 1),
(97, '2019-06-07 11:09:03.497464', '5', 'order', 1, '[{"added": {}}]', 4, 1),
(98, '2019-06-07 11:09:14.467251', '5', 'order', 2, '[{"changed": {"fields": ["is_staff", "groups"]}}]', 4, 1),
(99, '2019-06-07 11:10:04.892424', '6', 'user', 1, '[{"added": {}}]', 4, 1),
(100, '2019-06-07 11:10:13.325376', '6', 'user', 2, '[{"changed": {"fields": ["is_staff", "groups"]}}]', 4, 1),
(101, '2019-06-07 11:10:51.224179', '1', 'admin', 2, '[{"changed": {"fields": ["is_superuser"]}}]', 4, 6),
(102, '2019-06-07 11:10:59.037467', '1', 'admin', 2, '[{"changed": {"fields": ["is_superuser"]}}]', 4, 6),
(103, '2019-06-07 11:10:59.738672', '1', 'admin', 2, '[]', 4, 6);

-- --------------------------------------------------------

--
-- 表的结构 `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'booksystem', 'flight'),
(8, 'booksystem', 'order'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- 表的结构 `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-06-06 09:07:39.092150'),
(2, 'auth', '0001_initial', '2019-06-06 09:07:39.805084'),
(3, 'admin', '0001_initial', '2019-06-06 09:07:42.747441'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-06-06 09:07:43.173639'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-06-06 09:07:43.212340'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-06-06 09:07:43.513288'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-06-06 09:07:43.701249'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-06-06 09:07:43.888133'),
(9, 'auth', '0004_alter_user_username_opts', '2019-06-06 09:07:43.917349'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-06-06 09:07:44.071758'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-06-06 09:07:44.092822'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-06-06 09:07:44.133560'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-06-06 09:07:44.329030'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-06-06 09:07:44.531416'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-06-06 09:07:44.748307'),
(16, 'auth', '0011_update_proxy_permissions', '2019-06-06 09:07:44.837043'),
(17, 'booksystem', '0001_initial', '2019-06-06 09:07:45.234348'),
(18, 'booksystem', '0002_auto_20170402_2346', '2019-06-06 09:07:45.791630'),
(19, 'booksystem', '0003_auto_20170403_1941', '2019-06-06 09:07:46.277158'),
(20, 'booksystem', '0004_auto_20170404_1205', '2019-06-06 09:07:47.521368'),
(21, 'booksystem', '0005_auto_20170404_1208', '2019-06-06 09:07:48.049406'),
(22, 'sessions', '0001_initial', '2019-06-06 09:07:48.170189'),
(23, 'booksystem', '0006_auto_20190606_0909', '2019-06-06 09:10:06.972270'),
(24, 'booksystem', '0007_auto_20190606_1052', '2019-06-06 10:52:24.499852'),
(25, 'booksystem', '0008_auto_20190606_1122', '2019-06-06 11:22:36.462620'),
(26, 'booksystem', '0009_auto_20190606_1151', '2019-06-06 11:51:10.636566'),
(27, 'booksystem', '0010_order_is_pay', '2019-06-06 17:18:35.726203'),
(28, 'booksystem', '0011_auto_20190606_2021', '2019-06-06 20:21:12.347228');

-- --------------------------------------------------------

--
-- 表的结构 `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('f1fyzq0dbjt6e90uqyxye9deykigglf6', 'NzQ0NTVlNjRmNjBiNmJhNGUxMmM3YjU5M2E5MzBhNTE1MzcxOTcwZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZWUyZTNiNjRhNDU5MzM2YTU4OTQ2NWE5MzRlMDc4MTc2YTlmMDU5In0=', '2019-06-25 17:40:11.286841'),
('nhvexzwzjrvj35u2lt11hw8bxapvpp5p', 'MDZmN2JmZTNlZTU3ZjU0Mzc1ZDg1MjE3YjBjMDhjYTE2N2RiOGNlNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOWFkMjc5N2VkYWFiYzQzODVlNzEzZDA4OWIyNjdkMjM5YjJhZWM3In0=', '2019-06-20 20:04:59.591836'),
('z7ya3doh3ni4b6yccovpdfzi28igcybz', 'MDZmN2JmZTNlZTU3ZjU0Mzc1ZDg1MjE3YjBjMDhjYTE2N2RiOGNlNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOWFkMjc5N2VkYWFiYzQzODVlNzEzZDA4OWIyNjdkMjM5YjJhZWM3In0=', '2019-06-21 10:02:00.149021'),
('zynou1h7wm1cofclqf6v0ftf7oytth1x', 'NmM5ZjM4MjRhYzYyMTcwYjIwOGYwMTZjOTEzYzViOTFlNWU4NzY0ZTp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MzJhNmM1YmYyNDVlNmY2YmIxMWEwOTljZjkwNzg0MWNjMjRiMWJhIn0=', '2019-06-21 11:10:30.151086');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `booksystem_flight`
--
ALTER TABLE `booksystem_flight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booksystem_flight_user`
--
ALTER TABLE `booksystem_flight_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booksystem_flight_user_flight_id_user_id_a90373fe_uniq` (`flight_id`,`user_id`),
  ADD KEY `booksystem_flight_user_user_id_2c47b21d_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `booksystem_order`
--
ALTER TABLE `booksystem_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booksystem_order_flight_id_e825a4d8_fk_booksystem_flight_id` (`flight_id`),
  ADD KEY `booksystem_order_user_id_baeb7b9d_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `booksystem_flight`
--
ALTER TABLE `booksystem_flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `booksystem_flight_user`
--
ALTER TABLE `booksystem_flight_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `booksystem_order`
--
ALTER TABLE `booksystem_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- 限制导出的表
--

--
-- 限制表 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 限制表 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 限制表 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `booksystem_flight_user`
--
ALTER TABLE `booksystem_flight_user`
  ADD CONSTRAINT `booksystem_flight_us_flight_id_3b27f016_fk_booksyste` FOREIGN KEY (`flight_id`) REFERENCES `booksystem_flight` (`id`),
  ADD CONSTRAINT `booksystem_flight_user_user_id_2c47b21d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `booksystem_order`
--
ALTER TABLE `booksystem_order`
  ADD CONSTRAINT `booksystem_order_flight_id_e825a4d8_fk_booksystem_flight_id` FOREIGN KEY (`flight_id`) REFERENCES `booksystem_flight` (`id`),
  ADD CONSTRAINT `booksystem_order_user_id_baeb7b9d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
