-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2021 at 01:11 PM
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
(156, 'Report Dashboard Management', 68, 69, 1, '2021-12-06 23:28:09', '2021-12-06 23:31:39'),
(157, 'School Overview Management', 70, 70, 1, '2021-12-08 01:22:53', '2021-12-08 01:22:53'),
(158, 'Top Student Report Management', 55, 71, 1, '2021-12-08 22:21:50', '2021-12-08 22:21:50'),
(159, 'Send Message Management', 48, 72, 1, '2021-12-14 22:15:56', '2021-12-14 22:15:56'),
(160, 'Send Message Entry', 48, NULL, 1, '2021-12-14 22:17:11', '2021-12-14 22:17:11'),
(161, 'Send Message Update', 48, NULL, 1, '2021-12-14 22:17:25', '2021-12-14 22:17:25'),
(162, 'Send Message Delete', 48, NULL, 1, '2021-12-14 22:17:38', '2021-12-14 22:17:38');

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
(5, 'Assignment -1 ', '2021-09-01 00:00:00', '2021-09-08 00:00:00', '00:00:44', '00:00:55', 'Yes', '159', 'Active', '2021-12-16 00:12:29', '2021-12-16 00:14:47'),
(6, 'Assignment 2', '2021-09-08 00:00:00', '2021-09-30 00:00:00', '00:00:44', '00:00:55', 'Yes', '159', 'Active', '2021-12-16 00:17:52', '2021-12-16 00:17:52'),
(7, 'Assignment -4', '2021-09-07 00:00:00', '2021-09-16 00:00:00', '00:00:44', '00:00:55', 'Yes', '159', 'Active', '2021-12-16 00:20:08', '2021-12-16 00:20:08');

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
(1, 1, 1, '2021-12-13 22:16:33', '2021-12-13 22:16:33'),
(2, 1, 2, '2021-12-15 23:44:16', '2021-12-15 23:44:16'),
(3, 1, 3, '2021-12-15 23:53:56', '2021-12-15 23:53:56'),
(4, 1, 1, '2021-12-16 00:00:14', '2021-12-16 00:00:14'),
(5, 1, 2, '2021-12-16 00:04:18', '2021-12-16 00:04:18'),
(7, 1, 5, '2021-12-16 00:14:47', '2021-12-16 00:14:47'),
(8, 1, 6, '2021-12-16 00:17:52', '2021-12-16 00:17:52'),
(9, 1, 7, '2021-12-16 00:20:08', '2021-12-16 00:20:08');

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
(1, 81, 1, '2021-12-13 22:16:33', '2021-12-13 22:16:33'),
(2, 8, 2, '2021-12-15 23:44:16', '2021-12-15 23:44:16'),
(3, 81, 2, '2021-12-15 23:44:16', '2021-12-15 23:44:16'),
(4, 8, 3, '2021-12-15 23:53:56', '2021-12-15 23:53:56'),
(5, 81, 3, '2021-12-15 23:53:56', '2021-12-15 23:53:56'),
(6, 8, 1, '2021-12-16 00:00:14', '2021-12-16 00:00:14'),
(7, 81, 1, '2021-12-16 00:00:14', '2021-12-16 00:00:14'),
(8, 81, 2, '2021-12-16 00:04:18', '2021-12-16 00:04:18'),
(10, 81, 5, '2021-12-16 00:14:47', '2021-12-16 00:14:47'),
(11, 81, 6, '2021-12-16 00:17:52', '2021-12-16 00:17:52'),
(12, 81, 7, '2021-12-16 00:20:08', '2021-12-16 00:20:08');

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
(346, 'default', '{\"uuid\":\"d8a4fa3c-9268-45dd-bf15-a5908a52ed90\",\"displayName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\\\":10:{s:9:\\\"studentID\\\";i:83;s:8:\\\"schoolID\\\";i:159;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1638599357, 1638599357),
(347, 'default', '{\"uuid\":\"a94e792c-16a4-4588-b410-854c3a03d9ac\",\"displayName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\\\":10:{s:9:\\\"studentID\\\";i:86;s:8:\\\"schoolID\\\";i:159;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1638600317, 1638600317),
(348, 'default', '{\"uuid\":\"572bc978-39c6-44db-881a-d7c1964d4661\",\"displayName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\\\":10:{s:9:\\\"studentID\\\";i:87;s:8:\\\"schoolID\\\";i:159;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1638603289, 1638603289),
(349, 'default', '{\"uuid\":\"86bf193b-2fd9-449b-ae01-fe7ffdd0073b\",\"displayName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\\\":10:{s:9:\\\"studentID\\\";i:88;s:8:\\\"schoolID\\\";i:159;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1638603579, 1638603579),
(350, 'default', '{\"uuid\":\"2c61bc63-f957-4b28-95d0-2d04616c3ef2\",\"displayName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\\\":10:{s:9:\\\"studentID\\\";i:89;s:8:\\\"schoolID\\\";i:159;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1638620859, 1638620859),
(351, 'default', '{\"uuid\":\"5d038ccb-ae90-4e7c-bfcf-75afb091f80e\",\"displayName\":\"App\\\\Jobs\\\\quizAttachmentUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\quizAttachmentUploaderJob\",\"command\":\"O:34:\\\"App\\\\Jobs\\\\quizAttachmentUploaderJob\\\":10:{s:4:\\\"data\\\";s:29:\\\"1639453391Assignment On 3.pdf\\\";s:2:\\\"id\\\";i:1;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1639453392, 1639453392),
(352, 'default', '{\"uuid\":\"72bc7c78-eaa4-4512-9a14-064f117673c1\",\"displayName\":\"App\\\\Jobs\\\\questionImageUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionImageUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionImageUploaderJob\\\":10:{s:4:\\\"data\\\";s:20:\\\"1639454988250502.jpg\\\";s:2:\\\"id\\\";i:1;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1639454988, 1639454988),
(353, 'default', '{\"uuid\":\"91b12929-0e02-40b4-9acb-6a963a20a17a\",\"displayName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionAudioUploaderJob\\\":10:{s:4:\\\"data\\\";s:17:\\\"163945498820w.png\\\";s:2:\\\"id\\\";i:1;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1639454988, 1639454988),
(354, 'default', '{\"uuid\":\"a3395a7a-acbe-4d69-83b3-1c9263607f2c\",\"displayName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\\\":10:{s:9:\\\"studentID\\\";i:56;s:8:\\\"schoolID\\\";i:159;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1639572328, 1639572328),
(355, 'default', '{\"uuid\":\"fcc3cb35-05b4-4f00-ac89-17329d4f5c7b\",\"displayName\":\"App\\\\Jobs\\\\questionImageUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionImageUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionImageUploaderJob\\\":10:{s:4:\\\"data\\\";s:37:\\\"16396320612309215-1595870723613_3.jpg\\\";s:2:\\\"id\\\";i:2;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1639632063, 1639632063),
(356, 'default', '{\"uuid\":\"07287449-0b3f-464c-a140-09217a242c9c\",\"displayName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionAudioUploaderJob\\\":10:{s:4:\\\"data\\\";s:20:\\\"1639632063250502.jpg\\\";s:2:\\\"id\\\";i:2;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1639632063, 1639632063);

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
(46, 'Academic', 'Classes', 'student-class', 42, 3, NULL, 1, '2021-08-08 05:10:16', '2021-08-14 03:18:59'),
(47, 'Academic', 'Subjects', 'subject', 42, 4, NULL, 1, '2021-08-09 02:00:34', '2021-08-14 03:19:06'),
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
(68, 'Report Dashboard', 'Report Dashboard', '', 0, NULL, 'pe-7s-note2', 1, '2021-12-06 23:26:44', '2021-12-06 23:32:32'),
(69, 'Report Dashboard Sub', 'Report Dashboard Sub', 'report', 68, NULL, NULL, 1, '2021-12-06 23:30:31', '2021-12-08 01:23:43'),
(70, 'School Overview', 'School Overview', 'school-overview', 0, NULL, 'pe-7s-note2', 1, '2021-12-08 01:15:04', '2021-12-08 01:23:50'),
(71, 'Top Student Report', 'Top Student Report', 'top-student-report', 55, 13, NULL, 1, '2021-12-08 22:20:58', '2021-12-08 22:20:58'),
(72, 'Message & Notification', 'Send Message', 'send-message', 48, NULL, NULL, 1, '2021-12-14 22:15:05', '2021-12-14 22:15:05');

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
(45, NULL, 'first', 490, 523, NULL, 0, 1, '2021-12-18 04:34:47', '2021-12-18 04:34:47');

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
(55, '2021_08_10_023456_create_topics_table', 23),
(56, '2021_08_16_061141_create_student_subjects_table', 24),
(57, '2021_08_18_060411_create_notice_categories_table', 25),
(58, '2021_08_18_060534_create_notices_table', 25),
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
(96, '2021_09_09_073115_create_assignments_table', 45);

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
(2, 'First day', 2, 'Ok', '2021-08-26', '1639208395.png', '2021-08-28', 'Active', NULL, NULL, '2021-08-25 04:26:07', '2021-12-11 01:39:55'),
(3, 'dhaka', 1, 'ad', '2021-12-23', 'MISSION.png1639826184.png', '2021-12-31', 'Active', NULL, NULL, '2021-12-18 05:16:24', '2021-12-18 05:16:24');

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
('0f73e939-67ed-4d4d-ad98-68e24544e5d1', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 593, '{\"Type\":\"Message Chatbox\",\"Id\":\"593\",\"Message\":\"Send a Message in your Message box. Khan\"}', NULL, '2021-12-18 04:25:01', '2021-12-18 04:25:01'),
('151cabce-e8ab-4e29-9ca5-d2df2c8a8725', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 523, '{\"Type\":\"Message Chatbox\",\"Id\":\"523\",\"Message\":\"Send a Message in your Message box. Khan\"}', NULL, '2021-12-18 04:34:47', '2021-12-18 04:34:47'),
('28a84976-a89e-44b5-a4d6-cf66c09e1137', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Assignment done. test Assignment\"}', NULL, '2021-12-16 00:00:14', '2021-12-16 00:00:14'),
('3c3ae14d-510b-4e13-9d51-dd9a6fb0a05e', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Assignment done. new Quiz\"}', NULL, '2021-12-15 23:44:16', '2021-12-15 23:44:16'),
('402c7f39-1529-4f75-93e0-10a1703efbea', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 526, '{\"Type\":\"Message Chatbox\",\"Id\":\"526\",\"Message\":\"Send a Message in your Message box. Khan\"}', NULL, '2021-12-18 04:34:03', '2021-12-18 04:34:03'),
('473515ff-140a-483d-bd46-9b93f606ec1b', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 523, '{\"Type\":\"Quizzes\",\"Id\":\"8\",\"Message\":\"Student Assign Assignment done. second Quiz\"}', NULL, '2021-12-15 23:53:56', '2021-12-15 23:53:56'),
('4afc3b51-644c-4838-935e-d49afcd00deb', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Assignment done. new Quiz\"}', NULL, '2021-12-15 23:44:16', '2021-12-15 23:44:16'),
('5a66149c-cf18-4739-ac19-4fae3a85c0e1', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Assignment done. First Assignment\"}', NULL, '2021-12-13 22:16:33', '2021-12-13 22:16:33'),
('5f0615f0-423b-4410-a72f-d259652fcb5b', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Assignment done. gsfd\"}', NULL, '2021-12-16 00:04:18', '2021-12-16 00:04:18'),
('9b5b971a-74b8-46c8-b792-a2b22524161a', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Assignment done. adsf\"}', NULL, '2021-12-16 00:12:29', '2021-12-16 00:12:29'),
('9e044576-4d15-4acd-abdb-f6b8f37860f8', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Assignment done. second Quiz\"}', NULL, '2021-12-15 23:53:56', '2021-12-15 23:53:56'),
('b7326217-cfd1-41aa-b453-743a7025b196', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 529, '{\"Type\":\"Quizzes\",\"Id\":\"13\",\"Message\":\"Student Assign Quizzes done. Testing Quiz - 1\"}', NULL, '2021-12-18 02:29:10', '2021-12-18 02:29:10'),
('cbb1db89-fb18-489e-809c-e47ba2e1661d', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Assignment done. test Assignment\"}', NULL, '2021-12-16 00:00:14', '2021-12-16 00:00:14'),
('d18bcdd8-9ce0-403f-9afb-85fc82606ba1', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 593, '{\"Type\":\"Message Chatbox\",\"Id\":\"593\",\"Message\":\"Student Class Update\\/Passed Year done. Khan\"}', NULL, '2021-12-18 04:22:04', '2021-12-18 04:22:04'),
('d299dd25-9308-4fd1-88bb-3ab23962afc9', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Assignment done. Assignment 2\"}', NULL, '2021-12-16 00:17:52', '2021-12-16 00:17:52'),
('eaeee0c1-0aef-4604-93ec-91ac6cf0daad', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 523, '{\"Type\":\"Message Chatbox\",\"Id\":\"523\",\"Message\":\"Send a Message in your Message box. Khan\"}', NULL, '2021-12-18 04:34:12', '2021-12-18 04:34:12'),
('fb38cf61-6a6c-4d68-843b-8d9d3a41025b', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 577, '{\"Type\":\"Quizzes\",\"Id\":\"81\",\"Message\":\"Student Assign Assignment done. Assignment -4\"}', NULL, '2021-12-16 00:20:08', '2021-12-16 00:20:08');

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
(1, 1, '2', '1', '2021-12-13 22:09:48', '2021-12-13 22:09:48'),
(2, 1, '8', '0', '2021-12-13 22:09:48', '2021-12-13 22:09:48'),
(3, 1, '2', '1', '2021-12-13 22:09:48', '2021-12-13 22:09:48'),
(4, 1, '6', '0', '2021-12-13 22:09:48', '2021-12-13 22:09:48'),
(5, 2, 'True', '0', '2021-12-15 23:21:03', '2021-12-15 23:21:03'),
(6, 2, 'False', '1', '2021-12-15 23:21:03', '2021-12-15 23:21:03');

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
(1, 1, '5+5+ --- + ---- = 14', 1.00, 'Multiple choice', NULL, NULL, 1, NULL, 'Active', '2021-12-13 22:09:48', '2021-12-13 22:09:48'),
(2, 1, '2+2 = 3', 1.00, 'True/false', NULL, NULL, 2, NULL, 'Active', '2021-12-15 23:21:01', '2021-12-15 23:21:01');

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
(1, 159, 2, 3, 16, 7, 'Testing Quiz - 1', 'now', NULL, NULL, 2, 2, 'Published', 'Active', '2021-12-13 21:43:11', '2021-12-15 23:21:03');

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
(1, 81, 1, 1, '2021-12-14 04:16:33', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-13 22:16:33', '2021-12-13 22:16:33'),
(2, 8, 1, 2, '2021-12-16 05:44:16', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-15 23:44:16', '2021-12-15 23:44:16'),
(3, 81, 1, 2, '2021-12-16 05:44:16', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-15 23:44:16', '2021-12-15 23:44:16'),
(4, 8, 1, 3, '2021-12-16 05:53:56', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-15 23:53:56', '2021-12-15 23:53:56'),
(5, 81, 1, 3, '2021-12-16 05:53:56', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-15 23:53:56', '2021-12-15 23:53:56'),
(6, 8, 1, 1, '2021-12-16 06:00:14', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-16 00:00:14', '2021-12-16 00:00:14'),
(7, 81, 1, 1, '2021-12-16 06:00:14', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-16 00:00:14', '2021-12-16 00:00:14'),
(8, 81, 1, 2, '2021-12-16 06:04:18', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-16 00:04:18', '2021-12-16 00:04:18'),
(9, 81, 1, 5, '2021-12-16 06:12:29', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-16 00:12:29', '2021-12-16 00:12:29'),
(10, 81, 1, 6, '2021-12-16 06:17:52', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-16 00:17:52', '2021-12-16 00:17:52'),
(11, 81, 1, 7, '2021-12-16 06:20:08', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-16 00:20:08', '2021-12-16 00:20:08'),
(12, 13, 1, NULL, '2021-12-18 08:29:09', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2021-12-18 02:29:09', '2021-12-18 02:29:09');

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
(160, 'Bengol Medium', 'Dhaka', 'bengol@gmail.com', '05255', 'Robin', '0555855', 'Rasel', '2552021', '2021-08-03', NULL, NULL, NULL, 'Active', '2021-08-06 23:06:21', '2021-08-06 23:06:21'),
(175, 'Badsa Faisal', 'Mohmmadpur, Dhaka', 'badsafaisal@gmail.com', '01737988947', 'Badsa Faisal', '01736905530', 'Rosid', '013525689', '2021-12-19', '2022-05-25', 'No', '1639907469razib.png', 'Active', '2021-12-19 03:51:09', '2021-12-19 03:51:09'),
(180, 'Mirpur Model', 'Mirpur, Dhaka', 'mirpur@gmail.com', '01737988947', 'Rahim', '01737988947', 'Rana', '0135859698', '2021-12-19', '2021-12-30', 'No', '1639907813icon-7-removebg-preview.png', 'Active', '2021-12-19 03:56:53', '2021-12-19 03:56:53');

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
('848bcNCvciNahJW7JIcdoCxe4xPuHNYBZlCpPLii', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicG9YVUJlc3EzYnZ3VVlJZU0xUG1VUVNGZzFtWEJTeUNiSEhuQ2E2YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sb2NhbGhvc3QvdWstc2Nob29sL3B1YmxpYy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639914660, '2021-12-19 11:51:00', NULL),
('EFwQprHJlWFZxVMutjiB8bebU77Yuc8PpBvCeJaS', 490, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiNGxrWHk5aTZHR05nT1FnQXoxSGVkY3VFZTRDTEhJSFFNVm15TmhWMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHA6Ly9sb2NhbGhvc3QvdWstc2Nob29sL3B1YmxpYy9zZXR0aW5nL2FkbWluL25vdGljZS1jYXRlZ29yeSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ5MDtzOjU6ImVtYWlsIjtzOjIwOiJtb2htbWFkcHVyQGdtYWlsLmNvbSI7czoxMDoibGFzdF9sb2dpbiI7TjtzOjE2OiJyZXBvcnRfc2Nob29sX2lkIjtpOjE1OTt9', 1639915751, '2021-12-19 11:46:25', NULL),
('eObSz4pd38FdfC1zBsIM38dHle3k7bzA7OXJvUwO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid3NndXp0MWtJZlQ0Qkk3VWxvYUFOYXUzVmVrN0hXQ1pGUTlkakN4SSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMzoiaHR0cDovL2xvY2FsaG9zdC91ay1zY2hvb2wvcHVibGljIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sb2NhbGhvc3QvdWstc2Nob29sL3B1YmxpYy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639915802, '2021-12-19 12:10:01', NULL),
('tD5YTiYNS5TgmDBPDmM0Ra9yYfY0vjMUxb4ncYUt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVHVLZUoyVnN4RXpkMTRRMnRvdWlzNm8xV2d1TWhjc3N6cXRyMERFSiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cDovL2xvY2FsaG9zdC91ay1zY2hvb2wvcHVibGljL3RlYWNoZXIiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MToiaHR0cDovL2xvY2FsaG9zdC91ay1zY2hvb2wvcHVibGljL3RlYWNoZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639914660, '2021-12-19 11:51:00', NULL);

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
(81, '159210081', 'DhkA', 'sumon@gmail.com', '02555', 'Sumon', 'Fahim', NULL, '2021-07-05', 'Male', 'ASDFAD', '025558', 'SDE@GMAIL.COM', NULL, 'Active', '159', 4, '2021-10-04 05:43:58', '2021-10-04 06:02:41'),
(82, '159210082', 'sadf', 'mamaun@gmail.com', '0122', 'Baby', 'Khan', NULL, '2021-11-04', 'Male', 'sdaf', '02355', 'asdfasdf@gmail.com', 'asdf', 'Active', '159', 3, '2021-11-18 01:02:48', '2021-11-28 00:53:59'),
(83, '159210083', 'Dhaka', 'rajib@gmail.com', '0125', 'Rajib', 'hasan', NULL, '2021-12-08', 'Male', 'Habibur Rahman', '025585', 'habis@gmail.com', 'sadf', 'Active', '159', 1, '2021-12-04 00:29:16', '2021-12-04 00:29:16'),
(86, '159210086', 'asdf', 'gtadsf@gmail.com', '0555', 'asd', 'rtrg', 'asdf', '2021-12-07', 'Male', 'dsfasd', '05588', 'adfgeewwghh@gmail.com', 'sdf', 'Active', '159', 3, '2021-12-04 00:45:17', '2021-12-04 00:45:17'),
(87, '159210087', 'asdf', 'mklasdf@gmail.com', '021556', 'tutkiasdf', 'asdf', 'sdaf', '2021-12-08', 'Male', 'asdfasd', '0255', 'jots@gmail.com', 'asdf', 'Active', '159', 1, '2021-12-04 01:34:49', '2021-12-04 01:34:49'),
(88, '159210088', 'Dhaka', 'toda@gmail.com', '01225555', 'now', 'asdf', 'sadf', '2021-11-30', 'Male', 'adsfasd', '02555', 'madsf@gmail.com', 'asdf sdf', 'Active', '159', 1, '2021-12-04 01:39:39', '2021-12-04 01:39:39'),
(89, '159210089', 'asdf', 'prothom@gmail.com', '02858589', 'Prothom', 'hossain', NULL, '2021-12-09', 'Male', 'josim', '0255552', 'josim@gmail.com', 'sadf', 'Active', '159', 3, '2021-12-04 06:27:39', '2021-12-11 01:03:34');

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
(100, 3, 89, 'Active', '2021-12-11 01:03:34', '2021-12-11 01:03:34');

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
(283, 67, 89, 'Active', '2021-12-11 01:03:34', '2021-12-11 01:03:34');

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
(39, '159210039', 'asdf', 'nayem@gmail.com', '0525', 'Nayem', 'Hasan', NULL, '2021-08-19', 'Bangladesh', 'She-Male', 'New', 'Any', 'Part-time', '25000.00', 'asdf', 'Active', '159', '2021-08-14 05:17:02', '2021-08-14 05:17:02'),
(56, '159210056', 'Dhaka', 'uzzald@gmail.com', '01723', 'Uzzal', 'Hasan', NULL, '2021-12-15', 'Bangladeshi', 'Male', 'BBA', 'Math', 'Permanent', '12000.00', 'Details', 'Active', '159', '2021-12-15 06:45:27', '2021-12-15 06:45:27');

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
(24, 63, 56, 'Active', '2021-12-15 06:45:28', '2021-12-15 06:45:28');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_login_time` time DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `user_profile_image`, `contact_no`, `remarks`, `school_id`, `status`, `type`, `typable_id`, `login_status`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `total_login_time`, `user_name`) VALUES
(1, 'Momit', 'Hasan', 'momit@technolife.ee', '1616308888.jpg', '74645564654', NULL, NULL, 1, 'Admin', NULL, 1, '$2y$10$zFj3Z1gRkrbgUvoNXF6cXubdAp8p54yy4kRgJ421RQNqllCEvHJka', NULL, NULL, '2021-06-07 06:50:15', '2021-09-21 03:32:28', '00:00:00', 'momit'),
(29, 'Rajib', 'Hasan', 'razibeee2014@gmail.com', NULL, '456456456', NULL, NULL, 1, 'Admin', NULL, 1, '$2y$10$qK5RD3aGjY/oMmef3QBGmuTxLDVVTzigeWdTXf4dGaf46Eo61gKwm', NULL, NULL, '2021-07-14 06:43:53', '2021-12-19 05:30:49', '00:00:00', 'razib_01'),
(490, 'Khan', NULL, 'mohmmadpur@gmail.com', NULL, '02528588', 'sdafads', 159, 1, 'School', NULL, 0, '$2y$10$r20TbXUdQ26z6pwO.atjSuy0Qmqia..pjOyJKF3qDMxc76vATlBIi', NULL, NULL, '2021-08-07 05:03:48', '2021-12-19 05:46:25', '04:27:53', 'mohammadpur'),
(491, 'new', 'Boys', 'boys@gmail.com', NULL, '02525', NULL, 159, 1, 'School', NULL, 1, '$2y$10$jP3.9WMTPGvSg2AcuK9Zhec0qTMvB6vIXyW/CbxaDl2idIWEz2VPW', NULL, NULL, '2021-08-07 05:04:47', '2021-12-19 05:27:45', '00:00:00', 'boys'),
(492, 'Fahim', 'Korim', 'fahim@gmail.com', NULL, '02555', NULL, NULL, 1, 'Admin', NULL, 0, '$2y$10$ovGVQH9WU3ZKVxsIxcFc1edNWC.10MEmMNry/Z.PnxPdGNEBwC3XS', NULL, NULL, '2021-08-07 05:05:30', '2021-08-07 05:05:30', '00:00:00', ''),
(493, 'Robin', '', 'bengol@gmail.com', NULL, '05255', NULL, 160, 1, 'School', NULL, 1, '$2y$10$3Yzuf8.h22vdks3gTi3UhezdAzRJKybS6VXEHMfvI8vDRM688wAGq', NULL, NULL, '2021-08-07 05:06:21', '2021-12-14 00:53:32', '00:00:00', 'bengol'),
(523, 'Rana', NULL, 'rana@gmail.com', '1632204262pro.png', '012544', NULL, 159, 1, 'Student', 8, 1, '$2y$10$Xy2V2fwt4n4fmkukBXwdNuKiFpeBOv3lNy/SQV5ZPnuNrv3BG5sfy', NULL, NULL, '2021-08-14 04:44:19', '2021-12-18 01:12:24', '00:00:00', 'rana'),
(524, 'Nayem', NULL, 'nayem@gmail.com', NULL, '0525', 'asdf', 159, 1, 'Teacher', 39, 1, '$2y$10$Io6r6SMCs3BTbIr4XJUIH.m9xQX1DXE0e/Tz0sFqNNsw376muHzTy', NULL, NULL, '2021-08-14 05:17:02', '2021-12-15 06:32:49', '00:00:00', 'nayem'),
(525, 'asdf', NULL, 'asdfasdf@gmail.com', NULL, '0222525', NULL, 159, 1, 'Student', 9, 0, '$2y$10$jIQKy3jDiu0r7xwr6ZV3/unz8biI5KubG31i0F3.Rt6mqUkDUPcmC', NULL, NULL, '2021-08-16 02:57:25', '2021-08-16 03:20:14', '00:00:00', ''),
(526, 'asdf', 'asdf', 'asdfasd@gmail.com', NULL, '025566', 'sadff', 159, 1, 'Student', 10, 0, '$2y$10$64MY2Lybfv.hd05S3yUB8e40C1/n.noMlHSLWDlCY4rDa5AccLLMq', NULL, NULL, '2021-08-16 06:45:02', '2021-08-16 06:45:02', '00:00:00', ''),
(527, 'Kamal', 'First', 'mohammad@gmail.com', NULL, '012477', 'sdfdsaf', 159, 1, 'Student', 11, 0, '$2y$10$l7xK3CZz5497uqtE.bd5t.uvSmhgq7dcVYf2P89o7tH.n47Hdbv2a', NULL, NULL, '2021-09-05 07:33:45', '2021-09-05 07:33:45', '00:00:00', ''),
(528, 'Abir', '', 'abir@gmail.com', '1630912648logo-finals.png', '12345678', NULL, 159, 1, 'Student', 12, 0, '$2y$10$EKKVSPRzfpNRHHEE5JO6tu/pE7uH5FtR2fcX8cnjw5gbHhpXqvpw6', NULL, NULL, '2021-09-06 01:17:28', '2021-09-06 01:17:28', '00:00:00', ''),
(529, 'Rabbi', NULL, 'rabbi@gmail.com', NULL, '0125', NULL, 159, 1, 'Student', 13, 1, '$2y$10$5bvFspAZCNwndJl2TysG9e31kZBjTvXasHnsAd/yE82GztUkQSbH.', NULL, NULL, '2021-09-06 01:19:11', '2021-12-19 01:14:55', '00:00:00', 'rabbi'),
(530, 'Anis', NULL, 'anis@gmail.com', NULL, '03698', NULL, 159, 1, 'Student', 14, 0, '$2y$10$fKbkQA9vo4Y0wJ23eOGmvevdma/OqKy7yFJfZf39Yz1tOWQbIYZKu', NULL, NULL, '2021-09-06 01:20:15', '2021-09-22 23:47:21', '00:00:00', ''),
(531, 'Rajaul', NULL, 'rajaul@gmail.com', NULL, '25896', NULL, 159, 1, 'Student', 15, 0, '$2y$10$4vhfElaY3rkxGDZXc5ZBx.BV3A53QHL4awIq6GknAKejIGgqviAIW', NULL, NULL, '2021-09-06 01:21:23', '2021-09-27 02:26:26', '00:00:00', ''),
(532, 'Nasif', NULL, 'nasif@gmail.com', NULL, '0255', NULL, 159, 1, 'Student', 16, 0, '$2y$10$wf5E0U6Ft9.mOEVGDk87eu3PaTlIEzps3ogATouprLz6b8ECq7FXi', NULL, NULL, '2021-09-06 13:40:45', '2021-09-24 23:17:05', '00:00:00', ''),
(534, 'Masud', '', 'masud@gmail.com', '1632208172razib.png', '01737988947', 'dd', 159, 1, 'Student', 18, 0, '$2y$10$blRd45IU5fbrc4.It1QH3e0yUdMNjWTpaYAkjDiT1XVZfahRHpGWi', NULL, NULL, '2021-09-21 01:09:32', '2021-09-21 01:09:32', '00:00:00', ''),
(535, 'err', '', 'titas@gmail.com', NULL, '01254858', 'ee', 159, 1, 'Student', 19, 0, '$2y$10$TRyMwShuBvop58Ef9nOmPOb9X52Lrl7mcMUrW5QGXVEQ1E7CxrWq.', NULL, NULL, '2021-09-21 01:20:51', '2021-09-21 01:20:51', '00:00:00', ''),
(536, 'Gazi', '', 'gazi@gmail.com', NULL, '01225', 'rr', 159, 1, 'Student', 20, 0, '$2y$10$FYJ.1pZu7/JpJv.PTVldMuv1Kx1pxmVjaOJ65/b7AJ4LukEyZ/UnW', NULL, NULL, '2021-09-21 01:31:04', '2021-09-21 01:31:04', '00:00:00', ''),
(537, 'Asif', '', 'asif@gmail.com', NULL, '01255', 'Ro', 159, 1, 'Student', 21, 0, '$2y$10$40bmlJSOe3ZOtOY5HtMQMudSn9Y5yMdqBTFK6Q1aMkAaURcDP5EaW', NULL, NULL, '2021-09-21 02:00:53', '2021-09-21 02:00:53', '00:00:00', ''),
(538, 'Sabbir', '', 'sabbir@gmail.com', NULL, '01245', 'er', 159, 1, 'Student', 22, 0, '$2y$10$w.qRZHeYbdp7Pc8.6oUYWOSEAbo3tHsexJkHJar1tjo8H.abjZP0W', NULL, NULL, '2021-09-21 02:06:35', '2021-09-21 02:06:35', '00:00:00', ''),
(539, 'Mamun', '', 'mamun@gmail.com', NULL, '01255', 'tw', 159, 1, 'Student', 23, 0, '$2y$10$gC1iR8ERnQ62hwREjWyrxe5i0/Q27h.bD4Ax3P0dmoT7VDnjxFGWW', NULL, NULL, '2021-09-21 05:47:59', '2021-09-21 05:47:59', '00:00:00', ''),
(540, 'Rabi', '', 'robij@gmail.com', NULL, '0122', 're', 159, 1, 'Student', 24, 0, '$2y$10$ODv1hrDpp9kBU2N4HHpL8O.7JUPGEWoHQsEbDE4kPFHm/yjlyuWFa', NULL, NULL, '2021-09-21 06:09:40', '2021-09-21 06:09:40', '00:00:00', ''),
(543, 'Kamal', '', 'kam@gmail.com', NULL, '012555', NULL, 159, 1, 'Student', 27, 0, '$2y$10$Uf0bRShXrejt9.JqeDiWoOibTq0W/UtnV2XMOUmNF8W0gjzJliNe6', NULL, NULL, '2021-09-22 02:56:49', '2021-09-22 02:56:49', '00:00:00', ''),
(544, 'Sadik', 'e', 'tit@gmail.com', NULL, '02322', NULL, 159, 1, 'Student', 28, 0, '$2y$10$e4HJ8tLqlmH0E8xg.16I/e9VPF9NJ7ghscqQvYVVDQh3EFQf/ywmS', NULL, NULL, '2021-09-22 03:02:56', '2021-09-22 03:02:56', '00:00:00', ''),
(545, 'Kitu', '', 'jamin@gmail.com', NULL, '0173989', NULL, 159, 1, 'Student', 29, 0, '$2y$10$ffvqqH.FJSEzQo3Tp6myPuamV7z7p14nsAkYC3O9XwjARgp1pUkKu', NULL, NULL, '2021-09-22 03:07:41', '2021-09-22 03:07:41', '00:00:00', ''),
(547, 'Hamid', '', 'hamid@gmail.com', NULL, '025858', NULL, 159, 1, 'Student', 31, 0, '$2y$10$EBa7ORHQdtckOz8BotLOsecgG88u8wRRNnLwZnR8Ak2niA7k1Mqxe', NULL, NULL, '2021-09-22 03:24:17', '2021-09-22 03:24:17', '00:00:00', ''),
(548, 'babla', '', 'babla@gmail.com', NULL, '02588', NULL, 159, 1, 'Student', 32, 0, '$2y$10$GvAxOLsn2wv2yssnCzGv1O38a0JBqyza19kt7FryY.7fpO4BfCdom', NULL, NULL, '2021-09-22 03:30:16', '2021-09-22 03:30:16', '00:00:00', ''),
(549, 'ee', '', 'non@gmail.com', NULL, '02525', NULL, 159, 1, 'Student', 33, 0, '$2y$10$V6uHqyGPrBIZL6qV64tDMudEGtDRhf9az/W8d9cnR4Ow9Dhb1kqoG', NULL, NULL, '2021-09-22 03:34:42', '2021-09-22 03:34:42', '00:00:00', ''),
(550, 'razzak', '', 'razzak@gmail.com', NULL, '01255', NULL, 159, 1, 'Student', 34, 0, '$2y$10$dA7wXTSeFNHSN0jdMf9TzuvvKfHEGp7JfyxzrJqaukmYvY.rILTmC', NULL, NULL, '2021-09-22 03:56:06', '2021-09-22 03:56:06', '00:00:00', ''),
(551, 'Jisan', NULL, 'jisan@gmail.com', NULL, '0125', NULL, 159, 1, 'Student', 35, 0, '$2y$10$/Ewo7CbbkVcI9ErpHARDZOLZqulGoVgwFcx45Yh2iSLiLw7L/NaQy', NULL, NULL, '2021-09-22 04:52:22', '2021-09-22 06:09:32', '00:00:00', ''),
(552, 'Monir', '', 'monir@gmail.com', NULL, '05255', NULL, 159, 1, 'Student', 36, 0, '$2y$10$WBbueWj8EBCHz868SLXdoug17bOzkLbC0HuoEdISWBU5xY1JcWHnu', NULL, NULL, '2021-09-22 10:04:17', '2021-09-22 10:04:17', '00:00:00', ''),
(553, 'Naimur', '', 'nahid@gmail.com', NULL, '0525585', NULL, 159, 1, 'Student', 37, 0, '$2y$10$jFpriKqbFexDCnm9FtGhz.lQ8ICxcvf4frGBTS4z6xieNOEwMfq.m', NULL, NULL, '2021-09-22 10:06:57', '2021-09-22 10:06:57', '00:00:00', ''),
(554, 'nakib', '', 'nakib@gmail.com', NULL, '011255', NULL, 159, 1, 'Student', 38, 0, '$2y$10$CzIzCCic2FjVtQ1WoNJlIuXJ0O25lnv5.B9gdVott8u9rZ2OpjSIG', NULL, NULL, '2021-09-22 10:12:12', '2021-09-22 10:12:12', '00:00:00', ''),
(557, 'Fahims', '', 'fahims@gmail.com', NULL, '025585', NULL, 159, 1, 'Student', 41, 0, '$2y$10$j.apL7sQ1sK2y8QnEVWH6uw0tinDoM4gnGd7Cq3Ny2PB1TzegGSJ6', NULL, NULL, '2021-09-22 11:57:29', '2021-09-22 11:57:29', '00:00:00', ''),
(558, 'gias', '', 'gias@gamil.com', NULL, '122', NULL, 159, 1, 'Student', 42, 0, '$2y$10$nijMMgHXJNCHeWHnR9zJ1OnO8C24PuwIGkq5..5Ir.E9aLSiSFQPm', NULL, NULL, '2021-09-22 12:01:41', '2021-09-22 12:01:41', '00:00:00', ''),
(561, 'rsadf', '', 'asdfaseeed@gmail.com', NULL, '000255', NULL, 159, 1, 'Student', 45, 0, '$2y$10$wyfO1n6IWzZiufqdIGaTQ.K.o7VTWOsOCdcd7ZKpesrz8sz3.0H4.', NULL, NULL, '2021-09-22 12:14:22', '2021-09-22 12:14:22', '00:00:00', ''),
(562, 'asdf', '', 'eati@gmail.com', NULL, '052585', NULL, 159, 1, 'Student', 46, 0, '$2y$10$3MSBm3FZFaOP49L7acyr3OYRv377gbltoqGCDmapaNYbI3DGhxvq.', NULL, NULL, '2021-09-22 12:16:08', '2021-09-22 12:16:08', '00:00:00', ''),
(566, 'fdg', '', 'asdfasdfrer@gmail.com', NULL, '02122', NULL, 159, 1, 'Student', 70, 0, '$2y$10$HE6BVFMjdW2yqy07UGlxgeIHzQN3IvN2I/gq0dlv60bkFBTxYaPaC', NULL, NULL, '2021-09-22 12:37:04', '2021-09-22 12:37:04', '00:00:00', ''),
(567, 'Notun', NULL, 'notun@gmail.com', NULL, '02565658', NULL, 159, 1, 'Student', 71, 0, '$2y$10$9lhgwTbDMRBomBgsJ8XNWOQQdG67fBRKfr01/XmCzXsjAOSik0.dG', NULL, NULL, '2021-09-22 12:52:38', '2021-09-24 13:13:38', '00:00:00', ''),
(568, 'adfasd', '', 'trrr@gmail.com', NULL, '01222', NULL, 159, 1, 'Student', 72, 0, '$2y$10$lKq8B6px17amlqJ69e7PKeaFiIQ3leKnMPCaE.hCu2UdNp8C6Fji2', NULL, NULL, '2021-09-22 13:57:10', '2021-09-22 13:57:10', '00:00:00', ''),
(569, 'sadsad', '', 'laboni@gmail.com', NULL, '0125858', NULL, 159, 1, 'Student', 73, 0, '$2y$10$GawDUFl5PCeAXtq/YobZuOsKvgFyYgVDhIPvzH2r6JVs01jRv9HZe', NULL, NULL, '2021-09-22 14:04:05', '2021-09-22 14:04:05', '00:00:00', ''),
(570, 'asdfdff', '', 'drrdf@gmail.com', NULL, '02555', NULL, 159, 1, 'Student', 74, 0, '$2y$10$50slck0FxYh0.SZQhO29yu.e1q/aXvxKIWKVyeRXZkBU9GS1cysMm', NULL, NULL, '2021-09-22 14:35:53', '2021-09-22 14:35:53', '00:00:00', ''),
(571, 'asdfsda', NULL, 'hghh@gmail.com', NULL, '05255', NULL, 159, 1, 'Student', 75, 0, '$2y$10$dIcAHGOoyCkg6LiGR9az7ubdYeRS9.MwVv/ASZtwdabdTZ8Oif0R2', NULL, NULL, '2021-09-22 14:38:40', '2021-09-24 13:12:48', '00:00:00', ''),
(572, 'der', NULL, 'srrd@gmail.com', NULL, '012558', NULL, 159, 1, 'Student', 76, 0, '$2y$10$RpxjgMGUA20tgSnLiGaJI.vRSe6mqMfjrgO.fUFJA4Xw32gEi42uq', NULL, NULL, '2021-09-23 03:48:41', '2021-09-24 13:02:07', '00:00:00', ''),
(573, 'ereqr', NULL, 'mainsed@gmail.com', NULL, '0122', NULL, 159, 1, 'Student', 77, 0, '$2y$10$q9QCX4D9SmQo74Y9zGIi2ez0Y2FraqkMNZ59P8uv0PKOWEVo66pAS', NULL, NULL, '2021-09-24 21:37:56', '2021-09-24 21:38:14', '00:00:00', ''),
(574, 'Arif', NULL, 'arif@gmail.com', NULL, '0173798', NULL, 159, 1, 'Student', 78, 1, '$2y$10$9wXTQdOmDEvJBhCrN23KPuPN9BA1.hLmC8aP1fd.W4xYOxpwKTwaq', NULL, NULL, '2021-10-04 03:26:47', '2021-10-04 05:06:51', '00:00:00', ''),
(575, 'Jamal', NULL, 'jamal@gmail.com', NULL, '0525855', NULL, 159, 1, 'Student', 79, 0, '$2y$10$hz/TzFwhL0upLp2cRKfgKOvQfQDsK3wf0Si7U7TWy3ZBg5Jd.ovaa', NULL, NULL, '2021-10-04 04:03:03', '2021-10-04 04:05:23', '00:00:00', ''),
(576, 'uzzal', NULL, 'uzzal@gmail.com', NULL, '012555', NULL, 159, 1, 'Student', 80, 0, '$2y$10$RZMS.XkkalaFleZ5ERM6gOaUHH8THOyis2bXTwdXDb7WPu0zt2x.C', NULL, NULL, '2021-10-04 04:10:34', '2021-10-04 04:34:39', '00:00:00', ''),
(577, 'Sumon', NULL, 'sumon@gmail.com', NULL, '02555', NULL, 159, 1, 'Student', 81, 1, '$2y$10$WTzz5ihL822AbJVF73p04Omdhhjy3zUKxc6aOrinkxjDyUcphNWK2', NULL, NULL, '2021-10-04 05:43:59', '2021-12-19 01:16:04', '00:00:00', 'sumon'),
(578, 'Baby', NULL, 'mamaun@gmail.com', '1637218968194874947_2975730842701787_4319653882291682097_n.jpg', '0122', 'asdf', 159, 1, 'Student', 82, 0, '$2y$10$HUFHyA9cFvQ61IfF1z5VtOXJ1HSzJ7pnfhiPAWntqB.bXTDvvYsMK', NULL, NULL, '2021-11-18 01:02:48', '2021-11-28 00:53:59', NULL, ''),
(579, 'Rajib', '', 'rajib@gmail.com', NULL, '0125', 'sadf', 159, 1, 'Student', 83, 0, '$2y$10$CWoh1.zBjmyiyZK9FhS0kOpFiYX/gphFQI2LizPVExOUioh9JNn/e', NULL, NULL, '2021-12-04 00:29:16', '2021-12-04 00:29:16', NULL, ''),
(580, 'asd', 'asdf', 'gtadsf@gmail.com', NULL, '0555', 'sdf', 159, 1, 'Student', 86, 0, '$2y$10$i9l4xZOgSXubuoyyFLsZE.3n6p0GRkurk54/2W3Y5lCWcXT57ZG9m', NULL, NULL, '2021-12-04 00:45:17', '2021-12-04 00:45:17', NULL, ''),
(581, 'tutkiasdf', 'sdaf', 'mklasdf@gmail.com', NULL, '021556', 'asdf', 159, 1, 'Student', 87, 0, '$2y$10$/Q7aWRc8QwyTJMBdA4DfouAtDbjmtGphC2yAr5Mq9flL4bWnAl3J2', NULL, NULL, '2021-12-04 01:34:49', '2021-12-04 01:34:49', NULL, ''),
(582, 'now', 'sadf', 'toda@gmail.com', NULL, '01225555', 'asdf sdf', 159, 1, 'Student', 88, 0, '$2y$10$nzZw9kIC0eiRCVQotmw.IO4ClANYYH27IRbZwV2tpBcdBBLuCl8Wy', NULL, NULL, '2021-12-04 01:39:39', '2021-12-04 01:39:39', NULL, ''),
(583, 'Prothom', NULL, 'prothom@gmail.com', NULL, '02858589', 'sadf', 159, 1, 'Student', 89, 1, '$2y$10$l7LrTBLJ/.ZRRWAl0sLtc.48WEdZKuHLy8gWW7h/5IdxEMXxCRSjy', NULL, NULL, '2021-12-04 06:27:39', '2021-12-11 01:03:34', NULL, 'prothom'),
(592, 'Dhaka', 'Dilli', 'dilli@gmail.com', NULL, '0125', 'sdf', NULL, 1, 'Admin', NULL, 0, '$2y$10$wJ/s0m7WLSzV7c.91YV82OkzJ0f82OXQ17gHtvshtQgpHYO5/Z3l6', NULL, NULL, '2021-12-05 05:25:03', '2021-12-19 04:32:44', NULL, 'dhaka'),
(593, 'Uzzal', '', 'uzzald@gmail.com', '1639572327my-pic.jpg', '01723', 'Details', 159, 1, 'Teacher', 56, 1, '$2y$10$2nm97veFWsefSVGjxKbzx.dX4GeGlWMy78387MWkmi9kBwTvZvLBy', NULL, NULL, '2021-12-15 06:45:27', '2021-12-18 01:14:59', NULL, 'uzzald'),
(605, 'Badsa Faisal', '', 'badsafaisal@gmail.com', NULL, '01737988947', 'No', 175, 1, 'School', NULL, 0, '$2y$10$d/9qWLdZDldxutV5fO7oG.ZO7SfngYWOinMXSNOZ/9.DD0Tq.wOey', NULL, NULL, '2021-12-19 03:51:09', '2021-12-19 03:51:09', NULL, ''),
(606, 'Rahim', NULL, 'mirpur@gmail.com', NULL, '01737988947', 'No', 180, 1, 'School', NULL, 0, '$2y$10$Y1GQMW44Taysrl8kz1Eyhu8Zv.0/SX4bmIMxC9Fp2sFCw47luZgBi', NULL, NULL, '2021-12-19 03:56:53', '2021-12-19 04:26:18', NULL, 'mirpurmodels');

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
(602, 606, 2, 1, '2021-12-19 03:56:53', '2021-12-19 03:56:53');

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
(610, 29, 162, 0, '2021-12-14 22:17:38', '2021-12-14 22:17:38');

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
(1, 'pdTvVr4jRxnkMpFn2bam0KYPcBS7ScSvPeds4k2T', 490, '2021-12-13 21:42:19', NULL, NULL, '2021-12-13 21:42:19', '2021-12-13 21:42:19'),
(2, '22CT0fBDEOvJFsFRlFrPht63eNh8XEr4M1hydQRX', 490, '2021-12-13 23:23:20', '2021-12-13 23:30:08', '2021-12-13 18:06:48', '2021-12-13 23:23:20', '2021-12-13 23:30:08'),
(3, '7uJ84kc7xamBPizhFvAs5OaEkdsvS1Qw2Poiy6Vg', 29, '2021-12-13 23:30:13', '2021-12-13 23:31:01', '2021-12-13 18:00:48', '2021-12-13 23:30:13', '2021-12-13 23:31:01'),
(4, '4nVsZ55QIi8TKiJdDGQPlvQGLhJsrpAHP0rYFNJq', 490, '2021-12-13 23:31:10', '2021-12-13 23:43:38', '2021-12-13 18:12:28', '2021-12-13 23:31:10', '2021-12-13 23:43:38'),
(5, 'iQAqSzdih1OqPm7tQbUJX48wW4j4xiBdQ8Ctg3il', 29, '2021-12-13 23:43:42', '2021-12-13 23:44:01', '2021-12-13 18:00:19', '2021-12-13 23:43:42', '2021-12-13 23:44:01'),
(6, 'EAor2qk63IUslUUCMVIAa3Brz2BVGwegHNv1idzZ', 490, '2021-12-13 23:44:09', '2021-12-13 23:46:02', '2021-12-13 18:01:53', '2021-12-13 23:44:09', '2021-12-13 23:46:02'),
(7, 'h9AADDp2dUzwc0x8yKBhbWo9IM5Q8Dkb6PUpbfTG', 29, '2021-12-13 23:46:09', '2021-12-13 23:46:28', '2021-12-13 18:00:19', '2021-12-13 23:46:09', '2021-12-13 23:46:28'),
(8, 'IdigRN7fVj41EQLRmw2dVjZM2qNxsws2HGYthcZd', 490, '2021-12-13 23:46:33', NULL, NULL, '2021-12-13 23:46:33', '2021-12-13 23:46:33'),
(9, 'esZcKYyc039i5rPcr5H5eveFPiBqwhGclvgAtaBP', 490, '2021-12-14 00:05:35', NULL, NULL, '2021-12-14 00:05:35', '2021-12-14 00:05:35'),
(10, 'Nm7Clg5NSLuTMG8QqVu7ootH8g4gN2EMd8JFoZV0', 490, '2021-12-14 00:38:48', '2021-12-14 00:51:21', '2021-12-13 18:12:33', '2021-12-14 00:38:48', '2021-12-14 00:51:21'),
(11, 'RLuVCotNZA0kRJM6vupPbwlOiIQhzFPSmyNcCykU', 29, '2021-12-14 00:51:26', '2021-12-14 00:52:21', '2021-12-13 18:00:55', '2021-12-14 00:51:26', '2021-12-14 00:52:21'),
(12, 'TYRj0lS6gC7LJFjNyj3Z5I1ZvIFk2YLowqsoTyTt', 493, '2021-12-14 00:52:26', '2021-12-14 00:52:51', '2021-12-13 18:00:25', '2021-12-14 00:52:26', '2021-12-14 00:52:51'),
(13, '6O5zr3aBPhqLXRRZkTdeVCcoRjKNmm55G5jjGqnm', 493, '2021-12-14 00:52:59', '2021-12-14 00:53:32', '2021-12-13 18:00:33', '2021-12-14 00:52:59', '2021-12-14 00:53:32'),
(14, 'NvMR0qtU1x45Dof22F8lgwXhGdOto02gk2OPBOie', 490, '2021-12-14 00:54:01', '2021-12-14 01:34:15', '2021-12-13 18:40:14', '2021-12-14 00:54:01', '2021-12-14 01:34:15'),
(15, '5gyVSuKZn2xqQePp0PKO9C1TLXupO6etM5CVIeIy', 490, '2021-12-14 01:42:15', NULL, NULL, '2021-12-14 01:42:15', '2021-12-14 01:42:15'),
(16, 'RkK7VWdzYrYZLNrwztF0aspLYcJF5ItMXMc9OObv', 490, '2021-12-14 03:21:07', NULL, NULL, '2021-12-14 03:21:07', '2021-12-14 03:21:07'),
(17, '2lMjWThRfIjaAIBEl6ZBKT8N1JmZjZ4FUL18zzJZ', 490, '2021-12-14 04:47:53', NULL, NULL, '2021-12-14 04:47:53', '2021-12-14 04:47:53'),
(18, 'JHfoudPAWgpvhWzR0cYaEDISUrN0svkSJWozdOT9', 29, '2021-12-14 21:58:54', '2021-12-14 23:17:32', '2021-12-14 19:18:38', '2021-12-14 21:58:54', '2021-12-14 23:17:32'),
(19, 'BBQaMHy6gEKkMpLpat0Xa46ivVqDmY817zofHXPJ', 577, '2021-12-14 23:16:10', NULL, NULL, '2021-12-14 23:16:10', '2021-12-14 23:16:10'),
(20, 'uzkqKPQTE77hqkOc59Nf48p09xhJSBVgED2ESboe', 490, '2021-12-14 23:17:40', NULL, NULL, '2021-12-14 23:17:40', '2021-12-14 23:17:40'),
(21, 'hLu5CdHF7zUzSxzioThhWIvwrQGCX0WP1WcmVWxP', 490, '2021-12-14 23:57:22', '2021-12-14 23:58:44', '2021-12-14 18:01:22', '2021-12-14 23:57:22', '2021-12-14 23:58:44'),
(22, 'n9jPWtRGC3C2waluX1DO3aSFzPewewUHGmSs26l0', 29, '2021-12-14 23:58:50', NULL, NULL, '2021-12-14 23:58:50', '2021-12-14 23:58:50'),
(23, 'x5D3JqKU03tVhhFaqBog05lYdGEQ8cBHeHI0y28P', 490, '2021-12-15 00:00:24', '2021-12-15 00:00:37', '2021-12-14 18:00:13', '2021-12-15 00:00:24', '2021-12-15 00:00:37'),
(24, '0hvn749BqP8vQsZSRc9uPzlo99llwyL6yrWV9MJJ', 577, '2021-12-15 00:00:47', NULL, NULL, '2021-12-15 00:00:47', '2021-12-15 00:00:47'),
(25, 'emyVhBnY9oSCd6NDCU3PSATMhc1Pl7zjY4j5SgVT', 490, '2021-12-15 00:30:38', NULL, NULL, '2021-12-15 00:30:38', '2021-12-15 00:30:38'),
(26, 'kIfueLWwMGLRAN5n9kOG8eUSzswWVSvlD0lw9zRe', 490, '2021-12-15 04:07:41', '2021-12-15 04:07:52', '2021-12-14 18:00:11', '2021-12-15 04:07:41', '2021-12-15 04:07:52'),
(27, 'QkqeeI8DaRna933bYrEv9r32M30RV9vuZ6Ox5ye5', 29, '2021-12-15 04:07:57', '2021-12-15 04:24:02', '2021-12-14 18:16:05', '2021-12-15 04:07:57', '2021-12-15 04:24:02'),
(28, 'UKdtAS2zt0QnhfzoGfhY5CsPH4FNDGptCsk2jcDZ', 490, '2021-12-15 04:24:12', '2021-12-15 05:31:47', '2021-12-14 19:07:35', '2021-12-15 04:24:12', '2021-12-15 05:31:47'),
(29, '6LXZEOevPNJPLEY8P8gyvG2o5mtcepxikMkrF58m', 524, '2021-12-15 05:32:46', '2021-12-15 05:45:25', '2021-12-14 18:12:39', '2021-12-15 05:32:46', '2021-12-15 05:45:25'),
(30, '2rvKRGQRfnIOISFZuH5M2BLQ6KyRcD9MmUba8OIM', 490, '2021-12-15 05:45:30', '2021-12-15 06:01:41', '2021-12-14 18:16:11', '2021-12-15 05:45:30', '2021-12-15 06:01:41'),
(31, '0kucBbxiMOH4pdzPTz8M6PE4YQgWsPbOrCoDUHm2', 524, '2021-12-15 06:04:46', '2021-12-15 06:32:49', '2021-12-14 18:28:03', '2021-12-15 06:04:46', '2021-12-15 06:32:49'),
(32, 'KVfJb48OLvWfPodTJMQGDWaeMe9kqO5zGKDvPqVV', 490, '2021-12-15 06:32:55', '2021-12-15 06:46:28', '2021-12-14 18:13:33', '2021-12-15 06:32:55', '2021-12-15 06:46:28'),
(33, 'dMIFa95CiV5mG4AV9WoSxFnJ4I2FIx4Y3uqIZDP0', 593, '2021-12-15 06:46:35', NULL, NULL, '2021-12-15 06:46:35', '2021-12-15 06:46:35'),
(34, 'pKHrddGxV0DU0pwNtrJ76jXAJIP04vBMGh26DaX6', 490, '2021-12-15 23:12:14', NULL, NULL, '2021-12-15 23:12:14', '2021-12-15 23:12:14'),
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
(49, 'Yuqm6oyltRp2Fl2qghW18a1cjhihwreIBV5KdXNi', 490, '2021-12-17 23:27:28', NULL, NULL, '2021-12-17 23:27:28', '2021-12-17 23:27:28'),
(50, '4KW25DcS4lPEWXnGCEjBXJa5Xqce1bD7v5JwN9ZY', 490, '2021-12-18 00:32:54', '2021-12-18 02:27:36', '2021-12-17 19:54:42', '2021-12-18 00:32:54', '2021-12-18 02:27:36'),
(51, 'F9cBKcEeh3mmizeoCHHW3bRqMnGXNZ5b7vlCDCMy', 593, '2021-12-18 01:12:46', '2021-12-18 01:14:59', '2021-12-17 18:02:13', '2021-12-18 01:12:46', '2021-12-18 01:14:59'),
(52, 'ne7JA3ELwlgR0egB06imDioKXUJDWmVnWVoDTvrX', 577, '2021-12-18 01:15:05', '2021-12-18 01:15:32', '2021-12-17 18:00:27', '2021-12-18 01:15:05', '2021-12-18 01:15:32'),
(53, '8guGlFbh57irIJ46IyLojGyH1PezPSixcRDpr3sj', 490, '2021-12-18 01:15:44', NULL, NULL, '2021-12-18 01:15:44', '2021-12-18 01:15:44'),
(54, 'WI0L9k5wUdG83TYAmvTkamxdHqjlbkwuHDTrtOZL', 490, '2021-12-18 02:06:18', '2021-12-18 02:08:25', '2021-12-17 18:02:07', '2021-12-18 02:06:18', '2021-12-18 02:08:25'),
(55, 'VOMqTfPI2zerbPNwxJRvZhvCcFx8V5ndITCtvMoP', 490, '2021-12-18 02:18:09', '2021-12-18 02:18:39', '2021-12-17 18:00:30', '2021-12-18 02:18:09', '2021-12-18 02:18:39'),
(56, 'Cq7ntuFwdpvNlTGESSXQeKwtKuiN4uDZE3kCWd1i', 577, '2021-12-18 02:27:47', '2021-12-18 02:28:47', '2021-12-17 18:01:00', '2021-12-18 02:27:47', '2021-12-18 02:28:47'),
(57, 'S3C4ra6AVoLSXD3MH2xnpGHzAMZUQPM0MnViMha6', 490, '2021-12-18 02:28:53', '2021-12-18 02:32:54', '2021-12-17 18:04:01', '2021-12-18 02:28:53', '2021-12-18 02:32:54'),
(58, 'PGThKNnV47peIsV6TRRn2uAtx2Ol9GQxYxOWXqSB', 529, '2021-12-18 02:33:00', '2021-12-18 02:37:31', '2021-12-17 18:04:31', '2021-12-18 02:33:00', '2021-12-18 02:37:31'),
(59, 'QsxoTO7UiRX7aIuSCMA3n0CtCxEaP4Ctvq8z4S8J', 490, '2021-12-18 02:37:40', '2021-12-18 02:37:51', '2021-12-17 18:00:11', '2021-12-18 02:37:40', '2021-12-18 02:37:51'),
(60, 'UL8CqnZk2rQjvy4sUCUMzQNuaOu4tnVJLC071l4E', 29, '2021-12-18 02:38:04', '2021-12-18 02:39:04', '2021-12-17 18:01:00', '2021-12-18 02:38:04', '2021-12-18 02:39:04'),
(61, 'JPmCMTf12zmOeVQcYeFln4TUKiRGxmUP9NKOFsIF', 529, '2021-12-18 02:39:13', NULL, NULL, '2021-12-18 02:39:13', '2021-12-18 02:39:13'),
(62, 'ceRuN3dpVXqtO7VyDJj2GfEFe2SJH4V8sqvDqy1z', 490, '2021-12-18 04:12:21', NULL, NULL, '2021-12-18 04:12:21', '2021-12-18 04:12:21'),
(63, '3SQ4VUNWjl3idos1eJ9rI9I4Uqv4jnIEzYtbdOyQ', 490, '2021-12-18 23:24:36', NULL, NULL, '2021-12-18 23:24:36', '2021-12-18 23:24:36'),
(64, 'oMA5bC820AUT2sCDXrI0j39mXDPRwit90QFgD50G', 490, '2021-12-19 01:03:06', '2021-12-19 01:09:51', '2021-12-18 18:06:45', '2021-12-19 01:03:06', '2021-12-19 01:09:51'),
(65, 'U8U7WWY5e7hmf6R8yBEC580ZNuLdA3Hu5Fl0HZdf', 577, '2021-12-19 01:09:58', '2021-12-19 01:10:07', '2021-12-18 18:00:09', '2021-12-19 01:09:58', '2021-12-19 01:10:07'),
(66, '1kL4vU6ODHpqtDZ7QFkLRSeZcLX6zTclhDch6UZQ', 529, '2021-12-19 01:10:15', '2021-12-19 01:14:55', '2021-12-18 18:04:40', '2021-12-19 01:10:15', '2021-12-19 01:14:55'),
(67, 'DhYmoeVdPefxJJ7jDPMNRu2ltd9z4E1YuGacUgew', 577, '2021-12-19 01:15:13', '2021-12-19 01:16:04', '2021-12-18 18:00:51', '2021-12-19 01:15:13', '2021-12-19 01:16:04'),
(68, 'DbvSzcBpAK4DzDYcPWTmPYgbeASzc1hBxSVZvx6x', 490, '2021-12-19 01:22:45', '2021-12-19 02:49:54', '2021-12-18 19:27:09', '2021-12-19 01:22:45', '2021-12-19 02:49:54'),
(69, 'XxMjFpO8krBNm0e0CFMvvtwKhBFCdnXBSJPxUKO3', 490, '2021-12-19 02:53:57', NULL, NULL, '2021-12-19 02:53:57', '2021-12-19 02:53:57'),
(70, 'cpgPnaaTxk9u3xRy4Usfm5e7fWDElaLuD2QWM8uE', 490, '2021-12-19 03:14:03', NULL, NULL, '2021-12-19 03:14:03', '2021-12-19 03:14:03'),
(71, '1lrJRRKGbFnh6rejTfrDQt7xRtn1M06zAezu6Sfa', 29, '2021-12-19 03:31:04', NULL, NULL, '2021-12-19 03:31:04', '2021-12-19 03:31:04'),
(72, 'zymtpmxZXNkRyZl5DW5HByjnxmrKjYAhAiXrBk08', 29, '2021-12-19 04:22:44', '2021-12-19 04:45:07', '2021-12-18 18:22:23', '2021-12-19 04:22:44', '2021-12-19 04:45:07'),
(73, '73cDid556WEBUG7sgBaDn7ZIsLMJJVqIVmdNx5ak', 490, '2021-12-19 04:45:14', '2021-12-19 05:24:50', '2021-12-18 18:39:36', '2021-12-19 04:45:14', '2021-12-19 05:24:50'),
(74, 'DKbZVT2u6UYXs8aSyHrN163CDLBYYJMxT6t3tYCZ', 29, '2021-12-19 05:24:57', '2021-12-19 05:30:49', '2021-12-18 18:05:52', '2021-12-19 05:24:57', '2021-12-19 05:30:49'),
(75, 'EFwQprHJlWFZxVMutjiB8bebU77Yuc8PpBvCeJaS', 490, '2021-12-19 05:46:25', NULL, NULL, '2021-12-19 05:46:25', '2021-12-19 05:46:25');

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `assignment_quizzes`
--
ALTER TABLE `assignment_quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `assignment_students`
--
ALTER TABLE `assignment_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT for table `key_stages`
--
ALTER TABLE `key_stages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_answer_options`
--
ALTER TABLE `quiz_answer_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_students`
--
ALTER TABLE `quiz_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `student_subjects`
--
ALTER TABLE `student_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=607;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_group_members`
--
ALTER TABLE `user_group_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=603;

--
-- AUTO_INCREMENT for table `user_group_permissions`
--
ALTER TABLE `user_group_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=611;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

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
