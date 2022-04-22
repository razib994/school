-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2021 at 06:44 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ace_learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `id` bigint(20) NOT NULL,
  `activity_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` bigint(20) NOT NULL DEFAULT 0,
  `is_menu` bigint(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:active,0:in-active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`id`, `activity_name`, `module_id`, `is_menu`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin User Management', 4, 5, 1, NULL, NULL),
(2, 'Admin User Entry', 4, NULL, 1, NULL, NULL),
(3, 'Admin User Update', 4, NULL, 1, NULL, NULL),
(4, 'Admin User Delete', 4, NULL, 1, NULL, NULL),
(5, 'Action Management', 7, 10, 1, NULL, NULL),
(6, 'Action Entry', 7, NULL, 1, NULL, NULL),
(7, 'Action Update', 7, NULL, 1, NULL, NULL),
(8, 'Module Management', 7, 9, 1, NULL, NULL),
(9, 'Module Entry', 7, NULL, 1, NULL, NULL),
(10, 'Module Update', 7, NULL, 1, NULL, NULL),
(11, 'Module Delete', 7, NULL, 1, NULL, NULL),
(12, 'General Setting Management', 11, 8, 1, '2020-04-09 08:26:07', '2020-04-09 19:28:49'),
(15, 'General Setting Update', 11, NULL, 1, '2020-04-09 18:50:37', '2020-04-09 19:28:54'),
(16, 'Group Management', 11, 14, 1, '2020-04-10 04:54:39', '2020-04-10 04:59:51'),
(17, 'User Group Entry', 11, NULL, 1, '2020-04-10 04:55:22', '2020-04-10 04:55:22'),
(18, 'User Group Update', 11, NULL, 1, '2020-04-10 04:55:36', '2020-04-10 04:55:36'),
(19, 'User Group Delete', 11, NULL, 1, '2020-04-10 04:56:36', '2020-04-10 04:56:36'),
(20, 'Assign Group Permission', 11, NULL, 1, '2020-04-10 05:26:19', '2020-04-10 05:26:19'),
(93, 'School Management', 11, 39, 1, '2021-07-18 23:40:08', '2021-07-18 23:41:09'),
(94, 'School Entry', 11, NULL, 1, '2021-07-18 23:41:54', '2021-07-18 23:41:54'),
(95, 'School Update', 11, NULL, 1, '2021-07-18 23:42:12', '2021-07-18 23:42:12'),
(96, 'School Delete', 11, NULL, 1, '2021-07-19 01:32:43', '2021-07-19 01:32:43'),
(99, 'School Admins Management', 4, 41, 1, '2021-07-24 19:08:05', '2021-07-24 19:08:05'),
(100, 'School Admins Entry', 4, NULL, 1, '2021-07-25 11:59:14', '2021-07-25 11:59:14'),
(101, 'School Admin Update', 4, NULL, 1, '2021-07-25 12:00:11', '2021-07-25 12:00:11'),
(102, 'School Admin Delete', 4, NULL, 1, '2021-07-25 12:00:38', '2021-07-25 12:00:38'),
(103, 'Student User Management', 42, 43, 1, '2021-08-01 01:04:22', '2021-08-01 01:04:22'),
(104, 'Student User Entry', 42, NULL, 1, '2021-08-01 01:05:16', '2021-08-01 01:05:16'),
(105, 'Student User Update', 42, NULL, 1, '2021-08-01 01:05:38', '2021-08-01 01:05:38'),
(106, 'Student User Delete', 42, NULL, 1, '2021-08-01 01:05:55', '2021-08-01 01:05:55'),
(107, 'Teacher User Management', 42, 44, 1, '2021-08-01 01:08:13', '2021-08-01 01:08:13'),
(108, 'Teacher User Entry', 42, NULL, 1, '2021-08-01 01:08:38', '2021-08-01 01:08:51'),
(109, 'Teacher User Update', 42, NULL, 1, '2021-08-01 01:09:23', '2021-08-01 01:09:23'),
(110, 'Teacher User Delete', 42, NULL, 1, '2021-08-01 01:09:40', '2021-08-01 01:09:40'),
(111, 'Student Class Management', 42, 46, 1, '2021-08-08 05:10:58', '2021-08-09 23:51:20'),
(112, 'Subject Management', 42, 47, 1, '2021-08-09 02:01:51', '2021-08-09 02:01:51'),
(113, 'Subject Entry', 42, NULL, 1, '2021-08-09 02:06:23', '2021-08-09 02:06:23'),
(114, 'Subject Delete', 42, NULL, 1, '2021-08-09 02:06:55', '2021-08-09 02:06:55'),
(115, 'Subject Update', 42, NULL, 1, '2021-08-09 02:07:12', '2021-08-09 02:07:12'),
(116, 'Student Class Entry', 42, NULL, 1, '2021-08-11 16:00:16', '2021-08-11 16:00:16'),
(117, 'Student Class Update', 42, NULL, 1, '2021-08-11 16:00:50', '2021-08-11 16:00:50'),
(118, 'Student Class Delete', 42, NULL, 1, '2021-08-11 16:01:22', '2021-08-11 16:01:22'),
(119, 'Notice Management', 48, 49, 1, '2021-08-25 04:00:11', '2021-08-25 04:00:11'),
(120, 'Notice Delete', 48, NULL, 1, '2021-08-25 04:00:59', '2021-08-25 04:00:59'),
(121, 'Notice Entry', 48, NULL, 1, '2021-08-25 04:01:19', '2021-08-25 04:01:19'),
(122, 'Notice Update', 48, NULL, 1, '2021-08-25 04:01:31', '2021-08-25 04:01:31'),
(123, 'Notice Category Management', 11, 50, 1, '2021-08-25 04:04:49', '2021-08-25 04:04:49'),
(124, 'Notice Category Entry', 11, NULL, 1, '2021-08-25 04:05:19', '2021-08-25 04:05:19'),
(125, 'Notice Category Delete', 11, NULL, 1, '2021-08-25 04:05:50', '2021-08-25 04:05:50'),
(126, 'Notice Category Update', 11, NULL, 1, '2021-08-25 04:06:22', '2021-08-25 04:06:22'),
(127, 'Message Management', 48, 51, 1, '2021-08-25 04:06:51', '2021-08-25 04:06:51'),
(128, 'Message Entry', 48, NULL, 1, '2021-08-25 04:07:07', '2021-08-25 04:07:07'),
(129, 'Message Update', 48, NULL, 1, '2021-08-25 04:07:19', '2021-08-25 04:07:19'),
(130, 'Message Delete', 48, NULL, 1, '2021-08-25 04:07:32', '2021-08-25 04:07:32'),
(131, 'Quiz Management', 52, 53, 1, '2021-08-26 01:57:22', '2021-08-26 01:57:22'),
(132, 'Quiz Entry', 52, NULL, 1, '2021-08-26 07:01:51', '2021-08-26 07:01:51'),
(133, 'Quiz Update', 52, NULL, 1, '2021-08-26 07:02:02', '2021-08-26 07:02:02'),
(134, 'Quiz Delete', 52, NULL, 1, '2021-08-26 07:02:15', '2021-08-26 07:02:15'),
(135, 'Question Managment', 52, NULL, 1, '2021-09-06 15:13:40', '2021-09-06 15:13:40'),
(136, 'Question Entry', 52, NULL, 1, '2021-09-06 15:14:04', '2021-09-06 15:14:04'),
(137, 'Question Update', 52, NULL, 1, '2021-09-06 15:14:17', '2021-09-06 15:14:17'),
(138, 'Question Delete', 52, NULL, 1, '2021-09-06 15:14:30', '2021-09-06 15:14:30'),
(139, 'Assignment List', 52, 54, 1, '2021-09-08 23:40:28', '2021-09-08 23:40:28'),
(140, 'Assignment Entry', 52, NULL, 1, '2021-09-09 00:09:36', '2021-09-09 00:10:09'),
(141, 'Assignment Update', 52, NULL, 1, '2021-09-09 00:10:44', '2021-09-09 00:10:44'),
(142, 'Assignment Delete', 52, NULL, 1, '2021-09-09 00:11:07', '2021-09-09 00:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available_from` datetime NOT NULL,
  `deadline` datetime NOT NULL,
  `quiz_time_limit` time DEFAULT NULL,
  `question_time_limit` time DEFAULT NULL,
  `multiple_attampt` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `title`, `available_from`, `deadline`, `quiz_time_limit`, `question_time_limit`, `multiple_attampt`, `created_at`, `updated_at`) VALUES
(1, 'Assignment - 01', '2021-09-01 00:00:00', '2021-09-23 00:00:00', '00:00:12', '00:00:15', 'Yes', '2021-09-17 21:25:15', '2021-09-17 21:26:08'),
(2, 'Assignment - 02', '2021-09-01 00:00:00', '2021-09-17 00:00:00', '00:00:03', '00:00:07', 'Yes', '2021-09-17 21:40:28', '2021-09-17 21:40:28'),
(5, 'sf', '2021-09-07 00:11:00', '2021-09-07 01:01:00', '00:00:03', '00:00:04', 'Yes', '2021-09-18 01:24:57', '2021-09-18 22:19:28'),
(6, 'rrr', '2021-09-07 00:00:00', '2021-09-15 00:00:00', '00:00:04', '00:00:05', 'Yes', '2021-09-18 02:42:53', '2021-09-18 02:48:46'),
(7, 'New Assignment', '2021-09-06 00:00:00', '2021-09-15 10:00:00', '00:00:04', '00:00:06', 'Yes', '2021-09-18 21:28:34', '2021-09-18 22:50:21'),
(8, 'My New', '2021-09-08 00:00:00', '2021-09-30 00:00:00', '00:00:02', '00:00:11', 'Yes', '2021-09-18 22:18:43', '2021-09-18 22:18:43'),
(9, 'ee', '2021-09-21 00:00:00', '2021-09-29 00:00:00', '00:00:03', '00:04:44', 'Yes', '2021-09-20 04:59:57', '2021-09-20 04:59:57'),
(10, 'asdf', '2021-09-08 00:00:00', '2021-09-22 00:00:00', '00:00:12', '00:00:15', 'Yes', '2021-09-20 05:07:31', '2021-09-20 05:07:31'),
(11, 'rrr', '2021-08-30 00:00:00', '2021-09-22 00:00:00', '00:00:03', '00:00:05', 'Yes', '2021-09-20 05:09:24', '2021-09-20 05:09:24'),
(12, 'asdfa', '2021-09-07 00:00:00', '2021-09-28 00:00:00', '00:00:03', '00:00:06', 'Yes', '2021-09-20 05:11:00', '2021-09-20 05:11:00'),
(13, 'adfd', '2021-09-14 00:00:00', '2021-09-22 00:00:00', '00:00:03', '00:00:04', 'Yes', '2021-09-20 05:15:20', '2021-09-20 05:15:20'),
(14, 'asdfasd', '2021-09-06 00:00:00', '2021-09-22 00:00:00', '00:00:02', '00:00:03', 'Yes', '2021-09-20 05:18:19', '2021-09-20 05:18:19'),
(15, 'today', '2021-09-06 00:00:00', '2021-09-30 00:00:00', '00:00:04', '00:00:06', 'Yes', '2021-09-20 05:41:12', '2021-09-20 05:41:12'),
(16, 'dsafasd', '2021-09-06 00:00:00', '2021-09-15 00:00:00', '00:00:04', '00:00:06', 'Yes', '2021-09-20 05:47:10', '2021-09-20 05:47:10'),
(17, 'now', '2021-09-07 00:00:00', '2021-09-22 00:00:00', '00:00:03', '00:00:04', 'Yes', '2021-09-20 05:49:59', '2021-09-20 05:49:59'),
(18, 'ASDASDASD', '2021-09-13 00:00:00', '2021-09-22 00:00:00', '00:00:03', '00:00:04', 'Yes', '2021-09-20 05:57:11', '2021-09-20 05:57:11'),
(19, 'sdfasad', '2021-09-07 00:00:00', '2021-09-16 00:00:00', '00:00:04', '00:00:06', 'Yes', '2021-09-20 06:03:15', '2021-09-20 06:03:15'),
(20, 'sdfsadfasdf', '2021-09-07 00:00:00', '2021-10-01 00:00:00', '00:00:03', '00:00:04', 'Yes', '2021-09-20 06:05:36', '2021-09-20 06:05:36'),
(21, 'sadfasd', '2021-09-06 00:00:00', '2021-09-23 00:00:00', '00:00:04', '00:00:05', 'Yes', '2021-09-20 06:06:34', '2021-09-20 06:06:34'),
(32, 'New Bangladesh', '2021-09-07 00:00:00', '2021-10-07 00:00:00', '00:00:02', '00:00:03', 'Yes', '2021-09-22 06:02:46', '2021-09-22 06:02:46'),
(33, 'new Assignments Todays', '2021-09-23 00:00:00', '2021-09-30 00:00:00', '00:00:03', '00:00:04', 'Yes', '2021-09-22 14:18:28', '2021-09-22 14:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_quizzes`
--

CREATE TABLE `assignment_quizzes` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignment_quizzes`
--

INSERT INTO `assignment_quizzes` (`id`, `quiz_id`, `assignment_id`, `created_at`, `updated_at`) VALUES
(5, 1, 1, '2021-09-17 21:26:08', '2021-09-17 21:26:08'),
(6, 4, 1, '2021-09-17 21:26:08', '2021-09-17 21:26:08'),
(7, 5, 1, '2021-09-17 21:26:08', '2021-09-17 21:26:08'),
(8, 2, 1, '2021-09-17 21:26:08', '2021-09-17 21:26:08'),
(9, 1, 2, '2021-09-17 21:40:28', '2021-09-17 21:40:28'),
(15, 1, 6, '2021-09-18 02:48:46', '2021-09-18 02:48:46'),
(16, 4, 6, '2021-09-18 02:48:46', '2021-09-18 02:48:46'),
(17, 5, 6, '2021-09-18 02:48:46', '2021-09-18 02:48:46'),
(24, 1, 8, '2021-09-18 22:18:43', '2021-09-18 22:18:43'),
(25, 4, 8, '2021-09-18 22:18:43', '2021-09-18 22:18:43'),
(26, 5, 5, '2021-09-18 22:19:29', '2021-09-18 22:19:29'),
(27, 1, 7, '2021-09-18 22:50:21', '2021-09-18 22:50:21'),
(28, 4, 7, '2021-09-18 22:50:21', '2021-09-18 22:50:21'),
(29, 1, 9, '2021-09-20 04:59:58', '2021-09-20 04:59:58'),
(30, 4, 9, '2021-09-20 04:59:58', '2021-09-20 04:59:58'),
(31, 1, 10, '2021-09-20 05:07:31', '2021-09-20 05:07:31'),
(32, 4, 10, '2021-09-20 05:07:31', '2021-09-20 05:07:31'),
(33, 5, 10, '2021-09-20 05:07:31', '2021-09-20 05:07:31'),
(34, 1, 11, '2021-09-20 05:09:24', '2021-09-20 05:09:24'),
(35, 1, 12, '2021-09-20 05:11:00', '2021-09-20 05:11:00'),
(36, 1, 13, '2021-09-20 05:15:20', '2021-09-20 05:15:20'),
(37, 1, 14, '2021-09-20 05:18:19', '2021-09-20 05:18:19'),
(38, 4, 15, '2021-09-20 05:41:12', '2021-09-20 05:41:12'),
(39, 5, 15, '2021-09-20 05:41:12', '2021-09-20 05:41:12'),
(40, 1, 16, '2021-09-20 05:47:10', '2021-09-20 05:47:10'),
(41, 4, 16, '2021-09-20 05:47:10', '2021-09-20 05:47:10'),
(42, 1, 17, '2021-09-20 05:49:59', '2021-09-20 05:49:59'),
(43, 4, 18, '2021-09-20 05:57:11', '2021-09-20 05:57:11'),
(44, 5, 18, '2021-09-20 05:57:11', '2021-09-20 05:57:11'),
(45, 1, 19, '2021-09-20 06:03:15', '2021-09-20 06:03:15'),
(46, 4, 19, '2021-09-20 06:03:15', '2021-09-20 06:03:15'),
(47, 1, 20, '2021-09-20 06:05:36', '2021-09-20 06:05:36'),
(48, 4, 20, '2021-09-20 06:05:36', '2021-09-20 06:05:36'),
(49, 5, 20, '2021-09-20 06:05:36', '2021-09-20 06:05:36'),
(50, 1, 21, '2021-09-20 06:06:34', '2021-09-20 06:06:34'),
(51, 4, 21, '2021-09-20 06:06:34', '2021-09-20 06:06:34'),
(52, 5, 21, '2021-09-20 06:06:34', '2021-09-20 06:06:34'),
(75, 6, 32, '2021-09-22 06:02:46', '2021-09-22 06:02:46'),
(76, 7, 32, '2021-09-22 06:02:46', '2021-09-22 06:02:46'),
(77, 8, 33, '2021-09-22 14:18:28', '2021-09-22 14:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_students`
--

CREATE TABLE `assignment_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignment_students`
--

INSERT INTO `assignment_students` (`id`, `student_id`, `assignment_id`, `created_at`, `updated_at`) VALUES
(5, 11, 1, '2021-09-17 21:26:08', '2021-09-17 21:26:08'),
(6, 12, 1, '2021-09-17 21:26:08', '2021-09-17 21:26:08'),
(7, 13, 1, '2021-09-17 21:26:08', '2021-09-17 21:26:08'),
(8, 8, 1, '2021-09-17 21:26:08', '2021-09-17 21:26:08'),
(9, 15, 1, '2021-09-17 21:26:08', '2021-09-17 21:26:08'),
(10, 16, 1, '2021-09-17 21:26:08', '2021-09-17 21:26:08'),
(11, 12, 2, '2021-09-17 21:40:28', '2021-09-17 21:40:28'),
(12, 16, 2, '2021-09-17 21:40:28', '2021-09-17 21:40:28'),
(21, 11, 6, '2021-09-18 02:48:46', '2021-09-18 02:48:46'),
(22, 12, 6, '2021-09-18 02:48:46', '2021-09-18 02:48:46'),
(23, 13, 6, '2021-09-18 02:48:46', '2021-09-18 02:48:46'),
(24, 14, 6, '2021-09-18 02:48:46', '2021-09-18 02:48:46'),
(25, 15, 6, '2021-09-18 02:48:46', '2021-09-18 02:48:46'),
(26, 16, 6, '2021-09-18 02:48:46', '2021-09-18 02:48:46'),
(27, 8, 6, '2021-09-18 02:48:46', '2021-09-18 02:48:46'),
(28, 9, 6, '2021-09-18 02:48:46', '2021-09-18 02:48:46'),
(39, 11, 8, '2021-09-18 22:18:43', '2021-09-18 22:18:43'),
(40, 12, 8, '2021-09-18 22:18:43', '2021-09-18 22:18:43'),
(41, 13, 8, '2021-09-18 22:18:43', '2021-09-18 22:18:43'),
(42, 14, 8, '2021-09-18 22:18:43', '2021-09-18 22:18:43'),
(43, 15, 8, '2021-09-18 22:18:43', '2021-09-18 22:18:43'),
(44, 16, 8, '2021-09-18 22:18:43', '2021-09-18 22:18:43'),
(45, 11, 5, '2021-09-18 22:19:29', '2021-09-18 22:19:29'),
(46, 11, 7, '2021-09-18 22:50:21', '2021-09-18 22:50:21'),
(47, 12, 7, '2021-09-18 22:50:21', '2021-09-18 22:50:21'),
(48, 13, 7, '2021-09-18 22:50:21', '2021-09-18 22:50:21'),
(49, 14, 7, '2021-09-18 22:50:21', '2021-09-18 22:50:21'),
(50, 15, 7, '2021-09-18 22:50:21', '2021-09-18 22:50:21'),
(51, 16, 7, '2021-09-18 22:50:21', '2021-09-18 22:50:21'),
(52, 11, 9, '2021-09-20 04:59:58', '2021-09-20 04:59:58'),
(53, 12, 9, '2021-09-20 04:59:58', '2021-09-20 04:59:58'),
(54, 13, 9, '2021-09-20 04:59:58', '2021-09-20 04:59:58'),
(55, 11, 10, '2021-09-20 05:07:31', '2021-09-20 05:07:31'),
(56, 12, 10, '2021-09-20 05:07:31', '2021-09-20 05:07:31'),
(57, 15, 10, '2021-09-20 05:07:31', '2021-09-20 05:07:31'),
(58, 11, 11, '2021-09-20 05:09:24', '2021-09-20 05:09:24'),
(59, 12, 11, '2021-09-20 05:09:24', '2021-09-20 05:09:24'),
(60, 13, 11, '2021-09-20 05:09:24', '2021-09-20 05:09:24'),
(61, 14, 11, '2021-09-20 05:09:24', '2021-09-20 05:09:24'),
(62, 15, 11, '2021-09-20 05:09:24', '2021-09-20 05:09:24'),
(63, 16, 11, '2021-09-20 05:09:24', '2021-09-20 05:09:24'),
(64, 11, 12, '2021-09-20 05:11:00', '2021-09-20 05:11:00'),
(65, 12, 12, '2021-09-20 05:11:00', '2021-09-20 05:11:00'),
(66, 13, 12, '2021-09-20 05:11:00', '2021-09-20 05:11:00'),
(67, 14, 12, '2021-09-20 05:11:00', '2021-09-20 05:11:00'),
(68, 15, 12, '2021-09-20 05:11:00', '2021-09-20 05:11:00'),
(69, 16, 12, '2021-09-20 05:11:00', '2021-09-20 05:11:00'),
(70, 11, 13, '2021-09-20 05:15:20', '2021-09-20 05:15:20'),
(71, 12, 13, '2021-09-20 05:15:20', '2021-09-20 05:15:20'),
(72, 13, 13, '2021-09-20 05:15:20', '2021-09-20 05:15:20'),
(73, 14, 13, '2021-09-20 05:15:20', '2021-09-20 05:15:20'),
(74, 15, 13, '2021-09-20 05:15:20', '2021-09-20 05:15:20'),
(75, 16, 13, '2021-09-20 05:15:20', '2021-09-20 05:15:20'),
(76, 11, 14, '2021-09-20 05:18:19', '2021-09-20 05:18:19'),
(77, 12, 14, '2021-09-20 05:18:19', '2021-09-20 05:18:19'),
(78, 13, 14, '2021-09-20 05:18:19', '2021-09-20 05:18:19'),
(79, 14, 14, '2021-09-20 05:18:19', '2021-09-20 05:18:19'),
(80, 15, 14, '2021-09-20 05:18:19', '2021-09-20 05:18:19'),
(81, 16, 14, '2021-09-20 05:18:19', '2021-09-20 05:18:19'),
(82, 11, 15, '2021-09-20 05:41:12', '2021-09-20 05:41:12'),
(83, 12, 15, '2021-09-20 05:41:12', '2021-09-20 05:41:12'),
(84, 13, 15, '2021-09-20 05:41:12', '2021-09-20 05:41:12'),
(85, 14, 15, '2021-09-20 05:41:12', '2021-09-20 05:41:12'),
(86, 15, 15, '2021-09-20 05:41:12', '2021-09-20 05:41:12'),
(87, 16, 15, '2021-09-20 05:41:12', '2021-09-20 05:41:12'),
(88, 11, 16, '2021-09-20 05:47:10', '2021-09-20 05:47:10'),
(89, 15, 16, '2021-09-20 05:47:10', '2021-09-20 05:47:10'),
(90, 8, 17, '2021-09-20 05:49:59', '2021-09-20 05:49:59'),
(91, 11, 18, '2021-09-20 05:57:11', '2021-09-20 05:57:11'),
(92, 12, 18, '2021-09-20 05:57:11', '2021-09-20 05:57:11'),
(93, 13, 18, '2021-09-20 05:57:11', '2021-09-20 05:57:11'),
(94, 14, 18, '2021-09-20 05:57:11', '2021-09-20 05:57:11'),
(95, 15, 18, '2021-09-20 05:57:11', '2021-09-20 05:57:11'),
(96, 16, 18, '2021-09-20 05:57:11', '2021-09-20 05:57:11'),
(97, 11, 19, '2021-09-20 06:03:15', '2021-09-20 06:03:15'),
(98, 12, 19, '2021-09-20 06:03:15', '2021-09-20 06:03:15'),
(99, 13, 19, '2021-09-20 06:03:15', '2021-09-20 06:03:15'),
(100, 14, 19, '2021-09-20 06:03:15', '2021-09-20 06:03:15'),
(101, 15, 19, '2021-09-20 06:03:15', '2021-09-20 06:03:15'),
(102, 16, 19, '2021-09-20 06:03:15', '2021-09-20 06:03:15'),
(103, 11, 20, '2021-09-20 06:05:36', '2021-09-20 06:05:36'),
(104, 12, 20, '2021-09-20 06:05:36', '2021-09-20 06:05:36'),
(105, 13, 20, '2021-09-20 06:05:36', '2021-09-20 06:05:36'),
(106, 14, 20, '2021-09-20 06:05:36', '2021-09-20 06:05:36'),
(107, 15, 20, '2021-09-20 06:05:36', '2021-09-20 06:05:36'),
(108, 16, 20, '2021-09-20 06:05:36', '2021-09-20 06:05:36'),
(109, 11, 21, '2021-09-20 06:06:34', '2021-09-20 06:06:34'),
(110, 12, 21, '2021-09-20 06:06:34', '2021-09-20 06:06:34'),
(111, 13, 21, '2021-09-20 06:06:34', '2021-09-20 06:06:34'),
(112, 14, 21, '2021-09-20 06:06:34', '2021-09-20 06:06:34'),
(113, 15, 21, '2021-09-20 06:06:34', '2021-09-20 06:06:34'),
(114, 16, 21, '2021-09-20 06:06:34', '2021-09-20 06:06:34'),
(139, 11, 32, '2021-09-22 06:02:46', '2021-09-22 06:02:46'),
(140, 12, 32, '2021-09-22 06:02:46', '2021-09-22 06:02:46'),
(141, 13, 32, '2021-09-22 06:02:46', '2021-09-22 06:02:46'),
(142, 14, 32, '2021-09-22 06:02:46', '2021-09-22 06:02:46'),
(143, 15, 32, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
(144, 16, 32, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
(145, 19, 32, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
(146, 20, 32, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
(147, 21, 32, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
(148, 22, 32, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
(149, 23, 32, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
(150, 24, 32, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
(151, 27, 32, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
(152, 28, 32, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
(153, 29, 32, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
(154, 31, 32, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
(155, 32, 32, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
(156, 33, 32, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
(157, 34, 32, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
(158, 35, 32, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
(159, 13, 33, '2021-09-22 14:18:29', '2021-09-22 14:18:29'),
(160, 14, 33, '2021-09-22 14:18:29', '2021-09-22 14:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_stage_id` int(11) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `details`, `key_stage_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nursery Class', '(3 to 4 Years old)', 1, 'Active', NULL, NULL),
(2, 'Reception Class', '(4 to 5 years old)', 1, 'Active', NULL, NULL),
(3, 'Year 1', '(5 to 6 years old)', 2, 'Active', NULL, NULL),
(4, 'Year 2', '(6 to 7 years old)', 2, 'Active', NULL, NULL),
(5, 'Year 3', '(7 to 8 years old)', 3, 'Active', NULL, NULL),
(6, 'Year 4', '(8 to 9 years old)', 3, 'Active', NULL, NULL),
(7, 'Year 5', '(9 to 10 years old)', 3, 'Active', NULL, NULL),
(8, 'Year 6', '(10 to 11 years old)', 3, 'Active', NULL, NULL),
(9, 'Year 7', '(11 to 12 years old)', 4, 'Active', NULL, NULL),
(10, 'Year 8', '(12 to 13 years old)', 4, 'Active', NULL, NULL),
(11, 'Year 9', '(13 to 14 years old)', 4, 'Active', NULL, NULL),
(12, 'Year 10', '(14 to 15 years old)', 5, 'Active', NULL, NULL),
(13, 'Year 11', '(15 to 16 years old)', 5, 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_subjects`
--

CREATE TABLE `class_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_subjects`
--

INSERT INTO `class_subjects` (`id`, `class_id`, `subject_id`, `status`, `created_at`, `updated_at`) VALUES
(42, 9, 14, 'Active', '2021-08-14 04:53:51', '2021-08-14 04:53:51'),
(43, 9, 16, 'Active', '2021-08-14 04:53:51', '2021-08-14 04:53:51'),
(44, 10, 15, 'Active', '2021-08-14 04:54:09', '2021-08-14 04:54:09'),
(45, 11, 14, 'Active', '2021-08-14 04:54:25', '2021-08-14 04:54:25'),
(46, 11, 15, 'Active', '2021-08-14 04:54:25', '2021-08-14 04:54:25'),
(47, 12, 15, 'Active', '2021-08-14 04:54:46', '2021-08-14 04:54:46'),
(48, 12, 16, 'Active', '2021-08-14 04:54:46', '2021-08-14 04:54:46'),
(49, 13, 16, 'Active', '2021-08-14 04:55:02', '2021-08-14 04:55:02'),
(50, 13, 14, 'Active', NULL, NULL),
(51, 9, 15, 'Active', NULL, NULL),
(52, 13, 15, 'Active', NULL, NULL),
(53, 4, 14, 'Active', '2021-08-16 03:48:55', '2021-08-16 03:48:55'),
(54, 4, 16, 'Active', '2021-08-16 03:48:55', '2021-08-16 03:48:55'),
(55, 4, 15, 'Active', NULL, NULL),
(56, 10, 16, 'Active', NULL, NULL),
(57, 2, 16, 'Active', '2021-08-25 22:33:08', '2021-08-25 22:33:08'),
(58, 2, 15, 'Active', '2021-08-25 22:33:08', '2021-08-25 22:33:08'),
(59, 2, 14, 'Active', '2021-08-25 22:33:08', '2021-08-25 22:33:08'),
(60, 1, 16, 'Active', '2021-08-25 22:33:27', '2021-08-25 22:33:27'),
(61, 1, 14, 'Active', '2021-08-25 22:33:27', '2021-08-25 22:33:27'),
(62, 1, 15, 'Active', '2021-08-25 22:33:27', '2021-08-25 22:33:27'),
(63, 3, 16, 'Active', '2021-08-25 22:35:05', '2021-08-25 22:35:05'),
(64, 3, 17, 'Active', '2021-08-25 22:35:05', '2021-08-25 22:35:05'),
(65, 3, 18, 'Active', '2021-08-25 22:35:05', '2021-08-25 22:35:05'),
(66, 3, 19, 'Active', '2021-08-25 22:35:05', '2021-08-25 22:35:05'),
(67, 3, 20, 'Active', '2021-08-25 22:35:05', '2021-08-25 22:35:05'),
(68, 4, 16, 'Active', '2021-08-25 22:35:47', '2021-08-25 22:35:47'),
(69, 4, 17, 'Active', '2021-08-25 22:35:47', '2021-08-25 22:35:47'),
(70, 4, 21, 'Active', '2021-08-25 22:35:47', '2021-08-25 22:35:47'),
(71, 4, 18, 'Active', '2021-08-25 22:35:47', '2021-08-25 22:35:47'),
(72, 4, 19, 'Active', '2021-08-25 22:35:47', '2021-08-25 22:35:47'),
(73, 4, 22, 'Active', '2021-08-25 22:35:47', '2021-08-25 22:35:47'),
(74, 4, 20, 'Active', '2021-08-25 22:35:47', '2021-08-25 22:35:47'),
(75, 5, 16, 'Active', '2021-08-25 22:36:54', '2021-08-25 22:36:54'),
(76, 5, 17, 'Active', '2021-08-25 22:36:54', '2021-08-25 22:36:54'),
(77, 5, 23, 'Active', '2021-08-25 22:36:54', '2021-08-25 22:36:54'),
(78, 5, 18, 'Active', '2021-08-25 22:36:54', '2021-08-25 22:36:54'),
(79, 5, 24, 'Active', '2021-08-25 22:36:54', '2021-08-25 22:36:54'),
(80, 5, 19, 'Active', '2021-08-25 22:36:54', '2021-08-25 22:36:54'),
(81, 5, 22, 'Active', '2021-08-25 22:36:54', '2021-08-25 22:36:54'),
(82, 5, 20, 'Active', '2021-08-25 22:36:54', '2021-08-25 22:36:54'),
(83, 5, 25, 'Active', '2021-08-25 22:36:54', '2021-08-25 22:36:54'),
(84, 5, 26, 'Active', '2021-08-25 22:36:54', '2021-08-25 22:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(316, 'default', '{\"uuid\":\"d076901a-9b50-4843-97cb-a3d1f4b21508\",\"displayName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\\\":10:{s:9:\\\"studentID\\\";i:76;s:8:\\\"schoolID\\\";i:159;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1632390522, 1632390522),
(317, 'default', '{\"uuid\":\"3fb24907-4aa0-4808-be89-ab9b62c9d3d5\",\"displayName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\\\":10:{s:9:\\\"studentID\\\";i:77;s:8:\\\"schoolID\\\";i:159;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1632541077, 1632541077),
(318, 'default', '{\"uuid\":\"6fc77deb-864c-4606-a7e0-6c89ab3505cf\",\"displayName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\\\":10:{s:9:\\\"studentID\\\";i:78;s:8:\\\"schoolID\\\";i:159;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1633339608, 1633339608),
(319, 'default', '{\"uuid\":\"954683a9-ff2b-4b3f-a81f-75014f22d450\",\"displayName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\\\":10:{s:9:\\\"studentID\\\";i:79;s:8:\\\"schoolID\\\";i:159;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1633341783, 1633341783),
(320, 'default', '{\"uuid\":\"ba2d1e55-8282-4874-9bcf-de7309cbb9f7\",\"displayName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\\\":10:{s:9:\\\"studentID\\\";i:80;s:8:\\\"schoolID\\\";i:159;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1633342234, 1633342234),
(321, 'default', '{\"uuid\":\"5ae72d2d-c2f4-4c80-9e37-470e7165694c\",\"displayName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\\\":10:{s:9:\\\"studentID\\\";i:81;s:8:\\\"schoolID\\\";i:159;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1633347840, 1633347840);

-- --------------------------------------------------------

--
-- Table structure for table `key_stages`
--

CREATE TABLE `key_stages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `key_stages`
--

INSERT INTO `key_stages` (`id`, `name`, `class_group`, `status`, `created_at`, `updated_at`) VALUES
(1, 'EYFS', 'Early Years', 'Active', NULL, NULL),
(2, 'Key Stage 1', 'Primary School', 'Active', NULL, NULL),
(3, 'Key Stage 2', 'Primary School', 'Active', NULL, NULL),
(4, 'Key Stage 3', 'Secondary School', 'Active', NULL, NULL),
(5, 'Key Stage 4', 'Secondary School', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) NOT NULL,
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'value:0 if the menu is itself a parent otherwise anyother parent id',
  `serial_no` int(11) DEFAULT NULL,
  `menu_icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:active,0:in-active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `module_name`, `menu_title`, `menu_url`, `parent_id`, `serial_no`, `menu_icon_class`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Users', 'Users', '', 0, 6, 'pe-7s-users', 1, NULL, NULL),
(5, 'Users', 'Super Admin', 'user/admin/admin-user-management?type=Admin', 4, 1, NULL, 1, NULL, NULL),
(6, 'Users', 'School Admin', 'user/admin/admin-user-management?type=School', 4, 2, NULL, 1, NULL, NULL),
(7, 'Cpanel', 'Control Panel', '', 0, 8, 'pe-7s-tools', 1, NULL, NULL),
(8, 'Settings', 'General Setting', 'settings/general/general-setting', 11, 1, NULL, 1, NULL, NULL),
(9, 'Cpanel', 'Menus/Moduls', 'cp/module/manage-module', 7, 2, NULL, 1, NULL, NULL),
(10, 'Cpanel', 'Actions', 'cp/web-action/web-action-management', 7, 3, NULL, 1, NULL, NULL),
(11, 'Settings', 'Settings', '', 0, 7, 'pe-7s-settings', 1, NULL, NULL),
(14, 'Settings', 'User Groups', 'settings/admin/admin-group-management', 11, 2, NULL, 1, '2020-04-10 04:58:01', '2020-04-10 04:58:01'),
(39, 'Settings', 'Schools', 'settings/school', 11, NULL, NULL, 1, '2021-07-18 23:38:48', '2021-08-02 00:52:46'),
(41, 'Users', 'School Admin', 'school/admin', 4, NULL, NULL, 1, '2021-07-24 19:00:53', '2021-08-08 04:28:28'),
(42, 'Academic', 'Academic', '', 0, NULL, 'pe-7s-study', 1, '2021-08-01 00:58:41', '2021-08-01 00:58:41'),
(43, 'Academic', 'Students', 'student', 42, NULL, NULL, 1, '2021-08-01 01:01:37', '2021-08-02 23:14:56'),
(44, 'Academic', 'Teachers', 'teacher', 42, NULL, NULL, 1, '2021-08-01 01:07:16', '2021-08-02 23:15:06'),
(45, 'Class', 'Class', '', 0, NULL, 'pe-7s-notebook', 1, '2021-08-08 04:32:32', '2021-08-08 04:33:37'),
(46, 'Academic', 'Classes', 'student-class', 42, NULL, NULL, 1, '2021-08-08 05:10:16', '2021-08-14 03:18:59'),
(47, 'Academic', 'Subjects', 'subject', 42, NULL, NULL, 1, '2021-08-09 02:00:34', '2021-08-14 03:19:06'),
(48, 'Message & Notification', 'Message & Notification', '', 0, NULL, 'pe-7s-bell', 1, '2021-08-25 03:53:04', '2021-08-25 03:53:04'),
(49, 'Message & Notification', 'Notice', 'notice', 48, NULL, NULL, 1, '2021-08-25 03:56:24', '2021-08-25 03:56:24'),
(50, 'Settings', 'Notice Category', 'setting/admin/notice-category', 11, NULL, NULL, 1, '2021-08-25 03:57:19', '2021-08-25 03:57:19'),
(51, 'Message & Notification', 'Message', 'message', 48, NULL, NULL, 1, '2021-08-25 03:57:46', '2021-08-25 03:57:46'),
(52, 'Quizes', 'Quizes', '', 0, NULL, 'pe-7s-note2', 1, '2021-08-26 01:48:17', '2021-08-26 01:57:39'),
(53, 'Quizes', 'Quizes', 'quiz', 52, NULL, NULL, 1, '2021-08-26 01:52:13', '2021-08-26 01:52:13'),
(54, 'Assignment List', 'Assignments', 'assignment', 52, NULL, NULL, 1, '2021-09-08 23:38:44', '2021-09-08 23:38:44');

-- --------------------------------------------------------

--
-- Table structure for table `message_attachments`
--

CREATE TABLE `message_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message_masters`
--

CREATE TABLE `message_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_from` int(11) NOT NULL,
  `message_to` int(11) NOT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_seen` int(11) DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2016_06_01_000001_create_oauth_auth_codes_table', 8),
(9, '2016_06_01_000002_create_oauth_access_tokens_table', 8),
(10, '2016_06_01_000003_create_oauth_refresh_tokens_table', 8),
(11, '2016_06_01_000004_create_oauth_clients_table', 8),
(12, '2016_06_01_000005_create_oauth_personal_access_clients_table', 8),
(31, '2021_07_28_052824_create_jobs_table', 10),
(40, '2021_08_01_072240_create_teachers_table', 13),
(41, '2021_08_08_102054_create_years_table', 14),
(42, '2021_08_08_102250_create_class_years_table', 14),
(44, '2021_08_09_075926_create_key_stages_table', 15),
(46, '2021_08_09_085034_create_student_classes_table', 17),
(48, '2021_08_08_102424_create_classes_table', 18),
(50, '2021_08_01_071434_create_students_table', 19),
(51, '2021_08_09_090315_create_subjects_table', 20),
(53, '2021_08_11_115302_create_teacher_subjects_table', 21),
(54, '2021_08_10_062526_create_class_subjects_table', 22),
(55, '2021_08_10_023456_create_topics_table', 23),
(56, '2021_08_16_061141_create_student_subjects_table', 24),
(57, '2021_08_18_060411_create_notice_categories_table', 25),
(58, '2021_08_18_060534_create_notices_table', 25),
(59, '2021_08_23_015439_create_message_masters_table', 25),
(60, '2021_08_23_015603_create_message_attachments_table', 25),
(62, '2021_08_26_081807_create_options_table', 26),
(65, '2021_08_26_081838_create_questions_table', 28),
(66, '2021_08_26_081526_create_quizzes_table', 29),
(67, '2021_09_09_073115_create_assignments_table', 30),
(68, '2021_09_09_093618_create_assignment_quizzes_table', 31),
(69, '2021_09_09_093737_create_assignment_students_table', 31),
(71, '2021_07_19_062808_create_schools_table', 33),
(72, '2021_09_26_042101_create_quiz_answers_table', 34),
(73, '2021_09_26_042446_create_quiz_answer_options_table', 34),
(74, '2021_09_09_093827_create_quiz_students_table', 35);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice_date` date NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` date NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `notice_category_id`, `details`, `notice_date`, `attachment`, `expire_date`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '26 March', 1, 'Independents Day', '2021-08-25', 'cover page.pdf1629887023.pdf', '2021-08-26', 'Active', NULL, NULL, '2021-08-25 04:23:43', '2021-08-25 04:23:43'),
(2, 'First day', 2, 'Ok', '2021-08-26', 'Ace Learning (1).docx1629887167.docx', '2021-08-28', 'Active', NULL, NULL, '2021-08-25 04:26:07', '2021-08-25 04:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `notice_categories`
--

CREATE TABLE `notice_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice_categories`
--

INSERT INTO `notice_categories` (`id`, `category_name`, `status`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Holiday', 'Active', 'New Holiday', '2021-08-25 04:22:43', '2021-08-25 04:22:43'),
(2, 'New Day', 'Active', 'good Day', '2021-08-25 04:25:28', '2021-08-25 04:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0149ef05-2dcb-463c-a556-903d46e4a5ea', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 530, '{\"Type\":\"Assignment\",\"Id\":\"14\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
('0bd5b08b-c348-4ed0-8003-e763a4cdc322', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 539, '{\"Type\":\"Assignment\",\"Id\":\"23\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
('1011b644-46da-4bcd-a8b5-2844a5e6886a', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 543, '{\"Type\":\"Assignment\",\"Id\":\"27\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
('210f961e-c592-4e31-8459-00933894befb', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 529, '{\"Type\":\"Quizzes\",\"Id\":\"13\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:46', '2021-09-22 06:02:46'),
('240d38ce-6c47-47a3-a9e3-0145328f7f54', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 549, '{\"Type\":\"Assignment\",\"Id\":\"33\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
('26daa2dc-a93f-4c65-87d6-96c2d40eaa35', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 529, '{\"Type\":\"Quizzes\",\"Id\":\"13\",\"Message\":\"New student Assign Quizzes done. Rana\"}', NULL, '2021-09-22 05:10:50', '2021-09-22 05:10:50'),
('2d2b2c99-0214-4e9b-9b8f-d6c00d68569a', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Quizzes done. New Class\"}', NULL, '2021-10-17 21:47:29', '2021-10-17 21:47:29'),
('2dec5c85-52e8-4db3-a73b-d2230ea59b72', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 527, '{\"Type\":\"Quizzes\",\"Id\":\"11\",\"Message\":\"Student Assign Quizzes done. New Today Quizzes\"}', NULL, '2021-09-22 14:14:12', '2021-09-22 14:14:12'),
('31277ae5-afdb-4bd4-9964-58029fddd146', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 532, '{\"Type\":\"Assignment\",\"Id\":\"16\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
('34c6b437-cde1-4db2-9267-1e75a28329b1', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Quizzes done. General knowledge questions and answers\"}', NULL, '2021-10-03 03:49:23', '2021-10-03 03:49:23'),
('37642524-32d7-4a2c-ac94-f5de6375b272', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Quizzes done. General knowledge questions and answers\"}', NULL, '2021-10-03 03:45:03', '2021-10-03 03:45:03'),
('37c0d773-78a5-4d0a-bfef-7988f2695539', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Quizzes done. General knowledge questions and answers\"}', NULL, '2021-10-03 03:46:45', '2021-10-03 03:46:45'),
('38bbd651-9002-4de6-936d-f476d8ef2245', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 528, '{\"Type\":\"Quizzes\",\"Id\":\"12\",\"Message\":\"Student Assign Quizzes done. new\"}', NULL, '2021-09-24 13:47:26', '2021-09-24 13:47:26'),
('38f5579b-8593-443c-906e-21f3f5654c15', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 527, '{\"Type\":\"Quizzes\",\"Id\":\"11\",\"Message\":\"Student Assign Quizzes done. new\"}', NULL, '2021-09-24 13:47:26', '2021-09-24 13:47:26'),
('391bb0aa-a7ec-472b-92e0-005e766c3d21', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 528, '{\"Type\":\"Quizzes\",\"Id\":\"12\",\"Message\":\"Student Assign Quizzes done. Lady\"}', NULL, '2021-09-22 05:27:01', '2021-09-22 05:27:01'),
('3a67e477-0960-43ed-a799-7def394c10c9', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Quizzes done. General knowledge questions and answers\"}', NULL, '2021-10-03 03:46:09', '2021-10-03 03:46:09'),
('3e4760f4-b353-4f7a-8688-d6f26b13e20d', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Quizzes done. Bangladesh\"}', NULL, '2021-10-17 21:51:57', '2021-10-17 21:51:57'),
('474635ea-432c-4e65-99c6-e355a80c421e', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Quizzes done. Bangladesh\"}', NULL, '2021-10-14 04:20:46', '2021-10-14 04:20:46'),
('49e83cfa-9ce6-4dc8-b543-a9eb0d2945aa', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Quizzes done. New Class\"}', NULL, '2021-10-17 21:47:29', '2021-10-17 21:47:29'),
('4d8b278a-bd06-40fd-b393-e216844ed9f9', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 529, '{\"Type\":\"Quizzes\",\"Id\":\"13\",\"Message\":\"Student Assign Quizzes done. English\"}', NULL, '2021-10-14 04:43:19', '2021-10-14 04:43:19'),
('4fd6b137-0de1-4c80-b5bc-567656ccef9b', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Quizzes done. B-A\"}', NULL, '2021-10-05 10:58:57', '2021-10-05 10:58:57'),
('532b9151-6f87-4d5f-bc05-869309bc886c', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 540, '{\"Type\":\"Assignment\",\"Id\":\"24\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
('5955ae77-6b73-40de-a6d4-a1ea9b944bc6', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 529, '{\"Type\":\"Quizzes\",\"Id\":\"13\",\"Message\":\"Student Assign Quizzes done. New Today Quizzes\"}', NULL, '2021-09-22 14:14:12', '2021-09-22 14:14:12'),
('5afd572e-ce45-48f4-8681-c87b723e5fe0', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 530, '{\"Type\":\"Quizzes\",\"Id\":14,\"Message\":\"Student Class Update\\/Passed Year done. Year 1\"}', NULL, '2021-09-22 23:47:23', '2021-09-22 23:47:23'),
('5cba8945-aa8a-4f71-83d1-b4002b270ee7', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Quizzes done. Bangladesh Tour\"}', NULL, '2021-10-04 05:49:09', '2021-10-04 05:49:09'),
('5dbc0353-cb83-4fdb-ae81-968f9f419232', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 529, '{\"Type\":\"Quizzes\",\"Id\":\"13\",\"Message\":\"Student Assign Assignment done. new Assignments Todays\"}', NULL, '2021-09-22 14:18:29', '2021-09-22 14:18:29'),
('603f27a4-dcbc-4cad-9005-b8481ee469ca', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":81,\"Message\":\"Student Class Update\\/Passed Year done. Year 2\"}', NULL, '2021-10-04 06:02:41', '2021-10-04 06:02:41'),
('6526f7c5-a069-4408-a71a-160530e4eb09', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 536, '{\"Type\":\"Assignment\",\"Id\":\"20\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
('6544d67c-03ea-4a7a-a503-0259245e0afa', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Quizzes done. New Class\"}', NULL, '2021-10-17 22:13:25', '2021-10-17 22:13:25'),
('6fb23fce-a881-4a6a-931a-462201f3def5', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 528, '{\"Type\":\"Assignment\",\"Id\":\"12\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:46', '2021-09-22 06:02:46'),
('72aff68a-a3b4-4d1b-827e-8e47d02638c9', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 574, '{\"Type\":\"Quizzes\",\"Id\":78,\"Message\":\"Student Class Update\\/Passed Year done. Reception Class\"}', NULL, '2021-10-04 04:01:22', '2021-10-04 04:01:22'),
('76d4a065-a713-431e-8b6f-ba2130126c08', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 531, '{\"Type\":\"Assignment\",\"Id\":\"15\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
('7a482c51-6430-42a6-b6dc-57e377fbecc7', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 531, '{\"Type\":\"Quizzes\",\"Id\":\"15\",\"Message\":\"Student Assign Quizzes done. English\"}', NULL, '2021-10-14 04:43:19', '2021-10-14 04:43:19'),
('7e06b5f2-ce60-45ab-9cd6-4f90ebda4cd9', 'App\\Notifications\\TestNotification', 'App\\Models\\User', 523, '[]', NULL, '2021-09-21 23:03:08', '2021-09-21 23:03:08'),
('81b9d2df-3c6e-4c10-b563-cd648e911804', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 527, '{\"Type\":\"Assignment\",\"Id\":\"11\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:46', '2021-09-22 06:02:46'),
('87543a19-09da-477a-aced-d89636f0e386', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Quizzes done. Our Drinking Team Has A Trivia Problem\"}', NULL, '2021-10-06 21:43:05', '2021-10-06 21:43:05'),
('88e9a31d-0514-411f-96a8-3d530d1afa0f', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 530, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Quizzes done. Lady\"}', NULL, '2021-09-22 05:27:01', '2021-09-22 05:27:01'),
('8aa82479-57e6-4afe-89a1-787da641011e', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 547, '{\"Type\":\"Assignment\",\"Id\":\"31\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
('8b8ea4a5-629d-4a09-9038-cc22780ec9b9', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 538, '{\"Type\":\"Assignment\",\"Id\":\"22\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
('91403307-113d-4dfb-ba2e-6c3856277813', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Quizzes done. B-A\"}', NULL, '2021-10-06 22:57:23', '2021-10-06 22:57:23'),
('9fcddc43-2a81-4d78-b30f-f89ff7076a86', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Quizzes done. Algorithom Mathmatics\"}', NULL, '2021-10-17 22:13:04', '2021-10-17 22:13:04'),
('a0b7cd0b-6e01-448d-b032-05a2fcd5b504', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 576, '{\"Type\":\"Quizzes\",\"Id\":80,\"Message\":\"Student Class Update\\/Passed Year done. Reception Class\"}', NULL, '2021-10-04 04:21:40', '2021-10-04 04:21:40'),
('a5e009fb-f540-45d3-91f0-e7973019ba80', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 531, '{\"Type\":\"Quizzes\",\"Id\":15,\"Message\":\"Student Class Update\\/Passed Year done. Year 1\"}', NULL, '2021-09-24 13:11:47', '2021-09-24 13:11:47'),
('a96b0341-220d-4972-b3dd-be5c3ea4a15e', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 529, '{\"Type\":\"Quizzes\",\"Id\":\"13\",\"Message\":\"Student Assign Quizzes done. English\"}', NULL, '2021-10-17 21:52:18', '2021-10-17 21:52:18'),
('abe2614e-2954-4e2f-8ff8-cbfa1a8a14ee', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 576, '{\"Type\":\"Quizzes\",\"Id\":80,\"Message\":\"Student Class Update\\/Passed Year done. Reception Class\"}', NULL, '2021-10-04 04:34:25', '2021-10-04 04:34:25'),
('adaeb6cf-7118-4e2f-a2b0-89c3a7e088a4', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Quizzes done. General knowledge questions and answers\"}', NULL, '2021-10-06 20:47:02', '2021-10-06 20:47:02'),
('af279820-7971-4adb-a8bb-6f9788c2b20a', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 574, '{\"Type\":\"Quizzes\",\"Id\":78,\"Message\":\"Student Class Update\\/Passed Year done. Reception Class\"}', NULL, '2021-10-04 03:44:55', '2021-10-04 03:44:55'),
('b2f69386-da9d-49a6-8482-09a64e1a220b', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Quizzes done. Bangladesh\"}', NULL, '2021-10-17 22:13:14', '2021-10-17 22:13:14'),
('b32b2905-62d9-4fdc-a0de-f3c6ed15d6f5', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 545, '{\"Type\":\"Assignment\",\"Id\":\"29\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
('b42aed4e-8d8f-4fad-b6a7-267691b2fde5', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 540, '{\"Type\":\"Quizzes\",\"Id\":\"24\",\"Message\":\"Student Assign Quizzes done. The Winning Team\"}', NULL, '2021-09-26 00:50:34', '2021-09-26 00:50:34'),
('b546fbcd-abb5-4ef1-a71f-1a3278e543ae', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Quizzes done. Algorithom Mathmatics\"}', NULL, '2021-10-17 22:13:04', '2021-10-17 22:13:04'),
('bc351871-7ea4-4db8-b405-c20c6f248cc6', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 576, '{\"Type\":\"Quizzes\",\"Id\":80,\"Message\":\"Student Class Update\\/Passed Year done. Reception Class\"}', NULL, '2021-10-04 04:15:41', '2021-10-04 04:15:41'),
('bcb89419-d5e9-40c2-afa2-b64738424373', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 529, '{\"Type\":\"Quizzes\",\"Id\":\"13\",\"Message\":\"Student Assign Quizzes done. Lady\"}', NULL, '2021-09-22 05:27:01', '2021-09-22 05:27:01'),
('c18549b7-4982-4bad-934b-5132613a7ac3', 'App\\Notifications\\TestNotification', 'App\\Models\\User', 523, '[]', NULL, '2021-09-21 23:04:26', '2021-09-21 23:04:26'),
('c939456e-6c25-4d5b-98cf-780d22d9001d', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 576, '{\"Type\":\"Quizzes\",\"Id\":80,\"Message\":\"Student Class Update\\/Passed Year done. Reception Class\"}', NULL, '2021-10-04 04:34:39', '2021-10-04 04:34:39'),
('caf900eb-9d3e-454d-80b4-a1d333ade9fd', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 576, '{\"Type\":\"Quizzes\",\"Id\":80,\"Message\":\"Student Class Update\\/Passed Year done. Nursery Class\"}', NULL, '2021-10-04 04:11:18', '2021-10-04 04:11:18'),
('cbd373c8-7cd3-4ac8-b877-8b15e8e9d9a7', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 537, '{\"Type\":\"Assignment\",\"Id\":\"21\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
('d0bf679e-4d17-4ccf-a85b-ebeba22c0965', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Quizzes done. Algorithom Mathmatics\"}', NULL, '2021-10-17 21:51:00', '2021-10-17 21:51:00'),
('d0e9a041-2fd0-455a-b66e-ee7a18ba432f', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 531, '{\"Type\":\"Quizzes\",\"Id\":\"15\",\"Message\":\"Student Assign Quizzes done. Lady\"}', NULL, '2021-09-22 05:27:01', '2021-09-22 05:27:01'),
('d16d4791-e52c-4bc5-8745-bcfc47cd7b81', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 528, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"New student Assign Quizzes done. Rana\"}', NULL, '2021-09-22 05:10:50', '2021-09-22 05:10:50'),
('d49418df-635a-4949-bfd1-bc2a5961511e', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 527, '{\"Type\":\"Quizzes\",\"Id\":\"11\",\"Message\":\"Student Assign Quizzes done. The Winning Team\"}', NULL, '2021-09-26 00:50:34', '2021-09-26 00:50:34'),
('d598420d-a009-4577-9180-9279c03b25bc', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 575, '{\"Type\":\"Quizzes\",\"Id\":79,\"Message\":\"Student Class Update\\/Passed Year done. Reception Class\"}', NULL, '2021-10-04 04:04:09', '2021-10-04 04:04:09'),
('da9f9c6a-b96b-4e36-be0a-5ad166851729', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Quizzes done. Celebrity Pun Team\"}', NULL, '2021-10-05 03:10:09', '2021-10-05 03:10:09'),
('dc7ec04d-df99-4d82-aa1d-12c30aa11fd3', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Quizzes done. General knowledge questions and answers\"}', NULL, '2021-10-03 03:47:27', '2021-10-03 03:47:27'),
('de49c1b8-7a62-4dac-b7df-8521c6713f8a', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Quizzes done. B-A\"}', NULL, '2021-10-06 22:57:23', '2021-10-06 22:57:23'),
('de87829f-d276-439f-827e-a3b80ea78b9e', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 548, '{\"Type\":\"Assignment\",\"Id\":\"32\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
('e228746d-7aed-476f-b4f2-473629befdfe', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Quizzes done. General knowledge questions and answers\"}', NULL, '2021-10-05 03:13:22', '2021-10-05 03:13:22'),
('e311ef05-5561-46d4-a7c6-d418d272d16f', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 529, '{\"Type\":\"Quizzes\",\"Id\":\"13\",\"Message\":\"Student Assign Quizzes done. English\"}', NULL, '2021-10-17 22:13:35', '2021-10-17 22:13:35'),
('e45d3d51-bc19-48ab-a514-740c52ae4432', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Quizzes done. Alcohol Related Team\"}', NULL, '2021-10-06 21:52:57', '2021-10-06 21:52:57'),
('e471d9dc-dd89-4b87-8792-94d40fff5690', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Quizzes done. Our Drinking Team Has A Trivia Problem\"}', NULL, '2021-09-26 01:16:09', '2021-09-26 01:16:09'),
('e4a73a2f-1985-47a9-8fc7-8c5d77b5ae0a', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 540, '{\"Type\":\"Quizzes\",\"Id\":\"24\",\"Message\":\"Student Assign Quizzes done. new\"}', NULL, '2021-09-24 13:47:26', '2021-09-24 13:47:26'),
('e5b3b2bd-4060-45a2-81f3-77f7a6ba3439', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 531, '{\"Type\":\"Quizzes\",\"Id\":\"15\",\"Message\":\"Student Assign Quizzes done. New Today Quizzes\"}', NULL, '2021-09-22 14:14:12', '2021-09-22 14:14:12'),
('e81ae890-9dba-4d52-80af-a275c95ad425', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Quizzes done. Bangladesh\"}', NULL, '2021-10-14 04:20:46', '2021-10-14 04:20:46'),
('ea3c5cf9-d285-4d7f-aad3-189be65f5cd5', 'App\\Notifications\\TestNotification', 'App\\Models\\User', 523, '{\"Type\":\"Courses\",\"Id\":8,\"Message\":\"New student Create done. Rana\"}', NULL, '2021-09-21 23:05:21', '2021-09-21 23:05:21'),
('ece16654-a717-47a6-b573-79d77e675a88', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 535, '{\"Type\":\"Assignment\",\"Id\":\"19\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
('ee3cdeaa-be8d-4c17-88ca-dd708da81dc3', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 528, '{\"Type\":\"Quizzes\",\"Id\":\"12\",\"Message\":\"Student Assign Quizzes done. The Winning Team\"}', NULL, '2021-09-26 00:50:34', '2021-09-26 00:50:34'),
('ee9e0e38-515f-4188-bd12-9eee8917de58', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Quizzes done. Celebrity Pun Team\"}', NULL, '2021-10-05 03:10:09', '2021-10-05 03:10:09'),
('ef799aa0-63f8-419c-a13b-3ba1dc23975f', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 532, '{\"Type\":\"Quizzes\",\"Id\":\"16\",\"Message\":\"Student Assign Quizzes done. The Winning Team\"}', NULL, '2021-09-26 00:50:34', '2021-09-26 00:50:34'),
('f071e7b1-5ec9-4291-adf9-f47d5fcbaaf3', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 527, '{\"Type\":\"Quizzes\",\"Id\":\"11\",\"Message\":\"Student Assign Quizzes done. Lady\"}', NULL, '2021-10-05 05:45:33', '2021-10-05 05:45:33'),
('f0ad6eec-47d3-45d3-b1a6-283e2eaca1f3', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Quizzes done. Algorithom Mathmatics\"}', NULL, '2021-10-14 04:37:20', '2021-10-14 04:37:20'),
('f1e125f5-851b-408c-9380-5126b6bd4d10', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 530, '{\"Type\":\"Quizzes\",\"Id\":\"14\",\"Message\":\"Student Assign Assignment done. new Assignments Todays\"}', NULL, '2021-09-22 14:18:29', '2021-09-22 14:18:29'),
('f324ac52-5a97-430b-9f83-510036401b9f', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 527, '{\"Type\":\"Quizzes\",\"Id\":\"11\",\"Message\":\"New student Assign Quizzes done. Rana\"}', NULL, '2021-09-22 05:10:50', '2021-09-22 05:10:50'),
('f35e8caa-503f-432f-9975-e62fd697c8cb', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 551, '{\"Type\":\"Assignment\",\"Id\":\"35\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
('f3db2d1f-dda4-49d3-933d-676cbe817ee0', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 529, '{\"Type\":\"Quizzes\",\"Id\":13,\"Message\":\"Student Class Update\\/Passed Year done. Year 1\"}', NULL, '2021-09-25 00:59:10', '2021-09-25 00:59:10'),
('f437363e-8d06-4a2d-bade-a1a746499e2c', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 550, '{\"Type\":\"Assignment\",\"Id\":\"34\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
('f4e129d0-d3d8-4200-bbaf-3c3c7b3a2c81', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 574, '{\"Type\":\"Quizzes\",\"Id\":78,\"Message\":\"Student Class Update\\/Passed Year done. Reception Class\"}', NULL, '2021-10-04 03:50:26', '2021-10-04 03:50:26'),
('fa682199-dc54-4c08-b50b-110a8816302e', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 527, '{\"Type\":\"Quizzes\",\"Id\":\"11\",\"Message\":\"Student Assign Quizzes done. Lady\"}', NULL, '2021-09-22 05:27:01', '2021-09-22 05:27:01'),
('fcb713ef-1abc-44a0-8a5a-a6ad12f0c2e6', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 544, '{\"Type\":\"Assignment\",\"Id\":\"28\",\"Message\":\"Student Assign Assignment done. New Bangladesh\"}', NULL, '2021-09-22 06:02:47', '2021-09-22 06:02:47'),
('feea0b93-bb3b-42c0-afc0-27dc6fed2127', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 575, '{\"Type\":\"Quizzes\",\"Id\":79,\"Message\":\"Student Class Update\\/Passed Year done. Nursery Class\"}', NULL, '2021-10-04 04:03:30', '2021-10-04 04:03:30'),
('feee9a66-051d-4893-8d62-ad924b55cd60', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 575, '{\"Type\":\"Quizzes\",\"Id\":79,\"Message\":\"Student Class Update\\/Passed Year done. Reception Class\"}', NULL, '2021-10-04 04:05:23', '2021-10-04 04:05:23');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(11) NOT NULL,
  `question_option_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `question_option_title`, `is_answer`, `created_at`, `updated_at`) VALUES
(11, 4, 'Free Text', 'Agoraphobia', '2021-09-07 22:55:55', '2021-09-07 22:55:55'),
(12, 5, 'Fill in the blanks', 'Stairway to Heaven', '2021-09-07 22:56:42', '2021-09-07 22:56:42'),
(13, 5, 'Fill in the blanks', 'Wind of Change', '2021-09-07 22:56:42', '2021-09-07 22:56:42'),
(14, 6, '120 km/h', '0', '2021-09-07 22:59:01', '2021-09-07 22:59:01'),
(15, 6, '1,200 km/h', '1', '2021-09-07 22:59:01', '2021-09-07 22:59:01'),
(16, 6, '400 km/h', '1', '2021-09-07 22:59:01', '2021-09-07 22:59:01'),
(17, 6, '700 km/h', '0', '2021-09-07 22:59:01', '2021-09-07 22:59:01'),
(18, 7, 'To measure the width of the tree', '0', '2021-09-07 23:00:44', '2021-09-07 23:00:44'),
(19, 7, 'To count the rings on the trunk', '0', '2021-09-07 23:00:44', '2021-09-07 23:00:44'),
(20, 7, 'To count the number of leaves', '1', '2021-09-07 23:00:44', '2021-09-07 23:00:44'),
(21, 7, 'To measure the height of the tree', '0', '2021-09-07 23:00:44', '2021-09-07 23:00:44'),
(22, 8, 'True', '1', '2021-09-07 23:02:32', '2021-09-07 23:02:32'),
(23, 8, 'False', '0', '2021-09-07 23:02:32', '2021-09-07 23:02:32'),
(24, 9, 'Free Text', 'This is ok', '2021-09-07 23:03:11', '2021-09-07 23:03:11'),
(25, 10, 'Fill in the blanks', 'Rune stones', '2021-09-07 23:03:57', '2021-09-07 23:03:57'),
(26, 10, 'Fill in the blanks', 'Seal skins', '2021-09-07 23:03:57', '2021-09-07 23:03:57'),
(27, 11, 'France', '1', '2021-09-07 23:15:14', '2021-09-07 23:15:14'),
(28, 11, 'Japan', '1', '2021-09-07 23:15:14', '2021-09-07 23:15:14'),
(29, 11, 'Britain', '1', '2021-09-07 23:15:14', '2021-09-07 23:15:14'),
(30, 11, 'Germany', '0', '2021-09-07 23:15:14', '2021-09-07 23:15:14'),
(31, 11, 'Bangladesh', '0', '2021-09-07 23:15:14', '2021-09-07 23:15:14'),
(32, 12, 'Liquid lava', '1', '2021-09-07 23:16:14', '2021-09-07 23:16:14'),
(33, 12, 'Gas', '1', '2021-09-07 23:16:14', '2021-09-07 23:16:14'),
(34, 12, 'Molten iron', '1', '2021-09-07 23:16:14', '2021-09-07 23:16:14'),
(35, 12, 'Rock', '1', '2021-09-07 23:16:14', '2021-09-07 23:16:14'),
(36, 13, 'True', '1', '2021-09-07 23:17:04', '2021-09-07 23:17:04'),
(37, 13, 'False', '0', '2021-09-07 23:17:04', '2021-09-07 23:17:04'),
(38, 14, 'Free Text', 'January and February', '2021-09-07 23:17:28', '2021-09-07 23:17:28'),
(41, 15, 'Fill in the blanks', 'Cheetah', '2021-09-07 23:19:19', '2021-09-07 23:19:19'),
(42, 15, 'Fill in the blanks', 'Leopard', '2021-09-07 23:19:19', '2021-09-07 23:19:19'),
(43, 15, 'Fill in the blanks', 'Tiger', '2021-09-07 23:19:19', '2021-09-07 23:19:19'),
(48, 16, 'A', '0', '2021-09-08 02:01:57', '2021-09-08 02:01:57'),
(49, 16, 'B', '1', '2021-09-08 02:01:57', '2021-09-08 02:01:57'),
(50, 16, 'C', '0', '2021-09-08 02:01:57', '2021-09-08 02:01:57'),
(51, 16, 'D', '1', '2021-09-08 02:01:57', '2021-09-08 02:01:57'),
(52, 17, 'A', '0', '2021-09-08 05:01:21', '2021-09-08 05:01:21'),
(53, 17, 'C', '1', '2021-09-08 05:01:21', '2021-09-08 05:01:21'),
(54, 17, 'D', '0', '2021-09-08 05:01:21', '2021-09-08 05:01:21'),
(55, 17, 'T', '1', '2021-09-08 05:01:21', '2021-09-08 05:01:21'),
(56, 18, 'asdyy', '0', '2021-09-08 05:07:18', '2021-09-08 05:07:18'),
(57, 18, 'asdf44', '1', '2021-09-08 05:07:18', '2021-09-08 05:07:18'),
(58, 18, 'asdftt', '1', '2021-09-08 05:07:18', '2021-09-08 05:07:18'),
(59, 18, 'asdfsdfe', '0', '2021-09-08 05:07:18', '2021-09-08 05:07:18'),
(60, 19, 'd', '0', '2021-09-08 05:28:13', '2021-09-08 05:28:13'),
(61, 19, 'ee', '1', '2021-09-08 05:28:13', '2021-09-08 05:28:13'),
(62, 19, 'ggg', '0', '2021-09-08 05:28:13', '2021-09-08 05:28:13'),
(63, 19, 'sss', '1', '2021-09-08 05:28:13', '2021-09-08 05:28:13'),
(64, 20, 'sadf', '1', '2021-09-08 05:33:06', '2021-09-08 05:33:06'),
(65, 20, 'ser', '0', '2021-09-08 05:33:06', '2021-09-08 05:33:06'),
(66, 20, 'yrt', '1', '2021-09-08 05:33:06', '2021-09-08 05:33:06'),
(67, 20, 'wert', '0', '2021-09-08 05:33:06', '2021-09-08 05:33:06'),
(68, 21, 'sadf', '1', '2021-09-08 05:35:23', '2021-09-08 05:35:23'),
(69, 21, 'ytyy', '0', '2021-09-08 05:35:23', '2021-09-08 05:35:23'),
(70, 21, 'sss', '0', '2021-09-08 05:35:23', '2021-09-08 05:35:23'),
(71, 21, 'hhh', '1', '2021-09-08 05:35:23', '2021-09-08 05:35:23'),
(72, 22, 'sre', '0', '2021-09-08 05:39:10', '2021-09-08 05:39:10'),
(73, 22, 'ghh', '1', '2021-09-08 05:39:10', '2021-09-08 05:39:10'),
(74, 22, 'ser', '0', '2021-09-08 05:39:10', '2021-09-08 05:39:10'),
(75, 22, 'wert', '1', '2021-09-08 05:39:10', '2021-09-08 05:39:10'),
(76, 23, 'asdf', '1', '2021-09-08 05:45:43', '2021-09-08 05:45:43'),
(77, 23, 'ghhh', '0', '2021-09-08 05:45:43', '2021-09-08 05:45:43'),
(78, 23, 'ss', '1', '2021-09-08 05:45:43', '2021-09-08 05:45:43'),
(79, 23, 'ggg', '0', '2021-09-08 05:45:43', '2021-09-08 05:45:43'),
(80, 24, 'fsdf', '0', '2021-09-08 05:47:52', '2021-09-08 05:47:52'),
(81, 24, 'rtr', '0', '2021-09-08 05:47:52', '2021-09-08 05:47:52'),
(82, 24, 'ery', '1', '2021-09-08 05:47:52', '2021-09-08 05:47:52'),
(83, 24, 'ujuu', '1', '2021-09-08 05:47:52', '2021-09-08 05:47:52'),
(84, 25, 'fe', '0', '2021-09-08 05:51:09', '2021-09-08 05:51:09'),
(85, 25, 'hj', '1', '2021-09-08 05:51:09', '2021-09-08 05:51:09'),
(86, 25, 'jj', '1', '2021-09-08 05:51:09', '2021-09-08 05:51:09'),
(87, 25, 'rtrr', '0', '2021-09-08 05:51:09', '2021-09-08 05:51:09'),
(116, 26, 'de', '0', '2021-09-08 12:17:52', '2021-09-08 12:17:52'),
(117, 26, 'ghh', '1', '2021-09-08 12:17:52', '2021-09-08 12:17:52'),
(118, 26, 'cdcd', '0', '2021-09-08 12:17:52', '2021-09-08 12:17:52'),
(119, 26, 'hhh', '0', '2021-09-08 12:17:52', '2021-09-08 12:17:52'),
(120, 27, 'ee', '0', '2021-09-08 12:25:54', '2021-09-08 12:25:54'),
(121, 27, 'rr', '1', '2021-09-08 12:25:54', '2021-09-08 12:25:54'),
(122, 27, 'ttt', '0', '2021-09-08 12:25:54', '2021-09-08 12:25:54'),
(123, 27, 'uuuu', '1', '2021-09-08 12:25:54', '2021-09-08 12:25:54'),
(124, 28, 'sfdg', '1', '2021-09-08 12:28:55', '2021-09-08 12:28:55'),
(125, 28, 'ff', '0', '2021-09-08 12:28:55', '2021-09-08 12:28:55'),
(126, 28, 'hhh', '0', '2021-09-08 12:28:55', '2021-09-08 12:28:55'),
(127, 28, 'fddg', '0', '2021-09-08 12:28:55', '2021-09-08 12:28:55'),
(130, 3, 'True', '0', '2021-09-08 12:30:36', '2021-09-08 12:30:36'),
(131, 3, 'False', '1', '2021-09-08 12:30:36', '2021-09-08 12:30:36'),
(132, 2, 'A flow of water', '0', '2021-09-08 12:32:46', '2021-09-08 12:32:46'),
(133, 2, 'A flow of air', '0', '2021-09-08 12:32:46', '2021-09-08 12:32:46'),
(134, 2, 'A flow of electrons', '0', '2021-09-08 12:32:46', '2021-09-08 12:32:46'),
(135, 2, 'A flow of atoms', '1', '2021-09-08 12:32:46', '2021-09-08 12:32:46'),
(136, 1, 'Pacific Ocean', '0', '2021-09-17 13:10:49', '2021-09-17 13:10:49'),
(137, 1, 'Atlantic Ocean', '1', '2021-09-17 13:10:49', '2021-09-17 13:10:49'),
(138, 1, 'Indian Ocean', '0', '2021-09-17 13:10:49', '2021-09-17 13:10:49'),
(139, 1, 'Arctic Ocean', '1', '2021-09-17 13:10:49', '2021-09-17 13:10:49'),
(140, 29, 'rrr', '1', '2021-09-22 05:10:39', '2021-09-22 05:10:39'),
(141, 29, 'tyyy', '0', '2021-09-22 05:10:39', '2021-09-22 05:10:39'),
(142, 29, 'dsfgsd', '1', '2021-09-22 05:10:39', '2021-09-22 05:10:39'),
(143, 29, 'sdfg', '0', '2021-09-22 05:10:39', '2021-09-22 05:10:39'),
(146, 31, 'ddd', '0', '2021-09-22 14:13:56', '2021-09-22 14:13:56'),
(147, 31, 'asdf', '1', '2021-09-22 14:13:56', '2021-09-22 14:13:56'),
(148, 31, 'asdf', '0', '2021-09-22 14:13:56', '2021-09-22 14:13:56'),
(149, 31, 'adsf', '1', '2021-09-22 14:13:56', '2021-09-22 14:13:56'),
(150, 32, 'dd', '0', '2021-09-24 13:47:18', '2021-09-24 13:47:18'),
(151, 32, 'rr', '1', '2021-09-24 13:47:18', '2021-09-24 13:47:18'),
(152, 32, 'hh', '0', '2021-09-24 13:47:18', '2021-09-24 13:47:18'),
(153, 32, 'dd', '1', '2021-09-24 13:47:18', '2021-09-24 13:47:18'),
(154, 33, 'sadf', '0', '2021-09-26 00:50:18', '2021-09-26 00:50:18'),
(155, 33, 'tgtt', '0', '2021-09-26 00:50:18', '2021-09-26 00:50:18'),
(156, 33, 'ffe', '1', '2021-09-26 00:50:18', '2021-09-26 00:50:18'),
(157, 33, 'ryy', '0', '2021-09-26 00:50:18', '2021-09-26 00:50:18'),
(158, 34, 'Free Text', 'ddd', '2021-09-26 01:16:04', '2021-09-26 01:16:04'),
(159, 30, 'Free Text', 'dfff', '2021-09-27 03:25:42', '2021-09-27 03:25:42'),
(160, 35, 'A', '1', '2021-10-03 03:44:51', '2021-10-03 03:44:51'),
(161, 35, 'B', '0', '2021-10-03 03:44:51', '2021-10-03 03:44:51'),
(162, 35, 'C', '0', '2021-10-03 03:44:51', '2021-10-03 03:44:51'),
(163, 35, 'D', '1', '2021-10-03 03:44:51', '2021-10-03 03:44:51'),
(164, 36, 'BD', '1', '2021-10-03 03:46:07', '2021-10-03 03:46:07'),
(165, 36, 'OK', '0', '2021-10-03 03:46:07', '2021-10-03 03:46:07'),
(166, 36, 'IND', '0', '2021-10-03 03:46:07', '2021-10-03 03:46:07'),
(167, 36, 'DHA', '0', '2021-10-03 03:46:07', '2021-10-03 03:46:07'),
(168, 37, 'True', '1', '2021-10-03 03:46:42', '2021-10-03 03:46:42'),
(169, 37, 'False', '0', '2021-10-03 03:46:42', '2021-10-03 03:46:42'),
(170, 38, 'Free Text', 'Henry', '2021-10-03 03:47:25', '2021-10-03 03:47:25'),
(171, 39, 'Fill in the blanks', 'A', '2021-10-03 03:49:15', '2021-10-03 03:49:15'),
(172, 39, 'Fill in the blanks', 'D', '2021-10-03 03:49:15', '2021-10-03 03:49:15'),
(173, 40, 'H', '1', '2021-10-03 03:51:10', '2021-10-03 03:51:10'),
(174, 40, 'O', '0', '2021-10-03 03:51:10', '2021-10-03 03:51:10'),
(175, 40, 'R', '1', '2021-10-03 03:51:10', '2021-10-03 03:51:10'),
(176, 40, 'G', '0', '2021-10-03 03:51:10', '2021-10-03 03:51:10'),
(177, 41, '1988', '1', '2021-10-03 03:54:11', '2021-10-03 03:54:11'),
(178, 41, '1999', '0', '2021-10-03 03:54:11', '2021-10-03 03:54:11'),
(179, 41, '1990', '0', '2021-10-03 03:54:11', '2021-10-03 03:54:11'),
(180, 41, '1998', '0', '2021-10-03 03:54:11', '2021-10-03 03:54:11'),
(181, 42, 'True', '0', '2021-10-03 03:55:17', '2021-10-03 03:55:17'),
(182, 42, 'False', '1', '2021-10-03 03:55:17', '2021-10-03 03:55:17'),
(183, 43, 'Fill in the blanks', '188', '2021-10-03 03:56:00', '2021-10-03 03:56:00'),
(184, 43, 'Fill in the blanks', '192', '2021-10-03 03:56:00', '2021-10-03 03:56:00'),
(186, 45, 'Dhaka', '1', '2021-10-04 05:48:30', '2021-10-04 05:48:30'),
(187, 45, 'Rajshahi', '0', '2021-10-04 05:48:30', '2021-10-04 05:48:30'),
(188, 45, 'Rangpur', '1', '2021-10-04 05:48:30', '2021-10-04 05:48:30'),
(189, 45, 'Barisal', '0', '2021-10-04 05:48:30', '2021-10-04 05:48:30'),
(190, 46, 'BN', '1', '2021-10-05 03:08:01', '2021-10-05 03:08:01'),
(191, 46, 'DN', '0', '2021-10-05 03:08:01', '2021-10-05 03:08:01'),
(192, 46, 'DNA', '1', '2021-10-05 03:08:01', '2021-10-05 03:08:01'),
(193, 46, 'FA', '0', '2021-10-05 03:08:01', '2021-10-05 03:08:01'),
(194, 47, 'Dhaka', '0', '2021-10-05 03:08:42', '2021-10-05 03:08:42'),
(195, 47, 'Naorth', '0', '2021-10-05 03:08:42', '2021-10-05 03:08:42'),
(196, 47, 'Uttor', '0', '2021-10-05 03:08:42', '2021-10-05 03:08:42'),
(197, 47, 'Nah', '1', '2021-10-05 03:08:42', '2021-10-05 03:08:42'),
(198, 48, 'True', '1', '2021-10-05 03:09:01', '2021-10-05 03:09:01'),
(199, 48, 'False', '0', '2021-10-05 03:09:01', '2021-10-05 03:09:01'),
(200, 49, 'Free Text', 'This is ok', '2021-10-05 03:09:21', '2021-10-05 03:09:21'),
(201, 50, 'Fill in the blanks', 'First', '2021-10-05 03:09:44', '2021-10-05 03:09:44'),
(202, 50, 'Fill in the blanks', 'last', '2021-10-05 03:09:44', '2021-10-05 03:09:44'),
(203, 51, 'Q', '0', '2021-10-05 03:12:19', '2021-10-05 03:12:19'),
(204, 51, 'Q A', '0', '2021-10-05 03:12:19', '2021-10-05 03:12:19'),
(205, 51, 'MA', '1', '2021-10-05 03:12:19', '2021-10-05 03:12:19'),
(206, 51, 'TR', '1', '2021-10-05 03:12:19', '2021-10-05 03:12:19'),
(207, 52, 'D', '0', '2021-10-05 10:58:48', '2021-10-05 10:58:48'),
(208, 52, 'A', '1', '2021-10-05 10:58:48', '2021-10-05 10:58:48'),
(209, 52, 'F', '1', '2021-10-05 10:58:48', '2021-10-05 10:58:48'),
(210, 52, 'G', '0', '2021-10-05 10:58:48', '2021-10-05 10:58:48'),
(211, 53, 'asdf', '0', '2021-10-05 10:59:35', '2021-10-05 10:59:35'),
(212, 53, 'dd', '0', '2021-10-05 10:59:35', '2021-10-05 10:59:35'),
(213, 53, 'fggg', '1', '2021-10-05 10:59:35', '2021-10-05 10:59:35'),
(214, 53, 'hh', '0', '2021-10-05 10:59:35', '2021-10-05 10:59:35'),
(215, 54, 'R', '0', '2021-10-06 21:55:52', '2021-10-06 21:55:52'),
(216, 54, 'RE', '1', '2021-10-06 21:55:52', '2021-10-06 21:55:52'),
(217, 54, 'E', '1', '2021-10-06 21:55:53', '2021-10-06 21:55:53'),
(218, 54, 'D', '0', '2021-10-06 21:55:53', '2021-10-06 21:55:53'),
(219, 44, 'Free Text', 'New', '2021-10-12 22:07:40', '2021-10-12 22:07:40'),
(220, 55, 'Dhaka', '1', '2021-10-14 04:20:35', '2021-10-14 04:20:35'),
(221, 55, 'Rajshahi', '1', '2021-10-14 04:20:35', '2021-10-14 04:20:35'),
(222, 55, 'Panjab', '0', '2021-10-14 04:20:35', '2021-10-14 04:20:35'),
(223, 55, 'Bihar', '0', '2021-10-14 04:20:35', '2021-10-14 04:20:35'),
(224, 56, 'Dinajpur', '0', '2021-10-14 04:22:02', '2021-10-14 04:22:02'),
(225, 56, 'Dhaka', '1', '2021-10-14 04:22:02', '2021-10-14 04:22:02'),
(226, 56, 'Rangpur', '0', '2021-10-14 04:22:02', '2021-10-14 04:22:02'),
(227, 56, 'Chittagong', '0', '2021-10-14 04:22:02', '2021-10-14 04:22:02'),
(228, 57, 'True', '0', '2021-10-14 04:22:43', '2021-10-14 04:22:43'),
(229, 57, 'False', '1', '2021-10-14 04:22:43', '2021-10-14 04:22:43'),
(230, 58, 'Free Text', '18 core', '2021-10-14 04:25:38', '2021-10-14 04:25:38'),
(231, 59, 'Fill in the blanks', 'Small', '2021-10-14 04:28:12', '2021-10-14 04:28:12'),
(232, 59, 'Fill in the blanks', 'Dhaka', '2021-10-14 04:28:12', '2021-10-14 04:28:12'),
(233, 60, '10', '1', '2021-10-14 04:34:36', '2021-10-14 04:34:36'),
(234, 60, '6', '0', '2021-10-14 04:34:36', '2021-10-14 04:34:36'),
(235, 60, '5', '1', '2021-10-14 04:34:36', '2021-10-14 04:34:36'),
(236, 60, '11', '0', '2021-10-14 04:34:36', '2021-10-14 04:34:36'),
(237, 61, '7', '1', '2021-10-14 04:35:07', '2021-10-14 04:35:07'),
(238, 61, '3', '0', '2021-10-14 04:35:07', '2021-10-14 04:35:07'),
(239, 61, '6', '0', '2021-10-14 04:35:07', '2021-10-14 04:35:07'),
(240, 61, '8', '0', '2021-10-14 04:35:07', '2021-10-14 04:35:07'),
(241, 62, 'True', '0', '2021-10-14 04:35:37', '2021-10-14 04:35:37'),
(242, 62, 'False', '1', '2021-10-14 04:35:37', '2021-10-14 04:35:37'),
(243, 63, 'Free Text', '15', '2021-10-14 04:36:20', '2021-10-14 04:36:20'),
(244, 64, 'Fill in the blanks', '5', '2021-10-14 04:37:12', '2021-10-14 04:37:12'),
(245, 64, 'Fill in the blanks', '5', '2021-10-14 04:37:12', '2021-10-14 04:37:12'),
(246, 65, 'Bangladesh 2nd', '1', '2021-10-14 04:39:46', '2021-10-14 04:39:46'),
(247, 65, 'Ameriaca 1st', '1', '2021-10-14 04:39:46', '2021-10-14 04:39:46'),
(248, 65, 'Bangladesh 1st', '0', '2021-10-14 04:39:46', '2021-10-14 04:39:46'),
(249, 65, 'Ameriaca 2nd', '0', '2021-10-14 04:39:46', '2021-10-14 04:39:46'),
(250, 66, 'Bangladesh', '0', '2021-10-14 04:40:34', '2021-10-14 04:40:34'),
(251, 66, 'India', '0', '2021-10-14 04:40:34', '2021-10-14 04:40:34'),
(252, 66, 'Pakistan', '0', '2021-10-14 04:40:34', '2021-10-14 04:40:34'),
(253, 66, 'America', '1', '2021-10-14 04:40:34', '2021-10-14 04:40:34'),
(254, 67, 'True', '1', '2021-10-14 04:41:03', '2021-10-14 04:41:03'),
(255, 67, 'False', '0', '2021-10-14 04:41:03', '2021-10-14 04:41:03'),
(256, 68, 'Free Text', 'important Language', '2021-10-14 04:42:09', '2021-10-14 04:42:09'),
(257, 69, 'Fill in the blanks', 'America', '2021-10-14 04:43:12', '2021-10-14 04:43:12'),
(258, 69, 'Fill in the blanks', 'Germany', '2021-10-14 04:43:12', '2021-10-14 04:43:12'),
(259, 70, '5', '1', '2021-10-17 21:47:24', '2021-10-17 21:47:24'),
(260, 70, '7', '0', '2021-10-17 21:47:24', '2021-10-17 21:47:24'),
(261, 70, '6', '0', '2021-10-17 21:47:24', '2021-10-17 21:47:24'),
(262, 70, '5', '1', '2021-10-17 21:47:24', '2021-10-17 21:47:24'),
(263, 71, '13', '1', '2021-10-17 21:48:34', '2021-10-17 21:48:34'),
(264, 71, '12', '0', '2021-10-17 21:48:34', '2021-10-17 21:48:34'),
(265, 71, '14', '0', '2021-10-17 21:48:35', '2021-10-17 21:48:35'),
(266, 71, '11', '0', '2021-10-17 21:48:35', '2021-10-17 21:48:35'),
(267, 72, 'True', '0', '2021-10-17 21:49:10', '2021-10-17 21:49:10'),
(268, 72, 'False', '1', '2021-10-17 21:49:10', '2021-10-17 21:49:10'),
(269, 73, 'Free Text', '13', '2021-10-17 21:49:36', '2021-10-17 21:49:36'),
(270, 74, 'Fill in the blanks', '5', '2021-10-17 21:50:26', '2021-10-17 21:50:26'),
(271, 74, 'Fill in the blanks', '5', '2021-10-17 21:50:26', '2021-10-17 21:50:26');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark` double(8,2) DEFAULT NULL,
  `type` enum('Multiple choice','Single Choice','Picture choice','True/false','Free text','Fill in the blanks','Match pair','Ordering','Highlight') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Multiple choice',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` tinyint(4) NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question_detail`, `mark`, `type`, `image`, `audio`, `serial`, `attachment`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'In 1768, Captain James Cook set out to explore which ocean?', 1.00, 'Multiple choice', NULL, '1631076644Screenshot_1.png', 1, NULL, 'Active', '2021-09-07 22:50:44', '2021-09-07 22:50:44'),
(2, 1, 'What is actually electricity?', 1.00, 'Single Choice', NULL, '1631076797Screenshot_4.png', 2, NULL, 'Active', '2021-09-07 22:53:17', '2021-09-07 22:53:17'),
(3, 1, 'Which of the following is not an international organisation?', 2.00, 'True/false', NULL, '1631076922Screenshot_4.png', 3, NULL, 'Active', '2021-09-07 22:55:22', '2021-09-07 22:55:22'),
(4, 1, 'Which of the following disorders is the fear of being alone?', 1.00, 'Free text', NULL, '1631076955Screenshot_3.png', 4, NULL, 'Active', '2021-09-07 22:55:55', '2021-09-07 22:55:55'),
(5, 1, 'Which of the following is a song by the German heavy metal band “Scorpions”?', 2.00, 'Fill in the blanks', NULL, '1631077002IalzE.png', 5, NULL, 'Active', '2021-09-07 22:56:42', '2021-09-07 22:56:42'),
(6, 2, 'What is the speed of sound?', 1.00, 'Multiple choice', NULL, '1631077141IalzE.png', 1, NULL, 'Active', '2021-09-07 22:59:01', '2021-09-07 22:59:01'),
(7, 2, 'Which is the easiest way to tell the age of many trees?', 1.00, 'Single Choice', NULL, NULL, 3, NULL, 'Active', '2021-09-07 23:00:44', '2021-09-07 23:00:44'),
(8, 2, 'What do we call a newly hatched butterfly?', 1.00, 'True/false', NULL, '1631077352Screenshot_1.png', 2, NULL, 'Active', '2021-09-07 23:02:32', '2021-09-07 23:02:32'),
(9, 2, 'In total, how many novels were written by the Bronte sisters?', 3.00, 'Free text', NULL, '1631077391question_options.txt', 4, NULL, 'Active', '2021-09-07 23:03:11', '2021-09-07 23:03:11'),
(10, 2, 'Which did Viking people use as money?', 2.00, 'Fill in the blanks', NULL, '1631077437IalzE.png', 5, NULL, 'Active', '2021-09-07 23:03:57', '2021-09-07 23:03:57'),
(11, 3, 'What was the first country to use tanks in combat during World War I?', 1.00, 'Multiple choice', NULL, NULL, 1, NULL, 'Active', '2021-09-07 23:15:14', '2021-09-07 23:15:14'),
(12, 3, 'What is the main component of the sun?', 1.00, 'Single Choice', NULL, NULL, 2, NULL, 'Active', '2021-09-07 23:16:14', '2021-09-07 23:16:14'),
(13, 3, 'Goulash is a type of beef soup in which country?', 2.00, 'True/false', NULL, '1631078224Screenshot_3.png', 3, NULL, 'Active', '2021-09-07 23:17:04', '2021-09-07 23:17:04'),
(14, 3, 'Which two months are named after Emperors of the Roman Empire?', 2.00, 'Free text', NULL, '1631078248Screenshot_4.png', 4, NULL, 'Active', '2021-09-07 23:17:28', '2021-09-07 23:17:28'),
(15, 3, 'Which of the following animals can run the fastest?', 2.00, 'Fill in the blanks', NULL, '1631078288Screenshot_4.png', 5, NULL, 'Active', '2021-09-07 23:18:08', '2021-09-07 23:18:08'),
(16, 1, 'Multipule Choice', 2.00, 'Multiple choice', NULL, '1631087991logo-finals.png', 6, NULL, 'Active', '2021-09-08 01:59:51', '2021-09-08 01:59:52'),
(17, 5, 'asdfasd', 1.00, 'Multiple choice', NULL, '1631098881new 2.txt', 1, NULL, 'Active', '2021-09-08 05:01:21', '2021-09-08 05:01:21'),
(18, 5, 'dasda', 2.00, 'Multiple choice', NULL, '1631099238Screenshot_1.png', 2, NULL, 'Active', '2021-09-08 05:07:18', '2021-09-08 05:07:18'),
(19, 1, 'drrt', 2.00, 'Multiple choice', NULL, '1631100493Screenshot_1.png', 7, NULL, 'Active', '2021-09-08 05:28:13', '2021-09-08 05:28:13'),
(20, 1, 'asdf', 2.00, 'Multiple choice', NULL, NULL, 8, NULL, 'Active', '2021-09-08 05:33:06', '2021-09-08 05:33:06'),
(21, 1, 'sadfasdf', 1.00, 'Multiple choice', NULL, '1631100923cover page.pdf', 9, NULL, 'Active', '2021-09-08 05:35:23', '2021-09-08 05:35:23'),
(22, 1, 'asdfasdf', 1.00, 'Multiple choice', NULL, '1631101150question_options.txt', 10, NULL, 'Active', '2021-09-08 05:39:10', '2021-09-08 05:39:10'),
(23, 5, 'asdf', 1.00, 'Multiple choice', NULL, '1631101543Screenshot_1.png', 3, NULL, 'Active', '2021-09-08 05:45:43', '2021-09-08 05:45:43'),
(24, 5, 'dfgf', 3.00, 'Multiple choice', NULL, '1631101672IalzE.png', 4, NULL, 'Active', '2021-09-08 05:47:52', '2021-09-08 05:47:52'),
(25, 5, 'fdf', 1.00, 'Multiple choice', NULL, '1631101869Screenshot_1.png', 5, NULL, 'Active', '2021-09-08 05:51:09', '2021-09-08 05:51:09'),
(26, 1, 'sdfg', 1.00, 'Multiple choice', NULL, '1631125072question_options.txt', 11, NULL, 'Active', '2021-09-08 12:17:52', '2021-09-08 12:17:52'),
(27, 1, 'gsdfg', 1.00, 'Multiple choice', NULL, '1631125554Screenshot_1.png', 12, NULL, 'Active', '2021-09-08 12:25:54', '2021-09-08 12:25:54'),
(28, 3, 'gsfdg', 1.00, 'Single Choice', NULL, '1631125735Screenshot_3.png', 5, NULL, 'Active', '2021-09-08 12:28:55', '2021-09-08 12:28:55'),
(29, 6, 'asdf', 1.00, 'Multiple choice', NULL, '1632309039razib.png', 1, NULL, 'Active', '2021-09-22 05:10:39', '2021-09-22 05:10:39'),
(30, 7, 'Ready Your Question', 1.00, 'Free text', NULL, '1632734742SDLC1.jpg', 1, NULL, 'Active', '2021-09-22 05:26:41', '2021-09-27 03:25:42'),
(31, 8, 'asdfasdf', 1.00, 'Multiple choice', NULL, '1632341636question_options.txt', 1, NULL, 'Active', '2021-09-22 14:13:56', '2021-09-22 14:13:56'),
(32, 6, 'edfasd', 1.00, 'Multiple choice', NULL, '16325128385.jpg', 2, NULL, 'Active', '2021-09-24 13:47:18', '2021-09-24 13:47:18'),
(33, 1, 'fdsfsad', 1.00, 'Single Choice', NULL, '1632639017Screenshot_1.png', 13, NULL, 'Active', '2021-09-26 00:50:17', '2021-09-26 00:50:17'),
(34, 2, 'sderrr', 1.00, 'Free text', NULL, '1632640564sunrise-4797253_1280.webp', 6, NULL, 'Active', '2021-09-26 01:16:04', '2021-09-26 01:16:04'),
(35, 9, 'In which part of your body would you find the cruciate ligament?', 1.00, 'Multiple choice', NULL, '1633254291razib.pdf', 1, NULL, 'Active', '2021-10-03 03:44:51', '2021-10-03 03:44:51'),
(36, 9, 'What is the name of the main antagonist in the Shakespeare play Othello?', 1.00, 'Single Choice', NULL, '1633254367razib.pdf', 2, NULL, 'Active', '2021-10-03 03:46:07', '2021-10-03 03:46:07'),
(37, 9, 'What element is denoted by the chemical symbol Sn in the periodic table?', 1.00, 'True/false', NULL, '1633254402SDLC1.jpg', 3, NULL, 'Active', '2021-10-03 03:46:42', '2021-10-03 03:46:42'),
(38, 9, 'How many of Henry VIII’s wives were called Catherine?', 1.00, 'Free text', NULL, '1633254445razib.pdf', 4, NULL, 'Active', '2021-10-03 03:47:25', '2021-10-03 03:47:25'),
(39, 9, 'What was the most popular girls name in the UK in 2019?', 2.00, 'Fill in the blanks', NULL, '1633254555login details.txt', 5, NULL, 'Active', '2021-10-03 03:49:15', '2021-10-03 03:49:15'),
(40, 9, 'In what US State is the city Nashville?', 1.00, 'Multiple choice', NULL, '1633254670Logo_output_grey.png', 6, NULL, 'Active', '2021-10-03 03:51:10', '2021-10-03 03:51:10'),
(41, 9, 'Which rock band was founded by Trent Reznor in 1988?', 1.00, 'Single Choice', NULL, '1633254851new 2.txt', 7, NULL, 'Active', '2021-10-03 03:54:11', '2021-10-03 03:54:11'),
(42, 9, 'What is the currency of Denmark?', 1.00, 'True/false', NULL, '1633254917Logo_output_grey.png', 8, NULL, 'Active', '2021-10-03 03:55:17', '2021-10-03 03:55:17'),
(43, 9, 'What is the ---------- smallest planet in ---------- our solar system?', 2.00, 'Fill in the blanks', NULL, '1633254960month -2.docx', 9, NULL, 'Active', '2021-10-03 03:56:00', '2021-10-03 03:56:00'),
(44, 9, 'What is the capital of New Zealand?', 1.00, 'Free text', NULL, '1634098060mixkit-classic-alarm-995.wav', 10, NULL, 'Active', '2021-10-03 03:57:43', '2021-10-12 22:07:40'),
(45, 11, 'what is the capital of Bangladesh', 1.00, 'Multiple choice', NULL, '1633348110Logo_output_grey.png', 1, NULL, 'Active', '2021-10-04 05:48:30', '2021-10-04 05:48:30'),
(46, 15, 'Trivia Newton John', 1.00, 'Multiple choice', NULL, '1633424881cv_with_photo_02.docx', 1, NULL, 'Active', '2021-10-05 03:08:01', '2021-10-05 03:08:01'),
(47, 15, 'E=MC Hammer', 2.00, 'Single Choice', NULL, '1633424922razib.pdf', 2, NULL, 'Active', '2021-10-05 03:08:42', '2021-10-05 03:08:42'),
(48, 15, 'Quizteama Aguilera', 1.00, 'True/false', NULL, '1633424941cv_with_photo_02.docx', 3, NULL, 'Active', '2021-10-05 03:09:01', '2021-10-05 03:09:01'),
(49, 15, 'Quiztopher Collumbus/Columbpoints', 2.00, 'Free text', NULL, '1633424961SDLC1.jpg', 4, NULL, 'Active', '2021-10-05 03:09:21', '2021-10-05 03:09:21'),
(50, 15, 'Quiz Tarrant', 2.00, 'Fill in the blanks', NULL, '1633424984question_options.txt', 5, NULL, 'Active', '2021-10-05 03:09:44', '2021-10-05 03:09:44'),
(51, 3, 'The Quizzard of Oz', 2.00, 'Multiple choice', NULL, '1633425139new 2.txt', 6, NULL, 'Active', '2021-10-05 03:12:19', '2021-10-05 03:12:19'),
(52, 16, 'Dhaka is the Capital of Bangladesh', 2.00, 'Multiple choice', NULL, '1633453128banner2.jpg', 1, NULL, 'Active', '2021-10-05 10:58:48', '2021-10-05 10:58:48'),
(53, 16, 'Jaasdf', 3.00, 'Single Choice', NULL, '1633453175banner.jpg', 2, NULL, 'Active', '2021-10-05 10:59:35', '2021-10-05 10:59:35'),
(54, 13, 'First', 2.00, 'Multiple choice', NULL, '1633578952Assignment 08.pdf', 1, NULL, 'Active', '2021-10-06 21:55:52', '2021-10-06 21:55:52'),
(55, 18, 'What is the district of Bangladesh?', 2.00, 'Multiple choice', NULL, '1634206835mixkit-classic-alarm-995.wav', 1, NULL, 'Active', '2021-10-14 04:20:35', '2021-10-14 04:20:35'),
(56, 18, 'What is the Capital of Bangladesh?', 1.00, 'Single Choice', NULL, '1634206922mixkit-classic-alarm-995.wav', 2, NULL, 'Active', '2021-10-14 04:22:02', '2021-10-14 04:22:02'),
(57, 18, 'Chittagong is the Capital of Bangladesh', 1.00, 'True/false', NULL, '1634206963mixkit-classic-alarm-995.wav', 3, NULL, 'Active', '2021-10-14 04:22:43', '2021-10-14 04:22:43'),
(58, 18, 'what is the population of bangladesh', 1.00, 'Free text', NULL, '1634207138mixkit-classic-alarm-995.wav', 4, NULL, 'Active', '2021-10-14 04:25:38', '2021-10-14 04:25:38'),
(59, 18, 'Bangladesh is the ------ Country and capital of ------', 1.00, 'Fill in the blanks', NULL, '1634207292mixkit-classic-alarm-995.wav', 5, NULL, 'Active', '2021-10-14 04:28:12', '2021-10-14 04:28:12'),
(60, 19, '10 + ? +? = 25', 1.00, 'Multiple choice', NULL, NULL, 1, NULL, 'Active', '2021-10-14 04:34:36', '2021-10-14 04:34:36'),
(61, 19, '2+5 = ?', 1.00, 'Single Choice', NULL, '1634207707mixkit-classic-alarm-995.wav', 2, NULL, 'Active', '2021-10-14 04:35:07', '2021-10-14 04:35:07'),
(62, 19, '11+5 = 16.2', 1.00, 'True/false', NULL, '1634207737mixkit-classic-alarm-995.wav', 3, NULL, 'Active', '2021-10-14 04:35:37', '2021-10-14 04:35:37'),
(63, 19, '6+9 = ?', 1.00, 'Free text', NULL, '1634207780mixkit-classic-alarm-995.wav', 4, NULL, 'Active', '2021-10-14 04:36:20', '2021-10-14 04:36:20'),
(64, 19, '5+------+------ = 15', 1.00, 'Fill in the blanks', NULL, '1634207832mixkit-classic-alarm-995.wav', 5, NULL, 'Active', '2021-10-14 04:37:12', '2021-10-14 04:37:12'),
(65, 20, 'English is the Bangladesh language Number and america Number', 2.00, 'Multiple choice', NULL, '1634207986mixkit-classic-alarm-995.wav', 1, NULL, 'Active', '2021-10-14 04:39:46', '2021-10-14 04:39:46'),
(66, 20, 'English is the first Language of', 1.00, 'Single Choice', NULL, '1634208034mixkit-classic-alarm-995.wav', 2, NULL, 'Active', '2021-10-14 04:40:34', '2021-10-14 04:40:34'),
(67, 20, 'English is the 2nd Language in Bangladesh', 1.00, 'True/false', NULL, '1634208063mixkit-classic-alarm-995.wav', 3, NULL, 'Active', '2021-10-14 04:41:03', '2021-10-14 04:41:03'),
(68, 20, 'English is the', 1.00, 'Free text', '1634208129WhatsApp Image 2021-09-30 at 1.04.24 PM.jpeg', '1634208129mixkit-classic-alarm-995.wav', 4, NULL, 'Active', '2021-10-14 04:42:09', '2021-10-14 04:42:09'),
(69, 20, 'There tow country first Language in English ------ and ------', 1.00, 'Fill in the blanks', NULL, '1634208192mixkit-classic-alarm-995.wav', 5, NULL, 'Active', '2021-10-14 04:43:12', '2021-10-14 04:43:12'),
(70, 21, '5+?+? =15', 1.00, 'Multiple choice', NULL, '1634528844mixkit-classic-alarm-995.wav', 1, NULL, 'Active', '2021-10-17 21:47:24', '2021-10-17 21:47:24'),
(71, 21, '6+7', 1.00, 'Single Choice', '1634528914baby-kids-toy-banner-background-many-colorful-educational-toys-white-background-top-view-flat-lay-copy-space-text-baby-kids-224116991.jpg', '1634528914mixkit-classic-alarm-995.wav', 2, NULL, 'Active', '2021-10-17 21:48:34', '2021-10-17 21:48:34'),
(72, 21, '1+14 = 16', 1.00, 'True/false', NULL, '1634528950mixkit-classic-alarm-995.wav', 3, NULL, 'Active', '2021-10-17 21:49:10', '2021-10-17 21:49:10'),
(73, 21, '5+8 = ?', 1.00, 'Free text', NULL, '1634528976mixkit-classic-alarm-995.wav', 4, NULL, 'Active', '2021-10-17 21:49:36', '2021-10-17 21:49:36'),
(74, 21, 'This value ------ + ------ = 10', 1.00, 'Fill in the blanks', NULL, '1634529026mixkit-classic-alarm-995.wav', 5, NULL, 'Active', '2021-10-17 21:50:26', '2021-10-17 21:50:26');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instruction` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remote_media_file_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_question` int(11) DEFAULT NULL,
  `total_marks` int(11) DEFAULT NULL,
  `publisher` enum('Published','Unpublished') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Published',
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `school_id`, `year_id`, `class_id`, `subject_id`, `topic_id`, `title`, `instruction`, `attachment`, `remote_media_file_link`, `total_question`, `total_marks`, `publisher`, `status`, `created_at`, `updated_at`) VALUES
(18, 159, 2, 4, 16, 7, 'Bangladesh', 'Now', NULL, NULL, 5, 6, 'Published', 'Active', '2021-10-14 04:17:58', '2021-10-14 04:28:12'),
(19, 159, 2, 4, 16, 7, 'Algorithom Mathmatics', NULL, NULL, NULL, 5, 5, 'Published', 'Active', '2021-10-14 04:33:27', '2021-10-14 04:37:12'),
(20, 159, 2, 3, 18, 10, 'English', NULL, NULL, NULL, 5, 6, 'Published', 'Active', '2021-10-14 04:38:01', '2021-10-14 04:43:12'),
(21, 159, 2, 4, 14, 3, 'New Class', NULL, NULL, NULL, 5, 5, 'Published', 'Active', '2021-10-17 21:46:25', '2021-10-17 21:50:26');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answers`
--

CREATE TABLE `quiz_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_student_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_date` datetime DEFAULT NULL,
  `answered` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `answer` enum('No Answer','Right','Wrong','Skipped') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No Answer',
  `mark` double NOT NULL,
  `retake` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `time_duration` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answer_options`
--

CREATE TABLE `quiz_answer_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_answer_id` int(11) NOT NULL,
  `question_answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` enum('Right','Wrong') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_students`
--

CREATE TABLE `quiz_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `assignment_id` int(11) DEFAULT NULL,
  `assign_date` datetime NOT NULL,
  `is_taken` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `attempt` tinyint(4) NOT NULL DEFAULT 0,
  `score` double(10,2) DEFAULT NULL,
  `taken_date` datetime DEFAULT NULL,
  `retake` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `quiz_take_duration` time DEFAULT NULL,
  `status` enum('Start','Running','Finished') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Start',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_students`
--

INSERT INTO `quiz_students` (`id`, `student_id`, `quiz_id`, `assignment_id`, `assign_date`, `is_taken`, `attempt`, `score`, `taken_date`, `retake`, `quiz_take_duration`, `status`, `created_at`, `updated_at`) VALUES
(88, 8, 19, NULL, '2021-10-18 04:13:04', 'No', 0, 0.00, NULL, 'No', NULL, 'Start', '2021-10-17 22:13:04', '2021-10-17 22:13:04'),
(89, 81, 19, NULL, '2021-10-18 04:13:04', 'No', 0, 0.00, NULL, 'No', NULL, 'Start', '2021-10-17 22:13:04', '2021-10-17 22:13:04'),
(90, 81, 18, NULL, '2021-10-18 04:13:14', 'No', 0, 0.00, NULL, 'No', NULL, 'Start', '2021-10-17 22:13:14', '2021-10-17 22:13:14'),
(91, 81, 21, NULL, '2021-10-18 04:13:25', 'No', 0, 0.00, NULL, 'No', NULL, 'Start', '2021-10-17 22:13:25', '2021-10-17 22:13:25'),
(92, 13, 20, NULL, '2021-10-18 04:13:35', 'No', 0, 0.00, NULL, 'No', NULL, 'Start', '2021-10-17 22:13:35', '2021-10-17 22:13:35');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `principle_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `principle_contact_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_person` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_contact_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_date` date NOT NULL,
  `valid_till` date DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `address`, `email`, `contact_no`, `principle_name`, `principle_contact_no`, `reference_person`, `reference_contact_no`, `registration_date`, `valid_till`, `remarks`, `school_logo`, `status`, `created_at`, `updated_at`) VALUES
(159, 'Mohammadpur Boys', 'Dhaka', 'mohmmadpur@gmail.com', '02528588', 'Khan', '02585', 'Kobir', '0255855', '2021-08-04', '2021-08-03', 'sdafads', 'logo.jpg', 'Active', '2021-08-06 23:03:48', '2021-08-06 23:04:05'),
(160, 'Bengol Medium', 'Dhaka', 'bengol@gmail.com', '05255', 'Robin', '0555855', 'Rasel', '2552021', '2021-08-03', NULL, NULL, NULL, 'Active', '2021-08-06 23:06:21', '2021-08-06 23:06:21');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `short_name`, `site_name`, `admin_email`, `admin_mobile`, `site_url`, `admin_url`, `logo`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Ace Learning', 'AceLearning', 'Ace Learning', 'admin@ace-learning.com', '45455', NULL, NULL, 'ace-logo.png', 'sdfsd f, sdf sdf', NULL, '2021-07-14 03:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date NOT NULL,
  `gender` enum('Male','Female','She-Male') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Male',
  `parent_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_contact_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `school_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_no`, `address`, `email`, `contact_no`, `first_name`, `middle_name`, `last_name`, `dob`, `gender`, `parent_name`, `parent_contact_no`, `parent_email`, `remarks`, `status`, `school_id`, `class_id`, `created_at`, `updated_at`) VALUES
(8, '15921008', 'Dhaka', 'rana@gmail.com', '012544', 'Rana', 'Khan', NULL, '2021-08-12', 'Male', 'Nahid', '0173798858', 'nahid@gmail.com', NULL, 'Active', '159', 4, '2021-08-14 04:44:19', '2021-08-15 13:42:03'),
(9, '15921009', 'asdf', 'asdfasdf@gmail.com', '0222525', 'Mahen', 'Uddin', NULL, '2021-08-11', 'She-Male', 'asdf', '025558', 'sadfasd@gmail.com', NULL, 'Active', '159', 11, '2021-08-16 02:57:25', '2021-08-16 03:16:11'),
(10, '159210010', 'asdf', 'asdfasd@gmail.com', '025566', 'Sabbir ', 'Hossain', 'Khan', '2021-08-10', 'Female', 'asdf', '02555', 'asdfasd@gmail.com', 'sadff', 'Active', '159', 9, '2021-08-16 06:45:02', '2021-08-16 06:45:02'),
(11, '159210011', 'asdf', 'mohammad@gmail.com', '012477', 'Kamal', 'Hossain', 'First', '2021-09-07', 'Male', 'Nafisa', '01255887', 'nafisa@gmail.com', 'sdfdsaf', 'Active', '159', 1, '2021-09-05 07:33:45', '2021-09-05 07:33:45'),
(12, '159210012', 'Dhaka', 'abir@gmail.com', '12345678', 'Abir', 'Hossain', NULL, '2021-04-27', 'Male', 'Golam Murtaza', '01245', 'golam@gmail.com', NULL, 'Active', '159', 1, '2021-09-06 01:17:28', '2021-09-06 01:17:28'),
(13, '159210013', 'Dhaka', 'rabbi@gmail.com', '0125', 'Rabbi', 'Hassan', NULL, '2020-12-01', 'Male', 'Najmul', '0258', 'Najmul@gmail.com', NULL, 'Active', '159', 3, '2021-09-06 01:19:11', '2021-09-25 00:59:09'),
(14, '159210014', 'Dhaka', 'anis@gmail.com', '03698', 'Anis', 'Khan', NULL, '2021-09-01', 'Male', 'Rakib', '0125', 'rakib@gmail.com', NULL, 'Active', '159', 3, '2021-09-06 01:20:14', '2021-09-22 23:47:21'),
(15, '159210015', 'Dhaka', 'rajaul@gmail.com', '25896', 'Rajaul', 'Islam', NULL, '2021-08-31', 'Female', 'Rana Hamid', '02568554', 'ranahamid@gamil.com', NULL, 'Active', '159', 3, '2021-09-06 01:21:23', '2021-09-24 13:11:47'),
(16, '159210016', 'dfs', 'nasif@gmail.com', '0255', 'Nasif', 'Khan', NULL, '2021-09-09', 'Female', 'Rahman', '0555', 'rahman@gmail.com', NULL, 'Active', '159', 1, '2021-09-06 13:40:45', '2021-09-06 13:40:45'),
(18, '159210018', 'dd', 'masud@gmail.com', '01737988947', 'Masud', NULL, NULL, '2021-09-14', 'Male', 'Ranu', '01225', 'ranu@gamil.com', 'dd', 'Active', '159', 3, '2021-09-21 01:09:32', '2021-09-21 01:09:32'),
(19, '159210019', 'dd', 'titas@gmail.com', '01254858', 'err', 'ddd', NULL, '2021-09-08', 'Male', 'asdfa', '01112', 'par@gmail.com', 'ee', 'Active', '159', 1, '2021-09-21 01:20:51', '2021-09-21 01:20:51'),
(20, '159210020', 'dd', 'gazi@gmail.com', '01225', 'Gazi', 'Ahmed', NULL, '2021-08-31', 'Male', 'Rohim', '01255', 'rohim@gmail.com', 'rr', 'Active', '159', 1, '2021-09-21 01:31:03', '2021-09-21 01:31:03'),
(21, '159210021', 'Dhaka', 'asif@gmail.com', '01255', 'Asif', 'Khan', NULL, '2021-09-07', 'Male', 'Rohima', '0225', 'ro@gmail.com', 'Ro', 'Active', '159', 1, '2021-09-21 02:00:53', '2021-09-21 02:00:53'),
(22, '159210022', 'Dha', 'sabbir@gmail.com', '01245', 'Sabbir', 'Kamal', NULL, '2021-09-08', 'Male', 'tt', '0122', 'tr@gmail.com', 'er', 'Active', '159', 1, '2021-09-21 02:06:35', '2021-09-21 02:06:35'),
(23, '159210023', 'Dhaka', 'mamun@gmail.com', '01255', 'Mamun', 'Khan', NULL, '2021-09-20', 'Male', 'habib', '0122', 'habib@gmail.com', 'tw', 'Active', '159', 1, '2021-09-21 05:47:58', '2021-09-21 05:47:58'),
(24, '159210024', 'D', 'robij@gmail.com', '0122', 'Rabi', 'jaman', NULL, '2021-09-15', 'Male', 'rt', '0322', 'rt@gmail.com', 're', 'Active', '159', 1, '2021-09-21 06:09:40', '2021-09-21 06:09:40'),
(27, '159210027', 'Dhaka', 'kam@gmail.com', '012555', 'Kamal', 'e', NULL, '2021-09-08', 'Male', 'Jasmin', '1234567', 'jasmin@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 02:56:49', '2021-09-22 02:56:49'),
(28, '159210028', 'Dhaka', 'tit@gmail.com', '02322', 'Sadik', 'Titu', 'e', '2021-09-15', 'Male', 'Jaman', '025232', 'jaman@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 03:02:56', '2021-09-22 03:02:56'),
(29, '159210029', 'Dhaka', 'jamin@gmail.com', '0173989', 'Kitu', 'jamin', NULL, '2021-09-07', 'Male', 'Uddin', '01225', 'uddin@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 03:07:41', '2021-09-22 03:07:41'),
(31, '159210031', 'Dhaka', 'hamid@gmail.com', '025858', 'Hamid', 'Islam', NULL, '2021-08-31', 'Male', 'jony', '02555', 'jony@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 03:24:17', '2021-09-22 03:24:17'),
(32, '159210032', 'Dhaka', 'babla@gmail.com', '02588', 'babla', 'rr', NULL, '2021-09-01', 'Male', 'sdasd', '0222', 'manik@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 03:30:16', '2021-09-22 03:30:16'),
(33, '159210033', 'Dhaka', 'non@gmail.com', '02525', 'ee', 'ttt', NULL, '2021-08-31', 'Male', 'jall', '05585', 'jall@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 03:34:42', '2021-09-22 03:34:42'),
(34, '159210034', 'Dhaka', 'razzak@gmail.com', '01255', 'razzak', 'hossain', NULL, '2021-09-01', 'Male', 'fff', '025555', 'main@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 03:56:05', '2021-09-22 03:56:05'),
(35, '159210035', 'Dhaka', 'jisan@gmail.com', '0125', 'Jisan', 'hamid', NULL, '2021-09-15', 'Male', 'hab', '025585', 'hab@gmail.com', NULL, 'Active', '159', 3, '2021-09-22 04:52:22', '2021-09-22 06:08:12'),
(36, '159210036', 'Dhaka', 'monir@gmail.com', '05255', 'Monir', 'Hossain', NULL, '2021-09-08', 'Male', 'New Name', '025555', 'newname@gmail.com', NULL, 'Active', '159', 3, '2021-09-22 10:04:16', '2021-09-22 10:04:16'),
(37, '159210037', 'Dhaka', 'nahid@gmail.com', '0525585', 'Naimur', 'nahid', NULL, '2021-09-08', 'Male', 'asdfasd', '052558', 'asdfasd@gmail.com', NULL, 'Active', '159', 3, '2021-09-22 10:06:57', '2021-09-22 10:06:57'),
(38, '159210038', 'Dhaka', 'nakib@gmail.com', '011255', 'nakib', 'e', NULL, '2021-09-01', 'Male', 'asdf', '025585', 'mains@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 10:12:12', '2021-09-22 10:12:12'),
(41, '159210041', 'Dhaka', 'fahims@gmail.com', '025585', 'Fahims', 'e', NULL, '2021-09-08', 'Male', 'he', '02655', 'hes@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 11:57:29', '2021-09-22 11:57:29'),
(42, '159210042', 'asdfas', 'gias@gamil.com', '122', 'gias', 'r', NULL, '2021-09-15', 'Male', 'asdfasd', '023655', 'dfsfgsad@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 12:01:41', '2021-09-22 12:01:41'),
(45, '159210045', 'asdfasd', 'asdfaseeed@gmail.com', '000255', 'rsadf', 'sad', NULL, '2021-09-08', 'Male', 'sadfasd', '02666', 'fsadfere@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 12:14:22', '2021-09-22 12:14:22'),
(46, '159210046', 'sadfasd', 'eati@gmail.com', '052585', 'asdf', 'asdfasd', NULL, '2021-09-01', 'Male', 'asdfasdf', '025', 'mainssss@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 12:16:08', '2021-09-22 12:16:08'),
(70, '159210070', 'asdf', 'asdfasdfrer@gmail.com', '02122', 'fdg', 'sfdg', NULL, '2021-09-01', 'Male', 'sadre', '0526626', 'asdfdrr@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 12:37:04', '2021-09-22 12:37:04'),
(71, '159210071', 'adsfasd', 'notun@gmail.com', '02565658', 'Notun', 'stu', NULL, '2021-08-31', 'Male', 'asdfds', '02566', 'asdfasr@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 12:52:38', '2021-09-22 12:52:38'),
(72, '159210072', 'asdfasd', 'trrr@gmail.com', '01222', 'adfasd', 'asdfds', NULL, '2021-08-31', 'Male', 'asdfdsf', '0555', 'asdfsadf@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 13:57:09', '2021-09-22 13:57:09'),
(73, '159210073', 'fgg', 'laboni@gmail.com', '0125858', 'sadsad', 'errr', NULL, '2021-09-08', 'Male', 'fasdf', '02555', 'mainsde@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 14:04:05', '2021-09-22 14:04:05'),
(74, '159210074', 'sadfdsa', 'drrdf@gmail.com', '02555', 'asdfdff', 'ddd', NULL, '2021-09-08', 'Male', 'derrr', '06666', 'jadk@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 14:35:53', '2021-09-22 14:35:53'),
(75, '159210075', 'adsfsda', 'hghh@gmail.com', '05255', 'asdfsda', 'dd', NULL, '2021-09-16', 'Male', 'sdadsafsad', '052565', 'dfgsdf@gmail.com', NULL, 'Active', '159', 1, '2021-09-22 14:38:40', '2021-09-22 14:38:40'),
(76, '159210076', 'Dhaka', 'srrd@gmail.com', '012558', 'der', 'fder', NULL, '2021-09-01', 'Male', 'sadfd', 'rrfr', 'rtsr@gmail.com', NULL, 'Active', '159', 1, '2021-09-23 03:48:41', '2021-09-23 03:48:41'),
(77, '159210077', 'sadf', 'mainsed@gmail.com', '0122', 'ereqr', 'ddf', NULL, '2021-09-08', 'Male', 'drr', '05588', 'dsaas@gmail.com', NULL, 'Active', '159', 1, '2021-09-24 21:37:56', '2021-09-24 21:37:56'),
(78, '159210078', 'Dhaka', 'arif@gmail.com', '0173798', 'Arif', 'Hossain', NULL, '2021-10-07', 'Male', 'Rony', '01255', 'rony@gmail.com', NULL, 'Active', '159', 2, '2021-10-04 03:26:47', '2021-10-04 03:44:55'),
(79, '159210079', 'Dhaka', 'jamal@gmail.com', '0525855', 'Jamal', 'Khan', NULL, '2021-10-06', 'Male', 'Josim', '0526585', 'josim@gmail.com', NULL, 'Active', '159', 2, '2021-10-04 04:03:03', '2021-10-04 04:04:09'),
(80, '159210080', 'Dhaka', 'uzzal@gmail.com', '012555', 'uzzal', 'Khan', NULL, '2021-10-05', 'Male', 'sdfd', '025555', 'mailW@gmail.com', NULL, 'Active', '159', 2, '2021-10-04 04:10:34', '2021-10-04 04:15:41'),
(81, '159210081', 'DhkA', 'sumon@gmail.com', '02555', 'Sumon', 'Fahim', NULL, '2021-07-05', 'Male', 'ASDFAD', '025558', 'SDE@GMAIL.COM', NULL, 'Active', '159', 4, '2021-10-04 05:43:58', '2021-10-04 06:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE `student_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`id`, `class_id`, `student_id`, `status`, `created_at`, `updated_at`) VALUES
(13, 3, 8, 'Inactive', '2021-08-14 04:44:21', '2021-08-15 13:42:03'),
(14, 4, 8, 'Active', '2021-08-15 13:42:03', '2021-08-15 13:42:03'),
(15, 11, 9, 'Active', '2021-08-16 02:57:25', '2021-08-16 02:57:25'),
(16, 9, 10, 'Active', '2021-08-16 06:45:02', '2021-08-16 06:45:02'),
(17, 1, 11, 'Active', '2021-09-05 07:33:46', '2021-09-05 07:33:46'),
(18, 1, 12, 'Active', '2021-09-06 01:17:29', '2021-09-06 01:17:29'),
(19, 1, 13, 'Inactive', '2021-09-06 01:19:11', '2021-09-25 00:59:10'),
(20, 1, 14, 'Inactive', '2021-09-06 01:20:15', '2021-09-22 23:47:21'),
(21, 1, 15, 'Inactive', '2021-09-06 01:21:23', '2021-09-24 13:11:47'),
(22, 1, 16, 'Active', '2021-09-06 13:40:46', '2021-09-06 13:40:46'),
(24, 3, 18, 'Active', '2021-09-21 01:09:32', '2021-09-21 01:09:32'),
(25, 1, 19, 'Active', '2021-09-21 01:20:51', '2021-09-21 01:20:51'),
(26, 1, 20, 'Active', '2021-09-21 01:31:04', '2021-09-21 01:31:04'),
(27, 1, 21, 'Active', '2021-09-21 02:00:54', '2021-09-21 02:00:54'),
(28, 1, 22, 'Active', '2021-09-21 02:06:35', '2021-09-21 02:06:35'),
(29, 1, 23, 'Active', '2021-09-21 05:47:59', '2021-09-21 05:47:59'),
(30, 1, 24, 'Active', '2021-09-21 06:09:41', '2021-09-21 06:09:41'),
(31, 1, 27, 'Active', '2021-09-22 02:56:49', '2021-09-22 02:56:49'),
(32, 1, 28, 'Active', '2021-09-22 03:02:56', '2021-09-22 03:02:56'),
(33, 1, 29, 'Active', '2021-09-22 03:07:41', '2021-09-22 03:07:41'),
(34, 1, 31, 'Active', '2021-09-22 03:24:18', '2021-09-22 03:24:18'),
(35, 1, 32, 'Active', '2021-09-22 03:30:16', '2021-09-22 03:30:16'),
(36, 1, 33, 'Active', '2021-09-22 03:34:42', '2021-09-22 03:34:42'),
(37, 1, 34, 'Active', '2021-09-22 03:56:06', '2021-09-22 03:56:06'),
(38, 1, 35, 'Inactive', '2021-09-22 04:52:23', '2021-09-22 06:08:12'),
(39, 3, 35, 'Active', '2021-09-22 06:08:12', '2021-09-22 06:08:12'),
(40, 3, 36, 'Active', '2021-09-22 10:04:17', '2021-09-22 10:04:17'),
(41, 3, 37, 'Active', '2021-09-22 10:06:57', '2021-09-22 10:06:57'),
(42, 1, 38, 'Active', '2021-09-22 10:12:12', '2021-09-22 10:12:12'),
(44, 1, 41, 'Active', '2021-09-22 11:57:29', '2021-09-22 11:57:29'),
(45, 1, 42, 'Active', '2021-09-22 12:01:41', '2021-09-22 12:01:41'),
(48, 1, 45, 'Active', '2021-09-22 12:14:22', '2021-09-22 12:14:22'),
(49, 1, 46, 'Active', '2021-09-22 12:16:08', '2021-09-22 12:16:08'),
(73, 1, 70, 'Active', '2021-09-22 12:37:04', '2021-09-22 12:37:04'),
(74, 1, 71, 'Active', '2021-09-22 12:52:38', '2021-09-22 12:52:38'),
(75, 1, 72, 'Active', '2021-09-22 13:57:09', '2021-09-22 13:57:09'),
(76, 1, 73, 'Active', '2021-09-22 14:04:05', '2021-09-22 14:04:05'),
(77, 1, 74, 'Active', '2021-09-22 14:35:53', '2021-09-22 14:35:53'),
(78, 1, 75, 'Active', '2021-09-22 14:38:40', '2021-09-22 14:38:40'),
(79, 3, 14, 'Active', '2021-09-22 23:47:21', '2021-09-22 23:47:21'),
(80, 1, 76, 'Active', '2021-09-23 03:48:41', '2021-09-23 03:48:41'),
(81, 3, 15, 'Active', '2021-09-24 13:11:47', '2021-09-24 13:11:47'),
(82, 1, 77, 'Active', '2021-09-24 21:37:56', '2021-09-24 21:37:56'),
(83, 3, 13, 'Active', '2021-09-25 00:59:10', '2021-09-25 00:59:10'),
(84, 1, 78, 'Inactive', '2021-10-04 03:26:47', '2021-10-04 03:44:55'),
(85, 2, 78, 'Active', '2021-10-04 03:44:55', '2021-10-04 03:44:55'),
(86, 1, 79, 'Inactive', '2021-10-04 04:03:03', '2021-10-04 04:04:09'),
(87, 2, 79, 'Active', '2021-10-04 04:04:09', '2021-10-04 04:04:09'),
(88, 1, 80, 'Inactive', '2021-10-04 04:10:34', '2021-10-04 04:15:41'),
(89, 2, 80, 'Active', '2021-10-04 04:15:41', '2021-10-04 04:15:41'),
(90, 3, 81, 'Inactive', '2021-10-04 05:43:59', '2021-10-04 06:02:41'),
(91, 4, 81, 'Active', '2021-10-04 06:02:41', '2021-10-04 06:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `student_subjects`
--

CREATE TABLE `student_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_subjects`
--

INSERT INTO `student_subjects` (`id`, `class_subject_id`, `student_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 53, 8, 'Active', NULL, NULL),
(5, 54, 8, 'Active', NULL, NULL),
(6, 42, 10, 'Active', '2021-08-16 06:45:02', '2021-08-16 06:45:02'),
(7, 43, 10, 'Active', '2021-08-16 06:45:02', '2021-08-16 06:45:02'),
(8, 55, 10, 'Active', NULL, NULL),
(9, 60, 11, 'Active', '2021-09-05 07:33:46', '2021-09-05 07:33:46'),
(10, 61, 11, 'Active', '2021-09-05 07:33:46', '2021-09-05 07:33:46'),
(11, 62, 11, 'Active', '2021-09-05 07:33:46', '2021-09-05 07:33:46'),
(12, 60, 12, 'Active', '2021-09-06 01:17:29', '2021-09-06 01:17:29'),
(13, 61, 12, 'Active', '2021-09-06 01:17:29', '2021-09-06 01:17:29'),
(14, 62, 12, 'Active', '2021-09-06 01:17:29', '2021-09-06 01:17:29'),
(23, 61, 16, 'Active', '2021-09-06 13:40:46', '2021-09-06 13:40:46'),
(24, 62, 16, 'Active', '2021-09-06 13:40:46', '2021-09-06 13:40:46'),
(25, 55, 8, 'Active', NULL, NULL),
(31, 63, 18, 'Active', '2021-09-21 01:09:32', '2021-09-21 01:09:32'),
(32, 64, 18, 'Active', '2021-09-21 01:09:32', '2021-09-21 01:09:32'),
(33, 65, 18, 'Active', '2021-09-21 01:09:32', '2021-09-21 01:09:32'),
(34, 66, 18, 'Active', '2021-09-21 01:09:32', '2021-09-21 01:09:32'),
(35, 67, 18, 'Active', '2021-09-21 01:09:32', '2021-09-21 01:09:32'),
(36, 60, 19, 'Active', '2021-09-21 01:20:51', '2021-09-21 01:20:51'),
(37, 61, 19, 'Active', '2021-09-21 01:20:51', '2021-09-21 01:20:51'),
(38, 62, 19, 'Active', '2021-09-21 01:20:51', '2021-09-21 01:20:51'),
(39, 60, 20, 'Active', '2021-09-21 01:31:04', '2021-09-21 01:31:04'),
(40, 61, 20, 'Active', '2021-09-21 01:31:04', '2021-09-21 01:31:04'),
(41, 62, 20, 'Active', '2021-09-21 01:31:04', '2021-09-21 01:31:04'),
(42, 60, 21, 'Active', '2021-09-21 02:00:54', '2021-09-21 02:00:54'),
(43, 61, 21, 'Active', '2021-09-21 02:00:54', '2021-09-21 02:00:54'),
(44, 62, 21, 'Active', '2021-09-21 02:00:54', '2021-09-21 02:00:54'),
(45, 60, 22, 'Active', '2021-09-21 02:06:35', '2021-09-21 02:06:35'),
(46, 61, 22, 'Active', '2021-09-21 02:06:35', '2021-09-21 02:06:35'),
(47, 62, 22, 'Active', '2021-09-21 02:06:35', '2021-09-21 02:06:35'),
(48, 60, 23, 'Active', '2021-09-21 05:47:59', '2021-09-21 05:47:59'),
(49, 61, 23, 'Active', '2021-09-21 05:47:59', '2021-09-21 05:47:59'),
(50, 62, 23, 'Active', '2021-09-21 05:47:59', '2021-09-21 05:47:59'),
(51, 60, 24, 'Active', '2021-09-21 06:09:41', '2021-09-21 06:09:41'),
(52, 61, 24, 'Active', '2021-09-21 06:09:41', '2021-09-21 06:09:41'),
(53, 62, 24, 'Active', '2021-09-21 06:09:41', '2021-09-21 06:09:41'),
(54, 60, 27, 'Active', '2021-09-22 02:56:49', '2021-09-22 02:56:49'),
(55, 61, 27, 'Active', '2021-09-22 02:56:49', '2021-09-22 02:56:49'),
(56, 60, 28, 'Active', '2021-09-22 03:02:56', '2021-09-22 03:02:56'),
(57, 61, 28, 'Active', '2021-09-22 03:02:56', '2021-09-22 03:02:56'),
(58, 62, 28, 'Active', '2021-09-22 03:02:56', '2021-09-22 03:02:56'),
(59, 60, 29, 'Active', '2021-09-22 03:07:41', '2021-09-22 03:07:41'),
(60, 61, 29, 'Active', '2021-09-22 03:07:41', '2021-09-22 03:07:41'),
(61, 62, 29, 'Active', '2021-09-22 03:07:41', '2021-09-22 03:07:41'),
(62, 60, 31, 'Active', '2021-09-22 03:24:18', '2021-09-22 03:24:18'),
(63, 61, 31, 'Active', '2021-09-22 03:24:18', '2021-09-22 03:24:18'),
(64, 62, 31, 'Active', '2021-09-22 03:24:18', '2021-09-22 03:24:18'),
(65, 60, 32, 'Active', '2021-09-22 03:30:16', '2021-09-22 03:30:16'),
(66, 61, 32, 'Active', '2021-09-22 03:30:16', '2021-09-22 03:30:16'),
(67, 62, 32, 'Active', '2021-09-22 03:30:16', '2021-09-22 03:30:16'),
(68, 60, 33, 'Active', '2021-09-22 03:34:42', '2021-09-22 03:34:42'),
(69, 61, 33, 'Active', '2021-09-22 03:34:42', '2021-09-22 03:34:42'),
(70, 62, 33, 'Active', '2021-09-22 03:34:42', '2021-09-22 03:34:42'),
(71, 60, 34, 'Active', '2021-09-22 03:56:06', '2021-09-22 03:56:06'),
(72, 61, 34, 'Active', '2021-09-22 03:56:06', '2021-09-22 03:56:06'),
(73, 62, 34, 'Active', '2021-09-22 03:56:06', '2021-09-22 03:56:06'),
(77, 63, 35, 'Active', NULL, NULL),
(78, 64, 35, 'Active', NULL, NULL),
(79, 65, 35, 'Active', NULL, NULL),
(80, 66, 35, 'Active', NULL, NULL),
(81, 67, 35, 'Active', NULL, NULL),
(82, 63, 36, 'Active', '2021-09-22 10:04:17', '2021-09-22 10:04:17'),
(83, 64, 36, 'Active', '2021-09-22 10:04:17', '2021-09-22 10:04:17'),
(84, 65, 36, 'Active', '2021-09-22 10:04:17', '2021-09-22 10:04:17'),
(85, 67, 36, 'Active', '2021-09-22 10:04:17', '2021-09-22 10:04:17'),
(86, 63, 37, 'Active', '2021-09-22 10:06:57', '2021-09-22 10:06:57'),
(87, 64, 37, 'Active', '2021-09-22 10:06:57', '2021-09-22 10:06:57'),
(88, 65, 37, 'Active', '2021-09-22 10:06:57', '2021-09-22 10:06:57'),
(89, 66, 37, 'Active', '2021-09-22 10:06:57', '2021-09-22 10:06:57'),
(90, 67, 37, 'Active', '2021-09-22 10:06:57', '2021-09-22 10:06:57'),
(91, 60, 38, 'Active', '2021-09-22 10:12:12', '2021-09-22 10:12:12'),
(92, 61, 38, 'Active', '2021-09-22 10:12:12', '2021-09-22 10:12:12'),
(93, 62, 38, 'Active', '2021-09-22 10:12:12', '2021-09-22 10:12:12'),
(97, 60, 41, 'Active', '2021-09-22 11:57:29', '2021-09-22 11:57:29'),
(98, 61, 41, 'Active', '2021-09-22 11:57:29', '2021-09-22 11:57:29'),
(99, 62, 41, 'Active', '2021-09-22 11:57:29', '2021-09-22 11:57:29'),
(100, 60, 42, 'Active', '2021-09-22 12:01:41', '2021-09-22 12:01:41'),
(101, 61, 42, 'Active', '2021-09-22 12:01:41', '2021-09-22 12:01:41'),
(102, 62, 42, 'Active', '2021-09-22 12:01:41', '2021-09-22 12:01:41'),
(109, 60, 45, 'Active', '2021-09-22 12:14:22', '2021-09-22 12:14:22'),
(110, 61, 45, 'Active', '2021-09-22 12:14:22', '2021-09-22 12:14:22'),
(111, 62, 45, 'Active', '2021-09-22 12:14:22', '2021-09-22 12:14:22'),
(112, 60, 46, 'Active', '2021-09-22 12:16:08', '2021-09-22 12:16:08'),
(113, 61, 46, 'Active', '2021-09-22 12:16:08', '2021-09-22 12:16:08'),
(114, 62, 46, 'Active', '2021-09-22 12:16:08', '2021-09-22 12:16:08'),
(184, 60, 70, 'Active', '2021-09-22 12:37:04', '2021-09-22 12:37:04'),
(185, 61, 70, 'Active', '2021-09-22 12:37:04', '2021-09-22 12:37:04'),
(186, 62, 70, 'Active', '2021-09-22 12:37:04', '2021-09-22 12:37:04'),
(188, 61, 71, 'Active', '2021-09-22 12:52:38', '2021-09-22 12:52:38'),
(189, 62, 71, 'Active', '2021-09-22 12:52:38', '2021-09-22 12:52:38'),
(190, 60, 72, 'Active', '2021-09-22 13:57:09', '2021-09-22 13:57:09'),
(191, 61, 72, 'Active', '2021-09-22 13:57:09', '2021-09-22 13:57:09'),
(192, 62, 72, 'Active', '2021-09-22 13:57:09', '2021-09-22 13:57:09'),
(193, 60, 73, 'Active', '2021-09-22 14:04:05', '2021-09-22 14:04:05'),
(194, 61, 73, 'Active', '2021-09-22 14:04:05', '2021-09-22 14:04:05'),
(195, 62, 73, 'Active', '2021-09-22 14:04:05', '2021-09-22 14:04:05'),
(196, 60, 74, 'Active', '2021-09-22 14:35:53', '2021-09-22 14:35:53'),
(197, 61, 74, 'Active', '2021-09-22 14:35:53', '2021-09-22 14:35:53'),
(198, 62, 74, 'Active', '2021-09-22 14:35:53', '2021-09-22 14:35:53'),
(200, 61, 75, 'Active', '2021-09-22 14:38:40', '2021-09-22 14:38:40'),
(201, 62, 75, 'Active', '2021-09-22 14:38:40', '2021-09-22 14:38:40'),
(202, 63, 14, 'Active', NULL, NULL),
(203, 64, 14, 'Active', NULL, NULL),
(204, 65, 14, 'Active', NULL, NULL),
(205, 60, 76, 'Active', '2021-09-23 03:48:41', '2021-09-23 03:48:41'),
(206, 61, 76, 'Active', NULL, NULL),
(207, 62, 76, 'Active', NULL, NULL),
(208, 63, 15, 'Active', NULL, NULL),
(209, 64, 15, 'Active', NULL, NULL),
(210, 65, 15, 'Active', NULL, NULL),
(211, 66, 15, 'Active', NULL, NULL),
(212, 67, 15, 'Active', NULL, NULL),
(213, 60, 77, 'Active', '2021-09-24 21:37:56', '2021-09-24 21:37:56'),
(214, 60, 16, 'Active', NULL, NULL),
(215, 63, 13, 'Active', NULL, NULL),
(216, 64, 13, 'Active', NULL, NULL),
(217, 65, 13, 'Active', NULL, NULL),
(218, 63, 8, 'Inactive', NULL, NULL),
(222, 58, 78, 'Active', '2021-10-04 03:44:55', '2021-10-04 03:44:55'),
(223, 57, 78, 'Active', NULL, NULL),
(224, 59, 78, 'Active', NULL, NULL),
(227, 59, 79, 'Active', '2021-10-04 04:04:09', '2021-10-04 04:04:09'),
(231, 57, 80, 'Active', '2021-10-04 04:15:41', '2021-10-04 04:15:41'),
(234, 63, 81, 'Inactive', '2021-10-04 05:43:59', '2021-10-04 05:43:59'),
(235, 64, 81, 'Inactive', '2021-10-04 05:43:59', '2021-10-04 05:43:59'),
(236, 65, 81, 'Inactive', '2021-10-04 05:43:59', '2021-10-04 05:43:59'),
(237, 66, 81, 'Inactive', '2021-10-04 05:43:59', '2021-10-04 05:43:59'),
(238, 67, 81, 'Inactive', '2021-10-04 05:43:59', '2021-10-04 05:43:59'),
(239, 53, 81, 'Active', '2021-10-04 06:02:41', '2021-10-04 06:02:41'),
(240, 54, 81, 'Active', '2021-10-04 06:02:41', '2021-10-04 06:02:41'),
(241, 55, 81, 'Active', '2021-10-04 06:02:41', '2021-10-04 06:02:41'),
(242, 68, 81, 'Active', '2021-10-04 06:02:41', '2021-10-04 06:02:41'),
(243, 69, 81, 'Active', '2021-10-04 06:02:41', '2021-10-04 06:02:41'),
(244, 70, 81, 'Active', '2021-10-04 06:02:41', '2021-10-04 06:02:41'),
(245, 71, 81, 'Active', '2021-10-04 06:02:41', '2021-10-04 06:02:41'),
(246, 72, 81, 'Active', '2021-10-04 06:02:41', '2021-10-04 06:02:41'),
(247, 73, 81, 'Active', '2021-10-04 06:02:41', '2021-10-04 06:02:41'),
(248, 74, 81, 'Active', '2021-10-04 06:02:41', '2021-10-04 06:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`, `subject_details`, `status`, `created_at`, `updated_at`) VALUES
(14, 'Rhymes', 'Rhymes', 'Active', '2021-08-14 04:34:04', '2021-08-25 22:25:17'),
(15, 'Literacy', 'Literacy', 'Active', '2021-08-14 04:36:47', '2021-08-25 22:25:30'),
(16, 'Mathematics', 'Mathematics', 'Active', '2021-08-14 04:37:52', '2021-08-14 04:37:52'),
(17, 'Mathematics Assessment', 'Mathematics Assessment', 'Active', '2021-08-25 22:25:53', '2021-08-25 22:25:53'),
(18, 'English', 'English', 'Active', '2021-08-25 22:26:13', '2021-08-25 22:26:13'),
(19, 'English Assessment', 'English Assessment', 'Active', '2021-08-25 22:26:31', '2021-08-25 22:26:31'),
(20, 'Science', 'Science', 'Active', '2021-08-25 22:26:48', '2021-08-25 22:26:48'),
(21, 'Math’s SATs Exam', 'Math’s SATs Exam', 'Active', '2021-08-25 22:29:00', '2021-08-25 22:29:00'),
(22, 'English SATs Exam', 'English SATs Exam', 'Active', '2021-08-25 22:29:44', '2021-08-25 22:29:44'),
(23, '11+ Maths', '11+ Maths', 'Active', '2021-08-25 22:30:05', '2021-08-25 22:30:05'),
(24, '11+ English', '11+ English', 'Active', '2021-08-25 22:30:23', '2021-08-25 22:30:23'),
(25, '11+ verbal Reasoning', '11+ verbal Reasoning', 'Active', '2021-08-25 22:30:40', '2021-08-25 22:30:40'),
(26, '11+ Non-verbal Reasoning', '11+ Non-verbal Reasoning', 'Active', '2021-08-25 22:30:57', '2021-08-25 22:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('Male','Female','She-Male') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Male',
  `last_qualification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` enum('Permanent','Part-time') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Permanent',
  `salary` decimal(8,2) DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `school_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `teacher_id`, `address`, `email`, `contact_no`, `first_name`, `middle_name`, `last_name`, `dob`, `nationality`, `gender`, `last_qualification`, `speciality`, `job_type`, `salary`, `remarks`, `status`, `school_id`, `created_at`, `updated_at`) VALUES
(39, '159210039', 'asdf', 'nayem@gmail.com', '0525', 'Nayem', 'Hasan', NULL, '2021-08-19', 'Bangladesh', 'She-Male', 'New', 'Any', 'Part-time', '25000.00', 'asdf', 'Active', '159', '2021-08-14 05:17:02', '2021-08-14 05:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subjects`
--

CREATE TABLE `teacher_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_subjects`
--

INSERT INTO `teacher_subjects` (`id`, `class_subject_id`, `teacher_id`, `status`, `created_at`, `updated_at`) VALUES
(19, 45, 39, 'Active', '2021-08-14 05:17:08', '2021-08-14 05:17:08'),
(20, 49, 39, 'Active', '2021-08-14 05:17:08', '2021-08-14 05:17:08'),
(21, 42, 39, 'Active', NULL, NULL),
(22, 46, 39, 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `topic_name`, `topic_details`, `subject_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Part-1', 'Details', 14, 'Active', '2021-08-14 04:34:04', '2021-08-14 04:34:04'),
(4, 'Part-2', 'Details', 14, 'Active', '2021-08-14 04:34:04', '2021-08-14 04:34:04'),
(5, 'Part-1', 'Details', 15, 'Active', '2021-08-14 04:36:47', '2021-08-14 04:36:47'),
(6, 'part-2', 'Details', 15, 'Active', '2021-08-14 04:36:47', '2021-08-14 04:36:47'),
(7, 'Mathematics Topic -1', 'Details', 16, 'Active', '2021-08-14 04:37:52', '2021-08-14 04:37:52'),
(8, 'Mathematics Topic -2', 'Details', 16, 'Active', '2021-08-14 04:37:52', '2021-08-14 04:37:52'),
(9, 'Part -1', 'Details', 17, 'Active', '2021-08-25 22:25:53', '2021-08-25 22:25:53'),
(10, 'Part 1', 'Details', 18, 'Active', '2021-08-25 22:26:13', '2021-08-25 22:26:13'),
(11, 'Part 1', 'Details', 19, 'Active', '2021-08-25 22:26:31', '2021-08-25 22:26:31'),
(12, 'Part 02', 'Details', 20, 'Active', '2021-08-25 22:26:48', '2021-08-25 22:26:48'),
(13, 'Part 1', 'Details', 21, 'Active', '2021-08-25 22:29:00', '2021-08-25 22:29:00'),
(14, 'Part 1', 'Details', 22, 'Active', '2021-08-25 22:29:44', '2021-08-25 22:29:44'),
(15, 'Part 1', 'Details', 23, 'Active', '2021-08-25 22:30:05', '2021-08-25 22:30:05'),
(16, 'Part 01', 'Details', 24, 'Active', '2021-08-25 22:30:23', '2021-08-25 22:30:23'),
(17, 'Part 01', 'details', 25, 'Active', '2021-08-25 22:30:40', '2021-08-25 22:30:40'),
(18, 'Part 02', 'Details', 26, 'Active', '2021-08-25 22:30:57', '2021-08-25 22:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` bigint(20) DEFAULT NULL COMMENT 'when a user is under a client then client id will set here',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:active,0:in-active',
  `type` enum('School','Admin','Teacher','Student') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Admin',
  `typable_id` bigint(20) DEFAULT NULL,
  `login_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1:logged-in,0:Not logged in',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `user_profile_image`, `contact_no`, `remarks`, `school_id`, `status`, `type`, `typable_id`, `login_status`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Momit', 'Hasan', 'momit@technolife.ee', '1616308888.jpg', '74645564654', NULL, NULL, 1, 'Admin', NULL, 1, '$2y$10$zFj3Z1gRkrbgUvoNXF6cXubdAp8p54yy4kRgJ421RQNqllCEvHJka', NULL, NULL, '2021-06-07 06:50:15', '2021-09-21 03:32:28'),
(29, 'Rajib', 'Hasan', 'razibeee2014@gmail.com', NULL, '456456456', NULL, NULL, 1, 'Admin', NULL, 0, '$2y$10$qK5RD3aGjY/oMmef3QBGmuTxLDVVTzigeWdTXf4dGaf46Eo61gKwm', NULL, NULL, '2021-07-14 06:43:53', '2021-10-17 01:24:08'),
(490, 'Khan', NULL, 'mohmmadpur@gmail.com', NULL, '02528588', 'sdafads', 159, 1, 'School', NULL, 1, '$2y$10$r20TbXUdQ26z6pwO.atjSuy0Qmqia..pjOyJKF3qDMxc76vATlBIi', NULL, NULL, '2021-08-07 05:03:48', '2021-10-17 22:13:41'),
(491, 'new', 'Boys', 'boys@gmail.com', NULL, '02525', NULL, 159, 1, 'School', NULL, 1, '$2y$10$n1Ne.b1gAIAlxqe3epJY7.7UDadcX0.yfcuZihnIYg2I.4bjpoWz.', NULL, NULL, '2021-08-07 05:04:47', '2021-08-07 05:32:11'),
(492, 'Fahim', 'Korim', 'fahim@gmail.com', NULL, '02555', NULL, NULL, 1, 'Admin', NULL, 0, '$2y$10$ovGVQH9WU3ZKVxsIxcFc1edNWC.10MEmMNry/Z.PnxPdGNEBwC3XS', NULL, NULL, '2021-08-07 05:05:30', '2021-08-07 05:05:30'),
(493, 'Robin', '', 'bengol@gmail.com', NULL, '05255', NULL, 160, 1, 'School', NULL, 1, '$2y$10$3Yzuf8.h22vdks3gTi3UhezdAzRJKybS6VXEHMfvI8vDRM688wAGq', NULL, NULL, '2021-08-07 05:06:21', '2021-08-07 05:09:24'),
(523, 'Rana', NULL, 'rana@gmail.com', '1632204262pro.png', '012544', NULL, 159, 1, 'Student', 8, 1, '$2y$10$Xy2V2fwt4n4fmkukBXwdNuKiFpeBOv3lNy/SQV5ZPnuNrv3BG5sfy', NULL, NULL, '2021-08-14 04:44:19', '2021-10-16 22:01:04'),
(524, 'Nayem', NULL, 'nayem@gmail.com', NULL, '0525', 'asdf', 159, 1, 'Teacher', 39, 1, '$2y$10$Io6r6SMCs3BTbIr4XJUIH.m9xQX1DXE0e/Tz0sFqNNsw376muHzTy', NULL, NULL, '2021-08-14 05:17:02', '2021-08-17 01:29:38'),
(525, 'asdf', NULL, 'asdfasdf@gmail.com', NULL, '0222525', NULL, 159, 1, 'Student', 9, 0, '$2y$10$jIQKy3jDiu0r7xwr6ZV3/unz8biI5KubG31i0F3.Rt6mqUkDUPcmC', NULL, NULL, '2021-08-16 02:57:25', '2021-08-16 03:20:14'),
(526, 'asdf', 'asdf', 'asdfasd@gmail.com', NULL, '025566', 'sadff', 159, 1, 'Student', 10, 0, '$2y$10$64MY2Lybfv.hd05S3yUB8e40C1/n.noMlHSLWDlCY4rDa5AccLLMq', NULL, NULL, '2021-08-16 06:45:02', '2021-08-16 06:45:02'),
(527, 'Kamal', 'First', 'mohammad@gmail.com', NULL, '012477', 'sdfdsaf', 159, 1, 'Student', 11, 0, '$2y$10$l7xK3CZz5497uqtE.bd5t.uvSmhgq7dcVYf2P89o7tH.n47Hdbv2a', NULL, NULL, '2021-09-05 07:33:45', '2021-09-05 07:33:45'),
(528, 'Abir', '', 'abir@gmail.com', '1630912648logo-finals.png', '12345678', NULL, 159, 1, 'Student', 12, 0, '$2y$10$EKKVSPRzfpNRHHEE5JO6tu/pE7uH5FtR2fcX8cnjw5gbHhpXqvpw6', NULL, NULL, '2021-09-06 01:17:28', '2021-09-06 01:17:28'),
(529, 'Rabbi', NULL, 'rabbi@gmail.com', NULL, '0125', NULL, 159, 1, 'Student', 13, 1, '$2y$10$5bvFspAZCNwndJl2TysG9e31kZBjTvXasHnsAd/yE82GztUkQSbH.', NULL, NULL, '2021-09-06 01:19:11', '2021-10-16 22:29:52'),
(530, 'Anis', NULL, 'anis@gmail.com', NULL, '03698', NULL, 159, 1, 'Student', 14, 0, '$2y$10$fKbkQA9vo4Y0wJ23eOGmvevdma/OqKy7yFJfZf39Yz1tOWQbIYZKu', NULL, NULL, '2021-09-06 01:20:15', '2021-09-22 23:47:21'),
(531, 'Rajaul', NULL, 'rajaul@gmail.com', NULL, '25896', NULL, 159, 1, 'Student', 15, 0, '$2y$10$4vhfElaY3rkxGDZXc5ZBx.BV3A53QHL4awIq6GknAKejIGgqviAIW', NULL, NULL, '2021-09-06 01:21:23', '2021-09-27 02:26:26'),
(532, 'Nasif', NULL, 'nasif@gmail.com', NULL, '0255', NULL, 159, 1, 'Student', 16, 0, '$2y$10$wf5E0U6Ft9.mOEVGDk87eu3PaTlIEzps3ogATouprLz6b8ECq7FXi', NULL, NULL, '2021-09-06 13:40:45', '2021-09-24 23:17:05'),
(534, 'Masud', '', 'masud@gmail.com', '1632208172razib.png', '01737988947', 'dd', 159, 1, 'Student', 18, 0, '$2y$10$blRd45IU5fbrc4.It1QH3e0yUdMNjWTpaYAkjDiT1XVZfahRHpGWi', NULL, NULL, '2021-09-21 01:09:32', '2021-09-21 01:09:32'),
(535, 'err', '', 'titas@gmail.com', NULL, '01254858', 'ee', 159, 1, 'Student', 19, 0, '$2y$10$TRyMwShuBvop58Ef9nOmPOb9X52Lrl7mcMUrW5QGXVEQ1E7CxrWq.', NULL, NULL, '2021-09-21 01:20:51', '2021-09-21 01:20:51'),
(536, 'Gazi', '', 'gazi@gmail.com', NULL, '01225', 'rr', 159, 1, 'Student', 20, 0, '$2y$10$FYJ.1pZu7/JpJv.PTVldMuv1Kx1pxmVjaOJ65/b7AJ4LukEyZ/UnW', NULL, NULL, '2021-09-21 01:31:04', '2021-09-21 01:31:04'),
(537, 'Asif', '', 'asif@gmail.com', NULL, '01255', 'Ro', 159, 1, 'Student', 21, 0, '$2y$10$40bmlJSOe3ZOtOY5HtMQMudSn9Y5yMdqBTFK6Q1aMkAaURcDP5EaW', NULL, NULL, '2021-09-21 02:00:53', '2021-09-21 02:00:53'),
(538, 'Sabbir', '', 'sabbir@gmail.com', NULL, '01245', 'er', 159, 1, 'Student', 22, 0, '$2y$10$w.qRZHeYbdp7Pc8.6oUYWOSEAbo3tHsexJkHJar1tjo8H.abjZP0W', NULL, NULL, '2021-09-21 02:06:35', '2021-09-21 02:06:35'),
(539, 'Mamun', '', 'mamun@gmail.com', NULL, '01255', 'tw', 159, 1, 'Student', 23, 0, '$2y$10$gC1iR8ERnQ62hwREjWyrxe5i0/Q27h.bD4Ax3P0dmoT7VDnjxFGWW', NULL, NULL, '2021-09-21 05:47:59', '2021-09-21 05:47:59'),
(540, 'Rabi', '', 'robij@gmail.com', NULL, '0122', 're', 159, 1, 'Student', 24, 0, '$2y$10$ODv1hrDpp9kBU2N4HHpL8O.7JUPGEWoHQsEbDE4kPFHm/yjlyuWFa', NULL, NULL, '2021-09-21 06:09:40', '2021-09-21 06:09:40'),
(543, 'Kamal', '', 'kam@gmail.com', NULL, '012555', NULL, 159, 1, 'Student', 27, 0, '$2y$10$Uf0bRShXrejt9.JqeDiWoOibTq0W/UtnV2XMOUmNF8W0gjzJliNe6', NULL, NULL, '2021-09-22 02:56:49', '2021-09-22 02:56:49'),
(544, 'Sadik', 'e', 'tit@gmail.com', NULL, '02322', NULL, 159, 1, 'Student', 28, 0, '$2y$10$e4HJ8tLqlmH0E8xg.16I/e9VPF9NJ7ghscqQvYVVDQh3EFQf/ywmS', NULL, NULL, '2021-09-22 03:02:56', '2021-09-22 03:02:56'),
(545, 'Kitu', '', 'jamin@gmail.com', NULL, '0173989', NULL, 159, 1, 'Student', 29, 0, '$2y$10$ffvqqH.FJSEzQo3Tp6myPuamV7z7p14nsAkYC3O9XwjARgp1pUkKu', NULL, NULL, '2021-09-22 03:07:41', '2021-09-22 03:07:41'),
(547, 'Hamid', '', 'hamid@gmail.com', NULL, '025858', NULL, 159, 1, 'Student', 31, 0, '$2y$10$EBa7ORHQdtckOz8BotLOsecgG88u8wRRNnLwZnR8Ak2niA7k1Mqxe', NULL, NULL, '2021-09-22 03:24:17', '2021-09-22 03:24:17'),
(548, 'babla', '', 'babla@gmail.com', NULL, '02588', NULL, 159, 1, 'Student', 32, 0, '$2y$10$GvAxOLsn2wv2yssnCzGv1O38a0JBqyza19kt7FryY.7fpO4BfCdom', NULL, NULL, '2021-09-22 03:30:16', '2021-09-22 03:30:16'),
(549, 'ee', '', 'non@gmail.com', NULL, '02525', NULL, 159, 1, 'Student', 33, 0, '$2y$10$V6uHqyGPrBIZL6qV64tDMudEGtDRhf9az/W8d9cnR4Ow9Dhb1kqoG', NULL, NULL, '2021-09-22 03:34:42', '2021-09-22 03:34:42'),
(550, 'razzak', '', 'razzak@gmail.com', NULL, '01255', NULL, 159, 1, 'Student', 34, 0, '$2y$10$dA7wXTSeFNHSN0jdMf9TzuvvKfHEGp7JfyxzrJqaukmYvY.rILTmC', NULL, NULL, '2021-09-22 03:56:06', '2021-09-22 03:56:06'),
(551, 'Jisan', NULL, 'jisan@gmail.com', NULL, '0125', NULL, 159, 1, 'Student', 35, 0, '$2y$10$/Ewo7CbbkVcI9ErpHARDZOLZqulGoVgwFcx45Yh2iSLiLw7L/NaQy', NULL, NULL, '2021-09-22 04:52:22', '2021-09-22 06:09:32'),
(552, 'Monir', '', 'monir@gmail.com', NULL, '05255', NULL, 159, 1, 'Student', 36, 0, '$2y$10$WBbueWj8EBCHz868SLXdoug17bOzkLbC0HuoEdISWBU5xY1JcWHnu', NULL, NULL, '2021-09-22 10:04:17', '2021-09-22 10:04:17'),
(553, 'Naimur', '', 'nahid@gmail.com', NULL, '0525585', NULL, 159, 1, 'Student', 37, 0, '$2y$10$jFpriKqbFexDCnm9FtGhz.lQ8ICxcvf4frGBTS4z6xieNOEwMfq.m', NULL, NULL, '2021-09-22 10:06:57', '2021-09-22 10:06:57'),
(554, 'nakib', '', 'nakib@gmail.com', NULL, '011255', NULL, 159, 1, 'Student', 38, 0, '$2y$10$CzIzCCic2FjVtQ1WoNJlIuXJ0O25lnv5.B9gdVott8u9rZ2OpjSIG', NULL, NULL, '2021-09-22 10:12:12', '2021-09-22 10:12:12'),
(557, 'Fahims', '', 'fahims@gmail.com', NULL, '025585', NULL, 159, 1, 'Student', 41, 0, '$2y$10$j.apL7sQ1sK2y8QnEVWH6uw0tinDoM4gnGd7Cq3Ny2PB1TzegGSJ6', NULL, NULL, '2021-09-22 11:57:29', '2021-09-22 11:57:29'),
(558, 'gias', '', 'gias@gamil.com', NULL, '122', NULL, 159, 1, 'Student', 42, 0, '$2y$10$nijMMgHXJNCHeWHnR9zJ1OnO8C24PuwIGkq5..5Ir.E9aLSiSFQPm', NULL, NULL, '2021-09-22 12:01:41', '2021-09-22 12:01:41'),
(561, 'rsadf', '', 'asdfaseeed@gmail.com', NULL, '000255', NULL, 159, 1, 'Student', 45, 0, '$2y$10$wyfO1n6IWzZiufqdIGaTQ.K.o7VTWOsOCdcd7ZKpesrz8sz3.0H4.', NULL, NULL, '2021-09-22 12:14:22', '2021-09-22 12:14:22'),
(562, 'asdf', '', 'eati@gmail.com', NULL, '052585', NULL, 159, 1, 'Student', 46, 0, '$2y$10$3MSBm3FZFaOP49L7acyr3OYRv377gbltoqGCDmapaNYbI3DGhxvq.', NULL, NULL, '2021-09-22 12:16:08', '2021-09-22 12:16:08'),
(566, 'fdg', '', 'asdfasdfrer@gmail.com', NULL, '02122', NULL, 159, 1, 'Student', 70, 0, '$2y$10$HE6BVFMjdW2yqy07UGlxgeIHzQN3IvN2I/gq0dlv60bkFBTxYaPaC', NULL, NULL, '2021-09-22 12:37:04', '2021-09-22 12:37:04'),
(567, 'Notun', NULL, 'notun@gmail.com', NULL, '02565658', NULL, 159, 1, 'Student', 71, 0, '$2y$10$9lhgwTbDMRBomBgsJ8XNWOQQdG67fBRKfr01/XmCzXsjAOSik0.dG', NULL, NULL, '2021-09-22 12:52:38', '2021-09-24 13:13:38'),
(568, 'adfasd', '', 'trrr@gmail.com', NULL, '01222', NULL, 159, 1, 'Student', 72, 0, '$2y$10$lKq8B6px17amlqJ69e7PKeaFiIQ3leKnMPCaE.hCu2UdNp8C6Fji2', NULL, NULL, '2021-09-22 13:57:10', '2021-09-22 13:57:10'),
(569, 'sadsad', '', 'laboni@gmail.com', NULL, '0125858', NULL, 159, 1, 'Student', 73, 0, '$2y$10$GawDUFl5PCeAXtq/YobZuOsKvgFyYgVDhIPvzH2r6JVs01jRv9HZe', NULL, NULL, '2021-09-22 14:04:05', '2021-09-22 14:04:05'),
(570, 'asdfdff', '', 'drrdf@gmail.com', NULL, '02555', NULL, 159, 1, 'Student', 74, 0, '$2y$10$50slck0FxYh0.SZQhO29yu.e1q/aXvxKIWKVyeRXZkBU9GS1cysMm', NULL, NULL, '2021-09-22 14:35:53', '2021-09-22 14:35:53'),
(571, 'asdfsda', NULL, 'hghh@gmail.com', NULL, '05255', NULL, 159, 1, 'Student', 75, 0, '$2y$10$dIcAHGOoyCkg6LiGR9az7ubdYeRS9.MwVv/ASZtwdabdTZ8Oif0R2', NULL, NULL, '2021-09-22 14:38:40', '2021-09-24 13:12:48'),
(572, 'der', NULL, 'srrd@gmail.com', NULL, '012558', NULL, 159, 1, 'Student', 76, 0, '$2y$10$RpxjgMGUA20tgSnLiGaJI.vRSe6mqMfjrgO.fUFJA4Xw32gEi42uq', NULL, NULL, '2021-09-23 03:48:41', '2021-09-24 13:02:07'),
(573, 'ereqr', NULL, 'mainsed@gmail.com', NULL, '0122', NULL, 159, 1, 'Student', 77, 0, '$2y$10$q9QCX4D9SmQo74Y9zGIi2ez0Y2FraqkMNZ59P8uv0PKOWEVo66pAS', NULL, NULL, '2021-09-24 21:37:56', '2021-09-24 21:38:14'),
(574, 'Arif', NULL, 'arif@gmail.com', NULL, '0173798', NULL, 159, 1, 'Student', 78, 1, '$2y$10$9wXTQdOmDEvJBhCrN23KPuPN9BA1.hLmC8aP1fd.W4xYOxpwKTwaq', NULL, NULL, '2021-10-04 03:26:47', '2021-10-04 05:06:51'),
(575, 'Jamal', NULL, 'jamal@gmail.com', NULL, '0525855', NULL, 159, 1, 'Student', 79, 0, '$2y$10$hz/TzFwhL0upLp2cRKfgKOvQfQDsK3wf0Si7U7TWy3ZBg5Jd.ovaa', NULL, NULL, '2021-10-04 04:03:03', '2021-10-04 04:05:23'),
(576, 'uzzal', NULL, 'uzzal@gmail.com', NULL, '012555', NULL, 159, 1, 'Student', 80, 0, '$2y$10$RZMS.XkkalaFleZ5ERM6gOaUHH8THOyis2bXTwdXDb7WPu0zt2x.C', NULL, NULL, '2021-10-04 04:10:34', '2021-10-04 04:34:39'),
(577, 'Sumon', NULL, 'sumon@gmail.com', NULL, '02555', NULL, 159, 1, 'Student', 81, 0, '$2y$10$WTzz5ihL822AbJVF73p04Omdhhjy3zUKxc6aOrinkxjDyUcphNWK2', NULL, NULL, '2021-10-04 05:43:59', '2021-10-17 22:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` bigint(20) NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:active,0:in-active',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1:Admin, 2:School, 3:Teacher, 3:Student',
  `editable` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:yes,0:no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `status`, `type`, `editable`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 1, 1, 0, NULL, NULL),
(2, 'School Admin', 1, 2, 1, '2020-04-10 07:35:07', '2020-04-10 07:35:07'),
(27, 'Teacher', 1, 3, 1, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(29, 'Student', 1, 4, 1, '2021-07-14 06:44:52', '2021-07-14 06:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_group_members`
--

CREATE TABLE `user_group_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1:active,0:in-active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_group_members`
--

INSERT INTO `user_group_members` (`id`, `user_id`, `group_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, NULL),
(4, 1, 2, 0, '2020-04-10 07:35:07', '2020-04-10 07:35:07'),
(5, 1, 27, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(6, 29, 1, 1, NULL, NULL),
(488, 490, 2, 1, '2021-08-07 05:03:48', '2021-08-07 05:03:48'),
(489, 491, 2, 1, '2021-08-07 05:04:47', '2021-08-07 05:04:47'),
(490, 492, 1, 1, '2021-08-07 05:05:30', '2021-08-07 05:05:30'),
(491, 493, 2, 1, '2021-08-07 05:06:21', '2021-08-07 05:06:21'),
(521, 523, 29, 1, '2021-08-14 04:44:19', '2021-08-14 04:44:19'),
(522, 524, 27, 1, '2021-08-14 05:17:02', '2021-08-14 05:17:02'),
(523, 525, 29, 1, '2021-08-16 02:57:25', '2021-08-16 02:57:25'),
(524, 526, 29, 1, '2021-08-16 06:45:02', '2021-08-16 06:45:02'),
(525, 527, 29, 1, '2021-09-05 07:33:45', '2021-09-05 07:33:45'),
(526, 528, 29, 1, '2021-09-06 01:17:28', '2021-09-06 01:17:28'),
(527, 529, 29, 1, '2021-09-06 01:19:11', '2021-09-06 01:19:11'),
(528, 530, 29, 1, '2021-09-06 01:20:15', '2021-09-06 01:20:15'),
(529, 531, 29, 1, '2021-09-06 01:21:23', '2021-09-06 01:21:23'),
(530, 532, 29, 1, '2021-09-06 13:40:45', '2021-09-06 13:40:45'),
(532, 534, 29, 1, '2021-09-21 01:09:32', '2021-09-21 01:09:32'),
(533, 535, 29, 1, '2021-09-21 01:20:51', '2021-09-21 01:20:51'),
(534, 536, 29, 1, '2021-09-21 01:31:04', '2021-09-21 01:31:04'),
(535, 537, 29, 1, '2021-09-21 02:00:53', '2021-09-21 02:00:53'),
(536, 538, 29, 1, '2021-09-21 02:06:35', '2021-09-21 02:06:35'),
(537, 539, 29, 1, '2021-09-21 05:47:59', '2021-09-21 05:47:59'),
(538, 540, 29, 1, '2021-09-21 06:09:40', '2021-09-21 06:09:40'),
(541, 543, 29, 1, '2021-09-22 02:56:49', '2021-09-22 02:56:49'),
(542, 544, 29, 1, '2021-09-22 03:02:56', '2021-09-22 03:02:56'),
(543, 545, 29, 1, '2021-09-22 03:07:41', '2021-09-22 03:07:41'),
(544, 547, 29, 1, '2021-09-22 03:24:17', '2021-09-22 03:24:17'),
(545, 548, 29, 1, '2021-09-22 03:30:16', '2021-09-22 03:30:16'),
(546, 549, 29, 1, '2021-09-22 03:34:42', '2021-09-22 03:34:42'),
(547, 550, 29, 1, '2021-09-22 03:56:06', '2021-09-22 03:56:06'),
(548, 551, 29, 1, '2021-09-22 04:52:22', '2021-09-22 04:52:22'),
(549, 552, 29, 1, '2021-09-22 10:04:17', '2021-09-22 10:04:17'),
(550, 553, 29, 1, '2021-09-22 10:06:57', '2021-09-22 10:06:57'),
(551, 554, 29, 1, '2021-09-22 10:12:12', '2021-09-22 10:12:12'),
(554, 557, 29, 1, '2021-09-22 11:57:29', '2021-09-22 11:57:29'),
(555, 558, 29, 1, '2021-09-22 12:01:41', '2021-09-22 12:01:41'),
(558, 561, 29, 1, '2021-09-22 12:14:22', '2021-09-22 12:14:22'),
(559, 562, 29, 1, '2021-09-22 12:16:08', '2021-09-22 12:16:08'),
(563, 566, 29, 1, '2021-09-22 12:37:04', '2021-09-22 12:37:04'),
(564, 567, 29, 1, '2021-09-22 12:52:38', '2021-09-22 12:52:38'),
(565, 568, 29, 1, '2021-09-22 13:57:10', '2021-09-22 13:57:10'),
(566, 569, 29, 1, '2021-09-22 14:04:05', '2021-09-22 14:04:05'),
(567, 570, 29, 1, '2021-09-22 14:35:53', '2021-09-22 14:35:53'),
(568, 571, 29, 1, '2021-09-22 14:38:40', '2021-09-22 14:38:40'),
(569, 572, 29, 1, '2021-09-23 03:48:41', '2021-09-23 03:48:41'),
(570, 573, 29, 1, '2021-09-24 21:37:56', '2021-09-24 21:37:56'),
(571, 574, 29, 1, '2021-10-04 03:26:47', '2021-10-04 03:26:47'),
(572, 575, 29, 1, '2021-10-04 04:03:03', '2021-10-04 04:03:03'),
(573, 576, 29, 1, '2021-10-04 04:10:34', '2021-10-04 04:10:34'),
(574, 577, 29, 1, '2021-10-04 05:43:59', '2021-10-04 05:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `user_group_permissions`
--

CREATE TABLE `user_group_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) NOT NULL DEFAULT 0,
  `action_id` bigint(20) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1:active,0:in-active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_group_permissions`
--

INSERT INTO `user_group_permissions` (`id`, `group_id`, `action_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, NULL),
(2, 1, 2, 1, NULL, NULL),
(3, 1, 3, 1, NULL, NULL),
(4, 1, 4, 1, NULL, NULL),
(5, 1, 5, 1, NULL, NULL),
(6, 1, 6, 1, NULL, NULL),
(7, 1, 7, 1, NULL, NULL),
(8, 1, 8, 1, NULL, NULL),
(9, 1, 9, 1, NULL, NULL),
(10, 1, 10, 1, NULL, NULL),
(11, 1, 11, 1, NULL, NULL),
(12, 1, 12, 1, '2020-04-09 08:26:07', '2020-04-09 08:26:07'),
(15, 1, 15, 1, '2020-04-09 18:50:37', '2020-04-09 18:50:37'),
(16, 1, 16, 1, '2020-04-10 04:54:39', '2020-04-10 04:54:39'),
(17, 1, 17, 1, '2020-04-10 04:55:22', '2020-04-10 04:55:22'),
(18, 1, 18, 1, '2020-04-10 04:55:36', '2020-04-10 04:55:36'),
(19, 1, 19, 1, '2020-04-10 04:56:36', '2020-04-10 04:56:36'),
(20, 1, 20, 1, '2020-04-10 05:26:19', '2020-04-10 05:26:19'),
(39, 27, 1, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(40, 27, 2, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(41, 27, 3, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(42, 27, 4, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(43, 27, 5, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(44, 27, 6, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(45, 27, 7, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(46, 27, 8, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(47, 27, 9, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(48, 27, 10, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(49, 27, 11, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(50, 27, 12, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(51, 27, 15, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(52, 27, 16, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(53, 27, 17, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(54, 27, 18, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(55, 27, 19, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(56, 27, 20, 0, '2020-04-12 23:59:15', '2020-04-12 23:59:15'),
(331, 1, 93, 1, '2021-07-18 23:40:08', '2021-07-18 23:40:08'),
(332, 2, 93, 0, '2021-07-18 23:40:08', '2021-07-18 23:40:08'),
(333, 27, 93, 0, '2021-07-18 23:40:08', '2021-07-18 23:40:08'),
(334, 29, 93, 0, '2021-07-18 23:40:08', '2021-07-18 23:40:08'),
(335, 1, 94, 1, '2021-07-18 23:41:54', '2021-07-18 23:41:54'),
(336, 2, 94, 0, '2021-07-18 23:41:54', '2021-07-18 23:41:54'),
(337, 27, 94, 0, '2021-07-18 23:41:54', '2021-07-18 23:41:54'),
(338, 29, 94, 0, '2021-07-18 23:41:54', '2021-07-18 23:41:54'),
(339, 1, 95, 1, '2021-07-18 23:42:12', '2021-07-18 23:42:12'),
(340, 2, 95, 0, '2021-07-18 23:42:12', '2021-07-18 23:42:12'),
(341, 27, 95, 0, '2021-07-18 23:42:12', '2021-07-18 23:42:12'),
(342, 29, 95, 0, '2021-07-18 23:42:12', '2021-07-18 23:42:12'),
(343, 1, 96, 1, '2021-07-19 01:32:44', '2021-07-19 01:32:44'),
(344, 2, 96, 0, '2021-07-19 01:32:44', '2021-07-19 01:32:44'),
(345, 27, 96, 0, '2021-07-19 01:32:44', '2021-07-19 01:32:44'),
(346, 29, 96, 0, '2021-07-19 01:32:44', '2021-07-19 01:32:44'),
(355, 1, 99, 1, '2021-07-24 19:08:05', '2021-07-24 19:08:05'),
(356, 2, 99, 1, '2021-07-24 19:08:05', '2021-07-24 19:08:05'),
(357, 27, 99, 0, '2021-07-24 19:08:05', '2021-07-24 19:08:05'),
(358, 29, 99, 0, '2021-07-24 19:08:05', '2021-07-24 19:08:05'),
(359, 1, 100, 1, '2021-07-25 11:59:14', '2021-07-25 11:59:14'),
(360, 2, 100, 1, '2021-07-25 11:59:14', '2021-07-25 11:59:14'),
(361, 27, 100, 0, '2021-07-25 11:59:14', '2021-07-25 11:59:14'),
(362, 29, 100, 0, '2021-07-25 11:59:14', '2021-07-25 11:59:14'),
(363, 1, 101, 1, '2021-07-25 12:00:11', '2021-07-25 12:00:11'),
(364, 2, 101, 1, '2021-07-25 12:00:11', '2021-07-25 12:00:11'),
(365, 27, 101, 0, '2021-07-25 12:00:11', '2021-07-25 12:00:11'),
(366, 29, 101, 0, '2021-07-25 12:00:11', '2021-07-25 12:00:11'),
(367, 1, 102, 1, '2021-07-25 12:00:38', '2021-07-25 12:00:38'),
(368, 2, 102, 1, '2021-07-25 12:00:38', '2021-07-25 12:00:38'),
(369, 27, 102, 0, '2021-07-25 12:00:38', '2021-07-25 12:00:38'),
(370, 29, 102, 0, '2021-07-25 12:00:38', '2021-07-25 12:00:38'),
(371, 1, 103, 1, '2021-08-01 01:04:23', '2021-08-01 01:04:23'),
(372, 2, 103, 1, '2021-08-01 01:04:23', '2021-08-01 01:04:23'),
(373, 27, 103, 1, '2021-08-01 01:04:23', '2021-08-01 01:04:23'),
(374, 29, 103, 0, '2021-08-01 01:04:23', '2021-08-01 01:04:23'),
(375, 1, 104, 1, '2021-08-01 01:05:16', '2021-08-01 01:05:16'),
(376, 2, 104, 1, '2021-08-01 01:05:16', '2021-08-01 01:05:16'),
(377, 27, 104, 0, '2021-08-01 01:05:16', '2021-08-01 01:05:16'),
(378, 29, 104, 0, '2021-08-01 01:05:16', '2021-08-01 01:05:16'),
(379, 1, 105, 1, '2021-08-01 01:05:38', '2021-08-01 01:05:38'),
(380, 2, 105, 1, '2021-08-01 01:05:38', '2021-08-01 01:05:38'),
(381, 27, 105, 0, '2021-08-01 01:05:38', '2021-08-01 01:05:38'),
(382, 29, 105, 0, '2021-08-01 01:05:38', '2021-08-01 01:05:38'),
(383, 1, 106, 1, '2021-08-01 01:05:55', '2021-08-01 01:05:55'),
(384, 2, 106, 1, '2021-08-01 01:05:55', '2021-08-01 01:05:55'),
(385, 27, 106, 0, '2021-08-01 01:05:55', '2021-08-01 01:05:55'),
(386, 29, 106, 0, '2021-08-01 01:05:55', '2021-08-01 01:05:55'),
(387, 1, 107, 1, '2021-08-01 01:08:13', '2021-08-01 01:08:13'),
(388, 2, 107, 1, '2021-08-01 01:08:13', '2021-08-01 01:08:13'),
(389, 27, 107, 0, '2021-08-01 01:08:13', '2021-08-01 01:08:13'),
(390, 29, 107, 0, '2021-08-01 01:08:13', '2021-08-01 01:08:13'),
(391, 1, 108, 1, '2021-08-01 01:08:38', '2021-08-01 01:08:38'),
(392, 2, 108, 1, '2021-08-01 01:08:38', '2021-08-01 01:08:38'),
(393, 27, 108, 0, '2021-08-01 01:08:38', '2021-08-01 01:08:38'),
(394, 29, 108, 0, '2021-08-01 01:08:38', '2021-08-01 01:08:38'),
(395, 1, 109, 1, '2021-08-01 01:09:23', '2021-08-01 01:09:23'),
(396, 2, 109, 1, '2021-08-01 01:09:23', '2021-08-01 01:09:23'),
(397, 27, 109, 0, '2021-08-01 01:09:23', '2021-08-01 01:09:23'),
(398, 29, 109, 0, '2021-08-01 01:09:23', '2021-08-01 01:09:23'),
(399, 1, 110, 1, '2021-08-01 01:09:40', '2021-08-01 01:09:40'),
(400, 2, 110, 1, '2021-08-01 01:09:40', '2021-08-01 01:09:40'),
(401, 27, 110, 0, '2021-08-01 01:09:40', '2021-08-01 01:09:40'),
(402, 29, 110, 0, '2021-08-01 01:09:40', '2021-08-01 01:09:40'),
(403, 1, 111, 1, '2021-08-08 05:10:58', '2021-08-08 05:10:58'),
(404, 2, 111, 1, '2021-08-08 05:10:58', '2021-08-08 05:10:58'),
(405, 27, 111, 1, '2021-08-08 05:10:58', '2021-08-08 05:10:58'),
(406, 29, 111, 0, '2021-08-08 05:10:58', '2021-08-08 05:10:58'),
(407, 1, 112, 1, '2021-08-09 02:01:51', '2021-08-09 02:01:51'),
(408, 2, 112, 1, '2021-08-09 02:01:51', '2021-08-09 02:01:51'),
(409, 27, 112, 1, '2021-08-09 02:01:51', '2021-08-09 02:01:51'),
(410, 29, 112, 0, '2021-08-09 02:01:51', '2021-08-09 02:01:51'),
(411, 1, 113, 1, '2021-08-09 02:06:23', '2021-08-09 02:06:23'),
(412, 2, 113, 1, '2021-08-09 02:06:23', '2021-08-09 02:06:23'),
(413, 27, 113, 0, '2021-08-09 02:06:23', '2021-08-09 02:06:23'),
(414, 29, 113, 0, '2021-08-09 02:06:23', '2021-08-09 02:06:23'),
(415, 1, 114, 1, '2021-08-09 02:06:55', '2021-08-09 02:06:55'),
(416, 2, 114, 1, '2021-08-09 02:06:55', '2021-08-09 02:06:55'),
(417, 27, 114, 0, '2021-08-09 02:06:55', '2021-08-09 02:06:55'),
(418, 29, 114, 0, '2021-08-09 02:06:55', '2021-08-09 02:06:55'),
(419, 1, 115, 1, '2021-08-09 02:07:12', '2021-08-09 02:07:12'),
(420, 2, 115, 1, '2021-08-09 02:07:12', '2021-08-09 02:07:12'),
(421, 27, 115, 0, '2021-08-09 02:07:12', '2021-08-09 02:07:12'),
(422, 29, 115, 0, '2021-08-09 02:07:12', '2021-08-09 02:07:12'),
(423, 1, 116, 1, '2021-08-11 16:00:16', '2021-08-11 16:00:16'),
(424, 2, 116, 1, '2021-08-11 16:00:16', '2021-08-11 16:00:16'),
(425, 27, 116, 0, '2021-08-11 16:00:16', '2021-08-11 16:00:16'),
(426, 29, 116, 0, '2021-08-11 16:00:16', '2021-08-11 16:00:16'),
(427, 1, 117, 1, '2021-08-11 16:00:50', '2021-08-11 16:00:50'),
(428, 2, 117, 1, '2021-08-11 16:00:50', '2021-08-11 16:00:50'),
(429, 27, 117, 0, '2021-08-11 16:00:50', '2021-08-11 16:00:50'),
(430, 29, 117, 0, '2021-08-11 16:00:50', '2021-08-11 16:00:50'),
(431, 1, 118, 1, '2021-08-11 16:01:22', '2021-08-11 16:01:22'),
(432, 2, 118, 1, '2021-08-11 16:01:22', '2021-08-11 16:01:22'),
(433, 27, 118, 0, '2021-08-11 16:01:22', '2021-08-11 16:01:22'),
(434, 29, 118, 0, '2021-08-11 16:01:22', '2021-08-11 16:01:22'),
(435, 1, 119, 1, '2021-08-25 04:00:11', '2021-08-25 04:00:11'),
(436, 2, 119, 1, '2021-08-25 04:00:11', '2021-08-25 04:00:11'),
(437, 27, 119, 0, '2021-08-25 04:00:11', '2021-08-25 04:00:11'),
(438, 29, 119, 0, '2021-08-25 04:00:11', '2021-08-25 04:00:11'),
(439, 1, 120, 1, '2021-08-25 04:00:59', '2021-08-25 04:00:59'),
(440, 2, 120, 1, '2021-08-25 04:00:59', '2021-08-25 04:00:59'),
(441, 27, 120, 0, '2021-08-25 04:00:59', '2021-08-25 04:00:59'),
(442, 29, 120, 0, '2021-08-25 04:00:59', '2021-08-25 04:00:59'),
(443, 1, 121, 1, '2021-08-25 04:01:19', '2021-08-25 04:01:19'),
(444, 2, 121, 1, '2021-08-25 04:01:19', '2021-08-25 04:01:19'),
(445, 27, 121, 0, '2021-08-25 04:01:19', '2021-08-25 04:01:19'),
(446, 29, 121, 0, '2021-08-25 04:01:19', '2021-08-25 04:01:19'),
(447, 1, 122, 1, '2021-08-25 04:01:31', '2021-08-25 04:01:31'),
(448, 2, 122, 1, '2021-08-25 04:01:31', '2021-08-25 04:01:31'),
(449, 27, 122, 0, '2021-08-25 04:01:31', '2021-08-25 04:01:31'),
(450, 29, 122, 0, '2021-08-25 04:01:31', '2021-08-25 04:01:31'),
(451, 1, 123, 1, '2021-08-25 04:04:49', '2021-08-25 04:04:49'),
(452, 2, 123, 1, '2021-08-25 04:04:49', '2021-08-25 04:04:49'),
(453, 27, 123, 0, '2021-08-25 04:04:49', '2021-08-25 04:04:49'),
(454, 29, 123, 0, '2021-08-25 04:04:49', '2021-08-25 04:04:49'),
(455, 1, 124, 1, '2021-08-25 04:05:19', '2021-08-25 04:05:19'),
(456, 2, 124, 1, '2021-08-25 04:05:19', '2021-08-25 04:05:19'),
(457, 27, 124, 0, '2021-08-25 04:05:19', '2021-08-25 04:05:19'),
(458, 29, 124, 0, '2021-08-25 04:05:19', '2021-08-25 04:05:19'),
(459, 1, 125, 1, '2021-08-25 04:05:50', '2021-08-25 04:05:50'),
(460, 2, 125, 1, '2021-08-25 04:05:50', '2021-08-25 04:05:50'),
(461, 27, 125, 0, '2021-08-25 04:05:50', '2021-08-25 04:05:50'),
(462, 29, 125, 0, '2021-08-25 04:05:50', '2021-08-25 04:05:50'),
(463, 1, 126, 1, '2021-08-25 04:06:22', '2021-08-25 04:06:22'),
(464, 2, 126, 1, '2021-08-25 04:06:22', '2021-08-25 04:06:22'),
(465, 27, 126, 0, '2021-08-25 04:06:22', '2021-08-25 04:06:22'),
(466, 29, 126, 0, '2021-08-25 04:06:22', '2021-08-25 04:06:22'),
(467, 1, 127, 1, '2021-08-25 04:06:51', '2021-08-25 04:06:51'),
(468, 2, 127, 1, '2021-08-25 04:06:51', '2021-08-25 04:06:51'),
(469, 27, 127, 0, '2021-08-25 04:06:51', '2021-08-25 04:06:51'),
(470, 29, 127, 0, '2021-08-25 04:06:51', '2021-08-25 04:06:51'),
(471, 1, 128, 1, '2021-08-25 04:07:07', '2021-08-25 04:07:07'),
(472, 2, 128, 1, '2021-08-25 04:07:07', '2021-08-25 04:07:07'),
(473, 27, 128, 0, '2021-08-25 04:07:07', '2021-08-25 04:07:07'),
(474, 29, 128, 0, '2021-08-25 04:07:07', '2021-08-25 04:07:07'),
(475, 1, 129, 1, '2021-08-25 04:07:19', '2021-08-25 04:07:19'),
(476, 2, 129, 1, '2021-08-25 04:07:19', '2021-08-25 04:07:19'),
(477, 27, 129, 0, '2021-08-25 04:07:19', '2021-08-25 04:07:19'),
(478, 29, 129, 0, '2021-08-25 04:07:19', '2021-08-25 04:07:19'),
(479, 1, 130, 1, '2021-08-25 04:07:32', '2021-08-25 04:07:32'),
(480, 2, 130, 1, '2021-08-25 04:07:32', '2021-08-25 04:07:32'),
(481, 27, 130, 0, '2021-08-25 04:07:32', '2021-08-25 04:07:32'),
(482, 29, 130, 0, '2021-08-25 04:07:32', '2021-08-25 04:07:32'),
(483, 1, 131, 1, '2021-08-26 01:57:22', '2021-08-26 01:57:22'),
(484, 2, 131, 1, '2021-08-26 01:57:22', '2021-08-26 01:57:22'),
(485, 27, 131, 0, '2021-08-26 01:57:22', '2021-08-26 01:57:22'),
(486, 29, 131, 0, '2021-08-26 01:57:22', '2021-08-26 01:57:22'),
(487, 1, 132, 1, '2021-08-26 07:01:51', '2021-08-26 07:01:51'),
(488, 2, 132, 1, '2021-08-26 07:01:51', '2021-08-26 07:01:51'),
(489, 27, 132, 0, '2021-08-26 07:01:51', '2021-08-26 07:01:51'),
(490, 29, 132, 0, '2021-08-26 07:01:51', '2021-08-26 07:01:51'),
(491, 1, 133, 1, '2021-08-26 07:02:02', '2021-08-26 07:02:02'),
(492, 2, 133, 1, '2021-08-26 07:02:02', '2021-08-26 07:02:02'),
(493, 27, 133, 0, '2021-08-26 07:02:02', '2021-08-26 07:02:02'),
(494, 29, 133, 0, '2021-08-26 07:02:02', '2021-08-26 07:02:02'),
(495, 1, 134, 1, '2021-08-26 07:02:15', '2021-08-26 07:02:15'),
(496, 2, 134, 1, '2021-08-26 07:02:15', '2021-08-26 07:02:15'),
(497, 27, 134, 0, '2021-08-26 07:02:15', '2021-08-26 07:02:15'),
(498, 29, 134, 0, '2021-08-26 07:02:15', '2021-08-26 07:02:15'),
(499, 1, 135, 1, '2021-09-06 15:13:40', '2021-09-06 15:13:40'),
(500, 2, 135, 0, '2021-09-06 15:13:40', '2021-09-06 15:13:40'),
(501, 27, 135, 0, '2021-09-06 15:13:40', '2021-09-06 15:13:40'),
(502, 29, 135, 0, '2021-09-06 15:13:40', '2021-09-06 15:13:40'),
(503, 1, 136, 1, '2021-09-06 15:14:04', '2021-09-06 15:14:04'),
(504, 2, 136, 0, '2021-09-06 15:14:04', '2021-09-06 15:14:04'),
(505, 27, 136, 0, '2021-09-06 15:14:04', '2021-09-06 15:14:04'),
(506, 29, 136, 0, '2021-09-06 15:14:04', '2021-09-06 15:14:04'),
(507, 1, 137, 1, '2021-09-06 15:14:17', '2021-09-06 15:14:17'),
(508, 2, 137, 0, '2021-09-06 15:14:17', '2021-09-06 15:14:17'),
(509, 27, 137, 0, '2021-09-06 15:14:17', '2021-09-06 15:14:17'),
(510, 29, 137, 0, '2021-09-06 15:14:17', '2021-09-06 15:14:17'),
(511, 1, 138, 1, '2021-09-06 15:14:30', '2021-09-06 15:14:30'),
(512, 2, 138, 0, '2021-09-06 15:14:30', '2021-09-06 15:14:30'),
(513, 27, 138, 0, '2021-09-06 15:14:30', '2021-09-06 15:14:30'),
(514, 29, 138, 0, '2021-09-06 15:14:30', '2021-09-06 15:14:30'),
(515, 1, 139, 1, '2021-09-08 23:40:28', '2021-09-08 23:40:28'),
(516, 2, 139, 1, '2021-09-08 23:40:28', '2021-09-08 23:40:28'),
(517, 27, 139, 0, '2021-09-08 23:40:28', '2021-09-08 23:40:28'),
(518, 29, 139, 0, '2021-09-08 23:40:28', '2021-09-08 23:40:28'),
(519, 1, 140, 1, '2021-09-09 00:09:36', '2021-09-09 00:09:36'),
(520, 2, 140, 1, '2021-09-09 00:09:36', '2021-09-09 00:09:36'),
(521, 27, 140, 0, '2021-09-09 00:09:36', '2021-09-09 00:09:36'),
(522, 29, 140, 0, '2021-09-09 00:09:36', '2021-09-09 00:09:36'),
(523, 1, 141, 1, '2021-09-09 00:10:44', '2021-09-09 00:10:44'),
(524, 2, 141, 1, '2021-09-09 00:10:44', '2021-09-09 00:10:44'),
(525, 27, 141, 0, '2021-09-09 00:10:44', '2021-09-09 00:10:44'),
(526, 29, 141, 0, '2021-09-09 00:10:44', '2021-09-09 00:10:44'),
(527, 1, 142, 1, '2021-09-09 00:11:07', '2021-09-09 00:11:07'),
(528, 2, 142, 1, '2021-09-09 00:11:07', '2021-09-09 00:11:07'),
(529, 27, 142, 0, '2021-09-09 00:11:07', '2021-09-09 00:11:07'),
(530, 29, 142, 0, '2021-09-09 00:11:07', '2021-09-09 00:11:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_actions_menus` (`module_id`),
  ADD KEY `FK_actions_menus_2` (`is_menu`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_quizzes`
--
ALTER TABLE `assignment_quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_students`
--
ALTER TABLE `assignment_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_subjects`
--
ALTER TABLE `class_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `key_stages`
--
ALTER TABLE `key_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_attachments`
--
ALTER TABLE `message_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_masters`
--
ALTER TABLE `message_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_categories`
--
ALTER TABLE `notice_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_answer_options`
--
ALTER TABLE `quiz_answer_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_students`
--
ALTER TABLE `quiz_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_subjects`
--
ALTER TABLE `student_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_teacher_subjects_class_subjects` (`class_subject_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topics_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group_members`
--
ALTER TABLE `user_group_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_user_group_members_users` (`user_id`),
  ADD KEY `FK_user_group_members_user_groups` (`group_id`);

--
-- Indexes for table `user_group_permissions`
--
ALTER TABLE `user_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_user_group_permissions_user_groups` (`group_id`),
  ADD KEY `FK_user_group_permissions_actions` (`action_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `assignment_quizzes`
--
ALTER TABLE `assignment_quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `assignment_students`
--
ALTER TABLE `assignment_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `class_subjects`
--
ALTER TABLE `class_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `key_stages`
--
ALTER TABLE `key_stages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `message_attachments`
--
ALTER TABLE `message_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message_masters`
--
ALTER TABLE `message_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notice_categories`
--
ALTER TABLE `notice_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=662;

--
-- AUTO_INCREMENT for table `quiz_answer_options`
--
ALTER TABLE `quiz_answer_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=890;

--
-- AUTO_INCREMENT for table `quiz_students`
--
ALTER TABLE `quiz_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `student_subjects`
--
ALTER TABLE `student_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=578;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_group_members`
--
ALTER TABLE `user_group_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=575;

--
-- AUTO_INCREMENT for table `user_group_permissions`
--
ALTER TABLE `user_group_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=531;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actions`
--
ALTER TABLE `actions`
  ADD CONSTRAINT `FK_actions_menus` FOREIGN KEY (`module_id`) REFERENCES `menus` (`id`),
  ADD CONSTRAINT `FK_actions_menus_2` FOREIGN KEY (`is_menu`) REFERENCES `menus` (`id`);

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `user_group_members`
--
ALTER TABLE `user_group_members`
  ADD CONSTRAINT `FK_user_group_members_user_groups` FOREIGN KEY (`group_id`) REFERENCES `user_groups` (`id`),
  ADD CONSTRAINT `FK_user_group_members_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_group_permissions`
--
ALTER TABLE `user_group_permissions`
  ADD CONSTRAINT `FK_user_group_permissions_actions` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`),
  ADD CONSTRAINT `FK_user_group_permissions_user_groups` FOREIGN KEY (`group_id`) REFERENCES `user_groups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
