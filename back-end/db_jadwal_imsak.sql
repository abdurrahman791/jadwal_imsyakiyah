-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 01:08 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jadwal_imsak`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add jadwal', 7, 'add_jadwal'),
(26, 'Can change jadwal', 7, 'change_jadwal'),
(27, 'Can delete jadwal', 7, 'delete_jadwal'),
(28, 'Can view jadwal', 7, 'view_jadwal');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$sPGfaxYsskNVbITmdjKnPE$LGDFSnGOKu1CTUNBiEaVMp5W+/66FN1rtFNl7FRL8fU=', '2023-04-18 22:26:24.936116', 1, 'jadwalimsak', '', '', 'jadwalimsak@gmail.com', 1, 1, '2023-04-18 22:14:32.404100');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-04-18 22:29:20.536843', '1', '1 Ramadhan 1444 H', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'jadwal_imsak_app', 'jadwal'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-18 21:59:29.666738'),
(2, 'auth', '0001_initial', '2023-04-18 21:59:30.929048'),
(3, 'admin', '0001_initial', '2023-04-18 21:59:31.199469'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-18 21:59:31.215252'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-18 21:59:31.231237'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-04-18 21:59:31.349131'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-04-18 21:59:31.466117'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-04-18 21:59:31.506952'),
(9, 'auth', '0004_alter_user_username_opts', '2023-04-18 21:59:31.524935'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-04-18 21:59:31.736737'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-04-18 21:59:31.744731'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-18 21:59:31.761714'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-04-18 21:59:31.793684'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-18 21:59:31.828654'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-04-18 21:59:31.864618'),
(16, 'auth', '0011_update_proxy_permissions', '2023-04-18 21:59:31.880604'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-18 21:59:31.915571'),
(18, 'jadwal_imsak_app', '0001_initial', '2023-04-18 21:59:31.957533'),
(19, 'sessions', '0001_initial', '2023-04-18 21:59:32.034460');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('lz4ml41k47aj6wx0phnjvpi9v04p3ztm', '.eJxVjDsOwjAQBe_iGlms1zEOJT1nsPZjkwCKpTipEHeHSCmgfTPzXibRugxpbXlOo5qzAXP43ZjkkacN6J2mW7VSp2Ue2W6K3Wmz16r5edndv4OB2vCtuXOALgd_DCzQYwkYYlbqRQEcYofFM0VS7xghSEE9oUhwLjIhZPP-ANENN7Y:1potmK:_lNddpbG90SkIZrBO3oJg-PW-cmcnQb19kUS893doE0', '2023-05-02 22:26:24.946105');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` bigint(20) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `imsak` time(6) NOT NULL,
  `subuh` time(6) NOT NULL,
  `terbit` time(6) NOT NULL,
  `duha` time(6) NOT NULL,
  `zuhur` time(6) NOT NULL,
  `asar` time(6) NOT NULL,
  `magrib` time(6) NOT NULL,
  `isya` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `tanggal`, `imsak`, `subuh`, `terbit`, `duha`, `zuhur`, `asar`, `magrib`, `isya`) VALUES
(1, '1 Ramadhan 1444 H', '04:53:00.000000', '05:03:00.000000', '06:15:00.000000', '06:42:00.000000', '12:24:00.000000', '15:38:00.000000', '18:26:00.000000', '19:35:00.000000'),
(2, '2 Ramadhan 1444 H', '04:53:00.000000', '05:03:00.000000', '06:15:00.000000', '06:42:00.000000', '12:24:00.000000', '15:38:00.000000', '18:26:00.000000', '19:35:00.000000'),
(3, '3 Ramadhan 1444 H', '04:53:00.000000', '05:03:00.000000', '06:14:00.000000', '06:42:00.000000', '12:23:00.000000', '15:38:00.000000', '18:25:00.000000', '19:34:00.000000'),
(4, '4 Ramadhan 1444 H', '04:53:00.000000', '05:03:00.000000', '06:14:00.000000', '06:42:00.000000', '12:23:00.000000', '15:38:00.000000', '18:25:00.000000', '19:34:00.000000'),
(5, '5 Ramadhan 1444 H', '04:52:00.000000', '05:02:00.000000', '06:14:00.000000', '06:42:00.000000', '12:23:00.000000', '15:38:00.000000', '18:24:00.000000', '19:33:00.000000'),
(6, '6 Ramadhan 1444 H', '04:52:00.000000', '05:02:00.000000', '06:14:00.000000', '06:42:00.000000', '12:23:00.000000', '15:38:00.000000', '18:24:00.000000', '19:33:00.000000'),
(7, '7 Ramadhan 1444 H', '04:52:00.000000', '05:02:00.000000', '06:14:00.000000', '06:42:00.000000', '12:22:00.000000', '15:38:00.000000', '18:23:00.000000', '19:32:00.000000'),
(8, '8 Ramadhan 1444 H', '04:52:00.000000', '05:02:00.000000', '06:14:00.000000', '06:41:00.000000', '12:22:00.000000', '15:38:00.000000', '18:23:00.000000', '19:31:00.000000'),
(9, '9 Ramadhan 1444 H', '04:52:00.000000', '05:02:00.000000', '06:14:00.000000', '06:41:00.000000', '12:22:00.000000', '15:38:00.000000', '18:22:00.000000', '19:31:00.000000'),
(10, '10 Ramadhan 1444 H', '04:52:00.000000', '05:02:00.000000', '06:14:00.000000', '06:41:00.000000', '12:21:00.000000', '15:38:00.000000', '18:22:00.000000', '19:30:00.000000'),
(11, '11 Ramadhan 1444 H', '04:52:00.000000', '05:02:00.000000', '06:14:00.000000', '06:41:00.000000', '12:21:00.000000', '15:38:00.000000', '18:21:00.000000', '19:30:00.000000'),
(12, '12 Ramadhan 1444 H', '04:52:00.000000', '05:02:00.000000', '06:14:00.000000', '06:41:00.000000', '12:21:00.000000', '15:38:00.000000', '18:21:00.000000', '19:29:00.000000'),
(13, '13 Ramadhan 1444 H', '04:52:00.000000', '05:02:00.000000', '06:14:00.000000', '06:41:00.000000', '12:20:00.000000', '15:38:00.000000', '18:20:00.000000', '19:29:00.000000'),
(14, '14 Ramadhan 1444 H', '04:52:00.000000', '05:02:00.000000', '06:14:00.000000', '06:41:00.000000', '12:20:00.000000', '15:37:00.000000', '18:19:00.000000', '19:28:00.000000'),
(15, '15 Ramadhan 1444 H', '04:52:00.000000', '05:02:00.000000', '06:14:00.000000', '06:41:00.000000', '12:20:00.000000', '15:37:00.000000', '18:19:00.000000', '19:28:00.000000'),
(16, '16 Ramadhan 1444 H', '04:51:00.000000', '05:01:00.000000', '06:14:00.000000', '06:41:00.000000', '12:20:00.000000', '15:37:00.000000', '18:18:00.000000', '19:28:00.000000'),
(17, '17 Ramadhan 1444 H', '04:51:00.000000', '05:01:00.000000', '06:14:00.000000', '06:41:00.000000', '12:19:00.000000', '15:37:00.000000', '18:18:00.000000', '19:27:00.000000'),
(18, '18 Ramadhan 1444 H', '04:51:00.000000', '05:01:00.000000', '06:14:00.000000', '06:41:00.000000', '12:19:00.000000', '15:37:00.000000', '18:17:00.000000', '19:27:00.000000'),
(19, '19 Ramadhan 1444 H', '04:51:00.000000', '05:01:00.000000', '06:14:00.000000', '06:41:00.000000', '12:19:00.000000', '15:37:00.000000', '18:17:00.000000', '19:26:00.000000'),
(20, '20 Ramadhan 1444 H', '04:51:00.000000', '05:01:00.000000', '06:13:00.000000', '06:41:00.000000', '12:19:00.000000', '15:37:00.000000', '18:16:00.000000', '19:26:00.000000'),
(21, '21 Ramadhan 1444 H', '04:51:00.000000', '05:01:00.000000', '06:13:00.000000', '06:41:00.000000', '12:18:00.000000', '15:37:00.000000', '18:16:00.000000', '19:25:00.000000'),
(22, '22 Ramadhan 1444 H', '04:51:00.000000', '05:01:00.000000', '06:13:00.000000', '06:41:00.000000', '12:18:00.000000', '15:37:00.000000', '18:15:00.000000', '19:25:00.000000'),
(23, '23 Ramadhan 1444 H', '04:51:00.000000', '05:01:00.000000', '06:13:00.000000', '06:41:00.000000', '12:18:00.000000', '15:37:00.000000', '18:15:00.000000', '19:25:00.000000'),
(24, '24 Ramadhan 1444 H', '04:51:00.000000', '05:01:00.000000', '06:13:00.000000', '06:41:00.000000', '12:18:00.000000', '15:36:00.000000', '18:15:00.000000', '19:24:00.000000'),
(25, '25 Ramadhan 1444 H', '04:51:00.000000', '05:01:00.000000', '06:13:00.000000', '06:41:00.000000', '12:17:00.000000', '15:36:00.000000', '18:14:00.000000', '19:24:00.000000'),
(26, '26 Ramadhan 1444 H', '04:50:00.000000', '05:00:00.000000', '06:13:00.000000', '06:41:00.000000', '12:17:00.000000', '15:36:00.000000', '18:14:00.000000', '19:23:00.000000'),
(27, '27 Ramadhan 1444 H', '04:50:00.000000', '05:00:00.000000', '06:13:00.000000', '06:41:00.000000', '12:17:00.000000', '15:36:00.000000', '18:13:00.000000', '19:23:00.000000'),
(28, '28 Ramadhan 1444 H', '04:50:00.000000', '05:00:00.000000', '06:13:00.000000', '06:41:00.000000', '12:17:00.000000', '15:36:00.000000', '18:13:00.000000', '19:23:00.000000'),
(29, '29 Ramadhan 1444 H', '04:50:00.000000', '05:00:00.000000', '06:13:00.000000', '06:41:00.000000', '12:16:00.000000', '15:36:00.000000', '18:12:00.000000', '19:22:00.000000'),
(30, '30 Ramadhan 1444 H', '04:50:00.000000', '05:00:00.000000', '06:13:00.000000', '06:41:00.000000', '12:16:00.000000', '15:36:00.000000', '18:12:00.000000', '19:22:00.000000');

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
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
