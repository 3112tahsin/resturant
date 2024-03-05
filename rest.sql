-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2024 at 06:47 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add user dashboard module', 1, 'add_userdashboardmodule'),
(2, 'Can change user dashboard module', 1, 'change_userdashboardmodule'),
(3, 'Can delete user dashboard module', 1, 'delete_userdashboardmodule'),
(4, 'Can view user dashboard module', 1, 'view_userdashboardmodule'),
(5, 'Can add bookmark', 2, 'add_bookmark'),
(6, 'Can change bookmark', 2, 'change_bookmark'),
(7, 'Can delete bookmark', 2, 'delete_bookmark'),
(8, 'Can view bookmark', 2, 'view_bookmark'),
(9, 'Can add pinned application', 3, 'add_pinnedapplication'),
(10, 'Can change pinned application', 3, 'change_pinnedapplication'),
(11, 'Can delete pinned application', 3, 'delete_pinnedapplication'),
(12, 'Can view pinned application', 3, 'view_pinnedapplication'),
(13, 'Can add log entry', 4, 'add_logentry'),
(14, 'Can change log entry', 4, 'change_logentry'),
(15, 'Can delete log entry', 4, 'delete_logentry'),
(16, 'Can view log entry', 4, 'view_logentry'),
(17, 'Can add permission', 5, 'add_permission'),
(18, 'Can change permission', 5, 'change_permission'),
(19, 'Can delete permission', 5, 'delete_permission'),
(20, 'Can view permission', 5, 'view_permission'),
(21, 'Can add group', 6, 'add_group'),
(22, 'Can change group', 6, 'change_group'),
(23, 'Can delete group', 6, 'delete_group'),
(24, 'Can view group', 6, 'view_group'),
(25, 'Can add content type', 7, 'add_contenttype'),
(26, 'Can change content type', 7, 'change_contenttype'),
(27, 'Can delete content type', 7, 'delete_contenttype'),
(28, 'Can view content type', 7, 'view_contenttype'),
(29, 'Can add session', 8, 'add_session'),
(30, 'Can change session', 8, 'change_session'),
(31, 'Can delete session', 8, 'delete_session'),
(32, 'Can view session', 8, 'view_session'),
(33, 'Can add about', 9, 'add_about'),
(34, 'Can change about', 9, 'change_about'),
(35, 'Can delete about', 9, 'delete_about'),
(36, 'Can view about', 9, 'view_about'),
(37, 'Can add all sections', 10, 'add_allsections'),
(38, 'Can change all sections', 10, 'change_allsections'),
(39, 'Can delete all sections', 10, 'delete_allsections'),
(40, 'Can view all sections', 10, 'view_allsections'),
(41, 'Can add blog list', 11, 'add_bloglist'),
(42, 'Can change blog list', 11, 'change_bloglist'),
(43, 'Can delete blog list', 11, 'delete_bloglist'),
(44, 'Can view blog list', 11, 'view_bloglist'),
(45, 'Can add choose us', 12, 'add_chooseus'),
(46, 'Can change choose us', 12, 'change_chooseus'),
(47, 'Can delete choose us', 12, 'delete_chooseus'),
(48, 'Can view choose us', 12, 'view_chooseus'),
(49, 'Can add contact_ address', 13, 'add_contact_address'),
(50, 'Can change contact_ address', 13, 'change_contact_address'),
(51, 'Can delete contact_ address', 13, 'delete_contact_address'),
(52, 'Can view contact_ address', 13, 'view_contact_address'),
(53, 'Can add contact_ us', 14, 'add_contact_us'),
(54, 'Can change contact_ us', 14, 'change_contact_us'),
(55, 'Can delete contact_ us', 14, 'delete_contact_us'),
(56, 'Can view contact_ us', 14, 'view_contact_us'),
(57, 'Can add fun factor', 15, 'add_funfactor'),
(58, 'Can change fun factor', 15, 'change_funfactor'),
(59, 'Can delete fun factor', 15, 'delete_funfactor'),
(60, 'Can view fun factor', 15, 'view_funfactor'),
(61, 'Can add menu category', 16, 'add_menucategory'),
(62, 'Can change menu category', 16, 'change_menucategory'),
(63, 'Can delete menu category', 16, 'delete_menucategory'),
(64, 'Can view menu category', 16, 'view_menucategory'),
(65, 'Can add openhoure', 17, 'add_openhoure'),
(66, 'Can change openhoure', 17, 'change_openhoure'),
(67, 'Can delete openhoure', 17, 'delete_openhoure'),
(68, 'Can view openhoure', 17, 'view_openhoure'),
(69, 'Can add reservation', 18, 'add_reservation'),
(70, 'Can change reservation', 18, 'change_reservation'),
(71, 'Can delete reservation', 18, 'delete_reservation'),
(72, 'Can view reservation', 18, 'view_reservation'),
(73, 'Can add team members', 19, 'add_teammembers'),
(74, 'Can change team members', 19, 'change_teammembers'),
(75, 'Can delete team members', 19, 'delete_teammembers'),
(76, 'Can view team members', 19, 'view_teammembers'),
(77, 'Can add testimonial', 20, 'add_testimonial'),
(78, 'Can change testimonial', 20, 'change_testimonial'),
(79, 'Can delete testimonial', 20, 'delete_testimonial'),
(80, 'Can view testimonial', 20, 'view_testimonial'),
(81, 'Can add popular dishes', 21, 'add_populardishes'),
(82, 'Can change popular dishes', 21, 'change_populardishes'),
(83, 'Can delete popular dishes', 21, 'delete_populardishes'),
(84, 'Can view popular dishes', 21, 'view_populardishes'),
(85, 'Can add dishes menu', 22, 'add_dishesmenu'),
(86, 'Can change dishes menu', 22, 'change_dishesmenu'),
(87, 'Can delete dishes menu', 22, 'delete_dishesmenu'),
(88, 'Can view dishes menu', 22, 'view_dishesmenu'),
(89, 'Can add comment dish', 23, 'add_commentdish'),
(90, 'Can change comment dish', 23, 'change_commentdish'),
(91, 'Can delete comment dish', 23, 'delete_commentdish'),
(92, 'Can view comment dish', 23, 'view_commentdish'),
(93, 'Can add comment blog', 24, 'add_commentblog'),
(94, 'Can change comment blog', 24, 'change_commentblog'),
(95, 'Can delete comment blog', 24, 'delete_commentblog'),
(96, 'Can view comment blog', 24, 'view_commentblog'),
(97, 'Can add user', 25, 'add_user'),
(98, 'Can change user', 25, 'change_user'),
(99, 'Can delete user', 25, 'delete_user'),
(100, 'Can view user', 25, 'view_user');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_userdashboardmodule`
--

CREATE TABLE `dashboard_userdashboardmodule` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `app_label` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `column` int(10) UNSIGNED NOT NULL CHECK (`column` >= 0),
  `order` int(11) NOT NULL,
  `settings` longtext NOT NULL,
  `children` longtext NOT NULL,
  `collapsed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_userdashboardmodule`
--

INSERT INTO `dashboard_userdashboardmodule` (`id`, `title`, `module`, `app_label`, `user_id`, `column`, `order`, `settings`, `children`, `collapsed`) VALUES
(1, 'Quick links', 'jet.dashboard.modules.LinkList', NULL, 1, 0, 0, '{\"draggable\": false, \"deletable\": false, \"collapsible\": false, \"layout\": \"inline\"}', '[{\"title\": \"Return to site\", \"url\": \"/\"}, {\"title\": \"Change password\", \"url\": \"/admin/password_change/\"}, {\"title\": \"Log out\", \"url\": \"/admin/logout/\"}]', 0),
(2, 'Applications', 'jet.dashboard.modules.AppList', NULL, 1, 1, 0, '{\"models\": null, \"exclude\": [\"auth.*\"]}', '', 0),
(3, 'Administration', 'jet.dashboard.modules.AppList', NULL, 1, 2, 0, '{\"models\": [\"auth.*\"], \"exclude\": null}', '', 0),
(4, 'Recent Actions', 'jet.dashboard.modules.RecentActions', NULL, 1, 0, 1, '{\"limit\": 10, \"include_list\": null, \"exclude_list\": null, \"user\": null}', '', 0),
(5, 'Latest Django News', 'jet.dashboard.modules.Feed', NULL, 1, 1, 1, '{\"feed_url\": \"http://www.djangoproject.com/rss/weblog/\", \"limit\": 5}', '', 0),
(6, 'Support', 'jet.dashboard.modules.LinkList', NULL, 1, 2, 1, '{\"draggable\": true, \"deletable\": true, \"collapsible\": true, \"layout\": \"stacked\"}', '[{\"title\": \"Django documentation\", \"url\": \"http://docs.djangoproject.com/\", \"external\": true}, {\"title\": \"Django \\\"django-users\\\" mailing list\", \"url\": \"http://groups.google.com/group/django-users\", \"external\": true}, {\"title\": \"Django irc channel\", \"url\": \"irc://irc.freenode.net/django\", \"external\": true}]', 0),
(7, 'Application models', 'jet.dashboard.modules.ModelList', 'restaurant', 1, 0, 0, '{\"models\": [\"restaurant.*\"], \"exclude\": null}', '', 0),
(8, 'Recent Actions', 'jet.dashboard.modules.RecentActions', 'restaurant', 1, 1, 0, '{\"limit\": 10, \"include_list\": [\"restaurant.*\"], \"exclude_list\": null, \"user\": null}', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-03-04 11:06:54.019052', '1', 'th@gmail.com', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Username\", \"User phone no\"]}}]', 25, 1),
(2, '2024-03-04 11:09:23.767780', '2', 'try@gmail.com', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"User phone no\"]}}]', 25, 1),
(3, '2024-03-04 11:12:39.037984', '1', 'Blog Title Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '[{\"added\": {}}]', 11, 1),
(4, '2024-03-04 11:36:42.505225', '1', 'th@gmail.com', 2, '[]', 25, 1),
(5, '2024-03-04 11:36:54.889930', '2', 'try@gmail.com', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 25, 1),
(6, '2024-03-04 11:38:29.119067', '2', 'try@gmail.com', 2, '[]', 25, 1),
(7, '2024-03-05 04:22:32.397015', '1', 'Food & Drinkes', 1, '[{\"added\": {}}]', 9, 1),
(8, '2024-03-05 04:22:56.342943', '2', 'f', 1, '[{\"added\": {}}]', 9, 1),
(9, '2024-03-05 04:23:04.784621', '2', 'f', 2, '[{\"changed\": {\"fields\": [\"Slider image\"]}}]', 9, 1),
(10, '2024-03-05 04:25:29.086015', '1', 'MENU ITEMS', 1, '[{\"added\": {}}]', 15, 1),
(11, '2024-03-05 04:29:31.118619', '1', 'MENU ITEMS', 2, '[{\"changed\": {\"fields\": [\"Icone\"]}}]', 15, 1),
(12, '2024-03-05 04:55:51.971316', '2', 'VISITOR EVERYDAY', 1, '[{\"added\": {}}]', 15, 1),
(13, '2024-03-05 04:55:57.365424', '1', 'MENU ITEMS', 2, '[]', 15, 1),
(14, '2024-03-05 04:56:01.859396', '1', 'MENU ITEMS', 2, '[]', 15, 1),
(15, '2024-03-05 04:56:39.690815', '3', 'EXPERT CHEF', 1, '[{\"added\": {}}]', 15, 1),
(16, '2024-03-05 04:57:07.810709', '4', 'TEST & LOVE', 1, '[{\"added\": {}}]', 15, 1),
(17, '2024-03-05 04:58:04.660182', '1', 'Jonh Doe', 1, '[{\"added\": {}}]', 20, 1),
(18, '2024-03-05 04:58:10.485659', '2', 'Tahsin Hossen', 1, '[{\"added\": {}}]', 20, 1),
(19, '2024-03-05 04:59:38.543493', '1', 'md sabbir ahmed', 1, '[{\"added\": {}}]', 19, 1),
(20, '2024-03-05 04:59:53.377322', '2', 'John Doe', 1, '[{\"added\": {}}]', 19, 1),
(21, '2024-03-05 05:00:06.610667', '3', 'Test', 1, '[{\"added\": {}}]', 19, 1),
(22, '2024-03-05 05:00:38.049121', '4', 'tahsin', 1, '[{\"added\": {}}]', 19, 1),
(23, '2024-03-05 05:07:37.864829', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Mauris a sodales mi, eget lobortis nulla.', 1, '[{\"added\": {}}]', 12, 1),
(24, '2024-03-05 05:08:22.135341', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Mauris a sodales mi, eget lobortis nulla.', 1, '[{\"added\": {}}]', 10, 1),
(25, '2024-03-05 05:09:02.648103', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Mauris a sodales mi, eget lobortis nulla.', 2, '[]', 10, 1),
(26, '2024-03-05 05:12:25.101565', '1', 'All', 1, '[{\"added\": {}}]', 16, 1),
(27, '2024-03-05 05:12:40.421839', '2', 'BREAKFAST', 1, '[{\"added\": {}}]', 16, 1),
(28, '2024-03-05 05:12:45.874769', '3', 'LUNCH', 1, '[{\"added\": {}}]', 16, 1),
(29, '2024-03-05 05:12:51.083981', '4', 'DINNER', 1, '[{\"added\": {}}]', 16, 1),
(30, '2024-03-05 05:12:56.412277', '5', 'DRINKS', 1, '[{\"added\": {}}]', 16, 1),
(31, '2024-03-05 05:13:02.820004', '6', 'OTHERS', 1, '[{\"added\": {}}]', 16, 1),
(32, '2024-03-05 05:15:17.704737', '1', 'Dish Name Here', 1, '[{\"added\": {}}]', 21, 1),
(33, '2024-03-05 05:16:41.480765', '2', 'Dish Name Here', 1, '[{\"added\": {}}]', 21, 1),
(34, '2024-03-05 05:18:10.352478', '3', 'Dish Name Here', 1, '[{\"added\": {}}]', 21, 1),
(35, '2024-03-05 05:18:51.744070', '4', 'Dish Name Here3', 1, '[{\"added\": {}}]', 21, 1),
(36, '2024-03-05 05:19:26.628730', '5', 'Dish Name Here2', 1, '[{\"added\": {}}]', 21, 1),
(37, '2024-03-05 05:20:49.361276', '1', 'Dish Name Here', 2, '[{\"changed\": {\"fields\": [\"Details picture\"]}}]', 21, 1),
(38, '2024-03-05 05:21:02.778807', '2', 'Dish Name Here', 2, '[{\"changed\": {\"fields\": [\"Details picture\"]}}]', 21, 1),
(39, '2024-03-05 05:21:10.504280', '3', 'Dish Name Here', 2, '[{\"changed\": {\"fields\": [\"Details picture\"]}}]', 21, 1),
(40, '2024-03-05 05:21:22.945856', '4', 'Dish Name Here3', 2, '[{\"changed\": {\"fields\": [\"Details picture\"]}}]', 21, 1),
(41, '2024-03-05 05:21:32.212202', '4', 'Dish Name Here3', 2, '[{\"changed\": {\"fields\": [\"Details picture\"]}}]', 21, 1),
(42, '2024-03-05 05:21:39.161022', '5', 'Dish Name Here2', 2, '[{\"changed\": {\"fields\": [\"Details picture\"]}}]', 21, 1),
(43, '2024-03-05 05:23:21.152838', '1', 'Dish Name Here', 1, '[{\"added\": {}}]', 22, 1),
(44, '2024-03-05 05:23:58.496107', '2', 'Dish Name Here3', 1, '[{\"added\": {}}]', 22, 1),
(45, '2024-03-05 05:24:14.096719', '3', 'Dish Name Here4', 1, '[{\"added\": {}}]', 22, 1),
(46, '2024-03-05 05:24:26.585023', '4', 'Dish Name Here', 1, '[{\"added\": {}}]', 22, 1),
(47, '2024-03-05 05:24:41.225038', '5', 'Dish Name Here', 1, '[{\"added\": {}}]', 22, 1),
(48, '2024-03-05 05:24:54.704668', '6', 'Dish Name Here', 1, '[{\"added\": {}}]', 22, 1),
(49, '2024-03-05 05:25:05.736986', '7', 'Dish Name Here', 1, '[{\"added\": {}}]', 22, 1),
(50, '2024-03-05 05:25:18.184218', '8', 'Dish Name Here3', 1, '[{\"added\": {}}]', 22, 1),
(51, '2024-03-05 05:25:30.168701', '9', 'Dish Name Here', 1, '[{\"added\": {}}]', 22, 1),
(52, '2024-03-05 05:25:40.832994', '10', 'Dish Name Here', 1, '[{\"added\": {}}]', 22, 1),
(53, '2024-03-05 05:25:57.272247', '11', 'Dish Name Here4', 1, '[{\"added\": {}}]', 22, 1),
(54, '2024-03-05 05:26:08.698739', '12', 'Dish Name Here', 1, '[{\"added\": {}}]', 22, 1),
(55, '2024-03-05 05:26:20.920932', '13', 'Dish Name Here', 1, '[{\"added\": {}}]', 22, 1),
(56, '2024-03-05 05:26:32.578142', '14', 'Dish Name Here3', 1, '[{\"added\": {}}]', 22, 1),
(57, '2024-03-05 05:26:46.401176', '15', 'Dish Name Here', 1, '[{\"added\": {}}]', 22, 1),
(58, '2024-03-05 05:27:00.233491', '16', 'Dish Name Here3', 1, '[{\"added\": {}}]', 22, 1),
(59, '2024-03-05 05:27:12.762283', '17', 'Dish Name Here2', 1, '[{\"added\": {}}]', 22, 1),
(60, '2024-03-05 05:27:30.795020', '18', 'Dish Name Here', 1, '[{\"added\": {}}]', 22, 1),
(61, '2024-03-05 05:27:57.012441', '19', 'Dish Name Here3', 1, '[{\"added\": {}}]', 22, 1),
(62, '2024-03-05 05:28:12.200937', '20', 'Dish Name Here3', 1, '[{\"added\": {}}]', 22, 1),
(63, '2024-03-05 05:30:01.929113', '1', 'Blog Title Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 2, '[{\"changed\": {\"fields\": [\"Blog image\", \"Home image\", \"Top image\"]}}]', 11, 1),
(64, '2024-03-05 05:34:52.378753', '2', 'Blog Title Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '[{\"added\": {}}]', 11, 1),
(65, '2024-03-05 05:35:40.080674', '3', 'Blog Title Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '[{\"added\": {}}]', 11, 1),
(66, '2024-03-05 05:38:31.812951', '1', '1800 000 0000,', 1, '[{\"added\": {}}]', 13, 1),
(67, '2024-03-05 05:39:21.950766', '1', 'Monday - Friday', 1, '[{\"added\": {}}]', 17, 1),
(68, '2024-03-05 05:39:31.237298', '2', 'Saturday - Sunday', 1, '[{\"added\": {}}]', 17, 1),
(69, '2024-03-05 05:39:38.534710', '3', 'Breakfast', 1, '[{\"added\": {}}]', 17, 1),
(70, '2024-03-05 05:39:51.957456', '4', 'Lunch', 1, '[{\"added\": {}}]', 17, 1),
(71, '2024-03-05 05:40:10.205971', '5', 'Dinner', 1, '[{\"added\": {}}]', 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(4, 'admin', 'logentry'),
(6, 'auth', 'group'),
(5, 'auth', 'permission'),
(7, 'contenttypes', 'contenttype'),
(1, 'dashboard', 'userdashboardmodule'),
(2, 'jet', 'bookmark'),
(3, 'jet', 'pinnedapplication'),
(9, 'restaurant', 'about'),
(10, 'restaurant', 'allsections'),
(11, 'restaurant', 'bloglist'),
(12, 'restaurant', 'chooseus'),
(24, 'restaurant', 'commentblog'),
(23, 'restaurant', 'commentdish'),
(13, 'restaurant', 'contact_address'),
(14, 'restaurant', 'contact_us'),
(22, 'restaurant', 'dishesmenu'),
(15, 'restaurant', 'funfactor'),
(16, 'restaurant', 'menucategory'),
(17, 'restaurant', 'openhoure'),
(21, 'restaurant', 'populardishes'),
(18, 'restaurant', 'reservation'),
(19, 'restaurant', 'teammembers'),
(20, 'restaurant', 'testimonial'),
(25, 'restaurant', 'user'),
(8, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-03-04 11:03:42.639093'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-03-04 11:03:42.702243'),
(3, 'auth', '0001_initial', '2024-03-04 11:03:42.968297'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-03-04 11:03:43.042693'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-03-04 11:03:43.050672'),
(6, 'auth', '0004_alter_user_username_opts', '2024-03-04 11:03:43.059648'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-03-04 11:03:43.068129'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-03-04 11:03:43.072717'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-03-04 11:03:43.082627'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-03-04 11:03:43.089712'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-03-04 11:03:43.114972'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-03-04 11:03:43.141378'),
(13, 'auth', '0011_update_proxy_permissions', '2024-03-04 11:03:43.151733'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-03-04 11:03:43.158192'),
(15, 'restaurant', '0001_initial', '2024-03-04 11:03:44.114217'),
(16, 'admin', '0001_initial', '2024-03-04 11:03:44.316227'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-03-04 11:03:44.330391'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-04 11:03:44.348398'),
(19, 'dashboard', '0001_initial', '2024-03-04 11:03:44.386376'),
(20, 'dashboard', '0002_auto_20201228_1929', '2024-03-04 11:03:44.742123'),
(21, 'dashboard', '0003_alter_userdashboardmodule_id', '2024-03-04 11:03:44.814641'),
(22, 'jet', '0001_initial', '2024-03-04 11:03:44.976037'),
(23, 'jet', '0002_delete_userdashboardmodule', '2024-03-04 11:03:44.981738'),
(24, 'jet', '0003_auto_20201228_1540', '2024-03-04 11:03:44.987211'),
(25, 'jet', '0004_auto_20201228_1802', '2024-03-04 11:03:44.991491'),
(26, 'jet', '0005_alter_bookmark_id_alter_pinnedapplication_id', '2024-03-04 11:03:45.115330'),
(27, 'sessions', '0001_initial', '2024-03-04 11:03:45.157927'),
(28, 'jet', '0001_squashed_0004_auto_20201228_1802', '2024-03-04 11:03:45.169266'),
(29, 'restaurant', '0002_alter_funfactor_icone', '2024-03-05 04:28:47.107076');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('utvjta5csg9jdet8mpx543cwb41gngiv', '.eJxVjDkOwjAUBe_iGlnB35so6TmD9RcHB5AtxUkVcXeIlALaNzNvUwnXpaS15zlNoi7qrE6_GyE_c92BPLDem-ZWl3kivSv6oF3fmuTX9XD_Dgr28q1jlCGIiZwtgvFkLUYZGSyNxgNYJiZPKCReXHYhDxhMALIADME79f4A-3I4WQ:1rhNcq:Q2mmdL96unznqglmcZBIk95DQxf7tXwHmAx-vzGHm6Y', '2024-03-19 05:46:04.897619'),
('wjhm4p0pwtmzl1hbfn02da0kqzzp2mj9', '.eJxVjEEKwyAQAP_iuYi6BrXH3vsGWbNrTVsUYnIK_XsRcmivM8McIuK-lbh3XuNC4iqMuPyyhPOL6xD0xPpocm51W5ckRyJP2-W9Eb9vZ_s3KNjL2KYEoGcM6Ml4pxFo0sSaAYL3oKxDQxkU-eyQnJqsRcWYLTBh0EZ8vuHZN-0:1rhMfu:M2Ub_yHIDJUqSkdve7ev_-mitEMeM8cuFggNfV1pk6Q', '2024-03-19 04:45:10.176478');

-- --------------------------------------------------------

--
-- Table structure for table `jet_bookmark`
--

CREATE TABLE `jet_bookmark` (
  `id` bigint(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_add` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jet_pinnedapplication`
--

CREATE TABLE `jet_pinnedapplication` (
  `id` bigint(20) NOT NULL,
  `app_label` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_add` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_about`
--

CREATE TABLE `restaurant_about` (
  `id` bigint(20) NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `detailes` varchar(250) DEFAULT NULL,
  `full_detailes` longtext DEFAULT NULL,
  `slider_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_about`
--

INSERT INTO `restaurant_about` (`id`, `title`, `detailes`, `full_detailes`, `slider_image`) VALUES
(1, 'Food & Drinkes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id.', '2.png'),
(2, 'f', 'df', 'ds', '3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_allsections`
--

CREATE TABLE `restaurant_allsections` (
  `id` bigint(20) NOT NULL,
  `order_delivery_title` varchar(255) DEFAULT NULL,
  `popular_dish_title` varchar(255) DEFAULT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `booking_table_title` varchar(255) DEFAULT NULL,
  `blog_title` varchar(255) DEFAULT NULL,
  `newsletter` varchar(255) DEFAULT NULL,
  `login_title` varchar(255) DEFAULT NULL,
  `register_title` varchar(255) DEFAULT NULL,
  `recent_food_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_allsections`
--

INSERT INTO `restaurant_allsections` (`id`, `order_delivery_title`, `popular_dish_title`, `menu_title`, `booking_table_title`, `blog_title`, `newsletter`, `login_title`, `register_title`, `recent_food_title`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Mauris a sodales mi, eget lobortis nulla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Mauris a sodales mi, eget lobortis nulla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Mauris a sodales mi, eget lobortis nulla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Mauris a sodales mi, eget lobortis nulla.', 'Blog Title Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam iaculis lorem augue, at quam finibus eget.', 'Login ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Mauris a sodales mi, eget lobortis nulla.', 'Register ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Mauris a sodales mi, eget lobortis nulla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Mauris a sodales mi, eget lobortis nulla.');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_bloglist`
--

CREATE TABLE `restaurant_bloglist` (
  `id` bigint(20) NOT NULL,
  `blog_title` varchar(127) DEFAULT NULL,
  `blog_image` varchar(100) DEFAULT NULL,
  `date` date NOT NULL,
  `home_image` varchar(100) DEFAULT NULL,
  `top_image` varchar(100) DEFAULT NULL,
  `top_details` longtext DEFAULT NULL,
  `details2` longtext DEFAULT NULL,
  `banner_details` longtext DEFAULT NULL,
  `buttom_details` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_bloglist`
--

INSERT INTO `restaurant_bloglist` (`id`, `blog_title`, `blog_image`, `date`, `home_image`, `top_image`, `top_details`, `details2`, `banner_details`, `buttom_details`) VALUES
(1, 'Blog Title Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'img5.jpg', '2024-03-05', 'b1.jpg', 'big.jpg', 'The error you\'re encountering indicates that there\'s a foreign key constraint failure when trying to add or update a row in the dashboard_userdashboardmodule table. This issue typically arises when the user_id column in the dashboard_userdashboardmodule table is referencing the id column in the auth_user table, but there\'s a mismatch or inconsistency in the data.', 'The error you\'re encountering indicates that there\'s a foreign key constraint failure when trying to add or update a row in the dashboard_userdashboardmodule table. This issue typically arises when the user_id column in the dashboard_userdashboardmodule table is referencing the id column in the auth_user table, but there\'s a mismatch or inconsistency in the data.', 'The error you\'re encountering indicates that there\'s a foreign key constraint failure when trying to add or update a row in the dashboard_userdashboardmodule table. This issue typically arises when the user_id column in the dashboard_userdashboardmodule table is referencing the id column in the auth_user table, but there\'s a mismatch or inconsistency in the data.', 'The error you\'re encountering indicates that there\'s a foreign key constraint failure when trying to add or update a row in the dashboard_userdashboardmodule table. This issue typically arises when the user_id column in the dashboard_userdashboardmodule table is referencing the id column in the auth_user table, but there\'s a mismatch or inconsistency in the data.'),
(2, 'Blog Title Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'img4.jpg', '2024-03-06', 'b2.jpg', 'big_ZDWaPZr.jpg', 'Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin.', 'Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin.', 'Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin.'),
(3, 'Blog Title Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'img2.jpg', '2024-03-06', 'b2_bjmszaG.jpg', 'big_jB1DBcz.jpg', 'Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin.', 'Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin.', 'Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin.', 'Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin. Duis eu tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc orci tellus, fermentum nec imperdiet sed, pulvinar et sem, Fusce hendrerit faucibus sollicitudin.');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_chooseus`
--

CREATE TABLE `restaurant_chooseus` (
  `id` bigint(20) NOT NULL,
  `chooseUs_title` longtext DEFAULT NULL,
  `choose_image` varchar(100) DEFAULT NULL,
  `chef_title` varchar(255) DEFAULT NULL,
  `total_tables` varchar(15) DEFAULT NULL,
  `tables_detailes` varchar(255) DEFAULT NULL,
  `clean_detailes` varchar(255) DEFAULT NULL,
  `our_chefs_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_chooseus`
--

INSERT INTO `restaurant_chooseus` (`id`, `chooseUs_title`, `choose_image`, `chef_title`, `total_tables`, `tables_detailes`, `clean_detailes`, `our_chefs_title`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Mauris a sodales mi, eget lobortis nulla.', 'about-bg.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae purus diam. Quisque vel elementum ligula.', '150', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae purus diam. Quisque vel elementum ligula.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae purus diam. Quisque vel elementum ligula.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Mauris a sodales mi, eget lobortis nulla.');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_commentblog`
--

CREATE TABLE `restaurant_commentblog` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `body` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `blog_name_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_commentblog`
--

INSERT INTO `restaurant_commentblog` (`id`, `name`, `email`, `body`, `created`, `active`, `blog_name_id`) VALUES
(1, 'tahsin', 'tahsinhossen3@gmail.com', 'The error you\'re encountering indicates that there\'s a foreign key constraint failure when trying to add or update a row in the dashboard_userdashboardmodule table.', '2024-03-04 11:35:26.107831', 1, 1),
(2, 'Test', 'test@gmail.com', 'The error you\'re encountering indicates that there\'s a foreign key constraint failure when trying to add or update a row in the dashboard_userdashboardmodule table.', '2024-03-05 05:44:22.747091', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_commentdish`
--

CREATE TABLE `restaurant_commentdish` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `body` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `dish_name_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_commentdish`
--

INSERT INTO `restaurant_commentdish` (`id`, `name`, `email`, `body`, `created`, `active`, `dish_name_id`) VALUES
(1, 'Test', 'test@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Mauris a sodales mi, eget lobortis nulla.', '2024-03-05 05:43:51.066121', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_contact_address`
--

CREATE TABLE `restaurant_contact_address` (
  `id` bigint(20) NOT NULL,
  `primary_phone_no` varchar(20) DEFAULT NULL,
  `phone_no` varchar(20) NOT NULL,
  `primary_email` varchar(62) DEFAULT NULL,
  `email` varchar(62) NOT NULL,
  `address` longtext DEFAULT NULL,
  `top_title` varchar(255) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `google_map` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_contact_address`
--

INSERT INTO `restaurant_contact_address` (`id`, `primary_phone_no`, `phone_no`, `primary_email`, `email`, `address`, `top_title`, `logo`, `google_map`) VALUES
(1, '1800 000 0000,', '+88 123 1234 1234', 'info@yourdomainname.com', 'contact@yourdomainname.com', '20, floor, Restaurant Food & Drinks, Nr, Queenslad Victoria Building, USA', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Mauris a sodales mi, eget lobortis nulla.', 'logo-white.png', 'xc');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_contact_us`
--

CREATE TABLE `restaurant_contact_us` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `messages` longtext DEFAULT NULL,
  `date_time` datetime(6) NOT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_dishesmenu`
--

CREATE TABLE `restaurant_dishesmenu` (
  `id` bigint(20) NOT NULL,
  `dish_name` varchar(27) DEFAULT NULL,
  `dish_title` varchar(27) DEFAULT NULL,
  `dish_picture` varchar(100) DEFAULT NULL,
  `dish_price` varchar(27) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `category_name_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_dishesmenu`
--

INSERT INTO `restaurant_dishesmenu` (`id`, `dish_name`, `dish_title`, `dish_picture`, `dish_price`, `details`, `category_name_id`) VALUES
(1, 'Dish Name Here', 'Cursus / Dictum / Risus', '01_1.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua.', 1),
(2, 'Dish Name Here3', 'Cursus / Dictum / Risus....', '09.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 1),
(3, 'Dish Name Here4', 'Cursus / Dictum / Risus....', '07_1.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 1),
(4, 'Dish Name Here', 'Cursus / Dictum / Risus', '05_yEv79FR.jpg', '111', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 1),
(5, 'Dish Name Here', 'Cursus / Dictum / Risus', '05_yLKbEdE.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 2),
(6, 'Dish Name Here', 'Cursus / Dictum / Risus....', '02_kUCbL02.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 2),
(7, 'Dish Name Here', 'Cursus / Dictum / Risus', '05_DhEPyi0.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 2),
(8, 'Dish Name Here3', 'Cursus / Dictum / Risus', '08_szLhS0r.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 2),
(9, 'Dish Name Here', 'Cursus / Dictum / Risus', '03_yW1Igq7.jpg', '111', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 3),
(10, 'Dish Name Here', 'Cursus / Dictum / Risus', '04_V8YSttl.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 3),
(11, 'Dish Name Here4', 'Cursus / Dictum / Risus', '02_jzknoEx.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 3),
(12, 'Dish Name Here', 'Cursus / Dictum / Risus', '06.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 3),
(13, 'Dish Name Here', 'Cursus / Dictum / Risus', '06_wnF1sLM.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 4),
(14, 'Dish Name Here3', 'Cursus / Dictum / Risus....', '07_1_mAttUN4.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 4),
(15, 'Dish Name Here', 'Cursus / Dictum / Risus....', '01_yHkLCb8.jpg', '111', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 4),
(16, 'Dish Name Here3', 'Cursus / Dictum / Risus', '09_dTYTD2E.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 5),
(17, 'Dish Name Here2', 'Cursus / Dictum / Risus', '08_J5ZxQSt.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 5),
(18, 'Dish Name Here', 'Cursus / Dictum / Risus....', '07.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 5),
(19, 'Dish Name Here3', 'Cursus / Dictum / Risus', '04_UG7A73w.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 6),
(20, 'Dish Name Here3', 'Cursus / Dictum / Risus....', '07_1_UsMu83X.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 6);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_funfactor`
--

CREATE TABLE `restaurant_funfactor` (
  `id` bigint(20) NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `values` varchar(15) DEFAULT NULL,
  `icone` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_funfactor`
--

INSERT INTO `restaurant_funfactor` (`id`, `title`, `values`, `icone`) VALUES
(1, 'MENU ITEMS', '300', 'icofont-spoon-and-fork'),
(2, 'VISITOR EVERYDAY', '600', 'icofont-emo-simple-smile'),
(3, 'EXPERT CHEF', '400', 'icofont-waiter-alt'),
(4, 'TEST & LOVE', '100', 'icofont-heart-alt');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_menucategory`
--

CREATE TABLE `restaurant_menucategory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(27) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_menucategory`
--

INSERT INTO `restaurant_menucategory` (`id`, `name`) VALUES
(1, 'All'),
(2, 'BREAKFAST'),
(3, 'LUNCH'),
(4, 'DINNER'),
(5, 'DRINKS'),
(6, 'OTHERS');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_openhoure`
--

CREATE TABLE `restaurant_openhoure` (
  `id` bigint(20) NOT NULL,
  `day` varchar(30) DEFAULT NULL,
  `start_time` time(6) DEFAULT NULL,
  `end_time` time(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_openhoure`
--

INSERT INTO `restaurant_openhoure` (`id`, `day`, `start_time`, `end_time`) VALUES
(1, 'Monday - Friday', '11:40:00.000000', '23:40:00.000000'),
(2, 'Saturday - Sunday', '08:15:00.000000', '22:15:00.000000'),
(3, 'Breakfast', '08:15:00.000000', '07:40:00.000000'),
(4, 'Lunch', '00:41:00.000000', '14:45:00.000000'),
(5, 'Dinner', '02:15:00.000000', '12:15:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_populardishes`
--

CREATE TABLE `restaurant_populardishes` (
  `id` bigint(20) NOT NULL,
  `dish_name` varchar(27) DEFAULT NULL,
  `dish_title` varchar(27) DEFAULT NULL,
  `dish_picture` varchar(100) DEFAULT NULL,
  `dish_price` varchar(27) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `details_picture` varchar(100) DEFAULT NULL,
  `description1` longtext DEFAULT NULL,
  `description2` longtext DEFAULT NULL,
  `category_name_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_populardishes`
--

INSERT INTO `restaurant_populardishes` (`id`, `dish_name`, `dish_title`, `dish_picture`, `dish_price`, `details`, `details_picture`, `description1`, `description2`, `category_name_id`) VALUES
(1, 'Dish Name Here', 'Cursus / Dictum / Risus', '01.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.', 'details_lUOoDfC.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua.', 1),
(2, 'Dish Name Here', 'Cursus / Dictum / Risus', '05.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua.', 'details_lsl5hJy.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua.', 1),
(3, 'Dish Name Here', 'Cursus / Dictum / Risus', '04.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua.', 'details_jYf57zv.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua.', 2),
(4, 'Dish Name Here3', 'Cursus / Dictum / Risus', '03_BHCLp3e.jpg', '111', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua.', 'details_UWqNHx0.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua.', 3),
(5, 'Dish Name Here2', 'Cursus / Dictum / Risus....', '02.jpg', '100', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua.', 'details_Tte4fO1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum d. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod tempor incididunt ut labore et dolore magna aliqua.', 3);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_reservation`
--

CREATE TABLE `restaurant_reservation` (
  `id` bigint(20) NOT NULL,
  `name` varchar(63) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `reservation_time` time(6) DEFAULT NULL,
  `total_person` varchar(15) DEFAULT NULL,
  `date_time` datetime(6) NOT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_teammembers`
--

CREATE TABLE `restaurant_teammembers` (
  `id` bigint(20) NOT NULL,
  `name` varchar(31) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `sort_details` longtext DEFAULT NULL,
  `facebook_link` varchar(127) NOT NULL,
  `twitter_link` varchar(127) NOT NULL,
  `google_link` varchar(127) NOT NULL,
  `instagram_link` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_teammembers`
--

INSERT INTO `restaurant_teammembers` (`id`, `name`, `picture`, `sort_details`, `facebook_link`, `twitter_link`, `google_link`, `instagram_link`) VALUES
(1, 'md sabbir ahmed', 'chefs-1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam pharetra risus mauris, eget tristique augue.', 'Write..', 'Write..', 'Write..', 'Write..'),
(2, 'John Doe', 'chefs-3.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam pharetra risus mauris, eget tristique augue.', 'Write..', 'Write..', 'Write..', 'Write..'),
(3, 'Test', 'chefs-2_1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam pharetra risus mauris, eget tristique augue.', 'Write..', 'Write..', 'Write..', 'Write..'),
(4, 'tahsin', 'chefs-1_ORE80na.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam pharetra risus mauris, eget tristique augue.', 'Write..', 'Write..', 'Write..', 'Write..');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_testimonial`
--

CREATE TABLE `restaurant_testimonial` (
  `id` bigint(20) NOT NULL,
  `clint_name` varchar(30) DEFAULT NULL,
  `messages` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_testimonial`
--

INSERT INTO `restaurant_testimonial` (`id`, `clint_name`, `messages`) VALUES
(1, 'Jonh Doe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Mauris a sodales mi, eget lobortis nulla.'),
(2, 'Tahsin Hossen', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur placerat nulla, in suscipit erat sodales id. Nullam ultricies eu turpis at accumsan. Mauris a sodales mi, eget lobortis nulla.');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_user`
--

CREATE TABLE `restaurant_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(150) NOT NULL,
  `user_phone_no` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `picture` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_user`
--

INSERT INTO `restaurant_user` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `username`, `user_phone_no`, `email`, `picture`) VALUES
(1, 'pbkdf2_sha256$600000$F6bzDZO1qbpE8M9JEIIYJA$H5QyFiwBGjVvnTaJs371OTzehvNnMsTyuej2664E8k4=', '2024-03-05 05:46:04.891431', 1, 'Maliha', 'Rahham', 1, 1, '2024-03-04 11:06:16.000000', 'admin', '0173615262', 'th@gmail.com', 'avatar.svg'),
(2, 'pbkdf2_sha256$600000$WHy1ioG4ZGvOIQMRgze32K$XXT6WODoqBow2z+f/9maBAZFMK8JW0GZK1WOaY2+RxE=', '2024-03-05 04:45:10.170120', 0, 'admin', 'test', 0, 1, '2024-03-04 11:08:13.000000', 'try', '0173615262', 'try@gmail.com', 'avatar.svg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_user_groups`
--

CREATE TABLE `restaurant_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_user_user_permissions`
--

CREATE TABLE `restaurant_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_user_user_permissions`
--

INSERT INTO `restaurant_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 2, 19),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24),
(25, 2, 25),
(26, 2, 26),
(27, 2, 27),
(28, 2, 28),
(29, 2, 29),
(30, 2, 30),
(31, 2, 31),
(32, 2, 32),
(33, 2, 33),
(34, 2, 34),
(35, 2, 35),
(36, 2, 36),
(37, 2, 37),
(38, 2, 38),
(39, 2, 39),
(40, 2, 40),
(41, 2, 41),
(42, 2, 42),
(43, 2, 43),
(44, 2, 44),
(45, 2, 45),
(46, 2, 46),
(47, 2, 47),
(48, 2, 48),
(49, 2, 49),
(50, 2, 50),
(51, 2, 51),
(52, 2, 52),
(53, 2, 53),
(54, 2, 54),
(55, 2, 55),
(56, 2, 56),
(57, 2, 57),
(58, 2, 58),
(59, 2, 59),
(60, 2, 60),
(61, 2, 61),
(62, 2, 62),
(63, 2, 63),
(64, 2, 64),
(65, 2, 65),
(66, 2, 66),
(67, 2, 67),
(68, 2, 68),
(69, 2, 69),
(70, 2, 70),
(71, 2, 71),
(72, 2, 72),
(73, 2, 73),
(74, 2, 74),
(75, 2, 75),
(76, 2, 76),
(77, 2, 77),
(78, 2, 78),
(79, 2, 79),
(80, 2, 80),
(81, 2, 81),
(82, 2, 82),
(83, 2, 83),
(84, 2, 84),
(85, 2, 85),
(86, 2, 86),
(87, 2, 87),
(88, 2, 88),
(89, 2, 89),
(90, 2, 90),
(91, 2, 91),
(92, 2, 92),
(93, 2, 93),
(94, 2, 94),
(95, 2, 95),
(96, 2, 96),
(97, 2, 97),
(98, 2, 98),
(99, 2, 99),
(100, 2, 100);

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
-- Indexes for table `dashboard_userdashboardmodule`
--
ALTER TABLE `dashboard_userdashboardmodule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_userdashboardmodule_user_id_97c13132` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_restaurant_user_id` (`user_id`);

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
-- Indexes for table `jet_bookmark`
--
ALTER TABLE `jet_bookmark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jet_bookmark_user_id_8efdc332_fk_restaurant_user_id` (`user_id`);

--
-- Indexes for table `jet_pinnedapplication`
--
ALTER TABLE `jet_pinnedapplication`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jet_pinnedapplication_user_id_7765bcf9_fk_restaurant_user_id` (`user_id`);

--
-- Indexes for table `restaurant_about`
--
ALTER TABLE `restaurant_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_allsections`
--
ALTER TABLE `restaurant_allsections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_bloglist`
--
ALTER TABLE `restaurant_bloglist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_chooseus`
--
ALTER TABLE `restaurant_chooseus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_commentblog`
--
ALTER TABLE `restaurant_commentblog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_commentbl_blog_name_id_40fe8bc9_fk_restauran` (`blog_name_id`);

--
-- Indexes for table `restaurant_commentdish`
--
ALTER TABLE `restaurant_commentdish`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_commentdi_dish_name_id_8201b63f_fk_restauran` (`dish_name_id`);

--
-- Indexes for table `restaurant_contact_address`
--
ALTER TABLE `restaurant_contact_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_contact_us`
--
ALTER TABLE `restaurant_contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_dishesmenu`
--
ALTER TABLE `restaurant_dishesmenu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_dishesmen_category_name_id_954a9b6d_fk_restauran` (`category_name_id`);

--
-- Indexes for table `restaurant_funfactor`
--
ALTER TABLE `restaurant_funfactor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_menucategory`
--
ALTER TABLE `restaurant_menucategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_openhoure`
--
ALTER TABLE `restaurant_openhoure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_populardishes`
--
ALTER TABLE `restaurant_populardishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_populardi_category_name_id_b4c9f5a0_fk_restauran` (`category_name_id`);

--
-- Indexes for table `restaurant_reservation`
--
ALTER TABLE `restaurant_reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_teammembers`
--
ALTER TABLE `restaurant_teammembers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_testimonial`
--
ALTER TABLE `restaurant_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_user`
--
ALTER TABLE `restaurant_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `restaurant_user_groups`
--
ALTER TABLE `restaurant_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurant_user_groups_user_id_group_id_a5c8b1f2_uniq` (`user_id`,`group_id`),
  ADD KEY `restaurant_user_groups_group_id_9b3b7b47_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `restaurant_user_user_permissions`
--
ALTER TABLE `restaurant_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurant_user_user_per_user_id_permission_id_5c467547_uniq` (`user_id`,`permission_id`),
  ADD KEY `restaurant_user_user_permission_id_ecd131cc_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `dashboard_userdashboardmodule`
--
ALTER TABLE `dashboard_userdashboardmodule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `jet_bookmark`
--
ALTER TABLE `jet_bookmark`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jet_pinnedapplication`
--
ALTER TABLE `jet_pinnedapplication`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_about`
--
ALTER TABLE `restaurant_about`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `restaurant_allsections`
--
ALTER TABLE `restaurant_allsections`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurant_bloglist`
--
ALTER TABLE `restaurant_bloglist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `restaurant_chooseus`
--
ALTER TABLE `restaurant_chooseus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurant_commentblog`
--
ALTER TABLE `restaurant_commentblog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `restaurant_commentdish`
--
ALTER TABLE `restaurant_commentdish`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurant_contact_address`
--
ALTER TABLE `restaurant_contact_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurant_contact_us`
--
ALTER TABLE `restaurant_contact_us`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_dishesmenu`
--
ALTER TABLE `restaurant_dishesmenu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `restaurant_funfactor`
--
ALTER TABLE `restaurant_funfactor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `restaurant_menucategory`
--
ALTER TABLE `restaurant_menucategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `restaurant_openhoure`
--
ALTER TABLE `restaurant_openhoure`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `restaurant_populardishes`
--
ALTER TABLE `restaurant_populardishes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `restaurant_reservation`
--
ALTER TABLE `restaurant_reservation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_teammembers`
--
ALTER TABLE `restaurant_teammembers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `restaurant_testimonial`
--
ALTER TABLE `restaurant_testimonial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `restaurant_user`
--
ALTER TABLE `restaurant_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `restaurant_user_groups`
--
ALTER TABLE `restaurant_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_user_user_permissions`
--
ALTER TABLE `restaurant_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

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
-- Constraints for table `dashboard_userdashboardmodule`
--
ALTER TABLE `dashboard_userdashboardmodule`
  ADD CONSTRAINT `dashboard_userdashbo_user_id_97c13132_fk_restauran` FOREIGN KEY (`user_id`) REFERENCES `restaurant_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_restaurant_user_id` FOREIGN KEY (`user_id`) REFERENCES `restaurant_user` (`id`);

--
-- Constraints for table `jet_bookmark`
--
ALTER TABLE `jet_bookmark`
  ADD CONSTRAINT `jet_bookmark_user_id_8efdc332_fk_restaurant_user_id` FOREIGN KEY (`user_id`) REFERENCES `restaurant_user` (`id`);

--
-- Constraints for table `jet_pinnedapplication`
--
ALTER TABLE `jet_pinnedapplication`
  ADD CONSTRAINT `jet_pinnedapplication_user_id_7765bcf9_fk_restaurant_user_id` FOREIGN KEY (`user_id`) REFERENCES `restaurant_user` (`id`);

--
-- Constraints for table `restaurant_commentblog`
--
ALTER TABLE `restaurant_commentblog`
  ADD CONSTRAINT `restaurant_commentbl_blog_name_id_40fe8bc9_fk_restauran` FOREIGN KEY (`blog_name_id`) REFERENCES `restaurant_bloglist` (`id`);

--
-- Constraints for table `restaurant_commentdish`
--
ALTER TABLE `restaurant_commentdish`
  ADD CONSTRAINT `restaurant_commentdi_dish_name_id_8201b63f_fk_restauran` FOREIGN KEY (`dish_name_id`) REFERENCES `restaurant_populardishes` (`id`);

--
-- Constraints for table `restaurant_dishesmenu`
--
ALTER TABLE `restaurant_dishesmenu`
  ADD CONSTRAINT `restaurant_dishesmen_category_name_id_954a9b6d_fk_restauran` FOREIGN KEY (`category_name_id`) REFERENCES `restaurant_menucategory` (`id`);

--
-- Constraints for table `restaurant_populardishes`
--
ALTER TABLE `restaurant_populardishes`
  ADD CONSTRAINT `restaurant_populardi_category_name_id_b4c9f5a0_fk_restauran` FOREIGN KEY (`category_name_id`) REFERENCES `restaurant_menucategory` (`id`);

--
-- Constraints for table `restaurant_user_groups`
--
ALTER TABLE `restaurant_user_groups`
  ADD CONSTRAINT `restaurant_user_groups_group_id_9b3b7b47_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `restaurant_user_groups_user_id_c2e23689_fk_restaurant_user_id` FOREIGN KEY (`user_id`) REFERENCES `restaurant_user` (`id`);

--
-- Constraints for table `restaurant_user_user_permissions`
--
ALTER TABLE `restaurant_user_user_permissions`
  ADD CONSTRAINT `restaurant_user_user_permission_id_ecd131cc_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `restaurant_user_user_user_id_45fe2d1c_fk_restauran` FOREIGN KEY (`user_id`) REFERENCES `restaurant_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
