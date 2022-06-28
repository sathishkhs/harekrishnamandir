-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2021 at 06:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reuse_clean_ci_base`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menuitems`
--

CREATE TABLE `admin_menuitems` (
  `menuitem_id` int(10) NOT NULL,
  `menu_id` int(11) NOT NULL DEFAULT 1,
  `parent_menuitem_id` int(11) DEFAULT 0,
  `menuitem_target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menuitem_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menuitem_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menuitem_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_menu_sub_heading_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  `status_ind` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=Active, 0=Inactive',
  `created_date` datetime NOT NULL,
  `last_modified_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_menuitems`
--

INSERT INTO `admin_menuitems` (`menuitem_id`, `menu_id`, `parent_menuitem_id`, `menuitem_target`, `menuitem_link`, `menuitem_text`, `menuitem_icon`, `parent_menu_sub_heading_text`, `display_order`, `status_ind`, `created_date`, `last_modified_date`, `created_by`, `modified_by`) VALUES
(1, 1, NULL, 'NULL', '#', 'Admin Users', 'lni lni-users', 'Control Admin Users', 1, 1, '2013-12-16 00:00:00', '2021-09-05 15:28:18', 1, 1),
(2, 1, 1, 'NULL', 'adminusers', 'Admin Users List', '', '', 0, 1, '2013-12-16 00:00:00', '2021-02-16 15:39:09', 1, 1),
(3, 1, 1, 'NULL', 'adminusers/add', 'Add New Admin User', '', '', 1, 1, '2013-12-16 00:00:00', '2021-02-16 15:39:14', 1, 1),
(4, 1, NULL, 'NULL', '#', 'Email templates', 'lni lni-envelope', 'Manage Email Templates', 2, 1, '2013-12-16 00:00:00', '2021-09-05 15:28:23', 1, 1),
(5, 1, 4, 'NULL', 'emailtemplates/add', 'Add New Email Template', '', '', 0, 1, '2013-12-16 00:00:00', '2021-02-15 12:42:37', 1, 1),
(6, 1, 4, 'NULL', 'emailtemplates', 'Email Templates List', '', '', 1, 1, '2013-12-16 00:00:00', '2018-05-19 05:22:10', 1, 1),
(7, 1, NULL, NULL, '#', 'FAQ', 'lni lni-question-circle', 'Manage FAQ\'s', 7, 1, '0000-00-00 00:00:00', '2021-09-05 15:28:29', 1, 1),
(8, 1, 7, 'faq', 'faq', 'FAQ List', '', '', 1, 1, '0000-00-00 00:00:00', '2017-06-07 22:55:47', 1, 1),
(9, 1, 7, 'faq_add', 'faq/add', 'Add FAQ', '', '', 1, 1, '2016-12-14 16:49:59', '2017-06-07 22:55:50', 1, 1),
(10, 1, 7, 'faq_category', 'faq_category', 'category', '', '', 1, 1, '2016-12-14 16:49:59', '2017-06-21 19:59:47', 1, 1),
(11, 1, 7, 'faq_category_add', 'faq_category/add', 'add faq category', '', '', 1, 1, '2016-12-14 16:49:59', '2017-06-21 19:59:47', 1, 1),
(18, 1, NULL, 'NULL', '#', 'Master', 'lni lni-cogs', 'Control Panel', 3, 1, '2013-12-16 00:00:00', '2021-09-05 15:28:34', 1, 1),
(19, 1, 18, 'NULL', 'master/countries', 'Country List', '', '', 1, 1, '2013-12-16 00:00:00', '2020-08-15 11:15:07', 1, 1),
(20, 1, 18, 'NULL', 'master/states', 'States List', '', '', 1, 1, '2013-12-16 00:00:00', '2020-08-15 11:14:48', 1, 1),
(21, 1, 18, 'NULL', 'master/cities', 'Cities List', '', '', 1, 1, '2013-12-16 00:00:00', '2020-08-15 11:14:37', 1, 1),
(22, 1, 18, 'NULL', 'master/banners', 'Banner', '', '', 1, 1, '2013-12-16 00:00:00', '2020-09-04 02:32:29', 1, 1),
(23, 1, 18, 'NULL', 'master/menuitems', 'Header Menu', '', '', 1, 1, '2013-12-16 00:00:00', '2020-09-02 04:37:33', 1, 1),
(24, 1, 18, 'NULL', 'master/pages', 'Pages ', '', '', 1, 1, '2013-12-16 00:00:00', '2020-08-13 04:57:16', 1, 1),
(25, 1, 18, 'NULL', 'master/settings', 'Settings', '', '', 1, 1, '2013-12-16 00:00:00', '2020-08-13 04:57:16', 1, 1),
(39, 1, 18, 'NULL', 'master/form', 'Forms', '', '', 1, 1, '2013-12-16 00:00:00', '2020-12-15 23:00:29', 1, 1),
(50, 1, NULL, 'NULL', '#', 'Testimonials', 'lni lni-quotation', 'Reviews & Ratings', 4, 1, '2013-12-16 00:00:00', '2021-09-05 15:28:39', 1, 1),
(51, 1, 50, 'NULL', 'testimonials/testimonials_add', 'Add Testimonial', '', '', 1, 1, '2013-12-16 00:00:00', '2020-12-23 06:40:16', 1, 1),
(52, 1, 50, 'NULL', 'testimonials', 'Testimonials List', '', '', 1, 1, '2013-12-16 00:00:00', '2020-12-23 06:40:16', 1, 1),
(53, 1, NULL, 'NULL', '#', 'Posts', 'lni lni-blogger', 'News Section', 5, 1, '2013-12-16 00:00:00', '2021-09-05 15:28:43', 1, 1),
(54, 1, 53, 'NULL', 'blog/index', 'Posts List', '', '', 1, 1, '2013-12-16 00:00:00', '2021-01-03 09:23:21', 1, 1),
(55, 1, 53, 'NULL', 'blog/post_add', 'Add Post', '', '', 1, 1, '2013-12-16 00:00:00', '2021-01-03 09:23:46', 1, 1),
(56, 1, 53, 'NULL', 'blog/category_view', 'Blog Categories', '', '', 1, 1, '2013-12-16 00:00:00', '2021-01-03 09:23:46', 1, 1),
(57, 1, 53, 'NULL', 'blog/category_add', 'Add Blog Category', '', '', 1, 1, '2013-12-16 00:00:00', '2021-01-03 09:23:46', 1, 1),
(58, 1, NULL, 'NULL', '#', 'Admin Roles', 'lni lni-crown', 'Control Roles', 0, 1, '2013-12-16 00:00:00', '2021-09-05 15:29:03', 1, 1),
(59, 1, 58, 'NULL', 'adminroles', 'Admin Roles', '', '', 0, 1, '2013-12-16 00:00:00', '2021-02-15 12:41:52', 1, 1),
(60, 1, 58, 'NULL', 'adminroles/add', 'Add Admin Roles', '', '', 0, 1, '2013-12-16 00:00:00', '2021-02-15 12:41:54', 1, 1),
(61, 1, NULL, 'NULL', '#', 'Donations', 'lni lni-crown', '', 5, 1, '2013-12-16 00:00:00', '2021-11-07 14:29:28', 1, 1),
(62, 1, 61, 'NULL', 'donations', 'Donations List', '', '', 1, 1, '2013-12-16 00:00:00', '2021-11-07 14:29:49', 1, 1),
(63, 1, NULL, 'NULL', '#', 'Forms', 'fa fa-file-invoice', '', 6, 1, '2013-12-16 00:00:00', '2021-11-07 14:31:00', 1, 1),
(64, 1, 63, 'NULL', 'forms', 'Forms List', '', '', 1, 1, '2013-12-16 00:00:00', '2021-11-07 14:31:21', 1, 1),
(65, 1, 63, 'NULL', 'forms/form_add', 'Add Form', '', '', 1, 1, '2013-12-16 00:00:00', '2021-11-07 14:31:26', 1, 1),
(71, 1, NULL, 'NULL', '#', 'Gallery', 'fa fa-file', '', 6, 1, '2013-12-16 00:00:00', '2021-11-07 19:31:00', 1, 1),
(72, 1, 71, 'NULL', 'gallery', 'Gallery List', '', '', 1, 1, '2013-12-16 00:00:00', '2021-11-07 19:31:21', 1, 1),
(73, 1, 71, 'NULL', 'gallery/gallery_categories', 'Category List', '', '', 1, 1, '2013-12-16 00:00:00', '2021-11-07 19:31:21', 1, 1),
(74, 1, 71, 'NULL', 'gallery/gallery_images', 'Gallery Images List', '', '', 1, 1, '2013-12-16 00:00:00', '2021-11-07 19:31:21', 1, 1),
(75, 1, 18, 'NULL', 'master/impact_numbers', 'Impact Numbers', '', '', 1, 1, '2013-12-16 00:00:00', '2020-12-15 23:00:29', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_ind` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=Inactive',
  `created_date` datetime NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`role_id`, `role_name`, `status_ind`, `created_date`, `modified_date`, `created_by`, `modified_by`) VALUES
(1, 'Super Admin', 1, '2014-07-23 16:13:07', '2014-07-24 00:43:07', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles_accesses`
--

CREATE TABLE `admin_roles_accesses` (
  `role_id` int(11) NOT NULL,
  `menuitem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_roles_accesses`
--

INSERT INTO `admin_roles_accesses` (`role_id`, `menuitem_id`) VALUES
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(3, 26),
(3, 39),
(4, 7),
(4, 8),
(4, 53),
(4, 54),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 75),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 71),
(1, 72),
(1, 73),
(1, 74);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `user_id` int(10) NOT NULL,
  `role_id` tinyint(1) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_number` bigint(20) NOT NULL,
  `profile_pic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_session_id` int(11) NOT NULL,
  `status_ind` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=Active, 0=Inactive',
  `created_date` datetime DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`user_id`, `role_id`, `username`, `password`, `first_name`, `last_name`, `email`, `mobile_number`, `profile_pic`, `user_session_id`, `status_ind`, `created_date`, `modified_date`, `created_by`, `modified_by`) VALUES
(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'User', 'admin@admin.com', 8688817994, 'profile_pic2886502.jpg', 0, 1, NULL, '2021-02-17 21:02:36', 1, 1),
(2, 1, 'accfuser', '59de63d7948f18a4d43d9f921b10ed13', 'Accf Admin', 'User', 'write2us@akshayachaitanya.org', 8928991161, '', 0, 1, '2021-12-03 22:07:26', '2021-12-04 03:07:26', 1, 1),
(3, 1, 'vikas', '5421791b53ec967224e7debcf954b4b9', 'Vikas ', 'Prachanda', 'vikas@akshayachaitanya.org', 9920424880, '', 0, 1, '2021-12-06 08:57:09', '2021-12-06 13:57:09', 1, 1),
(4, 1, 'linda', '1ab63740636e225060baf60da93bb33c', 'Linda', 'Linda', 'linda@akshayachaitanya.org', 1234567890, '', 0, 1, '2021-12-06 09:02:24', '2021-12-06 14:02:24', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_accesses`
--

CREATE TABLE `admin_users_accesses` (
  `user_id` int(11) NOT NULL,
  `menuitem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_users_accesses`
--

INSERT INTO `admin_users_accesses` (`user_id`, `menuitem_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 58),
(2, 59),
(2, 60),
(2, 61),
(2, 62),
(2, 71),
(2, 72),
(2, 73),
(2, 74),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(3, 58),
(3, 59),
(3, 60),
(3, 61),
(3, 62),
(3, 71),
(3, 72),
(3, 73),
(3, 74),
(4, 4),
(4, 6),
(4, 18),
(4, 25),
(4, 61),
(4, 62),
(4, 71),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 75),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 71),
(1, 72),
(1, 73),
(1, 74);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banner_id` int(11) NOT NULL,
  `banner_background_img_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banner_top_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banner_bottom_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_ind` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=Active, 0=Inactive',
  `created_date` datetime NOT NULL,
  `last_modified_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `layer1_text` text COLLATE utf8_unicode_ci NOT NULL,
  `layer2_text` text COLLATE utf8_unicode_ci NOT NULL,
  `layer3_text` text COLLATE utf8_unicode_ci NOT NULL,
  `layer1_button` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layer1_button_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layer2_button` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layer2_button_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layer3_button` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layer3_button_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state_id` int(11) NOT NULL,
  `status_ind` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`, `city_code`, `state_id`, `status_ind`, `created_date`, `modified_date`, `created_by`, `modified_by`) VALUES
(1, 'Bengaluru - HK Hill', 'blr-hk-hill', 1, 1, '0000-00-00 00:00:00', '2020-08-13 06:55:52', 1, NULL),
(2, 'Bengaluru -Vasanthapura', 'blr-vptn', 1, 1, '0000-00-00 00:00:00', '2015-11-27 03:38:40', 1, NULL),
(3, 'Ballari ', 'ballery', 1, 1, '0000-00-00 00:00:00', '2015-11-27 03:39:04', 1, NULL),
(4, 'Hubballi', 'hubli', 1, 1, '0000-00-00 00:00:00', '2015-11-27 03:42:22', 1, NULL),
(5, 'Mangaluru', 'mangaluru', 1, 1, '0000-00-00 00:00:00', '2015-11-27 03:39:42', 1, NULL),
(6, 'Mysuru', 'mysuru', 1, 1, '0000-00-00 00:00:00', '2015-11-27 03:39:59', 1, NULL),
(7, 'Gujarat', 'gj', 1, 1, '0000-00-00 00:00:00', '2015-11-27 03:40:24', 1, NULL),
(8, 'Vadodara ', 'vdr', 2, 1, '0000-00-00 00:00:00', '2015-11-27 03:41:23', 1, NULL),
(9, 'Surat', 'sut', 2, 1, '0000-00-00 00:00:00', '2015-11-27 03:41:23', 1, NULL),
(10, 'Vishakhapatnam', 'vskp', 8, 1, '0000-00-00 00:00:00', '2015-11-27 03:42:19', 1, NULL),
(11, 'Guwahati', 'guht', 21, 1, '0000-00-00 00:00:00', '2017-01-04 05:29:39', 1, NULL),
(12, 'Bhilai', 'bhilai', 11, 1, '0000-00-00 00:00:00', '2015-11-27 03:43:24', 1, NULL),
(13, 'Cuttack', 'ctk', 12, 1, NULL, '2015-11-27 03:43:45', NULL, NULL),
(14, 'Puri', 'puri', 12, 1, '0000-00-00 00:00:00', '2015-11-27 03:44:02', 1, NULL),
(15, 'Nayagarh', 'ngr', 12, 1, '0000-00-00 00:00:00', '2015-11-27 03:44:17', 1, NULL),
(16, 'Rourkela', 'rukla', 12, 1, '0000-00-00 00:00:00', '2015-11-27 03:44:32', 1, NULL),
(17, 'Jaipur', 'jpr', 9, 1, '0000-00-00 00:00:00', '2015-11-27 03:45:01', 1, NULL),
(18, 'Jodhpur', 'pdpr', 9, 1, NULL, '2016-12-29 05:13:48', NULL, NULL),
(19, 'Nathdwara', 'ntdr', 9, 1, '0000-00-00 00:00:00', '2015-11-27 03:47:06', 1, NULL),
(20, 'Baran', 'brn', 9, 1, '0000-00-00 00:00:00', '2015-11-27 03:47:18', 1, NULL),
(21, 'Chennai', 'cni', 4, 1, '0000-00-00 00:00:00', '2015-11-27 03:47:55', 1, NULL),
(22, 'Hyderabad', 'hyd', 44, 1, '0000-00-00 00:00:00', '2015-11-27 03:48:38', 1, NULL),
(23, 'Lucknow', 'luck', 24, 1, '0000-00-00 00:00:00', '2016-12-29 04:33:15', 1, NULL),
(24, 'Vrindavan', 'vrnd', 13, 1, '0000-00-00 00:00:00', '2015-11-27 03:49:25', 1, NULL),
(25, 'Ajmer', '', 9, 1, '2016-10-07 11:55:18', '2016-12-29 05:13:19', 1, 1),
(26, 'Bengaluru - HK Hill', '', 1, 1, '2016-10-25 16:54:58', '2016-10-25 05:54:58', 1, 1),
(27, 'Bengaluru', '', 1, 1, '2016-10-25 16:55:50', '2016-10-25 05:55:50', 1, 1),
(28, 'Tumkur', '', 1, 1, '2016-10-26 13:56:02', '2016-10-26 02:57:06', 2, 2),
(29, 'Dharwad', '580001', 1, 1, '2016-12-29 00:00:00', '2016-12-28 13:00:00', 1, 1),
(30, 'Dakshin Kannada', 'dks', 1, 1, '2016-12-29 00:00:00', '2016-12-28 13:00:00', 1, 1),
(31, 'Ahmedabad', 'ahm', 2, 1, '2016-12-29 00:00:00', '2016-12-28 13:00:00', 1, 1),
(32, 'Mathura', 'mth', 24, 1, '0000-00-00 00:00:00', '2016-12-29 04:33:15', 1, NULL),
(33, 'Durg (Bhilai)', 'durg', 22, 1, '0000-00-00 00:00:00', '2016-12-29 04:33:15', 1, NULL),
(34, 'Nagpur', 'nag', 33, 1, '2016-12-29 00:00:00', '2016-12-28 13:00:00', 1, 1),
(35, 'Kamrup Metropolitan (Guwahati)\r\n', 'kam', 21, 0, '2016-12-29 00:00:00', '2017-01-04 05:27:52', 1, 1),
(36, 'Rajsamand\r\n', 'raj', 9, 1, '0000-00-00 00:00:00', '2015-11-27 03:47:06', 1, NULL),
(37, 'Guntur (Mangalagiri)\r\n\r\n', 'gunt', 8, 1, '0000-00-00 00:00:00', '2015-11-27 03:47:06', 1, NULL),
(38, 'East Godavari (Kakinada)\r\n\r\n\r\n', 'kak', 8, 1, '0000-00-00 00:00:00', '2015-11-27 03:47:06', 1, NULL),
(39, 'Cuttack\r\n', 'cutk', 23, 1, '2016-12-29 00:00:00', '2016-12-28 13:00:00', 1, 1),
(40, 'Nayagarh', 'naya', 23, 1, '2016-12-29 00:00:00', '2016-12-28 13:00:00', 1, 1),
(41, 'Puri\r\n', 'puri', 23, 1, '2016-12-29 00:00:00', '2016-12-28 13:00:00', 1, 1),
(42, 'Sundergarh', 'sud', 23, 1, '2016-12-29 00:00:00', '2016-12-28 13:00:00', 1, 1),
(43, 'Bhubaneshwar\r\n', '', 23, 1, '2016-12-29 00:00:00', '2016-12-28 13:00:00', 1, 1),
(44, 'Kashirampara', '', 41, 1, '2017-05-09 16:11:48', '2017-05-09 05:11:48', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` int(11) NOT NULL,
  `session_id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `user_agent` text NOT NULL,
  `last_activity` varchar(255) NOT NULL,
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `session_id`, `ip_address`, `timestamp`, `data`, `user_agent`, `last_activity`, `user_data`) VALUES
(0, '', '::1', 1625843193, 'user_id|s:1:\"1\";role_id|s:1:\"1\";username|s:5:\"admin\";password|s:32:\"21232f297a57a5a743894a0e4a801fc3\";first_name|s:5:\"Admin\";last_name|s:4:\"User\";email|s:15:\"admin@admin.com\";phone_number|s:10:\"8688817994\";profile_pic|s:22:\"profile_pic2886502.jpg\";user_session_id|s:1:\"0\";status_ind|s:1:\"1\";created_date|N;modified_date|s:19:\"2021-02-18 02:32:36\";created_by|s:1:\"1\";modified_by|s:1:\"1\";lang_id|i:1;sidebar_menuitems|a:7:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"58\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:11:\"Admin Roles\";s:13:\"menuitem_icon\";s:9:\"lni-crown\";s:28:\"parent_menu_sub_heading_text\";s:13:\"Control Roles\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:53:00\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:2:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"59\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"58\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:10:\"adminroles\";s:13:\"menuitem_text\";s:11:\"Admin Roles\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-15 18:11:52\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"60\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"58\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:14:\"adminroles/add\";s:13:\"menuitem_text\";s:15:\"Add Admin Roles\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-15 18:11:54\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"1\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:11:\"Admin Users\";s:13:\"menuitem_icon\";s:9:\"lni-users\";s:28:\"parent_menu_sub_heading_text\";s:19:\"Control Admin Users\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:47:09\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:2:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"2\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"1\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:10:\"adminusers\";s:13:\"menuitem_text\";s:16:\"Admin Users List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-16 21:09:09\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"3\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"1\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:14:\"adminusers/add\";s:13:\"menuitem_text\";s:18:\"Add New Admin User\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-16 21:09:14\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:2;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"4\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:15:\"Email templates\";s:13:\"menuitem_icon\";s:12:\"lni-envelope\";s:28:\"parent_menu_sub_heading_text\";s:22:\"Manage Email Templates\";s:13:\"display_order\";s:1:\"2\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:51:34\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:2:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"5\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"4\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:18:\"emailtemplates/add\";s:13:\"menuitem_text\";s:22:\"Add New Email Template\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-15 18:12:37\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"6\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"4\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:14:\"emailtemplates\";s:13:\"menuitem_text\";s:20:\"Email Templates List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2018-05-19 10:52:10\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:3;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"18\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:6:\"Master\";s:13:\"menuitem_icon\";s:8:\"lni-cogs\";s:28:\"parent_menu_sub_heading_text\";s:13:\"Control Panel\";s:13:\"display_order\";s:1:\"3\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:51:56\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:8:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"19\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:16:\"master/countries\";s:13:\"menuitem_text\";s:12:\"Country List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-15 16:45:07\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"20\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:13:\"master/states\";s:13:\"menuitem_text\";s:11:\"States List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-15 16:44:48\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:2;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"21\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:13:\"master/cities\";s:13:\"menuitem_text\";s:11:\"Cities List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-15 16:44:37\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:3;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"22\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:14:\"master/banners\";s:13:\"menuitem_text\";s:6:\"Banner\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-09-04 08:02:29\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:4;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"23\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:16:\"master/menuitems\";s:13:\"menuitem_text\";s:11:\"Header Menu\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-09-02 10:07:33\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:5;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"24\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:12:\"master/pages\";s:13:\"menuitem_text\";s:6:\"Pages \";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-13 10:27:16\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:6;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"25\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:15:\"master/settings\";s:13:\"menuitem_text\";s:8:\"Settings\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-13 10:27:16\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:7;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"39\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:11:\"master/form\";s:13:\"menuitem_text\";s:5:\"Forms\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-12-16 04:30:29\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:4;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"50\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:12:\"Testimonials\";s:13:\"menuitem_icon\";s:13:\"lni-quotation\";s:28:\"parent_menu_sub_heading_text\";s:17:\"Reviews & Ratings\";s:13:\"display_order\";s:1:\"4\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:52:18\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:2:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"51\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"50\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:29:\"testimonials/testimonials_add\";s:13:\"menuitem_text\";s:15:\"Add Testimonial\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-12-23 12:10:16\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"52\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"50\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:12:\"testimonials\";s:13:\"menuitem_text\";s:17:\"Testimonials List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-12-23 12:10:16\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:5;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"53\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:5:\"Posts\";s:13:\"menuitem_icon\";s:11:\"lni-blogger\";s:28:\"parent_menu_sub_heading_text\";s:12:\"News Section\";s:13:\"display_order\";s:1:\"5\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:52:28\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:4:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"54\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"53\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:10:\"blog/index\";s:13:\"menuitem_text\";s:10:\"Posts List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-01-03 14:53:21\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"55\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"53\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:13:\"blog/post_add\";s:13:\"menuitem_text\";s:8:\"Add Post\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-01-03 14:53:46\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:2;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"56\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"53\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:18:\"blog/category_view\";s:13:\"menuitem_text\";s:15:\"Blog Categories\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-01-03 14:53:46\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:3;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"57\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"53\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:17:\"blog/category_add\";s:13:\"menuitem_text\";s:17:\"Add Blog Category\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-01-03 14:53:46\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:6;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"7\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";N;s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:3:\"FAQ\";s:13:\"menuitem_icon\";s:19:\"lni-question-circle\";s:28:\"parent_menu_sub_heading_text\";s:12:\"Manage FAQ\'s\";s:13:\"display_order\";s:1:\"7\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"0000-00-00 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:51:48\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:4:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"8\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"7\";s:15:\"menuitem_target\";s:3:\"faq\";s:13:\"menuitem_link\";s:3:\"faq\";s:13:\"menuitem_text\";s:8:\"FAQ List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"0000-00-00 00:00:00\";s:18:\"last_modified_date\";s:19:\"2017-06-08 04:25:47\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"9\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"7\";s:15:\"menuitem_target\";s:7:\"faq_add\";s:13:\"menuitem_link\";s:7:\"faq/add\";s:13:\"menuitem_text\";s:7:\"Add FAQ\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2016-12-14 16:49:59\";s:18:\"last_modified_date\";s:19:\"2017-06-08 04:25:50\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:2;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"10\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"7\";s:15:\"menuitem_target\";s:12:\"faq_category\";s:13:\"menuitem_link\";s:12:\"faq_category\";s:13:\"menuitem_text\";s:8:\"category\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2016-12-14 16:49:59\";s:18:\"last_modified_date\";s:19:\"2017-06-22 01:29:47\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:3;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"11\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"7\";s:15:\"menuitem_target\";s:16:\"faq_category_add\";s:13:\"menuitem_link\";s:16:\"faq_category/add\";s:13:\"menuitem_text\";s:16:\"add faq category\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2016-12-14 16:49:59\";s:18:\"last_modified_date\";s:19:\"2017-06-22 01:29:47\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}}languages|a:1:{i:0;O:8:\"stdClass\":11:{s:7:\"lang_id\";s:1:\"1\";s:9:\"lang_code\";s:2:\"en\";s:9:\"lang_name\";s:7:\"English\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"0000-00-00 00:00:00\";s:10:\"created_by\";s:1:\"0\";s:18:\"last_modified_date\";s:19:\"2014-04-17 07:20:27\";s:11:\"modified_by\";s:1:\"1\";s:13:\"display_order\";s:1:\"1\";s:18:\"last_modified_user\";s:5:\"admin\";s:12:\"created_user\";N;}}', '', '', ''),
(1, '', '::1', 1625732969, '', '', '', ''),
(2, '', '::1', 1625843173, '', '', '', ''),
(3, '', '::1', 1625841082, 'user_id|s:1:\"1\";role_id|s:1:\"1\";username|s:5:\"admin\";password|s:32:\"21232f297a57a5a743894a0e4a801fc3\";first_name|s:5:\"Admin\";last_name|s:4:\"User\";email|s:15:\"admin@admin.com\";phone_number|s:10:\"8688817994\";profile_pic|s:22:\"profile_pic2886502.jpg\";user_session_id|s:1:\"0\";status_ind|s:1:\"1\";created_date|N;modified_date|s:19:\"2021-02-18 02:32:36\";created_by|s:1:\"1\";modified_by|s:1:\"1\";lang_id|i:1;sidebar_menuitems|a:7:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"58\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:11:\"Admin Roles\";s:13:\"menuitem_icon\";s:9:\"lni-crown\";s:28:\"parent_menu_sub_heading_text\";s:13:\"Control Roles\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:53:00\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:2:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"59\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"58\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:10:\"adminroles\";s:13:\"menuitem_text\";s:11:\"Admin Roles\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-15 18:11:52\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"60\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"58\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:14:\"adminroles/add\";s:13:\"menuitem_text\";s:15:\"Add Admin Roles\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-15 18:11:54\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"1\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:11:\"Admin Users\";s:13:\"menuitem_icon\";s:9:\"lni-users\";s:28:\"parent_menu_sub_heading_text\";s:19:\"Control Admin Users\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:47:09\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:2:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"2\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"1\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:10:\"adminusers\";s:13:\"menuitem_text\";s:16:\"Admin Users List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-16 21:09:09\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"3\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"1\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:14:\"adminusers/add\";s:13:\"menuitem_text\";s:18:\"Add New Admin User\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-16 21:09:14\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:2;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"4\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:15:\"Email templates\";s:13:\"menuitem_icon\";s:12:\"lni-envelope\";s:28:\"parent_menu_sub_heading_text\";s:22:\"Manage Email Templates\";s:13:\"display_order\";s:1:\"2\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:51:34\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:2:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"5\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"4\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:18:\"emailtemplates/add\";s:13:\"menuitem_text\";s:22:\"Add New Email Template\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-15 18:12:37\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"6\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"4\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:14:\"emailtemplates\";s:13:\"menuitem_text\";s:20:\"Email Templates List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2018-05-19 10:52:10\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:3;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"18\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:6:\"Master\";s:13:\"menuitem_icon\";s:8:\"lni-cogs\";s:28:\"parent_menu_sub_heading_text\";s:13:\"Control Panel\";s:13:\"display_order\";s:1:\"3\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:51:56\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:8:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"19\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:16:\"master/countries\";s:13:\"menuitem_text\";s:12:\"Country List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-15 16:45:07\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"20\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:13:\"master/states\";s:13:\"menuitem_text\";s:11:\"States List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-15 16:44:48\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:2;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"21\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:13:\"master/cities\";s:13:\"menuitem_text\";s:11:\"Cities List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-15 16:44:37\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:3;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"22\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:14:\"master/banners\";s:13:\"menuitem_text\";s:6:\"Banner\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-09-04 08:02:29\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:4;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"23\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:16:\"master/menuitems\";s:13:\"menuitem_text\";s:11:\"Header Menu\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-09-02 10:07:33\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:5;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"24\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:12:\"master/pages\";s:13:\"menuitem_text\";s:6:\"Pages \";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-13 10:27:16\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:6;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"25\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:15:\"master/settings\";s:13:\"menuitem_text\";s:8:\"Settings\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-13 10:27:16\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:7;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"39\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:11:\"master/form\";s:13:\"menuitem_text\";s:5:\"Forms\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-12-16 04:30:29\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:4;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"50\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:12:\"Testimonials\";s:13:\"menuitem_icon\";s:13:\"lni-quotation\";s:28:\"parent_menu_sub_heading_text\";s:17:\"Reviews & Ratings\";s:13:\"display_order\";s:1:\"4\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:52:18\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:2:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"51\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"50\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:29:\"testimonials/testimonials_add\";s:13:\"menuitem_text\";s:15:\"Add Testimonial\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-12-23 12:10:16\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"52\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"50\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:12:\"testimonials\";s:13:\"menuitem_text\";s:17:\"Testimonials List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-12-23 12:10:16\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:5;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"53\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:5:\"Posts\";s:13:\"menuitem_icon\";s:11:\"lni-blogger\";s:28:\"parent_menu_sub_heading_text\";s:12:\"News Section\";s:13:\"display_order\";s:1:\"5\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:52:28\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:4:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"54\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"53\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:10:\"blog/index\";s:13:\"menuitem_text\";s:10:\"Posts List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-01-03 14:53:21\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"55\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"53\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:13:\"blog/post_add\";s:13:\"menuitem_text\";s:8:\"Add Post\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-01-03 14:53:46\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:2;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"56\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"53\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:18:\"blog/category_view\";s:13:\"menuitem_text\";s:15:\"Blog Categories\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-01-03 14:53:46\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:3;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"57\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"53\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:17:\"blog/category_add\";s:13:\"menuitem_text\";s:17:\"Add Blog Category\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-01-03 14:53:46\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:6;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"7\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";N;s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:3:\"FAQ\";s:13:\"menuitem_icon\";s:19:\"lni-question-circle\";s:28:\"parent_menu_sub_heading_text\";s:12:\"Manage FAQ\'s\";s:13:\"display_order\";s:1:\"7\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"0000-00-00 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:51:48\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:4:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"8\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"7\";s:15:\"menuitem_target\";s:3:\"faq\";s:13:\"menuitem_link\";s:3:\"faq\";s:13:\"menuitem_text\";s:8:\"FAQ List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"0000-00-00 00:00:00\";s:18:\"last_modified_date\";s:19:\"2017-06-08 04:25:47\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"9\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"7\";s:15:\"menuitem_target\";s:7:\"faq_add\";s:13:\"menuitem_link\";s:7:\"faq/add\";s:13:\"menuitem_text\";s:7:\"Add FAQ\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2016-12-14 16:49:59\";s:18:\"last_modified_date\";s:19:\"2017-06-08 04:25:50\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:2;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"10\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"7\";s:15:\"menuitem_target\";s:12:\"faq_category\";s:13:\"menuitem_link\";s:12:\"faq_category\";s:13:\"menuitem_text\";s:8:\"category\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2016-12-14 16:49:59\";s:18:\"last_modified_date\";s:19:\"2017-06-22 01:29:47\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:3;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"11\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"7\";s:15:\"menuitem_target\";s:16:\"faq_category_add\";s:13:\"menuitem_link\";s:16:\"faq_category/add\";s:13:\"menuitem_text\";s:16:\"add faq category\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2016-12-14 16:49:59\";s:18:\"last_modified_date\";s:19:\"2017-06-22 01:29:47\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}}languages|a:1:{i:0;O:8:\"stdClass\":11:{s:7:\"lang_id\";s:1:\"1\";s:9:\"lang_code\";s:2:\"en\";s:9:\"lang_name\";s:7:\"English\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"0000-00-00 00:00:00\";s:10:\"created_by\";s:1:\"0\";s:18:\"last_modified_date\";s:19:\"2014-04-17 07:20:27\";s:11:\"modified_by\";s:1:\"1\";s:13:\"display_order\";s:1:\"1\";s:18:\"last_modified_user\";s:5:\"admin\";s:12:\"created_user\";N;}}', '', '', ''),
(5, '', '::1', 1625841082, '', '', '', '');
INSERT INTO `ci_sessions` (`id`, `session_id`, `ip_address`, `timestamp`, `data`, `user_agent`, `last_activity`, `user_data`) VALUES
(6, '', '::1', 1625843175, 'user_id|s:1:\"1\";role_id|s:1:\"1\";username|s:5:\"admin\";password|s:32:\"21232f297a57a5a743894a0e4a801fc3\";first_name|s:5:\"Admin\";last_name|s:4:\"User\";email|s:15:\"admin@admin.com\";phone_number|s:10:\"8688817994\";profile_pic|s:22:\"profile_pic2886502.jpg\";user_session_id|s:1:\"0\";status_ind|s:1:\"1\";created_date|N;modified_date|s:19:\"2021-02-18 02:32:36\";created_by|s:1:\"1\";modified_by|s:1:\"1\";lang_id|i:1;sidebar_menuitems|a:7:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"58\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:11:\"Admin Roles\";s:13:\"menuitem_icon\";s:9:\"lni-crown\";s:28:\"parent_menu_sub_heading_text\";s:13:\"Control Roles\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:53:00\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:2:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"59\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"58\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:10:\"adminroles\";s:13:\"menuitem_text\";s:11:\"Admin Roles\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-15 18:11:52\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"60\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"58\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:14:\"adminroles/add\";s:13:\"menuitem_text\";s:15:\"Add Admin Roles\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-15 18:11:54\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"1\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:11:\"Admin Users\";s:13:\"menuitem_icon\";s:9:\"lni-users\";s:28:\"parent_menu_sub_heading_text\";s:19:\"Control Admin Users\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:47:09\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:2:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"2\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"1\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:10:\"adminusers\";s:13:\"menuitem_text\";s:16:\"Admin Users List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-16 21:09:09\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"3\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"1\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:14:\"adminusers/add\";s:13:\"menuitem_text\";s:18:\"Add New Admin User\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-16 21:09:14\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:2;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"4\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:15:\"Email templates\";s:13:\"menuitem_icon\";s:12:\"lni-envelope\";s:28:\"parent_menu_sub_heading_text\";s:22:\"Manage Email Templates\";s:13:\"display_order\";s:1:\"2\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:51:34\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:2:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"5\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"4\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:18:\"emailtemplates/add\";s:13:\"menuitem_text\";s:22:\"Add New Email Template\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-15 18:12:37\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"6\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"4\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:14:\"emailtemplates\";s:13:\"menuitem_text\";s:20:\"Email Templates List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2018-05-19 10:52:10\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:3;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"18\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:6:\"Master\";s:13:\"menuitem_icon\";s:8:\"lni-cogs\";s:28:\"parent_menu_sub_heading_text\";s:13:\"Control Panel\";s:13:\"display_order\";s:1:\"3\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:51:56\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:8:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"19\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:16:\"master/countries\";s:13:\"menuitem_text\";s:12:\"Country List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-15 16:45:07\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"20\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:13:\"master/states\";s:13:\"menuitem_text\";s:11:\"States List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-15 16:44:48\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:2;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"21\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:13:\"master/cities\";s:13:\"menuitem_text\";s:11:\"Cities List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-15 16:44:37\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:3;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"22\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:14:\"master/banners\";s:13:\"menuitem_text\";s:6:\"Banner\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-09-04 08:02:29\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:4;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"23\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:16:\"master/menuitems\";s:13:\"menuitem_text\";s:11:\"Header Menu\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-09-02 10:07:33\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:5;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"24\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:12:\"master/pages\";s:13:\"menuitem_text\";s:6:\"Pages \";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-13 10:27:16\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:6;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"25\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:15:\"master/settings\";s:13:\"menuitem_text\";s:8:\"Settings\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-13 10:27:16\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:7;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"39\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:11:\"master/form\";s:13:\"menuitem_text\";s:5:\"Forms\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-12-16 04:30:29\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:4;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"50\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:12:\"Testimonials\";s:13:\"menuitem_icon\";s:13:\"lni-quotation\";s:28:\"parent_menu_sub_heading_text\";s:17:\"Reviews & Ratings\";s:13:\"display_order\";s:1:\"4\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:52:18\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:2:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"51\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"50\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:29:\"testimonials/testimonials_add\";s:13:\"menuitem_text\";s:15:\"Add Testimonial\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-12-23 12:10:16\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"52\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"50\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:12:\"testimonials\";s:13:\"menuitem_text\";s:17:\"Testimonials List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-12-23 12:10:16\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:5;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"53\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:5:\"Posts\";s:13:\"menuitem_icon\";s:11:\"lni-blogger\";s:28:\"parent_menu_sub_heading_text\";s:12:\"News Section\";s:13:\"display_order\";s:1:\"5\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:52:28\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:4:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"54\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"53\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:10:\"blog/index\";s:13:\"menuitem_text\";s:10:\"Posts List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-01-03 14:53:21\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"55\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"53\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:13:\"blog/post_add\";s:13:\"menuitem_text\";s:8:\"Add Post\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-01-03 14:53:46\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:2;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"56\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"53\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:18:\"blog/category_view\";s:13:\"menuitem_text\";s:15:\"Blog Categories\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-01-03 14:53:46\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:3;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"57\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"53\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:17:\"blog/category_add\";s:13:\"menuitem_text\";s:17:\"Add Blog Category\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-01-03 14:53:46\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:6;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"7\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";N;s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:3:\"FAQ\";s:13:\"menuitem_icon\";s:19:\"lni-question-circle\";s:28:\"parent_menu_sub_heading_text\";s:12:\"Manage FAQ\'s\";s:13:\"display_order\";s:1:\"7\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"0000-00-00 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:51:48\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:4:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"8\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"7\";s:15:\"menuitem_target\";s:3:\"faq\";s:13:\"menuitem_link\";s:3:\"faq\";s:13:\"menuitem_text\";s:8:\"FAQ List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"0000-00-00 00:00:00\";s:18:\"last_modified_date\";s:19:\"2017-06-08 04:25:47\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"9\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"7\";s:15:\"menuitem_target\";s:7:\"faq_add\";s:13:\"menuitem_link\";s:7:\"faq/add\";s:13:\"menuitem_text\";s:7:\"Add FAQ\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2016-12-14 16:49:59\";s:18:\"last_modified_date\";s:19:\"2017-06-08 04:25:50\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:2;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"10\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"7\";s:15:\"menuitem_target\";s:12:\"faq_category\";s:13:\"menuitem_link\";s:12:\"faq_category\";s:13:\"menuitem_text\";s:8:\"category\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2016-12-14 16:49:59\";s:18:\"last_modified_date\";s:19:\"2017-06-22 01:29:47\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:3;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"11\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"7\";s:15:\"menuitem_target\";s:16:\"faq_category_add\";s:13:\"menuitem_link\";s:16:\"faq_category/add\";s:13:\"menuitem_text\";s:16:\"add faq category\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2016-12-14 16:49:59\";s:18:\"last_modified_date\";s:19:\"2017-06-22 01:29:47\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}}', '', '', ''),
(7, '', '::1', 1625843015, '', '', '', ''),
(25, '', '::1', 1625825557, '', '', '', ''),
(39, '', '::1', 1625843193, '', '', '', ''),
(67, '', '::1', 1625843181, '', '', '', ''),
(78, '', '::1', 1625841075, '', '', '', ''),
(85, '', '::1', 1625843015, '', '', '', ''),
(98, '', '::1', 1625841077, 'user_id|s:1:\"1\";role_id|s:1:\"1\";username|s:5:\"admin\";password|s:32:\"21232f297a57a5a743894a0e4a801fc3\";first_name|s:5:\"Admin\";last_name|s:4:\"User\";email|s:15:\"admin@admin.com\";phone_number|s:10:\"8688817994\";profile_pic|s:22:\"profile_pic2886502.jpg\";user_session_id|s:1:\"0\";status_ind|s:1:\"1\";created_date|N;modified_date|s:19:\"2021-02-18 02:32:36\";created_by|s:1:\"1\";modified_by|s:1:\"1\";lang_id|i:1;sidebar_menuitems|a:7:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"58\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:11:\"Admin Roles\";s:13:\"menuitem_icon\";s:9:\"lni-crown\";s:28:\"parent_menu_sub_heading_text\";s:13:\"Control Roles\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:53:00\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:2:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"59\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"58\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:10:\"adminroles\";s:13:\"menuitem_text\";s:11:\"Admin Roles\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-15 18:11:52\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"60\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"58\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:14:\"adminroles/add\";s:13:\"menuitem_text\";s:15:\"Add Admin Roles\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-15 18:11:54\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"1\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:11:\"Admin Users\";s:13:\"menuitem_icon\";s:9:\"lni-users\";s:28:\"parent_menu_sub_heading_text\";s:19:\"Control Admin Users\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:47:09\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:2:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"2\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"1\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:10:\"adminusers\";s:13:\"menuitem_text\";s:16:\"Admin Users List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-16 21:09:09\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"3\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"1\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:14:\"adminusers/add\";s:13:\"menuitem_text\";s:18:\"Add New Admin User\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-16 21:09:14\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:2;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"4\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:15:\"Email templates\";s:13:\"menuitem_icon\";s:12:\"lni-envelope\";s:28:\"parent_menu_sub_heading_text\";s:22:\"Manage Email Templates\";s:13:\"display_order\";s:1:\"2\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:51:34\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:2:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"5\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"4\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:18:\"emailtemplates/add\";s:13:\"menuitem_text\";s:22:\"Add New Email Template\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"0\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-15 18:12:37\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"6\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"4\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:14:\"emailtemplates\";s:13:\"menuitem_text\";s:20:\"Email Templates List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2018-05-19 10:52:10\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:3;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"18\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:6:\"Master\";s:13:\"menuitem_icon\";s:8:\"lni-cogs\";s:28:\"parent_menu_sub_heading_text\";s:13:\"Control Panel\";s:13:\"display_order\";s:1:\"3\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:51:56\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:8:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"19\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:16:\"master/countries\";s:13:\"menuitem_text\";s:12:\"Country List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-15 16:45:07\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"20\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:13:\"master/states\";s:13:\"menuitem_text\";s:11:\"States List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-15 16:44:48\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:2;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"21\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:13:\"master/cities\";s:13:\"menuitem_text\";s:11:\"Cities List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-15 16:44:37\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:3;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"22\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:14:\"master/banners\";s:13:\"menuitem_text\";s:6:\"Banner\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-09-04 08:02:29\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:4;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"23\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:16:\"master/menuitems\";s:13:\"menuitem_text\";s:11:\"Header Menu\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-09-02 10:07:33\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:5;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"24\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:12:\"master/pages\";s:13:\"menuitem_text\";s:6:\"Pages \";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-13 10:27:16\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:6;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"25\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:15:\"master/settings\";s:13:\"menuitem_text\";s:8:\"Settings\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-08-13 10:27:16\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:7;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"39\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"18\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:11:\"master/form\";s:13:\"menuitem_text\";s:5:\"Forms\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-12-16 04:30:29\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:4;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"50\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:12:\"Testimonials\";s:13:\"menuitem_icon\";s:13:\"lni-quotation\";s:28:\"parent_menu_sub_heading_text\";s:17:\"Reviews & Ratings\";s:13:\"display_order\";s:1:\"4\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:52:18\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:2:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"51\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"50\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:29:\"testimonials/testimonials_add\";s:13:\"menuitem_text\";s:15:\"Add Testimonial\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-12-23 12:10:16\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"52\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"50\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:12:\"testimonials\";s:13:\"menuitem_text\";s:17:\"Testimonials List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2020-12-23 12:10:16\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:5;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"53\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:5:\"Posts\";s:13:\"menuitem_icon\";s:11:\"lni-blogger\";s:28:\"parent_menu_sub_heading_text\";s:12:\"News Section\";s:13:\"display_order\";s:1:\"5\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:52:28\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:4:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"54\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"53\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:10:\"blog/index\";s:13:\"menuitem_text\";s:10:\"Posts List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-01-03 14:53:21\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"55\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"53\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:13:\"blog/post_add\";s:13:\"menuitem_text\";s:8:\"Add Post\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-01-03 14:53:46\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:2;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"56\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"53\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:18:\"blog/category_view\";s:13:\"menuitem_text\";s:15:\"Blog Categories\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-01-03 14:53:46\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:3;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"57\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:2:\"53\";s:15:\"menuitem_target\";s:4:\"NULL\";s:13:\"menuitem_link\";s:17:\"blog/category_add\";s:13:\"menuitem_text\";s:17:\"Add Blog Category\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2013-12-16 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-01-03 14:53:46\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}i:6;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"7\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";N;s:15:\"menuitem_target\";N;s:13:\"menuitem_link\";s:1:\"#\";s:13:\"menuitem_text\";s:3:\"FAQ\";s:13:\"menuitem_icon\";s:19:\"lni-question-circle\";s:28:\"parent_menu_sub_heading_text\";s:12:\"Manage FAQ\'s\";s:13:\"display_order\";s:1:\"7\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"0000-00-00 00:00:00\";s:18:\"last_modified_date\";s:19:\"2021-02-17 15:51:48\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";a:4:{i:0;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"8\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"7\";s:15:\"menuitem_target\";s:3:\"faq\";s:13:\"menuitem_link\";s:3:\"faq\";s:13:\"menuitem_text\";s:8:\"FAQ List\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"0000-00-00 00:00:00\";s:18:\"last_modified_date\";s:19:\"2017-06-08 04:25:47\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:1;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:1:\"9\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"7\";s:15:\"menuitem_target\";s:7:\"faq_add\";s:13:\"menuitem_link\";s:7:\"faq/add\";s:13:\"menuitem_text\";s:7:\"Add FAQ\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2016-12-14 16:49:59\";s:18:\"last_modified_date\";s:19:\"2017-06-08 04:25:50\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:2;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"10\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"7\";s:15:\"menuitem_target\";s:12:\"faq_category\";s:13:\"menuitem_link\";s:12:\"faq_category\";s:13:\"menuitem_text\";s:8:\"category\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2016-12-14 16:49:59\";s:18:\"last_modified_date\";s:19:\"2017-06-22 01:29:47\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}i:3;O:8:\"stdClass\":16:{s:11:\"menuitem_id\";s:2:\"11\";s:7:\"menu_id\";s:1:\"1\";s:18:\"parent_menuitem_id\";s:1:\"7\";s:15:\"menuitem_target\";s:16:\"faq_category_add\";s:13:\"menuitem_link\";s:16:\"faq_category/add\";s:13:\"menuitem_text\";s:16:\"add faq category\";s:13:\"menuitem_icon\";s:0:\"\";s:28:\"parent_menu_sub_heading_text\";s:0:\"\";s:13:\"display_order\";s:1:\"1\";s:10:\"status_ind\";s:1:\"1\";s:12:\"created_date\";s:19:\"2016-12-14 16:49:59\";s:18:\"last_modified_date\";s:19:\"2017-06-22 01:29:47\";s:10:\"created_by\";s:1:\"1\";s:11:\"modified_by\";s:1:\"1\";s:7:\"role_id\";s:1:\"1\";s:8:\"submenus\";N;}}}}', '', '', ''),
(177, '', '::1', 1625843166, '', '', '', ''),
(359, '', '::1', 1625843173, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `first_name` varchar(120) NOT NULL,
  `last_name` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `website` varchar(225) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `corporate_giving`
--

CREATE TABLE `corporate_giving` (
  `corporate_giving_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `city` varchar(150) NOT NULL,
  `name_of_primary_contact_person` varchar(150) NOT NULL,
  `contact_number_of_primary_contact_person` varchar(150) NOT NULL,
  `email_of_primary_contact_person` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `created_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `status_ind` tinyint(4) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL DEFAULT 1,
  `modified_by` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `country_code`, `status_ind`, `created_date`, `modified_date`, `created_by`, `modified_by`) VALUES
(0, '0', '0', 1, '2020-08-16 07:48:40', '2020-08-16 02:18:40', 1, 1),
(1, 'India', 'IN', 1, '2013-12-19 13:19:13', '2020-08-13 09:34:25', 1, 1),
(2, 'United State Of America', 'US', 1, '2013-12-19 13:19:13', '2015-09-10 02:15:18', 1, 1),
(4, 'Andorra', 'AD', 1, '2013-12-19 13:19:13', '2015-09-10 02:15:23', 1, 1),
(5, 'Argentina', 'AR', 1, '2013-12-19 13:19:13', '2015-09-10 02:15:29', 1, 1),
(6, 'Australia', 'AU', 1, '2013-12-19 13:19:13', '2015-09-10 02:15:33', 1, 1),
(7, 'Bangladesh', 'BD', 1, '2013-12-19 13:19:13', '2015-09-10 02:15:38', 1, 1),
(8, 'Cambodia', 'KH', 1, '2013-12-19 13:19:13', '2015-09-10 02:15:42', 1, 1),
(9, 'Canada', 'CA', 1, '2013-12-19 13:19:13', '2015-09-10 02:16:10', 1, 1),
(10, 'China', 'CN', 1, '2013-12-19 13:19:13', '2015-09-10 02:16:14', 1, 1),
(11, 'Colombia', 'CO', 1, '2013-12-19 13:19:13', '2015-09-10 02:16:18', 1, 1),
(12, 'Cuba', 'CU', 1, '2013-12-19 13:19:13', '2015-09-10 02:16:23', 1, 1),
(13, 'France', 'FR', 1, '2013-12-19 13:19:13', '2015-09-10 02:16:30', 1, 1),
(14, 'United Kingdom', 'GB', 1, '2013-12-19 13:19:13', '2015-09-10 02:16:33', 1, 1),
(15, 'Japan', 'JP', 1, '2013-12-19 13:19:13', '2015-09-10 02:16:41', 1, 1),
(16, 'Mexico', 'MX', 1, '2013-12-19 13:19:13', '2015-09-10 02:16:50', 1, 1),
(18, 'Vatican City', 'VA', 1, '2013-12-19 13:19:13', '2015-09-10 02:16:56', 1, 1),
(19, 'Afghanistan', 'AF', 1, '2014-06-30 12:15:16', '2015-09-10 02:17:00', 1, 1),
(20, 'Albania', 'AL', 1, '2014-06-30 12:15:16', '2015-09-10 02:17:03', 1, 1),
(21, 'Antarctica', 'AQ', 1, '2014-06-30 12:15:16', '2015-09-10 02:17:07', 1, 1),
(22, 'Algeria', 'DZ', 1, '2014-06-30 12:15:16', '2015-09-10 02:17:49', 1, 1),
(23, 'American Samoa', 'AS', 1, '2014-06-30 12:15:16', '2015-09-10 02:17:53', 1, 1),
(24, 'Angola', 'AO', 1, '2014-06-30 12:15:16', '2015-09-10 02:17:59', 1, 1),
(25, 'Antigua and Barbuda', 'AC', 1, '2014-06-30 12:15:16', '2015-09-10 02:18:04', 1, 1),
(26, 'Azerbaijan', 'AZ', 1, '2014-06-30 12:15:16', '2015-09-10 02:18:09', 1, 1),
(27, 'Austria', 'AT', 1, '2014-06-30 12:15:16', '2015-09-10 02:18:13', 1, 1),
(28, 'Bahamas', 'BS', 1, '2014-06-30 12:15:16', '2015-09-10 02:18:19', 1, 1),
(29, 'Bahrain', 'BH', 1, '2014-06-30 12:15:16', '2015-09-10 02:18:24', 1, 1),
(30, 'Armenia', 'AM', 1, '2014-06-30 12:15:16', '2015-09-10 02:18:29', 1, 1),
(31, 'Barbados', 'BB', 1, '2014-06-30 12:15:16', '2015-09-10 02:18:33', 1, 1),
(32, 'Belgium', 'BE', 1, '2014-06-30 12:15:16', '2015-09-10 02:18:39', 1, 1),
(33, 'Bermuda', 'BM', 1, '2014-06-30 12:15:16', '2015-09-10 02:19:30', 1, 1),
(34, 'Bhutan', 'BT', 1, '2014-06-30 12:15:16', '2015-09-10 02:20:02', 1, 1),
(35, 'Bolivia, Plurinational State Of', 'BO', 1, '2014-06-30 12:15:16', '2015-09-10 02:20:06', 1, 1),
(36, 'Bosnia and Herzegovina', 'BA', 1, '2014-06-30 12:15:16', '2015-09-10 02:20:12', 1, 1),
(37, 'Botswana', 'BW', 1, '2014-06-30 12:15:16', '2015-09-10 02:20:19', 1, 1),
(38, 'Bouvet Island', '', 1, '2014-06-30 12:15:16', '2014-06-29 19:45:16', 1, 1),
(39, 'Brazil', 'BR', 1, '2014-06-30 12:15:16', '2015-09-10 02:21:10', 1, 1),
(40, 'Belize', 'BZ', 1, '2014-06-30 12:15:16', '2015-09-10 02:21:14', 1, 1),
(41, 'British Indian Ocean Territory', 'IO', 1, '2014-06-30 12:15:16', '2015-09-10 02:21:17', 1, 1),
(42, 'Solomon Islands', 'SB', 1, '2014-06-30 12:15:16', '2015-09-10 02:21:26', 1, 1),
(43, 'Virgin Islands, British', 'VG', 1, '2014-06-30 12:15:16', '2015-09-10 02:26:20', 1, 1),
(44, 'Brunei Darussalam', 'BN', 1, '2014-06-30 12:15:16', '2015-09-10 02:26:37', 1, 1),
(45, 'Bulgaria', 'BG', 1, '2014-06-30 12:15:16', '2015-09-10 02:26:41', 1, 1),
(46, 'Myanmar', 'MM', 1, '2014-06-30 12:15:16', '2015-09-10 02:26:44', 1, 1),
(47, 'Burundi', 'BI', 1, '2014-06-30 12:15:16', '2015-09-10 02:26:48', 1, 1),
(48, 'Belarus', 'BY', 1, '2014-06-30 12:15:16', '2015-09-10 02:26:54', 1, 1),
(49, 'Cameroon', 'CM', 1, '2014-06-30 12:15:16', '2015-09-10 02:26:59', 1, 1),
(50, 'Cape Verde', 'CV', 1, '2014-06-30 12:15:16', '2015-09-10 02:27:03', 1, 1),
(51, 'Cayman Islands', 'KY', 1, '2014-06-30 12:15:16', '2015-09-10 02:27:09', 1, 1),
(52, 'Central African Republic', 'CF', 1, '2014-06-30 12:15:16', '2015-09-10 02:27:13', 1, 1),
(53, 'Sri Lanka', 'LK', 1, '2014-06-30 12:15:16', '2015-09-10 02:27:18', 1, 1),
(54, 'Chad', 'TD', 1, '2014-06-30 12:15:16', '2015-09-10 02:27:22', 1, 1),
(55, 'Chile', 'CL', 1, '2014-06-30 12:15:16', '2015-09-10 02:27:27', 1, 1),
(56, 'Taiwan, Province Of China', 'TW', 1, '2014-06-30 12:15:16', '2015-09-10 02:27:31', 1, 1),
(57, 'Christmas Island', 'CX', 1, '2014-06-30 12:15:16', '2015-09-10 02:27:36', 1, 1),
(58, 'Cocos (Keeling) Islands', 'CC', 1, '2014-06-30 12:15:16', '2015-09-10 02:27:40', 1, 1),
(59, 'Comoros', 'KM', 1, '2014-06-30 12:15:16', '2015-09-10 02:27:44', 1, 1),
(60, 'Mayotte', 'YT', 1, '2014-06-30 12:15:16', '2015-09-10 02:27:50', 1, 1),
(61, 'Congo', '', 1, '2014-06-30 12:15:16', '2014-06-29 19:45:16', 1, 1),
(62, 'Republic of the Congo', 'CD', 1, '2014-06-30 12:15:16', '2015-09-10 02:28:31', 1, 1),
(63, 'Cook Islands', 'CK', 1, '2014-06-30 12:15:16', '2015-09-10 02:28:43', 1, 1),
(64, 'Costa Rica', 'CR', 1, '2014-06-30 12:15:16', '2015-09-10 02:28:50', 1, 1),
(65, 'Croatia', 'HR', 1, '2014-06-30 12:15:16', '2015-09-10 02:28:54', 1, 1),
(66, 'Cyprus', 'CY', 1, '2014-06-30 12:15:16', '2015-09-10 02:28:58', 1, 1),
(67, 'Czech Republic', 'CZ', 1, '2014-06-30 12:15:16', '2015-09-10 02:29:01', 1, 1),
(68, 'Benin', 'BJ', 1, '2014-06-30 12:15:16', '2015-09-10 02:29:07', 1, 1),
(69, 'Denmark', 'DK', 1, '2014-06-30 12:15:16', '2015-09-10 02:29:11', 1, 1),
(70, 'Dominica', 'DM', 1, '2014-06-30 12:15:16', '2015-09-10 02:29:26', 1, 1),
(71, 'Dominican Republic', 'DO', 1, '2014-06-30 12:15:16', '2015-09-10 02:29:34', 1, 1),
(72, 'Ecuador', 'EC', 1, '2014-06-30 12:15:16', '2015-09-10 02:29:37', 1, 1),
(73, 'El Salvador', 'SV', 1, '2014-06-30 12:15:16', '2015-09-10 02:29:42', 1, 1),
(74, 'Equatorial Guinea', 'GQ', 1, '2014-06-30 12:15:16', '2015-09-10 02:29:46', 1, 1),
(75, 'Ethiopia', 'ET', 1, '2014-06-30 12:15:16', '2015-09-10 02:29:52', 1, 1),
(76, 'Eritrea', 'ER', 1, '2014-06-30 12:15:16', '2015-09-10 02:29:56', 1, 1),
(77, 'Estonia', 'EE', 1, '2014-06-30 12:15:16', '2015-09-10 02:30:01', 1, 1),
(78, 'Faroe Islands', 'FO', 1, '2014-06-30 12:15:16', '2015-09-10 02:30:06', 1, 1),
(79, 'Falkland Islands  (Malvinas)', 'FK', 1, '2014-06-30 12:15:16', '2015-09-10 02:30:11', 1, 1),
(80, 'South Georgia and the South Sandwich Islands', '', 1, '2014-06-30 12:15:16', '2014-06-29 19:45:16', 1, 1),
(81, 'Fiji', 'FJ', 1, '2014-06-30 12:15:16', '2015-09-10 02:30:17', 1, 1),
(82, 'Finland', 'FI', 1, '2014-06-30 12:15:16', '2015-09-10 02:30:21', 1, 1),
(83, 'Åland Islands', '', 1, '2014-06-30 12:15:16', '2014-06-29 19:45:16', 1, 1),
(84, 'French Guiana', '', 1, '2014-06-30 12:15:16', '2014-06-29 19:45:16', 1, 1),
(85, 'French Polynesia', 'PF', 1, '2014-06-30 12:15:16', '2015-09-10 03:48:32', 1, 1),
(86, 'French Southern Territories', '', 1, '2014-06-30 12:15:16', '2014-06-29 19:45:16', 1, 1),
(87, 'Djibouti', 'DJ', 1, '2014-06-30 12:15:16', '2015-09-10 02:30:57', 1, 1),
(88, 'Gabon', 'GA', 1, '2014-06-30 12:15:16', '2015-09-10 02:31:02', 1, 1),
(89, 'Georgia', 'GE', 1, '2014-06-30 12:15:16', '2015-09-10 02:31:06', 1, 1),
(90, 'Gambia', 'GM', 1, '2014-06-30 12:15:16', '2015-09-10 03:48:49', 1, 1),
(91, 'Palestinian Territory, Occupied', 'PS', 1, '2014-06-30 12:15:16', '2015-09-10 02:31:29', 1, 1),
(92, 'Germany', 'DE', 1, '2014-06-30 12:15:16', '2015-09-10 02:31:35', 1, 1),
(93, 'Ghana', 'GH', 1, '2014-06-30 12:15:16', '2015-09-10 02:31:41', 1, 1),
(94, 'Gibraltar', 'GI', 1, '2014-06-30 12:15:16', '2015-09-10 02:31:46', 1, 1),
(95, 'Kiribati', 'KI', 1, '2014-06-30 12:15:16', '2015-09-10 02:31:51', 1, 1),
(96, 'Greece', 'GR', 1, '2014-06-30 12:15:16', '2015-09-10 02:31:55', 1, 1),
(97, 'Greenland', 'GL', 1, '2014-06-30 12:15:16', '2015-09-10 02:31:59', 1, 1),
(98, 'Grenada', 'GD', 1, '2014-06-30 12:15:16', '2015-09-10 03:01:06', 1, 1),
(99, 'Guadeloupe', '', 1, '2014-06-30 12:15:16', '2014-06-29 19:45:16', 1, 1),
(100, 'Guam', 'GU', 1, '2014-06-30 12:15:16', '2015-09-10 03:01:09', 1, 1),
(101, 'Guatemala', 'GT', 1, '2014-06-30 12:15:16', '2015-09-10 03:01:16', 1, 1),
(102, 'Guinea', 'GN', 1, '2014-06-30 12:15:16', '2015-09-10 03:01:24', 1, 1),
(103, 'Guyana', 'GY', 1, '2014-06-30 12:15:16', '2015-09-10 03:01:28', 1, 1),
(104, 'Haiti', 'HT', 1, '2014-06-30 12:15:16', '2015-09-10 03:01:35', 1, 1),
(105, 'Heard Island and McDonald Islands', '', 1, '2014-06-30 12:15:16', '2014-06-29 19:45:16', 1, 1),
(106, 'Holy See (Vatican City State)', '', 1, '2014-06-30 12:15:16', '2014-06-29 19:45:16', 1, 1),
(107, 'Honduras', 'HN', 1, '2014-06-30 12:15:16', '2015-09-10 03:01:42', 1, 1),
(108, 'Hong Kong', 'HK', 1, '2014-06-30 12:15:16', '2015-09-10 03:01:47', 1, 1),
(109, 'Hungary', 'HU', 1, '2014-06-30 12:15:16', '2015-09-10 03:01:52', 1, 1),
(110, 'Iceland', 'IS', 1, '2014-06-30 12:15:16', '2015-09-10 03:01:56', 1, 1),
(111, 'Indonesia', 'ID', 1, '2014-06-30 12:15:16', '2015-09-10 03:02:00', 1, 1),
(112, 'Iran', 'IR', 1, '2014-06-30 12:15:16', '2015-09-10 03:02:07', 1, 1),
(113, 'Iraq', 'IQ', 1, '2014-06-30 12:15:16', '2019-01-16 01:52:35', 1, 1),
(114, 'Ireland', 'IE', 1, '2014-06-30 12:15:16', '2015-09-10 03:02:19', 1, 1),
(115, 'Israel', 'IL', 1, '2014-06-30 12:15:16', '2015-09-10 03:02:24', 1, 1),
(116, 'Italy', 'IT', 1, '2014-06-30 12:15:16', '2015-09-10 03:02:28', 1, 1),
(117, 'Côte D\'Ivoire', '', 1, '2014-06-30 12:15:16', '2014-06-29 19:45:16', 1, 1),
(118, 'Jamaica', 'JM', 1, '2014-06-30 12:15:16', '2015-09-10 03:02:32', 1, 1),
(119, 'Kazakhstan', 'KZ', 1, '2014-06-30 12:15:16', '2015-09-10 03:02:37', 1, 1),
(120, 'Jordan', 'JO', 1, '2014-06-30 12:15:16', '2015-09-10 03:02:41', 1, 1),
(121, 'Kenya', 'KE', 1, '2014-06-30 12:15:16', '2015-09-10 03:02:48', 1, 1),
(122, 'Korea', 'KR', 1, '2014-06-30 12:15:16', '2015-09-10 03:03:26', 1, 1),
(123, 'Korea, Republic of', '', 1, '2014-06-30 12:15:16', '2014-06-29 19:45:16', 1, 1),
(124, 'Kuwait', 'KW', 1, '2014-06-30 12:15:16', '2015-09-10 03:03:41', 1, 1),
(125, 'Kyrgyzstan', 'KG', 1, '2014-06-30 12:15:16', '2015-09-10 03:03:46', 1, 1),
(126, 'Lao People\'s Democratic Republic', 'LA', 1, '2014-06-30 12:15:16', '2015-09-10 03:03:51', 1, 1),
(127, 'Lebanon', 'LB', 1, '2014-06-30 12:15:16', '2015-09-10 03:03:55', 1, 1),
(128, 'Lesotho', 'LS', 1, '2014-06-30 12:15:16', '2015-09-10 03:03:59', 1, 1),
(129, 'Latvia', 'LV', 1, '2014-06-30 12:15:16', '2015-09-10 03:04:04', 1, 1),
(130, 'Liberia', 'LR', 1, '2014-06-30 12:15:16', '2015-09-10 03:04:10', 1, 1),
(131, 'Libya', 'LY', 1, '2014-06-30 12:15:16', '2015-09-10 03:04:14', 1, 1),
(132, 'Liechtenstein', 'LI', 1, '2014-06-30 12:15:16', '2015-09-10 03:04:21', 1, 1),
(133, 'Lithuania', 'LT', 1, '2014-06-30 12:15:16', '2015-09-10 03:04:26', 1, 1),
(134, 'Luxembourg', 'LU', 1, '2014-06-30 12:15:16', '2015-09-10 03:04:31', 1, 1),
(135, 'Macao', 'MO', 1, '2014-06-30 12:15:16', '2015-09-10 03:04:35', 1, 1),
(136, 'Madagascar', 'MG', 1, '2014-06-30 12:15:16', '2015-09-10 03:04:39', 1, 1),
(137, 'Malawi', 'MW', 1, '2014-06-30 12:15:16', '2015-09-10 03:04:43', 1, 1),
(138, 'Malaysia', 'MY', 1, '2014-06-30 12:15:16', '2015-09-10 03:04:46', 1, 1),
(139, 'Maldives', 'MV', 1, '2014-06-30 12:15:16', '2015-09-10 03:04:52', 1, 1),
(140, 'Mali', 'ML', 1, '2014-06-30 12:15:16', '2015-09-10 03:04:55', 1, 1),
(141, 'Malta', 'MT', 1, '2014-06-30 12:15:16', '2015-09-10 03:05:02', 1, 1),
(142, 'Martinique', '', 1, '2014-06-30 12:15:16', '2014-06-29 19:45:16', 1, 1),
(143, 'Mauritania', 'MR', 1, '2014-06-30 12:15:16', '2015-09-10 03:05:12', 1, 1),
(144, 'Mauritius', 'MU', 1, '2014-06-30 12:15:16', '2015-09-10 03:05:20', 1, 1),
(145, 'Monaco', 'MC', 1, '2014-06-30 12:15:16', '2015-09-10 03:05:25', 1, 1),
(146, 'Mongolia', 'MN', 1, '2014-06-30 12:15:16', '2015-09-10 03:05:29', 1, 1),
(147, 'Republic of Moldova', 'MD', 1, '2014-06-30 12:15:16', '2015-09-10 03:05:43', 1, 1),
(148, 'Montenegro', 'ME', 1, '2014-06-30 12:15:16', '2015-09-10 03:05:47', 1, 1),
(149, 'Montserrat', 'MS', 1, '2014-06-30 12:15:16', '2015-09-10 03:05:53', 1, 1),
(150, 'Morocco', 'MA', 1, '2014-06-30 12:15:16', '2015-09-10 03:06:00', 1, 1),
(151, 'Mozambique', 'MZ', 1, '2014-06-30 12:15:16', '2015-09-10 03:06:05', 1, 1),
(152, 'Oman', 'OM', 1, '2014-06-30 12:15:16', '2015-09-10 03:06:09', 1, 1),
(153, 'Namibia', 'NA', 1, '2014-06-30 12:15:16', '2015-09-10 03:06:14', 1, 1),
(154, 'Nauru', 'NR', 1, '2014-06-30 12:15:16', '2015-09-10 03:06:19', 1, 1),
(155, 'Nepal', 'NP', 1, '2014-06-30 12:15:16', '2015-09-10 03:06:24', 1, 1),
(156, 'Netherlands', 'NL', 1, '2014-06-30 12:15:16', '2015-09-10 03:06:29', 1, 1),
(157, 'Curaçao', 'CW', 1, '2014-06-30 12:15:16', '2015-09-10 03:06:34', 1, 1),
(158, 'Aruba', 'AW', 1, '2014-06-30 12:15:16', '2015-09-10 03:06:39', 1, 1),
(159, 'Sint Maarten (Dutch part)', 'SX', 1, '2014-06-30 12:15:16', '2015-09-10 03:06:43', 1, 1),
(160, 'Bonaire, Sint Eustatius and Saba', '', 1, '2014-06-30 12:15:16', '2014-06-29 19:45:16', 1, 1),
(161, 'New Caledonia', 'NC', 1, '2014-06-30 12:15:16', '2015-09-10 03:06:49', 1, 1),
(162, 'Vanuatu', 'VU', 1, '2014-06-30 12:15:16', '2015-09-10 03:06:57', 1, 1),
(163, 'New Zealand', 'NZ', 1, '2014-06-30 12:15:16', '2015-09-10 03:07:02', 1, 1),
(164, 'Nicaragua', 'NI', 1, '2014-06-30 12:15:16', '2015-09-10 03:07:32', 1, 1),
(165, 'Niger', 'NE', 1, '2014-06-30 12:15:16', '2015-09-10 03:07:37', 1, 1),
(166, 'Nigeria', 'NG', 1, '2014-06-30 12:15:16', '2015-09-10 03:07:43', 1, 1),
(167, 'Niue', 'NU', 1, '2014-06-30 12:15:16', '2015-09-10 03:07:47', 1, 1),
(168, 'Norfolk Island', '', 1, '2014-06-30 12:15:16', '2014-06-29 19:45:16', 1, 1),
(169, 'Norway', 'NO', 1, '2014-06-30 12:15:16', '2015-09-10 03:07:54', 1, 1),
(170, 'Northern Mariana Islands', 'MP', 1, '2014-06-30 12:15:16', '2015-09-10 03:08:03', 1, 1),
(171, 'United States Minor Outlying Islands', '', 1, '2014-06-30 12:15:16', '2014-06-29 19:45:16', 1, 1),
(172, 'Micronesia, Federated States Of', 'FM', 1, '2014-06-30 12:15:16', '2015-09-10 03:08:30', 1, 1),
(173, 'Marshall Islands', 'MH', 1, '2014-06-30 12:15:16', '2015-09-10 03:08:37', 1, 1),
(174, 'Palau', 'PW', 1, '2014-06-30 12:15:16', '2015-09-10 03:09:34', 1, 1),
(175, 'Pakistan', 'PK', 1, '2014-06-30 12:15:16', '2015-09-10 03:09:38', 1, 1),
(176, 'Panama', 'PA', 1, '2014-06-30 12:15:16', '2015-09-10 03:09:43', 1, 1),
(177, 'Papua New Guinea', 'PG', 1, '2014-06-30 12:15:16', '2015-09-10 03:09:48', 1, 1),
(178, 'Paraguay', 'PY', 1, '2014-06-30 12:15:16', '2015-09-10 03:09:52', 1, 1),
(179, 'Peru', 'PE', 1, '2014-06-30 12:15:16', '2015-09-10 03:09:55', 1, 1),
(180, 'Philippines', 'PH', 1, '2014-06-30 12:15:16', '2015-09-10 03:10:00', 1, 1),
(181, 'Pitcairn', 'PN', 1, '2014-06-30 12:15:16', '2015-09-10 03:10:07', 1, 1),
(182, 'Poland', 'PL', 1, '2014-06-30 12:15:16', '2015-09-10 03:10:11', 1, 1),
(183, 'Portugal', 'PT', 1, '2014-06-30 12:15:16', '2015-09-10 03:10:32', 1, 1),
(184, 'Guinea-Bissau', 'GW', 1, '2014-06-30 12:15:16', '2015-09-10 03:10:38', 1, 1),
(185, 'Timor-Leste', '', 1, '2014-06-30 12:15:16', '2014-06-29 19:45:16', 1, 1),
(186, 'Puerto Rico', 'PR', 1, '2014-06-30 12:15:16', '2015-09-10 03:10:42', 1, 1),
(187, 'Qatar', 'QA', 1, '2014-06-30 12:15:16', '2015-09-10 03:10:46', 1, 1),
(188, 'Réunion', 'RE', 1, '2014-06-30 12:15:16', '2015-09-10 03:10:50', 1, 1),
(189, 'Romania', 'RO', 1, '2014-06-30 12:15:16', '2015-09-10 03:10:56', 1, 1),
(190, 'Russian Federation', 'RU', 1, '2014-06-30 12:15:16', '2015-09-10 03:11:04', 1, 1),
(191, 'Rwanda', 'RW', 1, '2014-06-30 12:15:16', '2015-09-10 03:11:09', 1, 1),
(192, 'Saint Barthélemy', 'BL', 1, '2014-06-30 12:15:16', '2015-09-10 03:11:12', 1, 1),
(193, 'Saint Helena, Ascension and Tristan Da Cunha', 'SH', 1, '2014-06-30 12:15:16', '2015-09-10 03:11:15', 1, 1),
(194, 'Saint Kitts And Nevis', 'KN', 1, '2014-06-30 12:15:16', '2015-09-10 03:11:21', 1, 1),
(195, 'Anguilla', 'AI', 1, '2014-06-30 12:15:16', '2015-09-10 03:11:27', 1, 1),
(196, 'Saint Lucia', 'LC', 1, '2014-06-30 12:15:16', '2015-09-10 03:11:32', 1, 1),
(197, 'Saint Martin (French Part)', 'MF', 1, '2014-06-30 12:15:16', '2015-09-10 03:11:36', 1, 1),
(198, 'Saint Pierre And Miquelon', 'PM', 1, '2014-06-30 12:15:16', '2015-09-10 03:11:40', 1, 1),
(199, 'Saint Vincent And The Grenadines', 'VC', 1, '2014-06-30 12:15:16', '2015-09-10 03:11:43', 1, 1),
(200, 'San Marino', 'SM', 1, '2014-06-30 12:15:16', '2015-09-10 03:11:50', 1, 1),
(201, 'Sao Tome and Principe', 'ST', 1, '2014-06-30 12:15:16', '2015-09-10 03:11:53', 1, 1),
(202, 'Saudi Arabia', 'SA', 1, '2014-06-30 12:15:16', '2015-09-10 03:11:58', 1, 1),
(203, 'Senegal', 'SN', 1, '2014-06-30 12:15:16', '2015-09-10 03:12:06', 1, 1),
(204, 'Serbia', 'RS', 1, '2014-06-30 12:15:16', '2015-09-10 03:12:09', 1, 1),
(205, 'Seychelles', 'SC', 1, '2014-06-30 12:15:16', '2015-09-10 03:12:35', 1, 1),
(206, 'Sierra Leone', 'SL', 1, '2014-06-30 12:15:16', '2015-09-10 03:12:40', 1, 1),
(207, 'Singapore', 'SG', 1, '2014-06-30 12:15:16', '2015-09-10 03:12:45', 1, 1),
(208, 'Slovakia', 'SK', 1, '2014-06-30 12:15:16', '2015-09-10 03:12:49', 1, 1),
(209, 'Viet Nam', 'VN', 1, '2014-06-30 12:15:16', '2015-09-10 03:12:53', 1, 1),
(210, 'Slovenia', 'SI', 1, '2014-06-30 12:15:16', '2015-09-10 03:12:59', 1, 1),
(211, 'Somalia', 'SO', 1, '2014-06-30 12:15:16', '2015-09-10 03:13:07', 1, 1),
(212, 'South Africa', 'ZA', 1, '2014-06-30 12:15:16', '2015-09-10 03:13:13', 1, 1),
(213, 'Zimbabwe', 'ZW', 1, '2014-06-30 12:15:16', '2015-09-10 03:13:24', 1, 1),
(214, 'Spain', 'ES', 1, '2014-06-30 12:15:16', '2015-09-10 03:13:29', 1, 1),
(215, 'South Sudan', 'SS', 1, '2014-06-30 12:15:16', '2015-09-10 03:13:35', 1, 1),
(216, 'Sudan', 'SD', 1, '2014-06-30 12:15:16', '2015-09-10 03:13:40', 1, 1),
(217, 'Western Sahara', 'EH', 1, '2014-06-30 12:15:16', '2015-09-10 03:13:46', 1, 1),
(218, 'Suriname', 'SR', 1, '2014-06-30 12:15:16', '2015-09-10 03:13:50', 1, 1),
(219, 'Svalbard And Jan Mayen', 'SJ', 1, '2014-06-30 12:15:16', '2015-09-10 03:13:54', 1, 1),
(220, 'Swaziland', 'SZ', 1, '2014-06-30 12:15:16', '2015-09-10 03:13:58', 1, 1),
(221, 'Sweden', 'SE', 1, '2014-06-30 12:15:16', '2015-09-10 03:14:03', 1, 1),
(222, 'Switzerland', 'CH', 1, '2014-06-30 12:15:16', '2015-09-10 03:14:09', 1, 1),
(223, 'Syrian Arab Republic', 'SY', 1, '2014-06-30 12:15:16', '2015-09-10 03:14:14', 1, 1),
(224, 'Tajikistan', 'TJ', 1, '2014-06-30 12:15:16', '2015-09-10 03:14:20', 1, 1),
(225, 'Thailand', 'TH', 1, '2014-06-30 12:15:16', '2015-09-10 03:14:25', 1, 1),
(226, 'Togo', 'TG', 1, '2014-06-30 12:15:16', '2015-09-10 03:14:32', 1, 1),
(227, 'Tokelau', 'TK', 1, '2014-06-30 12:15:16', '2015-09-10 03:14:36', 1, 1),
(228, 'Tonga', 'TO', 1, '2014-06-30 12:15:16', '2015-09-10 03:14:42', 1, 1),
(229, 'Trinidad and Tobago', 'TT', 1, '2014-06-30 12:15:16', '2015-09-10 03:14:47', 1, 1),
(230, 'United Arab Emirates', 'AE', 1, '2014-06-30 12:15:16', '2015-09-10 03:14:51', 1, 1),
(231, 'Tunisia', 'TN', 1, '2014-06-30 12:15:16', '2015-09-10 03:14:58', 1, 1),
(232, 'Turkey', 'TR', 1, '2014-06-30 12:15:16', '2015-09-10 03:18:27', 1, 1),
(233, 'Turkmenistan', 'TM', 1, '2014-06-30 12:15:16', '2015-09-10 03:18:32', 1, 1),
(234, 'Turks and Caicos Islands', 'TC', 1, '2014-06-30 12:15:16', '2015-09-10 03:19:09', 1, 1),
(235, 'Tuvalu', 'TV', 1, '2014-06-30 12:15:16', '2015-09-10 03:19:13', 1, 1),
(236, 'Uganda', 'UG', 1, '2014-06-30 12:15:16', '2015-09-10 03:19:17', 1, 1),
(237, 'Ukraine', 'UA', 1, '2014-06-30 12:15:16', '2015-09-10 03:19:21', 1, 1),
(238, 'Republic of Macedonia', 'MK', 1, '2014-06-30 12:15:16', '2015-09-10 03:19:26', 1, 1),
(239, 'Egypt', 'EG', 1, '2014-06-30 12:15:16', '2015-09-10 03:19:29', 1, 1),
(240, 'Guernsey', 'GG', 1, '2014-06-30 12:15:16', '2015-09-10 03:19:32', 1, 1),
(241, 'Jersey', 'JE', 1, '2014-06-30 12:15:16', '2015-09-10 03:19:37', 1, 1),
(242, 'Isle of Man', 'IM', 1, '2014-06-30 12:15:16', '2015-09-10 03:19:43', 1, 1),
(243, 'United Republic of Tanzania', 'TZ', 1, '2014-06-30 12:15:16', '2015-09-10 03:19:53', 1, 1),
(244, 'Virgin Islands, U.S.', 'VI', 1, '2014-06-30 12:15:16', '2015-09-10 03:19:57', 1, 1),
(245, 'Burkina Faso', 'BF', 1, '2014-06-30 12:15:16', '2015-09-10 03:20:01', 1, 1),
(246, 'Uruguay', 'UY', 1, '2014-06-30 12:15:16', '2015-09-10 03:20:04', 1, 1),
(247, 'Uzbekistan', 'UZ', 1, '2014-06-30 12:15:16', '2015-09-10 03:20:07', 1, 1),
(248, 'Bolivarian Republic of Venezuela', 'VE', 1, '2014-06-30 12:15:16', '2015-09-10 03:20:11', 1, 1),
(249, 'Wallis and Futuna', 'WF', 1, '2014-06-30 12:15:16', '2015-09-10 03:20:17', 1, 1),
(250, 'Samoa', 'WS', 1, '2014-06-30 12:15:16', '2015-09-10 03:20:22', 1, 1),
(251, 'Yemen', 'YE', 1, '2014-06-30 12:15:16', '2015-09-10 03:20:26', 1, 1),
(252, 'Zambia', 'ZM', 1, '2014-06-30 12:15:16', '2015-09-10 03:20:30', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `template_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `template_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cc` text COLLATE utf8_unicode_ci NOT NULL,
  `bcc` text COLLATE utf8_unicode_ci NOT NULL,
  `status_ind` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=Active, 0=Inactive',
  `created_date` datetime NOT NULL,
  `last_modified_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`template_id`, `lang_id`, `template_title`, `template_content`, `from`, `cc`, `bcc`, `status_ind`, `created_date`, `last_modified_date`, `created_by`, `modified_by`) VALUES
(1, 1, 'DONATION SUCCESSFUL: Thank you for your generosity!', '<p><img alt=\"\" src=\"https://akshayachaitanya.org/donate/assets/images/logo.png\" style=\"display: block; height: 53px; width: 180px; \" /></p>\r\n<p class=\"mt-2\">Dear ####NAME####,</p>\r\n\r\n<p><strong>Thank you for supporting us!</strong></p>\r\n\r\n<p>Please accept our sincere gratitude for your generous contribution towards our Hospital Feeding Programme. Your kindness will ensure no one goes hungry while making efforts to save money to meet treatment expense of their loved ones. By supporting this programme, you have also reinstated our conviction of attaining a hunger-free society.</p>\r\n\r\n<p>Spread the spirit of your benevolence by sharing about Akshaya Chaitanya&rsquo;s initiative with&nbsp;every one you know. Together, we can ensure a healthy foundation for a better tomorrow.&nbsp;</p>\r\n\r\n<p>The donation receipt and tax exemption certificate will be sent within 7 working days. Please note that tax exemption certificate is applicable only for donations above ₹500.</p>\r\n\r\n<p>In service of the society,</p>\r\n\r\n<p>Akshaya Chaitanya</p>\r\n\r\n<p>An initiative of HKM Charitable Foundation</p>\r\n\r\n<p>&nbsp;</p>\r\n<!-- <a href=\"https://akshayachaitanya.org/akshaya/uploads/invoicepdf/####RECEIPT####.pdf\" >Download Invoice PDF </a> -->', 'sathishds94@gmail.com', '', '', 1, '2017-01-03 12:43:14', '2021-12-04 16:16:16', 1, 1),
(2, 1, 'FAILED TRANSACTION: Your donation could not be processed.', '<p><img alt=\"\" src=\"https://akshayachaitanya.org/donate/assets/images/logo.png\" style=\"display: block; height: 53px; width: 180px; \" /></p>\r\n<p>Dear ####NAME####,</p>\r\n\r\n<p>We appreciate your generosity and attempt to support our hospital feeding programme. However, we regret to inform that your online donation transaction could not be completed due to possible technical error.</p>\r\n\r\n<p><strong>Your contribution will directly impact lives of the marginalised who are already struggling to provide adequate health care to their family members in Government hospitals across the city of Mumbai.</strong></p>\r\n\r\n<p>Hence, we request you to kindly try donating once again through this link&nbsp;- <a href=\"https://www.digitalmarketinggroup.in/akshayachaitanya/akshayachaitanya_new/donate\">Click Here</a></p>\r\n\r\n<p>If you again face the same concern, please call us at 8928991161 or email us at write2us@<a href=\"mailto:write2us@akshayachaitanya.org\" style=\"box-sizing: border-box; color: rgb(255, 255, 255); text-decoration-line: none; font-size: 14px; font-family: &quot;open sans&quot;, sans-serif; text-align: center; background-color: rgb(153, 153, 153);\">akshayachaitanya.org</a>. We will do our best to assist you.</p>\r\n\r\n<p>In service of the society,</p>\r\n\r\n<p>Akshaya Chaitanya</p>\r\n\r\n<p>An initiative of HKM Charitable Foundation</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'sathishds94@gmail.com', '', '', 1, '2017-01-03 12:43:14', '2021-08-01 09:25:02', 1, 1),
(3, 1, 'SAVE THE DATE: THANK YOU MAILER', '<p><img alt=\"\" src=\"https://akshayachaitanya.org/donate/assets/images/logo.png\" style=\"display: block; height: 53px; width: 180px; \" /></p>\r\n<p class=\"mt-2\">Dear ####NAME####,</p>\r\n\r\n<p><strong>Greetings from Akshaya Chaitanya!</strong></p>\r\n\r\n<p>Thank you for contributing ₹ ####AMOUNT#### towards our Hospital Feeding Programme to mark your special day. On your behalf, we will serve food to the beneficiaries in public hospitals on your chosen day, ####DATE####.</p>\r\n\r\n<p>Your support will provide freshly prepared, nutritious meals to the needy in hospitals and it will also add goodwill to your special day!</p>\r\n<h3>Donation Details</h3>\r\n####DETAILS####\r\n\r\n<p>Thank you once again for your generosity.</p>\r\n\r\n<p>In service of the society,</p>\r\n\r\n<p>Akshaya Chaitanya</p>\r\n\r\n\r\n', 'sathishds94@gmail.com', '', '', 1, '2017-01-03 12:43:14', '2021-11-02 18:23:18', 1, 1),
(4, 1, 'Donation Success Invoice', '\r\n\r\n\r\n <!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Akshaya Chaitanya ATG Receipt</title>\r\n    <style>\r\n      \r\n        body {\r\n    font-family: \"Roboto\", sans-serif;\r\n    \r\n}\r\n        @media only screen and (max-width: 600px) {\r\n  .main {\r\n    width: 920px !important;\r\n  }\r\n\r\n  .top-image {\r\n    width: 100% !important;\r\n  }\r\n  .inside-footer {\r\n    width: 420px !important;\r\n  }\r\n  table[class=\"contenttable\"] {\r\n    width: 420px !important;\r\n    text-align: left !important;\r\n  }\r\n  td[class=\"force-col\"] {\r\n    display: block !important;\r\n  }\r\n  td[class=\"rm-col\"] {\r\n    display: none !important;\r\n  }\r\n  .mt {\r\n    margin-top: 15px !important;\r\n  }\r\n  *[class].width300 {\r\n    width: 355px !important;\r\n  }\r\n  *[class].block {\r\n    display: block !important;\r\n  }\r\n  *[class].blockcol {\r\n    display: none !important;\r\n  }\r\n  .emailButton {\r\n    width: 100% !important;\r\n  }\r\n\r\n  .emailButton a {\r\n    display: block !important;\r\n    font-size: 18px !important;\r\n  }\r\n}\r\n\r\n    </style>\r\n</head>\r\n<body link=\"#00a5b5\" vlink=\"#00a5b5\" alink=\"#00a5b5\">\r\n\r\n<table class=\" main contenttable\" align=\"center\" style=\"font-weight: normal;border-collapse: collapse;border: 0;margin-left: auto;margin-right: auto;padding: 0;font-family: Arial, sans-serif;color: #555559;background-color: white;font-size: 16px;line-height: 20px;width: 800px;\">\r\n		<tr>\r\n			<td class=\"border\" style=\"border-collapse: collapse;border: 1px solid #eeeff0;margin: 0;padding: 0;-webkit-text-size-adjust: none;color: #555559;font-family: Arial, sans-serif;font-size: 16px;line-height: 20px;\">\r\n				<table style=\"font-weight: normal;border-collapse: collapse;border: 0;margin: 0;padding: 0;font-family: Arial, sans-serif;\">\r\n					<tr>\r\n						<td colspan=\"4\" valign=\"top\" class=\"image-section\" style=\"border-collapse: collapse;border: 0;margin: 0;padding: 0;-webkit-text-size-adjust: none;color: #555559;font-family: Arial, sans-serif;font-size: 16px;line-height: 20px;background-color: #fff;border-bottom: 4px solid #00a5b5\">\r\n							<a href=\"https://akshayachaitanya.org\"><img class=\"top-image\" src=\"https://akshayachaitanya.org/akshaya/assets/images/logo_ac-281x100.png\" style=\"line-height: 1;width: 280px;\" alt=\"Tenable Network Security\"></a>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td valign=\"top\" class=\"side title\" style=\"border-collapse: collapse;border: 0;margin: 0;padding: 20px 0;-webkit-text-size-adjust: none;color: #555559;font-family: Arial, sans-serif;font-size: 16px;line-height: 20px;vertical-align: top;background-color: white;border-top: none;\">\r\n							<table style=\"font-weight: normal;border-collapse: collapse;border: 0;margin: 0;padding: 0;font-family: Arial, sans-serif;\">\r\n								<tr>\r\n									<td  colspan=\"2\" class=\"head-title\" style=\"border-collapse: collapse;border: 0;margin: 0;padding: 0;-webkit-text-size-adjust: none;color: #fff;font-family: Arial, sans-serif;font-size: 28px;line-height: 34px;font-weight: bold; text-align: center; background:#4DB748; padding: 8px 32px;\">\r\n										<div class=\"mktEditable\" id=\"main_title\">\r\n                                            DONATION RECEIPT & TAX EXEMPTION CERTIFICATE\r\n										</div>\r\n									</td>\r\n								</tr>\r\n                                <tr>\r\n                                    <td>\r\n                                        <strong>Receipt No: </strong> ####ORDERID####\r\n                                    </td>\r\n                                    <td align=\'right\'>\r\n                                        <strong>Date:</strong> ####DATE####\r\n                                    </td>\r\n                                </tr>\r\n								\r\n								\r\n\r\n							</table>\r\n						</td>\r\n					</tr>\r\n                    <tr>\r\n									<td  align=\"left\" class=\"sub-title\" style=\"border-collapse: collapse;border: 0;margin: 0;padding: 0;padding-top:5px;-webkit-text-size-adjust: none;color: #555559;font-family: Arial, sans-serif;font-size: 18px;line-height: 29px;font-weight: bold;text-align: center ;\">\r\n                                        <div class=\"mktEditable\" id=\"intro_title\" style=\"color:#4DB748\">\r\n                                            THE AKSHAYA CHAITANYA CHARITABLE FOUNDATION\r\n                                        </div>\r\n                                    </td>\r\n								</tr>\r\n                                <tr>\r\n									<td class=\"grey-block\" style=\"border-collapse: collapse;border: 0;margin: 0;-webkit-text-size-adjust: none;color: #555559;font-family: Arial, sans-serif;font-size: 16px;line-height: 20px;background-color: #fff; text-align:center;\">\r\n									<div class=\"mktEditable\" id=\"cta\">\r\n									<p style=\"font-size:14px; line-height: 16px;\">\r\n										                                Akshaya Chaitanya Kitchen, \r\n                                                                        JAK Compound,<br>\r\n                                                                        Dadoji Konddeo Cross Lane,\r\n                                                                        Byculla, Mumbai 400027 <br>\r\n                                                                        For Queries - Email: write2us@akshayachaitanya.org \r\n                                                                        Please Contact: +918928991161 \r\n                                            <br>Website: www.akshayachaitanya.org<br> \r\n                                    </p>\r\n			                           \r\n			                             <!-- <a style=\"color:#ffffff; background-color: #ff8300;  border: 10px solid #ff8300; border-radius: 3px; text-decoration:none;\" href=\"#\">Download Now</a> -->\r\n									</div>\r\n									</td>\r\n								</tr>\r\n                                <tr>\r\n									<td class=\"text\" style=\"border-collapse: collapse;border: 0;margin: 0;padding:20px;-webkit-text-size-adjust: none;color: #555559;font-family: Arial, sans-serif;font-size: 16px;line-height: 20px;\">\r\n									    <div class=\"mktEditable\" id=\"main_text\">\r\n                                        <strong>To:</strong>  ####NAME####<br>\r\n                                           <strong> Mobile:</strong>  ####MOBILE####<bR>\r\n                                           <strong> Email:</strong>  ####EMAIL####<br>\r\n                                           <strong>Receipt No:</strong> ####ORDERID####<br>\r\n                                           <strong>Transaction No:</strong> ####TRANSACTIONID####\r\n\r\n\r\n\r\n									</div>\r\n                                </td>\r\n                               \r\n								</tr>\r\n					<tr>\r\n						<td style=\"padding:8px 20px; font-family: Arial, sans-serif; -webkit-text-size-adjust: none;\" align=\"center\">\r\n							<table>\r\n								<tr>\r\n									<td align=\"left\" style=\"font-family: Arial, sans-serif; -webkit-text-size-adjust: none; font-size: 16px;\">\r\n										<p> The Akshaya Chaitanya is whole heartedly grateful to your support. The Foundation humbly acknowledges the receipt of your kind donation of Rs. ####AMOUNT####.00 on ####DATE####.</p>\r\n									</td>\r\n								</tr>\r\n							</table>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"padding:20px; font-family: Arial, sans-serif; -webkit-text-size-adjust: none;\" align=\"center\">\r\n							<table>\r\n								<tr>\r\n									<td align=\"left\" style=\"font-family: Arial, sans-serif; -webkit-text-size-adjust: none; font-size: 16px; border: #1d6da0 solid 4px; padding: 5px;\">\r\n									<span style=\"font-size:10px; font-family: Arial, sans-serif; -webkit-text-size-adjust: none;\" >Note: Donation to The Akshaya Chaitanya qualify for tax deduction under Section 80 G (5) of the Income Tax Act of India,\r\n                                        vide Exemption Certificate Number DIT (E) BLR / 80 G (R) / 371 / AAATT6468P / ITO (E)-2 / Vol 2009 - 10, dated 18/09/2009, which\r\n                                        is existing and valid as on date of this receipt. Hence, upon realisation of the donation amount, this donation receipt qualifies to be\r\n                                        considered as a Tax Exemption Certificate. It is important to note that this receipt is invalid in case of non-realisation of the donation\r\n                                        amount or reversal of the realised amount for any reason.\r\n</span>\r\n									</td>\r\n								</tr>\r\n							</table>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"padding:20px;\" align=\"center\">\r\n							<table>\r\n								<tr>\r\n									<td align=\"center\" >\r\n										<h3>You took a step towards creating a</h3>\r\n										<h1 class=\"text-thm-green\"  >NOURISHED & HUNGER FREE MUMBAI.</h1>\r\n									</td>\r\n								</tr>\r\n							</table>\r\n						</td>\r\n					</tr>\r\n														\r\n				\r\n				</table>\r\n			</td>\r\n		</tr>\r\n	</table>\r\n  </body>\r\n</html>\r\n\r\n', 'sathishds94@gmail.com', '', '', 1, '2017-01-03 12:43:14', '2021-11-30 09:16:31', 1, 1),
(5, 1, 'Donation Success Invoice old', '\r\n <!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Fabcart</title>\r\n    <style>\r\n        body{\r\n            background-color: #F6F6F6; \r\n            margin: 0;\r\n            padding: 0;\r\n            width:100%;\r\n        }\r\n        h1,h2,h3,h4,h5,h6{\r\n            margin: 0;\r\n            padding: 0;\r\n        }\r\n        p{\r\n            margin: 0;\r\n            padding: 0;\r\n        }\r\n        .container{\r\n            width: 100%;\r\n            margin-right: auto;\r\n            margin-left: auto;\r\n        }\r\n        .brand-section{\r\n           background-color: #1d6da0;\r\n           padding: 10px 40px;\r\n        }\r\n        .logo{\r\n            width: 50%;\r\n        }\r\n\r\n        .row{\r\n            display: flex;\r\n            flex-wrap: wrap;\r\n        }\r\n        .col-6{\r\n            width: 48%;\r\n            flex: 0 0 auto;\r\n        }\r\n        .col-8{\r\n            width: 68%;\r\n            flex: 0 0 auto;\r\n        }\r\n        .text-white{\r\n            color: #fff;\r\n        }\r\n        .company-details{\r\n            float: right;\r\n            text-align: right;\r\n        }\r\n        .body-section{\r\n            padding: 16px;\r\n            border: 1px solid gray;\r\n        }\r\n        .heading{\r\n            font-size: 20px;\r\n            margin-bottom: 08px;\r\n        }\r\n        .sub-heading{\r\n            color: #262626;\r\n            margin-bottom: 05px;\r\n        }\r\n        table{\r\n            background-color: #fff;\r\n            width: 100%;\r\n            border-collapse: collapse;\r\n        }\r\n        table thead tr{\r\n            border: 1px solid #111;\r\n            background-color: #f2f2f2;\r\n        }\r\n        table td {\r\n            vertical-align: middle !important;\r\n            text-align: center;\r\n        }\r\n        table th, table td {\r\n            padding-top: 08px;\r\n            padding-bottom: 08px;\r\n        }\r\n        .table-bordered{\r\n            box-shadow: 0px 0px 5px 0.5px gray;\r\n        }\r\n        .table-bordered td, .table-bordered th {\r\n            border: 1px solid #dee2e6;\r\n        }\r\n        .text-right{\r\n            text-align: end;\r\n        }\r\n        .w-20{\r\n            width: 20%;\r\n        }\r\n        .float-right{\r\n            float: right;\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n\r\n    <div class=\"container\">\r\n        <div class=\"brand-section\">\r\n            <div class=\"row\">\r\n                <div class=\"col-6\" style=\"float:left;\">\r\n                    <img src=\"https://akshayachaitanya.org/wp-content/uploads/2021/07/logo_ac-768x273.png\">\r\n                </div>\r\n                <div class=\"col-6\" style=\"float:left;\">\r\n                    <div class=\"company-details\">\r\n                        \r\n                                 \r\n                        <p class=\"text-white\"> Akshaya Chaitanya Kitchen, </p>\r\n                        <p class=\"text-white\">JAK Compound,</p>\r\n                        <p class=\"text-white\">Dadoji Konddeo Cross Lane,</p>\r\n                        <p class=\"text-white\">Byculla, Mumbai 400027</p>\r\n                        <p class=\"text-white\"><abbr title=\"Phone\">Call :</abbr>+918928991161</p>\r\n                        <p class=\"text-white\"><abbr title=\"Email\">Email :</abbr>write2us@akshayachaitanya.org</p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"body-section\">\r\n            <div class=\"row\">\r\n                <div class=\"col-8\">\r\n                    <h2 class=\"heading\">Invoice No.: ####ORDERID####</h2>\r\n                    <p class=\"sub-heading\">Date: ####DATE#### </p>\r\n                    <p class=\"sub-heading\">Email Address: ####EMAIL#### </p>\r\n                </div>\r\n                <div class=\"col-8\">\r\n                    <p class=\"sub-heading\">Full Name: ####NAME#### </p>\r\n                    <p class=\"sub-heading\">Address: ####ADDRESS#### </p>\r\n                    <p class=\"sub-heading\">Phone Number: ####PHONE#### </p>\r\n                    <!-- <p class=\"sub-heading\">City,State,Pincode:  </p> -->\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"body-section\">\r\n            <h3 class=\"heading\">Ordered Items</h3>\r\n            <br>\r\n            <table class=\"table-bordered\">\r\n                <thead>\r\n                    <tr>\r\n                        \r\n                        <th class=\"w-20\">TransactionId</th>\r\n                        <th class=\"w-20\">Amount</th>\r\n                       \r\n                    </tr>\r\n                </thead>\r\n                <tbody>\r\n                    <tr>\r\n                      \r\n                        <td>####TRANSACTIONID####</td>\r\n                        <td>####AMOUNT####</td>\r\n                        \r\n                    </tr>\r\n                   \r\n                </tbody>\r\n            </table>\r\n            <br>\r\n            <h3 class=\"heading\">Payment Status: Paid</h3>\r\n        </div>\r\n\r\n        <div class=\"body-section\">\r\n            <p>&copy; 2007 – 2021 AKSHAYA CHAITANYA. ALL RIGHTS RESERVED. \r\n                <a href=\"https://akshayachaitanya.org/\" class=\"float-right\">https://akshayachaitanya.org/</a>\r\n            </p>\r\n        </div>      \r\n    </div>      \r\n\r\n</body>\r\n</html>\r\n', 'sathishds94@gmail.com', '', '', 1, '2017-01-03 12:43:14', '2021-11-21 08:20:58', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `faq_id` int(11) NOT NULL,
  `faq_category_id` int(11) NOT NULL,
  `faq_question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `faq_answer` text COLLATE utf8_unicode_ci NOT NULL,
  `status_ind` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=Inactive',
  `created_date` datetime NOT NULL,
  `last_modified_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`faq_id`, `faq_category_id`, `faq_question`, `faq_answer`, `status_ind`, `created_date`, `last_modified_date`, `created_by`, `modified_by`) VALUES
(7, 2, 'Lorem ipsum dolor sit amet, an eripuit laboramus sententiae duo lorem sio?', 'Lorem ipsum dolor sit amet, ea vel quem nullam, adhuc vituperata mea ei, verear regione ornatus ius ut. Saperet adipisci forensibus quo at, eam in ridens nonumes. Placerat eleifend recteque ea mei, vim mazim meliore dissentiet ea. Qui ea suas utinam indoctum, ex usu ceteros comprehensam, labores facilisis\n\neu mea. Adhuc mucius ancillae ut vix, pri id quod enim inciderint, ludus reformidans eam te. Nostro praesent inciderint pri eu, ea facilis facilisi cum, ancilla gloriatur id vim. No his accumsan suavitate, movet splendide philosophia at vim.Eu eum paulo salutatus. Eu ubique maiestatis sea, pri legimus fabellas ex, no inimicus lorem ipsum is a dummy text', 1, '2017-06-09 03:06:06', '2017-06-22 04:21:32', 1, 1),
(8, 3, 'Lorem ipsum dolor sit amet, eu est delectus theophrastus consectetuer, sanctus delectus?', 'Lorem ipsum dolor sit amet, ea vel quem nullam, adhuc vituperata mea ei, verear regione ornatus ius ut. Saperet adipisci forensibus quo at, eam in ridens nonumes. Placerat eleifend recteque ea mei, vim mazim meliore dissentiet ea. Qui ea suas utinam indoctum, ex usu ceteros comprehensam, labores facilisis\n\neu mea. Adhuc mucius ancillae ut vix, pri id quod enim inciderint, ludus reformidans eam te. Nostro praesent inciderint pri eu, ea facilis facilisi cum, ancilla gloriatur id vim. No his accumsan suavitate, movet splendide philosophia at vim.Eu eum paulo salutatus. Eu ubique maiestatis sea, pri legimus fabellas ex, no inimicus lorem ipsum is a dummy text', 1, '2017-06-09 03:06:42', '2017-06-22 04:21:36', 1, 1),
(9, 3, 'Amet ipsum dolor sit amet, ius cu nonumy eripuit, sed legimus similique in, stet fiona lipsum?', 'Lorem ipsum dolor sit amet, ea vel quem nullam, adhuc vituperata mea ei, verear regione ornatus ius ut. Saperet adipisci forensibus quo at, eam in ridens nonumes. Placerat eleifend recteque ea mei, vim mazim meliore dissentiet ea. Qui ea suas utinam indoctum, ex usu ceteros comprehensam, labores facilisis\n\neu mea. Adhuc mucius ancillae ut vix, pri id quod enim inciderint, ludus reformidans eam te. Nostro praesent inciderint pri eu, ea facilis facilisi cum, ancilla gloriatur id vim. No his accumsan suavitate, movet splendide philosophia at vim.Eu eum paulo salutatus. Eu ubique maiestatis sea, pri legimus fabellas ex, no inimicus lorem ipsum is a dummy text', 1, '2017-06-09 03:07:00', '2017-06-22 04:21:41', 1, 1),
(10, 2, 'Lorem ipsum dolor sit amet, an eripuit laboramus sententiae duo lorem sio?', 'Lorem ipsum dolor sit amet, ea vel quem nullam, adhuc vituperata mea ei, verear regione ornatus ius ut. Saperet adipisci forensibus quo at, eam in ridens nonumes. Placerat eleifend recteque ea mei, vim mazim meliore dissentiet ea. Qui ea suas utinam indoctum, ex usu ceteros comprehensam, labores facilisis\n\neu mea. Adhuc mucius ancillae ut vix, pri id quod enim inciderint, ludus reformidans eam te. Nostro praesent inciderint pri eu, ea facilis facilisi cum, ancilla gloriatur id vim. No his accumsan suavitate, movet splendide philosophia at vim.Eu eum paulo salutatus. Eu ubique maiestatis sea, pri legimus fabellas ex, no inimicus lorem ipsum is a dummy text', 1, '2017-06-09 03:07:17', '2017-06-22 04:21:45', 1, 1),
(11, 2, 'Lorem ipsum dolor sit amet, eu est delectus theophrastus consectetuer, sanctus delectus?', 'Lorem ipsum dolor sit amet, ea vel quem nullam, adhuc vituperata mea ei, verear regione ornatus ius ut. Saperet adipisci forensibus quo at, eam in ridens nonumes. Placerat eleifend recteque ea mei, vim mazim meliore dissentiet ea. Qui ea suas utinam indoctum, ex usu ceteros comprehensam, labores facilisis\n\neu mea. Adhuc mucius ancillae ut vix, pri id quod enim inciderint, ludus reformidans eam te. Nostro praesent inciderint pri eu, ea facilis facilisi cum, ancilla gloriatur id vim. No his accumsan suavitate, movet splendide philosophia at vim.Eu eum paulo salutatus. Eu ubique maiestatis sea, pri legimus fabellas ex, no inimicus lorem ipsum is a dummy text', 1, '2017-06-09 03:07:36', '2017-06-22 04:21:53', 1, 1),
(12, 3, 'Amet ipsum dolor sit amet, ius cu nonumy eripuit, sed legimus similique in, stet fiona lipsum?', 'Lorem ipsum dolor sit amet, ea vel quem nullam, adhuc vituperata mea ei, verear regione ornatus ius ut. Saperet adipisci forensibus quo at, eam in ridens nonumes. Placerat eleifend recteque ea mei, vim mazim meliore dissentiet ea. Qui ea suas utinam indoctum, ex usu ceteros comprehensam, labores facilisis\n\neu mea. Adhuc mucius ancillae ut vix, pri id quod enim inciderint, ludus reformidans eam te. Nostro praesent inciderint pri eu, ea facilis facilisi cum, ancilla gloriatur id vim. No his accumsan suavitate, movet splendide philosophia at vim.Eu eum paulo salutatus. Eu ubique maiestatis sea, pri legimus fabellas ex, no inimicus lorem ipsum is a dummy text', 1, '2017-06-09 03:08:25', '2017-06-22 04:21:57', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faq_category`
--

CREATE TABLE `faq_category` (
  `faq_category_id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL,
  `category_desc` varchar(255) NOT NULL,
  `status_ind` tinyint(1) NOT NULL,
  `sort_order` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq_category`
--

INSERT INTO `faq_category` (`faq_category_id`, `category_name`, `category_desc`, `status_ind`, `sort_order`) VALUES
(2, 'How do I use WhatsApp on my computer?', 'How do I use WhatsApp on my computer?', 1, 1),
(3, 'How can I install WhatsApp on my computer? ', 'How can I install WhatsApp on my computer? ', 1, 2),
(4, 'Support for older operating systems', 'Support for older operating systems. Support for older operating systems. Support for older operating systems', 1, 3),
(5, 'Using one WhatsApp account on multiple phones, or with multiple phone numbers', 'Using one WhatsApp account on multiple phones, or with multiple phone numbers', 1, 4),
(6, 'Does WhatsApp work with BlackBerry Enterprise Server (BES) and BlackBerry Internet Service (BIS)?', 'Does WhatsApp work with BlackBerry Enterprise Server (BES) and BlackBerry Internet Service (BIS)?', 1, 5),
(7, 'Using one WhatsApp account on multiple phones, or with multiple phone numbers', 'Using one WhatsApp account on multiple phones, or with multiple phone numbers', 1, 6),
(8, 'Seeing the message \"Your phone number is banned from using WhatsApp. Contact support for help.\"', 'Seeing the message \"Your phone number is banned from using WhatsApp. Contact support for help.\"', 1, 7),
(9, 'Is it free to send messages over WhatsApp?', 'Is it free to send messages over WhatsApp?', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `feature_id` int(11) NOT NULL,
  `feature_title` varchar(200) NOT NULL,
  `feature_desc` text NOT NULL,
  `feature_icon` varchar(100) NOT NULL,
  `created_date` date NOT NULL,
  `last_modified_date` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status_ind` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `form_id` int(11) NOT NULL,
  `form_name` varchar(255) NOT NULL,
  `form_path` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `status_ind` int(5) NOT NULL,
  `table_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `form_id` int(11) NOT NULL,
  `form_title` varchar(250) NOT NULL,
  `form_data` text NOT NULL,
  `status_ind` int(3) NOT NULL DEFAULT 0 COMMENT 'Active = 1, Inactive = 0',
  `created_by` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`form_id`, `form_title`, `form_data`, `status_ind`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, 'Donation ', '<legend>Donation </legend><label for=\"name\">Name</label><input type=\"text\" id=\"name\" name=\"name\" class=\"form-control \"><label for=\"phone_number\">Phone Number</label><input type=\"text\" id=\"phone_number\" name=\"phone_number\" class=\"form-control \"><label for=\"pan_number\">Pan Number</label><input type=\"text\" id=\"pan_number\" name=\"pan_number\" class=\"form-control \">', 1, 1, '2021-09-11', 1, '2021-09-11');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_name` varchar(120) NOT NULL,
  `gallery_img` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `modified_date` date NOT NULL,
  `status_ind` int(3) NOT NULL COMMENT 'Active = 1,\r\nInactive = 0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `gallery_name`, `gallery_img`, `order_id`, `created_date`, `modified_date`, `status_ind`) VALUES
(1, 'Cama & Albless Hospital', 'gallery_img_3376430.jpg', 2, '2021-11-12', '2021-11-18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_category`
--

CREATE TABLE `gallery_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(140) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `modified_date` date NOT NULL,
  `status_ind` int(3) NOT NULL COMMENT 'Active = 1,\r\nInactive = 0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery_category`
--

INSERT INTO `gallery_category` (`category_id`, `category_name`, `gallery_id`, `created_date`, `modified_date`, `status_ind`) VALUES
(1, 'Beneficiaries', 4, '2021-11-13', '2021-11-13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `gallery_img_id` int(11) NOT NULL,
  `image_name` varchar(150) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `gallery_img_path` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `modified_date` date NOT NULL,
  `status_ind` int(3) NOT NULL COMMENT 'Active = 1,\r\nInactive = 0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery_images`
--

INSERT INTO `gallery_images` (`gallery_img_id`, `image_name`, `gallery_id`, `category_id`, `gallery_img_path`, `created_date`, `modified_date`, `status_ind`) VALUES
(1, 'banefeciary_1', 4, 1, 'gallery_img_6698508.jpg', '2021-11-15', '2021-11-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `impact_numbers`
--

CREATE TABLE `impact_numbers` (
  `impact_numbers_id` int(11) NOT NULL,
  `beneficiaries_served_daily` int(11) NOT NULL,
  `beneficiary_hospitals` int(11) NOT NULL,
  `schools_on_wheels` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `impact_numbers`
--

INSERT INTO `impact_numbers` (`impact_numbers_id`, `beneficiaries_served_daily`, `beneficiary_hospitals`, `schools_on_wheels`) VALUES
(1, 1880, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(11) NOT NULL,
  `lang_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `lang_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_ind` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=Inactive',
  `created_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `last_modified_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) NOT NULL,
  `display_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_code`, `lang_name`, `status_ind`, `created_date`, `created_by`, `last_modified_date`, `modified_by`, `display_order`) VALUES
(1, 'en', 'English', 1, '0000-00-00 00:00:00', 0, '2014-04-17 01:50:27', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menuitems`
--

CREATE TABLE `menuitems` (
  `menuitem_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `parent_menuitem_id` int(11) DEFAULT NULL,
  `menuitem_target` varchar(255) COLLATE utf8_unicode_ci DEFAULT '_self',
  `menuitem_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menuitem_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  `http_protocol` enum('http','https') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http',
  `status_ind` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=Active, 0=Inactive',
  `created_date` datetime NOT NULL,
  `last_modified_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menuitems`
--

INSERT INTO `menuitems` (`menuitem_id`, `menu_id`, `parent_menuitem_id`, `menuitem_target`, `menuitem_link`, `menuitem_text`, `display_order`, `http_protocol`, `status_ind`, `created_date`, `last_modified_date`, `created_by`, `modified_by`) VALUES
(1, 1, NULL, '_self', '#', 'About Us', 1, 'http', 1, '2020-11-19 12:10:33', '2021-11-12 08:00:30', 0, 1),
(2, 1, NULL, '_self', '', 'Home', 0, 'http', 1, '2021-11-12 02:27:49', '2021-12-20 17:39:39', 0, 1),
(90, 1, 1, '_self', 'our-kitchen-in-mumbai', 'Our Kitchen in Mumbai', 3, 'http', 1, '2021-10-07 10:56:02', '2021-11-12 08:01:30', 0, 1),
(96, 1, NULL, '_self', '#', 'Our Work', 2, 'http', 1, '2021-10-25 11:19:44', '2021-11-12 08:05:20', 0, 1),
(98, 1, NULL, '_self', 'media', 'Media', 7, 'http', 1, '2021-10-25 04:26:00', '2021-11-02 12:37:01', 0, 1),
(100, 1, NULL, '_self', 'contact-us', 'Contact Us', 8, 'http', 1, '2021-10-25 05:38:23', '2021-11-02 12:37:38', 0, 1),
(101, 1, NULL, '_self', 'gallery', 'Gallery', 6, 'http', 1, '2021-10-27 01:47:11', '2021-10-26 14:47:11', 0, 1),
(103, 1, NULL, '_self', 'milestones', 'Milestones', 3, 'http', 1, '2021-11-07 01:47:34', '2021-11-07 06:48:24', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_ind` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menu_id`, `menu_name`, `status_ind`) VALUES
(1, 'Header Menu', 1),
(2, 'Footer Menu 1', 1),
(3, 'Footer Menu 2', 1),
(4, 'Header Top Menu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_image` tinyint(1) DEFAULT 0,
  `gallery_id` int(11) DEFAULT NULL,
  `alt_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_id` int(11) NOT NULL DEFAULT 2,
  `page_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video_caption` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `page_path` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_id` int(11) NOT NULL,
  `form_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `form_description` text COLLATE utf8_unicode_ci NOT NULL,
  `facilities_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_form` int(6) NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_meta_tags` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `nofollow_ind` tinyint(1) DEFAULT 0,
  `noindex_ind` tinyint(1) DEFAULT 0,
  `canonical_url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirection_link` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_ind` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=Active, 0=Inactive',
  `created_date` datetime NOT NULL,
  `last_modified_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `type_id`, `banner_image`, `video_image`, `video_url`, `display_image`, `gallery_id`, `alt_title`, `template_id`, `page_title`, `video_caption`, `page_path`, `page_slug`, `page_short_description`, `page_content`, `form_id`, `form_title`, `form_description`, `facilities_id`, `display_form`, `meta_title`, `meta_description`, `meta_keywords`, `other_meta_tags`, `nofollow_ind`, `noindex_ind`, `canonical_url`, `redirection_link`, `status_ind`, `created_date`, `last_modified_date`, `created_by`, `last_modified_by`) VALUES
(1, 0, 'banner_2337376.jpg', '', '', 1, NULL, 'About Akshaya Chaitanya', 8, 'About Akshaya Chaitanya', '', '', 'about-akshaya-chaitanya', 'Learn How We Rose from Obscurity to Become a Nationally Recognized Installer and Manufacturer of Inground Fiberglass Pools.', '<section>\r\n      <div class=\"container pt-70 pb-40\">\r\n        <div class=\"section-content\">\r\n          <div class=\"row\">\r\n          <div class=\"col-md-5\">\r\n              <div class=\"thumb\">\r\n                <img alt=\"\" src=\"assets/images/about/s01-about.jpg\" class=\"img-fullwidth\">\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-7\">\r\n            \r\n              <div class=\"row\">\r\n                <div class=\"col-md-12\">\r\n                  <p>Hare Krishna Movement Raipur-Bhilai (HKM) has been serving the society since 2007, sharing the message of the Bhakti Yoga tradition (Gaudiya-Vaishnava sampradāya based on the Sanskrit texts Bhagavad-gītā and Srimad Bhagavatam) with the community of Raipur and Bhilai.</p>\r\n                  <p>Our temple, presided by deities of Sri Sri Radha Krishnachandra and Sri Sri Nitai Gauranga , serves as a sacred space of culture, spirituality, devotion and service.</p>\r\n                  <p>We are pleased to offer a variety of services to the community – this includes the Sunday Festival, Hari Katha, Friend of Lord Krishna(FOLK) – youth club, Gopal Sakha Program – kids club, Dramas, Dance, Bhajans, Kirtans, Spiritual Seminars, Pure Vegetarian Cuisine, Satsang and more.</p>\r\n                </div>\r\n                \r\n              </div>\r\n            </div>\r\n          </div>\r\n            <div class=\"row\">\r\n            <div class=\"col-md-12 text-center mt-20\">\r\n              <p>The primary function of the centre is to create an all-inclusive, holistic environment of performing arts and educational training in Vedic theology and its relevant application in a modern day setting.</p>\r\n              <p>The centre with its beautiful arching trees, thatched roofs and genteel atmosphere combined with a mature, experienced, loving leadership and vibrancy of youth create an enveloping ambience of homeliness, comfort and transcendence</p>\r\n              <p>Our spiritually uplifting services will give you a marvelous experience!</p>\r\n            </div>\r\n          </div>\r\n          \r\n        </div>\r\n      </div>\r\n    </section>\r\n', 0, '', '', '', 0, 'About Akshaya Chaitanya | Birth of NGO', 'Akshaya Chaitanya is an NGO in Mumbai with the objective of eradicating hunger in a sustainable way.  As an initial intervention, the NGO will focus on providing free and nutritious food in the city’s public hospitals', 'about akshaya chaitanya, NGO in Mumbai, Hospital feeding in Mumbai, Public hospital in Mumbai, Giving food for free, Donate food to poor', '', 0, 0, '', '', 1, '2017-06-29 13:30:09', '2021-12-04 05:00:00', 0, 2),
(2, 20, NULL, '', '', 0, NULL, 'Terms Condition', 2, 'Terms Condition', '', NULL, 'terms-condition', 'Terms Condition', '<h3 style=\"text-align: center;padding: 35px;\">Terms Condition</h3>\n\n<p>Unless explicitly stated otherwise, all content hosted on karvyforex.com is copyright Phillip Capital (India) Pvt. Ltd. (PCIPL), 2017. All rights are reserved. The copying, republication, or redistribution of PCIPL&#39;s copyrighted content &shy; including but not limited to, forum posts, reports, news mix, news comments, product lists, and data &shy; is explicitly prohibited without prior written consent.</p>\n\n<p>The PCIPL database includes all data displayed on PCIPL&#39;s Live Markets, including research articles, market commentaries, Audio&shy;Video files, knowledge base, and other assembled data. PCIPL database is a unique, creative, easily&shy;identifiable compilation requiring hundreds of man&shy;hours to compile and the copying, republication or redistribution of KFCL data, in part or in whole, is explicitly prohibited.</p>\n\n<p>The information, products, solutions, and services (&quot;Services&quot;) hosted on and from karvyforex.com are provided by Phillip Capital (India) Pvt. Ltd. (PCIPL), located at <strong>No. 1, 18th Floor, Urmi Estate, 95 Ganpatrao Kadam Marg, Lower Parel West, Mumbai 400013, Maharashtra, India. </strong>By using PCIPL&#39;s Services, users of the Services (&quot;Users&quot;) are agreeing to all of the following terms.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Services Usage</strong></p>\n\n<p>Users must follow any policies made available to Users within the Services.</p>\n\n<p>Users may not misuse Services. For example, Users are not permitted to interfere with Services or try to access them using a method other than the interface and the instructions that PCIPL provides. Users may use Services only as permitted.</p>\n\n<p>PCIPL may suspend or stop providing Services to Users who do not comply with terms or policies, or if PCIPL is investigating suspected misconduct.</p>\n\n<p>Using PCIPL&#39;s Services does not give Users any ownership of any intellectual property rights in the Services, or the content Users access. Users may not use content from PCIPL&#39;s Services unless Users obtain permission from its owner or are otherwise permitted. These terms do not grant Users the right to use any branding or logos used in PCIPL&#39;s Services.</p>\n\n<p>PCIPL&#39;s Services are designed primarily for corporates involved in international trade and forex traders. Trading forex is potentially profitable for educated and experienced traders; however, there is considerable exposure to financial risk when trading forex. PCIPL makes no endorsement of forex trading, and does not intend to influence Users to trade or alter their trading approach. Phillip Capital (India) Pvt. Ltd. and its affiliates cannot be held liable for trading decisions based on information hosted on or from the PCIPL website.</p>\n\n<p>PCIPL may email Users service announcements, administrative messages, and other information. Users may opt out of some of those communications by writing to PCIPL at <a href=\"mailto:fx@phillipcapital.in\">fx@phillipcapital.in</a></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Member Account</strong></p>\n\n<p>Users may need to obtain a member account (&quot;Account&quot;) in order to use all Services.</p>\n\n<p>Users are responsible for protecting their Account by keeping their password confidential. Users are responsible for the activity that happens on or through their Account. Users should not reuse their Account password on third&shy;party applications. If Users learn of any unauthorized use of their password or Account, they should immediately contact PCIPL.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>User-Generated Content</strong></p>\n\n<p>Some Services allow Users to submit existing content. Users retain ownership of any intellectual property rights that they hold in that content. What belongs to Users stays theirs.</p>\n\n<p>When Users upload or otherwise submit content to PCIPL&#39;s Services, PCIPL does not use, reproduce, modify, create derivative works (such as those resulting from translations, adaptations or other changes), communicate, publish, publicly perform, publicly display and distribute such content. The rights Users grant in this license are completely secured. This license continues even if Users stop using PCIPL&#39;s Services.</p>\n\n<p>PCIPL&#39;s Services display all the content that belongs to PCIPL. PCIPL may review content to determine whether it is illegal or violates PCIPL&#39;s policies, and PCIPL may remove or refuse to display content that PCIPL reasonably believe violates PCIPL&#39;s policies or the law. However, that does not necessarily mean that PCIPL reviews all content.</p>\n\n<p>PCIPL responds to notices of alleged copyright infringement and terminates accounts of repeat infringers.</p>\n\n<p><strong>Modifying Services</strong></p>\n\n<p>PCIPL is constantly changing and improving Services. PCIPL may add or remove functionalities or features, and PCIPL may suspend or stop a Service altogether.</p>\n\n<p>Users can stop using PCIPL&#39;s Services at any time. PCIPL may also stop providing Services to Users at any time, or add or create new limits to PCIPL&#39;s Services at any time.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Warranties and Disclaimers</strong></p>\n\n<p>PCIPL provides Services using a commercially reasonable level of skill and care. However, the following outlines things which PCIPL does not promise about the Services:</p>\n\n<p>OTHER THAN AS EXPRESSLY SET OUT IN THESE TERMS OR ADDITIONAL TERMS, NEITHER PCIPL NOR PCIPL&#39;S AFFILIATES, SUPPLIERS, OR DISTRIBUTORS MAKE ANY SPECIFIC PROMISES ABOUT THE SERVICES. PCIPL DOES NOT MAKE ANY COMMITMENTS ABOUT THE CONTENT WITHIN THE SERVICES, THE SPECIFIC FUNCTIONS OF THE SERVICES, OR THEIR RELIABILITY, AVAILABILITY, OR ABILITY TO MEET USERS NEEDS. PCIPL PROVIDES ALL SERVICES &quot;AS IS.&quot;</p>\n\n<p>SOME JURISDICTIONS PROVIDE FOR CERTAIN WARRANTIES, LIKE THE IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON&shy;INFRINGEMENT. TO THE EXTENT PERMITTED BY LAW, PCIPL EXCLUDES ALL WARRANTIES.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Liability for Services</strong></p>\n\n<p>WHEN PERMITTED BY LAW, PCIPL, AND PCIPL&#39;S AFFILIATES, SUPPLIERS, AND DISTRIBUTORS, WILL NOT BE RESPONSIBLE FOR LOST PROFITS, REVENUES, OR DATA, FINANCIAL LOSSES OR INDIRECT, SPECIAL, CONSEQUENTIAL, EXEMPLARY, OR PUNITIVE DAMAGES.</p>\n\n<p>TO THE EXTENT PERMITTED BY LAW, THE TOTAL LIABILITY OF PCIPL, AND ITS AFFILIATES, SUPPLIERS, AND DISTRIBUTORS, FOR ANY CLAIMS UNDER THESE TERMS, INCLUDING FOR ANY IMPLIED WARRANTIES, IS LIMITED TO THE AMOUNT USERS PAID PCIPL TO USE THE SERVICES (OR, IF PCIPL CHOOSES, TO SUPPLYING USERS THE SERVICES AGAIN).</p>\n\n<p>IN ALL CASES, PCIPL, AND ITS AFFILIATES, SUPPLIERS, AND DISTRIBUTORS, WILL NOT BE LIABLE FOR ANY LOSS OR DAMAGE THAT IS NOT REASONABLY FORESEEABLE.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Business Use</strong></p>\n\n<p>If Users are using Services on behalf of a business, that business accepts these terms. It will hold harmless and indemnify PCIPL and its affiliates, officers, agents, and employees from any claim, suit or action arising from or related to the use of the Services or violation of these terms, including any liability or expense arising from claims, losses, damages, suits, judgments, litigation costs and attorneys&#39; fees.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>About These Terms</strong></p>\n\n<p>These terms were last updated on May 10, 2017.</p>\n\n<p>PCIPL may modify these terms or any additional terms that apply to a Service to, for example, reflect changes to the law or changes to PCIPL&#39;s Services. Users should look at these terms regularly. PCIPL will update the date at the start of this section when the terms are modified.</p>\n\n<p>Changes to these terms will not apply retroactively and will become effective no sooner than 28 days after they are posted. However, changes addressing new functions for a Service or changes made for legal reasons will be effective immediately. If Users do not agree to the modified terms for a Service, Users should discontinue use of all Services.</p>\n\n<p>If it turns out that a particular term is not enforceable, this will not affect any other terms.</p>\n\n<p>The laws of Union Republic of India will apply to any disputes arising out of or relating to these terms or PCIPL&#39;s Services.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Trade Calls Services:</strong></p>\n\n<p><strong>Cancellation/Refund Policy:</strong></p>\n\n<p>All sales are final and there will be ABSOLUTELY NO REFUNDS and CANCELLATIONS.</p>\n\n<p>In case the client wants to unsubscribe to our Trade Calls services he/she needs to communicate the same to us by writing to us at fx@karvy.com. There will not be any refund, however, after cancellation of our Trade Calls services.</p>\n\n<p><strong>Delivery policy:</strong></p>\n\n<p>Once the client subscribes to our Trade Calls services, the client will start receiving the Trade Calls after telephonic interaction with our representative.</p>\n\n<p>Thus by making the payment, the client agrees and acknowledges to all the terms and conditions of Phillip Capital (India) Pvt. Ltd.</p>\n\n<p><strong>Disclaimer:</strong></p>\n\n<p>We do not receive any consideration by way of remuneration or compensation or in any other form whatsoever, by us or any of our associates or subsidiaries for any distribution or execution services in respect of the products or securities for which the investment advice is provided to the client.</p>\n\n<p>We do not recommend a stock broker. If any stock broker is recommended by any of our representative, we do not receive any consideration by way of remuneration or compensation or in any other form whatsoever from stock broker or any other intermediary so recommended to client.</p>\n\n<p>To ensure compliance with the Investment Advisor regulations 2013, we have resolved that the investment adviser and all its representatives will not make any trades in the market. We are not associated in any manner with any issuer of products/ securities, this ensures that there is no actual or potential conflicts of interest. This also ensures that objectivity or independence in the carrying on of investment advisory services is not compromised. Investment is stock or commodity markets is subject to market risk, though best attempts are made for predicting markets, but no surety of return or accuracy of any kind is guaranteed, while the performance sheet of various products is available but should not be considered as a guarantee for future performance of the products/services. Clients are advised to consider all the advice as just an opinion and make investment decision on their own.</p>\n\n<p>In case of clients seeking advice on any specific positions already made by the client, we will be able to suggest best possible action considering our view on the security or product. Such suggestion under any circumstances shall be considered as an opinion (not advice) from our organization and we advice client to consider our opinion and not consultancy to make his/her final decision. We are not liable for any losses whatsoever client may incur in accepting this opinion.</p>\n\n<p>Client is also advised to trade only if Trade Calls suit his current risk appetite and risk bearing capacity, all such Trade Calls shall be considered as a view or opinion and client shall on his/her discretion decide actual trades.</p>\n\n<p>We are not associated with any intermediaries and do not recommend services of any specific intermediaries. No litigations have been filed against us since the incorporation. All the Trade Calls which are suggested by us are communicated in written, no verbal communication from any of the executives or otherwise under any circumstances shall be considered as advice by our organization.</p>\n', 0, '', '', '', 0, 'Terms Condition', 'Terms Condition', 'Terms Condition', 'Terms Condition', 0, 0, '', '', 1, '2020-05-13 00:00:00', '2021-09-04 15:54:05', 1, 1),
(3, 0, NULL, '', '', 0, NULL, 'Privacy Policy', 2, 'Privacy Policy', '', NULL, 'privacy-policys', 'Privacy Policy', '<h3 style=\"text-align: center;padding: 35px;\">Privacy Policy</h3>\n\n<p align=\"center\">&nbsp;</p>\n\n<p>The information, products, and services (&quot;Services&quot;) hosted on and from karvyforex.com are provided by Phillip Capital (India) Pvt. Ltd. (&quot;PCIPL&quot;), located at&nbsp;<strong>No. 1, 18th Floor, Urmi Estate, 95 Ganpatrao Kadam Marg, Lower Parel West, Mumbai 400013, Maharashtra, India.</strong> In the process of using PCIPL&#39;s Services, users of the Services (&quot;Users&quot;) may provide information (&quot;Information&quot;) that is collected by PCIPL. This policy explains how PCIPL stores and uses that Information.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Information Collected</strong></p>\n\n<p>PCIPL collects information to provide better services to all Users &ndash; from determining basic information such as which country a User is connecting from, to more complex information like how a User navigates the PCIPL website.</p>\n\n<p>Users may deliberately provide Information to PCIPL. For example, many Services require Users to create a member account (&quot;Account&quot;), which requires Users to provide a valid email address. Users may also add Information to their member profile, including their company details, their contact details, etc.</p>\n\n<p>PCIPL may also collect anonymous Information from Users without their explicit consent. For example, PCIPL may collect information about the services that Users use and how they use them, which device the User is using (such as hardware model, operating system version, and unique device identifiers), and which keywords Users&#39; search.</p>\n\n<p>PCIPL may collect and store information locally on Users&#39; devices using mechanisms such browser web storage (including HTML 5) and application data caches. PCIPL uses various technologies to collect and store information when Users visit a Service, and this may include sending one or more cookies or anonymous identifiers to Users&#39; devices.</p>\n\n<p>Users may set their browser to block all cookies, including cookies associated with PCIPL&#39;s Services, or to indicate when a cookie is being set by PCIPL. However, some Services may not function properly if Users&#39; cookies are disabled.</p>\n\n<p>PCIPL does not host banner advertisements from third&shy;party advertisers.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Information Uses</strong></p>\n\n<p>PCIPL uses Information from all Services to provide, maintain, protect and improve them, to develop new ones, and to protect PCIPL and Users. PCIPL also uses Information to offer Users tailored content and ads.</p>\n\n<p>When Users contact PCIPL, PCIPL may keep a record of Users&#39; communications to help solve any issues Users might be facing. PCIPL may use Users&#39; email addresses to inform them about Services, such as letting Users know about upcoming changes or improvements.</p>\n\n<p>PCIPL uses information collected from cookies and other technologies to improve Users&#39; experience and the overall quality of Services. When showing Users tailored ads, PCIPL will not associate a cookie or anonymous identifier with sensitive categories, such as those based on race, religion, sexual orientation, or health.</p>\n\n<p>PCIPL will ask for Users&#39; consent before using information for a purpose other than those that are set out in this policy.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Information Sharing</strong></p>\n\n<p>PCIPL does not share Information with companies, organizations, or individuals outside of PCIPL, unless one of the following circumstances applies:</p>\n\n<p>If PCIPL is involved in a merger, acquisition or asset sale, PCIPL will continue to ensure the confidentiality of Information and give affected Users notice before Information is transferred or becomes subject to a different privacy policy.</p>\n\n<p>PCIPL restricts access to Information to PCIPL employees and contractors who need to know the information in order to process it for PCIPL, and who are subject to strict contractual confidentiality obligations and will be disciplined or terminated if they fail to meet these obligations.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>About This Policy</strong></p>\n\n<p>This policy was last updated on May 1, 2020.</p>\n\n<p>This policy may change from time to time. PCIPL will not reduce Users&#39; rights under this Privacy Policy without Users&#39; explicit consent.</p>\n\n<p>PCIPL may modify this policy to; for example, reflect changes to the law or changes to PCIPL&#39;s Services. Users should look at this policy regularly. PCIPL will update the date at the start of this section when this policy is modified.</p>\n\n<p>This policy applies to all PCIPL Services.</p>\n', 0, '', '', '', 0, 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', 0, 0, '', '', 1, '2020-05-13 00:00:00', '2021-09-04 15:54:12', 1, 1),
(4, 1, NULL, '', '', 0, NULL, 'home', 1, 'Home', '', NULL, 'home', '', '', 0, '', '', '', 0, 'Akshaya Chaitanya NGO in Mumbai Working to Eradicate Hunger', 'Akshaya Chaitanya, an NGO in Mumbai that is addressing hunger in public hospitals. It is an initiative of HKM Charitable Foundation. Support now.', 'NGO in Mumbai, Hospital feeding in Mumbai, Public hospital in Mumbai, Giving food for free, Donate food to poor, Akshaya Chaitanya', '', 0, 0, '', '', 1, '2021-07-20 00:00:00', '2021-12-04 05:00:00', 1, 2),
(5, 0, 'banner_5667212.jpg', '', '', 1, NULL, '', 8, 'Our Kitchen in Mumbai', '', NULL, 'our-kitchen-in-mumbai', '', '', 0, '', '', '', 0, 'Kitchens of Akshaya Chaitanya | NGO Kitchen', 'Hygiene, nutrition, and quality are the three parameters Akshaya Chaitanya adhere to while preparing food at FSSAI compliant centralised kitchen in Byculla, Mumbai. To know more visit our kitchen.', 'Kitchens in mumbai, ngo kitchens, akshaya chaitanya kitchens, mumbai kitchens', '', 0, 0, '', '', 1, '2021-10-07 00:00:00', '2021-12-04 05:00:00', 1, 2),
(10, 0, 'banner_8157884.jpg', '', '', 0, NULL, 'Media', 8, 'Media', '', NULL, 'media', '', '', 0, '', '', '', 0, 'Akshaya Chaitanya Media | NGO Updates', 'Welcome to Akshaya Chaitanya - Ngo in Mumbai Media page. Here is a collection of media coverages of HKM Charitable Foundation’s initiatives. Know more.', 'ngo updates, akshaya chaitanya updates, ngo gallery, ngo news, ngo events, ngo press coverages, ngo works, ngo images', '', 0, 0, '', '', 1, '2021-10-25 00:00:00', '2021-12-04 05:00:00', 1, 2),
(16, 0, 'banner_1635727.jpg', '', '', 1, NULL, '', 8, 'Contact Us', '', NULL, 'contact-us', '', '', 0, '', '', '', 0, 'Akshaya Chaitanya Address | Contact Us', 'Akshaya Chaitanya D-401, GHP Trinity, Hiranandani Hospital Road, Powai, Mumbai – 400076, Maharashtra, India', 'akshaya chaitanya address, ngo address, ngo in mumbai, akshaya chaitanya ngo, contact us', '', 0, 0, '', '', 1, '2021-10-25 00:00:00', '2021-12-04 05:00:00', 1, 2),
(17, 0, 'banner_3361310.jpg', '', '', 1, NULL, 'Gallery', 8, 'Gallery', '', NULL, 'gallery', '', '', 0, '', '', '', 0, 'Akshaya Chaitanya Charity Images | NGO Photos', 'Glimpse of our events, food distribution, charity works and more. Visit the Akshaya Chaitanya photo gallery for a treat that exemplify the dedication of an NGO', 'ngo photos, akshaya chaitanya photos, ngo images, ngo gallery, akshaya chaitanya charity photo, nonprofit organization photo, charity works', '', 0, 0, '', '', 1, '2021-10-27 00:00:00', '2021-12-04 05:00:00', 1, 2),
(20, 0, 'banner_2480879.jpg', '', '', 1, NULL, '', 8, 'Milestones', '', NULL, 'milestones', '', '', 0, '', '', '', 0, 'Milestone or Achievements of Akshaya Chaitanya', 'Akshaya Chaitanya is committed to address the hunger situation among the marginalised family members of patients in Mumbai’s Government hospitals by providing nutritious food, free of cost.', 'NGO milestone, ngo works, NGO in mumbai, donate food to poor, hospital feeding in mumbai', '', 0, 0, '', '', 1, '2021-11-07 00:00:00', '2021-12-04 05:00:00', 1, 2),
(24, 10, NULL, '', '', 0, 1, '', 9, 'Cama & Albless Hospital', '', NULL, 'cama-albless-hospital', '', '', 0, '', '', '', 0, '', '', '', '', 0, 0, '', '', 1, '2021-11-18 00:00:00', '2021-11-18 13:18:32', 1, 1),
(28, 0, 'banner_5858934.jpg', '', '', 1, NULL, '', 8, 'School Meal Programme', '', NULL, 'school-meal-programme', '', '', 0, '', '', '', 0, '', '', '', '', 0, 0, '', '', 1, '2021-11-24 00:00:00', '2021-12-01 05:00:00', 1, 1),
(34, 0, NULL, '', '', 0, NULL, '', 10, 'Donate', '', NULL, 'donate', '', '', 0, '', '', '', 0, 'Donate to Akshaya Chaitanya | Donate Online', 'Support Akshaya Chaitanya’s Hospital Feeding Programme by contributing generously. All your contributions of ₹500 and above will be eligible for 80G deduction as per tax exemption policy.', 'donate online, online donations, donate to ngo, ngo donations, Donate for NGO, Donate food to poor, donate to feed the poor, donate to Akshaya Chaitanya', '', 0, 0, '', '', 1, '2021-12-05 00:00:00', '2021-12-06 05:00:00', 1, 2),
(35, 0, NULL, '', '', 0, NULL, '', 10, 'Save The Date', '', NULL, 'save-the-date', '', '', 0, '', '', '', 0, '', '', '', '', 0, 0, '', '', 1, '2021-12-19 00:00:00', '2021-12-20 18:30:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_types`
--

CREATE TABLE `page_types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `view_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `widget_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value_field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text_field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_ind` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=Inactive',
  `type_status` int(11) NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `last_modified_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_modified_by` int(11) NOT NULL,
  `widget_exit` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_types`
--

INSERT INTO `page_types` (`type_id`, `type_name`, `view_path`, `widget_path`, `model_name`, `value_field`, `text_field`, `status_ind`, `type_status`, `created_date`, `last_modified_date`, `created_by`, `last_modified_by`, `widget_exit`) VALUES
(1, 'Home', '', NULL, '', '', '', 1, 1, '0000-00-00 00:00:00', '2020-04-28 18:57:06', 1, 0, 0),
(2, 'Content Page', 'pages/page', 'templates/includes/common/widgets/page', 'pages_model', 'page_id', 'page_title', 1, 0, '0000-00-00 00:00:00', '2021-06-25 17:29:50', 1, 0, 0),
(3, 'About Us Page', 'about_us/page', 'templates/includes/common/widgets/page', 'pages_model', 'page_id', 'page_title', 1, 0, '0000-00-00 00:00:00', '2021-09-04 15:54:59', 1, 0, 0),
(4, 'Contact Us Page', 'contact_us/page', 'templates/includes/common/widgets/page', 'pages_model', 'page_id', 'page_title', 1, 0, '0000-00-00 00:00:00', '2021-09-04 15:54:55', 1, 0, 0),
(8, 'Seva Page', 'sevas/page', 'templates/includes/common/widgets/page', 'pages_model', 'page_id', 'page_title', 1, 0, '0000-00-00 00:00:00', '2021-09-04 15:54:55', 1, 0, 0),
(9, 'Long TextPage', 'long_text_page/page', 'templates/includes/common/widgets/page', 'pages_model', 'page_id', 'page_title', 1, 0, '0000-00-00 00:00:00', '2021-06-25 17:29:50', 1, 0, 0),
(10, 'Gallery Page', 'gallery/page', 'templates/includes/common/widgets/page', 'gallery_model', 'page_id', 'page_title', 1, 0, '0000-00-00 00:00:00', '2021-11-16 21:47:15', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `donation_id` int(11) NOT NULL,
  `receipt` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `name` varchar(180) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_number` bigint(20) NOT NULL,
  `location` text DEFAULT NULL,
  `city` varchar(120) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `savedate_check` varchar(20) NOT NULL,
  `save_the_date` date NOT NULL,
  `pan` varchar(222) NOT NULL,
  `dob` date NOT NULL DEFAULT current_timestamp(),
  `citizen` varchar(122) NOT NULL,
  `receive_updates` varchar(12) NOT NULL,
  `whatsapp_number` varchar(15) DEFAULT NULL,
  `razorpay_payment_id` varchar(150) NOT NULL,
  `org_name` varchar(255) NOT NULL,
  `programme` varchar(160) NOT NULL,
  `payment_status` varchar(160) NOT NULL,
  `payment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_short_description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status_ind` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `other_meta_tags` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_desc` text NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `status_ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `save_the_date`
--

CREATE TABLE `save_the_date` (
  `donation_id` int(11) NOT NULL,
  `receipt` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `name` varchar(180) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_number` bigint(20) NOT NULL,
  `location` text DEFAULT NULL,
  `city` varchar(120) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `savedate_check` varchar(20) NOT NULL,
  `save_the_date` date NOT NULL,
  `pan` varchar(222) NOT NULL,
  `dob` date NOT NULL DEFAULT current_timestamp(),
  `citizen` varchar(122) NOT NULL,
  `receive_updates` varchar(12) NOT NULL,
  `whatsapp_number` varchar(15) DEFAULT NULL,
  `razorpay_payment_id` varchar(150) NOT NULL,
  `org_name` varchar(255) NOT NULL,
  `programme` varchar(160) NOT NULL,
  `payment_status` varchar(160) NOT NULL,
  `payment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `setting_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `setting_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8_unicode_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  `status_ind` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `type`, `setting_key`, `setting_name`, `setting_value`, `display_order`, `status_ind`) VALUES
(1, 'text', 'logo_link', 'Logo Link', 'https://domain.org', 3, 1),
(2, 'image', 'logo_image', 'Logo Image', '', 2, 1),
(5, 'text', 'toll_free_time', 'Toll Free Number', '+91123456890', 4, 1),
(6, 'radiobutton', 'share_this_page_active', 'Share this page active', '1', 17, 1),
(7, 'text', 'facebook_link', 'Facebook Link', 'https://www.facebook.com/Akshaya-Chaitanya-103621671903765', 8, 1),
(8, 'text', 'twitter_link', 'Twitter Link', 'https://twitter.com/AkshyaChaitanya', 9, 1),
(9, 'text', 'youtube_link', 'Youtube Link', 'https://www.youtube.com/channel/UC0lP40okaCRcPV495GoTp5Q', 10, 1),
(10, 'text', 'flickr_link', 'Flickr Link', '', 11, 1),
(11, 'text', 'google_plus', 'Google Plus Link', 'https://www.youtube.com/channel/UCKKT_yNRmXi_FF42L0rbnRw/featured', 12, 1),
(12, 'text', 'rss_feed_link', 'Rss Feed Link', '', 13, 1),
(13, 'text', 'linked_in_link', 'Linked In', 'javascript:void(0)', 14, 1),
(14, 'text', 'instagram_link', 'Instagram Link', 'https://www.instagram.com/Akshaychaitanya', 15, 1),
(23, 'text', 'copy_right', 'Copy Right', '© 2007 - 2021 Akshaya Chaitanya. All rights reserved. ', 16, 1),
(26, 'textarea', 'office_address', 'Office Address', 'Bangalore, 515001', 6, 1),
(27, 'text', 'email', 'Email', 'test@domain.org ', 5, 1),
(28, 'image', 'footer_logo_image', 'Footer Logo Image', '', 7, 1),
(29, 'text', 'company_name', 'Company Name', 'Domain', 1, 1),
(30, 'textarea', 'about_description', 'Description', 'As an NGO in Mumbai, Akshaya Chaitanya is our attempt to make food \r\naccessible to the needy across Mumbai by serving them hot, nutritious, \r\nlocally palatable meals prepared at our very own state-of-the-art FSSAI \r\ncompliant kitchen.', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `preference_state` int(11) NOT NULL DEFAULT 0,
  `status_ind` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `no_of_kitchens` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `no_of_schools` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `no_of_childrens` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `kitchen_state` smallint(6) NOT NULL DEFAULT 0,
  `state_desc` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `state_name`, `state_code`, `country_id`, `preference_state`, `status_ind`, `created_date`, `modified_date`, `created_by`, `modified_by`, `latitude`, `longitude`, `no_of_kitchens`, `no_of_schools`, `no_of_childrens`, `kitchen_state`, `state_desc`) VALUES
(1, 'Karnataka', 'KA', 1, 1, 1, '2013-12-19 13:19:13', '2020-08-13 10:17:20', NULL, 2, '15.317277', '75.713888', '75.713888', '2629', '463682', 1, ''),
(2, 'Gujarat', 'GJ', 1, 1, 1, '2013-12-19 13:19:13', '2015-08-19 00:48:04', NULL, 1, '0', '0', '0', '0', '0', 0, ''),
(3, 'Goa', 'GA', 1, 0, 1, '2013-12-19 13:19:13', '2015-08-19 00:48:10', NULL, 1, '0', '0', '0', '0', '0', 0, ''),
(4, 'Tamilnadu', 'TN', 1, 0, 1, '2013-12-19 13:19:13', '2015-08-19 00:48:38', NULL, 1, '0', '0', '0', '0', '0', 0, ''),
(5, 'Delhi', 'DL', 1, 0, 1, '2013-12-19 13:19:13', '2015-08-19 00:48:44', NULL, 1, '0', '0', '0', '0', '0', 0, ''),
(6, 'Jammu Kashmir', 'JK', 1, 0, 1, '2013-12-19 13:19:13', '2015-08-19 00:48:49', NULL, 1, '0', '0', '0', '0', '0', 0, ''),
(7, 'Kerala', 'KL', 1, 0, 1, '2013-12-19 13:19:13', '2015-08-19 00:48:54', NULL, 1, '0', '0', '0', '0', '0', 0, ''),
(8, 'Andhra Pradesh', 'AP', 1, 1, 1, '2013-12-19 13:19:13', '2015-08-19 00:48:58', NULL, 1, '0', '0', '0', '0', '0', 0, ''),
(9, 'Rajasthan', 'RJ', 1, 1, 1, '2013-12-19 13:19:13', '2015-08-19 00:49:02', NULL, 1, '0', '0', '0', '0', '0', 0, ''),
(21, 'Assam', 'AS', 1, 1, 1, '2014-05-09 12:43:11', '2015-08-19 00:52:49', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(22, 'Chhattisgarh', 'CT', 1, 1, 1, '2014-05-09 12:43:29', '2015-08-19 00:52:55', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(23, 'Odisha', 'OR', 1, 1, 1, '2014-05-09 12:43:37', '2015-08-19 00:55:09', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(24, 'Uttar Pradesh', 'UP', 1, 1, 1, '2014-05-09 12:44:04', '2015-08-19 00:55:20', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(26, 'Arunachal Pradesh', 'AR', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:55:26', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(27, 'Bihar', 'BR', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:55:33', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(29, 'Haryana', 'HR', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:55:39', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(30, 'Himachal Pradesh', 'HP', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:55:43', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(31, 'Jharkhand', 'JH', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:55:50', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(32, 'Madhya Pradesh', 'MP', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:55:57', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(33, 'Maharashtra', 'MH', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:56:09', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(34, 'Manipur', 'MN', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:56:33', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(35, 'Meghalaya', 'ML', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:56:39', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(36, 'Mizoram', 'MZ', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:56:45', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(37, 'Nagaland', 'NL', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:56:53', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(38, 'Punjab', 'PB', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:56:59', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(39, 'Sikkim', 'SK', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:57:05', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(41, 'Tripura', 'TR', 1, 1, 1, '2014-05-09 12:44:04', '2019-01-16 00:43:34', 1, 1, '', '', '', '', '', 0, ''),
(42, 'Uttarakhand', 'UT', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:57:19', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(43, 'West Bengal', 'WB', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:57:26', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(44, 'Telangana', 'TG', 1, 1, 1, '2014-05-09 12:44:04', '2015-08-19 00:57:31', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(63, 'Andaman and Nicobar Islands', 'AN', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:57:31', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(64, 'Chandigarh', 'CH', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:57:31', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(65, 'Dadra and Nagar Haveli', 'DN', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:57:31', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(66, 'Daman and Diu', 'DD', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:57:31', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(67, 'Lakshadweep', 'LD', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:57:31', 1, 1, '0', '0', '0', '0', '0', 0, ''),
(68, 'Puducherry', 'PY', 1, 0, 1, '2014-05-09 12:44:04', '2015-08-19 00:57:31', 1, 1, '0', '0', '0', '0', '0', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `template_id` int(11) NOT NULL,
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_ind` tinyint(1) DEFAULT 1,
  `created_date` timestamp NULL DEFAULT NULL,
  `allow_customize` int(1) DEFAULT NULL COMMENT '1=Active, 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`template_id`, `template_name`, `template_path`, `status_ind`, `created_date`, `allow_customize`) VALUES
(1, 'Home Template', 'templates/home', 1, '2017-05-18 18:30:00', 1),
(2, 'Inner Page Template', 'templates/inner_page', 1, '2017-05-18 18:30:00', 1),
(3, 'About Us Page Template', 'templates/about_us_page', 1, '2017-05-18 18:30:00', 1),
(6, 'Seva Page Template', 'templates/seva_page', 1, '2017-05-18 18:30:00', 1),
(7, 'Long Text Page Template', 'templates/long_text_page', 1, '2017-05-18 18:30:00', 1),
(8, 'Custom Page Template', 'templates/custom_page', 1, '2017-05-18 18:30:00', 1),
(9, 'Gallery Page Template', 'templates/gallery_page', 1, '2017-05-18 18:30:00', 1),
(10, 'Donation Page Template', 'templates/campaigns/campaign_home', 1, '2017-05-18 18:30:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `testimonials_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `products_id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `status_ind` int(5) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `testimonials_image` varchar(255) NOT NULL,
  `testimonials_comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `widget_id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `widget_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_title` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `content_url` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `content_image` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `widget_type` int(11) DEFAULT NULL,
  `widget_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `widget_url` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_tittle` tinyint(1) DEFAULT 1 COMMENT '1=display,0=hide',
  `display_order` int(11) DEFAULT NULL,
  `link_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `widget_no` int(11) DEFAULT NULL,
  `page_wise_widgets` int(11) DEFAULT 0,
  `status_ind` tinyint(1) DEFAULT 1,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `allow_customize` tinyint(1) DEFAULT 1 COMMENT '1=editable,0=noteditable',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `last_modified_date` datetime NOT NULL,
  `news_events` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widget_areas`
--

CREATE TABLE `widget_areas` (
  `area_id` int(11) NOT NULL,
  `area_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `area_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_ind` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menuitems`
--
ALTER TABLE `admin_menuitems`
  ADD PRIMARY KEY (`menuitem_id`),
  ADD KEY `admin_menuitems_ibfk_2` (`parent_menuitem_id`),
  ADD KEY `admin_menuitems_ibfk_1` (`menu_id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `admin_roles_accesses`
--
ALTER TABLE `admin_roles_accesses`
  ADD KEY `admin_roles_accesses_ibfk_1` (`role_id`),
  ADD KEY `admin_roles_accesses_ibfk_2` (`menuitem_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `admin_users_accesses`
--
ALTER TABLE `admin_users_accesses`
  ADD KEY `admin_users_accesses_ibfk_1` (`user_id`),
  ADD KEY `admin_users_accesses_ibfk_2` (`menuitem_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`) USING BTREE;

--
-- Indexes for table `corporate_giving`
--
ALTER TABLE `corporate_giving`
  ADD PRIMARY KEY (`corporate_giving_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD UNIQUE KEY `country_id` (`country_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `faq_category`
--
ALTER TABLE `faq_category`
  ADD PRIMARY KEY (`faq_category_id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`feature_id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `gallery_category`
--
ALTER TABLE `gallery_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`gallery_img_id`);

--
-- Indexes for table `impact_numbers`
--
ALTER TABLE `impact_numbers`
  ADD PRIMARY KEY (`impact_numbers_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `menuitems`
--
ALTER TABLE `menuitems`
  ADD PRIMARY KEY (`menuitem_id`),
  ADD KEY `menu_id` (`menu_id`),
  ADD KEY `parent_menuitem_id` (`parent_menuitem_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `unique_slug` (`page_slug`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `page_types`
--
ALTER TABLE `page_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `save_the_date`
--
ALTER TABLE `save_the_date`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `template_id` (`template_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menuitems`
--
ALTER TABLE `admin_menuitems`
  MODIFY `menuitem_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `corporate_giving`
--
ALTER TABLE `corporate_giving`
  MODIFY `corporate_giving_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery_category`
--
ALTER TABLE `gallery_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `gallery_img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `impact_numbers`
--
ALTER TABLE `impact_numbers`
  MODIFY `impact_numbers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menuitems`
--
ALTER TABLE `menuitems`
  MODIFY `menuitem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `page_types`
--
ALTER TABLE `page_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `donation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `save_the_date`
--
ALTER TABLE `save_the_date`
  MODIFY `donation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
