-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 01:31 PM
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
(142, 'Assignment Delete', 52, NULL, 1, '2021-09-09 00:11:07', '2021-09-09 00:11:07'),
(143, 'assignment-quiz-details-view', 54, NULL, 1, '2021-11-08 00:45:15', '2021-11-08 00:45:15'),
(144, 'Key Stage Wise Subject Management', 55, 56, 1, '2021-11-21 21:55:53', '2021-11-21 21:55:53'),
(145, 'Subject Wise Quiz Management', 55, 57, 1, '2021-11-21 22:00:07', '2021-11-21 22:00:07'),
(146, 'Quiz Wise Attend Details Management', 55, 58, 1, '2021-11-21 22:00:36', '2021-11-21 22:00:36'),
(147, 'Quiz and Student Wise Details Management', 55, 59, 1, '2021-11-21 22:01:15', '2021-11-21 22:01:15'),
(148, 'Student Usages Management', 55, 60, 1, '2021-11-30 01:00:47', '2021-11-30 01:00:47'),
(149, 'Student Subject Report Management', 55, 61, 1, '2021-11-30 06:40:48', '2021-11-30 06:42:05'),
(150, 'Assignments Report Management', 55, 62, 1, '2021-12-01 01:22:13', '2021-12-01 01:22:13'),
(151, 'Assignments Attempts Management', 55, 63, 1, '2021-12-01 05:20:53', '2021-12-01 05:20:53'),
(152, 'Assignments Matrix Management', 55, 64, 1, '2021-12-01 22:45:37', '2021-12-01 22:45:37'),
(153, 'Assignment Students Details', 55, 65, 1, '2021-12-02 01:20:52', '2021-12-02 01:20:52'),
(154, 'Report 7 Days Management', 55, 66, 1, '2021-12-05 23:45:43', '2021-12-05 23:45:43'),
(155, 'Monthly Report Management', 55, 67, 1, '2021-12-05 23:46:55', '2021-12-05 23:46:55'),
(156, 'Report Dashboard Management', 68, 68, 1, '2021-12-06 23:28:09', '2021-12-23 00:20:09'),
(157, 'School Overview Management', 70, 70, 1, '2021-12-08 01:22:53', '2021-12-08 01:22:53'),
(158, 'Top Student Report Management', 55, 71, 1, '2021-12-08 22:21:50', '2021-12-08 22:21:50'),
(159, 'Send Message Management', 48, 72, 1, '2021-12-14 22:15:56', '2021-12-14 22:15:56'),
(160, 'Send Message Entry', 48, NULL, 1, '2021-12-14 22:17:11', '2021-12-14 22:17:11'),
(161, 'Send Message Update', 48, NULL, 1, '2021-12-14 22:17:25', '2021-12-14 22:17:25'),
(162, 'Send Message Delete', 48, NULL, 1, '2021-12-14 22:17:38', '2021-12-14 22:17:38'),
(163, 'Department Management', 42, 73, 1, '2021-12-21 22:56:00', '2021-12-21 22:56:00'),
(164, 'Department Entry', 42, NULL, 1, '2021-12-21 22:57:11', '2021-12-21 22:57:11'),
(165, 'Department Update', 42, NULL, 1, '2021-12-21 22:57:37', '2021-12-21 22:57:37'),
(166, 'Department Delete', 42, NULL, 1, '2021-12-21 22:57:55', '2021-12-21 22:57:55');

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
  `school_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `title`, `available_from`, `deadline`, `quiz_time_limit`, `question_time_limit`, `multiple_attampt`, `school_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'js-assingment- 01', '2020-08-04 00:00:00', '2021-12-31 00:00:00', '00:00:22', '00:00:55', 'Yes', '196', 'Active', '2021-12-26 01:31:32', '2021-12-26 01:31:32'),
(2, 'js-assingment- 02', '2021-12-17 00:00:00', '2021-12-31 00:00:00', '00:00:10', '00:00:59', 'Yes', '196', 'Active', '2021-12-26 01:32:44', '2021-12-26 01:32:44'),
(3, 'Js-Assignment-03', '2021-09-07 00:00:00', '2021-12-30 00:00:00', '00:00:01', '00:00:58', 'Yes', '196', 'Active', '2021-12-26 01:33:45', '2021-12-26 01:33:45');

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
(1, 3, 1, '2021-12-26 01:31:32', '2021-12-26 01:31:32'),
(2, 6, 1, '2021-12-26 01:31:32', '2021-12-26 01:31:32'),
(3, 5, 2, '2021-12-26 01:32:44', '2021-12-26 01:32:44'),
(4, 7, 2, '2021-12-26 01:32:44', '2021-12-26 01:32:44'),
(5, 8, 2, '2021-12-26 01:32:44', '2021-12-26 01:32:44'),
(6, 1, 3, '2021-12-26 01:33:45', '2021-12-26 01:33:45'),
(7, 4, 3, '2021-12-26 01:33:45', '2021-12-26 01:33:45');

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
(1, 94, 1, '2021-12-26 01:31:32', '2021-12-26 01:31:32'),
(2, 96, 1, '2021-12-26 01:31:32', '2021-12-26 01:31:32'),
(3, 93, 2, '2021-12-26 01:32:44', '2021-12-26 01:32:44'),
(4, 95, 2, '2021-12-26 01:32:44', '2021-12-26 01:32:44'),
(5, 92, 3, '2021-12-26 01:33:45', '2021-12-26 01:33:45');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `details`, `key_stage_id`, `status`, `created_at`, `updated_at`, `color`, `created_by`) VALUES
(1, 'Nursery Class', '(3 to 4 Years old)', 1, 'Active', NULL, NULL, '#3f6ad8 ', 0),
(2, 'Reception Class', '(4 to 5 years old)', 1, 'Active', NULL, NULL, '#f7b924', 0),
(3, 'Year 1', '(5 to 6 years old)', 2, 'Active', NULL, NULL, '#3ac47d', 0),
(4, 'Year 2', '(6 to 7 years old)', 2, 'Active', NULL, NULL, '#444054', 0),
(5, 'Year 3', '(7 to 8 years old)', 3, 'Active', NULL, NULL, '#d92550', 0),
(6, 'Year 4', '(8 to 9 years old)', 3, 'Active', NULL, NULL, '#16aaff', 0),
(7, 'Year 5', '(9 to 10 years old)', 3, 'Active', NULL, NULL, '#794c8a', 0),
(8, 'Year 6', '(10 to 11 years old)', 3, 'Active', NULL, NULL, '#f093fb', 0),
(9, 'Year 7', '(11 to 12 years old)', 4, 'Active', NULL, NULL, '#990000', 0),
(10, 'Year 8', '(12 to 13 years old)', 4, 'Active', NULL, NULL, '#00ff00', 0),
(11, 'Year 9', '(13 to 14 years old)', 4, 'Active', NULL, NULL, '#660033', 0),
(12, 'Year 10', '(14 to 15 years old)', 5, 'Active', NULL, NULL, '#5f27cd', 0),
(13, 'Year 11', '(15 to 16 years old)', 5, 'Active', NULL, NULL, '#48dbfb', 0);

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
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `color`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(3, 'Math', '#ff0080', 'Active', '2021-12-22 00:14:25', '2021-12-25 23:28:54', 0),
(4, 'English', '#804040', 'Active', '2021-12-22 01:30:25', '2021-12-25 23:29:31', 0),
(5, 'Literature', '#8000ff', 'Active', '2021-12-25 23:29:14', '2021-12-25 23:29:59', 0);

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
(411, 'default', '{\"uuid\":\"5adec962-e4c7-4388-933d-74f2fca96e40\",\"displayName\":\"App\\\\Jobs\\\\quizAttachmentUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\quizAttachmentUploaderJob\",\"command\":\"O:34:\\\"App\\\\Jobs\\\\quizAttachmentUploaderJob\\\":10:{s:4:\\\"data\\\";s:21:\\\"1640579058home-03.png\\\";s:2:\\\"id\\\";i:9;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1640579058, 1640579058);

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
(43, 'Academic', 'Students', 'student', 42, 1, NULL, 1, '2021-08-01 01:01:37', '2021-08-02 23:14:56'),
(44, 'Academic', 'Teachers', 'teacher', 42, 2, NULL, 1, '2021-08-01 01:07:16', '2021-08-02 23:15:06'),
(45, 'Class', 'Class', '', 0, NULL, 'pe-7s-notebook', 1, '2021-08-08 04:32:32', '2021-08-08 04:33:37'),
(46, 'Academic', 'Classes', 'student-class', 42, 4, NULL, 1, '2021-08-08 05:10:16', '2021-08-14 03:18:59'),
(47, 'Academic', 'Subjects', 'subject', 42, 5, NULL, 1, '2021-08-09 02:00:34', '2021-08-14 03:19:06'),
(48, 'Message & Notification', 'Message & Notification', '', 0, NULL, 'pe-7s-bell', 1, '2021-08-25 03:53:04', '2021-08-25 03:53:04'),
(49, 'Message & Notification', 'Notice', 'notice', 48, NULL, NULL, 1, '2021-08-25 03:56:24', '2021-08-25 03:56:24'),
(50, 'Settings', 'Notice Category', 'setting/admin/notice-category', 11, NULL, NULL, 1, '2021-08-25 03:57:19', '2021-08-25 03:57:19'),
(51, 'Message & Notification', 'Message', 'message', 48, NULL, NULL, 1, '2021-08-25 03:57:46', '2021-08-25 03:57:46'),
(52, 'Quizes', 'Quizes', '', 0, NULL, 'pe-7s-note2', 1, '2021-08-26 01:48:17', '2021-08-26 01:57:39'),
(53, 'Quizes', 'Quizes', 'quiz', 52, 1, NULL, 1, '2021-08-26 01:52:13', '2021-08-26 01:52:13'),
(54, 'Assignment List', 'Assignments', 'assignment', 52, 2, NULL, 1, '2021-09-08 23:38:44', '2021-09-08 23:38:44'),
(55, 'Report', 'Report', '', 0, NULL, 'pe-7s-note2', 1, '2021-11-21 21:50:33', '2021-11-21 21:50:33'),
(56, 'Subject Report', 'Subject Report', 'subject-report', 55, 3, 'pe-7s-note2', 1, '2021-11-21 21:52:58', '2021-11-22 04:51:52'),
(57, 'Quiz Report', 'Quiz Report', 'quiz-report', 55, 4, NULL, 1, '2021-11-21 21:57:39', '2021-11-22 05:50:16'),
(58, 'Quiz Wise Attend Details', 'Quiz Wise Attend Details', 'quiz-wise-attend-details', 55, 5, NULL, 1, '2021-11-21 21:58:40', '2021-11-21 21:58:40'),
(59, 'Quiz and Student Wise Details', 'Quiz and Student Wise Details', 'quiz-and-student-wise-details', 55, 6, NULL, 1, '2021-11-21 21:59:33', '2021-11-21 21:59:33'),
(60, 'Student Usage', 'Student Usage', 'student-usage', 55, 1, NULL, 1, '2021-11-30 00:59:15', '2021-11-30 00:59:15'),
(61, 'Student Wise Subject Report', 'Student Wise Subject Report', 'student-subject-report', 55, 2, NULL, 1, '2021-11-30 06:40:06', '2021-11-30 06:40:06'),
(62, 'Assignment Report', 'Assignment Report', 'assignments-report', 55, 7, NULL, 1, '2021-12-01 01:21:22', '2021-12-01 04:38:18'),
(63, 'Assignments Attempts', 'Assignments Attempts', 'assignments-attempts-report', 55, 8, NULL, 1, '2021-12-01 05:20:10', '2021-12-01 05:20:10'),
(64, 'Assignments Matrix', 'Assignments Matrix', 'assignments-matrix-report', 55, 9, NULL, 1, '2021-12-01 22:44:51', '2021-12-01 22:44:51'),
(65, 'Assignment Student Details', 'Assignment Student Details', 'assignments-students-details-report', 55, 10, NULL, 1, '2021-12-02 01:20:15', '2021-12-02 01:20:15'),
(66, 'Report 7 Days', 'Report 7 Days', 'report-week-days', 55, 11, NULL, 1, '2021-12-05 23:44:30', '2021-12-05 23:44:30'),
(67, 'Monthly Report', 'Monthly Report', 'monthly-report', 55, 12, NULL, 1, '2021-12-05 23:46:16', '2021-12-05 23:46:16'),
(68, 'Reports', 'Reports', 'report', 0, NULL, 'pe-7s-note2', 1, '2021-12-06 23:26:44', '2021-12-28 06:24:37'),
(69, 'Report Dashboard Sub', 'Report Dashboard Sub', 'report', 68, NULL, NULL, 1, '2021-12-06 23:30:31', '2021-12-08 01:23:43'),
(70, 'School Overview', 'School Overview', 'school-overview', 0, NULL, 'pe-7s-note2', 1, '2021-12-08 01:15:04', '2021-12-08 01:23:50'),
(71, 'Top Student Report', 'Top Student Report', 'top-student-report', 55, 13, NULL, 1, '2021-12-08 22:20:58', '2021-12-08 22:20:58'),
(72, 'Message & Notification', 'Send Message', 'send-message', 48, NULL, NULL, 1, '2021-12-14 22:15:05', '2021-12-14 22:15:05'),
(73, 'Academic', 'Department', 'department', 42, 3, NULL, 1, '2021-12-21 22:54:13', '2021-12-21 22:54:13');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
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

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message_id`, `message`, `message_from`, `message_to`, `attachment`, `is_seen`, `status`, `created_at`, `updated_at`) VALUES
(11, NULL, 'Hello Admin', 566, 490, NULL, 1, 1, '2021-09-04 23:09:12', '2021-12-18 01:10:42'),
(12, NULL, NULL, 566, 490, 'Capture - Copy.PNG1631061357.PNG', 1, 1, '2021-09-07 18:35:57', '2021-12-18 01:10:42'),
(13, NULL, 'hello jahid', 566, 563, NULL, 0, 1, '2021-11-25 16:36:41', '2021-11-25 16:36:41'),
(14, NULL, 'simul', 566, 569, NULL, 1, 1, '2021-11-25 16:38:23', '2021-11-25 16:44:24'),
(15, NULL, 'Hi i am admin', 490, 566, NULL, 1, 1, '2021-11-25 16:42:11', '2021-11-29 18:17:08'),
(16, NULL, 'hello Mohammadpur Boys', 569, 490, NULL, 1, 1, '2021-11-25 16:50:22', '2021-12-18 01:10:42'),
(17, NULL, 'hello', 566, 490, NULL, 1, 1, '2021-11-29 18:15:18', '2021-12-18 01:10:42'),
(18, NULL, 'hello1', 566, 490, NULL, 1, 1, '2021-11-29 18:16:18', '2021-12-18 01:10:42'),
(19, NULL, 'hello3', 566, 490, NULL, 1, 1, '2021-11-29 18:17:37', '2021-12-18 01:10:42'),
(20, NULL, 'fasdf', 29, 492, 'icon-7-removebg-preview.png1639483965.png', 0, 1, '2021-12-14 06:12:45', '2021-12-14 06:12:45'),
(21, NULL, 'sdfsadf', 29, 1, NULL, 0, 1, '2021-12-14 22:26:25', '2021-12-14 22:26:25'),
(22, NULL, 'Hi', 29, 1, NULL, 0, 1, '2021-12-14 22:26:36', '2021-12-14 22:26:36'),
(23, NULL, 'asd', 29, 29, NULL, 1, 1, '2021-12-14 22:27:37', '2021-12-14 23:12:38'),
(24, NULL, 'hi', 490, 523, NULL, 1, 1, '2021-12-14 23:25:50', '2021-12-18 01:12:18'),
(25, NULL, 'hi', 577, 490, NULL, 1, 1, '2021-12-17 13:06:33', '2021-12-18 01:10:44'),
(26, NULL, 'do u Kno', 490, 577, NULL, 1, 1, '2021-12-17 13:07:25', '2021-12-17 13:07:56'),
(27, NULL, 'yes', 577, 490, NULL, 1, 1, '2021-12-17 13:08:01', '2021-12-18 01:10:44'),
(28, NULL, 'u r Rana', 523, 490, NULL, 1, 1, '2021-12-17 21:44:46', '2021-12-19 05:02:17'),
(29, NULL, 'yes', 490, 523, NULL, 1, 1, '2021-12-17 21:45:21', '2021-12-18 01:12:18'),
(30, NULL, 'Today I will Class Start?', 523, 490, NULL, 1, 1, '2021-12-17 21:46:45', '2021-12-19 05:02:17'),
(31, NULL, 'yes', 490, 523, NULL, 1, 1, '2021-12-17 21:46:57', '2021-12-18 01:12:18'),
(32, NULL, 'e', 523, 490, 'VISION.png1639800417.png', 1, 1, '2021-12-17 22:06:57', '2021-12-19 05:02:17'),
(33, NULL, 'hello', 490, 524, NULL, 0, 1, '2021-12-17 23:29:33', '2021-12-17 23:29:33'),
(34, NULL, 'todo', 523, 490, NULL, 1, 1, '2021-12-17 23:52:53', '2021-12-19 05:02:17'),
(35, NULL, 't', 523, 524, NULL, 0, 1, '2021-12-18 00:40:06', '2021-12-18 00:40:06'),
(36, NULL, 'hi', 490, 593, NULL, 0, 1, '2021-12-18 04:22:03', '2021-12-18 04:22:03'),
(37, NULL, 'to', 490, 593, NULL, 0, 1, '2021-12-18 04:25:01', '2021-12-18 04:25:01'),
(38, NULL, 'hh', 490, 526, NULL, 0, 1, '2021-12-18 04:27:15', '2021-12-18 04:27:15'),
(39, NULL, 'gg', 490, 526, NULL, 0, 1, '2021-12-18 04:27:38', '2021-12-18 04:27:38'),
(40, NULL, 'df', 490, 526, NULL, 0, 1, '2021-12-18 04:28:33', '2021-12-18 04:28:33'),
(41, NULL, 'gg', 490, 526, NULL, 0, 1, '2021-12-18 04:29:21', '2021-12-18 04:29:21'),
(42, NULL, 'sad', 490, 526, NULL, 0, 1, '2021-12-18 04:29:59', '2021-12-18 04:29:59'),
(43, NULL, 'now', 490, 526, NULL, 0, 1, '2021-12-18 04:34:03', '2021-12-18 04:34:03'),
(44, NULL, 'f', 490, 523, NULL, 0, 1, '2021-12-18 04:34:12', '2021-12-18 04:34:12'),
(45, NULL, 'first', 490, 523, NULL, 0, 1, '2021-12-18 04:34:47', '2021-12-18 04:34:47'),
(46, NULL, 'hi', 622, 624, NULL, 1, 1, '2021-12-26 21:24:51', '2021-12-28 05:43:58'),
(47, NULL, 'to', 624, 622, NULL, 1, 1, '2021-12-26 21:25:54', '2021-12-26 22:48:36'),
(48, NULL, 'hi', 631, 623, NULL, 0, 1, '2021-12-26 21:56:12', '2021-12-26 21:56:12'),
(49, NULL, 'j', 624, 628, NULL, 0, 1, '2021-12-28 05:36:04', '2021-12-28 05:36:04');

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

--
-- Dumping data for table `message_masters`
--

INSERT INTO `message_masters` (`id`, `message_id`, `message`, `message_from`, `message_to`, `attachment`, `is_seen`, `status`, `created_at`, `updated_at`) VALUES
(37, NULL, 'hello Emran Hossan', 565, 524, NULL, 0, 1, '2021-08-29 11:59:51', '2021-08-29 11:59:51'),
(38, NULL, 'Hello', 565, 564, NULL, 0, 1, '2021-08-29 12:01:40', '2021-08-29 12:01:40'),
(39, NULL, 'Hello', 565, 524, NULL, 0, 1, '2021-08-29 12:15:09', '2021-08-29 12:15:09'),
(40, NULL, 'Hello Sir', 566, 564, NULL, 0, 1, '2021-08-29 21:59:43', '2021-08-29 21:59:43'),
(41, NULL, 'hello Student', 564, 566, NULL, 0, 1, '2021-08-30 00:24:09', '2021-08-30 00:24:09'),
(42, NULL, 'hello', 564, 565, NULL, 0, 1, '2021-08-30 01:22:11', '2021-08-30 01:22:11'),
(43, NULL, 'jhcdcv', 564, 566, NULL, 0, 1, '2021-08-30 02:08:49', '2021-08-30 02:08:49'),
(44, NULL, 'jkcxv', 564, 566, NULL, 0, 1, '2021-08-30 02:09:02', '2021-08-30 02:09:02'),
(45, NULL, 'hjcxx', 564, 566, NULL, 0, 1, '2021-08-30 02:25:22', '2021-08-30 02:25:22'),
(46, NULL, 'kjvfdcjvdf', 564, 566, NULL, 0, 1, '2021-08-30 02:34:25', '2021-08-30 02:34:25');

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
(56, '2021_08_16_061141_create_student_subjects_table', 24),
(57, '2021_08_18_060411_create_notice_categories_table', 25),
(59, '2021_08_23_015439_create_message_masters_table', 25),
(60, '2021_08_23_015603_create_message_attachments_table', 25),
(62, '2021_08_26_081807_create_options_table', 26),
(65, '2021_08_26_081838_create_questions_table', 28),
(66, '2021_08_26_081526_create_quizzes_table', 29),
(68, '2021_09_09_093618_create_assignment_quizzes_table', 31),
(69, '2021_09_09_093737_create_assignment_students_table', 31),
(71, '2021_07_19_062808_create_schools_table', 33),
(72, '2021_09_26_042101_create_quiz_answers_table', 34),
(73, '2021_09_26_042446_create_quiz_answer_options_table', 34),
(77, '2021_09_09_093827_create_quiz_students_table', 35),
(81, '2021_11_06_063830_create_user_log_table', 36),
(82, '2021_11_06_063830_create_user_logs_table', 37),
(84, '2021_11_10_063603_add_last_login_at_to_sessions', 39),
(85, '2021_11_10_090858_add_total_login_time_at_to_users', 40),
(86, '2021_11_10_185416_add_login_total_time_to_users_table', 41),
(87, '2021_11_09_070807_create_sessions_table', 42),
(88, '2021_11_13_074756_add_login_info_to_sessions_table', 43),
(92, '2021_11_15_053910_create_user_logs_table', 44),
(96, '2021_09_09_073115_create_assignments_table', 45),
(97, '2021_12_21_111158_add_color_to_classes_table', 46),
(99, '2021_12_21_121745_add_dept_id_to_subjects_table', 48),
(100, '2021_12_21_121416_create_departments_table', 49),
(101, '2021_08_10_023456_create_topics_table', 50),
(102, '2021_08_18_060534_create_notices_table', 51),
(103, '2021_12_26_104632_add_created_by_to_subjects_table', 52),
(104, '2021_12_26_104843_add_created_by_to_departments_table', 52),
(105, '2021_12_26_104959_add_created_by_to_classes_table', 52),
(106, '2021_12_27_080742_add_school_id_to_notices_table', 53);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_date` date NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `notice_category_id`, `details`, `notice_date`, `attachment`, `expire_date`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'asdf', 1, 'ded', '2021-12-29', '1640419274.docx', '2021-12-31', 'Active', NULL, NULL, '2021-12-25 01:21:21', '2021-12-25 02:01:14', 196),
(3, 'BD', 1, 'sadf', '2021-12-27', NULL, '2021-12-30', 'Active', NULL, NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37', 159),
(4, 'Crismas Day', 1, 'Details', '2021-12-28', 'homepage-map-Lar05-10-08-58-12-scaled.jpg1640591448.jpg', '2021-12-31', 'Active', 622, NULL, '2021-12-27 01:50:47', '2021-12-27 01:50:48', 196);

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
(2, 'New Day', 'Active', 'good Day', '2021-08-25 04:25:28', '2021-08-25 04:25:28'),
(3, 'Sub', 'Active', 'dd', '2021-12-19 06:09:02', '2021-12-19 06:09:02');

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
('00b77792-54f7-4180-a9a0-09bdbc4e3de0', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 625, '{\"Type\":\"Quizzes\",\"Id\":\"94\",\"Message\":\"Student Assign Quizzes done. JS-Quiz-03\"}', NULL, '2021-12-26 00:51:56', '2021-12-26 00:51:56'),
('015fc839-0e76-4289-badd-5591cf197a22', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 623, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('035cf731-483a-429c-b953-9a0ecde939c5', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 572, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('03d6f15f-8bc8-40c7-b8f6-6529a347eef5', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 549, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('041d00dc-dc04-45da-b986-c7e9417aec6d', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 539, '{\"Type\":\"Quizzes\",\"Id\":\"23\",\"Message\":\"Student Assign Assignment done. Assignment - 09\"}', NULL, '2021-12-20 05:30:57', '2021-12-20 05:30:57'),
('042e936c-f212-4ae0-9f57-81b03b595586', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 631, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('043ba019-04bd-44ba-ba6b-02828a449dc3', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 574, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('04a7f0b5-ba41-46c0-8cb3-95a936b1477d', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 566, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('06662872-f0da-4c9b-a9c9-e0376e84070b', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 573, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('06cdd288-f598-4c7f-b01b-0bc26dc105b0', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 630, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('07215c61-fd64-4479-acd8-d2687e45d152', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 525, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('07ee56a3-735e-456e-8898-1c6283136d06', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 490, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('092c0722-d9b4-43c6-95ea-5ed8be2a7051', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 543, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('0b8ba54c-b230-4bab-a973-db0e5cdafec0', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 571, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('0ca51de8-2515-41bc-9e30-3b0b79affec3', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 579, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('0cf49c80-4ae0-4883-bda5-e4d230f059c0', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 526, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('0d23d069-d866-42b5-8f67-4a4a5f521956', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 537, '{\"Type\":\"Quizzes\",\"Id\":\"21\",\"Message\":\"Student Assign Assignment done. Assignment - 09\"}', NULL, '2021-12-20 05:30:57', '2021-12-20 05:30:57'),
('0d69ede5-915f-4836-987f-946e80def371', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 526, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('0dd1f4b7-8e8d-4bbc-8482-83dd462ed82b', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 532, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('0e1be929-299c-4a6a-8591-d7cbcc007268', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 538, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('0f1928fd-e935-4fe3-ba98-77e8ceda646a', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 570, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('0f3ad1f6-26ac-41aa-9bed-6a2004b113ed', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 527, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('0f73e939-67ed-4d4d-ad98-68e24544e5d1', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 593, '{\"Type\":\"Message Chatbox\",\"Id\":\"593\",\"Message\":\"Send a Message in your Message box. Khan\"}', NULL, '2021-12-18 04:25:01', '2021-12-18 04:25:01'),
('132a1560-3e56-4f69-b7cb-2c36cf419ce3', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 572, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('151cabce-e8ab-4e29-9ca5-d2df2c8a8725', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 523, '{\"Type\":\"Message Chatbox\",\"Id\":\"523\",\"Message\":\"Send a Message in your Message box. Khan\"}', NULL, '2021-12-18 04:34:47', '2021-12-18 04:34:47'),
('17219134-2959-4af8-8fa8-fe2625ad3f0a', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 624, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', '2021-12-26 21:48:59', '2021-12-26 11:57:37', '2021-12-26 21:48:59'),
('184da690-8848-4824-8430-bf4485482c02', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 492, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('18ff08e7-75a9-4820-ba60-9c426852ec56', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 629, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('19cd3712-2013-4cce-9248-d302cac1d6d2', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 583, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('1b012854-5185-4164-ac26-e4cfd3bd6a3b', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 561, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('1b4dbf75-312b-4ac5-af8e-8226c18860e7', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 1, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('1c1891f5-f5d0-4f31-9aa4-4431021aca35', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 528, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('1cb23c37-8d07-4eca-98e8-5463ee531108', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 545, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('1f9605fa-0a29-4fb5-9796-6382d2e9853f', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 539, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('1fed3f4f-70d8-4c7d-8ef2-6100f8847175', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 523, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('21a02e0c-cd0f-4670-b543-7403c0c5d77f', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 527, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('220dd9a7-712a-4ac2-86a4-e2af51294564', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 1, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('2253a3de-b563-4d37-96db-5236034215df', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 529, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('2259c8d5-272a-4895-97a0-36a036d84f8b', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 558, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('227a0f66-fcad-48b8-864c-db5b056aaee5', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 540, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('235e1e24-a155-4032-b7bb-9785166779af', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 575, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('23d5e04d-2037-4a29-9af0-2f270e440cd7', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 582, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('24afaf65-dc33-4de7-974c-eb28d453b15d', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 592, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('24fca7b1-66ba-4036-bbee-0396ca7c903c', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 538, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('2516a760-7987-48e3-8beb-1b7e7da63e5e', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 605, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('28a84976-a89e-44b5-a4d6-cf66c09e1137', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Assignment done. test Assignment\"}', NULL, '2021-12-16 00:00:14', '2021-12-16 00:00:14'),
('29cb4890-748f-4651-90c5-bacf74b3321c', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 569, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('2a47f121-9b7a-43fe-ace5-0322e4038628', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 536, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('2ceb65f8-b1f5-4c21-a27a-9aa8bcb1218c', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 623, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('2d1a140e-f16b-40f8-8064-df8c23da6c41', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 568, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('2d1a145d-835d-4ff4-a36f-724a69190345', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 524, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('2db9814c-41d1-41e8-a63b-af26a043c926', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 573, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('2e1501ed-581c-4d6f-870e-9fb6992dafc9', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 527, '{\"Type\":\"Quizzes\",\"Id\":\"11\",\"Message\":\"Student Assign Assignment done. Assignment - 09\"}', NULL, '2021-12-20 05:30:57', '2021-12-20 05:30:57'),
('2ed0ef43-cae0-41a3-b7c4-be4c46da3323', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 624, '{\"Type\":\"Quizzes\",\"Id\":\"93\",\"Message\":\"Student Assign Assignment done. js-assingment- 02\"}', '2021-12-26 21:48:59', '2021-12-26 01:32:44', '2021-12-26 21:48:59'),
('2f3df988-4e6d-4235-b019-f4ec66c3cf51', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 620, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('301451fe-5fe6-4926-8a7c-66be85f07779', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 540, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('301dbfc2-afcb-44ff-9fc3-cfc8bc13de20', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 576, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('304e2e91-be01-46d1-a815-75912981c74c', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 576, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('30f775ca-e317-4420-93a2-26fcf0d1e727', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 537, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('333371a3-e154-4b8f-80a5-cf11118f5e89', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 573, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('33443a55-5cf9-4ef6-bd71-ea0c5f33add0', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 583, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('3366a046-8cf7-47af-8a7c-fa5fa77b58c0', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 578, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('36705dee-bc3a-4616-b1f3-6aad714bcf42', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 548, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('369c29e4-ec6c-4365-a6d8-dea62d4a3ac8', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 626, '{\"Type\":\"Quizzes\",\"Id\":\"95\",\"Message\":\"Student Assign Quizzes done. JS-Quiz-04\"}', NULL, '2021-12-26 00:51:37', '2021-12-26 00:51:37'),
('3761f526-6891-4faa-93a7-d4e1e9f13214', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 550, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('37cee8d1-2031-41e8-9073-34f736da1667', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 493, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('38113945-7c63-40a3-a3c2-34425b9f7dfa', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 552, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('38641a77-16d7-445e-8021-3480f190503e', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 544, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('38d74579-f335-458a-b20f-003effea2d4e', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 527, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('3911c1a8-5339-4aa7-b933-3e8ab3789205', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 631, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('3a213eba-f64d-4367-b577-c307f2601605', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 548, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('3a3cf10d-81ce-478d-98e8-0309a2c64692', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 577, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('3ac820c5-3b0a-4ba9-8962-d437cedc07fc', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 554, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('3c2001ea-a014-4b39-9281-bfdb817ae09d', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 525, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('3c3ae14d-510b-4e13-9d51-dd9a6fb0a05e', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Assignment done. new Quiz\"}', NULL, '2021-12-15 23:44:16', '2021-12-15 23:44:16'),
('3cbc9288-d0d7-440b-9f13-eb076dac9f79', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 550, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('3d59a319-9847-46c0-b19b-5d72c32b19bc', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 490, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('3d6c8052-36ff-452e-baba-d08396ad9654', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 530, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('3f3bed0d-b54c-4798-bd92-4b9137600325', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 29, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', '2021-12-26 10:42:09', '2021-12-25 01:21:22', '2021-12-26 10:42:09'),
('402c7f39-1529-4f75-93e0-10a1703efbea', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 526, '{\"Type\":\"Message Chatbox\",\"Id\":\"526\",\"Message\":\"Send a Message in your Message box. Khan\"}', NULL, '2021-12-18 04:34:03', '2021-12-18 04:34:03'),
('423872b7-ab67-4cf6-a789-f4afb17ac3af', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 547, '{\"Type\":\"Quizzes\",\"Id\":\"31\",\"Message\":\"Student Assign Assignment done. Assignment - 09\"}', NULL, '2021-12-20 05:30:57', '2021-12-20 05:30:57'),
('430e5a8e-bb71-41f6-94a9-938f89ec0174', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 630, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('4324d554-ac48-46a3-8d9b-9171da912397', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Quizzes done. Quiz - 06\"}', NULL, '2021-12-20 23:46:41', '2021-12-20 23:46:41'),
('43ce3c16-1230-4fbf-94c1-3f6d41624b32', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 529, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('448d443f-a35a-4606-840d-28cfad465361', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 491, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('473515ff-140a-483d-bd46-9b93f606ec1b', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Assignment done. second Quiz\"}', NULL, '2021-12-15 23:53:56', '2021-12-15 23:53:56'),
('4764d298-5a13-4beb-b9f3-9f15c008ea95', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 538, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('48befeb4-1f14-4966-a870-946d72a626db', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 1, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('4ab7a32d-145a-4301-b2ab-21fa8a70a50e', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 581, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('4afc3b51-644c-4838-935e-d49afcd00deb', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Assignment done. new Quiz\"}', NULL, '2021-12-15 23:44:16', '2021-12-15 23:44:16'),
('4b88cb39-dc01-4b5a-aa8c-f5865ce22d1c', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 553, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('4be459dd-0f96-494c-a4b7-5b498319a31a', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 529, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('4dc21f78-b5c3-46b8-a505-ef8cbf07bf54', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 531, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('4df21781-f377-4fa4-9caf-d36be4944f74', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 29, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('4e85bf25-6557-416d-95f7-981d59269cf1', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 577, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('4f5d98cd-8439-42d4-8c62-91fcebe8524a', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 554, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('5046777d-c187-48d8-9fed-974ee3902d04', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 558, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('508cae64-3905-4c49-b489-87bc29910d11', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 581, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('50c1ffb7-f37b-45ed-9f57-3dd586d1ff35', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 573, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('50ff0e76-5fcd-44bf-9f7a-8f454c14ee43', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 551, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('52e86a01-2c36-47fe-9958-89148d6ba932', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 537, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('552142a2-f6ff-4efb-b0b2-b41bc4e34e3b', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 552, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('574a8841-b1b8-4212-83ef-a59d016f07fd', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 606, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('57f9428d-b6bb-4833-ba66-95ca6503d9ba', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 627, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('58ced643-c57d-4a63-adce-9f526027695f', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 582, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('5911a72c-38f9-41e6-bf4b-e6b7131f87d2', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 493, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('597b5c91-3a61-465d-afdb-3d97b9f4e582', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 628, '{\"Type\":\"Message Chatbox\",\"Id\":\"628\",\"Message\":\"Send a Message in your Message box. Babar\"}', NULL, '2021-12-28 05:36:05', '2021-12-28 05:36:05'),
('59d8bf7c-a36b-411c-92e9-e7381e50da21', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 569, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('5a66149c-cf18-4739-ac19-4fae3a85c0e1', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Assignment done. First Assignment\"}', NULL, '2021-12-13 22:16:33', '2021-12-13 22:16:33'),
('5abe9dd7-784c-4087-a83d-24a06a494dbc', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 553, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('5acb2ec4-dd8a-4fec-acf4-9fa1223c80ff', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 534, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('5c34effe-4b07-42d1-bc4d-437ea7e7e6b1', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 524, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('5cf5efbf-129d-4016-afc8-dd78a7badb55', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 551, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('5e55fd2c-d2c5-42cb-8513-88a301d8cb24', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 526, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('5ea17d2c-af77-4a12-8d38-b9cd7b155c08', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 544, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('5f0615f0-423b-4410-a72f-d259652fcb5b', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Assignment done. gsfd\"}', NULL, '2021-12-16 00:04:18', '2021-12-16 00:04:18'),
('60962307-9c86-449b-b603-15b2cb867b97', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 557, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('616cef03-0109-4477-bd61-41c691124eb3', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 548, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('62c5a2bb-e2a4-42ea-9252-3a93e49f0947', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 491, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('62c824a5-2040-4335-9477-81158cc24ac1', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 567, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('630701ca-1714-4cf0-b40f-0045190daf26', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 581, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('6309e48c-1e85-463f-9d0f-a1895afe22ee', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 625, '{\"Type\":\"Quizzes\",\"Id\":\"94\",\"Message\":\"Student Assign Assignment done. js-assingment- 01\"}', NULL, '2021-12-26 01:31:32', '2021-12-26 01:31:32'),
('643b6a45-1c3f-4f75-98aa-cd9168c5081c', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 576, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('64b73636-a596-405e-9ca7-9e33cf0f8399', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 528, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('64f4c099-1035-46ca-9b75-ffd8ed5b3545', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 578, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('65dca21c-8163-4f03-b950-521a154d0ae9', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 572, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('6698bccb-fca6-4721-8f9a-88f37c828c73', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 580, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('67adca8f-77ca-4553-b061-484af4f29c5c', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 554, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('67c27bfd-8f00-46f8-bb4d-ca5873e46039', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 527, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('68585e9f-18a9-4d41-a924-bbbd027574b6', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 540, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('6900681b-079f-4b1d-b59a-06c600549d10', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 547, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('697f2b58-ce50-475a-ae91-1b2c5740751b', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 562, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('6b05eae0-89b7-4fdf-af34-538a1df74d48', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 626, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('6b9066e0-9082-4e12-a4b8-77d1398f8827', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 620, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('6ba1696b-6788-47c6-9f86-32cb9543d34c', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 580, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('6c1d01c1-596a-421e-bfff-c195686e32d4', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 566, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('6c5917b7-9f67-4377-84e2-d8bc9fca6897', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 545, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('6ee06497-3474-4b07-92be-23c05e9bccb4', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 535, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('6f2ca0ae-70b6-416c-9e2f-4133a9e55da4', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 1, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('700012c5-75e8-41a4-b1bc-0737541af9ed', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 492, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('72890c9a-0dd2-4f95-b013-823bc4d03a09', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 539, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('72bbdb67-acb4-4b30-b589-726d9aabc3f4', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 570, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('7317be37-6878-4713-b275-425b850868f3', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 593, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('736c6d9f-ad41-4d59-a342-e614ea3e05dd', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 537, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('73f5c28a-583b-48c8-afc8-a11908a6a558', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 540, '{\"Type\":\"Quizzes\",\"Id\":\"24\",\"Message\":\"Student Assign Assignment done. Assignment - 09\"}', NULL, '2021-12-20 05:30:57', '2021-12-20 05:30:57'),
('7428bd9a-9c28-4fc9-9768-c2204d622ca9', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 548, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('74969fbd-4c9c-46d8-b8e4-913e2bda48cf', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 629, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('7625f164-4799-4991-9394-484759e3ced0', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 570, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('76c25344-4269-467a-b296-003f6a6f29be', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 553, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('772540bd-4d76-4f48-a74c-644023c34c5e', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 605, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('7805afee-826c-4faf-a08a-fc8a4eb48d5b', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 593, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('78491269-d200-40bd-a533-092122a81680', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 531, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('78acf0a9-5778-44cd-80d0-11dcc912aa9a', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 628, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('78ddd16a-841b-49d1-8f9d-4c5a12086d77', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 544, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('7ae42619-65ad-4f0d-9817-70c75bffc900', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 624, '{\"Type\":\"Quizzes\",\"Id\":\"93\",\"Message\":\"Student Assign Quizzes done. Js-Quiz-05\"}', '2021-12-26 21:48:59', '2021-12-26 01:05:05', '2021-12-26 21:48:59'),
('7c15ba78-b95a-4104-82ba-b63d59a8834a', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 625, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('7c212097-7313-4608-817b-3091a016a6e4', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 543, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('7c2f12fd-c6b5-4ec6-8b61-ac75f4874399', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 545, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('7df8529a-c844-4b5c-b9d8-b2cd28f9ec5c', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 579, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('7e1479a1-47ac-47ff-9432-3de22d329a07', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 622, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', '2021-12-26 21:27:23', '2021-12-26 11:57:37', '2021-12-26 21:27:23'),
('7e2ebe2e-8709-47bc-bbb5-56a1600ba602', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 568, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('7ef34091-63a5-42a9-ad4a-4615a6e192f7', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 592, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('801156cb-3f64-45a8-a382-d2d76a51d721', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 624, '{\"Type\":\"Quizzes\",\"Id\":\"93\",\"Message\":\"Student Assign Quizzes done. JS-Quiz-04\"}', '2021-12-26 21:48:59', '2021-12-26 00:51:37', '2021-12-26 21:48:59'),
('802a5e23-d108-4ed7-84f1-4eeae8d6841f', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 531, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('8128548e-f7d6-4099-85f8-18e3c86636cf', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 554, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('814d2f45-cd68-4ce8-83ad-2337346fce0b', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 575, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('82d944c1-374c-4816-bbc9-9946c8325e44', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 532, '{\"Type\":\"Quizzes\",\"Id\":\"16\",\"Message\":\"Student Assign Assignment done. Assignment - 09\"}', NULL, '2021-12-20 05:30:57', '2021-12-20 05:30:57'),
('83ffc152-bb79-4ef8-89b2-dfb6a80ab374', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 574, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('85ce8683-9a8f-4496-96b4-831941a7a317', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 552, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('85e9ca39-9add-4b8c-bd18-a4ab8f282c8b', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 536, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('879318fd-a439-4974-9e27-cdfe5d24bded', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 535, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('88c92ed4-0647-4b27-beaf-229942cfbcb2', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 561, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('89ea17f1-d857-43e2-9b29-351fed99e830', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 29, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', '2021-12-26 10:42:09', '2021-12-25 02:01:48', '2021-12-26 10:42:09'),
('8a4483d3-e4e2-4150-82a3-32117a192808', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 545, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('8aabe3f0-2b30-4428-a61a-aa5468bd02cf', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 526, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('8b104b9a-8d59-499b-9f30-83cc43a45e35', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 490, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('8b73ef83-e513-4fab-a6e2-ec452bbc2fed', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 632, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('8ce40849-f527-417b-bea7-faaa7f497f3b', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 540, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('8d102247-20cf-4af8-afda-8d9b7985fd93', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 532, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('8d83ec00-c955-4fa3-a60c-f019ad8ab715', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 582, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('8dca34e1-c0dc-4ecd-b3de-b06ade62de03', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 547, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('9088b91e-62f6-4275-bfcc-6a34682465e6', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 29, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('90b7b180-b542-4515-8ebd-d595062b599c', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 492, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('9146f86f-6961-4774-998b-27741fbe7531', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 623, '{\"Type\":\"Quizzes\",\"Id\":\"92\",\"Message\":\"Student Assign Quizzes done. JS-Quiz-01\"}', NULL, '2021-12-26 00:52:11', '2021-12-26 00:52:11'),
('9349cd39-82fd-4550-9346-0f39a08dbaa0', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 539, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('9417d83f-acd4-4506-85d8-9e57b853b0ba', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 543, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('94333693-50e5-4d1c-aafc-d4afbae6c93f', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 549, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('96333e9c-4e33-45f6-a0b7-c71f63e0a786', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 583, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('9765a666-ddb1-4ee6-91db-649babc09b53', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 528, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('980f7f4e-b472-4a04-a254-cfa6e9aed75c', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 490, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('9912fbfa-6884-45f1-91f9-a8792f4337b0', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 562, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('9991d2da-7e0c-4c93-8d4d-11a1c11c546f', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 592, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('99b41a56-b802-434d-bcf2-0c1a592760c6', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 580, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('9b5b971a-74b8-46c8-b792-a2b22524161a', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Assignment done. adsf\"}', NULL, '2021-12-16 00:12:29', '2021-12-16 00:12:29'),
('9bdb6035-fca9-4899-b266-5333dc2d10de', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 577, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('9becfc64-ce8d-4991-b14b-09e78282ed97', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 569, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('9bf5563b-3102-4bd3-94a7-320421483b8e', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 525, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('9e044576-4d15-4acd-abdb-f6b8f37860f8', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Assignment done. second Quiz\"}', NULL, '2021-12-15 23:53:56', '2021-12-15 23:53:56'),
('9e0f46c3-d6fc-4576-a996-744148ebc1eb', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 568, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('9e953efd-2636-4955-b2b5-f67c8394a82e', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 552, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('9faad8ef-d399-4b5e-a8b3-a8d8d225e901', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 567, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('a0708630-09fa-42ae-8303-4f87e900588d', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 579, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('a0a6b6d9-2a3c-4129-b6d6-139f3a8d2f8d', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 606, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('a0b86244-5fea-47c0-8e22-e5e667eaf1d2', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 593, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('a0d87aa2-e8f0-43ab-bee5-a45490308408', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 547, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('a1ebf66c-1d64-4d9b-a0b2-9fc08f343d75', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 523, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('a4cf03a2-0e2e-4958-8fe3-845510077320', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 578, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('a63e6e9d-9d44-4c43-8504-035d1ec74fb6', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 627, '{\"Type\":\"Quizzes\",\"Id\":\"96\",\"Message\":\"Student Assign Assignment done. js-assingment- 01\"}', NULL, '2021-12-26 01:31:32', '2021-12-26 01:31:32'),
('a6546a73-4870-43d6-92a5-843c9eb871da', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 551, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('a72afc0e-fd29-4a75-8928-c346e172ce6a', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 624, '{\"Type\":\"Message Chatbox\",\"Id\":\"624\",\"Message\":\"Send a Message in your Message box. Abid Ali\"}', '2021-12-26 21:48:59', '2021-12-26 21:24:53', '2021-12-26 21:48:59'),
('a7cc8b1f-7053-423b-bef8-84604a7a1adf', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 531, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('a7f51815-5205-4725-bab5-a085e72ff87c', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 574, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('a8077cc6-ef11-4ac2-9484-19faafb60336', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 627, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('aafa4307-2e8b-49d3-951c-b3f4495bda71', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 528, '{\"Type\":\"Quizzes\",\"Id\":\"12\",\"Message\":\"Student Assign Assignment done. Assignment - 09\"}', NULL, '2021-12-20 05:30:57', '2021-12-20 05:30:57'),
('ab5c8f7f-4bfb-48e2-aed0-ca5d7a4009b1', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 572, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('adada426-9875-4723-9c93-00ed156af007', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 624, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', '2021-12-27 05:04:09', '2021-12-27 01:50:48', '2021-12-27 05:04:09'),
('ae999218-4c84-4a59-8334-bf38addeb516', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 569, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('af57eb85-5ff6-4fd8-96d3-c393130d3c04', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 550, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('afcfc580-b1cc-4d38-8194-fa2fb756c586', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 524, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('b1063c52-a4f8-429c-96bb-4d0e74f928c7', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 550, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('b29c0803-b3f8-4270-8ce5-8874c622f6fe', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 605, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('b3f02e47-4077-4e94-9f47-0a1090214add', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 557, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('b528bd62-a084-46f0-88fa-1d9dd00281a8', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 567, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('b549521f-3239-4ed3-b014-3cea4485de00', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 634, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('b6e0cdd1-8be5-4c6d-88bd-2a9c15332132', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 605, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('b7326217-cfd1-41aa-b453-743a7025b196', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 529, '{\"Type\":\"Quizzes\",\"Id\":\"13\",\"Message\":\"Student Assign Quizzes done. Testing Quiz - 1\"}', NULL, '2021-12-18 02:29:10', '2021-12-18 02:29:10'),
('b7859ba9-00b9-4a75-9909-ee2091cd9e8e', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 626, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('b80d13db-9532-4426-a37d-34d0a830a6f4', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 627, '{\"Type\":\"Quizzes\",\"Id\":96,\"Message\":\"Student Class Update\\/Passed Year done. Year 2\"}', NULL, '2021-12-25 23:35:50', '2021-12-25 23:35:50'),
('baf056c7-2e3a-4605-949e-ad1099954c9e', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 557, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('bbc7b3de-4fb7-4dc2-bd84-9082c4de99ac', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 537, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('bbe8d53f-7111-4152-a65b-7c4f02758abb', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 536, '{\"Type\":\"Quizzes\",\"Id\":\"20\",\"Message\":\"Student Assign Assignment done. Assignment - 09\"}', NULL, '2021-12-20 05:30:57', '2021-12-20 05:30:57'),
('bd99640a-602b-4afd-a210-5e1331dbc68c', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 571, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('be8c5301-e321-4c75-b5fc-7a66aa76f1a6', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 532, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('bf2441a4-d947-48ce-8eb5-52c89e312223', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 627, '{\"Type\":\"Quizzes\",\"Id\":96,\"Message\":\"Student Class Update\\/Passed Year done. Year 2\"}', NULL, '2021-12-26 02:26:29', '2021-12-26 02:26:29'),
('c061c37e-e10c-473e-88f5-a562afbd91d0', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 622, '{\"Type\":\"Message Chatbox\",\"Id\":\"622\",\"Message\":\"Send a Message in your Message box. Babar\"}', '2021-12-26 21:27:23', '2021-12-26 21:25:54', '2021-12-26 21:27:23'),
('c0bddea9-12c1-4118-a9d5-c85b0423b9ac', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 525, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('c11e4931-1746-4f68-ad91-eb0465f6e58e', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 538, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('c18c181e-ecda-4793-8ea7-3f15626b9463', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 568, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('c2bf019a-5c6a-46f4-8d8b-f446adeb299d', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 534, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('c2e35a42-5259-4368-aead-950bdb5e6457', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 620, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('c32e2437-5043-49ef-baa8-01f2d06694d1', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 626, '{\"Type\":\"Quizzes\",\"Id\":\"95\",\"Message\":\"Student Assign Assignment done. js-assingment- 02\"}', NULL, '2021-12-26 01:32:44', '2021-12-26 01:32:44'),
('c3a47d09-55fa-4225-a399-a76474790783', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 539, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('c3d85210-4243-46b3-80b0-920f0736b1fe', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 623, '{\"Type\":\"Quizzes\",\"Id\":\"92\",\"Message\":\"Student Assign Assignment done. Js-Assignment-03\"}', NULL, '2021-12-26 01:33:45', '2021-12-26 01:33:45'),
('c4e42da2-6a39-4cb5-9e3a-103000a53af7', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 492, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('c58fe3ce-1c95-493b-b08a-c162e8d75d12', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 547, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('c7d3b586-52f8-4e5f-9a15-f6f99dd0a56f', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 530, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('c869cf5c-aeb6-47e6-8cdd-d25b003f30bd', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 530, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('c9722dd7-f4db-4e5d-8e36-76655f4449e1', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 536, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('c9be2d69-2fa2-4653-98aa-dec2ec75f8de', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 543, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('ca1976a9-c146-4600-9415-d0db1ba192f2', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 491, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('ca5df944-1787-4a4d-a59f-d2083304afb1', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 536, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('cbb1db89-fb18-489e-809c-e47ba2e1661d', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Assignment done. test Assignment\"}', NULL, '2021-12-16 00:00:14', '2021-12-16 00:00:14'),
('ccb559fd-0655-44ed-8fde-83e0edef1d9d', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 625, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('cde82b50-b9c4-46d7-a81c-68b86c6fff1d', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 574, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('ce00f7b1-8c67-4d74-a5dc-8ec71188522d', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 529, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('cf475c09-d1f5-41d7-a7e2-ec907a9578db', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 549, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('cf6632ae-f228-45a0-9319-3b935eaf7432', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 551, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('cfbccef3-8fa0-4563-9cd3-117dc094e239', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 561, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('d18bcdd8-9ce0-403f-9afb-85fc82606ba1', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 593, '{\"Type\":\"Message Chatbox\",\"Id\":\"593\",\"Message\":\"Student Class Update\\/Passed Year done. Khan\"}', NULL, '2021-12-18 04:22:04', '2021-12-18 04:22:04'),
('d192c7f4-7d19-45a3-9d2f-205582c743c0', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 575, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('d299dd25-9308-4fd1-88bb-3ab23962afc9', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Assignment done. Assignment 2\"}', NULL, '2021-12-16 00:17:52', '2021-12-16 00:17:52'),
('d2fa8614-5b0c-400b-86dc-c4f80aa383fe', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 566, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('d3a3bddf-f264-403f-854f-24789155a307', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 571, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('d4f013f0-a0ba-40bc-867b-44c6a6ebdc87', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 534, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('d73b09fa-7261-4184-9e25-72ccfb125a16', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 582, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('d74f1115-c924-4918-910d-d4b692d9c309', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 549, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('d7c382b5-c0dc-4598-889c-66c35d83c30d', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 535, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('d7dfeb5f-bf0c-43b6-be98-42ce2ce3c5d9', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 491, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('d82a38d2-2e55-4b9a-9e4d-7ac35b9d5edf', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 627, '{\"Type\":\"Quizzes\",\"Id\":\"96\",\"Message\":\"Student Assign Quizzes done. JS-Quiz-03\"}', NULL, '2021-12-26 00:51:56', '2021-12-26 00:51:56'),
('d8b50294-9479-44ab-9eff-2f13e20eedc8', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 493, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('d972cf03-8abd-4167-b9e1-5f12b7872ed4', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 561, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('dbad9247-db70-412a-88a9-f477fee10ab5', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 528, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('dcd2bee2-033e-4466-bccb-531a3387039e', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 627, '{\"Type\":\"Quizzes\",\"Id\":96,\"Message\":\"Student Class Update\\/Passed Year done. Year 2\"}', NULL, '2021-12-25 23:35:18', '2021-12-25 23:35:18'),
('dd13fda4-9377-4d1f-830b-89dd812f55ed', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 581, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('dd44212d-b2f1-4a35-9747-898f09528df7', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 553, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('decc9aed-c4aa-4495-a4b6-d29d8a9a4203', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 576, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('df301f33-20dc-4ad5-b404-108e46a8c8d3', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 632, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('df6727cc-8007-4a02-97fe-df9488a4c710', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 544, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('e15510c3-ddf7-4ae1-886a-fdf3342a3381', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 634, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('e1621228-7577-4118-89ae-3378d4684fdd', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 575, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('e1b10960-2319-432e-a240-0d2131274e7f', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 562, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('e27582b0-ee32-49bf-86f7-a461b1b49bb3', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 577, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('e2ebe6f1-7121-4799-ae03-edb86baabf41', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 606, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('e65ff1a7-6167-4ed5-a8d6-6b300265ef27', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 535, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('e854721c-f8d2-4a12-9057-cfb5fab37b62', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 557, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('e9a5ac7d-8907-4c94-be81-435d5f3367b9', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 534, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('ea01dbf0-0e38-4d97-ab12-5ab4cb50f84b', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 571, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('eaeee0c1-0aef-4604-93ec-91ac6cf0daad', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 523, '{\"Type\":\"Message Chatbox\",\"Id\":\"523\",\"Message\":\"Send a Message in your Message box. Khan\"}', NULL, '2021-12-18 04:34:12', '2021-12-18 04:34:12'),
('eaffe52c-a654-47ed-81c0-7bae7713612a', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 562, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('eb2e7df1-2271-4670-9411-62c0dbe38b91', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 593, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('eb74833e-3a45-4a2b-b38b-cbfebaec91c5', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 580, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('eb813406-1236-4e4a-b6b7-6b5d91aba1e6', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 633, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('ebb782db-34dd-4667-b67b-8fb8a99ddce7', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Quizzes done. Quiz - 06\"}', NULL, '2021-12-20 23:46:41', '2021-12-20 23:46:41'),
('ec307c1e-2ed4-4bd0-a058-ffb914df0df9', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 524, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('edf0a6fa-6d5f-42e1-bceb-f55d064478a6', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 558, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('efbadfd0-dfa9-4c65-9060-ea01a575b886', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 523, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('f0cd0521-b142-4174-96e6-1d1e0501cd83', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 623, '{\"Type\":\"Message Chatbox\",\"Id\":\"623\",\"Message\":\"Send a Message in your Message box. Harun\"}', NULL, '2021-12-26 21:56:12', '2021-12-26 21:56:12'),
('f11de714-85f5-4b18-a006-7037f8521ffb', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 558, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('f153d190-5c35-4bf2-9769-dc564eaf503a', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 579, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('f1774fc2-6341-4a66-b33c-97494bc47c2d', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 570, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('f2ec8c14-db1c-44df-8506-7df5fcab52a1', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 578, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('f37a42c6-ca98-424e-b563-09b9a97c820a', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 567, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('f4eb1128-f189-4a8b-819a-4607186fa407', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 530, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('f5246b66-4d90-4dec-9e31-d18ec55d94b3', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 620, '{\"Type\":\"School Notice\",\"Id\":2,\"Message\":\"Send a Notice in your School. asd\"}', NULL, '2021-12-25 02:01:48', '2021-12-25 02:01:48'),
('f60f6947-ef26-4062-bdd5-869d88b387fe', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 606, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('f6396f54-f77f-4101-881d-ec9eade279e0', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 583, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('f78afa8d-b8cc-4148-96d2-b973ac020d2b', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 592, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('f7ea12d0-63d6-4019-beda-208c4653ed8a', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 493, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. asdf\"}', NULL, '2021-12-25 01:21:22', '2021-12-25 01:21:22'),
('f8e734bd-c2cb-4b39-8509-0174e7f59589', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 633, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('f964675a-3e72-4d4e-a264-6d506b8cc30d', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 538, '{\"Type\":\"Quizzes\",\"Id\":\"22\",\"Message\":\"Student Assign Assignment done. Assignment - 09\"}', NULL, '2021-12-20 05:30:57', '2021-12-20 05:30:57'),
('f9be57ea-d35c-49bf-9f55-3d341cc0eec3', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 532, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('faa0d9c7-79a6-4ee7-93af-64b5e1ff8fbb', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 622, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', '2021-12-27 05:11:42', '2021-12-27 01:50:48', '2021-12-27 05:11:42'),
('fb38cf61-6a6c-4d68-843b-8d9d3a41025b', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Assignment done. Assignment -4\"}', NULL, '2021-12-16 00:20:08', '2021-12-16 00:20:08'),
('fb941737-f4ef-4f19-b5b3-f79f7c188ef0', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 523, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. Crismas Day\"}', NULL, '2021-12-27 01:50:48', '2021-12-27 01:50:48'),
('fc4f47e2-dae5-487f-86fd-ad9e3999eebc', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 628, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('ff13486c-9e4e-40a9-ae58-5590049edf51', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 566, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. BD\"}', NULL, '2021-12-26 11:57:37', '2021-12-26 11:57:37'),
('ff9ba73f-5c3e-49e1-930d-4a9671863be2', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 627, '{\"Type\":\"Quizzes\",\"Id\":96,\"Message\":\"Student Class Update\\/Passed Year done. Year 2\"}', NULL, '2021-12-25 23:34:53', '2021-12-25 23:34:53');

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
(1, 1, '5', '1', '2021-12-25 09:37:25', '2021-12-25 09:37:25'),
(2, 1, '2', '0', '2021-12-25 09:37:25', '2021-12-25 09:37:25'),
(3, 1, '1', '0', '2021-12-25 09:37:25', '2021-12-25 09:37:25'),
(4, 1, '5', '1', '2021-12-25 09:37:25', '2021-12-25 09:37:25'),
(5, 2, 'Bangladesh', '1', '2021-12-25 09:41:20', '2021-12-25 09:41:20'),
(6, 2, 'Pakistan', '0', '2021-12-25 09:41:20', '2021-12-25 09:41:20'),
(7, 2, 'Germany', '0', '2021-12-25 09:41:20', '2021-12-25 09:41:20'),
(8, 2, 'India', '0', '2021-12-25 09:41:20', '2021-12-25 09:41:20'),
(9, 3, 'True', '0', '2021-12-25 09:43:21', '2021-12-25 09:43:21'),
(10, 3, 'False', '1', '2021-12-25 09:43:21', '2021-12-25 09:43:21'),
(11, 4, 'Small', '1', '2021-12-26 00:14:05', '2021-12-26 00:14:05'),
(12, 4, 'Big', '0', '2021-12-26 00:14:05', '2021-12-26 00:14:05'),
(13, 4, 'Bangladesh', '1', '2021-12-26 00:14:05', '2021-12-26 00:14:05'),
(14, 4, 'India', '0', '2021-12-26 00:14:05', '2021-12-26 00:14:05'),
(15, 5, 'Bangladesh', '1', '2021-12-26 00:16:15', '2021-12-26 00:16:15'),
(16, 5, 'India', '0', '2021-12-26 00:16:15', '2021-12-26 00:16:15'),
(17, 5, 'Pakistan', '0', '2021-12-26 00:16:15', '2021-12-26 00:16:15'),
(18, 5, 'Srilanka', '0', '2021-12-26 00:16:15', '2021-12-26 00:16:15'),
(19, 6, 'True', '0', '2021-12-26 00:23:29', '2021-12-26 00:23:29'),
(20, 6, 'False', '1', '2021-12-26 00:23:29', '2021-12-26 00:23:29'),
(21, 7, 'Free Text', 'capital', '2021-12-26 00:24:56', '2021-12-26 00:24:56'),
(22, 8, 'Fill in the blanks', 'Dhaka', '2021-12-26 00:26:49', '2021-12-26 00:26:49'),
(23, 8, 'Fill in the blanks', 'India', '2021-12-26 00:26:49', '2021-12-26 00:26:49'),
(24, 8, 'Fill in the blanks', 'Rangpur', '2021-12-26 00:26:49', '2021-12-26 00:26:49'),
(25, 9, '5', '1', '2021-12-26 00:28:40', '2021-12-26 00:28:40'),
(26, 9, '8', '0', '2021-12-26 00:28:40', '2021-12-26 00:28:40'),
(27, 9, '10', '1', '2021-12-26 00:28:40', '2021-12-26 00:28:40'),
(28, 9, '9', '0', '2021-12-26 00:28:40', '2021-12-26 00:28:40'),
(29, 10, '15', '1', '2021-12-26 00:29:47', '2021-12-26 00:29:47'),
(30, 10, '20', '0', '2021-12-26 00:29:47', '2021-12-26 00:29:47'),
(31, 10, '18', '0', '2021-12-26 00:29:47', '2021-12-26 00:29:47'),
(32, 10, '30', '0', '2021-12-26 00:29:47', '2021-12-26 00:29:47'),
(33, 11, 'True', '1', '2021-12-26 00:30:13', '2021-12-26 00:30:13'),
(34, 11, 'False', '0', '2021-12-26 00:30:13', '2021-12-26 00:30:13'),
(35, 12, 'Free Text', '17', '2021-12-26 00:31:12', '2021-12-26 00:31:12'),
(36, 13, 'Fill in the blanks', '8', '2021-12-26 00:32:10', '2021-12-26 00:32:10'),
(37, 13, 'Fill in the blanks', '8', '2021-12-26 00:32:10', '2021-12-26 00:32:10'),
(38, 14, '2', '1', '2021-12-26 00:33:05', '2021-12-26 00:33:05'),
(39, 14, '9', '0', '2021-12-26 00:33:05', '2021-12-26 00:33:05'),
(40, 14, '7', '0', '2021-12-26 00:33:05', '2021-12-26 00:33:05'),
(41, 14, '2', '1', '2021-12-26 00:33:05', '2021-12-26 00:33:05'),
(42, 15, '5', '0', '2021-12-26 00:34:17', '2021-12-26 00:34:17'),
(43, 15, '3', '0', '2021-12-26 00:34:17', '2021-12-26 00:34:17'),
(44, 15, '9', '1', '2021-12-26 00:34:17', '2021-12-26 00:34:17'),
(45, 15, '125', '0', '2021-12-26 00:34:17', '2021-12-26 00:34:17'),
(46, 16, 'True', '0', '2021-12-26 00:34:50', '2021-12-26 00:34:50'),
(47, 16, 'False', '1', '2021-12-26 00:34:50', '2021-12-26 00:34:50'),
(48, 17, 'Free Text', '50', '2021-12-26 00:35:26', '2021-12-26 00:35:26'),
(49, 18, 'Fill in the blanks', '2', '2021-12-26 00:36:05', '2021-12-26 00:36:05'),
(50, 18, 'Fill in the blanks', '2', '2021-12-26 00:36:05', '2021-12-26 00:36:05'),
(51, 19, 'ABC', '0', '2021-12-26 00:37:19', '2021-12-26 00:37:19'),
(52, 19, 'BRAC', '1', '2021-12-26 00:37:19', '2021-12-26 00:37:19'),
(53, 19, 'DBC', '0', '2021-12-26 00:37:19', '2021-12-26 00:37:19'),
(54, 19, 'DU', '1', '2021-12-26 00:37:19', '2021-12-26 00:37:19'),
(55, 20, 'Dhaka', '1', '2021-12-26 00:40:29', '2021-12-26 00:40:29'),
(56, 20, 'Rajshahi', '0', '2021-12-26 00:40:29', '2021-12-26 00:40:29'),
(57, 20, 'Dinajpur', '0', '2021-12-26 00:40:29', '2021-12-26 00:40:29'),
(58, 20, 'Rangpur', '0', '2021-12-26 00:40:29', '2021-12-26 00:40:29'),
(59, 21, 'True', '1', '2021-12-26 00:41:27', '2021-12-26 00:41:27'),
(60, 21, 'False', '0', '2021-12-26 00:41:27', '2021-12-26 00:41:27'),
(61, 22, 'Free Text', '50', '2021-12-26 00:42:44', '2021-12-26 00:42:44'),
(62, 23, 'Fill in the blanks', '25', '2021-12-26 00:43:20', '2021-12-26 00:43:20'),
(63, 23, 'Fill in the blanks', '25', '2021-12-26 00:43:20', '2021-12-26 00:43:20'),
(64, 24, '2ab', '1', '2021-12-26 01:04:07', '2021-12-26 01:04:07'),
(65, 24, '3ab', '0', '2021-12-26 01:04:07', '2021-12-26 01:04:07'),
(66, 24, '2b', '0', '2021-12-26 01:04:07', '2021-12-26 01:04:07'),
(67, 24, 'b2', '1', '2021-12-26 01:04:07', '2021-12-26 01:04:07'),
(68, 25, '14', '0', '2021-12-26 01:04:55', '2021-12-26 01:04:55'),
(69, 25, '15', '1', '2021-12-26 01:04:55', '2021-12-26 01:04:55'),
(70, 25, '13', '0', '2021-12-26 01:04:55', '2021-12-26 01:04:55'),
(71, 25, '5', '0', '2021-12-26 01:04:55', '2021-12-26 01:04:55');

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
(1, 3, 'value ------- + -------------- = 10', 2.00, 'Multiple choice', NULL, '1640446645home--02.png', 1, NULL, 'Active', '2021-12-25 09:37:25', '2021-12-25 22:24:25'),
(2, 3, 'Dhaka is the capital of -------------', 1.00, 'Single Choice', NULL, '1640446880razib.png', 2, NULL, 'Active', '2021-12-25 09:41:20', '2021-12-25 22:24:25'),
(3, 3, '18+3 = 20', 1.00, 'True/false', NULL, '1640447001home-03.png', 3, NULL, 'Active', '2021-12-25 09:43:21', '2021-12-25 22:24:25'),
(4, 7, 'Bangladesh is a ------ country in -------.', 1.00, 'Multiple choice', NULL, '1640499245school login.txt', 1, NULL, 'Active', '2021-12-26 00:14:05', '2021-12-26 00:14:08'),
(5, 7, 'Dhaka is the capital of -------------', 1.00, 'Single Choice', NULL, '1640499375school login update info.txt', 2, NULL, 'Active', '2021-12-26 00:16:15', '2021-12-26 00:16:18'),
(6, 7, 'Rajshahi is the capital of Bangladesh', 1.00, 'True/false', NULL, '1640499809all login detail.txt', 3, NULL, 'Active', '2021-12-26 00:23:29', '2021-12-26 00:23:31'),
(7, 7, 'Dhaka is the -------- of Bangladesh', 1.00, 'Free text', NULL, '1640499896home-03.png', 4, NULL, 'Active', '2021-12-26 00:24:56', '2021-12-26 00:24:59'),
(8, 7, 'Two District in Bangladesh------ -------', 1.00, 'Fill in the blanks', NULL, '1640500009razib.png', 5, NULL, 'Active', '2021-12-26 00:26:49', '2021-12-26 00:26:50'),
(9, 5, '5+ --- +5+ ---- = 25', 1.00, 'Multiple choice', NULL, '1640500120razib.png', 1, NULL, 'Active', '2021-12-26 00:28:40', '2021-12-26 00:28:42'),
(10, 5, '15+---- = 30', 1.00, 'Single Choice', NULL, '1640500187all login detail.txt', 2, NULL, 'Active', '2021-12-26 00:29:47', '2021-12-26 00:29:48'),
(11, 5, '9+2 = 11', 1.00, 'True/false', NULL, '16405002132021_12_04_065702_add_user_name_to_users_table.php', 3, NULL, 'Active', '2021-12-26 00:30:13', '2021-12-26 00:30:15'),
(12, 5, '8+9 = ----', 1.00, 'Free text', NULL, '1640500272all login detail.txt', 4, NULL, 'Active', '2021-12-26 00:31:12', '2021-12-26 00:31:12'),
(13, 5, '8+---+8+---- = 32', 1.00, 'Fill in the blanks', NULL, '1640500330Screenshot_1.png', 5, NULL, 'Active', '2021-12-26 00:32:10', '2021-12-26 00:32:13'),
(14, 4, '7+--+7+-- =18', 1.00, 'Multiple choice', NULL, '16405003852021_12_04_065702_add_user_name_to_users_table.php', 1, NULL, 'Active', '2021-12-26 00:33:05', '2021-12-26 00:33:07'),
(15, 4, '6+3 = ---', 1.00, 'Single Choice', NULL, '1640500457all login detail.txt', 2, NULL, 'Active', '2021-12-26 00:34:17', '2021-12-26 00:34:19'),
(16, 4, '9+3 = 13', 1.00, 'True/false', NULL, '1640500490razib.png', 3, NULL, 'Active', '2021-12-26 00:34:50', '2021-12-26 00:34:53'),
(17, 4, '47+3 = ----', 1.00, 'Free text', NULL, '1640500526homepage-map-Lar05-10-08-58-12-scaled.jpg', 4, NULL, 'Active', '2021-12-26 00:35:26', '2021-12-26 00:35:29'),
(18, 4, '2+---+---+2 =', 1.00, 'Fill in the blanks', NULL, '1640500565home-map.png', 5, NULL, 'Active', '2021-12-26 00:36:05', '2021-12-26 00:36:08'),
(19, 6, 'Two University Name in Bangladesh', 1.00, 'Multiple choice', NULL, '1640500639razib.png', 1, NULL, 'Active', '2021-12-26 00:37:19', '2021-12-26 00:37:20'),
(20, 6, 'Du university in capital Name ----', 1.00, 'Single Choice', NULL, '1640500829home-map.png', 2, NULL, 'Active', '2021-12-26 00:40:29', '2021-12-26 00:40:30'),
(21, 6, '5+2 = 7', 1.00, 'True/false', NULL, '1640500887razib.png', 3, NULL, 'Active', '2021-12-26 00:41:27', '2021-12-26 00:41:27'),
(22, 6, '50+ ---  = 100', 1.00, 'Free text', NULL, '1640500964home-03.png', 4, NULL, 'Active', '2021-12-26 00:42:44', '2021-12-26 00:42:46'),
(23, 6, '25+---+25+--- = 100', 1.00, 'Fill in the blanks', NULL, '1640501000home-01.png', 5, NULL, 'Active', '2021-12-26 00:43:20', '2021-12-26 00:43:22'),
(24, 8, '(a+b) 2 = a2+ ---+ ----', 1.00, 'Multiple choice', NULL, '1640502247razib.png', 1, NULL, 'Active', '2021-12-26 01:04:07', '2021-12-26 01:04:09'),
(25, 8, 'A= 10, b= 5, A+b = ?', 1.00, 'Single Choice', NULL, '1640502295school login update info.txt', 2, NULL, 'Active', '2021-12-26 01:04:55', '2021-12-26 01:04:57');

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
(1, 159, 1, 1, 16, 4, 'First Quiz', 'dasd', '1640429662razib.png', '#', 0, NULL, 'Published', 'Active', '2021-12-25 04:54:22', '2021-12-25 22:24:25'),
(2, 159, 2, 3, 16, 4, 'Quiz - 02', 'Now', '1640431420Screenshot_2.png', '#', 0, NULL, 'Published', 'Active', '2021-12-25 05:23:40', '2021-12-25 22:24:25'),
(3, 159, 2, 4, 14, 3, 'Quiz - 03', 'Todo', '1640431450Screenshot_1.png', '#', 3, 4, 'Published', 'Active', '2021-12-25 05:24:10', '2021-12-25 22:24:25'),
(4, 196, 1, 1, 16, 4, 'JS-Quiz-01', 'No', '1640498555home-01.png', NULL, 5, 5, 'Published', 'Active', '2021-12-26 00:02:35', '2021-12-26 00:36:05'),
(5, 196, 2, 3, 16, 4, 'JS-Quiz-02', 'title', '1640498596home-03.png', NULL, 5, 5, 'Published', 'Active', '2021-12-26 00:03:16', '2021-12-26 00:32:10'),
(6, 196, 2, 4, 15, 11, 'JS-Quiz-03', NULL, '1640498630razib.png', NULL, 5, 5, 'Published', 'Active', '2021-12-26 00:03:50', '2021-12-26 00:49:57'),
(7, 196, 2, 3, 16, 4, 'JS-Quiz-04', NULL, '16404986881.jpg', NULL, 5, 5, 'Published', 'Active', '2021-12-26 00:04:48', '2021-12-26 00:58:54'),
(8, 196, 2, 3, 20, 9, 'Js-Quiz-05', NULL, '16405021831.jpg', 'https://www.youtube.com/watch?v=olUIGr9HAfU', 2, 2, 'Published', 'Active', '2021-12-26 01:03:03', '2021-12-26 01:04:55'),
(9, 196, 1, 1, 16, 4, 'js-quiz-06', 'ff', NULL, '#', 0, NULL, 'Published', 'Active', '2021-12-26 22:24:18', '2021-12-26 22:24:18');

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

--
-- Dumping data for table `quiz_answers`
--

INSERT INTO `quiz_answers` (`id`, `quiz_student_id`, `question_id`, `answer_date`, `answered`, `answer`, `mark`, `retake`, `time_duration`, `created_at`, `updated_at`) VALUES
(1, 6, 24, '2021-12-26 07:19:53', 'Yes', 'Right', 1, 'No', '00:00:07', '2021-12-26 01:19:45', '2021-12-26 01:19:53'),
(2, 6, 25, '2021-12-26 07:19:58', 'Yes', 'Right', 1, 'No', '00:00:04', '2021-12-26 01:19:45', '2021-12-26 01:19:58'),
(3, 1, 4, '2021-12-26 07:20:47', 'Yes', 'Right', 1, 'No', '00:00:04', '2021-12-26 01:20:41', '2021-12-26 01:20:47'),
(4, 1, 5, '2021-12-26 07:20:56', 'Yes', 'Right', 1, 'No', '00:00:08', '2021-12-26 01:20:41', '2021-12-26 01:20:56'),
(5, 1, 6, '2021-12-26 07:21:02', 'Yes', 'Right', 1, 'No', '00:00:05', '2021-12-26 01:20:41', '2021-12-26 01:21:02'),
(6, 1, 7, '2021-12-26 07:21:14', 'Yes', 'Wrong', 0, 'No', '00:00:11', '2021-12-26 01:20:41', '2021-12-26 01:21:14'),
(7, 1, 8, '2021-12-26 07:21:14', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2021-12-26 01:20:41', '2021-12-26 01:21:14'),
(8, 1, 7, '2021-12-26 07:21:23', 'Yes', 'Wrong', 0, 'Yes', '00:00:06', '2021-12-26 01:21:16', '2021-12-26 01:21:23'),
(9, 1, 7, '2021-12-26 07:22:02', 'Yes', 'Right', 1, 'Yes', '00:00:33', '2021-12-26 01:21:27', '2021-12-26 01:22:02'),
(10, 11, 9, '2021-12-26 07:35:13', 'Yes', 'Right', 1, 'No', '00:00:06', '2021-12-26 01:35:05', '2021-12-26 01:35:13'),
(11, 11, 10, '2021-12-26 07:35:17', 'Yes', 'Wrong', 0, 'No', '00:00:04', '2021-12-26 01:35:05', '2021-12-26 01:35:17'),
(12, 11, 11, '2021-12-26 07:35:33', 'Yes', 'Right', 1, 'No', '00:00:11', '2021-12-26 01:35:05', '2021-12-26 01:35:33'),
(13, 11, 12, '2021-12-26 07:35:40', 'Yes', 'Right', 1, 'No', '00:00:05', '2021-12-26 01:35:05', '2021-12-26 01:35:40'),
(14, 11, 13, '2021-12-26 07:35:40', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2021-12-26 01:35:05', '2021-12-26 01:35:40'),
(15, 11, 10, '2021-12-26 07:35:21', 'Yes', 'Right', 1, 'Yes', '00:00:01', '2021-12-26 01:35:19', '2021-12-26 01:35:21'),
(16, 15, 24, '2021-12-26 07:36:55', 'Yes', 'Right', 1, 'No', '00:00:03', '2021-12-26 01:36:50', '2021-12-26 01:36:55'),
(17, 15, 25, '2021-12-26 07:37:00', 'Yes', 'Right', 1, 'No', '00:00:04', '2021-12-26 01:36:50', '2021-12-26 01:37:00');

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

--
-- Dumping data for table `quiz_answer_options`
--

INSERT INTO `quiz_answer_options` (`id`, `quiz_answer_id`, `question_answer`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, '2ab', 'Right', '2021-12-26 01:19:53', '2021-12-26 01:19:53'),
(2, 1, 'b2', 'Right', '2021-12-26 01:19:53', '2021-12-26 01:19:53'),
(3, 2, '15', 'Right', '2021-12-26 01:19:58', '2021-12-26 01:19:58'),
(4, 3, 'Small', 'Right', '2021-12-26 01:20:47', '2021-12-26 01:20:47'),
(5, 3, 'Bangladesh', 'Right', '2021-12-26 01:20:47', '2021-12-26 01:20:47'),
(6, 4, 'Bangladesh', 'Right', '2021-12-26 01:20:56', '2021-12-26 01:20:56'),
(7, 5, 'False', 'Right', '2021-12-26 01:21:02', '2021-12-26 01:21:02'),
(8, 6, 'dhaka', 'Wrong', '2021-12-26 01:21:14', '2021-12-26 01:21:14'),
(9, 8, 'Capital', 'Wrong', '2021-12-26 01:21:23', '2021-12-26 01:21:23'),
(10, 9, 'capital', 'Right', '2021-12-26 01:22:02', '2021-12-26 01:22:02'),
(11, 10, '5', 'Right', '2021-12-26 01:35:13', '2021-12-26 01:35:13'),
(12, 10, '10', 'Right', '2021-12-26 01:35:13', '2021-12-26 01:35:13'),
(13, 11, '20', 'Wrong', '2021-12-26 01:35:17', '2021-12-26 01:35:17'),
(14, 15, '15', 'Right', '2021-12-26 01:35:21', '2021-12-26 01:35:21'),
(15, 12, 'True', 'Right', '2021-12-26 01:35:33', '2021-12-26 01:35:33'),
(16, 13, '17', 'Right', '2021-12-26 01:35:40', '2021-12-26 01:35:40'),
(17, 16, '2ab', 'Right', '2021-12-26 01:36:55', '2021-12-26 01:36:55'),
(18, 16, 'b2', 'Right', '2021-12-26 01:36:55', '2021-12-26 01:36:55'),
(19, 17, '15', 'Right', '2021-12-26 01:37:00', '2021-12-26 01:37:00');

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
  `count` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Yes',
  `quiz_take_duration` time DEFAULT NULL,
  `status` enum('Start','Running','Finished') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Start',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_students`
--

INSERT INTO `quiz_students` (`id`, `student_id`, `quiz_id`, `assignment_id`, `assign_date`, `is_taken`, `attempt`, `score`, `taken_date`, `retake`, `count`, `quiz_take_duration`, `status`, `created_at`, `updated_at`) VALUES
(1, 93, 7, NULL, '2021-12-26 06:51:37', 'Yes', 1, 57.14, '2021-12-26 07:20:41', 'No', 'Yes', '00:00:00', 'Finished', '2021-12-26 00:51:37', '2021-12-26 01:22:02'),
(2, 95, 7, NULL, '2021-12-26 06:51:37', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-26 00:51:37', '2021-12-26 00:51:37'),
(3, 94, 6, NULL, '2021-12-26 06:51:56', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-26 00:51:56', '2021-12-26 00:51:56'),
(4, 96, 6, NULL, '2021-12-26 06:51:56', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-26 00:51:56', '2021-12-26 00:51:56'),
(5, 92, 4, NULL, '2021-12-26 06:52:11', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-26 00:52:11', '2021-12-26 00:52:11'),
(6, 93, 8, NULL, '2021-12-26 07:05:05', 'Yes', 1, 100.00, '2021-12-26 07:19:45', 'No', 'Yes', '00:00:11', 'Finished', '2021-12-26 01:05:05', '2021-12-26 01:19:58'),
(7, 94, 3, 1, '2021-12-26 07:31:32', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-26 01:31:32', '2021-12-26 01:31:32'),
(8, 96, 3, 1, '2021-12-26 07:31:32', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-26 01:31:32', '2021-12-26 01:31:32'),
(9, 94, 6, 1, '2021-12-26 07:31:32', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-26 01:31:32', '2021-12-26 01:31:32'),
(10, 96, 6, 1, '2021-12-26 07:31:32', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-26 01:31:32', '2021-12-26 01:31:32'),
(11, 93, 5, 2, '2021-12-26 07:32:44', 'Yes', 1, 66.67, '2021-12-26 07:35:05', 'No', 'Yes', '00:02:27', 'Finished', '2021-12-26 01:32:44', '2021-12-26 01:36:09'),
(12, 95, 5, 2, '2021-12-26 07:32:44', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-26 01:32:44', '2021-12-26 01:32:44'),
(13, 93, 7, 2, '2021-12-26 07:32:44', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-26 01:32:44', '2021-12-26 01:32:44'),
(14, 95, 7, 2, '2021-12-26 07:32:44', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-26 01:32:44', '2021-12-26 01:32:44'),
(15, 93, 8, 2, '2021-12-26 07:32:44', 'Yes', 1, 100.00, '2021-12-26 07:36:50', 'No', 'Yes', '00:00:07', 'Finished', '2021-12-26 01:32:44', '2021-12-26 01:37:00'),
(16, 95, 8, 2, '2021-12-26 07:32:44', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-26 01:32:44', '2021-12-26 01:32:44'),
(17, 92, 1, 3, '2021-12-26 07:33:45', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-26 01:33:45', '2021-12-26 01:33:45'),
(18, 92, 4, 3, '2021-12-26 07:33:45', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-26 01:33:45', '2021-12-26 01:33:45');

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
(159, 'Mohammadpur Boys', 'Dhaka', 'mohmmadpur@gmail.com', '02528588', 'Khan', '02585', 'Kobir', '0255855', '2021-08-04', '2021-08-03', 'logo.jpg', 'logo.jpg', 'Active', '2021-08-06 23:03:48', '2021-12-24 22:35:02'),
(160, 'Bengol Medium', 'Dhaka', 'bengol@gmail.com', '05255', 'Robin', '0555855', 'Rasel', '2552021', '2021-08-03', NULL, NULL, NULL, 'Active', '2021-08-06 23:06:21', '2021-08-06 23:06:21'),
(175, 'Badsa Faisal', 'Mohmmadpur, Dhaka', 'badsafaisal@gmail.com', '01737988947', 'Badsa Faisal', '01736905530', 'Rosid', '013525689', '2021-12-19', '2022-05-25', '1639907469razib.png', '1639907469razib.png', 'Active', '2021-12-19 03:51:09', '2021-12-24 00:43:19'),
(180, 'Mirpur Model', 'Mirpur, Dhaka', 'mirpur@gmail.com', '01737988947', 'Rahim', '01737988947', 'Rana', '0135859698', '2021-12-19', '2021-12-30', 'No', '1639907813icon-7-removebg-preview.png', 'Active', '2020-12-19 03:56:53', '2020-12-19 03:56:53'),
(196, 'Dhaka Junior School', 'Dhaka', 'junior@gmail.com', '0124558', 'Abid Ali', '0215558', 'Abudullah', '023552', '2021-12-25', '2022-12-12', 'No Area', '1640492591Screenshot_2.png', 'Active', '2021-12-25 22:23:11', '2021-12-25 22:23:11'),
(197, 'Bangladesh School', 'Dhaka', 'bangladesh@gmail.com', '0225', 'Nahid', '02525', 'Hasan', '05258585', '2021-12-01', '2021-12-29', 'Dhaka', '1640531910home-map.png', 'Active', '2021-12-26 09:18:30', '2021-12-26 09:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`, `login_time`, `logout_time`) VALUES
('jvngFREilqu29dG4uUsHSGRiIWCrbhjzwmCHM7PY', 624, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', 'YTo5OntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0ODoiaHR0cDovL2xvY2FsaG9zdC91ay1zY2hvb2wvcHVibGljL3BvcnRhbC9tZXNzYWdlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6ImhaUzN3N1RUMlBUWklqUGlxMHprc2lrMG1kVlRsN3VoY1RKZVpqVFciO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjYyNDtzOjU6ImVtYWlsIjtzOjE1OiJiYWJhckBnbWFpbC5jb20iO3M6MTA6Imxhc3RfbG9naW4iO047czoxNjoicmVwb3J0X3NjaG9vbF9pZCI7aToxOTY7czoxMDoic3R1ZGVudF9ubyI7czo5OiIxOTYyMTAwOTMiO3M6MTM6InByZV9sb2dpbl91cmwiO3M6Njg6Imh0dHA6Ly9sb2NhbGhvc3QvdWstc2Nob29sL3B1YmxpYy9hZG1pbi9zdWJqZWN0LWFzc2lnbm1lbnQvdW5kZWZpbmVkIjt9', 1640781109, '2021-12-29 12:21:36', NULL);

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
(9, '15921009', 'asdf', 'asdfasdf@gmail.com', '0222525', 'Mahen', 'Uddin', NULL, '2021-08-11', 'She-Male', 'asdf', '025558', 'sadfasd@gmail.com', NULL, 'Active', '159', 11, '2020-08-16 02:57:25', '2021-08-16 03:16:11'),
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
(76, '159210076', 'Dhaka', 'srrd@gmail.com', '012558', 'der', 'fder', NULL, '2021-09-01', 'Male', 'sadfd', 'rrfr', 'rtsr@gmail.com', NULL, 'Active', '159', 1, '2021-09-23 03:48:41', '2020-09-23 03:48:41'),
(77, '159210077', 'sadf', 'mainsed@gmail.com', '0122', 'ereqr', 'ddf', NULL, '2021-09-08', 'Male', 'drr', '05588', 'dsaas@gmail.com', NULL, 'Active', '159', 1, '2021-09-24 21:37:56', '2021-09-24 21:37:56'),
(78, '159210078', 'Dhaka', 'arif@gmail.com', '0173798', 'Arif', 'Hossain', NULL, '2021-10-07', 'Male', 'Rony', '01255', 'rony@gmail.com', NULL, 'Active', '159', 2, '2021-10-04 03:26:47', '2021-10-04 03:44:55'),
(79, '159210079', 'Dhaka', 'jamal@gmail.com', '0525855', 'Jamal', 'Khan', NULL, '2021-10-06', 'Male', 'Josim', '0526585', 'josim@gmail.com', NULL, 'Active', '159', 2, '2021-10-04 04:03:03', '2021-10-04 04:04:09'),
(80, '159210080', 'Dhaka', 'uzzal@gmail.com', '012555', 'uzzal', 'Khan', NULL, '2021-10-05', 'Male', 'sdfd', '025555', 'mailW@gmail.com', NULL, 'Active', '159', 2, '2021-10-04 04:10:34', '2021-10-04 04:15:41'),
(81, '159210081', 'DhkA', 'sumon@gmail.com', '02555', 'Sumon', 'Fahim', NULL, '2021-07-05', 'Male', 'ASDFAD', '025558', 'SDE@GMAIL.COM', NULL, 'Active', '159', 4, '2021-10-04 05:43:58', '2021-10-04 06:02:41'),
(82, '159210082', 'sadf', 'mamaun@gmail.com', '0122', 'Baby', 'Khan', NULL, '2021-11-04', 'Male', 'sdaf', '02355', 'asdfasdf@gmail.com', 'asdf', 'Active', '159', 3, '2021-11-18 01:02:48', '2021-11-28 00:53:59'),
(83, '159210083', 'Dhaka', 'rajib@gmail.com', '0125', 'Rajib', 'hasan', NULL, '2021-12-08', 'Male', 'Habibur Rahman', '025585', 'habis@gmail.com', 'sadf', 'Active', '159', 1, '2021-12-04 00:29:16', '2021-12-04 00:29:16'),
(86, '159210086', 'asdf', 'gtadsf@gmail.com', '0555', 'asd', 'rtrg', 'asdf', '2021-12-07', 'Male', 'dsfasd', '05588', 'adfgeewwghh@gmail.com', 'sdf', 'Active', '159', 3, '2021-12-04 00:45:17', '2021-12-04 00:45:17'),
(87, '159210087', 'asdf', 'mklasdf@gmail.com', '021556', 'tutkiasdf', 'asdf', 'sdaf', '2021-12-08', 'Male', 'asdfasd', '0255', 'jots@gmail.com', 'asdf', 'Active', '159', 1, '2021-12-04 01:34:49', '2021-12-04 01:34:49'),
(88, '159210088', 'Dhaka', 'toda@gmail.com', '01225555', 'now', 'asdf', 'sadf', '2021-11-30', 'Male', 'adsfasd', '02555', 'madsf@gmail.com', 'asdf sdf', 'Active', '159', 1, '2021-12-04 01:39:39', '2021-12-04 01:39:39'),
(89, '159210089', 'asdf', 'prothom@gmail.com', '02858589', 'Prothom', 'hossain', NULL, '2021-12-09', 'Male', 'josim', '0255552', 'josim@gmail.com', 'sadf', 'Active', '159', 3, '2021-12-04 06:27:39', '2021-12-11 01:03:34'),
(91, '159210091', 'dfa', 'maisdf@gmail.com', '0555', 'asdf', 'adfsf', 'adf', '2021-12-16', 'Male', 'sdrsd', '0525', 'sdfsd@gmail.com', 'sdf', 'Active', '159', 1, '2021-12-24 13:11:52', '2021-12-24 13:11:52'),
(92, '196210092', 'Dhaka', 'imaulhaq@gmail.com', '01252525', 'Ima', 'ul', 'Haq', '2014-09-24', 'Male', 'Hamid Hossain', '0124578', 'hamidhossain@gmail.com', 'No', 'Active', '196', 1, '2021-12-25 22:35:05', '2021-12-25 22:35:05'),
(93, '196210093', 'Dhaka', 'babar@gmail.com', '01258885', 'Babar', 'Azam', NULL, '2010-07-28', 'Male', 'Abul Aziz', '0235689', 'abdul@gmail.com', 'No', 'Active', '196', 3, '2021-12-25 22:40:57', '2021-12-25 22:40:57'),
(94, '196210094', 'Dhaka', 'rezwan@gmail.com', '026988558', 'Mohammad', 'Rezwan', NULL, '2014-05-26', 'Male', 'Rabiul Islam', '0124578', 'rabiul@gmail.com', 'NB', 'Active', '196', 4, '2021-12-25 22:46:21', '2021-12-25 22:46:21'),
(95, '196210095', 'Dhaka', 'fakhar@gmail.com', '0258369', 'Fakhar', 'Zaman', NULL, '1984-08-08', 'Male', 'Mobarak Hossain', '0214578', 'mobarak@gmail.com', 'No', 'Active', '196', 3, '2021-12-25 22:48:47', '2021-12-25 22:48:47'),
(96, '196210096', 'Dhaka', 'asraful@gmail.com', '01225455858', 'Md', 'Asraful', NULL, '2021-12-08', 'Male', 'Azgar ALi', '036985', 'azgar@gmail.com', 'No', 'Active', '196', 4, '2021-12-25 22:50:06', '2021-12-25 23:35:50'),
(97, '196210097', 'Dhaka', 'sakib@gmail.com', '01255', 'Sakib', 'Al', 'Hasan', '2021-12-01', 'Male', 'Hasib', '015585', 'hasiburs@gmail.com', 'No', 'Active', '196', 4, '2021-12-26 09:13:45', '2021-12-26 09:13:45');

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
(91, 4, 81, 'Active', '2021-10-04 06:02:41', '2021-10-04 06:02:41'),
(92, 3, 82, 'Active', '2021-11-18 01:02:48', '2021-11-18 01:02:48'),
(93, 1, 83, 'Active', '2021-12-04 00:29:16', '2021-12-04 00:29:16'),
(96, 3, 86, 'Active', '2021-12-04 00:45:17', '2021-12-04 00:45:17'),
(97, 1, 87, 'Active', '2021-12-04 01:34:49', '2021-12-04 01:34:49'),
(98, 1, 88, 'Active', '2021-12-04 01:39:39', '2021-12-04 01:39:39'),
(99, 1, 89, 'Inactive', '2021-12-04 06:27:39', '2021-12-11 01:03:34'),
(100, 3, 89, 'Active', '2021-12-11 01:03:34', '2021-12-11 01:03:34'),
(102, 1, 91, 'Active', '2021-12-24 13:11:52', '2021-12-24 13:11:52'),
(103, 1, 92, 'Active', '2021-12-25 22:35:05', '2021-12-25 22:35:05'),
(104, 3, 93, 'Active', '2021-12-25 22:40:57', '2021-12-25 22:40:57'),
(105, 4, 94, 'Active', '2021-12-25 22:46:21', '2021-12-25 22:46:21'),
(106, 3, 95, 'Active', '2021-12-25 22:48:47', '2021-12-25 22:48:47'),
(107, 4, 96, 'Active', '2021-12-25 22:50:06', '2021-12-25 22:50:06'),
(108, 4, 97, 'Active', '2021-12-26 09:13:45', '2021-12-26 09:13:45');

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
(248, 74, 81, 'Active', '2021-10-04 06:02:41', '2021-10-04 06:02:41'),
(249, 63, 82, 'Active', '2021-11-18 01:02:48', '2021-11-18 01:02:48'),
(250, 64, 82, 'Active', '2021-11-18 01:02:48', '2021-11-18 01:02:48'),
(251, 65, 82, 'Active', '2021-11-18 01:02:48', '2021-11-18 01:02:48'),
(252, 66, 82, 'Active', '2021-11-18 01:02:48', '2021-11-18 01:02:48'),
(253, 67, 82, 'Active', '2021-11-18 01:02:48', '2021-11-18 01:02:48'),
(254, 60, 83, 'Active', '2021-12-04 00:29:16', '2021-12-04 00:29:16'),
(255, 61, 83, 'Active', '2021-12-04 00:29:16', '2021-12-04 00:29:16'),
(256, 62, 83, 'Active', '2021-12-04 00:29:16', '2021-12-04 00:29:16'),
(267, 63, 86, 'Active', '2021-12-04 00:45:17', '2021-12-04 00:45:17'),
(268, 64, 86, 'Active', '2021-12-04 00:45:17', '2021-12-04 00:45:17'),
(269, 65, 86, 'Active', '2021-12-04 00:45:17', '2021-12-04 00:45:17'),
(270, 66, 86, 'Active', '2021-12-04 00:45:17', '2021-12-04 00:45:17'),
(271, 67, 86, 'Active', '2021-12-04 00:45:17', '2021-12-04 00:45:17'),
(272, 60, 87, 'Active', '2021-12-04 01:34:49', '2021-12-04 01:34:49'),
(273, 61, 87, 'Active', '2021-12-04 01:34:49', '2021-12-04 01:34:49'),
(274, 62, 87, 'Active', '2021-12-04 01:34:49', '2021-12-04 01:34:49'),
(275, 60, 88, 'Active', '2021-12-04 01:39:39', '2021-12-04 01:39:39'),
(276, 61, 88, 'Active', '2021-12-04 01:39:39', '2021-12-04 01:39:39'),
(277, 62, 88, 'Active', '2021-12-04 01:39:39', '2021-12-04 01:39:39'),
(278, 60, 89, 'Inactive', '2021-12-04 06:27:39', '2021-12-04 06:27:39'),
(279, 61, 89, 'Inactive', '2021-12-04 06:27:39', '2021-12-04 06:27:39'),
(280, 62, 89, 'Inactive', '2021-12-04 06:27:39', '2021-12-04 06:27:39'),
(281, 65, 89, 'Active', '2021-12-11 01:03:34', '2021-12-11 01:03:34'),
(282, 66, 89, 'Active', '2021-12-11 01:03:34', '2021-12-11 01:03:34'),
(283, 67, 89, 'Active', '2021-12-11 01:03:34', '2021-12-11 01:03:34'),
(287, 60, 91, 'Active', '2021-12-24 13:11:52', '2021-12-24 13:11:52'),
(288, 61, 91, 'Active', '2021-12-24 13:11:52', '2021-12-24 13:11:52'),
(289, 62, 91, 'Active', '2021-12-24 13:11:52', '2021-12-24 13:11:52'),
(290, 60, 92, 'Active', '2021-12-25 22:35:05', '2021-12-25 22:35:05'),
(291, 61, 92, 'Active', '2021-12-25 22:35:05', '2021-12-25 22:35:05'),
(292, 62, 92, 'Active', '2021-12-25 22:35:05', '2021-12-25 22:35:05'),
(293, 63, 93, 'Active', '2021-12-25 22:40:57', '2021-12-25 22:40:57'),
(294, 64, 93, 'Active', '2021-12-25 22:40:57', '2021-12-25 22:40:57'),
(295, 65, 93, 'Active', '2021-12-25 22:40:57', '2021-12-25 22:40:57'),
(296, 66, 93, 'Active', '2021-12-25 22:40:57', '2021-12-25 22:40:57'),
(297, 67, 93, 'Active', '2021-12-25 22:40:57', '2021-12-25 22:40:57'),
(298, 53, 94, 'Active', '2021-12-25 22:46:21', '2021-12-25 22:46:21'),
(299, 54, 94, 'Active', '2021-12-25 22:46:21', '2021-12-25 22:46:21'),
(300, 55, 94, 'Active', '2021-12-25 22:46:21', '2021-12-25 22:46:21'),
(301, 68, 94, 'Active', '2021-12-25 22:46:21', '2021-12-25 22:46:21'),
(302, 69, 94, 'Active', '2021-12-25 22:46:21', '2021-12-25 22:46:21'),
(303, 70, 94, 'Active', '2021-12-25 22:46:21', '2021-12-25 22:46:21'),
(304, 71, 94, 'Active', '2021-12-25 22:46:21', '2021-12-25 22:46:21'),
(305, 72, 94, 'Active', '2021-12-25 22:46:21', '2021-12-25 22:46:21'),
(306, 73, 94, 'Active', '2021-12-25 22:46:21', '2021-12-25 22:46:21'),
(307, 74, 94, 'Active', '2021-12-25 22:46:21', '2021-12-25 22:46:21'),
(308, 63, 95, 'Active', '2021-12-25 22:48:47', '2021-12-25 22:48:47'),
(309, 64, 95, 'Active', '2021-12-25 22:48:47', '2021-12-25 22:48:47'),
(310, 65, 95, 'Active', '2021-12-25 22:48:47', '2021-12-25 22:48:47'),
(311, 66, 95, 'Active', '2021-12-25 22:48:47', '2021-12-25 22:48:47'),
(312, 67, 95, 'Active', '2021-12-25 22:48:47', '2021-12-25 22:48:47'),
(313, 53, 96, 'Active', '2021-12-25 22:50:06', '2021-12-25 22:50:06'),
(314, 54, 96, 'Active', '2021-12-25 22:50:06', '2021-12-25 22:50:06'),
(315, 55, 96, 'Active', '2021-12-25 22:50:06', '2021-12-25 22:50:06'),
(316, 68, 96, 'Active', '2021-12-25 22:50:06', '2021-12-25 22:50:06'),
(317, 69, 96, 'Active', '2021-12-25 22:50:06', '2021-12-25 22:50:06'),
(318, 70, 96, 'Active', '2021-12-25 22:50:06', '2021-12-25 22:50:06'),
(319, 71, 96, 'Active', '2021-12-25 22:50:06', '2021-12-25 22:50:06'),
(320, 72, 96, 'Active', '2021-12-25 22:50:06', '2021-12-25 22:50:06'),
(321, 73, 96, 'Active', '2021-12-25 22:50:06', '2021-12-25 22:50:06'),
(322, 74, 96, 'Active', '2021-12-25 22:50:06', '2021-12-25 22:50:06'),
(323, 53, 97, 'Active', '2021-12-26 09:13:45', '2021-12-26 09:13:45'),
(324, 54, 97, 'Active', '2021-12-26 09:13:45', '2021-12-26 09:13:45');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `dept_id` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`, `subject_details`, `status`, `created_at`, `updated_at`, `dept_id`, `created_by`) VALUES
(14, 'Rhymes', 'Rhymes', 'Active', '2021-08-14 04:34:04', '2021-08-25 22:25:17', 3, 0),
(15, 'Literacy', 'Literacy', 'Active', '2021-08-14 04:36:47', '2021-08-25 22:25:30', 3, 0),
(16, 'Mathematics', 'Mathematics', 'Active', '2021-08-14 04:37:52', '2021-08-14 04:37:52', 3, 0),
(17, 'Mathematics Assessment', 'Mathematics Assessment', 'Active', '2021-08-25 22:25:53', '2021-08-25 22:25:53', 3, 0),
(18, 'English', 'English', 'Active', '2021-08-25 22:26:13', '2021-08-25 22:26:13', 3, 0),
(19, 'English Assessment', 'English Assessment', 'Active', '2021-08-25 22:26:31', '2021-08-25 22:26:31', 3, 0),
(20, 'Science', 'Science sdfasdfasdfasd', 'Active', '2021-08-25 22:26:48', '2021-12-26 02:42:41', 3, 0),
(21, 'Math’s SATs Exam', 'Math’s SATs Exam', 'Active', '2021-08-25 22:29:00', '2021-08-25 22:29:00', 3, 0),
(22, 'English SATs Exam', 'English SATs Exam', 'Active', '2021-08-25 22:29:44', '2021-08-25 22:29:44', 3, 0),
(23, '11+ Maths', '11+ Maths', 'Active', '2021-08-25 22:30:05', '2021-08-25 22:30:05', 3, 0),
(24, '11+ English', '11+ English', 'Active', '2021-08-25 22:30:23', '2021-08-25 22:30:23', 3, 0),
(25, '11+ verbal Reasoning', '11+ verbal Reasoning', 'Active', '2021-08-25 22:30:40', '2021-08-25 22:30:40', 3, 0),
(26, '11+ Non-verbal Reasoning', '11+ Non-verbal Reasoning', 'Active', '2021-08-25 22:30:57', '2021-12-22 01:31:12', 4, 0),
(27, 'Old Math', NULL, 'Active', '2021-12-22 01:06:34', '2021-12-24 23:47:08', 3, 0),
(28, 'Maths Note', 'Details', 'Active', '2021-12-25 04:18:29', '2021-12-25 04:18:29', 3, 0),
(29, 'First', 'sdf', 'Active', '2021-12-25 04:22:52', '2021-12-25 04:22:52', 4, 0),
(30, 'asdf', 'sadf', 'Active', '2021-12-25 04:25:16', '2021-12-25 04:25:16', 3, 0),
(32, 'asdf', 'dsaf', 'Active', '2021-12-25 04:32:27', '2021-12-25 04:34:02', 4, 0);

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
(39, '159210039', 'asdf', 'nayem@gmail.com', '0525', 'Nayem', 'Hasan', NULL, '2021-08-19', 'Bangladesh', 'She-Male', 'New', 'Any', 'Part-time', '25000.00', 'asdf', 'Active', '159', '2021-08-14 05:17:02', '2021-08-14 05:17:02'),
(56, '159210056', 'Dhaka', 'uzzald@gmail.com', '01723', 'Uzzal', 'Hasan', NULL, '2021-12-15', 'Bangladeshi', 'Male', 'BBA', 'Math', 'Permanent', '12000.00', 'Details', 'Active', '159', '2021-12-15 06:45:27', '2021-12-15 06:45:27'),
(57, '196210057', 'Dhaka', 'sujon@gmail.com', '0235698', 'Sujon', 'Ahmed', NULL, '2021-11-30', 'Bangladeshi', 'Male', 'BBA', 'Math', 'Permanent', '25000.00', NULL, 'Active', '196', '2021-12-25 23:19:10', '2021-12-25 23:19:10'),
(58, '196210058', 'Dhaka', 'hkrana@gmail.com', '0124575', 'H.K', 'Rana', NULL, '2021-12-01', 'Bangladeshi', 'Male', 'MBA', 'Business Study', 'Permanent', '15000.00', 'No', 'Active', '196', '2021-12-25 23:23:12', '2021-12-25 23:23:12'),
(59, '196210059', 'Dhaka', 'nazmul@gmail.com', '0326598', 'Nazmul', 'Hasan', NULL, '2021-11-30', 'Bangladeshi', 'Male', 'M.sc', 'Math', 'Permanent', '28000.00', NULL, 'Active', '196', '2021-12-25 23:25:29', '2021-12-25 23:25:29'),
(60, '196210060', 'Dhaka', 'harun@gmail.com', '0236598', 'Harun', 'ur', 'Rashid', '2021-12-07', 'Bangladeshi', 'Male', 'B.sc', 'English', 'Permanent', '20000.00', NULL, 'Active', '196', '2021-12-25 23:27:24', '2021-12-25 23:28:11'),
(61, '196210061', 'Dhaka', 'hanif@gmail.com', '01254855', 'Hanif', 'Hossain', NULL, '2021-12-01', 'Bangladeshi', 'Male', 'BBA', 'Finach', 'Permanent', '25000.00', 'No', 'Active', '196', '2021-12-26 09:16:07', '2021-12-26 09:16:07');

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
(19, 53, 39, 'Active', '2021-08-14 05:17:08', '2021-08-14 05:17:08'),
(20, 54, 39, 'Active', '2021-08-14 05:17:08', '2021-08-14 05:17:08'),
(21, 55, 39, 'Active', NULL, NULL),
(22, 68, 39, 'Active', NULL, NULL),
(23, 54, 56, 'Active', '2021-12-15 06:45:28', '2021-12-15 06:45:28'),
(24, 63, 56, 'Active', '2021-12-15 06:45:28', '2021-12-15 06:45:28'),
(25, 65, 57, 'Active', '2021-12-25 23:19:10', '2021-12-25 23:19:10'),
(26, 71, 57, 'Active', '2021-12-25 23:19:10', '2021-12-25 23:19:10'),
(27, 54, 58, 'Active', '2021-12-25 23:23:12', '2021-12-25 23:23:12'),
(28, 63, 58, 'Active', '2021-12-25 23:23:12', '2021-12-25 23:23:12'),
(29, 62, 58, 'Active', '2021-12-25 23:23:12', '2021-12-25 23:23:12'),
(30, 54, 59, 'Active', '2021-12-25 23:25:29', '2021-12-25 23:25:29'),
(31, 63, 59, 'Active', '2021-12-25 23:25:29', '2021-12-25 23:25:29'),
(32, 55, 60, 'Active', '2021-12-25 23:27:24', '2021-12-25 23:27:24'),
(33, 58, 60, 'Active', '2021-12-25 23:27:24', '2021-12-25 23:27:24'),
(34, 54, 61, 'Active', '2021-12-26 09:16:07', '2021-12-26 09:16:07'),
(35, 63, 61, 'Active', '2021-12-26 09:16:07', '2021-12-26 09:16:07');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `topic_name`, `topic_details`, `subject_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Math -01', 'Mathematics', 28, 'Active', '2021-12-25 04:18:29', '2021-12-25 04:18:29'),
(2, 'Math - 02', 'Mathematics Final', 28, 'Active', '2021-12-25 04:18:29', '2021-12-25 04:18:29'),
(3, 'Topics 01', 'Final Topics', 14, 'Active', '2021-12-25 04:19:26', '2021-12-25 04:19:26'),
(4, 'Topics - 01', 'Final', 16, 'Active', '2021-12-25 04:22:27', '2021-12-25 04:22:27'),
(5, 'Topics - 02', 'Final- 01', 16, 'Active', '2021-12-25 04:22:28', '2021-12-25 04:22:28'),
(6, 'sadf', 'df', 29, 'Active', '2021-12-25 04:22:52', '2021-12-25 04:22:52'),
(7, 'sadf', 'sadf', 30, 'Active', '2021-12-25 04:25:16', '2021-12-25 04:25:16'),
(8, 'sadf', 'dfa', 32, 'Active', '2021-12-25 04:32:28', '2021-12-25 04:32:28'),
(9, 'Topics 01', 'Now', 20, 'Active', '2021-12-26 00:07:17', '2021-12-26 00:07:17'),
(10, 'Topics -01', 'Now', 21, 'Active', '2021-12-26 00:07:40', '2021-12-26 00:07:40'),
(11, 'Topics', 'Now', 15, 'Active', '2021-12-26 00:07:52', '2021-12-26 00:07:52'),
(12, 'Topics', 'Now', 19, 'Active', '2021-12-26 00:08:10', '2021-12-26 00:08:10');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_login_time` time DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `user_profile_image`, `contact_no`, `remarks`, `school_id`, `status`, `type`, `typable_id`, `login_status`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `total_login_time`, `user_name`) VALUES
(1, 'Momit', 'Hasan', 'momit@technolife.ee', '1616308888.jpg', '74645564654', NULL, NULL, 1, 'Admin', NULL, 1, '$2y$10$zFj3Z1gRkrbgUvoNXF6cXubdAp8p54yy4kRgJ421RQNqllCEvHJka', NULL, NULL, '2021-06-07 06:50:15', '2021-09-21 03:32:28', '00:00:00', 'momit'),
(29, 'Rajib', 'Hasan', 'razibeee2014@gmail.com', NULL, '456456456', NULL, NULL, 1, 'Admin', NULL, 1, '$2y$10$xiIT/Up4SJplowJwho3IS.wlgqELz2pw9FcxQyzMox9SrZC.cCFqa', NULL, NULL, '2021-07-14 06:43:53', '2021-12-29 01:16:01', '00:00:00', 'razib_01'),
(490, 'Khan', NULL, 'mohmmadpur@gmail.com', NULL, '02528588', 'logo.jpg', 159, 1, 'School', NULL, 1, '$2y$10$b7bqWYdXdsFxyPdk.PteBuOU55hcMKFkD08m/RBCE4ugrWtdNkIH.', NULL, NULL, '2021-08-07 05:03:48', '2021-12-26 12:15:46', '04:27:53', 'mohammadpur'),
(491, 'new', 'Boys', 'boys@gmail.com', NULL, '02525', NULL, 159, 1, 'School', NULL, 1, '$2y$10$jP3.9WMTPGvSg2AcuK9Zhec0qTMvB6vIXyW/CbxaDl2idIWEz2VPW', NULL, NULL, '2021-08-07 05:04:47', '2021-12-24 22:35:02', '00:00:00', 'boys'),
(492, 'Fahim', 'Korim', 'fahim@gmail.com', NULL, '02555', NULL, NULL, 1, 'Admin', NULL, 0, '$2y$10$ovGVQH9WU3ZKVxsIxcFc1edNWC.10MEmMNry/Z.PnxPdGNEBwC3XS', NULL, NULL, '2021-08-07 05:05:30', '2021-08-07 05:05:30', '00:00:00', ''),
(493, 'Robin', '', 'bengol@gmail.com', NULL, '05255', NULL, 160, 1, 'School', NULL, 1, '$2y$10$3Yzuf8.h22vdks3gTi3UhezdAzRJKybS6VXEHMfvI8vDRM688wAGq', NULL, NULL, '2021-08-07 05:06:21', '2021-12-14 00:53:32', '00:00:00', 'bengol'),
(523, 'Rana', NULL, 'rana@gmail.com', '1632204262pro.png', '012544', NULL, 159, 1, 'Student', 8, 1, '$2y$10$Xy2V2fwt4n4fmkukBXwdNuKiFpeBOv3lNy/SQV5ZPnuNrv3BG5sfy', NULL, NULL, '2021-08-14 04:44:19', '2021-12-24 22:35:02', '00:00:00', 'rana'),
(524, 'Nayem', NULL, 'nayem@gmail.com', NULL, '0525', 'asdf', 159, 1, 'Teacher', 39, 1, '$2y$10$Io6r6SMCs3BTbIr4XJUIH.m9xQX1DXE0e/Tz0sFqNNsw376muHzTy', NULL, NULL, '2021-08-14 05:17:02', '2021-12-24 22:35:02', '10:00:00', 'nayem'),
(525, 'asdf', NULL, 'asdfasdf@gmail.com', NULL, '0222525', NULL, 159, 1, 'Student', 9, 0, '$2y$10$jIQKy3jDiu0r7xwr6ZV3/unz8biI5KubG31i0F3.Rt6mqUkDUPcmC', NULL, NULL, '2021-08-16 02:57:25', '2021-12-24 22:35:02', '120:00:00', ''),
(526, 'asdf', 'asdf', 'asdfasd@gmail.com', NULL, '025566', 'sadff', 159, 1, 'Student', 10, 0, '$2y$10$64MY2Lybfv.hd05S3yUB8e40C1/n.noMlHSLWDlCY4rDa5AccLLMq', NULL, NULL, '2021-08-16 06:45:02', '2021-12-24 22:35:02', '10:05:00', ''),
(527, 'Kamal', 'First', 'mohammad@gmail.com', NULL, '012477', 'sdfdsaf', 159, 1, 'Student', 11, 0, '$2y$10$l7xK3CZz5497uqtE.bd5t.uvSmhgq7dcVYf2P89o7tH.n47Hdbv2a', NULL, NULL, '2021-09-05 07:33:45', '2021-12-24 22:35:02', '11:11:00', ''),
(528, 'Abir', '', 'abir@gmail.com', '1630912648logo-finals.png', '12345678', NULL, 159, 1, 'Student', 12, 0, '$2y$10$EKKVSPRzfpNRHHEE5JO6tu/pE7uH5FtR2fcX8cnjw5gbHhpXqvpw6', NULL, NULL, '2021-09-06 01:17:28', '2021-12-24 22:35:02', '00:00:00', ''),
(529, 'Rabbi', NULL, 'rabbi@gmail.com', NULL, '0125', NULL, 159, 1, 'Student', 13, 1, '$2y$10$5bvFspAZCNwndJl2TysG9e31kZBjTvXasHnsAd/yE82GztUkQSbH.', NULL, NULL, '2021-09-06 01:19:11', '2021-12-24 22:35:02', '838:59:59', 'rabbi'),
(530, 'Anis', NULL, 'anis@gmail.com', NULL, '03698', NULL, 159, 1, 'Student', 14, 0, '$2y$10$fKbkQA9vo4Y0wJ23eOGmvevdma/OqKy7yFJfZf39Yz1tOWQbIYZKu', NULL, NULL, '2021-09-06 01:20:15', '2021-12-24 22:35:02', '00:00:00', ''),
(531, 'Rajaul', NULL, 'rajaul@gmail.com', NULL, '25896', NULL, 159, 1, 'Student', 15, 0, '$2y$10$4vhfElaY3rkxGDZXc5ZBx.BV3A53QHL4awIq6GknAKejIGgqviAIW', NULL, NULL, '2021-09-06 01:21:23', '2021-12-24 22:35:02', '00:00:00', ''),
(532, 'Nasif', NULL, 'nasif@gmail.com', NULL, '0255', NULL, 159, 1, 'Student', 16, 0, '$2y$10$wf5E0U6Ft9.mOEVGDk87eu3PaTlIEzps3ogATouprLz6b8ECq7FXi', NULL, NULL, '2021-09-06 13:40:45', '2021-12-24 22:35:02', '00:00:00', ''),
(534, 'Masud', '', 'masud@gmail.com', '1632208172razib.png', '01737988947', 'dd', 159, 1, 'Student', 18, 0, '$2y$10$blRd45IU5fbrc4.It1QH3e0yUdMNjWTpaYAkjDiT1XVZfahRHpGWi', NULL, NULL, '2021-09-21 01:09:32', '2021-12-24 22:35:02', '00:00:00', ''),
(535, 'err', '', 'titas@gmail.com', NULL, '01254858', 'ee', 159, 1, 'Student', 19, 0, '$2y$10$TRyMwShuBvop58Ef9nOmPOb9X52Lrl7mcMUrW5QGXVEQ1E7CxrWq.', NULL, NULL, '2021-09-21 01:20:51', '2021-12-24 22:35:02', '00:00:00', ''),
(536, 'Gazi', '', 'gazi@gmail.com', NULL, '01225', 'rr', 159, 1, 'Student', 20, 0, '$2y$10$FYJ.1pZu7/JpJv.PTVldMuv1Kx1pxmVjaOJ65/b7AJ4LukEyZ/UnW', NULL, NULL, '2021-09-21 01:31:04', '2021-12-24 22:35:02', '00:00:00', ''),
(537, 'Asif', '', 'asif@gmail.com', NULL, '01255', 'Ro', 159, 1, 'Student', 21, 0, '$2y$10$40bmlJSOe3ZOtOY5HtMQMudSn9Y5yMdqBTFK6Q1aMkAaURcDP5EaW', NULL, NULL, '2021-09-21 02:00:53', '2021-12-24 22:35:02', '00:00:00', ''),
(538, 'Sabbir', '', 'sabbir@gmail.com', NULL, '01245', 'er', 159, 1, 'Student', 22, 0, '$2y$10$w.qRZHeYbdp7Pc8.6oUYWOSEAbo3tHsexJkHJar1tjo8H.abjZP0W', NULL, NULL, '2021-09-21 02:06:35', '2021-12-24 22:35:02', '00:00:00', ''),
(539, 'Mamun', '', 'mamun@gmail.com', NULL, '01255', 'tw', 159, 1, 'Student', 23, 0, '$2y$10$gC1iR8ERnQ62hwREjWyrxe5i0/Q27h.bD4Ax3P0dmoT7VDnjxFGWW', NULL, NULL, '2021-09-21 05:47:59', '2021-12-24 22:35:02', '00:00:00', ''),
(540, 'Rabi', '', 'robij@gmail.com', NULL, '0122', 're', 159, 1, 'Student', 24, 0, '$2y$10$ODv1hrDpp9kBU2N4HHpL8O.7JUPGEWoHQsEbDE4kPFHm/yjlyuWFa', NULL, NULL, '2021-09-21 06:09:40', '2021-12-24 22:35:02', '00:00:00', ''),
(543, 'Kamal', '', 'kam@gmail.com', NULL, '012555', NULL, 159, 1, 'Student', 27, 0, '$2y$10$Uf0bRShXrejt9.JqeDiWoOibTq0W/UtnV2XMOUmNF8W0gjzJliNe6', NULL, NULL, '2021-09-22 02:56:49', '2021-12-24 22:35:02', '00:00:00', ''),
(544, 'Sadik', 'e', 'tit@gmail.com', NULL, '02322', NULL, 159, 1, 'Student', 28, 0, '$2y$10$e4HJ8tLqlmH0E8xg.16I/e9VPF9NJ7ghscqQvYVVDQh3EFQf/ywmS', NULL, NULL, '2021-09-22 03:02:56', '2021-12-24 22:35:02', '00:00:00', ''),
(545, 'Kitu', '', 'jamin@gmail.com', NULL, '0173989', NULL, 159, 1, 'Student', 29, 0, '$2y$10$ffvqqH.FJSEzQo3Tp6myPuamV7z7p14nsAkYC3O9XwjARgp1pUkKu', NULL, NULL, '2021-09-22 03:07:41', '2021-12-24 22:35:02', '00:00:00', ''),
(547, 'Hamid', '', 'hamid@gmail.com', NULL, '025858', NULL, 159, 1, 'Student', 31, 0, '$2y$10$EBa7ORHQdtckOz8BotLOsecgG88u8wRRNnLwZnR8Ak2niA7k1Mqxe', NULL, NULL, '2021-09-22 03:24:17', '2021-12-24 22:35:02', '00:00:00', ''),
(548, 'babla', '', 'babla@gmail.com', NULL, '02588', NULL, 159, 1, 'Student', 32, 0, '$2y$10$GvAxOLsn2wv2yssnCzGv1O38a0JBqyza19kt7FryY.7fpO4BfCdom', NULL, NULL, '2021-09-22 03:30:16', '2021-12-24 22:35:02', '00:00:00', ''),
(549, 'ee', '', 'non@gmail.com', NULL, '02525', NULL, 159, 1, 'Student', 33, 0, '$2y$10$V6uHqyGPrBIZL6qV64tDMudEGtDRhf9az/W8d9cnR4Ow9Dhb1kqoG', NULL, NULL, '2021-09-22 03:34:42', '2021-12-24 22:35:02', '00:00:00', ''),
(550, 'razzak', '', 'razzak@gmail.com', NULL, '01255', NULL, 159, 1, 'Student', 34, 0, '$2y$10$dA7wXTSeFNHSN0jdMf9TzuvvKfHEGp7JfyxzrJqaukmYvY.rILTmC', NULL, NULL, '2021-09-22 03:56:06', '2021-12-24 22:35:02', '00:00:00', ''),
(551, 'Jisan', NULL, 'jisan@gmail.com', NULL, '0125', NULL, 159, 1, 'Student', 35, 0, '$2y$10$/Ewo7CbbkVcI9ErpHARDZOLZqulGoVgwFcx45Yh2iSLiLw7L/NaQy', NULL, NULL, '2021-09-22 04:52:22', '2021-12-24 22:35:02', '00:00:00', ''),
(552, 'Monir', '', 'monir@gmail.com', NULL, '05255', NULL, 159, 1, 'Student', 36, 0, '$2y$10$WBbueWj8EBCHz868SLXdoug17bOzkLbC0HuoEdISWBU5xY1JcWHnu', NULL, NULL, '2021-09-22 10:04:17', '2021-12-24 22:35:02', '00:00:00', ''),
(553, 'Naimur', '', 'nahid@gmail.com', NULL, '0525585', NULL, 159, 1, 'Student', 37, 0, '$2y$10$jFpriKqbFexDCnm9FtGhz.lQ8ICxcvf4frGBTS4z6xieNOEwMfq.m', NULL, NULL, '2021-09-22 10:06:57', '2021-12-24 22:35:02', '00:00:00', ''),
(554, 'nakib', '', 'nakib@gmail.com', NULL, '011255', NULL, 159, 1, 'Student', 38, 0, '$2y$10$CzIzCCic2FjVtQ1WoNJlIuXJ0O25lnv5.B9gdVott8u9rZ2OpjSIG', NULL, NULL, '2021-09-22 10:12:12', '2021-12-24 22:35:02', '00:00:00', ''),
(557, 'Fahims', '', 'fahims@gmail.com', NULL, '025585', NULL, 159, 1, 'Student', 41, 0, '$2y$10$j.apL7sQ1sK2y8QnEVWH6uw0tinDoM4gnGd7Cq3Ny2PB1TzegGSJ6', NULL, NULL, '2021-09-22 11:57:29', '2021-12-24 22:35:02', '00:00:00', ''),
(558, 'gias', '', 'gias@gamil.com', NULL, '122', NULL, 159, 1, 'Student', 42, 0, '$2y$10$nijMMgHXJNCHeWHnR9zJ1OnO8C24PuwIGkq5..5Ir.E9aLSiSFQPm', NULL, NULL, '2021-09-22 12:01:41', '2021-12-24 22:35:02', '00:00:00', ''),
(561, 'rsadf', '', 'asdfaseeed@gmail.com', NULL, '000255', NULL, 159, 1, 'Student', 45, 0, '$2y$10$wyfO1n6IWzZiufqdIGaTQ.K.o7VTWOsOCdcd7ZKpesrz8sz3.0H4.', NULL, NULL, '2021-09-22 12:14:22', '2021-12-24 22:35:02', '00:00:00', ''),
(562, 'asdf', '', 'eati@gmail.com', NULL, '052585', NULL, 159, 1, 'Student', 46, 0, '$2y$10$3MSBm3FZFaOP49L7acyr3OYRv377gbltoqGCDmapaNYbI3DGhxvq.', NULL, NULL, '2021-09-22 12:16:08', '2021-12-24 22:35:02', '00:00:00', ''),
(566, 'fdg', '', 'asdfasdfrer@gmail.com', NULL, '02122', NULL, 159, 1, 'Student', 70, 0, '$2y$10$HE6BVFMjdW2yqy07UGlxgeIHzQN3IvN2I/gq0dlv60bkFBTxYaPaC', NULL, NULL, '2021-09-22 12:37:04', '2021-12-24 22:35:02', '00:00:00', ''),
(567, 'Notun', NULL, 'notun@gmail.com', NULL, '02565658', NULL, 159, 1, 'Student', 71, 0, '$2y$10$9lhgwTbDMRBomBgsJ8XNWOQQdG67fBRKfr01/XmCzXsjAOSik0.dG', NULL, NULL, '2021-09-22 12:52:38', '2021-12-24 22:35:02', '00:00:00', ''),
(568, 'adfasd', '', 'trrr@gmail.com', NULL, '01222', NULL, 159, 1, 'Student', 72, 0, '$2y$10$lKq8B6px17amlqJ69e7PKeaFiIQ3leKnMPCaE.hCu2UdNp8C6Fji2', NULL, NULL, '2021-09-22 13:57:10', '2021-12-24 22:35:02', '00:00:00', ''),
(569, 'sadsad', '', 'laboni@gmail.com', NULL, '0125858', NULL, 159, 1, 'Student', 73, 0, '$2y$10$GawDUFl5PCeAXtq/YobZuOsKvgFyYgVDhIPvzH2r6JVs01jRv9HZe', NULL, NULL, '2021-09-22 14:04:05', '2021-12-24 22:35:02', '00:00:00', ''),
(570, 'asdfdff', '', 'drrdf@gmail.com', NULL, '02555', NULL, 159, 1, 'Student', 74, 0, '$2y$10$50slck0FxYh0.SZQhO29yu.e1q/aXvxKIWKVyeRXZkBU9GS1cysMm', NULL, NULL, '2021-09-22 14:35:53', '2021-12-24 22:35:02', '00:00:00', ''),
(571, 'asdfsda', NULL, 'hghh@gmail.com', NULL, '05255', NULL, 159, 1, 'Student', 75, 0, '$2y$10$dIcAHGOoyCkg6LiGR9az7ubdYeRS9.MwVv/ASZtwdabdTZ8Oif0R2', NULL, NULL, '2021-09-22 14:38:40', '2021-12-24 22:35:02', '00:00:00', ''),
(572, 'der', NULL, 'srrd@gmail.com', NULL, '012558', NULL, 159, 1, 'Student', 76, 0, '$2y$10$RpxjgMGUA20tgSnLiGaJI.vRSe6mqMfjrgO.fUFJA4Xw32gEi42uq', NULL, NULL, '2021-09-23 03:48:41', '2021-12-24 22:35:02', '00:00:00', ''),
(573, 'ereqr', NULL, 'mainsed@gmail.com', NULL, '0122', NULL, 159, 1, 'Student', 77, 0, '$2y$10$q9QCX4D9SmQo74Y9zGIi2ez0Y2FraqkMNZ59P8uv0PKOWEVo66pAS', NULL, NULL, '2021-09-24 21:37:56', '2021-12-24 22:35:02', '00:00:00', ''),
(574, 'Arif', NULL, 'arif@gmail.com', NULL, '0173798', NULL, 159, 1, 'Student', 78, 1, '$2y$10$9wXTQdOmDEvJBhCrN23KPuPN9BA1.hLmC8aP1fd.W4xYOxpwKTwaq', NULL, NULL, '2021-10-04 03:26:47', '2021-12-24 22:35:02', '00:00:00', ''),
(575, 'Jamal', NULL, 'jamal@gmail.com', NULL, '0525855', NULL, 159, 1, 'Student', 79, 0, '$2y$10$hz/TzFwhL0upLp2cRKfgKOvQfQDsK3wf0Si7U7TWy3ZBg5Jd.ovaa', NULL, NULL, '2021-10-04 04:03:03', '2021-12-24 22:35:02', '00:00:00', ''),
(576, 'uzzal', NULL, 'uzzal@gmail.com', NULL, '012555', NULL, 159, 1, 'Student', 80, 0, '$2y$10$RZMS.XkkalaFleZ5ERM6gOaUHH8THOyis2bXTwdXDb7WPu0zt2x.C', NULL, NULL, '2021-10-04 04:10:34', '2021-12-24 22:35:02', '00:00:00', ''),
(577, 'Sumon', NULL, 'sumon@gmail.com', NULL, '02555', NULL, 159, 1, 'Student', 81, 1, '$2y$10$WTzz5ihL822AbJVF73p04Omdhhjy3zUKxc6aOrinkxjDyUcphNWK2', NULL, NULL, '2021-10-04 05:43:59', '2021-12-26 12:11:40', '00:00:00', 'sumon'),
(578, 'Baby', NULL, 'mamaun@gmail.com', '1637218968194874947_2975730842701787_4319653882291682097_n.jpg', '0122', 'asdf', 159, 1, 'Student', 82, 0, '$2y$10$HUFHyA9cFvQ61IfF1z5VtOXJ1HSzJ7pnfhiPAWntqB.bXTDvvYsMK', NULL, NULL, '2021-11-18 01:02:48', '2021-12-24 22:35:02', '10:21:24', ''),
(579, 'Rajib', '', 'rajib@gmail.com', NULL, '0125', 'sadf', 159, 1, 'Student', 83, 0, '$2y$10$CWoh1.zBjmyiyZK9FhS0kOpFiYX/gphFQI2LizPVExOUioh9JNn/e', NULL, NULL, '2021-12-04 00:29:16', '2021-12-24 22:35:02', '10:21:25', ''),
(580, 'asd', 'asdf', 'gtadsf@gmail.com', NULL, '0555', 'sdf', 159, 1, 'Student', 86, 0, '$2y$10$i9l4xZOgSXubuoyyFLsZE.3n6p0GRkurk54/2W3Y5lCWcXT57ZG9m', NULL, NULL, '2021-12-04 00:45:17', '2021-12-24 22:35:02', '10:21:27', ''),
(581, 'tutkiasdf', 'sdaf', 'mklasdf@gmail.com', NULL, '021556', 'asdf', 159, 1, 'Student', 87, 0, '$2y$10$/Q7aWRc8QwyTJMBdA4DfouAtDbjmtGphC2yAr5Mq9flL4bWnAl3J2', NULL, NULL, '2021-12-04 01:34:49', '2021-12-24 22:35:02', '10:21:26', ''),
(582, 'now', 'sadf', 'toda@gmail.com', NULL, '01225555', 'asdf sdf', 159, 1, 'Student', 88, 0, '$2y$10$nzZw9kIC0eiRCVQotmw.IO4ClANYYH27IRbZwV2tpBcdBBLuCl8Wy', NULL, NULL, '2021-12-04 01:39:39', '2021-12-24 22:35:02', '10:21:28', ''),
(583, 'Prothom', NULL, 'prothom@gmail.com', NULL, '02858589', 'sadf', 159, 1, 'Student', 89, 1, '$2y$10$l7LrTBLJ/.ZRRWAl0sLtc.48WEdZKuHLy8gWW7h/5IdxEMXxCRSjy', NULL, NULL, '2021-12-04 06:27:39', '2021-12-24 22:35:02', '10:21:26', 'prothom'),
(592, 'Dhaka', 'Dilli', 'dilli@gmail.com', NULL, '0125', 'sdf', NULL, 1, 'Admin', NULL, 0, '$2y$10$wJ/s0m7WLSzV7c.91YV82OkzJ0f82OXQ17gHtvshtQgpHYO5/Z3l6', NULL, NULL, '2021-12-05 05:25:03', '2021-12-19 04:32:44', '10:21:30', 'dhaka'),
(593, 'Uzzal', '', 'uzzald@gmail.com', '1639572327my-pic.jpg', '01723', 'Details', 159, 1, 'Teacher', 56, 1, '$2y$10$2nm97veFWsefSVGjxKbzx.dX4GeGlWMy78387MWkmi9kBwTvZvLBy', NULL, NULL, '2021-12-15 06:45:27', '2021-12-24 22:35:02', '10:21:29', 'uzzald'),
(605, 'Badsa Faisal', NULL, 'badsafaisal@gmail.com', NULL, '01737988947', '1639907469razib.png', 175, 1, 'School', NULL, 0, '$2y$10$nrweW2pC97YOUZICPokF1.HqSLxMnKoHNoNFjm.4eGthspd3BC0Cu', NULL, NULL, '2021-12-19 03:51:09', '2021-12-24 00:43:30', '10:21:29', 'Badsaha'),
(606, 'Rahim', NULL, 'mirpur@gmail.com', NULL, '01737988947', 'No', 180, 1, 'School', NULL, 0, '$2y$10$antvZHvvPDSxnr5ZbXCjlOfoa9erWRpzFs3WtQ1oSwBVKBrP04ZGS', NULL, NULL, '2021-12-19 03:56:53', '2021-12-24 13:29:28', '10:21:31', 'mirpurmodels'),
(620, 'asdf', 'adf', 'maisdf@gmail.com', '1640373112my-pic.jpg', '0555', 'sdf', 159, 1, 'Student', 91, 0, '$2y$10$GS2yVsJolTnJpvu/J1QP7eQoGZm0hMVsgwV27kOQCKI26145n.w22', NULL, NULL, '2021-12-24 13:11:52', '2021-12-24 22:35:02', NULL, 'mamu'),
(622, 'Abid Ali', '', 'junior@gmail.com', NULL, '0124558', 'No Area', 196, 1, 'School', 196, 1, '$2y$10$Ta6PokDjjds9S5Dqt8Qn6.5J6jHywuK9wqR/GQXsdZo9tiwUTxWju', NULL, NULL, '2021-12-25 22:23:11', '2021-12-29 06:21:00', NULL, 'juniorschool'),
(623, 'Ima', 'Haq', 'imaulhaq@gmail.com', '16404933065.jpg', '01252525', 'No', 196, 1, 'Student', 92, 0, '$2y$10$OibHU9whFAv.eaUK8d7EQO89poWSfUhWWor1sfv.klHjn1O64VFpS', NULL, NULL, '2021-12-25 22:35:06', '2021-12-25 22:35:06', NULL, 'imamul'),
(624, 'Babar', '', 'babar@gmail.com', '16404936574.jpg', '01258885', 'No', 196, 1, 'Student', 93, 0, '$2y$10$BRbXxC7G9DIDgmAEQW9YgeW/HNC2BwieF.Kw5JTvrWYkkLz4cHBcW', NULL, NULL, '2021-12-25 22:40:57', '2021-12-29 06:21:36', NULL, 'babar'),
(625, 'Mohammad', '', 'rezwan@gmail.com', '16404939813.jpg', '026988558', 'NB', 196, 1, 'Student', 94, 0, '$2y$10$WC2I7jZgAB5w9aP4uXRrBe.haAYg8UGigAtc0dAO0Lwf/KW8wEWqy', NULL, NULL, '2021-12-25 22:46:21', '2021-12-25 22:46:21', NULL, 'rezwan'),
(626, 'Fakhar', '', 'fakhar@gmail.com', '16404941272.jpg', '0258369', 'No', 196, 1, 'Student', 95, 1, '$2y$10$MJJ2YpkaQ.Yj8CGYut9xGOeXTYuEE7RJA6CnGlViwYnofZddP5v4i', NULL, NULL, '2021-12-25 22:48:47', '2021-12-26 01:39:07', NULL, 'fakhar'),
(627, 'Md', NULL, 'asraful@gmail.com', '16404942061.jpg', '01225455858', 'No', 196, 1, 'Student', 96, 0, '$2y$10$Lzk73tTQ7c0/UyzcJWNjiOyGaL9aZ0uMA/2NEmbw6WbE37/1tGTxW', NULL, NULL, '2021-12-25 22:50:06', '2021-12-26 02:26:29', NULL, 'asraful'),
(628, 'Sujon', '', 'sujon@gmail.com', '16404959506.jpg', '0235698', NULL, 196, 1, 'Teacher', 57, 0, '$2y$10$es36kyrPLN8aZT9DThqT8OOEEzjSqXMwEidsXYqWJBCRwdb8rXg8.', NULL, NULL, '2021-12-25 23:19:10', '2021-12-25 23:19:10', NULL, 'sujon'),
(629, 'H.K', '', 'hkrana@gmail.com', '16404961927.jpg', '0124575', 'No', 196, 1, 'Teacher', 58, 0, '$2y$10$80b/caI9yAhusUU3zkZcCu4WZvPzZxBc/T7M/TIdyZUyH2wD1pnDi', NULL, NULL, '2021-12-25 23:23:12', '2021-12-25 23:23:12', NULL, 'hkrana'),
(630, 'Nazmul', '', 'nazmul@gmail.com', '16404963298.jpg', '0326598', NULL, 196, 1, 'Teacher', 59, 0, '$2y$10$BogkZiBMN/T3.Ww72KIDyex8wDrI9A4yP8igHox7Hmfd8u/c/BJ3a', NULL, NULL, '2021-12-25 23:25:29', '2021-12-25 23:25:29', NULL, 'nazmul'),
(631, 'Harun', 'Rashid', 'harun@gmail.com', '16404964449.jpg', '0236598', NULL, 196, 1, 'Teacher', 60, 1, '$2y$10$zS4BomeiodtuEFzWJy7MdehDY95w9OtUpATVAoiwnjeo.BHrvBg02', NULL, NULL, '2021-12-25 23:27:24', '2021-12-26 21:57:19', NULL, 'harun'),
(632, 'Sakib', 'Hasan', 'sakib@gmail.com', '16405316261.jpg', '01255', 'No', 196, 1, 'Student', 97, 0, '$2y$10$jJq/O8beEjyzN0nN81dhQul54YfQQuVBsTX4TTTsOi0zboN9Bg0ZO', NULL, NULL, '2021-12-26 09:13:46', '2021-12-26 09:13:46', NULL, 'sakib'),
(633, 'Hanif', '', 'hanif@gmail.com', '1640531767homepage-map-Lar05-10-08-58-12-scaled.jpg', '01254855', 'No', 196, 1, 'Teacher', 61, 0, '$2y$10$VmnggPdaAEoIpa9fwH20peUhqe13BpsR8bb6DV4av38OAPEa7iXW.', NULL, NULL, '2021-12-26 09:16:07', '2021-12-26 09:16:07', NULL, 'hanif'),
(634, 'Nahid', '', 'bangladesh@gmail.com', NULL, '0225', 'Dhaka', 197, 1, 'School', 197, 0, '$2y$10$ppPcKS2JipRkRylcNnOIhuz5w281Cw1G81369jf3bqQxPWRPKTfUa', NULL, NULL, '2021-12-26 09:18:31', '2021-12-26 09:18:31', NULL, 'bangladeshschool');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` bigint(20) NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:active,0:in-active',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1:Admin, 2:School, 3:Teacher, 4:Student',
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
(574, 577, 29, 1, '2021-10-04 05:43:59', '2021-10-04 05:43:59'),
(575, 578, 29, 1, '2021-11-18 01:02:48', '2021-11-18 01:02:48'),
(576, 579, 29, 1, '2021-12-04 00:29:16', '2021-12-04 00:29:16'),
(577, 580, 29, 1, '2021-12-04 00:45:17', '2021-12-04 00:45:17'),
(578, 581, 29, 1, '2021-12-04 01:34:49', '2021-12-04 01:34:49'),
(579, 582, 29, 1, '2021-12-04 01:39:39', '2021-12-04 01:39:39'),
(580, 583, 29, 1, '2021-12-04 06:27:39', '2021-12-04 06:27:39'),
(588, 592, 1, 1, '2021-12-05 05:25:03', '2021-12-05 05:25:03'),
(589, 593, 27, 1, '2021-12-15 06:45:27', '2021-12-15 06:45:27'),
(601, 605, 2, 1, '2021-12-19 03:51:09', '2021-12-19 03:51:09'),
(602, 606, 2, 1, '2021-12-19 03:56:53', '2021-12-19 03:56:53'),
(613, 620, 29, 1, '2021-12-24 13:11:52', '2021-12-24 13:11:52'),
(615, 622, 2, 1, '2021-12-25 22:23:11', '2021-12-25 22:23:11'),
(616, 623, 29, 1, '2021-12-25 22:35:06', '2021-12-25 22:35:06'),
(617, 624, 29, 1, '2021-12-25 22:40:57', '2021-12-25 22:40:57'),
(618, 625, 29, 1, '2021-12-25 22:46:21', '2021-12-25 22:46:21'),
(619, 626, 29, 1, '2021-12-25 22:48:47', '2021-12-25 22:48:47'),
(620, 627, 29, 1, '2021-12-25 22:50:06', '2021-12-25 22:50:06'),
(621, 628, 27, 1, '2021-12-25 23:19:10', '2021-12-25 23:19:10'),
(622, 629, 27, 1, '2021-12-25 23:23:12', '2021-12-25 23:23:12'),
(623, 630, 27, 1, '2021-12-25 23:25:29', '2021-12-25 23:25:29'),
(624, 631, 27, 1, '2021-12-25 23:27:24', '2021-12-25 23:27:24'),
(625, 632, 29, 1, '2021-12-26 09:13:46', '2021-12-26 09:13:46'),
(626, 633, 27, 1, '2021-12-26 09:16:07', '2021-12-26 09:16:07'),
(627, 634, 2, 1, '2021-12-26 09:18:31', '2021-12-26 09:18:31');

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
(377, 27, 104, 1, '2021-08-01 01:05:16', '2021-08-01 01:05:16'),
(378, 29, 104, 0, '2021-08-01 01:05:16', '2021-08-01 01:05:16'),
(379, 1, 105, 1, '2021-08-01 01:05:38', '2021-08-01 01:05:38'),
(380, 2, 105, 1, '2021-08-01 01:05:38', '2021-08-01 01:05:38'),
(381, 27, 105, 1, '2021-08-01 01:05:38', '2021-08-01 01:05:38'),
(382, 29, 105, 0, '2021-08-01 01:05:38', '2021-08-01 01:05:38'),
(383, 1, 106, 1, '2021-08-01 01:05:55', '2021-08-01 01:05:55'),
(384, 2, 106, 1, '2021-08-01 01:05:55', '2021-08-01 01:05:55'),
(385, 27, 106, 1, '2021-08-01 01:05:55', '2021-08-01 01:05:55'),
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
(413, 27, 113, 1, '2021-08-09 02:06:23', '2021-08-09 02:06:23'),
(414, 29, 113, 0, '2021-08-09 02:06:23', '2021-08-09 02:06:23'),
(415, 1, 114, 1, '2021-08-09 02:06:55', '2021-08-09 02:06:55'),
(416, 2, 114, 1, '2021-08-09 02:06:55', '2021-08-09 02:06:55'),
(417, 27, 114, 1, '2021-08-09 02:06:55', '2021-08-09 02:06:55'),
(418, 29, 114, 0, '2021-08-09 02:06:55', '2021-08-09 02:06:55'),
(419, 1, 115, 1, '2021-08-09 02:07:12', '2021-08-09 02:07:12'),
(420, 2, 115, 1, '2021-08-09 02:07:12', '2021-08-09 02:07:12'),
(421, 27, 115, 1, '2021-08-09 02:07:12', '2021-08-09 02:07:12'),
(422, 29, 115, 0, '2021-08-09 02:07:12', '2021-08-09 02:07:12'),
(423, 1, 116, 1, '2021-08-11 16:00:16', '2021-08-11 16:00:16'),
(424, 2, 116, 1, '2021-08-11 16:00:16', '2021-08-11 16:00:16'),
(425, 27, 116, 1, '2021-08-11 16:00:16', '2021-08-11 16:00:16'),
(426, 29, 116, 0, '2021-08-11 16:00:16', '2021-08-11 16:00:16'),
(427, 1, 117, 1, '2021-08-11 16:00:50', '2021-08-11 16:00:50'),
(428, 2, 117, 1, '2021-08-11 16:00:50', '2021-08-11 16:00:50'),
(429, 27, 117, 1, '2021-08-11 16:00:50', '2021-08-11 16:00:50'),
(430, 29, 117, 0, '2021-08-11 16:00:50', '2021-08-11 16:00:50'),
(431, 1, 118, 1, '2021-08-11 16:01:22', '2021-08-11 16:01:22'),
(432, 2, 118, 1, '2021-08-11 16:01:22', '2021-08-11 16:01:22'),
(433, 27, 118, 1, '2021-08-11 16:01:22', '2021-08-11 16:01:22'),
(434, 29, 118, 0, '2021-08-11 16:01:22', '2021-08-11 16:01:22'),
(435, 1, 119, 1, '2021-08-25 04:00:11', '2021-08-25 04:00:11'),
(436, 2, 119, 1, '2021-08-25 04:00:11', '2021-08-25 04:00:11'),
(437, 27, 119, 1, '2021-08-25 04:00:11', '2021-08-25 04:00:11'),
(438, 29, 119, 0, '2021-08-25 04:00:11', '2021-08-25 04:00:11'),
(439, 1, 120, 1, '2021-08-25 04:00:59', '2021-08-25 04:00:59'),
(440, 2, 120, 1, '2021-08-25 04:00:59', '2021-08-25 04:00:59'),
(441, 27, 120, 1, '2021-08-25 04:00:59', '2021-08-25 04:00:59'),
(442, 29, 120, 0, '2021-08-25 04:00:59', '2021-08-25 04:00:59'),
(443, 1, 121, 1, '2021-08-25 04:01:19', '2021-08-25 04:01:19'),
(444, 2, 121, 1, '2021-08-25 04:01:19', '2021-08-25 04:01:19'),
(445, 27, 121, 1, '2021-08-25 04:01:19', '2021-08-25 04:01:19'),
(446, 29, 121, 0, '2021-08-25 04:01:19', '2021-08-25 04:01:19'),
(447, 1, 122, 1, '2021-08-25 04:01:31', '2021-08-25 04:01:31'),
(448, 2, 122, 1, '2021-08-25 04:01:31', '2021-08-25 04:01:31'),
(449, 27, 122, 1, '2021-08-25 04:01:31', '2021-08-25 04:01:31'),
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
(467, 1, 127, 0, '2021-08-25 04:06:51', '2021-08-25 04:06:51'),
(468, 2, 127, 1, '2021-08-25 04:06:51', '2021-08-25 04:06:51'),
(469, 27, 127, 1, '2021-08-25 04:06:51', '2021-08-25 04:06:51'),
(470, 29, 127, 1, '2021-08-25 04:06:51', '2021-08-25 04:06:51'),
(471, 1, 128, 1, '2021-08-25 04:07:07', '2021-08-25 04:07:07'),
(472, 2, 128, 1, '2021-08-25 04:07:07', '2021-08-25 04:07:07'),
(473, 27, 128, 1, '2021-08-25 04:07:07', '2021-08-25 04:07:07'),
(474, 29, 128, 1, '2021-08-25 04:07:07', '2021-08-25 04:07:07'),
(475, 1, 129, 1, '2021-08-25 04:07:19', '2021-08-25 04:07:19'),
(476, 2, 129, 1, '2021-08-25 04:07:19', '2021-08-25 04:07:19'),
(477, 27, 129, 1, '2021-08-25 04:07:19', '2021-08-25 04:07:19'),
(478, 29, 129, 0, '2021-08-25 04:07:19', '2021-08-25 04:07:19'),
(479, 1, 130, 1, '2021-08-25 04:07:32', '2021-08-25 04:07:32'),
(480, 2, 130, 1, '2021-08-25 04:07:32', '2021-08-25 04:07:32'),
(481, 27, 130, 1, '2021-08-25 04:07:32', '2021-08-25 04:07:32'),
(482, 29, 130, 0, '2021-08-25 04:07:32', '2021-08-25 04:07:32'),
(483, 1, 131, 1, '2021-08-26 01:57:22', '2021-08-26 01:57:22'),
(484, 2, 131, 1, '2021-08-26 01:57:22', '2021-08-26 01:57:22'),
(485, 27, 131, 1, '2021-08-26 01:57:22', '2021-08-26 01:57:22'),
(486, 29, 131, 0, '2021-08-26 01:57:22', '2021-08-26 01:57:22'),
(487, 1, 132, 1, '2021-08-26 07:01:51', '2021-08-26 07:01:51'),
(488, 2, 132, 1, '2021-08-26 07:01:51', '2021-08-26 07:01:51'),
(489, 27, 132, 1, '2021-08-26 07:01:51', '2021-08-26 07:01:51'),
(490, 29, 132, 0, '2021-08-26 07:01:51', '2021-08-26 07:01:51'),
(491, 1, 133, 1, '2021-08-26 07:02:02', '2021-08-26 07:02:02'),
(492, 2, 133, 1, '2021-08-26 07:02:02', '2021-08-26 07:02:02'),
(493, 27, 133, 1, '2021-08-26 07:02:02', '2021-08-26 07:02:02'),
(494, 29, 133, 0, '2021-08-26 07:02:02', '2021-08-26 07:02:02'),
(495, 1, 134, 1, '2021-08-26 07:02:15', '2021-08-26 07:02:15'),
(496, 2, 134, 1, '2021-08-26 07:02:15', '2021-08-26 07:02:15'),
(497, 27, 134, 1, '2021-08-26 07:02:15', '2021-08-26 07:02:15'),
(498, 29, 134, 0, '2021-08-26 07:02:15', '2021-08-26 07:02:15'),
(499, 1, 135, 1, '2021-09-06 15:13:40', '2021-09-06 15:13:40'),
(500, 2, 135, 0, '2021-09-06 15:13:40', '2021-09-06 15:13:40'),
(501, 27, 135, 1, '2021-09-06 15:13:40', '2021-09-06 15:13:40'),
(502, 29, 135, 0, '2021-09-06 15:13:40', '2021-09-06 15:13:40'),
(503, 1, 136, 1, '2021-09-06 15:14:04', '2021-09-06 15:14:04'),
(504, 2, 136, 0, '2021-09-06 15:14:04', '2021-09-06 15:14:04'),
(505, 27, 136, 1, '2021-09-06 15:14:04', '2021-09-06 15:14:04'),
(506, 29, 136, 0, '2021-09-06 15:14:04', '2021-09-06 15:14:04'),
(507, 1, 137, 1, '2021-09-06 15:14:17', '2021-09-06 15:14:17'),
(508, 2, 137, 0, '2021-09-06 15:14:17', '2021-09-06 15:14:17'),
(509, 27, 137, 1, '2021-09-06 15:14:17', '2021-09-06 15:14:17'),
(510, 29, 137, 0, '2021-09-06 15:14:17', '2021-09-06 15:14:17'),
(511, 1, 138, 1, '2021-09-06 15:14:30', '2021-09-06 15:14:30'),
(512, 2, 138, 0, '2021-09-06 15:14:30', '2021-09-06 15:14:30'),
(513, 27, 138, 1, '2021-09-06 15:14:30', '2021-09-06 15:14:30'),
(514, 29, 138, 0, '2021-09-06 15:14:30', '2021-09-06 15:14:30'),
(515, 1, 139, 1, '2021-09-08 23:40:28', '2021-09-08 23:40:28'),
(516, 2, 139, 1, '2021-09-08 23:40:28', '2021-09-08 23:40:28'),
(517, 27, 139, 1, '2021-09-08 23:40:28', '2021-09-08 23:40:28'),
(518, 29, 139, 0, '2021-09-08 23:40:28', '2021-09-08 23:40:28'),
(519, 1, 140, 1, '2021-09-09 00:09:36', '2021-09-09 00:09:36'),
(520, 2, 140, 1, '2021-09-09 00:09:36', '2021-09-09 00:09:36'),
(521, 27, 140, 1, '2021-09-09 00:09:36', '2021-09-09 00:09:36'),
(522, 29, 140, 0, '2021-09-09 00:09:36', '2021-09-09 00:09:36'),
(523, 1, 141, 1, '2021-09-09 00:10:44', '2021-09-09 00:10:44'),
(524, 2, 141, 1, '2021-09-09 00:10:44', '2021-09-09 00:10:44'),
(525, 27, 141, 1, '2021-09-09 00:10:44', '2021-09-09 00:10:44'),
(526, 29, 141, 0, '2021-09-09 00:10:44', '2021-09-09 00:10:44'),
(527, 1, 142, 1, '2021-09-09 00:11:07', '2021-09-09 00:11:07'),
(528, 2, 142, 1, '2021-09-09 00:11:07', '2021-09-09 00:11:07'),
(529, 27, 142, 1, '2021-09-09 00:11:07', '2021-09-09 00:11:07'),
(530, 29, 142, 0, '2021-09-09 00:11:07', '2021-09-09 00:11:07'),
(531, 1, 143, 1, '2021-11-08 00:45:15', '2021-11-08 00:45:15'),
(532, 2, 143, 1, '2021-11-08 00:45:15', '2021-11-08 00:45:15'),
(533, 27, 143, 1, '2021-11-08 00:45:15', '2021-11-08 00:45:15'),
(534, 29, 143, 0, '2021-11-08 00:45:15', '2021-11-08 00:45:15'),
(535, 1, 144, 1, '2021-11-21 21:55:53', '2021-11-21 21:55:53'),
(536, 2, 144, 1, '2021-11-21 21:55:53', '2021-11-21 21:55:53'),
(537, 27, 144, 1, '2021-11-21 21:55:53', '2021-11-21 21:55:53'),
(538, 29, 144, 0, '2021-11-21 21:55:53', '2021-11-21 21:55:53'),
(539, 1, 145, 1, '2021-11-21 22:00:07', '2021-11-21 22:00:07'),
(540, 2, 145, 1, '2021-11-21 22:00:07', '2021-11-21 22:00:07'),
(541, 27, 145, 1, '2021-11-21 22:00:07', '2021-11-21 22:00:07'),
(542, 29, 145, 0, '2021-11-21 22:00:07', '2021-11-21 22:00:07'),
(543, 1, 146, 1, '2021-11-21 22:00:36', '2021-11-21 22:00:36'),
(544, 2, 146, 1, '2021-11-21 22:00:36', '2021-11-21 22:00:36'),
(545, 27, 146, 1, '2021-11-21 22:00:36', '2021-11-21 22:00:36'),
(546, 29, 146, 0, '2021-11-21 22:00:36', '2021-11-21 22:00:36'),
(547, 1, 147, 1, '2021-11-21 22:01:15', '2021-11-21 22:01:15'),
(548, 2, 147, 1, '2021-11-21 22:01:15', '2021-11-21 22:01:15'),
(549, 27, 147, 1, '2021-11-21 22:01:15', '2021-11-21 22:01:15'),
(550, 29, 147, 0, '2021-11-21 22:01:15', '2021-11-21 22:01:15'),
(551, 1, 148, 1, '2021-11-30 01:00:48', '2021-11-30 01:00:48'),
(552, 2, 148, 1, '2021-11-30 01:00:48', '2021-11-30 01:00:48'),
(553, 27, 148, 1, '2021-11-30 01:00:48', '2021-11-30 01:00:48'),
(554, 29, 148, 0, '2021-11-30 01:00:48', '2021-11-30 01:00:48'),
(555, 1, 149, 1, '2021-11-30 06:40:48', '2021-11-30 06:40:48'),
(556, 2, 149, 1, '2021-11-30 06:40:48', '2021-11-30 06:40:48'),
(557, 27, 149, 1, '2021-11-30 06:40:48', '2021-11-30 06:40:48'),
(558, 29, 149, 0, '2021-11-30 06:40:48', '2021-11-30 06:40:48'),
(559, 1, 150, 1, '2021-12-01 01:22:13', '2021-12-01 01:22:13'),
(560, 2, 150, 1, '2021-12-01 01:22:13', '2021-12-01 01:22:13'),
(561, 27, 150, 1, '2021-12-01 01:22:13', '2021-12-01 01:22:13'),
(562, 29, 150, 0, '2021-12-01 01:22:13', '2021-12-01 01:22:13'),
(563, 1, 151, 1, '2021-12-01 05:20:54', '2021-12-01 05:20:54'),
(564, 2, 151, 1, '2021-12-01 05:20:54', '2021-12-01 05:20:54'),
(565, 27, 151, 1, '2021-12-01 05:20:54', '2021-12-01 05:20:54'),
(566, 29, 151, 0, '2021-12-01 05:20:54', '2021-12-01 05:20:54'),
(567, 1, 152, 1, '2021-12-01 22:45:37', '2021-12-01 22:45:37'),
(568, 2, 152, 1, '2021-12-01 22:45:37', '2021-12-01 22:45:37'),
(569, 27, 152, 1, '2021-12-01 22:45:37', '2021-12-01 22:45:37'),
(570, 29, 152, 0, '2021-12-01 22:45:37', '2021-12-01 22:45:37'),
(571, 1, 153, 1, '2021-12-02 01:20:52', '2021-12-02 01:20:52'),
(572, 2, 153, 1, '2021-12-02 01:20:52', '2021-12-02 01:20:52'),
(573, 27, 153, 1, '2021-12-02 01:20:52', '2021-12-02 01:20:52'),
(574, 29, 153, 0, '2021-12-02 01:20:52', '2021-12-02 01:20:52'),
(575, 1, 154, 1, '2021-12-05 23:45:43', '2021-12-05 23:45:43'),
(576, 2, 154, 1, '2021-12-05 23:45:43', '2021-12-05 23:45:43'),
(577, 27, 154, 1, '2021-12-05 23:45:43', '2021-12-05 23:45:43'),
(578, 29, 154, 0, '2021-12-05 23:45:43', '2021-12-05 23:45:43'),
(579, 1, 155, 1, '2021-12-05 23:46:55', '2021-12-05 23:46:55'),
(580, 2, 155, 1, '2021-12-05 23:46:55', '2021-12-05 23:46:55'),
(581, 27, 155, 1, '2021-12-05 23:46:55', '2021-12-05 23:46:55'),
(582, 29, 155, 0, '2021-12-05 23:46:55', '2021-12-05 23:46:55'),
(583, 1, 156, 1, '2021-12-06 23:28:09', '2021-12-06 23:28:09'),
(584, 2, 156, 1, '2021-12-06 23:28:09', '2021-12-06 23:28:09'),
(585, 27, 156, 1, '2021-12-06 23:28:09', '2021-12-06 23:28:09'),
(586, 29, 156, 1, '2021-12-06 23:28:09', '2021-12-06 23:28:09'),
(587, 1, 157, 1, '2021-12-08 01:22:53', '2021-12-08 01:22:53'),
(588, 2, 157, 1, '2021-12-08 01:22:53', '2021-12-08 01:22:53'),
(589, 27, 157, 1, '2021-12-08 01:22:53', '2021-12-08 01:22:53'),
(590, 29, 157, 0, '2021-12-08 01:22:53', '2021-12-08 01:22:53'),
(591, 1, 158, 1, '2021-12-08 22:21:50', '2021-12-08 22:21:50'),
(592, 2, 158, 1, '2021-12-08 22:21:50', '2021-12-08 22:21:50'),
(593, 27, 158, 1, '2021-12-08 22:21:50', '2021-12-08 22:21:50'),
(594, 29, 158, 0, '2021-12-08 22:21:50', '2021-12-08 22:21:50'),
(595, 1, 159, 1, '2021-12-14 22:15:56', '2021-12-14 22:15:56'),
(596, 2, 159, 0, '2021-12-14 22:15:56', '2021-12-14 22:15:56'),
(597, 27, 159, 0, '2021-12-14 22:15:56', '2021-12-14 22:15:56'),
(598, 29, 159, 0, '2021-12-14 22:15:56', '2021-12-14 22:15:56'),
(599, 1, 160, 1, '2021-12-14 22:17:11', '2021-12-14 22:17:11'),
(600, 2, 160, 0, '2021-12-14 22:17:11', '2021-12-14 22:17:11'),
(601, 27, 160, 0, '2021-12-14 22:17:11', '2021-12-14 22:17:11'),
(602, 29, 160, 0, '2021-12-14 22:17:11', '2021-12-14 22:17:11'),
(603, 1, 161, 1, '2021-12-14 22:17:25', '2021-12-14 22:17:25'),
(604, 2, 161, 0, '2021-12-14 22:17:25', '2021-12-14 22:17:25'),
(605, 27, 161, 0, '2021-12-14 22:17:25', '2021-12-14 22:17:25'),
(606, 29, 161, 0, '2021-12-14 22:17:25', '2021-12-14 22:17:25'),
(607, 1, 162, 1, '2021-12-14 22:17:38', '2021-12-14 22:17:38'),
(608, 2, 162, 0, '2021-12-14 22:17:38', '2021-12-14 22:17:38'),
(609, 27, 162, 0, '2021-12-14 22:17:38', '2021-12-14 22:17:38'),
(610, 29, 162, 0, '2021-12-14 22:17:38', '2021-12-14 22:17:38'),
(611, 1, 163, 1, '2021-12-21 22:56:00', '2021-12-21 22:56:00'),
(612, 2, 163, 1, '2021-12-21 22:56:00', '2021-12-21 22:56:00'),
(613, 27, 163, 1, '2021-12-21 22:56:00', '2021-12-21 22:56:00'),
(614, 29, 163, 0, '2021-12-21 22:56:00', '2021-12-21 22:56:00'),
(615, 1, 164, 1, '2021-12-21 22:57:11', '2021-12-21 22:57:11'),
(616, 2, 164, 1, '2021-12-21 22:57:11', '2021-12-21 22:57:11'),
(617, 27, 164, 1, '2021-12-21 22:57:11', '2021-12-21 22:57:11'),
(618, 29, 164, 0, '2021-12-21 22:57:11', '2021-12-21 22:57:11'),
(619, 1, 165, 1, '2021-12-21 22:57:37', '2021-12-21 22:57:37'),
(620, 2, 165, 1, '2021-12-21 22:57:37', '2021-12-21 22:57:37'),
(621, 27, 165, 1, '2021-12-21 22:57:37', '2021-12-21 22:57:37'),
(622, 29, 165, 0, '2021-12-21 22:57:37', '2021-12-21 22:57:37'),
(623, 1, 166, 1, '2021-12-21 22:57:55', '2021-12-21 22:57:55'),
(624, 2, 166, 1, '2021-12-21 22:57:55', '2021-12-21 22:57:55'),
(625, 27, 166, 1, '2021-12-21 22:57:55', '2021-12-21 22:57:55'),
(626, 29, 166, 0, '2021-12-21 22:57:55', '2021-12-21 22:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `login_time` timestamp NULL DEFAULT NULL,
  `logout_time` timestamp NULL DEFAULT NULL,
  `total_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id`, `session_id`, `user_id`, `login_time`, `logout_time`, `total_time`, `created_at`, `updated_at`) VALUES
(1, 'pdTvVr4jRxnkMpFn2bam0KYPcBS7ScSvPeds4k2T', 490, '2021-12-13 21:42:19', '2021-12-23 15:55:27', '2021-12-23 15:55:28', '2021-12-13 21:42:19', '2021-12-13 21:42:19'),
(2, '22CT0fBDEOvJFsFRlFrPht63eNh8XEr4M1hydQRX', 490, '2021-12-13 23:23:20', '2021-12-13 23:30:08', '2021-12-13 18:06:48', '2021-12-13 23:23:20', '2021-12-13 23:30:08'),
(3, '7uJ84kc7xamBPizhFvAs5OaEkdsvS1Qw2Poiy6Vg', 29, '2021-12-13 23:30:13', '2021-12-13 23:31:01', '2021-12-13 18:00:48', '2021-12-13 23:30:13', '2021-12-13 23:31:01'),
(4, '4nVsZ55QIi8TKiJdDGQPlvQGLhJsrpAHP0rYFNJq', 490, '2021-12-13 23:31:10', '2021-12-13 23:43:38', '2021-12-13 18:12:28', '2021-12-13 23:31:10', '2021-12-13 23:43:38'),
(5, 'iQAqSzdih1OqPm7tQbUJX48wW4j4xiBdQ8Ctg3il', 29, '2021-12-13 23:43:42', '2021-12-13 23:44:01', '2021-12-13 18:00:19', '2021-12-13 23:43:42', '2021-12-13 23:44:01'),
(6, 'EAor2qk63IUslUUCMVIAa3Brz2BVGwegHNv1idzZ', 490, '2021-12-13 23:44:09', '2021-12-13 23:46:02', '2021-12-13 18:01:53', '2021-12-13 23:44:09', '2021-12-13 23:46:02'),
(7, 'h9AADDp2dUzwc0x8yKBhbWo9IM5Q8Dkb6PUpbfTG', 29, '2021-12-13 23:46:09', '2021-12-13 23:46:28', '2021-12-13 18:00:19', '2021-12-13 23:46:09', '2021-12-13 23:46:28'),
(8, 'IdigRN7fVj41EQLRmw2dVjZM2qNxsws2HGYthcZd', 490, '2021-12-13 23:46:33', '2021-12-23 15:55:29', '2021-12-23 15:55:30', '2021-12-13 23:46:33', '2021-12-13 23:46:33'),
(9, 'esZcKYyc039i5rPcr5H5eveFPiBqwhGclvgAtaBP', 490, '2021-12-14 00:05:35', '2021-12-23 15:55:30', '2021-12-23 15:55:31', '2021-12-14 00:05:35', '2021-12-14 00:05:35'),
(10, 'Nm7Clg5NSLuTMG8QqVu7ootH8g4gN2EMd8JFoZV0', 490, '2021-12-14 00:38:48', '2021-12-14 00:51:21', '2021-12-13 18:12:33', '2021-12-14 00:38:48', '2021-12-14 00:51:21'),
(11, 'RLuVCotNZA0kRJM6vupPbwlOiIQhzFPSmyNcCykU', 29, '2021-12-14 00:51:26', '2021-12-14 00:52:21', '2021-12-13 18:00:55', '2021-12-14 00:51:26', '2021-12-14 00:52:21'),
(12, 'TYRj0lS6gC7LJFjNyj3Z5I1ZvIFk2YLowqsoTyTt', 493, '2021-12-14 00:52:26', '2021-12-14 00:52:51', '2021-12-13 18:00:25', '2021-12-14 00:52:26', '2021-12-14 00:52:51'),
(13, '6O5zr3aBPhqLXRRZkTdeVCcoRjKNmm55G5jjGqnm', 493, '2021-12-14 00:52:59', '2021-12-14 00:53:32', '2021-12-13 18:00:33', '2021-12-14 00:52:59', '2021-12-14 00:53:32'),
(14, 'NvMR0qtU1x45Dof22F8lgwXhGdOto02gk2OPBOie', 490, '2021-12-14 00:54:01', '2021-12-14 01:34:15', '2021-12-13 18:40:14', '2021-12-14 00:54:01', '2021-12-14 01:34:15'),
(15, '5gyVSuKZn2xqQePp0PKO9C1TLXupO6etM5CVIeIy', 490, '2021-12-14 01:42:15', '2021-12-23 15:55:35', '2021-12-23 15:55:32', '2021-12-14 01:42:15', '2021-12-14 01:42:15'),
(16, 'RkK7VWdzYrYZLNrwztF0aspLYcJF5ItMXMc9OObv', 490, '2021-12-14 03:21:07', '2021-12-23 15:55:35', '2021-12-23 15:55:33', '2021-12-14 03:21:07', '2021-12-14 03:21:07'),
(17, '2lMjWThRfIjaAIBEl6ZBKT8N1JmZjZ4FUL18zzJZ', 490, '2021-12-14 04:47:53', '2021-12-23 15:55:36', '2021-12-23 15:55:33', '2021-12-14 04:47:53', '2021-12-14 04:47:53'),
(18, 'JHfoudPAWgpvhWzR0cYaEDISUrN0svkSJWozdOT9', 29, '2021-12-14 21:58:54', '2021-12-14 23:17:32', '2021-12-14 19:18:38', '2021-12-14 21:58:54', '2021-12-14 23:17:32'),
(19, 'BBQaMHy6gEKkMpLpat0Xa46ivVqDmY817zofHXPJ', 577, '2021-12-14 23:16:10', '2021-12-23 15:55:38', '2021-12-23 15:55:39', '2021-12-14 23:16:10', '2021-12-14 23:16:10'),
(20, 'uzkqKPQTE77hqkOc59Nf48p09xhJSBVgED2ESboe', 490, '2021-12-14 23:17:40', '2021-12-23 15:55:37', '2021-12-23 15:55:39', '2021-12-14 23:17:40', '2021-12-14 23:17:40'),
(21, 'hLu5CdHF7zUzSxzioThhWIvwrQGCX0WP1WcmVWxP', 490, '2021-12-14 23:57:22', '2021-12-14 23:58:44', '2021-12-14 18:01:22', '2021-12-14 23:57:22', '2021-12-14 23:58:44'),
(22, 'n9jPWtRGC3C2waluX1DO3aSFzPewewUHGmSs26l0', 29, '2021-12-14 23:58:50', '2021-12-23 15:55:40', '2021-12-23 15:55:41', '2021-12-14 23:58:50', '2021-12-14 23:58:50'),
(23, 'x5D3JqKU03tVhhFaqBog05lYdGEQ8cBHeHI0y28P', 490, '2021-12-15 00:00:24', '2021-12-15 00:00:37', '2021-12-14 18:00:13', '2021-12-15 00:00:24', '2021-12-15 00:00:37'),
(24, '0hvn749BqP8vQsZSRc9uPzlo99llwyL6yrWV9MJJ', 577, '2021-12-15 00:00:47', '2021-12-23 15:55:41', '2021-12-23 15:55:42', '2021-12-15 00:00:47', '2021-12-15 00:00:47'),
(25, 'emyVhBnY9oSCd6NDCU3PSATMhc1Pl7zjY4j5SgVT', 490, '2021-12-15 00:30:38', '2021-12-23 15:55:42', '2021-12-23 15:55:43', '2021-12-15 00:30:38', '2021-12-15 00:30:38'),
(26, 'kIfueLWwMGLRAN5n9kOG8eUSzswWVSvlD0lw9zRe', 490, '2021-12-15 04:07:41', '2021-12-15 04:07:52', '2021-12-14 18:00:11', '2021-12-15 04:07:41', '2021-12-15 04:07:52'),
(27, 'QkqeeI8DaRna933bYrEv9r32M30RV9vuZ6Ox5ye5', 29, '2021-12-15 04:07:57', '2021-12-15 04:24:02', '2021-12-14 18:16:05', '2021-12-15 04:07:57', '2021-12-15 04:24:02'),
(28, 'UKdtAS2zt0QnhfzoGfhY5CsPH4FNDGptCsk2jcDZ', 490, '2021-12-15 04:24:12', '2021-12-15 05:31:47', '2021-12-14 19:07:35', '2021-12-15 04:24:12', '2021-12-15 05:31:47'),
(29, '6LXZEOevPNJPLEY8P8gyvG2o5mtcepxikMkrF58m', 524, '2021-12-15 05:32:46', '2021-12-15 05:45:25', '2021-12-14 18:12:39', '2021-12-15 05:32:46', '2021-12-15 05:45:25'),
(30, '2rvKRGQRfnIOISFZuH5M2BLQ6KyRcD9MmUba8OIM', 490, '2021-12-15 05:45:30', '2021-12-15 06:01:41', '2021-12-14 18:16:11', '2021-12-15 05:45:30', '2021-12-15 06:01:41'),
(31, '0kucBbxiMOH4pdzPTz8M6PE4YQgWsPbOrCoDUHm2', 524, '2021-12-15 06:04:46', '2021-12-15 06:32:49', '2021-12-14 18:28:03', '2021-12-15 06:04:46', '2021-12-15 06:32:49'),
(32, 'KVfJb48OLvWfPodTJMQGDWaeMe9kqO5zGKDvPqVV', 490, '2021-12-15 06:32:55', '2021-12-15 06:46:28', '2021-12-14 18:13:33', '2021-12-15 06:32:55', '2021-12-15 06:46:28'),
(33, 'dMIFa95CiV5mG4AV9WoSxFnJ4I2FIx4Y3uqIZDP0', 593, '2021-12-15 06:46:35', '2021-12-23 15:55:47', '2021-12-23 15:55:45', '2021-12-15 06:46:35', '2021-12-15 06:46:35'),
(34, 'pKHrddGxV0DU0pwNtrJ76jXAJIP04vBMGh26DaX6', 490, '2021-12-15 23:12:14', '2021-12-23 15:55:47', '2021-12-23 15:55:46', '2021-12-15 23:12:14', '2021-12-15 23:12:14'),
(35, '9exCk06ep6fsOVVsODnnEuyZLVY3Ghvr5LnMKRt5', 490, '2021-12-15 23:42:03', '2021-12-16 00:40:35', '2021-12-15 18:58:32', '2021-12-15 23:42:03', '2021-12-16 00:40:35'),
(36, 'WV7nl5lWBcFsgHxR5879s5JfeFKQOMHobMbCFtHY', 490, '2021-12-17 12:49:08', '2021-12-17 13:01:40', '2021-12-16 18:12:32', '2021-12-17 12:49:08', '2021-12-17 13:01:40'),
(37, 'Rohz59ecVXWE6p0WVEqRAcWPAlN8b1JwiwEObJ4x', 577, '2021-12-17 13:01:50', '2021-12-17 13:02:21', '2021-12-16 18:00:31', '2021-12-17 13:01:50', '2021-12-17 13:02:21'),
(38, '4SQXDETcDyV4GcmzW63Px6GxRey8rQlLDx3YsXCJ', 490, '2021-12-17 13:02:26', '2021-12-17 13:04:10', '2021-12-16 18:01:44', '2021-12-17 13:02:26', '2021-12-17 13:04:10'),
(39, 'MisKYaQRoyXavDwm95bXMhGxJXMgQRF5BwCGM3tN', 577, '2021-12-17 13:04:15', '2021-12-17 13:06:37', '2021-12-16 18:02:22', '2021-12-17 13:04:15', '2021-12-17 13:06:37'),
(40, 'AOqIFsn49DllvQXs0umPhrXc1F7aCS7HJBhHzedL', 490, '2021-12-17 13:06:59', '2021-12-17 13:07:38', '2021-12-16 18:00:39', '2021-12-17 13:06:59', '2021-12-17 13:07:38'),
(41, 'guPp8ETIgcK0AQI8ADf3MySFD1ajhZVLUbhmAWV8', 577, '2021-12-17 13:07:46', '2021-12-17 13:08:10', '2021-12-16 18:00:24', '2021-12-17 13:07:46', '2021-12-17 13:08:10'),
(42, 'cTJkUw2GpftpD4RhXCdmsYGI12kFTeWf4Po0TOVX', 490, '2021-12-17 21:28:20', '2021-12-17 21:42:00', '2021-12-17 18:13:40', '2021-12-17 21:28:20', '2021-12-17 21:42:00'),
(43, 'WC82AaYdNe8oniuvkjM26ZCkrbfNENGm1j0KbTyp', 577, '2021-12-17 21:42:11', '2021-12-17 21:43:15', '2021-12-17 18:01:04', '2021-12-17 21:42:11', '2021-12-17 21:43:15'),
(44, 'MvZgpOblWsMUVn4yNSCiPBN6uJd63fkYtXwezitn', 523, '2021-12-17 21:44:24', '2021-12-17 21:44:55', '2021-12-17 18:00:31', '2021-12-17 21:44:24', '2021-12-17 21:44:55'),
(45, 'HmPBmF68gDL5sh5YLdEsxZNO5HXsoVJXnVfwYxIj', 490, '2021-12-17 21:45:02', '2021-12-17 23:11:35', '2021-12-17 19:26:33', '2021-12-17 21:45:02', '2021-12-17 23:11:35'),
(46, 'LM3Zm8Zk88EE1NG0FgQYhGlX0r4RrgXyifdqMsSt', 490, '2021-12-17 21:45:55', '2021-12-17 21:46:00', '2021-12-17 18:00:05', '2021-12-17 21:45:55', '2021-12-17 21:46:00'),
(47, 'VCVXPneA7x5NVq7vimeSeyWDGXDGO9MN8rOnW3Zr', 523, '2021-12-17 21:46:06', '2021-12-18 01:12:24', '2021-12-17 21:26:18', '2021-12-17 21:46:06', '2021-12-18 01:12:24'),
(48, 'ZRV8FJ3Ufud2E6HX3l80uONCsLbc8zHi3I0cfIiB', 593, '2021-12-17 23:12:21', '2021-12-17 23:27:21', '2021-12-17 18:15:00', '2021-12-17 23:12:21', '2021-12-17 23:27:21'),
(49, 'Yuqm6oyltRp2Fl2qghW18a1cjhihwreIBV5KdXNi', 490, '2021-12-17 23:27:28', '2021-12-23 15:55:51', '2021-12-23 15:55:50', '2021-12-17 23:27:28', '2021-12-17 23:27:28'),
(50, '4KW25DcS4lPEWXnGCEjBXJa5Xqce1bD7v5JwN9ZY', 490, '2021-12-18 00:32:54', '2021-12-18 02:27:36', '2021-12-17 19:54:42', '2021-12-18 00:32:54', '2021-12-18 02:27:36'),
(51, 'F9cBKcEeh3mmizeoCHHW3bRqMnGXNZ5b7vlCDCMy', 593, '2021-12-18 01:12:46', '2021-12-18 01:14:59', '2021-12-17 18:02:13', '2021-12-18 01:12:46', '2021-12-18 01:14:59'),
(52, 'ne7JA3ELwlgR0egB06imDioKXUJDWmVnWVoDTvrX', 577, '2021-12-18 01:15:05', '2021-12-18 01:15:32', '2021-12-17 18:00:27', '2021-12-18 01:15:05', '2021-12-18 01:15:32'),
(53, '8guGlFbh57irIJ46IyLojGyH1PezPSixcRDpr3sj', 490, '2021-12-18 01:15:44', '2021-12-23 15:55:52', '2021-12-23 15:55:52', '2021-12-18 01:15:44', '2021-12-18 01:15:44'),
(54, 'WI0L9k5wUdG83TYAmvTkamxdHqjlbkwuHDTrtOZL', 490, '2021-12-18 02:06:18', '2021-12-18 02:08:25', '2021-12-17 18:02:07', '2021-12-18 02:06:18', '2021-12-18 02:08:25'),
(55, 'VOMqTfPI2zerbPNwxJRvZhvCcFx8V5ndITCtvMoP', 490, '2021-12-18 02:18:09', '2021-12-18 02:18:39', '2021-12-17 18:00:30', '2021-12-18 02:18:09', '2021-12-18 02:18:39'),
(56, 'Cq7ntuFwdpvNlTGESSXQeKwtKuiN4uDZE3kCWd1i', 577, '2021-12-18 02:27:47', '2021-12-18 02:28:47', '2021-12-17 18:01:00', '2021-12-18 02:27:47', '2021-12-18 02:28:47'),
(57, 'S3C4ra6AVoLSXD3MH2xnpGHzAMZUQPM0MnViMha6', 490, '2021-12-18 02:28:53', '2021-12-18 02:32:54', '2021-12-17 18:04:01', '2021-12-18 02:28:53', '2021-12-18 02:32:54'),
(58, 'PGThKNnV47peIsV6TRRn2uAtx2Ol9GQxYxOWXqSB', 529, '2021-12-18 02:33:00', '2021-12-18 02:37:31', '2021-12-17 18:04:31', '2021-12-18 02:33:00', '2021-12-18 02:37:31'),
(59, 'QsxoTO7UiRX7aIuSCMA3n0CtCxEaP4Ctvq8z4S8J', 490, '2021-12-18 02:37:40', '2021-12-18 02:37:51', '2021-12-17 18:00:11', '2021-12-18 02:37:40', '2021-12-18 02:37:51'),
(60, 'UL8CqnZk2rQjvy4sUCUMzQNuaOu4tnVJLC071l4E', 29, '2021-12-18 02:38:04', '2021-12-18 02:39:04', '2021-12-17 18:01:00', '2021-12-18 02:38:04', '2021-12-18 02:39:04'),
(61, 'JPmCMTf12zmOeVQcYeFln4TUKiRGxmUP9NKOFsIF', 529, '2021-12-18 02:39:13', '2021-12-23 15:55:53', '2021-12-23 15:55:53', '2021-12-18 02:39:13', '2021-12-18 02:39:13'),
(62, 'ceRuN3dpVXqtO7VyDJj2GfEFe2SJH4V8sqvDqy1z', 490, '2021-12-18 04:12:21', '2021-12-23 15:55:54', '2021-12-23 15:55:55', '2021-12-18 04:12:21', '2021-12-18 04:12:21'),
(63, '3SQ4VUNWjl3idos1eJ9rI9I4Uqv4jnIEzYtbdOyQ', 490, '2021-12-18 23:24:36', '2021-12-23 15:55:55', '2021-12-23 15:55:56', '2021-12-18 23:24:36', '2021-12-18 23:24:36'),
(64, 'oMA5bC820AUT2sCDXrI0j39mXDPRwit90QFgD50G', 490, '2021-12-19 01:03:06', '2021-12-19 01:09:51', '2021-12-18 18:06:45', '2021-12-19 01:03:06', '2021-12-19 01:09:51'),
(65, 'U8U7WWY5e7hmf6R8yBEC580ZNuLdA3Hu5Fl0HZdf', 577, '2021-12-19 01:09:58', '2021-12-19 01:10:07', '2021-12-18 18:00:09', '2021-12-19 01:09:58', '2021-12-19 01:10:07'),
(66, '1kL4vU6ODHpqtDZ7QFkLRSeZcLX6zTclhDch6UZQ', 529, '2021-12-19 01:10:15', '2021-12-19 01:14:55', '2021-12-18 18:04:40', '2021-12-19 01:10:15', '2021-12-19 01:14:55'),
(67, 'DhYmoeVdPefxJJ7jDPMNRu2ltd9z4E1YuGacUgew', 577, '2021-12-19 01:15:13', '2021-12-19 01:16:04', '2021-12-18 18:00:51', '2021-12-19 01:15:13', '2021-12-19 01:16:04'),
(68, 'DbvSzcBpAK4DzDYcPWTmPYgbeASzc1hBxSVZvx6x', 490, '2021-12-19 01:22:45', '2021-12-19 02:49:54', '2021-12-18 19:27:09', '2021-12-19 01:22:45', '2021-12-19 02:49:54'),
(69, 'XxMjFpO8krBNm0e0CFMvvtwKhBFCdnXBSJPxUKO3', 490, '2021-12-19 02:53:57', '2021-12-23 15:55:57', '2021-12-23 15:55:23', '2021-12-19 02:53:57', '2021-12-19 02:53:57'),
(70, 'cpgPnaaTxk9u3xRy4Usfm5e7fWDElaLuD2QWM8uE', 490, '2021-12-19 03:14:03', '2021-12-23 15:55:58', '2021-12-23 15:55:22', '2021-12-19 03:14:03', '2021-12-19 03:14:03'),
(71, '1lrJRRKGbFnh6rejTfrDQt7xRtn1M06zAezu6Sfa', 29, '2021-12-19 03:31:04', '2021-12-23 15:55:58', '2021-12-23 15:55:21', '2021-12-19 03:31:04', '2021-12-19 03:31:04'),
(72, 'zymtpmxZXNkRyZl5DW5HByjnxmrKjYAhAiXrBk08', 29, '2021-12-19 04:22:44', '2021-12-19 04:45:07', '2021-12-18 18:22:23', '2021-12-19 04:22:44', '2021-12-19 04:45:07'),
(73, '73cDid556WEBUG7sgBaDn7ZIsLMJJVqIVmdNx5ak', 490, '2021-12-19 04:45:14', '2021-12-19 05:24:50', '2021-12-18 18:39:36', '2021-12-19 04:45:14', '2021-12-19 05:24:50'),
(74, 'DKbZVT2u6UYXs8aSyHrN163CDLBYYJMxT6t3tYCZ', 29, '2021-12-19 05:24:57', '2021-12-19 05:30:49', '2021-12-18 18:05:52', '2021-12-19 05:24:57', '2021-12-19 05:30:49'),
(75, 'EFwQprHJlWFZxVMutjiB8bebU77Yuc8PpBvCeJaS', 490, '2021-12-19 05:46:25', '2021-12-23 15:55:59', '2021-12-23 15:56:00', '2021-12-19 05:46:25', '2021-12-19 05:46:25'),
(76, 'T4Umj1Is69LMWk6Jfp902J6zjtVTzGeEcg34Zc04', 490, '2021-12-19 22:11:43', '2021-12-19 22:13:04', '2021-12-19 18:01:21', '2021-12-19 22:11:43', '2021-12-19 22:13:04'),
(77, 'DtKB9rHIjNyArYtpsRobSjYHwSM7ULm02383Z34v', 577, '2021-12-19 22:13:15', '2021-12-19 22:13:54', '2021-12-19 18:00:39', '2021-12-19 22:13:15', '2021-12-19 22:13:54'),
(78, 'PdW1mjkvkuIJDKvW4Fb12AIhBoHJdEVu2rzFVJ0b', 529, '2021-12-19 22:14:01', '2021-12-19 22:15:04', '2021-12-19 18:01:03', '2021-12-19 22:14:01', '2021-12-19 22:15:04'),
(79, 'WjMCq8bhGKSsCdjiyeCwgejTTkBvE7vYh2uCkKYK', 29, '2021-12-19 22:15:13', '2021-12-19 22:19:24', '2021-12-19 18:04:11', '2021-12-19 22:15:13', '2021-12-19 22:19:24'),
(80, 'yzszM2QVlvrB6DfnKioR8hvIG21F5kg8W3qkO0LM', 490, '2021-12-19 22:19:29', '2021-12-19 22:19:40', '2021-12-19 18:00:11', '2021-12-19 22:19:29', '2021-12-19 22:19:40'),
(81, '2kaF3VHldyLPgYHUTrATL0XNl8UB13T61mMMWjAG', 577, '2021-12-19 22:19:47', '2021-12-19 22:19:59', '2021-12-19 18:00:12', '2021-12-19 22:19:47', '2021-12-19 22:19:59'),
(82, '3cM92qlG3TcEXerhzCuIM5q8uTIFzoUSq7GVKflA', 524, '2021-12-19 22:20:06', '2021-12-19 22:20:20', '2021-12-19 18:00:14', '2021-12-19 22:20:06', '2021-12-19 22:20:20'),
(83, 'WGXJHFr83KG3WmEqXgiuFIE2XPxdF1X2Y5KS1bAX', 577, '2021-12-19 22:21:16', '2021-12-23 15:55:12', '2021-12-23 15:55:10', '2021-12-19 22:21:16', '2021-12-19 22:21:16'),
(84, '6b7FWktTDb8ehxMBIjrLzzx3pMVbOjSczDKtmT4K', 577, '2021-12-19 22:43:01', '2021-12-19 22:46:22', '2021-12-19 18:03:21', '2021-12-19 22:43:01', '2021-12-19 22:46:22'),
(85, 'bHEJXGobzbAAf075scRYosQeoQp6d9mopqz00DA3', 490, '2021-12-19 22:46:34', '2021-12-19 22:47:08', '2021-12-19 18:00:34', '2021-12-19 22:46:34', '2021-12-19 22:47:08'),
(86, 'LpAWmX7e4xrO8QQ53Kfw45nC4HMgFH3BRgmpc33e', 529, '2021-12-19 22:47:17', '2021-12-23 15:55:15', '2021-12-23 15:55:09', '2021-12-19 22:47:17', '2021-12-19 22:47:17'),
(87, 'xHh4yJbo4pp308Y96I8zvjx3FjWAXxu8Nv2SwnuT', 577, '2021-12-19 23:09:11', '2021-12-19 23:18:54', '2021-12-19 18:09:43', '2021-12-19 23:09:11', '2021-12-19 23:18:54'),
(88, 'HJQyPXIuCxalkjCmMavI6s239J9o5lQMlffzmDhi', 577, '2021-12-19 23:19:08', '2021-12-19 23:19:12', '2021-12-19 18:00:04', '2021-12-19 23:19:08', '2021-12-19 23:19:12'),
(89, '9jtt1oyi8HgNHTLEfUtFRUupGgfF0xlepZrcvoUI', 529, '2021-12-19 23:24:38', '2021-12-23 15:55:16', '2021-12-23 15:55:08', '2021-12-19 23:24:38', '2021-12-19 23:24:38'),
(90, 'aO47y7dsU7JVpZTUiVwfCfuUtABF9BswOfh9XODA', 529, '2021-12-20 00:23:24', '2021-12-20 00:32:00', '2021-12-19 18:08:36', '2021-12-20 00:23:24', '2021-12-20 00:32:00'),
(91, '2HdCO7tMil4o31G2AnKDU8Rz0CsTtRDzz82Fpt3L', 29, '2021-12-20 00:32:17', '2021-12-23 15:55:17', '2021-12-23 15:55:08', '2021-12-20 00:32:17', '2021-12-20 00:32:17'),
(92, 'H27eIqfpA558VcKeQ240tzeF9u570l5P7uy2wdVj', 29, '2021-12-20 01:29:07', '2021-12-20 02:30:48', '2021-12-19 19:01:41', '2021-12-20 01:29:07', '2021-12-20 02:30:48'),
(93, 'RH9bNGLqItmiPtTmd9r1HHIkHRYuqOm9FmfWZBRC', 29, '2021-12-20 02:30:56', '2021-12-23 15:55:18', '2021-12-23 15:55:07', '2021-12-20 02:30:56', '2021-12-20 02:30:56'),
(94, 'deAJXVE46egkZM18gWNvKpVK5FJF8MPinyW6yMBs', 29, '2021-12-20 03:56:37', '2021-12-20 03:58:42', '2021-12-19 18:02:05', '2021-12-20 03:56:37', '2021-12-20 03:58:42'),
(95, 'cF3zmz3EFMk5MNs10Uya7dZWxYGGPIxYuVfiWwAY', 29, '2021-12-20 03:58:49', '2021-12-20 04:17:08', '2021-12-19 18:18:19', '2021-12-20 03:58:49', '2021-12-20 04:17:08'),
(96, 'ghzLCJqDaWDs1CUWtpemd0eUvj76f6h6DoxzY8Qi', 29, '2021-12-20 04:17:18', '2021-12-23 15:56:02', '2021-12-23 15:55:05', '2021-12-20 04:17:18', '2021-12-20 04:17:18'),
(97, 'cjsUnGBjMBrylSAIwey3TyugjvZL4HQNbImDSV1B', 490, '2021-12-20 05:02:17', '2021-12-23 15:56:02', '2021-12-23 15:55:04', '2021-12-20 05:02:17', '2021-12-20 05:02:17'),
(98, 'ift7I3XTk6xQ7CK3i7lCwVRg6rNsEri0j8uGF9Rm', 29, '2021-12-20 22:01:32', '2021-12-20 23:14:40', '2021-12-20 19:13:08', '2021-12-20 22:01:32', '2021-12-20 23:14:40'),
(99, 'MKqlep0jDct8MlEXY9exAla6XDi4CXq82t7W3pZQ', 490, '2021-12-20 23:14:47', '2021-12-23 15:56:03', '2021-12-23 15:55:06', '2021-12-20 23:14:47', '2021-12-20 23:14:47'),
(100, '6TgEJxlQ6wrQ0c5I25uaByuk5uXMoZsyPvSuM5qX', 490, '2021-12-20 23:44:49', '2021-12-23 15:56:04', '2021-12-23 15:55:03', '2021-12-20 23:44:49', '2021-12-20 23:44:49'),
(101, 'O9NNlv8tfAPhJHsgMk89wCgS6IFBsf8uRE6M6ZMp', 29, '2021-12-21 00:14:45', '2021-12-23 15:56:03', '2021-12-23 15:55:02', '2021-12-21 00:14:45', '2021-12-21 00:14:45'),
(102, 'HmennTOcRnCPPdVxYoyxZJ6L0gVdy1grKEcAgUWK', 29, '2021-12-21 00:41:00', '2021-12-23 15:56:04', '2021-12-23 15:55:02', '2021-12-21 00:41:00', '2021-12-21 00:41:00'),
(103, 'rXQEO3byHQClmmKIQhI8ZUut3of4fq7fldse079D', 29, '2021-12-21 01:44:11', '2021-12-23 15:56:06', '2021-12-23 15:55:02', '2021-12-21 01:44:11', '2021-12-21 01:44:11'),
(104, 'cdkkc5PKQcZSKG7TpKQq2bUelaJJori3CTrIqHT9', 29, '2021-12-21 03:22:57', '2021-12-21 03:23:08', '2021-12-20 18:00:11', '2021-12-21 03:22:57', '2021-12-21 03:23:08'),
(105, '5YxWNaICq6uiPlShdQw3DRcgMRaGdp3lHUNlsdTm', 577, '2021-12-21 03:23:17', '2021-12-21 03:24:05', '2021-12-20 18:00:48', '2021-12-21 03:23:17', '2021-12-21 03:24:05'),
(106, 'or5PCJ7DEMkTqlFOjnDHFli1JWLcwCqiDlK9zfvz', 490, '2021-12-21 03:24:17', '2021-12-21 03:31:55', '2021-12-20 18:07:38', '2021-12-21 03:24:17', '2021-12-21 03:31:55'),
(107, 'q9czpun3g9CrRv78EjMR5grHA7xLolVV6RGyaMlF', 29, '2021-12-21 03:32:03', '2021-12-23 15:56:06', '2021-12-23 15:54:59', '2021-12-21 03:32:03', '2021-12-21 03:32:03'),
(108, 'U6TEV6NCqYSlLaWF30fJWB4GNlBAoadYJOBnRY38', 29, '2021-12-21 04:11:09', '2021-12-23 15:56:08', '2021-12-23 15:55:00', '2021-12-21 04:11:09', '2021-12-21 04:11:09'),
(109, 'jRbyCLZLa7fd9ZyZBGGOpdFqNRec7yRPWayJi9fX', 29, '2021-12-21 04:58:33', '2021-12-23 15:56:07', '2021-12-23 15:54:58', '2021-12-21 04:58:33', '2021-12-21 04:58:33'),
(110, 'yplqPChnOAfXvdW2oTfvxLjLMkwgiBNmAYhoTJc1', 29, '2021-12-21 05:43:18', '2021-12-23 15:56:07', '2021-12-23 15:54:58', '2021-12-21 05:43:18', '2021-12-21 05:43:18'),
(111, 'x0plpBD9BZgZvpJ5KkDM5jqSfBoQ99NSVRzXUYAk', 29, '2021-12-21 22:43:24', '2021-12-21 22:50:06', '2021-12-21 18:06:41', '2021-12-21 22:43:24', '2021-12-21 22:50:06'),
(112, 'JSKL5vEN4A6gHKfdrgjsogVndxOixEQXaFuEQxDt', 490, '2021-12-21 22:50:27', '2021-12-21 22:51:03', '2021-12-21 18:00:36', '2021-12-21 22:50:27', '2021-12-21 22:51:03'),
(113, '4oyHnb5EqtAK4NRRtdGb3lKyRHqGBdmTH9h81J80', 29, '2021-12-21 22:51:08', '2021-12-23 15:56:09', '2021-12-23 15:54:56', '2021-12-21 22:51:08', '2021-12-21 22:51:08'),
(114, 'HVJ2y3JoCYrhR4XKnCAhaoMvN12PUtQbIr5zGMVy', 29, '2021-12-21 23:15:18', '2021-12-23 15:56:10', '2021-12-23 15:54:56', '2021-12-21 23:15:18', '2021-12-21 23:15:18'),
(115, 'nwDqeGFTKFRICf1AnIxfAS9VP9xxxFzLNi1Fvir4', 29, '2021-12-22 01:02:01', '2021-12-23 15:56:09', '2021-12-23 15:54:55', '2021-12-22 01:02:01', '2021-12-22 01:02:01'),
(116, 'GS7YvlB9IvypQ7owrB6HaJ9CoPlBJbGcj70QE6ga', 29, '2021-12-22 02:36:55', '2021-12-23 15:56:10', '2021-12-23 15:54:55', '2021-12-22 02:36:55', '2021-12-22 02:36:55'),
(117, 'NnzUu5pCXZRcIoQjBlEPY8GvkGSgBKbq6ycCGwl0', 29, '2021-12-22 03:26:11', '2021-12-23 15:56:12', '2021-12-23 15:54:54', '2021-12-22 03:26:11', '2021-12-22 03:26:11'),
(118, 'o52rxpAYonp9t8n9m7PluFYWUoyzjIPUdkMH6mzt', 29, '2021-12-22 03:57:35', '2021-12-23 15:56:12', '2021-12-23 15:54:54', '2021-12-22 03:57:35', '2021-12-22 03:57:35'),
(119, 'fXpBd7Jc3AMSBmAwE7EjB2OVV6xN1PahqfsX5wI9', 29, '2021-12-22 05:29:27', '2021-12-23 15:56:13', '2021-12-23 15:54:51', '2021-12-22 05:29:27', '2021-12-22 05:29:27'),
(120, 'MK0rHqsn2CORBtwofhCvXUb2XyvqCbharexFPEJv', 29, '2021-12-22 05:52:12', '2021-12-22 06:37:34', '2021-12-21 18:45:22', '2021-12-22 05:52:12', '2021-12-22 06:37:34'),
(121, 'Zc2GzFFYBmIdhrLOGmueTI1bsZcvniy3nZbueLqB', 29, '2021-12-22 06:37:43', '2021-12-23 15:56:14', '2021-12-23 15:54:51', '2021-12-22 06:37:43', '2021-12-22 06:37:43'),
(122, 'i8bBuEbPbD0fiIh849IJvzAWsolUD4dvohY6LL6Y', 29, '2021-12-22 22:18:06', '2021-12-23 15:56:15', '2021-12-23 15:54:50', '2021-12-22 22:18:06', '2021-12-22 22:18:06'),
(123, '3nQ5H3Sa9qASNibj8dufcrqhXJwEEVf0RGaTnB3n', 29, '2021-12-22 22:43:00', '2021-12-23 15:56:15', '2021-12-23 15:54:49', '2021-12-22 22:43:00', '2021-12-22 22:43:00'),
(124, 'YbMUe4mzmFsKSHv4GjKimJDN4OgK4g5OPhN55DUC', 29, '2021-12-22 23:23:44', '2021-12-22 23:35:08', '2021-12-22 18:11:24', '2021-12-22 23:23:44', '2021-12-22 23:35:08'),
(125, 'evx0MzDvgo8WT7SakYY8Hz8Cqk0tuuw6J3RWPyOC', 490, '2021-12-22 23:35:13', '2021-12-22 23:35:58', '2021-12-22 18:00:45', '2021-12-22 23:35:13', '2021-12-22 23:35:58'),
(126, 'p81hqIsYuAJ1s2J0vhjiacJ2o1XgEmQxJspEvIH9', 29, '2021-12-22 23:36:03', '2021-12-23 15:56:17', '2021-12-23 15:54:49', '2021-12-22 23:36:03', '2021-12-22 23:36:03'),
(127, 'd1GCVJkDyPZjCMTe85U41NV3VisJPlaGlRQAzrBs', 29, '2021-12-23 01:13:16', '2021-12-23 15:56:21', '2021-12-23 15:54:48', '2021-12-23 01:13:16', '2021-12-23 01:13:16'),
(128, 'T84GxkdB9wRkJBcAjrd9S0RcPfH1zZTKWCtttO9r', 29, '2021-12-23 01:57:15', '2021-12-23 15:56:17', '2021-12-23 15:54:48', '2021-12-23 01:57:15', '2021-12-23 01:57:15'),
(129, 'ewBLLULnWywAlw5zA6bM9jHpnLrESZvENvlQ15ZJ', 29, '2021-12-23 02:47:50', '2021-12-23 15:56:19', '2021-12-23 15:54:46', '2021-12-23 02:47:50', '2021-12-23 02:47:50'),
(130, 'UOz7Ds9zZb2SND6WNYXEG0P0B8FKltNwFIMjkuoW', 29, '2021-12-23 03:20:10', '2021-12-23 15:56:18', '2021-12-23 15:54:47', '2021-12-23 03:20:10', '2021-12-23 03:20:10'),
(131, 'idbrtfG6si8PCmXB3AK4q1VcbgMHWPR1FTt4LtAK', 29, '2021-12-23 03:39:46', '2021-12-23 15:56:19', '2021-12-23 15:54:46', '2021-12-23 03:39:46', '2021-12-23 03:39:46'),
(132, 'hZqBGA5VIFEWw403TtVPK7jhzbaghwQGIWnnCXke', 29, '2021-12-23 04:20:23', '2021-12-23 15:56:20', '2021-12-23 15:54:45', '2021-12-23 04:20:23', '2021-12-23 04:20:23'),
(133, 'dtMzz056pzJnpzB3JBG20lhveAXKUIYK1mQD8y68', 29, '2021-12-23 04:57:43', '2021-12-23 15:56:27', '2021-12-23 15:54:45', '2021-12-23 04:57:43', '2021-12-23 04:57:43'),
(134, 'AhU0c6hMo2RTLkUoydnTq0nD66ybnQwZT6oMgm13', 29, '2021-12-23 08:41:16', '2021-12-23 15:56:28', '2021-12-23 15:54:44', '2021-12-23 08:41:16', '2021-12-23 08:41:16'),
(135, '7ZHS4r02VN72nthIK0eWXWuqo8Bv3URtbpQCSV6R', 29, '2021-12-23 09:54:12', NULL, NULL, '2021-12-23 09:54:12', '2021-12-23 09:54:12'),
(136, 'Lqt6a6ccQXKyMcvezRB6Lm0pxqCTOOMZur7YcRgm', 29, '2021-12-23 11:34:49', '2021-12-23 12:00:49', '2021-12-22 18:26:00', '2021-12-23 11:34:49', '2021-12-23 12:00:49'),
(137, 'x7Oz3ahRAU9xIVpqNJRP5DRJCO1wduovBfGISLUm', 490, '2021-12-23 12:00:54', '2021-12-23 12:03:55', '2021-12-22 18:03:01', '2021-12-23 12:00:54', '2021-12-23 12:03:55'),
(138, 'FZCr8AQNYOlt9XL4dcw5JcxbaCsUznn3bN6it95m', 29, '2021-12-23 12:04:02', '2021-12-23 12:05:15', '2021-12-22 18:01:13', '2021-12-23 12:04:02', '2021-12-23 12:05:15'),
(139, '1KlgwKELELRnFk11KoDvZwKtRb2uJJHVS9lSN7qn', 490, '2021-12-23 12:05:22', '2021-12-23 12:13:59', '2021-12-22 18:08:37', '2021-12-23 12:05:22', '2021-12-23 12:13:59'),
(140, '88zJDlmQQmBqbwcenkOnoTPQQhL6F4MzbL7EaOac', 29, '2021-12-23 12:14:05', NULL, NULL, '2021-12-23 12:14:05', '2021-12-23 12:14:05'),
(141, 'xCCT9jEY1d0mZ1lmnjCtxLC8vdKDqYVNg2BCpj7t', 29, '2021-12-23 22:10:25', NULL, NULL, '2021-12-23 22:10:25', '2021-12-23 22:10:25'),
(142, 'WtjneSKr6q2KtCQMDAD0Nf2UCNAEPFjca8qJ7B1V', 29, '2021-12-23 23:54:10', NULL, NULL, '2021-12-23 23:54:10', '2021-12-23 23:54:10'),
(143, 'KbLa7bPmWegEbCGlY3SIWemZiI5nwGNG73Ip3aJV', 29, '2021-12-24 06:08:11', NULL, NULL, '2021-12-24 06:08:11', '2021-12-24 06:08:11'),
(144, 'W0rqDxpLEb72UvnV0IqVPrQWLmce2gFYfNogUxRP', 29, '2021-12-24 12:17:30', NULL, NULL, '2021-12-24 12:17:30', '2021-12-24 12:17:30'),
(145, 'a6YlqlurS0iDGoO9SKkq95nh4S1xg7ELoWjKnkAh', 29, '2021-12-24 12:47:17', '2021-12-24 13:06:35', '2021-12-23 18:19:18', '2021-12-24 12:47:17', '2021-12-24 13:06:35'),
(146, '3IZ6eDaxU814tXsER6C53Cl6XWEh52GIQHrvtSQr', 29, '2021-12-24 13:07:03', '2021-12-24 13:10:00', '2021-12-23 18:02:57', '2021-12-24 13:07:03', '2021-12-24 13:10:00'),
(147, 'sGCtP9G875pRMy0cwVGdkVinx0GJj1g2cHr6hzzA', 490, '2021-12-24 13:10:06', '2021-12-24 13:16:51', '2021-12-23 18:06:45', '2021-12-24 13:10:06', '2021-12-24 13:16:51'),
(148, 'qfRnmdAZ7QHv1ZpE1N5SborzsIRzRegAloHneVQi', 29, '2021-12-24 13:16:58', '2021-12-24 13:18:41', '2021-12-23 18:01:43', '2021-12-24 13:16:58', '2021-12-24 13:18:41'),
(149, 'TWlS0TeGy2yrGuKaXKdb21MxxEjbrF5GquuetF34', 577, '2021-12-24 13:18:51', '2021-12-24 13:18:56', '2021-12-23 18:00:05', '2021-12-24 13:18:51', '2021-12-24 13:18:56'),
(150, '0CvfmLoobmRcpPxI39cQGAX1cJ80lBvE6pEfIJxH', 577, '2021-12-24 13:19:26', '2021-12-24 13:19:29', '2021-12-23 18:00:03', '2021-12-24 13:19:26', '2021-12-24 13:19:29'),
(151, 'Qyo5G0R16HFI4fXp4tb4IMAe4X0byjYTrYvr6QMH', 29, '2021-12-24 13:19:58', '2021-12-24 13:20:33', '2021-12-23 18:00:35', '2021-12-24 13:19:58', '2021-12-24 13:20:33'),
(152, 'T1U7zQtKwRNuPEBM0mrv20tlaVk3iPqQb7ktN8Ir', 577, '2021-12-24 13:20:39', '2021-12-24 13:20:42', '2021-12-23 18:00:03', '2021-12-24 13:20:39', '2021-12-24 13:20:42'),
(153, 'JIfQno9fpPlxZx8SnnP1vQlbwZNEFefyOATiklZD', 490, '2021-12-24 13:21:51', '2021-12-24 13:21:55', '2021-12-23 18:00:04', '2021-12-24 13:21:51', '2021-12-24 13:21:55'),
(154, 'nvteny3kh2w1Orxmxa6XJ9xK3UvStC4eEZHX3ETy', 29, '2021-12-24 13:22:15', NULL, NULL, '2021-12-24 13:22:15', '2021-12-24 13:22:15'),
(155, 'gMcUhpzoVoHUbG6D2jS7vDFyEet1wj3Bn92M66Gz', 29, '2021-12-24 22:26:42', NULL, NULL, '2021-12-24 22:26:42', '2021-12-24 22:26:42'),
(156, 'f6U2baNMCQFu9Pc337xi1YnYfaRK7VBkuurZGp0E', 29, '2021-12-24 23:21:14', '2021-12-24 23:24:49', '2021-12-24 18:03:35', '2021-12-24 23:21:14', '2021-12-24 23:24:49'),
(157, 'lCbjWMwi9ncbehE5508p0nugf4f6TrtXCApaMRAS', 490, '2021-12-24 23:24:59', '2021-12-24 23:27:41', '2021-12-24 18:02:42', '2021-12-24 23:24:59', '2021-12-24 23:27:41'),
(158, 'uaizYMecco4Ra7pt1n382uK1OSdcOkncnvkaoyoZ', 29, '2021-12-24 23:27:45', '2021-12-24 23:27:57', '2021-12-24 18:00:12', '2021-12-24 23:27:45', '2021-12-24 23:27:57'),
(159, 'nbN3KeSE0wmQAnqgrHOAFtpZPyPmlPRfZrmCzMHC', 490, '2021-12-24 23:28:04', '2021-12-24 23:29:41', '2021-12-24 18:01:37', '2021-12-24 23:28:04', '2021-12-24 23:29:41'),
(160, 'aVH4APJBQUDwvfoEdlmnEAzLk86yd9zxai0bwAf2', 29, '2021-12-24 23:29:47', '2021-12-24 23:44:30', '2021-12-24 18:14:43', '2021-12-24 23:29:47', '2021-12-24 23:44:30'),
(161, 'w1n263vU5WtAvbq5dDI8L2rLMkXNor2Tw95FPWgI', 490, '2021-12-24 23:44:35', '2021-12-24 23:45:17', '2021-12-24 18:00:42', '2021-12-24 23:44:35', '2021-12-24 23:45:17'),
(162, '4V37mls5Q6K6fkfiP7JSWhiH5NHsorxGfI7P9vZ2', 29, '2021-12-24 23:45:22', NULL, NULL, '2021-12-24 23:45:22', '2021-12-24 23:45:22'),
(163, 'pJrS7sqlqJcCguodIJ2PzqadVRIqs99CzFVPPZLG', 29, '2021-12-25 00:12:45', NULL, NULL, '2021-12-25 00:12:45', '2021-12-25 00:12:45'),
(164, 'XiYd6ZCurubMFxR1JkjOXG8OJlrmFm10P5n3xC8G', 29, '2021-12-25 00:49:12', NULL, NULL, '2021-12-25 00:49:12', '2021-12-25 00:49:12'),
(165, 'QkOkiuo5qQFmutdsibaHzMFMnHAXjlPJ9wk64OiF', 29, '2021-12-25 02:00:50', '2021-12-25 02:25:29', '2021-12-24 18:24:39', '2021-12-25 02:00:50', '2021-12-25 02:25:29'),
(166, '8heK7PRgRpiegowl8shIQegfBLPDzTMRNCUl2pVz', 29, '2021-12-25 02:25:47', NULL, NULL, '2021-12-25 02:25:47', '2021-12-25 02:25:47'),
(167, 'N2OnhIHHyQvNLbdSBOybbnw1jbID5bkBd8vUGg5x', 490, '2021-12-25 02:48:34', NULL, NULL, '2021-12-25 02:48:34', '2021-12-25 02:48:34'),
(168, 'ZKUNeFV5oFezGA9w1x2hH5s0P08bkNvQfOHqR5kv', 490, '2021-12-25 03:51:22', NULL, NULL, '2021-12-25 03:51:22', '2021-12-25 03:51:22'),
(169, '7WMAgITUyxAWLfqT87os8RqpA2YZ2z6Syr65kDDk', 490, '2021-12-25 04:16:26', NULL, NULL, '2021-12-25 04:16:26', '2021-12-25 04:16:26'),
(170, '3HtHg2vCH3KCnToSVkWebUBLGblbrZaaKjQc9aOi', 490, '2021-12-25 09:33:40', '2021-12-25 09:33:43', '2021-12-24 18:00:03', '2021-12-25 09:33:40', '2021-12-25 09:33:43'),
(171, 'hyZL1BArmLxV5HALz5F668gwKZh5rD85BFDww9p0', 29, '2021-12-25 09:35:17', '2021-12-25 09:35:25', '2021-12-24 18:00:08', '2021-12-25 09:35:17', '2021-12-25 09:35:25'),
(172, 'hoagWocms7LxB1RMh94ZQnNkTAt0slGEnwwFwgIv', 490, '2021-12-25 09:35:38', '2021-12-25 09:52:00', '2021-12-24 18:16:22', '2021-12-25 09:35:38', '2021-12-25 09:52:00'),
(173, 'pkc913xVf1R8BQlwQPEgQUisHZtxzuEOSytWzKk3', 29, '2021-12-25 09:52:27', NULL, NULL, '2021-12-25 09:52:27', '2021-12-25 09:52:27'),
(174, 'DjwGoUJd8krBqDGW1YJFKwDS8WMtoitHPMfR8fln', 29, '2021-12-25 22:12:07', '2021-12-25 22:30:02', '2021-12-25 18:17:55', '2021-12-25 22:12:07', '2021-12-25 22:30:02'),
(175, 'O0LpHE1fmkfD98JjFhfcS5auI0mg5uENQ1Xcx7Hw', 622, '2021-12-25 22:30:07', NULL, NULL, '2021-12-25 22:30:07', '2021-12-25 22:30:07'),
(176, 's1KwaDHauCWEbHsDZkZupHtLMxbi0A7fVH2qoOnB', 29, '2021-12-25 23:12:12', '2021-12-25 23:12:36', '2021-12-25 18:00:24', '2021-12-25 23:12:12', '2021-12-25 23:12:36'),
(177, '6IX4lX8cdlo0lMfzSz0fPYRFuvP3LF1TRH9dykeV', 622, '2021-12-25 23:12:43', '2021-12-25 23:49:18', '2021-12-25 18:36:35', '2021-12-25 23:12:43', '2021-12-25 23:49:18'),
(178, 'ASUlQcHvCyRtD8CrJ1iBLewbBHhVEXkJRKAVkNwE', 622, '2021-12-25 23:49:24', '2021-12-26 00:56:55', '2021-12-25 19:07:31', '2021-12-25 23:49:24', '2021-12-26 00:56:55'),
(179, '4yeDsDwyCYAdRFQe4Lpeh5ozMaNvKIIuDRDi2jCC', 624, '2021-12-26 00:57:03', '2021-12-26 00:57:36', '2021-12-25 18:00:33', '2021-12-26 00:57:03', '2021-12-26 00:57:36'),
(180, 'TsuuJl7qd68aMvhGVV4iaXP0PeGAXWc8KgjpgG8v', 622, '2021-12-26 00:57:42', '2021-12-26 00:59:04', '2021-12-25 18:01:22', '2021-12-26 00:57:42', '2021-12-26 00:59:04'),
(181, 'cPnDuo8M8r29hmW7gHV8OnEoxZ9pYypPlhK41e2c', 624, '2021-12-26 00:59:15', '2021-12-26 01:00:17', '2021-12-25 18:01:02', '2021-12-26 00:59:15', '2021-12-26 01:00:17'),
(182, 'ZsxIyDxr7vOZ0NY9GGoX8rVb1ElP9HFiJDLQruMo', 622, '2021-12-26 01:00:42', '2021-12-26 01:05:14', '2021-12-25 18:04:32', '2021-12-26 01:00:42', '2021-12-26 01:05:14'),
(183, 'qUOSdbapO9tmQ7r4HILygg1m6eNZXbzlGyVCLjJM', 624, '2021-12-26 01:05:21', '2021-12-26 01:23:44', '2021-12-25 18:18:23', '2021-12-26 01:05:21', '2021-12-26 01:23:44'),
(184, 'Q9H1ZLyx8FenataEOJhtH27z6neB9gfP5sxpegUs', 622, '2021-12-26 01:23:54', '2021-12-26 01:33:59', '2021-12-25 18:10:05', '2021-12-26 01:23:54', '2021-12-26 01:33:59'),
(185, 'PxxczHxAPvehnVph4gbDhIHHNP8EDBCrTF0pRde2', 624, '2021-12-26 01:34:07', '2021-12-26 01:38:23', '2021-12-25 18:04:16', '2021-12-26 01:34:07', '2021-12-26 01:38:23'),
(186, 'ZZPK0tfvX81vgTC6mHEdj998dDk2xmbUKJWSEjNy', 626, '2021-12-26 01:38:33', '2021-12-26 01:39:07', '2021-12-25 18:00:34', '2021-12-26 01:38:33', '2021-12-26 01:39:07'),
(187, '8Qley3iROmTaBmPfnmr3T493GAe4GGnZmbCKR7gu', 622, '2021-12-26 01:39:14', '2021-12-26 01:39:38', '2021-12-25 18:00:24', '2021-12-26 01:39:14', '2021-12-26 01:39:38'),
(188, 'jFeADjUMCdeeS6rJwDrZpsYiQ8FTUJqomeambBJ0', 29, '2021-12-26 01:39:43', NULL, NULL, '2021-12-26 01:39:43', '2021-12-26 01:39:43'),
(189, 'e8REW1Wbj89g7DWhBqcafqWsobPXKWw03VBMR187', 29, '2021-12-26 01:58:25', '2021-12-26 02:32:06', '2021-12-25 18:33:41', '2021-12-26 01:58:25', '2021-12-26 02:32:06'),
(190, 'tDQthIavXilQSVj6zPGS8SuqKZjqS9M4sRH7b7QN', 622, '2021-12-26 02:32:11', '2021-12-26 02:32:17', '2021-12-25 18:00:06', '2021-12-26 02:32:11', '2021-12-26 02:32:17'),
(191, 'n17wxwerLXXSmCv94CfklY6hNCJHiDbHzalqrFv6', 29, '2021-12-26 02:32:23', '2021-12-26 02:33:03', '2021-12-25 18:00:40', '2021-12-26 02:32:23', '2021-12-26 02:33:03'),
(192, 'ceycH65CNyafxIQ02VNBdrJv86DHtPegRoW9xNnS', 622, '2021-12-26 02:33:12', '2021-12-26 02:33:40', '2021-12-25 18:00:28', '2021-12-26 02:33:12', '2021-12-26 02:33:40'),
(193, 'mkRRu6U8E9S8FyxKJOruV8EZJG7seEzqEZ6u1nma', 29, '2021-12-26 02:33:48', '2021-12-26 02:38:40', '2021-12-25 18:04:52', '2021-12-26 02:33:48', '2021-12-26 02:38:40'),
(194, 'stdRUuDNJsebweDMfMi2ifIcbDmr3RCwjnFsXG6X', 622, '2021-12-26 02:38:45', NULL, NULL, '2021-12-26 02:38:45', '2021-12-26 02:38:45'),
(195, 'KpTfU3VRLkr6Lfn4GlTiwGums9KC88h4o9nvCU7Z', 622, '2021-12-26 03:34:46', '2021-12-26 04:38:39', '2021-12-25 19:03:53', '2021-12-26 03:34:46', '2021-12-26 04:38:39'),
(196, 'ZMOslMYuhDMAN5TUuxdlxGfmhHZiXhopuXyvfYBj', 29, '2021-12-26 04:38:46', '2021-12-26 04:43:08', '2021-12-25 18:04:22', '2021-12-26 04:38:46', '2021-12-26 04:43:08'),
(197, '1KNlP4rYNmoba4gesafLHnu7TmaTTl3g2wnMKYqp', 622, '2021-12-26 04:53:08', '2021-12-26 04:53:21', '2021-12-25 18:00:13', '2021-12-26 04:53:08', '2021-12-26 04:53:21'),
(198, 'xdud2vL4bZ4v07Mbp4Ckfc81MIc4HQHpuSj2Rlns', 631, '2021-12-26 04:53:26', NULL, NULL, '2021-12-26 04:53:26', '2021-12-26 04:53:26'),
(199, 'UPGpE7RxOofzbLYDsZLerzEq0H5TLO1feFoZTNMj', 622, '2021-12-26 09:10:33', '2021-12-26 09:17:11', '2021-12-25 18:06:38', '2021-12-26 09:10:33', '2021-12-26 09:17:11'),
(200, 'jXA46ztf4QjoYIqmlGt4APety5YmW0aF1JKsDFoU', 29, '2021-12-26 09:17:17', '2021-12-26 09:21:12', '2021-12-25 18:03:55', '2021-12-26 09:17:17', '2021-12-26 09:21:12'),
(201, 'kQQN7Fu4H5NJdMxrsRDNGcg549miAkLtVcvDl9aA', 577, '2021-12-26 09:38:23', '2021-12-26 09:53:13', '2021-12-25 18:14:50', '2021-12-26 09:38:23', '2021-12-26 09:53:13'),
(202, '1JUMnZVQjssF4I7Dodp2I0yPr9vg3MRLGu9JrxBa', 490, '2021-12-26 09:53:21', '2021-12-26 10:08:01', '2021-12-25 18:14:40', '2021-12-26 09:53:21', '2021-12-26 10:08:01'),
(203, 'LErfAhTPf4RX0ac2ugg48xCCP2orpLCWzI8cQuTb', 577, '2021-12-26 10:08:11', '2021-12-26 10:08:28', '2021-12-25 18:00:17', '2021-12-26 10:08:11', '2021-12-26 10:08:28'),
(204, 'EsVPrGnKIgGA6eewrcKKjc5vjHBrnrxRPc0DUgPS', 490, '2021-12-26 10:08:35', NULL, NULL, '2021-12-26 10:08:35', '2021-12-26 10:08:35'),
(205, '0lmDMVOS4ANmrPuKHXVTx7HwOlIBdnqhvXNjJaoj', 490, '2021-12-26 10:40:26', '2021-12-26 10:40:55', '2021-12-25 18:00:29', '2021-12-26 10:40:26', '2021-12-26 10:40:55'),
(206, 'svfkBf0eSd6ujvVjTi3YXUpmGpnGxXCRE2Fgdfoj', 29, '2021-12-26 10:41:07', NULL, NULL, '2021-12-26 10:41:07', '2021-12-26 10:41:07'),
(207, '5g97DhzM839hFyEyUJ6QKPr9SZX5UgOATHxtJ8tf', 622, '2021-12-26 11:18:49', '2021-12-26 11:27:13', '2021-12-25 18:08:24', '2021-12-26 11:18:49', '2021-12-26 11:27:13'),
(208, 'JT1IOooCdhSONnvrqbrVwWK6FT1uw2OrXbh68zM4', 622, '2021-12-26 11:27:20', NULL, NULL, '2021-12-26 11:27:20', '2021-12-26 11:27:20'),
(209, '3bVekBk8IKqYk4ZZDJukPMelprIhMqRQSePdtI7m', 622, '2021-12-26 11:46:13', '2021-12-26 12:06:18', '2021-12-25 18:20:05', '2021-12-26 11:46:13', '2021-12-26 12:06:18'),
(210, 'KeYUDYMKZOijTF0Nq3EJ312QE4wY74ttuBwbD4V2', 577, '2021-12-26 12:06:29', '2021-12-26 12:11:40', '2021-12-25 18:05:11', '2021-12-26 12:06:29', '2021-12-26 12:11:40'),
(211, 'I3AtPmuDiluRBaXxJXgVe8VnW2mHbqxy7OGjysjp', 624, '2021-12-26 12:11:49', '2021-12-26 12:11:59', '2021-12-25 18:00:10', '2021-12-26 12:11:49', '2021-12-26 12:11:59'),
(212, 'xQvKUpqUcPFPMEQfQfJjGdPZdtgRobzQrupeFH7a', 622, '2021-12-26 12:12:03', '2021-12-26 12:14:25', '2021-12-25 18:02:22', '2021-12-26 12:12:03', '2021-12-26 12:14:25'),
(213, 'BUxobYkOv9Y7SPoUotQIEu2mhGTHa10xaQ0kHEJy', 624, '2021-12-26 12:14:32', '2021-12-26 12:14:59', '2021-12-25 18:00:27', '2021-12-26 12:14:32', '2021-12-26 12:14:59'),
(214, 'hIRM2uJATXjUde9vZHomwXu9thSirw7qVQtFKsqw', 631, '2021-12-26 12:15:08', '2021-12-26 12:15:17', '2021-12-25 18:00:09', '2021-12-26 12:15:08', '2021-12-26 12:15:17'),
(215, 'otOco8si16P4lyqTcGBFdtNy2lITRmplJOMVS2QX', 490, '2021-12-26 12:15:30', '2021-12-26 12:15:46', '2021-12-25 18:00:16', '2021-12-26 12:15:30', '2021-12-26 12:15:46'),
(216, 's793aWmfRp8VvX6vn0KhYgqJllskf6Wd5SAh8dJM', 622, '2021-12-26 12:29:48', '2021-12-26 12:39:25', '2021-12-25 18:09:37', '2021-12-26 12:29:48', '2021-12-26 12:39:25'),
(217, '3gNhdaeI70gDCu1Gx5sF1xw3KG4Ouhh5iVLzIPca', 622, '2021-12-26 21:24:19', '2021-12-26 21:25:06', '2021-12-26 18:00:47', '2021-12-26 21:24:19', '2021-12-26 21:25:06'),
(218, 'Hwqy4ESoO2zAnuscesszH9shZm1T59TTwdJOJ90J', 624, '2021-12-26 21:25:26', '2021-12-26 21:26:12', '2021-12-26 18:00:46', '2021-12-26 21:25:26', '2021-12-26 21:26:12'),
(219, 'VoHZExyCLDj0JdvF56peGY6ZjAyOgHkXkhDbjVSw', 622, '2021-12-26 21:26:18', '2021-12-26 21:27:37', '2021-12-26 18:01:19', '2021-12-26 21:26:18', '2021-12-26 21:27:37'),
(220, 'QtxbDAn6MPj0kaEPMxctoSXTpFPOD4FQPJfshqmH', 624, '2021-12-26 21:48:44', '2021-12-26 21:50:22', '2021-12-26 18:01:38', '2021-12-26 21:48:44', '2021-12-26 21:50:22'),
(221, 'rtigksj3hYzPgAgvrMaMQ2AwTTpSrxZEg8pbxNgu', 631, '2021-12-26 21:50:39', '2021-12-26 21:57:19', '2021-12-26 18:06:40', '2021-12-26 21:50:39', '2021-12-26 21:57:19'),
(222, 'bUApn1tsZb4J71lJz3ohiBZUCQ26pyf4GtL2yN6P', 622, '2021-12-26 21:57:28', '2021-12-26 22:00:13', '2021-12-26 18:02:45', '2021-12-26 21:57:28', '2021-12-26 22:00:13'),
(223, 'gs5qFbCMv09UjOE9IwvhigLmhksygc4LK0Tj4YAF', 622, '2021-12-26 22:00:34', '2021-12-26 22:02:33', '2021-12-26 18:01:59', '2021-12-26 22:00:34', '2021-12-26 22:02:33'),
(224, 'sKPEUTZew62hc9ZhMz5TwbycyNih25yXzrrDiGFZ', 622, '2021-12-26 22:09:55', NULL, NULL, '2021-12-26 22:09:55', '2021-12-26 22:09:55'),
(225, 'b9IBPiSBPcZl1wGJ2vuNcWyKdFZGJBgqSKDcsSV8', 622, '2021-12-27 00:28:39', '2021-12-27 01:33:19', '2021-12-26 19:04:40', '2021-12-27 00:28:39', '2021-12-27 01:33:19'),
(226, 'iBIZzAzneZPTKYUnK8vHDiW0WJcH6GizjOTKcX4S', 624, '2021-12-27 01:33:30', '2021-12-27 01:35:53', '2021-12-26 18:02:23', '2021-12-27 01:33:30', '2021-12-27 01:35:53'),
(227, 'DWZ5CZnjHhgosFdTPGqrs2TOa0yAWNt6XwAjNoGY', 622, '2021-12-27 01:36:02', '2021-12-27 01:46:49', '2021-12-26 18:10:47', '2021-12-27 01:36:02', '2021-12-27 01:46:49'),
(228, 'JxPCiCazVAbBvSIfJZ055fDMfZaJf1ZuPIJZwKva', 622, '2021-12-27 01:50:16', NULL, NULL, '2021-12-27 01:50:16', '2021-12-27 01:50:16'),
(229, 'EChULg6ydtZz6WNb09oAv56PD9EHfCnoVOVaJXB6', 624, '2021-12-27 05:03:58', '2021-12-27 05:05:42', '2021-12-26 18:01:44', '2021-12-27 05:03:58', '2021-12-27 05:05:42'),
(230, '0iduwDDLvpMsKP3gJkkDMOUcqgTnwwV3q5hOXu38', 622, '2021-12-27 05:05:48', '2021-12-27 05:21:04', '2021-12-26 18:15:16', '2021-12-27 05:05:48', '2021-12-27 05:21:04'),
(231, 'leUvw7sPn02bNff4lgzd81Pr8APqRaIcRSj9cmfp', 29, '2021-12-27 05:52:16', '2021-12-27 05:52:48', '2021-12-26 18:00:32', '2021-12-27 05:52:16', '2021-12-27 05:52:48'),
(232, 'qrO5ngbxJTR4vZ681AbwZAxvmdDYwNYpk8XzRGoc', 622, '2021-12-27 05:52:53', '2021-12-27 06:01:46', '2021-12-26 18:08:53', '2021-12-27 05:52:53', '2021-12-27 06:01:46'),
(233, 'fmSdupobeuqYQChY9ERLK7a0LXqaYgSRzOzC7Ji9', 624, '2021-12-27 06:01:57', '2021-12-27 06:08:26', '2021-12-26 18:06:29', '2021-12-27 06:01:57', '2021-12-27 06:08:26'),
(234, '0GjsIPYRNw5P8GJSaIVTWhUnpXgVWzzMnZ9PlFVa', 622, '2021-12-27 06:11:47', '2021-12-27 06:16:56', '2021-12-26 18:05:09', '2021-12-27 06:11:47', '2021-12-27 06:16:56'),
(235, '89rZIMKvuZmH3aQKf3rK4OKqHnnh8ZijCHw6yv4L', 29, '2021-12-27 06:17:01', '2021-12-27 06:19:09', '2021-12-26 18:02:08', '2021-12-27 06:17:01', '2021-12-27 06:19:09'),
(236, '3er7R7VIrdalVajVUUkSrTSCMSnJf5jXzGNaWyl8', 622, '2021-12-27 06:19:25', NULL, NULL, '2021-12-27 06:19:25', '2021-12-27 06:19:25'),
(237, 'maF6bCF64xcX0DdN3qjSlr55sVO79WgNACPvWQsx', 622, '2021-12-27 23:53:52', NULL, NULL, '2021-12-27 23:53:52', '2021-12-27 23:53:52'),
(238, 'VreNO79DP6G07ImAXcwbMtGKbdJ7Zf5oyteGzGLh', 622, '2021-12-28 00:33:35', NULL, NULL, '2021-12-28 00:33:35', '2021-12-28 00:33:35'),
(239, '1EDYcH1Nnf0qTmspGZYKyXevYb7HbOw71lXxQN2P', 622, '2021-12-28 01:53:11', '2021-12-28 01:55:23', '2021-12-27 18:02:12', '2021-12-28 01:53:11', '2021-12-28 01:55:23'),
(240, 'jrdS7SPfjoWIVhaOUmiACm1UOJTxgxTbmGevqLSR', 29, '2021-12-28 01:55:32', NULL, NULL, '2021-12-28 01:55:32', '2021-12-28 01:55:32'),
(241, 'WBoyi9gkwXe0rMXXyJz3v4Kpxf7DR6Y2byiu3uf1', 29, '2021-12-28 02:51:52', '2021-12-28 02:57:57', '2021-12-27 18:06:05', '2021-12-28 02:51:52', '2021-12-28 02:57:57'),
(242, 'xNZZ5N2HvQbIlkBGTsovFGtprvL4KPSntAW2UilT', 622, '2021-12-28 02:58:09', '2021-12-28 02:59:41', '2021-12-27 18:01:32', '2021-12-28 02:58:09', '2021-12-28 02:59:41'),
(243, 'nOEwLyYCt5CPPJytvnuIs7onIubnPtRaPnGhebVK', 624, '2021-12-28 02:59:49', '2021-12-28 03:01:26', '2021-12-27 18:01:37', '2021-12-28 02:59:49', '2021-12-28 03:01:26'),
(244, 'H06mnSwF0BVf5MVrVdOABgCSU9vdnowOC6Aufbpr', 622, '2021-12-28 03:01:36', '2021-12-28 03:07:27', '2021-12-27 18:05:51', '2021-12-28 03:01:36', '2021-12-28 03:07:27'),
(245, 'IYdp2J4zadKlHIEEbRlJcrSCwfs2mYfh8Giezd5Y', 624, '2021-12-28 03:07:39', '2021-12-28 03:11:31', '2021-12-27 18:03:52', '2021-12-28 03:07:39', '2021-12-28 03:11:31'),
(246, 'O4hUpPhD5KUpZYoKufhlokhQ8qywjbcaW88KwvBm', 622, '2021-12-28 03:11:37', '2021-12-28 03:11:46', '2021-12-27 18:00:09', '2021-12-28 03:11:37', '2021-12-28 03:11:46'),
(247, 'Cqevu7sd1p3FXW3Lp6FoASiN3m3atiBvZTQARVxE', 624, '2021-12-28 03:11:54', '2021-12-28 03:17:45', '2021-12-27 18:05:51', '2021-12-28 03:11:54', '2021-12-28 03:17:45'),
(248, 'gzcs8bTSAibA8nUgciAdZf1iQIcleLxwLqnH7ADP', 622, '2021-12-28 03:17:51', '2021-12-28 03:20:54', '2021-12-27 18:03:03', '2021-12-28 03:17:51', '2021-12-28 03:20:54'),
(249, 'qfgmwgX6DMv1FzRYlMvM1krQFdHtZXewANy1UFRn', 624, '2021-12-28 03:21:02', NULL, NULL, '2021-12-28 03:21:02', '2021-12-28 03:21:02'),
(250, '6wG0JOD85xCIM97A7nJAFPEoiurU9bvhOQyHOS0G', 622, '2021-12-28 03:48:52', '2021-12-28 03:49:11', '2021-12-27 18:00:19', '2021-12-28 03:48:52', '2021-12-28 03:49:11'),
(251, 'GiQ5Y2pIgmec7XoWEVa5fhjmVxC91G2mKAxL2bpy', 624, '2021-12-28 03:49:18', NULL, NULL, '2021-12-28 03:49:18', '2021-12-28 03:49:18'),
(252, 'BktjWEkc1Yo12cTPStUm5DVYahfp4DjOwvdObWj8', 624, '2021-12-28 05:06:28', '2021-12-28 05:25:36', '2021-12-27 18:19:08', '2021-12-28 05:06:28', '2021-12-28 05:25:36'),
(253, '5yFQSsFH4DRAjCBqmpoBYgoIs57KPEcIdwcD3eAU', 622, '2021-12-28 05:25:47', '2021-12-28 05:28:27', '2021-12-27 18:02:40', '2021-12-28 05:25:47', '2021-12-28 05:28:27'),
(254, 'HKi0zb9L9Kez5OyoRCgexA0ZhEsMeOD7LiOxQDUN', 624, '2021-12-28 05:28:36', '2021-12-28 05:45:45', '2021-12-27 18:17:09', '2021-12-28 05:28:36', '2021-12-28 05:45:45'),
(255, 'NiwbBpm77Jy3VyRYFYbBMb0wMUMyR53TDIfSqirp', 622, '2021-12-28 05:45:49', '2021-12-28 05:47:35', '2021-12-27 18:01:46', '2021-12-28 05:45:49', '2021-12-28 05:47:35'),
(256, '6WfNzVwi9tU0JIagyIjpZ4Z6WYy5bmrgNBaXlBEe', 624, '2021-12-28 05:47:45', '2021-12-28 06:22:24', '2021-12-27 18:34:39', '2021-12-28 05:47:45', '2021-12-28 06:22:24'),
(257, 'lgb8teyLZfF4cg02VupCZOjKLmJKNpFG2Mey19Uz', 622, '2021-12-28 06:22:34', '2021-12-28 06:23:24', '2021-12-27 18:00:50', '2021-12-28 06:22:34', '2021-12-28 06:23:24'),
(258, 'FJG2pcvks3UuvjcLgiq11yk6aX32KF6gefqlRJZg', 29, '2021-12-28 06:23:28', '2021-12-28 06:34:03', '2021-12-27 18:10:35', '2021-12-28 06:23:28', '2021-12-28 06:34:03'),
(259, '3bV75SKS3IARl0veZe3FnY5EgPq825QWOdq0uiHR', 624, '2021-12-28 06:34:15', '2021-12-28 06:45:26', '2021-12-27 18:11:11', '2021-12-28 06:34:15', '2021-12-28 06:45:26'),
(260, 'ORFUnoxyoeMETY1tlcgkssA0JTyDuCbJdpG2X2oh', 622, '2021-12-28 06:45:32', NULL, NULL, '2021-12-28 06:45:32', '2021-12-28 06:45:32'),
(261, 'iTi36WKBYQbMAO7AdrfUfCph5s0A4PaaQex0Gkil', 624, '2021-12-28 07:08:02', NULL, NULL, '2021-12-28 07:08:02', '2021-12-28 07:08:02'),
(262, 'ubGpf4v7nyiFOAbRGalbdYCSgZwaTiRhEHymxJ8A', 622, '2021-12-29 00:52:42', '2021-12-29 00:52:46', '2021-12-28 18:00:04', '2021-12-29 00:52:42', '2021-12-29 00:52:46'),
(263, 'IyAsPjnPIiuRtUEGQzEXpDkLn08PreEiqad2CnqI', 29, '2021-12-29 00:52:52', '2021-12-29 01:16:01', '2021-12-28 18:23:09', '2021-12-29 00:52:52', '2021-12-29 01:16:01'),
(264, 'BU0APRR7SCr6aOMjjJ2aNSqYWwD4SJNIz0nQOHmW', 622, '2021-12-29 01:16:08', NULL, NULL, '2021-12-29 01:16:08', '2021-12-29 01:16:08'),
(265, '3OmhDB6jXsaG10x6ckVhTZD8O5K6900mhcrAA75p', 622, '2021-12-29 02:46:24', '2021-12-29 02:47:44', '2021-12-28 18:01:20', '2021-12-29 02:46:24', '2021-12-29 02:47:44'),
(266, 'hR1Bl7WXU8W6rDqJ6SmXzRsJf2YOXXganonnGS9s', 624, '2021-12-29 02:49:21', NULL, NULL, '2021-12-29 02:49:21', '2021-12-29 02:49:21'),
(267, 'H2wD5LIEyXX7IfYuJowfCymSO4cBfIQ5CWgAb1y6', 624, '2021-12-29 03:15:46', NULL, NULL, '2021-12-29 03:15:46', '2021-12-29 03:15:46'),
(268, 'xvBNcauRwI6mSuJszHtQxf6jEDSQDHyfT4RDi6Nb', 624, '2021-12-29 03:53:17', '2021-12-29 04:30:57', '2021-12-28 18:37:40', '2021-12-29 03:53:17', '2021-12-29 04:30:57'),
(269, 'ctjlwPdx7f8JrIDaE1YM0xaTrct0thFK8aV4zQb2', 622, '2021-12-29 04:31:03', '2021-12-29 04:33:41', '2021-12-28 18:02:38', '2021-12-29 04:31:03', '2021-12-29 04:33:41'),
(270, '9FtZ0sZxOmmdbbrnrSAmnhda1RydAC2pnAwJv4C9', 624, '2021-12-29 04:33:48', '2021-12-29 05:30:09', '2021-12-28 18:56:21', '2021-12-29 04:33:48', '2021-12-29 05:30:09'),
(271, 'KOYC3tm9kan2esBe73apltOTuApxNfIjFwZBKpUX', 622, '2021-12-29 05:30:19', '2021-12-29 05:32:08', '2021-12-28 18:01:49', '2021-12-29 05:30:19', '2021-12-29 05:32:08'),
(272, 'NHugVPOLnbA0KVuAJn4OB8tKSytaint1eynJ0BMJ', 624, '2021-12-29 05:32:16', '2021-12-29 05:37:14', '2021-12-28 18:04:58', '2021-12-29 05:32:16', '2021-12-29 05:37:14'),
(273, 'ignT9w4Aw49QdMLt1ZL6U243Ne4NS6p11XZiJLxz', 622, '2021-12-29 05:37:19', '2021-12-29 05:40:10', '2021-12-28 18:02:51', '2021-12-29 05:37:19', '2021-12-29 05:40:10'),
(274, 'kdjr10W4Y8RYy96OLVGVGtzq0QMz5dlaZFo2Rf4C', 622, '2021-12-29 05:40:17', NULL, NULL, '2021-12-29 05:40:17', '2021-12-29 05:40:17'),
(275, 'zktntPKj889BSHEFgqZ3O1X9Oru26yqrwW9FrT4W', 622, '2021-12-29 05:59:10', '2021-12-29 06:21:00', '2021-12-28 18:21:50', '2021-12-29 05:59:10', '2021-12-29 06:21:00'),
(276, 'jvngFREilqu29dG4uUsHSGRiIWCrbhjzwmCHM7PY', 624, '2021-12-29 06:21:36', NULL, NULL, '2021-12-29 06:21:36', '2021-12-29 06:21:36');

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
-- Indexes for table `departments`
--
ALTER TABLE `departments`
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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

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
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `assignment_quizzes`
--
ALTER TABLE `assignment_quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `assignment_students`
--
ALTER TABLE `assignment_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `key_stages`
--
ALTER TABLE `key_stages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `message_attachments`
--
ALTER TABLE `message_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message_masters`
--
ALTER TABLE `message_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notice_categories`
--
ALTER TABLE `notice_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `quiz_answer_options`
--
ALTER TABLE `quiz_answer_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `quiz_students`
--
ALTER TABLE `quiz_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `student_subjects`
--
ALTER TABLE `student_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=635;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_group_members`
--
ALTER TABLE `user_group_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=628;

--
-- AUTO_INCREMENT for table `user_group_permissions`
--
ALTER TABLE `user_group_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=627;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

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
