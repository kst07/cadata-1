-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 08, 2025 at 03:06 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caa1`
--
CREATE DATABASE IF NOT EXISTS `caa1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci;
USE `caa1`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add auth token', 8, 'add_authtoken'),
(30, 'Can change auth token', 8, 'change_authtoken'),
(31, 'Can delete auth token', 8, 'delete_authtoken'),
(32, 'Can view auth token', 8, 'view_authtoken'),
(33, 'Can add sale', 9, 'add_sale'),
(34, 'Can change sale', 9, 'change_sale'),
(35, 'Can delete sale', 9, 'delete_sale'),
(36, 'Can view sale', 9, 'view_sale'),
(37, 'Can add sale item', 10, 'add_saleitem'),
(38, 'Can change sale item', 10, 'change_saleitem'),
(39, 'Can delete sale item', 10, 'delete_saleitem'),
(40, 'Can view sale item', 10, 'view_saleitem');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_german2_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_german2_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_german2_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_german2_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_german2_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$k3NT6WY2Qw9J357OSoXttY$w/H9aPLEm44VDarU7p/vIVSxAXlk7BYuPPGZHRzRmdA=', NULL, 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2025-02-17 16:42:04.285102');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_german2_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_german2_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_german2_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_german2_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'knox', 'authtoken'),
(7, 'myapp', 'product'),
(9, 'myapp', 'sale'),
(10, 'myapp', 'saleitem'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-02-17 16:41:28.331451'),
(2, 'auth', '0001_initial', '2025-02-17 16:41:28.776949'),
(3, 'admin', '0001_initial', '2025-02-17 16:41:28.879824'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-02-17 16:41:28.886490'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-02-17 16:41:28.892836'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-02-17 16:41:28.951880'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-02-17 16:41:28.996340'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-02-17 16:41:29.023745'),
(9, 'auth', '0004_alter_user_username_opts', '2025-02-17 16:41:29.033039'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-02-17 16:41:29.085330'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-02-17 16:41:29.087510'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-02-17 16:41:29.095984'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-02-17 16:41:29.158759'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-02-17 16:41:29.231249'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-02-17 16:41:29.264480'),
(16, 'auth', '0011_update_proxy_permissions', '2025-02-17 16:41:29.274155'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-02-17 16:41:29.339612'),
(18, 'myapp', '0001_initial', '2025-02-17 16:41:29.367677'),
(19, 'sessions', '0001_initial', '2025-02-17 16:41:29.395092'),
(20, 'knox', '0001_initial', '2025-02-19 10:29:34.127645'),
(21, 'knox', '0002_auto_20150916_1425', '2025-02-19 10:29:34.272873'),
(22, 'knox', '0003_auto_20150916_1526', '2025-02-19 10:29:34.307312'),
(23, 'knox', '0004_authtoken_expires', '2025-02-19 10:29:34.328360'),
(24, 'knox', '0005_authtoken_token_key', '2025-02-19 10:29:34.357801'),
(25, 'knox', '0006_auto_20160818_0932', '2025-02-19 10:29:34.448722'),
(26, 'knox', '0007_auto_20190111_0542', '2025-02-19 10:29:34.476136'),
(27, 'knox', '0008_remove_authtoken_salt', '2025-02-19 10:29:34.523237'),
(28, 'knox', '0009_extend_authtoken_field', '2025-02-19 10:29:34.541362'),
(29, 'myapp', '0002_alter_product_category_alter_product_name_and_more', '2025-02-19 10:29:34.684813'),
(30, 'myapp', '0003_alter_product_category', '2025-02-19 10:52:49.335680'),
(31, 'myapp', '0004_product_type', '2025-02-19 13:07:18.264923'),
(32, 'myapp', '0005_alter_product_type', '2025-02-19 13:21:58.892220'),
(33, 'myapp', '0006_remove_sale_product_remove_sale_quantity_and_more', '2025-02-19 14:05:13.920719'),
(34, 'myapp', '0007_sale_product_sale_quantity_alter_sale_total_price_and_more', '2025-02-19 14:40:11.837812'),
(35, 'myapp', '0008_alter_sale_sale_date', '2025-02-24 07:21:03.048666');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_german2_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_german2_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knox_authtoken`
--

CREATE TABLE `knox_authtoken` (
  `digest` varchar(128) COLLATE utf8mb4_german2_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  `expiry` datetime(6) DEFAULT NULL,
  `token_key` varchar(25) COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Dumping data for table `knox_authtoken`
--

INSERT INTO `knox_authtoken` (`digest`, `created`, `user_id`, `expiry`, `token_key`) VALUES
('4f447443068d5a421e9a6231f992d6139a0678ae0f95a8091ff426e58d55e412ad53ae135dac757dbfd908dacc3273dbb428ba6c4c829f2ee0eb5b7bf7f7ce04', '2025-03-08 21:51:33.902885', 1, '2025-03-09 07:51:33.901868', '0727d183bc50ac3'),
('a28d1518784574bf0098d199f81c0cad23ea7f69b2497a9c70d7584cb2a1f9429d646df2f086a8e7179ac4760be4f4f337fd3e33232eb6241e34ca4ef19a693f', '2025-03-08 21:49:27.484126', 1, '2025-03-09 07:49:27.484126', '584da5da96ca9c2'),
('e51e205989e7d41c9d5289c0d464c8793d64dd66aea873d42935cb40e6d0cbc23d4155813de01defeac1e4121983cf3f0d54d9c298a508e538120583470d9664', '2025-03-08 21:50:23.252024', 1, '2025-03-09 07:50:23.251024', '9cfc28d567a965f');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_product`
--

CREATE TABLE `myapp_product` (
  `image` varchar(5000) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_german2_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_german2_ci NOT NULL
) ;

--
-- Dumping data for table `myapp_product`
--

INSERT INTO `myapp_product` (`image`, `id`, `name`, `category`, `price`, `stock`, `type`) VALUES
('https://www.aromathailand.com/wp-content/uploads/2023/09/Americano_pic3.jpeg', 2, 'อเมริกาโน่', 'coffee', '30.00', 36, 'iced'),
('https://static.amarintv.com/images/upload/editor/source/Gemmies_2/May2023/istock-1436430763.jpg', 3, 'โกโก้มินต์', 'cocoa', '35.00', 32, 'iced'),
('https://yalamarketplace.com/upload/1613804407251.jpg', 4, 'โกโก้', 'cocoa', '30.00', 22, 'iced'),
('https://static.thairath.co.th/media/dFQROr7oWzulq5Fa5KwHqswpF6HrszzIpkUEpwTrJyphDEIPgFXMbbUmLx8gc2MoRQ4.jpg', 5, 'ช็อกโกแลตมินต์', 'chocolate', '40.00', 46, 'iced'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR70foYcbEi1ivFiIHSiaqxj_su8GRGZQ16kg&s', 6, 'ช็อกโกแลต', 'chocolate', '30.00', 48, 'iced'),
('https://obs-ect.line-scdn.net/r/ect/ect/image_1690793324386220168b57a522t12039c5c', 7, 'นมสดน้ำผึ้ง', 'milk', '35.00', 49, 'iced'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyUOvtkTeeiM3kaZ9y65H5IKTqgZOF5gIOGQ&s', 8, 'นมสดสตรอว์เบอรี', 'milk', '45.00', 45, 'iced'),
('https://img.wongnai.com/p/400x0/2020/09/22/3aad8c7fe89f40b2bec80a6b5e404a76.jpg', 9, 'นมสดโอริโอ้', 'milk', '50.00', 45, 'blended'),
('https://www.aromathailand.com/wp-content/uploads/2023/04/Cover-Mocha-1080x675.jpg', 10, 'มอคค่า', 'coffee', '30.00', 50, 'iced'),
('https://1376delivery.com/productimages/1396_Iced%20Cappucino-%20().jpg', 11, 'คาปูชิโน่', 'coffee', '30.00', 48, 'iced'),
('https://yalamarketplace.com/upload/1675666063202.jpg', 12, 'เอสเปรสโซ่', 'coffee', '30.00', 49, 'iced'),
('https://obs-ect.line-scdn.net/r/ect/ect/cj1vMzUzbjBtMWplZ3Qmcz1qcDYmdD1tJnU9MWZ2YzRkOGc4M2RnMCZpPTA', 13, 'ลาเต้', 'coffee', '30.00', 50, 'iced'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJkHuuQNGt0aDy9pkxOjgW-8FLqbBa_02cHA&s', 14, 'อเมริกาโน่น้ำผึ้ง', 'coffee', '35.00', 45, 'iced'),
('https://obs-ect.line-scdn.net/r/ect/ect/cj0tMjFtcThrNjJwdmJhZyZzPWpwNiZ0PW0mdT0xZnY5NXZ1dGMzYTAwJmk9MA', 15, 'แบล็คคอฟฟี่', 'coffee', '30.00', 50, 'iced'),
('https://api2.krua.co/wp-content/uploads/2024/03/ArticlePic_1670x1095-15-3-scaled.jpg', 16, 'มัทฉะ', 'tea', '40.00', 48, 'iced'),
('https://s359.kapook.com/pagebuilder/aea20974-a1b8-44d5-be43-c018b6448758.jpg', 17, 'ชามะนาว', 'tea', '35.00', 48, 'iced'),
('https://obs-ect.line-scdn.net/r/ect/ect/cj01OGs5NjNrc2ZkZ2ptJnM9anA2JnQ9bSZ1PTFmdjZmOWR0YzRnMDAmaT0w', 18, 'ชาเขียวมะนาว', 'tea', '40.00', 49, 'iced'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiUiFaO4jaI9NnljNAuK3YB7UaYqOGeZmgqg&s', 19, 'ชาไทย', 'tea', '30.00', 50, 'iced'),
('https://static.cdntap.com/tap-assets-prod/wp-content/uploads/sites/25/2022/02/orange-cake-lead.jpg', 20, 'เค้กส้ม', 'bakery', '30.00', 23, 'blended'),
('https://static.cdntap.com/tap-assets-prod/wp-content/uploads/sites/25/2022/03/chocolate-cake002.jpg', 21, 'เค้กช็อกโกแลต', 'bakery', '35.00', 24, 'blended'),
('https://breadtimestories.com/wp-content/uploads/2021/01/S__5038121.jpg', 23, 'ครัวซองต์นมสด', 'bakery', '35.00', 23, 'blended'),
('https://susancroissant.com/wp-content/uploads/2021/02/chocolate-croissant-2.jpg', 24, 'ครัวซองต์ช็อกโกแลต', 'bakery', '35.00', 23, 'blended'),
('https://static.cdntap.com/tap-assets-prod/wp-content/uploads/sites/25/2022/02/cookie-lead.jpg', 25, 'คุกกี้', 'bakery', '25.00', 23, 'blended'),
('https://s359.kapook.com/pagebuilder/0de6b23a-c4d2-42a7-ab14-e1acb2b0dcda.jpg', 27, 'ทิรามิสุ', 'bakery', '35.00', 29, 'blended'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1Cn1oS837uek_pJKV9-pRLbJ65r77XjaGCw&s', 28, 'ชาพีช', 'tea', '45.00', 60, 'blended'),
('https://tecnogasthai.com/wp-content/uploads/2023/05/1_008-1.webp', 30, 'มาการอง', 'bakery', '40.00', 8, 'blended');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_sale`
--

CREATE TABLE `myapp_sale` (
  `id` bigint NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `sale_date` datetime(6) NOT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `myapp_sale`
--

INSERT INTO `myapp_sale` (`id`, `total_price`, `sale_date`, `product_id`, `quantity`) VALUES
(127, '30.00', '2023-12-14 10:51:40.375034', 20, 1),
(128, '50.00', '2025-02-27 11:35:08.165876', 9, 1),
(129, '30.00', '2025-02-27 11:35:50.698385', 10, 1),
(130, '30.00', '2025-02-27 11:50:16.204881', 2, 1),
(135, '30.00', '2025-02-28 10:13:44.930596', 2, 1),
(136, '30.00', '2025-02-28 10:14:21.305472', 2, 1),
(137, '35.00', '2025-02-28 10:14:21.310068', 3, 1),
(138, '35.00', '2025-02-28 10:14:41.700891', 3, 1),
(139, '30.00', '2025-02-28 10:14:41.705715', 2, 1),
(140, '35.00', '2025-02-28 10:15:03.783350', 17, 1),
(141, '30.00', '2025-02-28 10:15:31.551086', 11, 1),
(142, '30.00', '2025-02-28 10:15:31.555672', 12, 1),
(143, '35.00', '2025-02-28 10:15:31.560185', 14, 1),
(144, '35.00', '2025-02-28 10:15:31.563582', 17, 1),
(145, '30.00', '2025-02-28 10:15:47.050343', 20, 1),
(146, '35.00', '2025-02-28 10:15:47.055166', 21, 1),
(147, '30.00', '2025-02-28 10:16:24.744739', 20, 1),
(148, '35.00', '2025-02-28 10:16:24.761229', 21, 1),
(150, '30.00', '2025-02-28 10:17:22.040460', 20, 1),
(151, '35.00', '2025-02-28 10:17:22.045976', 21, 1),
(152, '30.00', '2025-02-28 10:28:53.305760', 20, 1),
(153, '30.00', '2025-02-28 10:28:57.046164', 20, 1),
(154, '35.00', '2025-02-28 10:29:10.726951', 3, 1),
(156, '35.00', '2025-02-28 10:37:59.529657', 3, 1),
(157, '30.00', '2025-02-28 10:37:59.534107', 2, 1),
(158, '30.00', '2025-02-28 10:38:12.960666', 4, 1),
(159, '35.00', '2025-02-28 10:47:22.158594', 3, 1),
(160, '30.00', '2025-02-28 10:47:22.165285', 2, 1),
(161, '30.00', '2025-02-28 10:47:22.178300', 4, 1),
(162, '25.00', '2025-02-28 10:47:35.418699', 25, 1),
(163, '30.00', '2025-02-28 10:47:35.437788', 4, 1),
(164, '30.00', '2025-02-28 10:47:45.221685', 2, 1),
(165, '35.00', '2025-02-28 10:47:45.237185', 3, 1),
(166, '30.00', '2025-02-28 10:47:45.257835', 4, 1),
(167, '30.00', '2025-02-28 10:47:51.736707', 2, 1),
(168, '35.00', '2025-02-28 10:47:51.741252', 3, 1),
(169, '30.00', '2025-02-28 10:49:12.113539', 4, 1),
(170, '25.00', '2025-02-28 10:49:23.129744', 25, 1),
(171, '35.00', '2025-02-28 10:49:23.132747', 24, 1),
(172, '35.00', '2025-02-28 10:49:41.719914', 24, 1),
(173, '25.00', '2025-02-28 10:49:41.724913', 25, 1),
(174, '30.00', '2025-02-28 10:53:40.559689', 4, 1),
(175, '30.00', '2025-02-28 11:00:26.611770', 4, 1),
(176, '35.00', '2025-02-28 11:01:19.007546', 21, 1),
(177, '30.00', '2025-02-28 11:01:19.013025', 4, 1),
(178, '35.00', '2025-02-28 11:01:19.016536', 3, 1),
(179, '30.00', '2025-02-28 11:06:23.499720', 4, 1),
(180, '35.00', '2025-02-28 11:06:23.511289', 3, 1),
(181, '30.00', '2025-02-28 11:33:21.430275', 4, 1),
(182, '30.00', '2025-02-28 12:40:22.966878', 2, 1),
(183, '35.00', '2025-02-28 12:41:52.814110', 3, 1),
(184, '120.00', '2025-02-28 16:58:31.011862', 4, 4),
(185, '70.00', '2025-02-28 22:22:47.749570', 3, 2),
(186, '35.00', '2025-03-01 10:43:19.553786', 3, 1),
(187, '30.00', '2025-03-01 20:05:42.461339', 2, 1),
(188, '30.00', '2025-03-02 02:49:59.781587', 2, 1),
(189, '35.00', '2025-03-02 02:49:59.788366', 3, 1),
(190, '35.00', '2025-03-02 13:24:42.426969', 3, 1),
(191, '30.00', '2025-03-02 13:24:42.446161', 4, 1),
(192, '35.00', '2025-03-02 13:26:15.114515', 3, 1),
(193, '30.00', '2025-03-02 13:26:15.120554', 4, 1),
(194, '35.00', '2025-03-02 18:09:07.308003', 3, 1),
(195, '35.00', '2025-03-02 18:09:07.324117', 21, 1),
(196, '35.00', '2025-03-02 18:09:07.338499', 24, 1),
(197, '40.00', '2025-03-02 19:11:45.961925', 16, 1),
(198, '30.00', '2025-03-02 20:14:30.041291', 2, 1),
(199, '30.00', '2025-03-02 20:47:41.006598', 2, 1),
(200, '30.00', '2025-03-02 20:47:55.472347', 4, 1),
(201, '35.00', '2025-03-02 20:47:55.489374', 3, 1),
(202, '35.00', '2025-03-02 20:50:38.906704', 3, 1),
(203, '35.00', '2025-03-02 21:24:27.474869', 24, 1),
(204, '30.00', '2025-03-02 21:26:19.340954', 4, 1),
(205, '30.00', '2025-03-03 15:31:27.481639', 2, 1),
(206, '35.00', '2025-03-03 15:58:59.941844', 3, 1),
(207, '35.00', '2025-03-03 16:00:45.021211', 7, 1),
(208, '25.00', '2025-03-03 16:02:52.585472', 25, 1),
(209, '35.00', '2025-03-03 16:02:52.594560', 23, 1),
(210, '35.00', '2025-03-03 16:02:52.603110', 14, 1),
(211, '35.00', '2025-03-03 16:10:33.836508', 3, 1),
(212, '30.00', '2025-03-03 18:43:17.459625', 4, 1),
(213, '30.00', '2025-03-03 19:23:23.108139', 4, 1),
(214, '30.00', '2025-03-03 19:25:47.396329', 4, 1),
(215, '30.00', '2025-03-03 19:27:06.189628', 4, 1),
(216, '35.00', '2025-03-03 19:27:25.636868', 3, 1),
(217, '30.00', '2025-03-03 20:58:58.007201', 4, 1),
(218, '30.00', '2025-03-03 22:21:20.570325', 6, 1),
(220, '30.00', '2025-03-04 08:27:26.363432', 2, 1),
(221, '30.00', '2025-03-04 08:46:08.730326', 2, 1),
(222, '30.00', '2025-03-04 08:55:50.668402', 4, 1),
(223, '30.00', '2025-03-04 16:03:38.071328', 2, 1),
(224, '60.00', '2025-03-04 09:59:49.224990', 20, 2),
(225, '35.00', '2025-03-04 09:59:49.231624', 21, 1),
(226, '35.00', '2025-03-04 09:59:49.238889', 23, 1),
(227, '35.00', '2025-03-04 09:59:49.245474', 24, 1),
(228, '40.00', '2025-03-04 09:59:49.251773', 5, 1),
(229, '40.00', '2025-03-04 09:59:49.252499', 18, 1),
(230, '100.00', '2025-03-04 09:59:49.259600', 9, 2),
(231, '45.00', '2025-03-04 09:59:49.266499', 8, 1),
(233, '75.00', '2025-03-04 09:59:49.280414', 25, 3),
(235, '30.00', '2025-03-04 15:40:37.772424', 6, 1),
(236, '50.00', '2025-03-04 15:40:37.784087', 9, 1),
(238, '35.00', '2025-03-04 15:40:37.810971', 23, 1),
(239, '30.00', '2025-03-04 15:46:38.493848', 11, 1),
(240, '35.00', '2025-03-04 15:46:38.516655', 3, 1),
(241, '40.00', '2025-03-04 15:46:38.529603', 16, 1),
(242, '50.00', '2025-03-04 15:46:38.542429', 9, 1),
(245, '30.00', '2025-03-04 15:51:47.651026', 4, 1),
(246, '35.00', '2025-03-04 15:54:35.770607', 3, 1),
(247, '60.00', '2025-03-06 18:47:37.222506', 2, 2),
(248, '70.00', '2025-03-06 18:47:37.230537', 3, 2),
(249, '30.00', '2025-03-06 18:48:47.361897', 4, 1),
(250, '30.00', '2025-03-06 18:49:06.542575', 2, 1),
(251, '35.00', '2025-03-06 18:49:06.549693', 3, 1),
(252, '120.00', '2025-03-06 18:56:09.351062', 27, 3),
(253, '70.00', '2025-03-06 18:56:09.362420', 23, 2),
(254, '70.00', '2025-03-06 18:56:09.372369', 24, 2),
(255, '90.00', '2025-03-06 18:56:09.381786', 2, 3),
(256, '35.00', '2025-03-06 18:57:25.076424', 3, 1),
(257, '120.00', '2025-03-06 19:29:04.869888', 5, 3),
(258, '180.00', '2025-03-06 19:29:04.877849', 8, 4),
(259, '70.00', '2025-03-06 19:29:04.887840', 23, 2),
(260, '80.00', '2025-03-08 21:53:31.924163', 30, 2),
(261, '35.00', '2025-03-08 21:53:31.928153', 27, 1),
(262, '105.00', '2025-03-08 21:53:31.931951', 14, 3),
(263, '30.00', '2025-03-08 21:54:52.070362', 4, 1);

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
-- Indexes for table `knox_authtoken`
--
ALTER TABLE `knox_authtoken`
  ADD PRIMARY KEY (`digest`),
  ADD KEY `knox_authtoken_user_id_e5a5d899_fk_auth_user_id` (`user_id`),
  ADD KEY `knox_authtoken_token_key_8f4f7d47` (`token_key`);

--
-- Indexes for table `myapp_product`
--
ALTER TABLE `myapp_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `myapp_sale`
--
ALTER TABLE `myapp_sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_sale_product_id_9e6fc391_fk_myapp_product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `myapp_product`
--
ALTER TABLE `myapp_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myapp_sale`
--
ALTER TABLE `myapp_sale`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `knox_authtoken`
--
ALTER TABLE `knox_authtoken`
  ADD CONSTRAINT `knox_authtoken_user_id_e5a5d899_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `myapp_sale`
--
ALTER TABLE `myapp_sale`
  ADD CONSTRAINT `myapp_sale_product_id_9e6fc391_fk_myapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `myapp_product` (`id`);
--
-- Database: `cadata`
--
CREATE DATABASE IF NOT EXISTS `cadata` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci;
USE `cadata`;

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) COLLATE utf8mb4_german2_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add blacklisted token', 7, 'add_blacklistedtoken'),
(26, 'Can change blacklisted token', 7, 'change_blacklistedtoken'),
(27, 'Can delete blacklisted token', 7, 'delete_blacklistedtoken'),
(28, 'Can view blacklisted token', 7, 'view_blacklistedtoken'),
(29, 'Can add outstanding token', 8, 'add_outstandingtoken'),
(30, 'Can change outstanding token', 8, 'change_outstandingtoken'),
(31, 'Can delete outstanding token', 8, 'delete_outstandingtoken'),
(32, 'Can view outstanding token', 8, 'view_outstandingtoken'),
(33, 'Can add auth token', 9, 'add_authtoken'),
(34, 'Can change auth token', 9, 'change_authtoken'),
(35, 'Can delete auth token', 9, 'delete_authtoken'),
(36, 'Can view auth token', 9, 'view_authtoken'),
(37, 'Can add daily customer count', 10, 'add_dailycustomercount'),
(38, 'Can change daily customer count', 10, 'change_dailycustomercount'),
(39, 'Can delete daily customer count', 10, 'delete_dailycustomercount'),
(40, 'Can view daily customer count', 10, 'view_dailycustomercount'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add product', 12, 'add_product'),
(46, 'Can change product', 12, 'change_product'),
(47, 'Can delete product', 12, 'delete_product'),
(48, 'Can view product', 12, 'view_product'),
(49, 'Can add order item', 13, 'add_orderitem'),
(50, 'Can change order item', 13, 'change_orderitem'),
(51, 'Can delete order item', 13, 'delete_orderitem'),
(52, 'Can view order item', 13, 'view_orderitem'),
(53, 'Can add Token', 14, 'add_token'),
(54, 'Can change Token', 14, 'change_token'),
(55, 'Can delete Token', 14, 'delete_token'),
(56, 'Can view Token', 14, 'view_token'),
(57, 'Can add Token', 15, 'add_tokenproxy'),
(58, 'Can change Token', 15, 'change_tokenproxy'),
(59, 'Can delete Token', 15, 'delete_tokenproxy'),
(60, 'Can view Token', 15, 'view_tokenproxy'),
(61, 'Can add payment', 16, 'add_payment'),
(62, 'Can change payment', 16, 'change_payment'),
(63, 'Can delete payment', 16, 'delete_payment'),
(64, 'Can view payment', 16, 'view_payment'),
(65, 'Can add sale', 17, 'add_sale'),
(66, 'Can change sale', 17, 'change_sale'),
(67, 'Can delete sale', 17, 'delete_sale'),
(68, 'Can view sale', 17, 'view_sale');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_german2_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_german2_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_german2_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_german2_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_german2_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$86w3lCIDQRUposMS6JUgrf$42FYyf9Jb0n8aleDWPKHaMKvtA6LfCvqaBpdjP/GrqI=', '2025-02-13 03:59:23.650963', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2025-02-05 15:22:06.729419');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_german2_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_german2_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_german2_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_german2_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(14, 'authtoken', 'token'),
(15, 'authtoken', 'tokenproxy'),
(5, 'contenttypes', 'contenttype'),
(9, 'knox', 'authtoken'),
(10, 'myapp', 'dailycustomercount'),
(11, 'myapp', 'order'),
(13, 'myapp', 'orderitem'),
(16, 'myapp', 'payment'),
(12, 'myapp', 'product'),
(17, 'myapp', 'sale'),
(6, 'sessions', 'session'),
(7, 'token_blacklist', 'blacklistedtoken'),
(8, 'token_blacklist', 'outstandingtoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-02-05 15:21:36.630623'),
(2, 'auth', '0001_initial', '2025-02-05 15:21:37.031621'),
(3, 'admin', '0001_initial', '2025-02-05 15:21:37.134225'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-02-05 15:21:37.141808'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-02-05 15:21:37.148509'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-02-05 15:21:37.208035'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-02-05 15:21:37.254005'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-02-05 15:21:37.275962'),
(9, 'auth', '0004_alter_user_username_opts', '2025-02-05 15:21:37.282288'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-02-05 15:21:37.327081'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-02-05 15:21:37.329285'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-02-05 15:21:37.334425'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-02-05 15:21:37.387281'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-02-05 15:21:37.426374'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-02-05 15:21:37.444127'),
(16, 'auth', '0011_update_proxy_permissions', '2025-02-05 15:21:37.451640'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-02-05 15:21:37.496780'),
(18, 'authtoken', '0001_initial', '2025-02-05 15:21:37.560523'),
(19, 'authtoken', '0002_auto_20160226_1747', '2025-02-05 15:21:37.580550'),
(20, 'authtoken', '0003_tokenproxy', '2025-02-05 15:21:37.582671'),
(21, 'authtoken', '0004_alter_tokenproxy_options', '2025-02-05 15:21:37.587185'),
(22, 'knox', '0001_initial', '2025-02-05 15:21:37.645816'),
(23, 'knox', '0002_auto_20150916_1425', '2025-02-05 15:21:37.716010'),
(24, 'knox', '0003_auto_20150916_1526', '2025-02-05 15:21:37.733548'),
(25, 'knox', '0004_authtoken_expires', '2025-02-05 15:21:37.772581'),
(26, 'knox', '0005_authtoken_token_key', '2025-02-05 15:21:37.797930'),
(27, 'knox', '0006_auto_20160818_0932', '2025-02-05 15:21:37.851407'),
(28, 'knox', '0007_auto_20190111_0542', '2025-02-05 15:21:37.864996'),
(29, 'knox', '0008_remove_authtoken_salt', '2025-02-05 15:21:37.903500'),
(30, 'knox', '0009_extend_authtoken_field', '2025-02-05 15:21:37.915892'),
(31, 'myapp', '0001_initial', '2025-02-05 15:21:38.065769'),
(32, 'sessions', '0001_initial', '2025-02-05 15:21:38.094501'),
(33, 'token_blacklist', '0001_initial', '2025-02-05 15:21:38.209405'),
(34, 'token_blacklist', '0002_outstandingtoken_jti_hex', '2025-02-05 15:21:38.230420'),
(35, 'token_blacklist', '0003_auto_20171017_2007', '2025-02-05 15:21:38.242201'),
(36, 'token_blacklist', '0004_auto_20171017_2013', '2025-02-05 15:21:38.296043'),
(37, 'token_blacklist', '0005_remove_outstandingtoken_jti', '2025-02-05 15:21:38.339229'),
(38, 'token_blacklist', '0006_auto_20171017_2113', '2025-02-05 15:21:38.358025'),
(39, 'token_blacklist', '0007_auto_20171017_2214', '2025-02-05 15:21:38.499613'),
(40, 'token_blacklist', '0008_migrate_to_bigautofield', '2025-02-05 15:21:38.654218'),
(41, 'token_blacklist', '0010_fix_migrate_to_bigautofield', '2025-02-05 15:21:38.664771'),
(42, 'token_blacklist', '0011_linearizes_history', '2025-02-05 15:21:38.667107'),
(43, 'token_blacklist', '0012_alter_outstandingtoken_user', '2025-02-05 15:21:38.675737'),
(44, 'myapp', '0002_alter_product_category', '2025-02-06 04:19:33.737878'),
(45, 'myapp', '0003_orderitem_price_alter_orderitem_product', '2025-02-09 15:39:26.426061'),
(46, 'myapp', '0004_payment', '2025-02-16 12:51:01.234712'),
(47, 'myapp', '0005_sale_delete_dailycustomercount_and_more', '2025-02-24 18:22:45.940959');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_german2_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_german2_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('qb2d4cnzy07j4jx6mpr3wqgg4itijbn4', '.eJxVjEEOwiAQRe_C2pCBFhhcuvcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnEWSpx-t0jpkdsO-E7tNss0t3WZotwVedAurzPn5-Vw_w4q9fqtEytw5BmMQpsdRMQykhm1t4MuViOSLpFAW4ueUgLHlgdTGKEQpyjeH9EYOAU:1tiQNn:sLpoRZq2nJSehICBwTCGuRECRr45CSKBUR1KhBMCzr0', '2025-02-27 03:59:23.656473');

-- --------------------------------------------------------

--
-- Table structure for table `knox_authtoken`
--

CREATE TABLE `knox_authtoken` (
  `digest` varchar(128) COLLATE utf8mb4_german2_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  `expiry` datetime(6) DEFAULT NULL,
  `token_key` varchar(25) COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myapp_product`
--

CREATE TABLE `myapp_product` (
  `image` varchar(5000) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_german2_ci NOT NULL,
  `category` varchar(10) COLLATE utf8mb4_german2_ci NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `stock` int UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `myapp_product`
--

INSERT INTO `myapp_product` (`image`, `id`, `name`, `category`, `price`, `stock`) VALUES
('https://www.aromathailand.com/wp-content/uploads/2023/09/Americano_pic3.jpeg', 1, 'อเมริกาโน่', 'coffee', '40.00', 50),
('https://static.amarintv.com/images/upload/editor/source/Gemmies_2/May2023/istock-1436430763.jpg', 2, 'โกโก้มินต์', 'cocoa', '45.00', 50),
('https://yalamarketplace.com/upload/1613804407251.jpg', 3, 'โกโก้', 'cocoa', '30.00', 50),
('https://static.thairath.co.th/media/dFQROr7oWzulq5Fa5KwHqswpF6HrszzIpkUEpwTrJyphDEIPgFXMbbUmLx8gc2MoRQ4.jpg', 4, 'ช็อกโกแลตมินต์', 'chocolate', '40.00', 50),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR70foYcbEi1ivFiIHSiaqxj_su8GRGZQ16kg&s', 5, 'ช็อกโกแลต', 'chocolate', '30.00', 50),
('https://obs-ect.line-scdn.net/r/ect/ect/image_1690793324386220168b57a522t12039c5c', 6, 'นมสดน้ำผึ้ง', 'milk', '40.00', 50),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyUOvtkTeeiM3kaZ9y65H5IKTqgZOF5gIOGQ&s', 7, 'นมสดสตรอว์เบอรี', 'milk', '45.00', 50),
('https://img.wongnai.com/p/400x0/2020/09/22/3aad8c7fe89f40b2bec80a6b5e404a76.jpg', 8, 'นมสดโอริโอ้', 'milk', '45.00', 50),
('https://www.aromathailand.com/wp-content/uploads/2023/04/Cover-Mocha-1080x675.jpg', 9, 'มอคค่า', 'coffee', '35.00', 50),
('https://1376delivery.com/productimages/1396_Iced%20Cappucino-%20().jpg', 10, 'คาปูชิโน่', 'coffee', '30.00', 50),
('https://yalamarketplace.com/upload/1675666063202.jpg', 11, 'เอสเปรสโซ่', 'coffee', '30.00', 50),
('https://obs-ect.line-scdn.net/r/ect/ect/cj1vMzUzbjBtMWplZ3Qmcz1qcDYmdD1tJnU9MWZ2YzRkOGc4M2RnMCZpPTA', 12, 'ลาเต้', 'coffee', '30.00', 50),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJkHuuQNGt0aDy9pkxOjgW-8FLqbBa_02cHA&s', 13, 'อเมริกาโน่น้ำผึ้ง', 'coffee', '35.00', 50),
('https://obs-ect.line-scdn.net/r/ect/ect/cj0tMjFtcThrNjJwdmJhZyZzPWpwNiZ0PW0mdT0xZnY5NXZ1dGMzYTAwJmk9MA', 14, 'แบล็คคอฟฟี่', 'chocolate', '30.00', 50),
('https://api2.krua.co/wp-content/uploads/2024/03/ArticlePic_1670x1095-15-3-scaled.jpg', 15, 'มัทฉะ', 'tea', '35.00', 50),
('https://s359.kapook.com/pagebuilder/aea20974-a1b8-44d5-be43-c018b6448758.jpg', 16, 'ชามะนาว', 'tea', '30.00', 50),
('https://obs-ect.line-scdn.net/r/ect/ect/cj01OGs5NjNrc2ZkZ2ptJnM9anA2JnQ9bSZ1PTFmdjZmOWR0YzRnMDAmaT0w', 17, 'ชาเขียวมะนาว', 'tea', '40.00', 50),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiUiFaO4jaI9NnljNAuK3YB7UaYqOGeZmgqg&s', 18, 'ชาไทย', 'tea', '30.00', 50),
('https://static.cdntap.com/tap-assets-prod/wp-content/uploads/sites/25/2022/02/orange-cake-lead.jpg', 19, 'เค้กส้ม', 'bakery', '30.00', 20),
('https://static.cdntap.com/tap-assets-prod/wp-content/uploads/sites/25/2022/03/chocolate-cake002.jpg', 20, 'เค้กช็อกโกแลต', 'bakery', '30.00', 20),
('https://www.pholfoodmafia.com/wp-content/uploads/2018/05/8GlutenFreeBrownie_big.jpg', 21, 'บราวนี่', 'bakery', '20.00', 20),
('https://breadtimestories.com/wp-content/uploads/2021/01/S__5038121.jpg', 22, 'ครัวซองต์นมสด', 'bakery', '35.00', 10),
('https://susancroissant.com/wp-content/uploads/2021/02/chocolate-croissant-2.jpg', 23, 'ครัวซองต์ช็อกโกแลต', 'bakery', '35.00', 10),
('https://static.cdntap.com/tap-assets-prod/wp-content/uploads/sites/25/2022/02/cookie-lead.jpg', 24, 'คุกกี้', 'bakery', '20.00', 10);

-- --------------------------------------------------------

--
-- Table structure for table `myapp_sale`
--

CREATE TABLE `myapp_sale` (
  `id` bigint NOT NULL,
  `quantity` int UNSIGNED NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `sale_date` datetime(6) NOT NULL,
  `product_id` int DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint NOT NULL,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint NOT NULL,
  `token` longtext COLLATE utf8mb4_german2_ci NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` int DEFAULT NULL,
  `jti` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

INSERT INTO `token_blacklist_outstandingtoken` (`id`, `token`, `created_at`, `expires_at`, `user_id`, `jti`) VALUES
(1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczODg1NTM3MCwiaWF0IjoxNzM4NzY4OTcwLCJqdGkiOiJiZDU3M2Q2OWUzNGY0OTNkYjhjNmQxZjU1NjM2ZWQ1YiIsInVzZXJfaWQiOjF9.ojNNTH8NFcbFhV7pG1Nawd8iqBERcJYqQvb5WLc8zRs', '2025-02-05 15:22:50.245997', '2025-02-06 15:22:50.000000', 1, 'bd573d69e34f493db8c6d1f55636ed5b'),
(2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczODkwOTA4MSwiaWF0IjoxNzM4ODIyNjgxLCJqdGkiOiIxMWMzNjFlZmNkMGQ0ZjI1YmRiODE3NzI3YjUyYWFmYSIsInVzZXJfaWQiOjF9.shbBjcMx0ticuz0fOD0_cOA22teWC4pxo81QEhEZas4', '2025-02-06 06:18:01.156123', '2025-02-07 06:18:01.000000', 1, '11c361efcd0d4f25bdb817727b52aafa'),
(3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczODkzMjAwNiwiaWF0IjoxNzM4ODQ1NjA2LCJqdGkiOiI0MDhkZjQ1ZWU5YmE0OGQ1ODAzMTRmNDgxMzkzZTJkMCIsInVzZXJfaWQiOjF9.MCYrUzYH1Edwzl1LCF5r5AMHru5QIsiF4r2_C6J9EuU', '2025-02-06 12:40:06.921388', '2025-02-07 12:40:06.000000', 1, '408df45ee9ba48d580314f481393e2d0'),
(4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczODk4MzY0MywiaWF0IjoxNzM4ODk3MjQzLCJqdGkiOiIxNTBkMzVjZjFlMDQ0MGY4OWI2NmU3YTZmNzE3OWMzMSIsInVzZXJfaWQiOjF9.0dW86ZCf5mRqCFhwsmAF8EMa1KwybtpG17E6bJpPiXY', '2025-02-07 03:00:43.034455', '2025-02-08 03:00:43.000000', 1, '150d35cf1e0440f89b66e7a6f7179c31'),
(5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTIwMjQ0MywiaWF0IjoxNzM5MTE2MDQzLCJqdGkiOiI5ZmUzOTExMTQwNWY0ZDQ1YWNhOWMyYzE0ZGM3MzkxOCIsInVzZXJfaWQiOjF9.pHCfI6hHb3oV4ZT3nabnxCp6tAEAS0YQAwTk_SpjohE', '2025-02-09 15:47:23.757146', '2025-02-10 15:47:23.000000', 1, '9fe39111405f4d45aca9c2c14dc73918'),
(6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTIwNTg3MiwiaWF0IjoxNzM5MTE5NDcyLCJqdGkiOiI3MTU3YmQwMGE4NjI0ZWJkOGQzZTliYjI5OThhZTU0ZiIsInVzZXJfaWQiOjF9.NTT4Qo3uzimPiFI69YMkZhvixfNseqtGXjfISBs31HY', '2025-02-09 16:44:32.759530', '2025-02-10 16:44:32.000000', 1, '7157bd00a8624ebd8d3e9bb2998ae54f'),
(7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTIwNjE2NiwiaWF0IjoxNzM5MTE5NzY2LCJqdGkiOiI0ZjVjYWE4OTJjMDM0YWRlOTZmOGZjYmJhYTY3Mzc3MCIsInVzZXJfaWQiOjF9.Jh4vXmNiP_s2hLakXS88cPFEBIimo1X5at9hv4U3Aj0', '2025-02-09 16:49:26.146708', '2025-02-10 16:49:26.000000', 1, '4f5caa892c034ade96f8fcbbaa673770'),
(8, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTIzNzk0NCwiaWF0IjoxNzM5MTUxNTQ0LCJqdGkiOiIzNWQ3ZTU4Y2E5MDQ0ZGRhODQ5M2Q4N2I5ZGUwMjljMiIsInVzZXJfaWQiOjF9.PykZ6hEMYlON1JEF4UtAnmSyHnW1BxjqoZXDJeIgP90', '2025-02-10 01:39:04.996718', '2025-02-11 01:39:04.000000', 1, '35d7e58ca9044dda8493d87b9de029c2'),
(9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTI0ODU0OSwiaWF0IjoxNzM5MTYyMTQ5LCJqdGkiOiJiOGM4YjU1MDc3MzM0NTBjOTNjM2VjMWVlYzUwMzA0MyIsInVzZXJfaWQiOjF9.aoj7OKiJFLQ6b82NdcciMMKYFZI_jFuVwY63wcR_RWc', '2025-02-10 04:35:49.104519', '2025-02-11 04:35:49.000000', 1, 'b8c8b5507733450c93c3ec1eec503043'),
(10, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTQ2MTYwMSwiaWF0IjoxNzM5Mzc1MjAxLCJqdGkiOiIwMzEwNWU5MDZlYjY0MzMwODc4YWRhZGY1MzYwYTg0NyIsInVzZXJfaWQiOjF9.b-tqSJ-EZBgyTSiZuz8C9S_52fPyXAEzR5gCvlCHtcY', '2025-02-12 15:46:41.124346', '2025-02-13 15:46:41.000000', 1, '03105e906eb64330878adadf5360a847'),
(11, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTUwNDczOCwiaWF0IjoxNzM5NDE4MzM4LCJqdGkiOiJkMDM0YTMyNTg1Nzc0YTZkOTYyYmU3YzhkMjljZDQ3YyIsInVzZXJfaWQiOjF9.cgsVT9iZLx2ZkCAvNhuSYMiGEAhFG1AbyLacpaxONJo', '2025-02-13 03:45:38.000627', '2025-02-14 03:45:38.000000', 1, 'd034a32585774a6d962be7c8d29cd47c'),
(12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTUwNDkyMCwiaWF0IjoxNzM5NDE4NTIwLCJqdGkiOiJhZWI0MjMxODU3MjE0ZDM3OTUwYjZmYTU0ODU2OGNhZSIsInVzZXJfaWQiOjF9.VV6-UM3acYpYQNLmFRfyLiaIDZiRLhs1ISW5CE4Kd0k', '2025-02-13 03:48:40.549089', '2025-02-14 03:48:40.000000', 1, 'aeb4231857214d37950b6fa548568cae'),
(13, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTUwNTA5OCwiaWF0IjoxNzM5NDE4Njk4LCJqdGkiOiI1NWI0M2Y2OWZhMjg0MDA0YjgxMGNhMDBjMDZiODI1MyIsInVzZXJfaWQiOjF9.Al_R7zkflWaiXHHKqBlyuGZlgiJAPYKfBTu4pjpUlvc', '2025-02-13 03:51:38.384731', '2025-02-14 03:51:38.000000', 1, '55b43f69fa284004b810ca00c06b8253'),
(14, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTUwNTQ0MywiaWF0IjoxNzM5NDE5MDQzLCJqdGkiOiIwNWVkYTViZGYwZTU0MzcxODRkYWJmYzJhMDdhN2VhYyIsInVzZXJfaWQiOjF9.c3sWrWZEXsBlklDyMxjsRIxfB42Q9d0P4zngydRjMh8', '2025-02-13 03:57:23.095684', '2025-02-14 03:57:23.000000', 1, '05eda5bdf0e5437184dabfc2a07a7eac'),
(15, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTUwNzA3NywiaWF0IjoxNzM5NDIwNjc3LCJqdGkiOiIwMGEwNjdhMDQ1ZGI0MGI5YTQwYzNmNTg4ZDg5Y2JhNyIsInVzZXJfaWQiOjF9.SnTxZsxusysViO-A24N4G41QGR9VxaGTTxLeLKuGD5s', '2025-02-13 04:24:37.742802', '2025-02-14 04:24:37.000000', 1, '00a067a045db40b9a40c3f588d89cba7'),
(16, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTc1OTAwMCwiaWF0IjoxNzM5NjcyNjAwLCJqdGkiOiI3ZGM1ZDllNWViYjU0ZWE4YTE2YzZhYzZmZjc3OGEwMiIsInVzZXJfaWQiOjF9.WueyIX6xcqMLJVqYTFyVEj7J_n4YuJjCB9AAa29jmsY', '2025-02-16 02:23:20.003107', '2025-02-17 02:23:20.000000', 1, '7dc5d9e5ebb54ea8a16c6ac6ff778a02'),
(17, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTc4MzMxOCwiaWF0IjoxNzM5Njk2OTE4LCJqdGkiOiIxMmZkMGI0ZjdkZWY0ZTBkOWZkMDQ1NTg5NGQ5NjQyMyIsInVzZXJfaWQiOjF9.xfpKKBC06ZqA_JeJ_DHivSLWgDqDR7-jJFSdA3UM_pw', '2025-02-16 09:08:38.248647', '2025-02-17 09:08:38.000000', 1, '12fd0b4f7def4e0d9fd0455894d96423'),
(18, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTg2MDA5NiwiaWF0IjoxNzM5NzczNjk2LCJqdGkiOiIzYmVkOTQ3Y2RjZDE0NTMwOWUxYjFkNjRkZTFhOGRkNiIsInVzZXJfaWQiOjF9.KsAfUrsasNz_PzYYAke5svXyZCIMvJVYyPTRgSx7538', '2025-02-17 06:28:16.926738', '2025-02-18 06:28:16.000000', 1, '3bed947cdcd145309e1b1d64de1a8dd6'),
(19, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTg2MDE1NywiaWF0IjoxNzM5NzczNzU3LCJqdGkiOiI0NTRjOTYzNzZkYzA0NmQ5ODIyZDI2MGZhYTcwM2RhYiIsInVzZXJfaWQiOjF9.4xD_LAllmXDkZ-SZ4Xiw4HDGhcqM3dxFBtSyub5qYTs', '2025-02-17 06:29:17.054508', '2025-02-18 06:29:17.000000', 1, '454c96376dc046d9822d260faa703dab'),
(20, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTg2MDU4NSwiaWF0IjoxNzM5Nzc0MTg1LCJqdGkiOiI3MDE2OWUxNjY4Mzg0OGU1YTA2ZGRjZmU2OWQ4NTMwMyIsInVzZXJfaWQiOjF9.bNi5GuDqjKWG5dG5uQrs_dRKE5fMUgqjPVvF5GNVKpE', '2025-02-17 06:36:25.394076', '2025-02-18 06:36:25.000000', 1, '70169e16683848e5a06ddcfe69d85303'),
(21, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTg5NDc3MiwiaWF0IjoxNzM5ODA4MzcyLCJqdGkiOiJlZGZmMWE4NTI1ZjM0MzIzYjgxNmE4ZGNmZGIxYWQ4NiIsInVzZXJfaWQiOjF9.08GnJleeLjuF-0we_eUYvfKpCRZAQW2_BcV1hIlTZBo', '2025-02-17 16:06:12.779073', '2025-02-18 16:06:12.000000', 1, 'edff1a8525f34323b816a8dcfdb1ad86'),
(22, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTkzNjU5NiwiaWF0IjoxNzM5ODUwMTk2LCJqdGkiOiI3ZmQxMzg5ODE1MTQ0NWYxOWQ3OTkwYWU3NzFhMjJiZSIsInVzZXJfaWQiOjF9.D1pBQFPdyIZOS5iw1DD_Wc7B3Giam1p_HLJyOlAyZrA', '2025-02-18 03:43:16.145507', '2025-02-19 03:43:16.000000', 1, '7fd13898151445f19d7990ae771a22be'),
(23, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTkzNjc0MCwiaWF0IjoxNzM5ODUwMzQwLCJqdGkiOiI4NDNhNmFhNjk4NWU0NzIzODZkZDlmNjcxNjBhY2U3NSIsInVzZXJfaWQiOjF9.g78_O4D7hNI2PY9Yfn5IX4Uk5rsk_li7M0bV_0cNP2c', '2025-02-18 03:45:40.350932', '2025-02-19 03:45:40.000000', 1, '843a6aa6985e472386dd9f67160ace75'),
(24, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTkzNjc4MSwiaWF0IjoxNzM5ODUwMzgxLCJqdGkiOiJkYTBmYmQ3NjUzMjM0YWIwYmQyZjZlNDBiMWNhODY1ZCIsInVzZXJfaWQiOjF9.e7Bd3kwgeJwYPQVJBD01-hRF7GzVDEeqFF2nXMubhbE', '2025-02-18 03:46:21.238787', '2025-02-19 03:46:21.000000', 1, 'da0fbd7653234ab0bd2f6e40b1ca865d'),
(25, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczOTkzNjgwNywiaWF0IjoxNzM5ODUwNDA3LCJqdGkiOiJlZTAwYWU1MjNhZmI0MjIzYTMyZDgxMTM4NWRlMzA1MyIsInVzZXJfaWQiOjF9.l66-t5f2RjVCTSHvB2zyfgPj6r5AjYHlr_1N72k59WY', '2025-02-18 03:46:47.256513', '2025-02-19 03:46:47.000000', 1, 'ee00ae523afb4223a32d811385de3053');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
-- Indexes for table `knox_authtoken`
--
ALTER TABLE `knox_authtoken`
  ADD PRIMARY KEY (`digest`),
  ADD KEY `knox_authtoken_user_id_e5a5d899_fk_auth_user_id` (`user_id`),
  ADD KEY `knox_authtoken_token_key_8f4f7d47` (`token_key`);

--
-- Indexes for table `myapp_product`
--
ALTER TABLE `myapp_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `myapp_sale`
--
ALTER TABLE `myapp_sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_sale_product_id_9e6fc391_fk_myapp_product_id` (`product_id`);

--
-- Indexes for table `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_id` (`token_id`);

--
-- Indexes for table `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  ADD KEY `token_blacklist_outs_user_id_83bc629a_fk_auth_user` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `myapp_product`
--
ALTER TABLE `myapp_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myapp_sale`
--
ALTER TABLE `myapp_sale`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `knox_authtoken`
--
ALTER TABLE `knox_authtoken`
  ADD CONSTRAINT `knox_authtoken_user_id_e5a5d899_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `myapp_sale`
--
ALTER TABLE `myapp_sale`
  ADD CONSTRAINT `myapp_sale_product_id_9e6fc391_fk_myapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `myapp_product` (`id`);

--
-- Constraints for table `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  ADD CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`);

--
-- Constraints for table `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  ADD CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `ess`
--
CREATE DATABASE IF NOT EXISTS `ess` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ess`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Name` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `Lastname` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_admin` int NOT NULL,
  `Role` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register_subject`
--

CREATE TABLE `register_subject` (
  `Payment` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `Term` int NOT NULL,
  `year` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `Lastname` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_student` int NOT NULL,
  `Address` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Phone_Number` int NOT NULL,
  `Faculty` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `Branch` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `Program` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `Lastname`, `ID_student`, `Address`, `Phone_Number`, `Faculty`, `Branch`, `Program`) VALUES
('ศิรินภา', 'แก้วกัณหา', 1, 'หมู่555 บ้านเลขที่555 ', 981570000, 'อุตสาหกรรมและเทคโนโลยี', 'วิศวกรรรมไฟฟ้า', 'วิศวกรรรมคอมพิวเตอร์'),
('ชฎาพร', 'เทศประสิทธิ์', 2, 'กหหกห', 666666666, 'อุตสาหกรรมและเทคโนโลยี', 'วิศวกรรรมไฟฟ้า', 'วิศวกรรรมคอมพิวเตอร์');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `ID_subject` int NOT NULL,
  `name_subject` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `credit_subject` int NOT NULL,
  `name_teacher` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `ID_teacher` int NOT NULL,
  `Branch` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `Faculty` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `Phone_Number` int NOT NULL,
  `Role` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Name_teacher` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Lastname` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_admin`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID_student`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`ID_subject`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`ID_teacher`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID_admin` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID_student` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `ID_subject` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `ID_teacher` int NOT NULL AUTO_INCREMENT;
--
-- Database: `ess 1`
--
CREATE DATABASE IF NOT EXISTS `ess 1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci;
USE `ess 1`;

-- --------------------------------------------------------

--
-- Table structure for table `นักเรียน`
--

CREATE TABLE `นักเรียน` (
  `IDนักศึกษา` int NOT NULL,
  `ชื่อ` varchar(100) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `นามสกุล` varchar(100) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `รหัสบัตรประชาชน` varchar(13) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `เบอร์โทร` varchar(10) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `ที่อยู่` text COLLATE utf8mb4_german2_ci,
  `คณะ` varchar(100) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `สาขา` varchar(100) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `โปรแกรม` varchar(100) COLLATE utf8mb4_german2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Dumping data for table `นักเรียน`
--

INSERT INTO `นักเรียน` (`IDนักศึกษา`, `ชื่อ`, `นามสกุล`, `รหัสบัตรประชาชน`, `เบอร์โทร`, `ที่อยู่`, `คณะ`, `สาขา`, `โปรแกรม`) VALUES
(1, 'ศิรินภา', 'แก้วกัณหา', '123456789123', '0981570000', 'หมู่555 บ้าน555 ต.พังโคน อ.พังโคน จ.สกลนคร', 'อุตสาหกรรมและเทคโนโลยี', 'วิศวกรรมไฟฟ้า', 'วิศวกรรมคอมพิวเตอร์');

-- --------------------------------------------------------

--
-- Table structure for table `รายวิชา`
--

CREATE TABLE `รายวิชา` (
  `IDวิชา` int NOT NULL,
  `ชื่อวิชา` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `คณะ` varchar(100) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `สาขา` varchar(100) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `โปรแกรม` varchar(100) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `หน่วยกิต` int DEFAULT NULL,
  `IDอาจารย์` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ลงทะเบียน`
--

CREATE TABLE `ลงทะเบียน` (
  `IDลงทะเบียน` int NOT NULL,
  `IDนักศึกษา` int DEFAULT NULL,
  `IDวิชา` int DEFAULT NULL,
  `ภาคการเรียน` varchar(50) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `ปีการศึกษา` int DEFAULT NULL,
  `ชำระเงิน` enum('ยังไม่ชำระ','ชำระแล้ว') COLLATE utf8mb4_german2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `อาจารย์`
--

CREATE TABLE `อาจารย์` (
  `IDอาจารย์` int NOT NULL,
  `ชื่อ` varchar(100) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `นามสกุล` varchar(100) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `รหัสผ่าน` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `เบอร์โทร` varchar(10) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `คณะ` varchar(100) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `สาขา` varchar(100) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `ตำแหน่ง` varchar(100) COLLATE utf8mb4_german2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `เจ้าหน้าที่`
--

CREATE TABLE `เจ้าหน้าที่` (
  `IDเจ้าหน้าที่` int NOT NULL,
  `ชื่อ` varchar(100) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `นามสกุล` varchar(100) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `รหัสผ่าน` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `ตำแหน่ง` varchar(100) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `สถานะ` varchar(100) COLLATE utf8mb4_german2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `นักเรียน`
--
ALTER TABLE `นักเรียน`
  ADD PRIMARY KEY (`IDนักศึกษา`),
  ADD UNIQUE KEY `รหัสบัตรประชาชน` (`รหัสบัตรประชาชน`);

--
-- Indexes for table `รายวิชา`
--
ALTER TABLE `รายวิชา`
  ADD PRIMARY KEY (`IDวิชา`),
  ADD KEY `IDอาจารย์` (`IDอาจารย์`);

--
-- Indexes for table `ลงทะเบียน`
--
ALTER TABLE `ลงทะเบียน`
  ADD PRIMARY KEY (`IDลงทะเบียน`),
  ADD KEY `IDนักศึกษา` (`IDนักศึกษา`),
  ADD KEY `IDวิชา` (`IDวิชา`);

--
-- Indexes for table `อาจารย์`
--
ALTER TABLE `อาจารย์`
  ADD PRIMARY KEY (`IDอาจารย์`);

--
-- Indexes for table `เจ้าหน้าที่`
--
ALTER TABLE `เจ้าหน้าที่`
  ADD PRIMARY KEY (`IDเจ้าหน้าที่`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `นักเรียน`
--
ALTER TABLE `นักเรียน`
  MODIFY `IDนักศึกษา` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `รายวิชา`
--
ALTER TABLE `รายวิชา`
  MODIFY `IDวิชา` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ลงทะเบียน`
--
ALTER TABLE `ลงทะเบียน`
  MODIFY `IDลงทะเบียน` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `อาจารย์`
--
ALTER TABLE `อาจารย์`
  MODIFY `IDอาจารย์` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `เจ้าหน้าที่`
--
ALTER TABLE `เจ้าหน้าที่`
  MODIFY `IDเจ้าหน้าที่` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `รายวิชา`
--
ALTER TABLE `รายวิชา`
  ADD CONSTRAINT `รายวิชา_ibfk_1` FOREIGN KEY (`IDอาจารย์`) REFERENCES `อาจารย์` (`IDอาจารย์`) ON DELETE SET NULL;

--
-- Constraints for table `ลงทะเบียน`
--
ALTER TABLE `ลงทะเบียน`
  ADD CONSTRAINT `ลงทะเบียน_ibfk_1` FOREIGN KEY (`IDนักศึกษา`) REFERENCES `นักเรียน` (`IDนักศึกษา`) ON DELETE CASCADE,
  ADD CONSTRAINT `ลงทะเบียน_ibfk_2` FOREIGN KEY (`IDวิชา`) REFERENCES `รายวิชา` (`IDวิชา`) ON DELETE CASCADE;
--
-- Database: `rrr`
--
CREATE DATABASE IF NOT EXISTS `rrr` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rrr`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
