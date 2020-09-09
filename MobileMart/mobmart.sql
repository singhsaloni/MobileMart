-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 09, 2019 at 08:30 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mobmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `aadhar` varchar(18) NOT NULL,
  `address` varchar(90) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `pic` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `aadhar`, `address`, `mobile`, `pic`) VALUES
(1, 'pbkdf2_sha256$100000$g6HVGMYUL32C$kYON2m5GklxD3a+iRlBuL2Xh+9QU90cjeIPyFHMK8es=', '2019-08-04 08:27:12', 1, 'test', '', '', 'abc@gmail.com', 1, 1, '2019-07-25 17:36:35', '', '', '', ''),
(2, 'qwer1234', NULL, 1, 'ioioio', 'kbkjbjb', 'hgchgch', 'iii@gmail.com', 0, 1, '0000-00-00 00:00:00', '', '', '', ''),
(3, 'pbkdf2_sha256$100000$DQcwOJxhwOK2$hY8evRMAxntk+8qUsEqN1jr/fEH1EWbENSTjC45FrQw=', NULL, 0, 'sunny', '', '', '', 0, 1, '2019-07-26 10:48:44', '', '', '', ''),
(4, 'pbkdf2_sha256$100000$nyAt82b0gkBy$/tSCiB0Bbd1DdIGyusQobX2fFz9jM98Hc4vPo6TT6mw=', '2019-08-01 18:30:02', 0, 'ankit', 'Ankit', 'Kumar', 'greatinshu8962@gmail.com', 0, 1, '2019-07-26 14:28:08', '1234567898', '537F/124, INDRAPURI COLONY, IIM ROAD', '8840863827', '/media/asif-aman-1248857-unsplash.jpg'),
(5, 'pbkdf2_sha256$100000$XzHpsujAQhUY$ImN2M2IjRRjflR1QeW8J8k+y2SrhAQRtUwEmVOAe1IE=', '2019-07-27 10:47:50', 0, 'karam', 'Karam', 'Mohammed', 'Karam@gmail.com', 0, 1, '2019-07-27 10:47:40', '1234567754', 'kjdfvn dfv dkf vdfj v					\r\n						', '1234123434', '/media/ambar-simpang-1248270-unsplash_0EanDuc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `user` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `price` varchar(20) NOT NULL,
  `pic` varchar(300) NOT NULL,
  `card` varchar(50) NOT NULL,
  `hold` varchar(50) NOT NULL,
  `date` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `cvv` int(11) NOT NULL,
  `random` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`user`, `id`, `mobile`, `model`, `price`, `pic`, `card`, `hold`, `date`, `month`, `cvv`, `random`) VALUES
('ankit', 2, 'SAMSUNG', 's10', '23000', '/media/jenny-caywood-1238252-unsplash.jpg', '121212121212', 'Nazmi Inshaal', 14, 4, 454, '2080806062'),
('ankit', 1, 'LG', 'real g', '12999.0', '/media/josh-hild-1255612-unsplash.jpg', '121212121212', 'Nazmi Inshaal', 14, 4, 454, '2080806062');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `mobile`) VALUES
(1, 'hTc'),
(2, 'hTc'),
(3, 'SAMSUNG'),
(4, 'LG'),
(5, 'Vivo'),
(6, 'hTc'),
(7, 'SAMSUNG');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-07-25 17:34:25'),
(2, 'auth', '0001_initial', '2019-07-25 17:34:30'),
(3, 'admin', '0001_initial', '2019-07-25 17:34:31'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-07-25 17:34:32'),
(5, 'contenttypes', '0002_remove_content_type_name', '2019-07-25 17:34:32'),
(6, 'auth', '0002_alter_permission_name_max_length', '2019-07-25 17:34:33'),
(7, 'auth', '0003_alter_user_email_max_length', '2019-07-25 17:34:33'),
(8, 'auth', '0004_alter_user_username_opts', '2019-07-25 17:34:33'),
(9, 'auth', '0005_alter_user_last_login_null', '2019-07-25 17:34:34'),
(10, 'auth', '0006_require_contenttypes_0002', '2019-07-25 17:34:34'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2019-07-25 17:34:34'),
(12, 'auth', '0008_alter_user_username_max_length', '2019-07-25 17:34:34'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2019-07-25 17:34:35'),
(14, 'sessions', '0001_initial', '2019-07-25 17:34:36');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('aznhtm7rtq31cd9kvu7f23ldieg12tpv', 'MTgyNWVkZDgzMDAwZDQ3NjliOTRiMmQ2MmViNzYyZDE5ZDFiN2E3NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZTJmYzdlNDA2NTZkMmZhMDdjMGU5MGFiYzM3MGJjM2Q1NDcwMTJjIn0=', '2019-08-18 08:27:12'),
('l34pt3pa87wp4um929pbq69gqmgqsv59', 'MTgyNWVkZDgzMDAwZDQ3NjliOTRiMmQ2MmViNzYyZDE5ZDFiN2E3NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZTJmYzdlNDA2NTZkMmZhMDdjMGU5MGFiYzM3MGJjM2Q1NDcwMTJjIn0=', '2019-08-14 11:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE IF NOT EXISTS `mobile` (
  `mobile` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `charger` varchar(11) NOT NULL,
  `battery` varchar(11) NOT NULL,
  `headset` varchar(11) NOT NULL,
  `memory` varchar(11) NOT NULL,
  `datacable` varchar(11) NOT NULL,
  `pic` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL DEFAULT 'Classic Mobile For You With Good Features and Upgraded Camera....',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`mobile`, `model`, `price`, `quantity`, `charger`, `battery`, `headset`, `memory`, `datacable`, `pic`, `description`, `id`) VALUES
('LG', 'real g', '12999.0', '10', 'Yes', 'Yes', 'No', 'No', 'No', '/media/josh-hild-1255612-unsplash.jpg', '', 1),
('SAMSUNG', 's10', '23000', '12', 'Yes', 'Yes', 'Yes', 'No', 'No', '/media/jenny-caywood-1238252-unsplash.jpg', 'Best Phone in Good Range...\r\nBetter Camera and RAM', 2);

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
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
